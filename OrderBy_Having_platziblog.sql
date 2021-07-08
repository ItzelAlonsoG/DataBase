
-- ORDER BY-----

USE platziblog;

-- Ordenar por de manera ascendente la fecha de publicación.
SELECT *
FROM posts
ORDER BY fecha_publicacion ASC;

-- Ordenar por de manera descenciente la fecha de publicación.
SELECT *
FROM posts
ORDER BY fecha_publicacion DESC;

-- Ordenar por cadenas lo pone en orden alfabético.
SELECT *
FROM posts 
ORDER BY titulo ASC;

-- Ordenar por cadenas lo pone en el inverso del orden alfabético.
SELECT *
FROM posts 
ORDER BY titulo DESC;

-- Ordenar por usuario_id de forma ascendente
SELECT *
FROM posts 
ORDER BY usuario_id ASC;

-- Ordenar por usuario_id de forma descendiente
SELECT *
FROM posts 
ORDER BY usuario_id DESC;

-- Ordenar por  fecha de publicación de manera ascendente los 5 primeros.
-- para ellos sirve LIMIT.
SELECT *
FROM posts 
ORDER BY fecha_publicacion ASC
LIMIT 5;

--  where no funciona correctamente en esta solicitud, ya que toma las columan ya existentes antes del AS 
-- por lo tanto post_quantity no existe como tal es un alias por lo tanto no lo conoce
SELECT monthname(fecha_publicacion) as post_month, estatus, count(*) as post_quantity
FROM posts 
WHERE post_quantity > 1
GROUP BY estatus, post_month
ORDER BY post_month
;
-- having NOS AYUDA CUANDO YA AGRUPAMOS CAMPOS DINÁNICOS YA GRUPAMOS.
SELECT monthname(fecha_publicacion) as post_month, estatus, count(*) as post_quantity
FROM posts 
GROUP BY estatus, post_month
HAVING post_quantity > 2
ORDER BY post_month
;
