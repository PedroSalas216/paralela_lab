#define _XOPEN_SOURCE 500  // M_PI
#include "parameters.h"
#include "wtime.h"

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "core.h"

// Función auxiliar para alocar memoria para las estructuras
void allocate_memory(Positions* r, Velocities* v, Forces* f) {
    r->x = (float*)malloc(N * sizeof(float));
    r->y = (float*)malloc(N * sizeof(float));
    r->z = (float*)malloc(N * sizeof(float));
    
    v->vx = (float*)malloc(N * sizeof(float));
    v->vy = (float*)malloc(N * sizeof(float));
    v->vz = (float*)malloc(N * sizeof(float));
    
    f->fx = (float*)malloc(N * sizeof(float));
    f->fy = (float*)malloc(N * sizeof(float));
    f->fz = (float*)malloc(N * sizeof(float));
}

// Función auxiliar para liberar memoria
void free_memory(Positions* r, Velocities* v, Forces* f) {
    free(r->x); free(r->y); free(r->z);
    free(v->vx); free(v->vy); free(v->vz);
    free(f->fx); free(f->fy); free(f->fz);
}

// Función auxiliar para reescalar velocidades
void scale_velocities(Velocities* v, float sf) {
    for (int i = 0; i < N; i++) {
        v->vx[i] *= sf;
        v->vy[i] *= sf;
        v->vz[i] *= sf;
    }
}

// Función auxiliar para reescalar posiciones
void scale_positions(Positions* r, float sf) {
    for (int i = 0; i < N; i++) {
        r->x[i] *= sf;
        r->y[i] *= sf;
        r->z[i] *= sf;
    }
}

int main()
{
    FILE *file_xyz, *file_thermo;
    file_xyz = fopen("trajectory.xyz", "w");
    file_thermo = fopen("thermo.log", "w");
    
    float Ekin, Epot, Temp, Pres;
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
    float t = 0.0, sf;
    float Rhob;
    Rho = RHOI;
    init_pos(&r, Rho);
    float start = wtime();
    
    for (int m = 0; m < 9; m++) {
        Rhob = Rho;
        Rho = RHOI - 0.1 * (float)m;
        cell_V = (float)N / Rho;
        cell_L = cbrt(cell_V);
        tail = 16.0 * M_PI * Rho * ((2.0 / 3.0) * pow(RCUT, -9) - pow(RCUT, -3)) / 3.0;
        Etail = tail * (float)N;
        Ptail = tail * Rho;

        sf = cbrt(Rhob / Rho);
        scale_positions(&r, sf);
        
        init_vel(&v, &Temp, &Ekin);
        forces(&r, &f, &Epot, &Pres, &Temp, Rho, cell_V, cell_L);

        // Loop de equilibración
        for (int i = 1; i < TEQ; i++) {
            velocity_verlet(&r, &v, &f, &Epot, &Ekin, &Pres, &Temp, Rho, cell_V, cell_L);
            sf = sqrt(T0 / Temp);
            scale_velocities(&v, sf);
        }

        // Loop de medición
        int mes = 0;
        float epotm = 0.0, presm = 0.0;
        for (int i = TEQ; i < TRUN; i++) {
            velocity_verlet(&r, &v, &f, &Epot, &Ekin, &Pres, &Temp, Rho, cell_V, cell_L);
            
            sf = sqrt(T0 / Temp);
            scale_velocities(&v, sf);

            if (i % TMES == 0) {
                Epot += Etail;
                Pres += Ptail;

                epotm += Epot;
                presm += Pres;
                mes++;

                fprintf(file_thermo, "%f %f %f %f %f\n", t, Temp, Pres, Epot, Epot + Ekin);
                fprintf(file_xyz, "%d\n\n", N);
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
    printf("# Tiempo simulado = %f [fs]\n", t * 1.6);
    printf("prueba de metrica: %f\n", N*N/elapsed);

    // Cierre de archivos
    fclose(file_thermo);
    fclose(file_xyz);

    // Liberación de memoria
    free_memory(&r, &v, &f);
    
    return 0;
}