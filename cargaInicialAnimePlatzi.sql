use animeplazti;


-- Insert Autores 
INSERT INTO autores (id, nombre) VALUE ('1','Eiichiro Oda');
INSERT INTO autores (id, nombre) VALUE ('2','Koyoharu Gotouge');
select * from autores;

-- Insert Animes
INSERT INTO animes (id, titulo) VALUE ('1','One Piece');
INSERT INTO animes (id, titulo) VALUE ('2','Kimetsu no Yaiba');

select * from animes;

-- Insert animes_autores
INSERT INTO animes_autores (id, anime_id, autor_id) VALUE ('1','1','1');
INSERT INTO animes_autores (id, anime_id, autor_id) VALUE ('2','2','2');
INSERT INTO animes_autores (id, anime_id, autor_id) VALUE ('3','2','1');
select * from animes_autores;

-- Insert temporadas
INSERT INTO temporadas (id, titulo, descripcion, no_capitulos, estatus, anime_id) VALUES ('1','Ope Piece', 'Es el inicio del gran viaje del pirata Mokey D Luffy, para ser el rey de los piratas debe encontrar el ONE PIECE!', '998', 'EMISION','1');
INSERT INTO temporadas (id, titulo, descripcion, no_capitulos, estatus, anime_id) VALUES ('2','Kimetsu no Yaiba temporada 1', 'Estamos en la era Taisho de Japón. Tanjiro, un joven que se gana la vida vendiendo carbón, descubre un día que su familia ha sido asesinada por un demonio. Para empeorar las cosas, su hermana menor Nezuko, la única superviviente de la masacre, ha sufrido una transformación en demonio. Destrozado por los acontecimientos Tanjiro decide convertirse en un cazador de demonios para poder devolver a su hermana a la normalidad y matar al demonio que masacró a su familia.', '26', 'FINALIZADO','2');
select * from temporadas;

-- Insert generos
 INSERT INTO generos (id, nombre) VALUE ('1','Acción');
INSERT INTO generos (id, nombre) VALUE ('2','Sobre natural');
INSERT INTO generos (id, nombre) VALUE ('3','Shonen');

select * from generos;

-- Inster temporadas generos

INSERT INTO temporadas_generos (id,temporada_id,genero_id) VALUES ('1','1','1');
INSERT INTO temporadas_generos (id,temporada_id,genero_id) VALUES ('2','1','3');
INSERT INTO temporadas_generos (id,temporada_id,genero_id) VALUES ('3','2','1');
INSERT INTO temporadas_generos (id,temporada_id,genero_id) VALUES ('4','2','2');
 
 select * from temporadas_generos;

-- Insert capitulos

INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('1','el inicio Monkey D Luffy', '21:00', '1', '1');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('2','el inicio de los sombreros de paja', '20:00', '2', '1');

INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('3','Capítulo 1', '21:00', '1', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('4','Capítulo 2', '20:00', '2', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('5','Capítulo 3', '21:10', '3', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('6','Capítulo 4', '20:00', '4', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('7','Capítulo 5', '20:00', '5', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('8','Capítulo 6', '19:50', '6', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('9','Capítulo 7', '20:00', '7', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('10','Capítulo 8', '20:00', '8', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('11','Capítulo 9', '21:20', '9', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('12','Capítulo 10', '20:00', '10', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('13','Capítulo 11', '20:00', '11', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('14','Capítulo 12', '20:00', '12', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('15','Capítulo 13', '20:00', '13', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('16','Capítulo 14', '20:00', '14', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('17','Capítulo 15', '20:00', '15', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('18','Capítulo 16', '20:00', '16', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('19','Capítulo 17', '21:00', '17', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('20','Capítulo 18', '20:00', '18', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('21','Capítulo 19', '20:00', '19', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('22','Capítulo 20', '19:58', '20', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('23','Capítulo 21', '20:00', '21', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('25','Capítulo 23', '21:00', '23', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('26','Capítulo 24', '20:00', '24', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('27','Capítulo 25', '21:00', '25', '2');
INSERT INTO capitulos (id, titulo, duracion, capitulo_no, temporada_id) VALUE ('28','Capítulo 26', '20:00', '26', '2');

select * from capitulos;

-- Insert Personajes
INSERT INTO personajes (id,nombre, anime_id) VALUE ('1','Monkey D Luffy','1');
INSERT INTO personajes (id,nombre, anime_id) VALUE ('2','God Ussop','1');
INSERT INTO personajes (id,nombre, anime_id) VALUE ('3','Roronoa Zoro','1');
INSERT INTO personajes (id,nombre, anime_id) VALUE ('4','Sanji','1');
INSERT INTO personajes (id,nombre, anime_id) VALUE ('5','Nami','1');
INSERT INTO personajes (id,nombre, anime_id) VALUE ('6','Nico Robin','1');
INSERT INTO personajes (id,nombre, anime_id) VALUE ('7','Tony Tony Chopper','1');
INSERT INTO personajes (id,nombre, anime_id) VALUE ('8','Franky','1');
INSERT INTO personajes (id,nombre, anime_id) VALUE ('9','Tanjiro','2');
INSERT INTO personajes (id,nombre, anime_id) VALUE ('10','Nezuko','2');
INSERT INTO personajes (id,nombre, anime_id) VALUE ('11','Zenitsu','2');
select * from personajes;

select au.nombre AS autor, an.titulo AS anime FROM autores AS au, animes AS an , animes_autores AS au_an;

