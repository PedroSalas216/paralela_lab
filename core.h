#ifndef CORE_H
#define CORE_H


typedef struct {
    float* __restrict__ x __attribute__((aligned(32)));
    float* __restrict__ y __attribute__((aligned(32)));
    float* __restrict__ z __attribute__((aligned(32)));
} Positions;

typedef struct {
    float* x;
    float* y;
    float* z;
} Positions;

typedef struct {
    float* vx;
    float* vy;
    float* vz;
} Velocities;

typedef struct {
    float* fx;
    float* fy;
    float* fz;
} Forces;

void init_pos(Positions* r, const float rho);
void init_vel(Velocities* v, float* temp, float* ekin);

void forces(const Positions* r, Forces* f, float* epot, float* pres,
           const float* temp, const float rho, const float V, const float L);


void velocity_verlet(Positions* r, Velocities* v, Forces* f, float* epot, float* ekin, float* pres, float* temp, const float rho, const float V, const float L);
#endif