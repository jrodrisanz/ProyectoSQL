-- 1. obtener el nombre de todas las películas ordenadas alfabéticamente
-- SELECT title FROM pelicula ORDER BY title ASC;

-- 2. obtener el nombre de todos los actores que hayan actuado en al menos una película 
-- SELECT CONCAT(first_name, ' ', last_name) AS nombre_completo 
-- FROM actor 
-- WHERE actor_id IN (
--   SELECT actor_id 
--   FROM inventario 
--   GROUP BY actor_id 
--   HAVING COUNT(DISTINCT film_id) >= 1
-- );


-- 3. obtener la cantidad de alquileres que se han realizado en total
-- SELECT COUNT(*) FROM alquiler;

-- 4. Obtener el numero de veces que la gente ha alquilado películas de la categoría Drama
-- SELECT pelicula.title, COUNT(alquiler.rental_id) AS num_alquileres 
-- FROM pelicula
-- JOIN categoria ON pelicula.category_id = categoria.category_id
-- JOIN inventario ON pelicula.film_id = inventario.film_id
-- JOIN alquiler ON inventario.inventory_id = alquiler.inventory_id
-- WHERE categoria.name = 'Drama'
-- GROUP BY pelicula.title
-- ORDER BY num_alquileres DESC;


-- 5. obtener las películas que pertenecen a la categoría "Acción"
-- SELECT title FROM pelicula
-- JOIN categoria ON pelicula.category_id = categoria.category_id
-- WHERE categoria.name = 'Action'; 

-- 6. Obtener el nombre y la cantidad de películas de todas las categorías, ordenadas por cantidad descendente:
-- SELECT categoria.name, COUNT(pelicula.film_id) AS cantidad FROM categoria
-- JOIN pelicula ON pelicula.category_id = categoria.category_id
-- GROUP BY categoria.name
-- ORDER BY cantidad DESC;


-- 7. nombre y número de veces que ha sido alquilada una película
-- SELECT pelicula.title, COUNT(alquiler.rental_id) AS num_alquileres 
-- FROM pelicula
-- JOIN inventario ON pelicula.film_id = inventario.film_id
-- JOIN alquiler ON inventario.inventory_id = alquiler.inventory_id
-- GROUP BY pelicula.title;


-- 8. Obtener la fecha en la que se realizó el primer alquiler de una película
-- SELECT pelicula.title, MIN(alquiler.rental_date) AS fecha_primer_alquiler FROM pelicula
-- JOIN inventario ON pelicula.film_id = inventario.film_id
-- JOIN alquiler ON inventario.inventory_id = alquiler.inventory_id
-- GROUP BY pelicula.title
-- ORDER BY fecha_primer_alquiler ASC;

-- 9. Obtener la cantidad de alquileres que se realizaron en cada mes del año 2005:
-- SELECT MONTH(rental_date) AS mes, COUNT(*) AS cantidad FROM alquiler
-- WHERE YEAR(rental_date) = 2005
-- GROUP BY mes;

-- 10. Obtener el título y la descripción de todas las películas que contienen la palabra "astronaut" en su descripción:
-- SELECT title, description FROM pelicula
-- WHERE description LIKE '%astronaut%';

-- 11. Obtener el nombre y el total de ingresos generados por cada categoría de películas, ordenadas por el total de ingresos de forma descendente:
-- SELECT categoria.name, SUM(pelicula.replacement_cost) AS total_ingresos 
-- FROM categoria
-- JOIN pelicula ON pelicula.category_id = categoria.category_id
-- JOIN inventario ON pelicula.film_id = inventario.film_id
-- JOIN alquiler ON inventario.inventory_id = alquiler.inventory_id
-- GROUP BY categoria.name
-- ORDER BY total_ingresos DESC;

-- ALTER TABLE inventario 
-- ADD CONSTRAINT fk_film_id
-- FOREIGN KEY (film_id) 
-- REFERENCES pelicula(film_id);


-- SELECT a.actor_id, a.first_name, a.last_name, COUNT(oh.film_id)
-- FROM actor a
-- JOIN old_hdd oh ON a.actor_id = oh.actor_id
-- GROUP BY a.actor_id, a.first_name, a.last_name
-- HAVING COUNT(DISTINCT oh.film_id) = 2;


-- actores que tienen peliculas en old_hdd
-- SELECT a.actor_id, a.first_name, a.last_name, p.title 
-- FROM actor a
-- JOIN old_hdd oh ON a.actor_id = oh.actor_id
-- JOIN pelicula p ON oh.film_id = p.film_id



 







