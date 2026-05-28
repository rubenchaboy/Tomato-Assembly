# Capítulo 5: Transmisión

El objetivo de este capítulo es Validar en la rizosfera las observaciones de Meyer y colaboradores en la filosfera (Meyer et al. 2023) respecto de cómo el modo de transmisión de los microbiomas afecta a su ensamblaje.

**Transmisión conespecífica**

<p align="center">
  <img src="imagenes/transmision_conespecifico.svg" alt="transmision_conespecifico">
</p>

**Transmisión heteroespecífica**
<p align="center">
  <img src="imagenes/transmision_heteroespecifico.svg" alt="transmision_heteroespecifico">
</p>


## Procesamiento Previo

Las secuencias procedentes de Illumina se sometieron a un tratamiento previo consistente en la eliminación de los cebadores y un procesado siguiendo el Pipeline de DADA2. Los scripts para realizarlo se encuentran en: [Procesamiento inicial](../Scripts%20Comunes/Procesamiento%20inicial/)

El objeto resultante de este procesado se encuentra en la sección de [Releases](https://github.com/rubenchaboy/Tomato-Assembly/releases/tag/Transmision) de este repositorio.

## Contenidos

- metadata_Transmision: el archivos excell con los datos correspondientes.
- `Analisis Transmision.Rmd`/` Analisis Transmision.html`: el script tanto en formato _.Rmd_ como _.html_ con el código utilizado para desarrollar los análisis de este capítulo.
- `Analisis ASVs.Rmd`/` Analisis ASVs.html`:  el script tanto en formato _.Rmd_ como _.html_ con el código utilizado para desarrollar los análisis de este capítulo

## Funciones  Script Analisis Transmision

### Análisis de diversidad y correlaciones

- Se representan los valores de las variables de trabajo (Carga, Peso, Riqueza, Homogeneidad y Diversidad) en función del pase de muestreo, la especie de Hospedador y el modo de Transmisisón. 
- Se analiza estadísticamente el efecto de Pase, Hospedador, Transmisión y de la interacción entre Hospedador y Transmisión sobre Riqueza, Homogeneidad y Diversidad.
- En el último pase de muestreo se analiza el efecto de Transmisión sobre Riqueza, Homogeneidad y Diversidad.
- En el último pase de muestreo se analizan los efectos de la especie de planta sobre las variables Carga y Peso.
- Se analizan estadísticamente los efectos de Riqueza y Diversidad sobre Carga y Peso.
- 
### Análisis filogenético

- Se calculan las 10 familias más abundantes.

### Análisis de las comuniades microbianas

- Se realiza una PERMANOVA sobre las disimilitudes Bray-Curtis de las comunidades microbianas con los términos: Pase, Hospedador, Transmisión e interacción Hospedador-Transmisión.
- Se determina el efecto estandarizado de la distancia filogenética media (MPD SES, del inglés, Mean Pairwise Distance Standardized Effect Size) entre pares de taxones coocurrentes y se representan estos valores para cada modo de transmisión y especie de planta.

### Efectos de la especie de Hospedador

- Se evalúa el efecto de la identidad del hospedador sobre la composición de las comunidades microbianas utilizando distancias Bray-Curtis y empleando una PERMANOVA.
- Se evalúa el efecto del hospedador previo sobre la composición microbiana cuando las líneas heteroespecíficas están en tomate.

### Enriquecimiento de taxones

Disponible en el Script `Analisis ASVs.Rmd`/` Analisis ASVs.html`.

## Funciones  Script Analisis ASVs

Debido al tiempo computacional que requieren estos análisis se han separado en un archivo aparte para poder realizar al mismo tiempo los analisis del anterior Script.  

En este script se aplica un modelo bayesiano en dos etapas para comprobar si el modo de transmisión afecta a la presencia/ausencia de ASV (colonización) y a los cambios de abundancia según el modo de transmisión:

- Presencia/ausencia de ASV (colonización). Se aplica un modelo logístico Bernouilli (0/1) para estimar la probabilidad de presencia de cada ASV en función del modo de transmisión. Se incluyen efectos aleatorios de ASVs para permitir variación en la respuesta entre ASVs y también efectos aleatorios de planta para controlar la dependencia entre observaciones procedentes de la misma planta.

- Cambios de abundancia según el modo de transmisión. Para aquellos ASVs con abundancia superior a 0 la abundancia relativa se modela en escala logarítmica mediante la aplicación de una regresión lineal bayesiana, manteniendo los mismos efectos aleatorios que en el caso anterior.
