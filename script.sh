#!/bin/bash

# Configuración de locales y manejo de errores
export LC_ALL=C
export LANG=C
set -e
set -u
set -o pipefail

# Crear directorios si no existen
mkdir -p resultados/logs resultados/csv

# Función para normalizar nombres (eliminar espacios)
normalize_name() {
    echo "$1" | tr -d ' '
}

# Función para normalizar números
normalize_number() {
    local num="$1"
    echo "$num" | sed -e 's/\.//' -e 's/,/\./'
}

# Validación de argumentos
if [ $# -lt 1 ]; then
    echo "Error: Debes proporcionar un valor para N."
    echo "Uso: $0 <valor_de_N> <_opt_:num_iterations> <_opt_:compiler> <_opt_:flags>"
    exit 1
fi

# Número de iteraciones
num_iterations=${2:-1}
if [ "$num_iterations" -eq 0 ]; then
    exit 0
fi

# Compilador
cc=${3:-gcc}

# Flags de compilación
cflags=${4:-"-O3 -march=native"}

# Normalizar flags
normalized_flags=$(normalize_name "$cflags")

# Archivos de log
temp_file="temp_perf_stat$1-$cc$normalized_flags.log"
temp_file_tmd="temp_tiny_md$1-$cc$normalized_flags.log"
output_file="resultados/logs/logs_$1-$cc$normalized_flags.log"
csv_file="resultados/csv/data_$cc$normalized_flags.csv"

# Depuración de información del sistema
echo "Bash version: $BASH_VERSION"
echo "Compiler: $cc version: $($cc --version | head -n 1)"
echo "Perf version: $(perf --version)"

# Compilación
make clean
make tiny_md CPPFLAGS="-DN=$1" CFLAGS="$cflags" CC="$cc"

# Ejecución del código
for((i=1; i <= num_iterations; i++)); do
    echo "N= $1 - Iteration $i"
    echo "N= $1 - Iteration $i" >> "$output_file"
    
    # Capturar salida de perf y ejecución
    perf stat -o "$temp_file" ./tiny_md > "$temp_file_tmd"
    
    # Concatenar logs
    cat "$temp_file_tmd" >> "$output_file"
    cat "$temp_file" >> "$output_file"
done

# Limpiar archivos temporales
rm "$temp_file" "$temp_file_tmd"

# Crear encabezado CSV si no existe
if [ ! -s "$csv_file" ]; then
    echo "N value,Iteration number,Number of instructions,Ins per cycle,Percentage of misses,Seconds time elapsed,Metrica" > "$csv_file"
fi

# Procesar logs y extraer datos
while IFS= read -r line; do
    # Extraer N
    if [[ $line =~ ^N=\ ([0-9]+) ]]; then
        n_value=${BASH_REMATCH[1]}
    fi

    # Extraer número de iteración
    if [[ $line =~ Iteration\ ([0-9]+) ]]; then
        iteration=${BASH_REMATCH[1]}
    fi

    # Extraer instrucciones (más flexible)
    if [[ $line =~ ([0-9]+([.,][0-9]+)?)\ +instructions ]]; then
        raw_instructions="${BASH_REMATCH[1]}"
        instructions=$(normalize_number "$raw_instructions")
    fi

    # Extraer IPC
    if [[ $line =~ ([0-9]+[.,][0-9]+)\ +insn\ per\ cycle ]]; then
        ins_per_cycle=$(echo "${BASH_REMATCH[1]}" | tr ',' '.')
    fi

    # Extraer porcentaje de branch-misses
    if [[ $line =~ ([0-9]+[.,][0-9]+)%\ of\ all\ branches ]]; then
        misses=$(echo "${BASH_REMATCH[1]}" | tr ',' '.')
    fi

    # Extraer métrica
    if [[ $line =~ prueba\ de\ metrica:\ ([0-9]+[.,][0-9]+) ]]; then
        metrica=${BASH_REMATCH[1]}
        echo "Valor de métrica encontrado: $metrica"
    fi

    # Extraer tiempo de ejecución
    if [[ $line =~ ([0-9]+[.,][0-9]+)\ seconds\ time\ elapsed ]]; then
        time_elapsed=$(echo "${BASH_REMATCH[1]}" | tr ',' '.')
        
        # Escribir datos en CSV
        echo "$n_value,$iteration,$instructions,$ins_per_cycle,$misses,$time_elapsed,$metrica" >> "$csv_file"
    fi

done < "$output_file"

echo "Procesamiento completado. Archivo CSV generado: $csv_file"