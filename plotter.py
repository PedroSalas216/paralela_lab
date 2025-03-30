import sys
import pandas as pd
import matplotlib.pyplot as plt

# Verificar si se pasó el archivo como argumento
if len(sys.argv) < 2:
    print("Uso: python plot_csv.py <archivo.csv>")
    sys.exit(1)

archivo_csv = sys.argv[1]

# Cargar el CSV
df = pd.read_csv(archivo_csv)

# Convertir columnas numéricas
df = df.apply(pd.to_numeric, errors="coerce")

# Lista de valores posibles de N en orden
categorias_n = [32, 108, 256, 500, 864, 1372, 2048, 2916, 4000, 5324, 6912, 8788]

# Filtrar los valores de N que están en la lista de categorías
df = df[df["N value"].isin(categorias_n)]

# Ordenar el DataFrame según la lista de categorías
df["N value"] = pd.Categorical(df["N value"], categories=categorias_n, ordered=True)
df = df.sort_values("N value")

# Configurar tamaño del gráfico
plt.figure(figsize=(12,6))

# Graficar barras con etiquetas categóricas en X
plt.bar(df["N value"].astype(str), df["Metrica"], color="blue", width=0.6, label="Métrica")

# Personalizar el gráfico
plt.xlabel("N value")
plt.ylabel("Métrica")
plt.title(f"Métrica vs N ({archivo_csv})")
plt.xticks(rotation=45)  # Rotar etiquetas si son muchas
plt.legend()
plt.grid(axis="y", linestyle="--", alpha=0.7)  # Líneas horizontales

# Mostrar la gráfica
archivo= archivo_csv.split(".") # [data_compiler-cflags, csv]
archivo= archivo[0].split("_") # [data, compiler-flags]
plt.savefig("resultados/graficos/"+ archivo[1]+".png")
