#!/bin/bash

# "Uso: run_simulations <valor_de_N> <_opt_:num_iterations> <_opt_:compiler> <_opt_:"flags">"

simulate (){
    if [ -z $1 ]; then
        cmp="gcc"
    else
        cmp=$1
    fi
    if [ -z $2 ]; then
        flg="-O0"
    else
        flg=$2
    fi

    normalize_name(){
        echo "$1" | tr -d ' \'
    }



    for key in "${!vals_n[@]}"
    do
        ./run_simulations.sh "$key" "${vals_n[$key]}" "$cmp" "$flg"
    done
    
    flg=$(normalize_name "$flg") 

    # python3 plotter.py resultados/data_"$cmp""$flg".csv
}

# # 4000 2916 2948 1372 ( 864 500 256 108)
declare -A vals_n
vals_n["108"]="0"
vals_n["256"]="0"
vals_n["500"]="0"
vals_n["864"]="0"
vals_n["1372"]="0"
vals_n["2048"]="0"
vals_n["2916"]="4"
vals_n["4000"]="0"
vals_n["5324"]="0"

# ==== aca configura cada simulacion ==== 

# simd_flags="-O3 -march=native -mavx2 -mfma -ftree-vectorize -ffast-math -funroll-loops -fomit-frame-pointer -fno-math-errno -fno-signed-zeros -fno-trapping-math -ffinite-math-only -fopenmp-simd"


simd_flags="-O3 -march=native -mavx2 -mfma -ftree-vectorize -ffast-math -funroll-loops -fomit-frame-pointer -fno-math-errno -fno-signed-zeros -fno-trapping-math -ffinite-math-only -fopenmp"

simulate gcc "$simd_flags"

# ==== fin simulación ====
make clean
