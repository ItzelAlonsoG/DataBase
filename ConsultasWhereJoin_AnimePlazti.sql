use animeplazti;

select *
from autores;
-- ¿ que animes hizo el autor Eiichiro Oda?

SELECT autores.nombre as autor,  group_concat(animes.titulo) as animes
FROM autores
INNER JOIN animes_autores ON autores.id = animes_autores.autor_id
INNER JOIN animes ON animes.id = animes_autores.anime_id
HAVING autor LIKE '%Eiichiro Oda%'
;


-- ¿ Cuantas temporadas tiene el anime de One piece?

SELECT  animes.titulo as anime, COUNT(*) AS numero_temporadas
FROM animes
INNER JOIN  temporadas ON temporadas.anime_id = animes.id
WHERE animes.titulo LIKE '%one piece%';

-- ¿ Cuales son los personajes del anime Kimetsu no Yaima?

SELECT  personajes.nombre
FROM personajes
INNER JOIN animes ON animes.id = personajes.anime_id
WHERE animes.titulo LIKE '%Kimetsu no Yaiba%'
;

-- ¿ cuanto dura el capitulo 1 de la primera temporada de kimetsu no yaiba?

select temporadas.titulo as temporada, capitulos.capitulo_no as no_capitulo , capitulos.titulo as nombre_capitulo, capitulos.duracion as duracion
from capitulos
INNER JOIN temporadas ON temporadas.id = capitulos.temporada_id
WHERE temporadas.titulo LIKE '%kimetsu no yaiba temporada 1%' AND
capitulos.capitulo_no = 1;

-- ¿ que temporada esta en emision?

select animes.titulo as anime , temporadas.titulo as temporada, temporadas.estatus, temporadas.no_capitulos as capitulos
from temporadas
INNER JOIN animes ON animes.id = temporadas.anime_id
WHERE temporadas.estatus like '%emision%' ;

select * from posts;

-- ¿ que genero tienen las temporadas de one piecee?

INSERT INTO temporadas_generos (id, temporada_id, genero_id) VALUE ('5','3','1');

SELECT animes.titulo as anime , temporadas.titulo as temporada, group_concat(generos.nombre) as generos
FROM temporadas 
INNER JOIN temporadas_generos on temporadas.id  =  temporadas_generos.temporada_id
INNER JOIN  generos  on generos.id = temporadas_generos.genero_id
INNER JOIN animes  on animes.id = temporadas.anime_id
GROUP BY  temporadas.id
HAVING anime LIKE '%One piece%'
;

-- ¿ que temporadas tiene el genero de acción?

SELECT generos.nombre as genero,  group_concat(temporadas.titulo)as temporada
FROM generos
INNER JOIN temporadas_generos on generos.id = temporadas_generos.genero_id
INNER JOIN temporadas on temporadas.id = temporadas_generos.temporada_id
GROUP BY genero
HAVING genero LIKE '%Accion%'
;

-- ¿ quienes son los autores de kimetsu no yaiba?

Select animes.titulo as anime, group_concat(autores.nombre) as autores
from animes
inner join animes_autores ON animes.id = animes_autores.anime_id
inner join autores ON autores.id = animes_autores.autor_id
where animes.titulo like '%kimetsu no yaiba%';


select * from animes;
select* from temporadas; 
select * from generos;
selecT* from temporadas_generos;
select * from capitulos;