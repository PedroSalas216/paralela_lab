#!/bin/bash

# "Uso: run_simulations <valor_de_N> <_opt_:num_iterations> <_opt_:compiler> <_opt_:"flags">"

# # 4000 2916 2948 1372 ( 864 500 256 108)
declare -A vals_n
vals_n["108"]="3"
vals_n["256"]="1"
vals_n["500"]="0"
vals_n["864"]="0"

# compiler="gcc"
# flags="-O0"

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

    python3 plotter.py resultados/data_"$cmp""$flg".csv
}

simulate "gcc" "-O3 -march=native"
simulate clang "-O3 -march=native"
make clean
