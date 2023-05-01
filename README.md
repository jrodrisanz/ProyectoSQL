
![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# ProyectoSQL

## Introducción

Este proyecto consiste en la creación de una base de datos en SQL utilizando 7 archivos csv. que contienen información sobre lo que parece ser un antiguo local de Blockbuster. Para ello, he llevado a cabo los siguientes pasos:

## Limpieza de datos

Los csvs no seguían una lógica clara y contenían información redudante, por lo que previamente ha sido necesario realizar una limpieza de datos utilizando pandas.

    - Eliminar la columna last_update: todas las filas tenían el mismo valor, además, esta columna se encontraba en todos los csvs, por lo que he decidido eliminarla al no encontrale ningún valor.

    - Limpieza de nulos: eliminar la columna original_language_id del csv film.

    - Eliminar columnas release_year, ya que todas las películas son de 2006, por lo que es un dato redundante

    - Todos las películas estan en Inglés, por lo que para facilitar los siguientes pasos sustituimos en la columna language 1 por English.

    - Ponemos los nombres y apellidos de todas las columnas en un formato apropiado: todas las letras estaban en mayúsculas, por lo que utilizamos la función .capitalize(), que deja la primera letra en mayus. y el resto en minus.

## Reorganización de tablas

Una vez realizada la limpieza, había que reorganizar algunos csvs, ya que sino sería imposible establecer relaciones entre ellas.

El archivo old_hdd contenía información sobre actores y sus diversas películas, lo que me dió una pista sobre cómo podían establecerse las relaciones. 

Teníamos un archivo de actores y otro de películas, sin embargo, varios actores pueden estar en una película y varias películas pueden tener un mismo actor. Esta relación many-to-many se puede simplificar a través de la columna old_hdd, o lo que yo interpreto como si se tratase de una columna llamada "reparto".

Para trabajar con esta tabla, teníamos que introducir en ella únicamente el id de actores y de películas, lo que conseguí haciendo varios merge()

## Relaciones entre archivos


[![relaciones.png](https://i.postimg.cc/ydPzL0sn/relaciones.png)](https://postimg.cc/G8HN28Bs)


## Querys

1. obtener el nombre de todas las películas ordenadas alfabéticamente

[![query1.png](https://i.postimg.cc/3J0cR2V6/query1.png)](https://postimg.cc/crZmktsM)

2. obtener el nombre de todos los actores que hayan actuado en al menos una película 

[![query2.png](https://i.postimg.cc/zvg69W19/query2.png)](https://postimg.cc/jnRMfD2X)

3. obtener la cantidad de alquileres que se han realizado en total:

[![query3.png](https://i.postimg.cc/KcMWcndW/query3.png)](https://postimg.cc/vDGh3687)

4. Obtener el numero de veces que la gente ha alquilado películas de la categoría Drama

[![query4.png](https://i.postimg.cc/xdZsnCgY/query4.png)](https://postimg.cc/PLmbMdBF)

5. obtener las películas que pertenecen a la categoría "Acción"

[![query5.png](https://i.postimg.cc/MGnDPwwL/query5.png)](https://postimg.cc/gwP8jfny)

6. Obtener el nombre y la cantidad de películas de todas las categorías, ordenadas por cantidad descendente:

[![query6.png](https://i.postimg.cc/cLb78z3B/query6.png)](https://postimg.cc/0z7KTccz)

7. nombre y número de veces que ha sido alquilada una película

[![query7.png](https://i.postimg.cc/y6jZZ543/query7.png)](https://postimg.cc/G9Bt0Xpb)

8. Obtener la fecha en la que se realizó el primer alquiler de una película

[![query8.png](https://i.postimg.cc/1X7XYksW/query8.png)](https://postimg.cc/4HtXYFKt)

9. Obtener la cantidad de alquileres que se realizaron en cada mes del año 2005:

[![query9.png](https://i.postimg.cc/1R7zPZ1B/query9.png)](https://postimg.cc/w3JzcZvR)

10. Obtener el título y la descripción de todas las películas que contienen la palabra "astronaut" en su descripción:

[![query10.png](https://i.postimg.cc/Pr8djp4f/query10.png)](https://postimg.cc/fJZG7bp1)