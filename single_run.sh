
simd_flags="-O3 -march=native -mavx2 -mfma -ftree-vectorize -ffast-math -funroll-loops -fomit-frame-pointer -fno-math-errno -fno-signed-zeros -fno-trapping-math -ffinite-math-only -fopenmp"

if [ -z $1 ]; then
    n_size="256"
else
    n_size=$1
fi

./run_simulations.sh "$n_size" 1 gcc "$simd_flags"

make clean

