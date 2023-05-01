
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


https://raw.githubusercontent.com/jrodrisanz/ProyectoSQL/main/images/relaciones.png


## Querys

1. obtener el nombre de todas las películas ordenadas alfabéticamente

https://raw.githubusercontent.com/jrodrisanz/ProyectoSQL/main/images/query1.png

2. obtener el nombre de todos los actores que hayan actuado en al menos una película 

https://raw.githubusercontent.com/jrodrisanz/ProyectoSQL/main/images/query2.png

3. obtener la cantidad de alquileres que se han realizado en total:

https://raw.githubusercontent.com/jrodrisanz/ProyectoSQL/main/images/query3.png

4. Obtener el numero de veces que la gente ha alquilado películas de la categoría Drama

https://raw.githubusercontent.com/jrodrisanz/ProyectoSQL/main/images/query4.png

5. obtener las películas que pertenecen a la categoría "Acción"

https://raw.githubusercontent.com/jrodrisanz/ProyectoSQL/main/images/query5.png

6. Obtener el nombre y la cantidad de películas de todas las categorías, ordenadas por cantidad descendente:

https://raw.githubusercontent.com/jrodrisanz/ProyectoSQL/main/images/query6.png

7. nombre y número de veces que ha sido alquilada una película

https://raw.githubusercontent.com/jrodrisanz/ProyectoSQL/main/images/query7.png

8. Obtener la fecha en la que se realizó el primer alquiler de una película

https://raw.githubusercontent.com/jrodrisanz/ProyectoSQL/main/images/query8.png

9. Obtener la cantidad de alquileres que se realizaron en cada mes del año 2005:

https://raw.githubusercontent.com/jrodrisanz/ProyectoSQL/main/images/query9.png

10. Obtener el título y la descripción de todas las películas que contienen la palabra "astronaut" en su descripción:

https://raw.githubusercontent.com/jrodrisanz/ProyectoSQL/main/images/query10.png