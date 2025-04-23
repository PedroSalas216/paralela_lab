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
vals_n["108"]="1"
vals_n["256"]="1"
vals_n["500"]="1"
vals_n["864"]="1"
vals_n["1372"]="0"
vals_n["2048"]="0"
vals_n["2916"]="0"
vals_n["4000"]="0"
vals_n["5324"]="0"

# ==== aca configura cada simulacion ==== 
# simulate compilador "flags"
simulate gcc "-O3 -ffast-math -march=native -mtune=native -fopt-info-vec -fopt-info-vec-missed"

# ==== fin simulación ====
make clean
