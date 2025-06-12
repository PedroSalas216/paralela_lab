// gpu_interface.h

#ifndef GPU_INTERFACE_H
#define GPU_INTERFACE_H

#ifdef __cplusplus
extern "C" {
#endif

void gpu_init();
void gpu_free();

void gpu_compute_forces(
    const float* rx, const float* ry, const float* rz,
    float* fx, float* fy, float* fz,
    float* epot, float* pres,
    const float temp, float rho, float V, float L);

#ifdef __cplusplus
}
#endif

#endif
