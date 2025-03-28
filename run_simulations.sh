#!/bin/bash


if [ $# -eq 0 ]; then
    echo "Error: Debes proporcionar un valor para N."
    echo "Uso: $0 <valor_de_N>"
    exit 1
fi


# Initialize variables
cflags="-O1 -march=native"
num_iterations=1

# Archivos
temp_file="resultados/temp$1.log"
temp_file_tmd="resultados/temp_tmd$1.log"
output_file="resultados/resultados_slurm$1.log"
csv_file="resultados/resultados_slurm$1.csv"

# Compilación 
make clean
make tiny_md CPPFLAGS="-DN=$1" CFLAGS="$cflags"

# Ejecución del código
for((i=1; i <= num_iterations; i++)); do
    echo "N= $1 - Iteration $i"
    echo "N= $1 - Iteration $i" >> $output_file
    perf stat -o $temp_file  ./tiny_md > $temp_file_tmd
    cat $temp_file_tmd >> $output_file
    cat $temp_file >> $output_file
done

rm $temp_file

# CSV header
echo "N value, Iteration number, Number of instructions, Ins per cycle, Percentage of misses, Seconds time elapsed, Fs per particle per second" > "$csv_file"

# Convertir comas a puntos y eliminar puntos separadores de miles
normalize_number() {
    echo "$1" | tr -d '.' | tr ',' '.'
}

# Extraer datos del archivo de salida
while IFS= read -r line
do
    # Extraer N
    if [[ $line =~ ^N=\ ([0-9]+) ]]; then
        n_value=${BASH_REMATCH[1]}
    fi

    # Extraer número de iteración
    if [[ $line =~ Iteration\ ([0-9]+) ]]; then
        iteration=${BASH_REMATCH[1]}
    fi

    # Extraer instrucciones y IPC
    if [[ $line =~ ([0-9]+\.[0-9]+\.[0-9]+)\ +instructions ]]; then
        raw_instructions=${BASH_REMATCH[1]}
        instructions=$(normalize_number "$raw_instructions")  # Quitar puntos de miles
    fi
    if [[ $line =~ ([0-9]+,[0-9]+)\ +insn\ per\ cycle ]]; then
        ins_per_cycle=$(echo "${BASH_REMATCH[1]}" | tr ',' '.')  # Cambiar coma por punto
    fi

    # Extraer porcentaje de branch-misses
    if [[ $line =~ ([0-9]+,[0-9]+)%\ of\ all\ branches ]]; then
        misses=$(echo "${BASH_REMATCH[1]}" | tr ',' '.')
    fi

    if [[ $line =~ \#\ fs/\(sec\*N\)\ =\ ([0-9]+\.[0-9]+) ]]; then
    fs_per_particle_over_sec=${BASH_REMATCH[1]}
    echo "Valor encontrado: $fs_per_particle_over_sec"
    fi

    # Extraer tiempo de ejecución
    if [[ $line =~ ([0-9]+,[0-9]+)\ seconds\ time\ elapsed ]]; then
        time_elapsed=$(echo "${BASH_REMATCH[1]}" | tr ',' '.')  # Cambiar coma por punto
        
        # Debug para ver si las variables tienen valores
        echo "DEBUG: $n_value,$iteration,$instructions,$ins_per_cycle,$misses,$time_elapsed, $fs_per_particle_over_sec"

        # Escribir datos en CSV
        echo "$n_value,$iteration,$instructions,$ins_per_cycle,$misses,$time_elapsed, $fs_per_particle_over_sec" >> "$csv_file"
    fi

done < "$output_file"
