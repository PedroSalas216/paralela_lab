#include <cuda_runtime.h>
#include <stdio.h>
#include "parameters.h"

__device__ float epot_d, pres_d;

float *d_rx, *d_ry, *d_rz;
float *d_fx, *d_fy, *d_fz;

__global__ void compute_forces_kernel(const float* rx, const float* ry, const float* rz,
                                      float* fx, float* fy, float* fz,
                                      float temp, float rho, float V, float L)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i >= N) return;

    float xi = rx[i];
    float yi = ry[i];
    float zi = rz[i];

    float fx_i = 0.0f, fy_i = 0.0f, fz_i = 0.0f;
    float epot_local = 0.0f, pres_local = 0.0f;

    for (int j = 0; j < N; j++) {
        if (j == i) continue;

        float dx = xi - rx[j];
        float dy = yi - ry[j];
        float dz = zi - rz[j];

        // PBC
        dx -= L * rintf(dx / L);
        dy -= L * rintf(dy / L);
        dz -= L * rintf(dz / L);

        float r2 = dx*dx + dy*dy + dz*dz;
        if (r2 < RCUT2) {
            float r6 = r2 * r2 * r2;
            float f = 48.0f * (1.0f/r6/r6 - 0.5f/r6) / r2;
            fx_i += f * dx;
            fy_i += f * dy;
            fz_i += f * dz;
            epot_local += 4.0f * (1.0f/r6/r6 - 1.0f/r6);
            pres_local += f * r2; // crude virial contribution
        }
    }
    fx[i] = fx_i;
    fy[i] = fy_i;
    fz[i] = fz_i;

    atomicAdd(&epot_d, epot_local);
    atomicAdd(&pres_d, pres_local / (3.0f * V));
}

extern "C" void gpu_init() {
    cudaMalloc(&d_rx, N * sizeof(float));
    cudaMalloc(&d_ry, N * sizeof(float));
    cudaMalloc(&d_rz, N * sizeof(float));
    cudaMalloc(&d_fx, N * sizeof(float));
    cudaMalloc(&d_fy, N * sizeof(float));
    cudaMalloc(&d_fz, N * sizeof(float));
}

extern "C" void gpu_free() {
    cudaFree(d_rx); cudaFree(d_ry); cudaFree(d_rz);
    cudaFree(d_fx); cudaFree(d_fy); cudaFree(d_fz);
}

extern "C" void gpu_compute_forces(const float* rx, const float* ry, const float* rz,
                                    float temp, float rho, float V, float L) {
    cudaMemcpy(d_rx, rx, N * sizeof(float), cudaMemcpyHostToDevice);
    cudaMemcpy(d_ry, ry, N * sizeof(float), cudaMemcpyHostToDevice);
    cudaMemcpy(d_rz, rz, N * sizeof(float), cudaMemcpyHostToDevice);

    cudaMemset(d_fx, 0, N * sizeof(float));
    cudaMemset(d_fy, 0, N * sizeof(float));
    cudaMemset(d_fz, 0, N * sizeof(float));

    cudaMemset(&epot_d, 0, sizeof(float));
    cudaMemset(&pres_d, 0, sizeof(float));

    int blockSize = 128;
    int numBlocks = (N + blockSize - 1) / blockSize;

    compute_forces_kernel<<<numBlocks, blockSize>>>(d_rx, d_ry, d_rz, d_fx, d_fy, d_fz, temp, rho, V, L);
    cudaDeviceSynchronize();
}

extern "C" void gpu_get_forces(float* fx, float* fy, float* fz, float* epot, float* pres) {
    cudaMemcpy(fx, d_fx, N * sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(fy, d_fy, N * sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(fz, d_fz, N * sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(epot, &epot_d, sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(pres, &pres_d, sizeof(float), cudaMemcpyDeviceToHost);
}

