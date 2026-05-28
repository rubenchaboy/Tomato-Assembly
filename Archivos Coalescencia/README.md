# Capítulo 2: Coalescencia
EL objetivo de este capítulo es estudiar, mediante la aplicación de distintos análisis, los posibles resultados de los procesos de coalescencia de comunidades, ya sea una comunidad resultante dominada por alguna de las comunidades enfrentadas o una combinación de estas comunidades. Los resultados obtenidos podrán servir para evidenciar unas reglas generales sobre el proceso de coalescencia y compararlas con las propuestas por otros investigadores a través de simulaciones o estudios in vitro.


## Procesamiento Previo

Las secuencias procedentes de Illumina se sometieron a un tratamiento previo consistente en la eliminación de los cebadores y un procesado siguiendo el Pipeline de DADA2. Los scripts para realizarlo se encuentran en: [Procesamiento inicial](../Scripts%20Comunes/Procesamiento%20inicial/)

El objeto resultante de este procesado se encuentra en la sección de [Releases](https://github.com/rubenchaboy/Tomato-Assembly/releases/tag/Coalescencia) de este repositorio.

## Contenidos

- metadata_Coales: el archivos excell con los datos correspondientes.
- `Analisis Coalescencia.Rmd`/` Analisis Coalescencia.html`: el script tanto en formato _.Rmd_ como _.html_ con el código utilizado para desarrollar los análisis de este capítulo.

## Funciones

### Análisis de diversidad y correlaciones

- Se analizan estadísticamente los efectos de Riqueza y Diversidad sobre Carga y Peso.

### Análisis filogenético

- Se calculan las 10 familias más abundantes.

 ### Análisis de la composición

Para cada pareja de comunidades y sus respectivas comunidades individuales: 

- Se representa la composición microbiana mediante el método NMDS utilizando distancias Bray-Curtis.
- Se calcula las distancias Bray-Curtis entre las muestras y se representa con digramas de cajas para evaluar:
  
         -  la variabilidad dentro de cada comunidad (intra-grupo).
         - las diferencias entre cada comunidad y su mezcla.  
- Se representa la composición microbiana mediante el método NMDS utilizando distancias Unifrac.
- Se calcula las distancias Unifracentre las muestras y se representa con digramas de cajas para evaluar:
         -  la variabilidad dentro de cada comunidad (intra-grupo).
         - las diferencias entre cada comunidad y su mezcla.

  Para todos esos análisis se genera primero un bucle en el que se crean los objetos phyloseq para todas las combinaciones de parejas. Cada uno de estos objetos contiene las muestras de las comunidades individuales así como las de la pareja que forman. En un segundo bucle, se lanza la función correspondiente (representación mediante NMDS con 

   ### Análisis de ASVs
  
- Se generan plots de “rainbow” para comparar abundancias de ASVs entre la pareja de comunidades y las comunidades individuales que la forman.
- Se generan diagramas de Euler para comparar la presencia de ASVs entre la pareja de comunidades y las comunidades individuales que la forman.
  
En ambos casos Primero se prepara la función, después se preparan los diferentes objetos phyloseq con las combinaciones de las comunidades y, por último, se lanza la función con un bucle para todos estos objetos.
