-- num de peliculas por categoria
SELECT categoria.name , COUNT(pelicula.categoria)
LEFT JOIN pelicula y categoria, category_id