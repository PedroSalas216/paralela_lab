#define _XOPEN_SOURCE 500  // M_PI
#include "parameters.h"
#include "wtime.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <immintrin.h>
#include "core.h"
#include <omp.h>

// Función auxiliar para reescalar velocidades optimizada
#pragma GCC optimize("tree-vectorize")
void scale_velocities(Velocities* __restrict__ v, const float sf) {
    #pragma GCC ivdep
    for (int i = 0; i < N; i++) {
        v->vx[i] *= sf;
        v->vy[i] *= sf;
        v->vz[i] *= sf;
    }
}

// Función auxiliar para reescalar posiciones optimizada
#pragma GCC optimize("tree-vectorize")
void scale_positions(Positions* __restrict__ r, const float sf) {
    #pragma GCC ivdep
    for (int i = 0; i < N; i++) {
        r->x[i] *= sf;
        r->y[i] *= sf;
        r->z[i] *= sf;
    }
}

// Función auxiliar para alocar memoria alineada
void allocate_memory(Positions* __restrict__ r, Velocities* __restrict__ v, Forces* __restrict__ f) {
    // Posiciones
    if (posix_memalign((void**)&r->x, 32, N * sizeof(float)) ||
        posix_memalign((void**)&r->y, 32, N * sizeof(float)) ||
        posix_memalign((void**)&r->z, 32, N * sizeof(float))) {
        fprintf(stderr, "Error: Memory allocation failed for positions\n");
        exit(1);
    }
    
    // Velocidades
    if (posix_memalign((void**)&v->vx, 32, N * sizeof(float)) ||
        posix_memalign((void**)&v->vy, 32, N * sizeof(float)) ||
        posix_memalign((void**)&v->vz, 32, N * sizeof(float))) {
        fprintf(stderr, "Error: Memory allocation failed for velocities\n");
        exit(1);
    }
    
    // Fuerzas
    if (posix_memalign((void**)&f->fx, 32, N * sizeof(float)) ||
        posix_memalign((void**)&f->fy, 32, N * sizeof(float)) ||
        posix_memalign((void**)&f->fz, 32, N * sizeof(float))) {
        fprintf(stderr, "Error: Memory allocation failed for forces\n");
        exit(1);
    }
}

// Función auxiliar para liberar memoria
void free_memory(Positions* __restrict__ r, Velocities* __restrict__ v, Forces* __restrict__ f) {
    free(r->x); free(r->y); free(r->z);
    free(v->vx); free(v->vy); free(v->vz);
    free(f->fx); free(f->fy); free(f->fz);
}

int main()
{
    //control de threads
    int desired_threads = 16;
    int max_threads = omp_get_max_threads();
    int numthreads = desired_threads >= max_threads ? max_threads : desired_threads;
    omp_set_num_threads(numthreads);
    printf("# Usando %d hilos\n\n", numthreads);
    
    FILE *file_xyz, *file_thermo;
    file_xyz = fopen("trajectory.xyz", "w");
    file_thermo = fopen("thermo.log", "w");
    
    if (!file_xyz || !file_thermo) {
        fprintf(stderr, "Error: Could not open output files\n");
        return 1;
    }
    
    float Ekin = 0.0f, Epot = 0.0f, Temp = 0.0f, Pres = 0.0f;
    float Rho, cell_V, cell_L, tail, Etail, Ptail;
    
    // Declaración de estructuras SoA
    Positions r;
    Velocities v;
    Forces f;
    
    // Alocación de memoria
    allocate_memory(&r, &v, &f);

    printf("# Número de partículas:      %d\n", N);
    printf("# Temperatura de referencia: %.2f\n", T0);
    printf("# Pasos de equilibración:    %d\n", TEQ);
    printf("# Pasos de medición:         %d\n", TRUN - TEQ);
    printf("# (mediciones cada %d pasos)\n", TMES);
    printf("# densidad, volumen, energía potencial media, presión media\n");
    fprintf(file_thermo, "# t Temp Pres Epot Etot\n");

    srand(SEED);
    float t = 0.0f, sf;
    float Rhob;
    Rho = RHOI;
    init_pos(&r, Rho);
    float start = wtime();
    
    #pragma GCC ivdep
    for (int m = 0; m < 9; m++) {
        Rhob = Rho;
        Rho = RHOI - 0.1f * (float)m;
        cell_V = (float)N / Rho;
        cell_L = cbrtf(cell_V);
        tail = 16.0f * M_PI * Rho * ((2.0f / 3.0f) * powf(RCUT, -9) - powf(RCUT, -3)) / 3.0f;
        Etail = tail * (float)N;
        Ptail = tail * Rho;

        sf = cbrtf(Rhob / Rho);
        scale_positions(&r, sf);
        
        init_vel(&v, &Temp, &Ekin);
        forces(&r, &f, &Epot, &Pres, &Temp, Rho, cell_V, cell_L);

        // Loop de equilibración
        #pragma GCC ivdep
        for (int i = 1; i < TEQ; i++) {
            velocity_verlet(&r, &v, &f, &Epot, &Ekin, &Pres, &Temp, Rho, cell_V, cell_L);
            sf = sqrtf(T0 / Temp);
            scale_velocities(&v, sf);
        }

        // Loop de medición
        int mes = 0;
        float epotm = 0.0f, presm = 0.0f;
        
        #pragma GCC ivdep
        for (int i = TEQ; i < TRUN; i++) {
            velocity_verlet(&r, &v, &f, &Epot, &Ekin, &Pres, &Temp, Rho, cell_V, cell_L);
            
            sf = sqrtf(T0 / Temp);
            scale_velocities(&v, sf);

            if (i % TMES == 0) {
                float epot_with_tail = Epot + Etail;
                float pres_with_tail = Pres + Ptail;

                epotm += epot_with_tail;
                presm += pres_with_tail;
                mes++;

                fprintf(file_thermo, "%f %f %f %f %f\n", 
                       t, Temp, pres_with_tail, epot_with_tail, epot_with_tail + Ekin);
                
                fprintf(file_xyz, "%d\n\n", N);
                #pragma GCC ivdep
                for (int k = 0; k < N; k++) {
                    fprintf(file_xyz, "Ar %e %e %e\n", r.x[k], r.y[k], r.z[k]);
                }
            }

            t += DT;
        }
        printf("%f\t%f\t%f\t%f\n", Rho, cell_V, epotm / (float)mes, presm / (float)mes);
    }

    float elapsed = wtime() - start;
    printf("# Tiempo total de simulación = %f segundos\n", elapsed);
    printf("# Tiempo simulado = %f [fs]\n", t * 1.6f);
    printf("prueba de metrica: %f\n", (float)N * N / elapsed);

    fclose(file_thermo);
    fclose(file_xyz);
    free_memory(&r, &v, &f);
    
    return 0;
}