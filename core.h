#ifndef CORE_H
#define CORE_H

typedef struct {
    float* __restrict__ x __attribute__((aligned(32)));
    float* __restrict__ y __attribute__((aligned(32)));
    float* __restrict__ z __attribute__((aligned(32)));
} Positions;

typedef struct {
    float* __restrict__ vx __attribute__((aligned(32)));
    float* __restrict__ vy __attribute__((aligned(32)));
    float* __restrict__ vz __attribute__((aligned(32)));
} Velocities;

typedef struct {
    float* __restrict__ fx __attribute__((aligned(32)));
    float* __restrict__ fy __attribute__((aligned(32)));
    float* __restrict__ fz __attribute__((aligned(32)));
} Forces;

void init_pos(Positions* r, const float rho);
void init_vel(Velocities* v, float* temp, float* ekin);

void init_pos(Positions* r, const float rho);
void init_vel(Velocities* v, float* temp, float* ekin);
void forces(const Positions* __restrict__ r, Forces* __restrict__ f, float* __restrict__ epot, float* __restrict__ pres, 
            const float* __restrict__ temp, const float rho, const float V, const float L);
void velocity_verlet(Positions* __restrict__ r, Velocities* __restrict__ v, Forces* __restrict__ f, float* __restrict__ epot,
 float* __restrict__ ekin, float* __restrict__ pres, float* __restrict__ temp, const float rho, const float V, const float L);

#endif