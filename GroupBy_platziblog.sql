use platziblog;

-- agrupar por columnas, nos permite saber cuando que cantidad hay en algun lugar o sumar.
SELECT estatus, COUNT(*) post_quantity 
FROM posts
GROUP BY estatus ;

SELECT estatus, SUM(id) suma_id
FROM posts
GROUP BY estatus ;

SELECT year(fecha_publicacion) as post_year, COUNT(*) as post_quantity
FROM posts
GROUP BY post_year;

SELECT MONTHNAME(fecha_publicacion) as post_month, COUNT(*) as post_quantity
FROM posts
GROUP BY post_month;

SELECT estatus, MONTHNAME(fecha_publicacion) as post_month, COUNT(*) as post_quantity
FROM posts
GROUP BY estatus, post_month;