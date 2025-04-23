#include "core.h"
#include <immintrin.h>
#include <string.h>
#include <math.h>
#include "parameters.h"
#include <stdlib.h>

#define ECUT (4.0 * (pow(RCUT, -12) - pow(RCUT, -6)))


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

#pragma GCC optimize("tree-vectorize")
static float minimum_image(float cordi, const float cell_length)
{
    const float half_cell_length = 0.5 * cell_length;
    cordi -= cell_length * (cordi > half_cell_length);
    cordi += cell_length * (cordi <= -half_cell_length);
    return cordi;
}

#pragma GCC optimize("tree-vectorize")
void forces(const Positions* r, Forces* f, float* epot, float* pres, const float* temp, const float rho, const float V, const float L)
{
    memset(f->fx, 0, N * sizeof(float));
    memset(f->fy, 0, N * sizeof(float));
    memset(f->fz, 0, N * sizeof(float));

    float pres_vir = 0.0;
    const float rcut2 = RCUT * RCUT;
    *epot = 0.0;

    for (int i = 0; i < N-1; i++) {
        float xi = r->x[i];
        float yi = r->y[i];
        float zi = r->z[i];

        for (int j = i + 1; j < N; j++) {
            float rx = xi - r->x[j];
            float ry = yi - r->y[j];
            float rz = zi - r->z[j];

            rx = minimum_image(rx, L);
            ry = minimum_image(ry, L);
            rz = minimum_image(rz, L);

            float rij2 = rx * rx + ry * ry + rz * rz;

            if (rij2 <= rcut2) {
                float r2inv = 1.0 / rij2;
                float r6inv = r2inv * r2inv * r2inv;
                float fr = 24.0 * r2inv * r6inv * (2.0 * r6inv - 1.0);

                f->fx[i] += fr * rx;
                f->fy[i] += fr * ry;
                f->fz[i] += fr * rz;

                f->fx[j] -= fr * rx;
                f->fy[j] -= fr * ry;
                f->fz[j] -= fr * rz;

                *epot += 4.0 * r6inv * (r6inv - 1.0) - ECUT;
                pres_vir += fr * rij2;
            }
        }
    }
    pres_vir /= (V * 3.0);
    *pres = *temp * rho + pres_vir;
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
#pragma GCC optimize("tree-vectorize")
void velocity_verlet(Positions* r, Velocities* v, Forces* f, float* epot, float* ekin, float* pres, float* temp, const float rho, const float V, const float L)
{

    for (int i = 0; i < N; i++) {
        // Actualizar posiciones
        r->x[i] += v->vx[i] * DT + 0.5 * f->fx[i] * DT * DT;
        r->y[i] += v->vy[i] * DT + 0.5 * f->fy[i] * DT * DT;
        r->z[i] += v->vz[i] * DT + 0.5 * f->fz[i] * DT * DT;

        // Aplicar PBC
        r->x[i] = pbc(r->x[i], L);
        r->y[i] = pbc(r->y[i], L);
        r->z[i] = pbc(r->z[i], L);

        // Primera parte de la actualización de velocidades
        v->vx[i] += 0.5 * f->fx[i] * DT;
        v->vy[i] += 0.5 * f->fy[i] * DT;
        v->vz[i] += 0.5 * f->fz[i] * DT;
    }

    // Actualizar fuerzas
    forces(r, f, epot, pres, temp, rho, V, L);

    float sumv2 = 0.0;
   
    for (int i = 0; i < N; i++) {
        // Segunda parte de la actualización de velocidades
        v->vx[i] += 0.5 * f->fx[i] * DT;
        v->vy[i] += 0.5 * f->fy[i] * DT;
        v->vz[i] += 0.5 * f->fz[i] * DT;

        sumv2 += v->vx[i] * v->vx[i] + v->vy[i] * v->vy[i] + v->vz[i] * v->vz[i];
    }

    *ekin = 0.5 * sumv2;
    *temp = sumv2 / (3.0 * N);
}