-- EJEMPLOS DE WHERE

SELECT *
FROM posts
WHERE id >= 50;

SELECT *
FROM posts
WHERE id != 50;

SELECT *
FROM posts
WHERE estatus ='activo';

SELECT *
FROM posts
WHERE estatus !='activo';

-- filtar sin importar el inicio o fin de la palabra escandalo en la cadena de texto.
SELECT *
FROM posts
WHERE titulo LIKE '%escandalo%';

-- que filtre aquellos titulos de posts que inicien con escandalo.
SELECT *
FROM posts
WHERE titulo LIKE 'escandalo%';

-- que filtre aquellos titulos de posts que terminen con escandalo.
SELECT *
FROM posts
WHERE titulo LIKE '%roja';

-- FILTAR POR TIPO DE DATO FECHA

-- filtrar posts que sean posteriores de l 2025.01.01
SELECT *
FROM posts
WHERE fecha_publicacion > '2025-01-01';

-- filtrar posts que sean antes del 2025.01.01
SELECT *
FROM posts
WHERE fecha_publicacion < '2025-01-01';

-- filtar posts entre fechas  '2023-01-01' y '2025-12-31'
SELECT *
FROM posts
WHERE fecha_publicacion BETWEEN '2023-01-01'AND '2025-12-31';

-- filtar posts entre rango de IDs.
SELECT *
FROM posts
WHERE id BETWEEN  50 AND 60;

-- filtar por años sin tomar en cuenta la fecha

SELECT *
FROM posts
WHERE year(fecha_publicacion) BETWEEN '2023'AND '2024';

-- filtrar únicamente por mes sin considerar fecha ni año.
SELECT *
FROM posts
WHERE MONTH(fecha_publicacion) = '04';


