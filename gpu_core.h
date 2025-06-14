#ifndef GPU_CORE_H
#define GPU_CORE_H

#ifdef __cplusplus
extern "C" {
#endif

void gpu_init();
void gpu_free();
void gpu_compute_forces(const float* rx, const float* ry, const float* rz,
                        float temp, float rho, float V, float L);
void gpu_get_forces(float* fx, float* fy, float* fz, float* epot, float* pres);

#ifdef __cplusplus
}
#endif

#endif