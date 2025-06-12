#include <cuda_runtime.h>
#include <stdio.h>
#include "gpu_core.h"
#include "parameters.h"

__device__ float d_L, d_RCUT2;

static float *d_rx, *d_ry, *d_rz;
static float *d_fx, *d_fy, *d_fz;
static float *d_epot, *d_pres;

__device__ float minimum_image_cuda(float cordi, float cell_length)
{
    const float half = 0.5f * cell_length;
    cordi -= cell_length * (cordi > half);
    cordi += cell_length * (cordi <= -half);
    return cordi;
}

__global__ void forces_kernel(
    const float* __restrict__ rx,
    const float* __restrict__ ry,
    const float* __restrict__ rz,
    float* __restrict__ fx,
    float* __restrict__ fy,
    float* __restrict__ fz,
    float* __restrict__ epot,
    float* __restrict__ pres)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i >= N) return;

    float xi = rx[i];
    float yi = ry[i];
    float zi = rz[i];

    float fxi = 0.0f, fyi = 0.0f, fzi = 0.0f;
    float epot_i = 0.0f, virial = 0.0f;

    for (int j = 0; j < N; j++) {
        if (j == i) continue;

        float rx_ = xi - rx[j];
        float ry_ = yi - ry[j];
        float rz_ = zi - rz[j];

        rx_ = minimum_image_cuda(rx_, d_L);
        ry_ = minimum_image_cuda(ry_, d_L);
        rz_ = minimum_image_cuda(rz_, d_L);

        float rij2 = rx_ * rx_ + ry_ * ry_ + rz_ * rz_;
        if (rij2 <= d_RCUT2) {
            float inv_r2 = 1.0f / rij2;
            float r6 = inv_r2 * inv_r2 * inv_r2;
            float fr = 24.0f * inv_r2 * r6 * (2.0f * r6 - 1.0f);

            fxi += fr * rx_;
            fyi += fr * ry_;
            fzi += fr * rz_;

            epot_i += 4.0f * r6 * (r6 - 1.0f);
            virial += fr * rij2;
        }
    }

    fx[i] = fxi;
    fy[i] = fyi;
    fz[i] = fzi;

    atomicAdd(epot, epot_i * 0.5f); // evitar doble conteo
    atomicAdd(pres, virial * 0.5f);
}

extern "C" void gpu_init() {
    cudaMalloc(&d_rx, N * sizeof(float));
    cudaMalloc(&d_ry, N * sizeof(float));
    cudaMalloc(&d_rz, N * sizeof(float));
    cudaMalloc(&d_fx, N * sizeof(float));
    cudaMalloc(&d_fy, N * sizeof(float));
    cudaMalloc(&d_fz, N * sizeof(float));
    cudaMalloc(&d_epot, sizeof(float));
    cudaMalloc(&d_pres, sizeof(float));
}

extern "C" void gpu_free() {
    cudaFree(d_rx); cudaFree(d_ry); cudaFree(d_rz);
    cudaFree(d_fx); cudaFree(d_fy); cudaFree(d_fz);
    cudaFree(d_epot); cudaFree(d_pres);
}

extern "C" void gpu_compute_forces(
    const float* rx, const float* ry, const float* rz,
    float* fx, float* fy, float* fz,
    float* epot, float* pres,
    const float temp, float rho, float V, float L)
{
    float rcut2 = RCUT * RCUT;

    cudaMemcpy(d_rx, rx, N * sizeof(float), cudaMemcpyHostToDevice);
    cudaMemcpy(d_ry, ry, N * sizeof(float), cudaMemcpyHostToDevice);
    cudaMemcpy(d_rz, rz, N * sizeof(float), cudaMemcpyHostToDevice);
    cudaMemset(d_fx, 0, N * sizeof(float));
    cudaMemset(d_fy, 0, N * sizeof(float));
    cudaMemset(d_fz, 0, N * sizeof(float));
    cudaMemset(d_epot, 0, sizeof(float));
    cudaMemset(d_pres, 0, sizeof(float));

    cudaMemcpyToSymbol(d_L, &L, sizeof(float));
    cudaMemcpyToSymbol(d_RCUT2, &rcut2, sizeof(float));

    int blockSize = 128;
    int gridSize = (N + blockSize - 1) / blockSize;

    forces_kernel<<<gridSize, blockSize>>>(
        d_rx, d_ry, d_rz, d_fx, d_fy, d_fz, d_epot, d_pres
    );

    cudaMemcpy(fx, d_fx, N * sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(fy, d_fy, N * sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(fz, d_fz, N * sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(epot, d_epot, sizeof(float), cudaMemcpyDeviceToHost);

    float pres_vir;
    cudaMemcpy(&pres_vir, d_pres, sizeof(float), cudaMemcpyDeviceToHost);
    *pres = temp * rho + pres_vir / (3.0f * V);
}
