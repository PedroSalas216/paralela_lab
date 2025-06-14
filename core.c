#include "core.h"
#include <immintrin.h>
#include <string.h>
#include <math.h>
#include "parameters.h"
#include <stdlib.h>
#include "gpu_core.h"


void init_pos(Positions* r, const float rho)
{
    float a = cbrt(4.0 / rho);
    int nucells = round(cbrt((float)N / 4.0));
    int idx = 0;

    for (int i = 0; i < nucells; i++) {
        for (int j = 0; j < nucells; j++) {
            for (int k = 0; k < nucells; k++) {
                // Primer átomo
                r->x[idx] = i * a;
                r->y[idx] = j * a;
                r->z[idx] = k * a;
                idx++;

                // Segundo átomo
                r->x[idx] = (i + 0.5) * a;
                r->y[idx] = (j + 0.5) * a;
                r->z[idx] = k * a;
                idx++;

                // Tercer átomo
                r->x[idx] = (i + 0.5) * a;
                r->y[idx] = j * a;
                r->z[idx] = (k + 0.5) * a;
                idx++;

                // Cuarto átomo
                r->x[idx] = i * a;
                r->y[idx] = (j + 0.5) * a;
                r->z[idx] = (k + 0.5) * a;
                idx++;
            }
        }
    }
}

void init_vel(Velocities* v, float* temp, float* ekin)
{
    float sumvx = 0.0, sumvy = 0.0, sumvz = 0.0, sumv2 = 0.0;

    for (int i = 0; i < N; i++) {
        v->vx[i] = rand() / (float)RAND_MAX - 0.5;
        v->vy[i] = rand() / (float)RAND_MAX - 0.5;
        v->vz[i] = rand() / (float)RAND_MAX - 0.5;

        sumvx += v->vx[i];
        sumvy += v->vy[i];
        sumvz += v->vz[i];
        sumv2 += v->vx[i] * v->vx[i] + v->vy[i] * v->vy[i] + v->vz[i] * v->vz[i];
    }

    sumvx /= (float)N;
    sumvy /= (float)N;
    sumvz /= (float)N;
    *temp = sumv2 / (3.0 * N);
    *ekin = 0.5 * sumv2;
    float sf = sqrt(T0 / *temp);

    for (int i = 0; i < N; i++) {
        v->vx[i] = (v->vx[i] - sumvx) * sf;
        v->vy[i] = (v->vy[i] - sumvy) * sf;
        v->vz[i] = (v->vz[i] - sumvz) * sf;
    }
}


void forces(const Positions* __restrict__ r, Forces* __restrict__ f, float* __restrict__ epot, float* __restrict__ pres,
            const float* __restrict__ temp, const float rho, const float V, const float L)
{
    gpu_compute_forces(r->x, r->y, r->z, *temp, rho, V, L);
    gpu_get_forces(f->fx, f->fy, f->fz, epot, pres);
}

static float pbc(float cordi, const float cell_length)
{
    if (cordi <= 0) {
        cordi += cell_length;
    } else if (cordi > cell_length) {
        cordi -= cell_length;
    }
    return cordi;
}

void velocity_verlet(Positions* __restrict__ r, Velocities* __restrict__ v, 
                    Forces* __restrict__ f, float* __restrict__ epot, 
                    float* __restrict__ ekin, float* __restrict__ pres, 
                    float* __restrict__ temp, const float rho, const float V, const float L)
{

    for (int i = 0; i < N; i++) {
        // Primera parte: actualizar posiciones
        float dt2_2 = 0.5f * DT * DT;
        float x = r->x[i] + v->vx[i] * DT + f->fx[i] * dt2_2;
        float y = r->y[i] + v->vy[i] * DT + f->fy[i] * dt2_2;
        float z = r->z[i] + v->vz[i] * DT + f->fz[i] * dt2_2;

        // Aplicar PBC
        r->x[i] = pbc(x, L);
        r->y[i] = pbc(y, L);
        r->z[i] = pbc(z, L);

        // Primera parte de velocidades
        v->vx[i] += 0.5f * f->fx[i] * DT;
        v->vy[i] += 0.5f * f->fy[i] * DT;
        v->vz[i] += 0.5f * f->fz[i] * DT;
    }

    forces(r, f, epot, pres, temp, rho, V, L);

    float sumv2 = 0.0f;
    
    for (int i = 0; i < N; i++) {
        // Segunda parte de velocidades
        v->vx[i] += 0.5f * f->fx[i] * DT;
        v->vy[i] += 0.5f * f->fy[i] * DT;
        v->vz[i] += 0.5f * f->fz[i] * DT;
        
        sumv2 += v->vx[i] * v->vx[i] + v->vy[i] * v->vy[i] + v->vz[i] * v->vz[i];
    }

    *ekin = 0.5f * sumv2;
    *temp = sumv2 / (3.0f * N);
}