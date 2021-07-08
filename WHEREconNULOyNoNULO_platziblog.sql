-- filtar con WHERE valores NULOS y NO NULOS.
SELECT*
FROM posts
WHERE categoria_id IS NULL;

SELECT*
FROM posts
WHERE usuario_id IS NULL;

-- filtrar los NO NULOS.
SELECT*
FROM posts
WHERE categoria_id IS NOT NULL;

SELECT*
FROM posts
WHERE usuario_id IS NOT NULL;

-- agregando condiciones extra con ANDs

SELECT*
FROM posts
WHERE usuario_id IS NOT NULL
AND estatus = 'activo'
AND id < 50
AND categoria_id = 2
AND year(fecha_publicacion) = '2025'
;