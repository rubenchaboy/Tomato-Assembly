# Capítulo 1: Temporal

El objetivo de este capítulo fue determinar cómo evolucionan temporalmente las comunidades microbianas de la rizosfera de tomate. Para ello se ha diseñado un estudio en el que se analizará la variación de estas comunidades realizando mediciones en intervalos de tiempo pequeños. De esta forma, se podrá monitorizar en detalle los cambios significativos que se producen en las comunidades durante los primeros días de desarrollo de la planta.



<p align="center">
  <img src="imagenes/diseño_temporal.svg" alt="Diseño temporal">
</p>

## Procesamiento Previo

Las secuencias procedentes de Illumina se sometieron a un tratamiento previo consistente en la eliminación de los cebadores y un procesado siguiendo el Pipeline de DADA2. El objeto resultante de este procesado, que es utilizadoen este capítulo, se encuentra en la carpeta de _Datos Temporal_ en la sección de _Realeses_ de este repositorio. 

## Contenidos

- metadata_Temp: el archivos excell con los datos correspondientes.
- Script Analisis temporal.Rmd/ Script Analisis temporal.html: el archivo tanto en formato _.Rmd_ como _.html_ con el código utilizado para desarrollar los análisis de este capítulo.  

## Funciones

*Análisis de diversidad y correlaciones*

- Se representan los valores de las variables de trabajo (Carga, Peso, RIqueza, Homogeneidad y Diversidad) en función de Comunidad y Tiempo.
- Se analizan estadísticamente los efectos de Comunidad y Tiempo sobre las variables de trabajo.
- Se analizan estadísticamente los efectos de Riqueza y Diversidad sobre Carga y Peso.

*Análisis filogenético*

- Se calculan las 10 fmailias más abundantes.
- Se analiza el efecto de Tiempo sobre la abundancia de los diferentes Filos y Familias.

*Análisis de la composición*

- Representación de la composición microbiana mediante el método NMDS utilizando distancias Bray-Curtis, separando los datos por tipo de Comunidad y tiempo de muestreo, y agrupándolos visualmente según estas variables.
- Representación la composición microbiana, mediante el método NMDS utilizando distancias Bray-Curtis, separando los datos por cada tipo de Comunidad y agrupándolos según el tiempo de muestreo.
- Análisis de redundancia basado en distancias (dbRDA con Bray–Curtis) en su versión parcial, modelando la composición de las muestras en función de Tiempo mientras se controla el efecto de Comunidad y también modelando la composición de las muestras en función de Comunidad mientras se controla por Tiempo.
- Representación de la composición microbiana mediante el método NMDS utilizando distancias Unifrac, separando los datos por tipo de Comunidad y tiempo de muestreo, y agrupándolos visualmente según estas variables.
- Representación la composición microbiana, mediante el método NMDS utilizando distancias Unifrac, separando los datos por cada tipo de Comunidad y agrupándolos según el tiempo de muestreo.
- Análisis de redundancia basado en distancias (dbRDA con Unifrac) en su versión parcial, modelando la composición de las muestras en función de Tiempo mientras se controla el efecto de Comunidad y también modelando la composición de las muestras en función de Comunidad mientras se controla por Tiempo.
- Análisis de la dinámica temporal de la composición microbiana utilizando la matriz de distancias Bray-Curtis. Se calcula la distancia media dentro de cada comunidad por cada nivel de Tiempo y se estima la tendencia temporal para cada Comunidad. Después, se ponderan las pendientes para calcular un estadístico global y se evalúa su significancia estadística mediante un test de permutación restringida.
- Análisis de la dinámica temporal de la composición microbiana utilizando la matriz de distancias Unifrac. Se calcula la distancia media dentro de cada comunidad por cada nivel de Tiempo y se estima la tendencia temporal para cada Comunidad. Después, se ponderan las pendientes para calcular un estadístico global y se evalúa su significancia estadística mediante un test de permutación restringida.












