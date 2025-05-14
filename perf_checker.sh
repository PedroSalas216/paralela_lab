
simd_flags="-O3 -march=native -mavx2 -mfma -ftree-vectorize -ffast-math -funroll-loops -fomit-frame-pointer -fno-math-errno -fno-signed-zeros -fno-trapping-math -ffinite-math-only -fopenmp-simd"

perf record ./run_simulations.sh $1 1 gcc "$simd_flags"


