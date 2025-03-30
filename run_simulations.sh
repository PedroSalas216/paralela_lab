#!/bin/bash


if [ -z $1 ]; then
    echo "Error: Debes proporcionar un valor para N."
    echo "Uso: $0 <valor_de_N> <_opt_:num_iterations> <_opt_:compiler> <_opt_:"flags">"
    exit 1
fi

if [ -z $2 ]; then 
    num_iterations=1
else 
    if [ $2 -eq 0 ]; then
        exit 0
    else 
        num_iterations=$2
    fi
fi

if [ -z "$3" ]; then 
    cc="gcc"
 else 
    cc=$3
fi

if [ -z "$4" ]; then 
    cflags="-O3 -march=native"
else 
    cflags=$4
fi


normalize_name(){
    echo "$1" | tr -d ' \'
}

normalized_flags=$(normalize_name "$cflags") 



# Archivos
temp_file="resultados/temp_perf_stat$1-$cc$normalized_flags.log"
temp_file_tmd="resultados/temp_tiny_md$1-$cc$normalized_flags.log"
output_file="resultados/logs_$1-$cc$normalized_flags.log"
csv_file="resultados/data_$cc$normalized_flags.csv"

# Compilación 
make clean
make tiny_md CPPFLAGS="-DN=$1" CFLAGS="$cflags" CC="$cc"

# Ejecución del código
for((i=1; i <= num_iterations; i++)); do
    echo "N= $1 - Iteration $i"
    echo "N= $1 - Iteration $i" >> $output_file
    perf stat -o $temp_file  ./tiny_md > $temp_file_tmd
    cat $temp_file_tmd >> $output_file
    cat $temp_file >> $output_file
done

rm $temp_file $temp_file_tmd


# CSV header
if [ ! -s "$csv_file" ]; then
    echo "N value,Iteration number,Number of instructions,Ins per cycle,Percentage of misses,Seconds time elapsed,Metrica" > "$csv_file"
fi
#jecho "N value, Iteration number, Number of instructions, Ins per cycle, Percentage of misses, Seconds time elapsed, Metrica" > "$csv_file"

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

    # "prueba de metrica: %f\n"
    if [[ $line =~ prueba\ de\ metrica:\ ([0-9]+\.[0-9]+) ]]; then
    metrica=${BASH_REMATCH[1]}
    echo "Valor encontrado: $metrica"
    fi

    # Extraer tiempo de ejecución
    if [[ $line =~ ([0-9]+,[0-9]+)\ seconds\ time\ elapsed ]]; then
        time_elapsed=$(echo "${BASH_REMATCH[1]}" | tr ',' '.')  # Cambiar coma por punto
        
        # Debug para ver si las variables tienen valores
        # echo "DEBUG: $n_value,$iteration,$instructions,$ins_per_cycle,$misses,$time_elapsed,$metrica"
        # Escribir datos en CSV
        echo "$n_value,$iteration,$instructions,$ins_per_cycle,$misses,$time_elapsed,$metrica" >> "$csv_file"
    fi

done < "$output_file"
