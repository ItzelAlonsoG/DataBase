-- Pregunta a query--

-- ¿ cuantos tags hay en cada post?
SELECT posts.titulo, COUNT(*) num_etiquetas
FROM posts
INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id
ORDER BY num_etiquetas DESC;

-- ¿ cuales etiquetas hay en cada post?

SELECT posts.titulo, group_concat(nombre_etiqueta)
FROM posts
INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id;

-- ¿ cuales etiquetas no tienen post?
SELECT* 
FROM etiquetas 
LEFT JOIN posts_etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
WHERE posts_etiquetas.etiqueta_id IS NULL
;

--

select c.nombre_categoria, count(*) AS cant_spots
FROM categorias AS c
	INNER JOIN posts AS p ON c.id = p.categoria_id
    GROUP BY c.id
    ORDER BY cant_spots DESC
    LIMIT 1;

-- ¿ QUE USUARIO CREO MÁS?

select u.nickname, count(*) AS cant_spots, GROUP_CONCAT(nombre_categoria)
FROM usuarios AS u
	INNER JOIN posts AS p ON u.id = p.usuario_id
    INNER JOIN categorias c ON c.id = p.categoria_id
    GROUP BY c.id
    ORDER BY u.id DESC
  ;
  
  -- ¿ usuarios que no hay escrito algun post?
  
  SELECT *
  FROM usuarios
  LEFT JOIN posts ON usuarios.id = posts.usuario_id
  WHERE posts.usuario_id IS NULL;

