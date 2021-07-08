use platziblog;
SELECT *
FROM usuarios;

-- LEFT JOIN unir usuario con posts;
-- trae lo usuarios que tengan o no posts y al lado derecho los respectivos posts.
SELECT *
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.usuario_id;

-- LEFT JOIN unir usuario con posts;
-- trae lo usuarios que tengan no posts.
SELECT *
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;

-- RIGHT JOIN unir posts con usuarios;
-- trae todos los posts aun que no tengan usuario y del otro lado solo los usuarios que si estan asociados a un post
-- para haer este ejercicio se modifico la tabla posts para que el usuario_id puedo aceptar NULL y en la llave foránea y el usuario es eliminado set NULL.


INSERT INTO posts (id,titulo,fecha_publicacion,contenido,estatus,usuario_id,categoria_id) VALUES ('65','El post se quedo huerfano', '2021-07-08', 'Phasellus laoreet eros nec vestibulum varius. Nunc id efficitur lacus, non imperdiet quam. Aliquam porta, tellus at porta semper, felis velit congue mauris, eu pharetra felis sem vitae tortor. Curabitur bibendum vehicula dolor, nec accumsan tortor ultrices ac. Vivamus nec tristique orci. Nullam fringilla eros magna, vitae imperdiet nisl mattis et. Ut quis malesuada felis. Proin at dictum eros, eget sodales libero. Sed egestas tristique nisi et tempor. Ut cursus sapien eu pellentesque posuere. Etiam eleifend varius cursus.
 
 Nullam viverra quam porta orci efficitur imperdiet. Quisque magna erat, dignissim nec velit sit amet, hendrerit mollis mauris. Mauris sapien magna, consectetur et vulputate a, iaculis eget nisi. Nunc est diam, aliquam quis turpis ac, porta mattis neque. Quisque consequat dolor sit amet velit commodo sagittis. Donec commodo pulvinar odio, ut gravida velit pellentesque vitae. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
 
 Morbi vulputate ante quis elit pretium, ut blandit felis aliquet. Aenean a massa a leo tristique malesuada. Curabitur posuere, elit sed consectetur blandit, massa mauris tristique ante, in faucibus elit justo quis nisi. Ut viverra est et arcu egestas fringilla. Mauris condimentum, lorem id viverra placerat, libero lacus ultricies est, id volutpat metus sapien non justo. Nulla facilisis, sapien ut vehicula tristique, mauris lectus porta massa, sit amet malesuada dolor justo id lectus. Suspendisse sit amet tempor ligula. Nam sit amet nisl non magna lacinia finibus eget nec augue. Aliquam ornare cursus dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 
 Donec ornare sem eget massa pharetra rhoncus. Donec tempor sapien at posuere porttitor. Morbi sodales efficitur felis eu scelerisque. Quisque ultrices nunc ut dignissim vehicula. Donec id imperdiet orci, sed porttitor turpis. Etiam volutpat elit sed justo lobortis, tincidunt imperdiet velit pretium. Ut convallis elit sapien, ac egestas ipsum finibus a. Morbi sed odio et dui tincidunt rhoncus tempor id turpis.
 
 Proin fringilla consequat imperdiet. Ut accumsan velit ac augue sollicitudin porta. Phasellus finibus porttitor felis, a feugiat purus tempus vel. Etiam vitae vehicula ex. Praesent ut tellus tellus. Fusce felis nunc, congue ac leo in, elementum vulputate nisi. Duis diam nulla, consequat ac mauris quis, viverra gravida urna.
 ', 'activo',null,'1');

SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.usuario_id;

-- RIGHT JOIN unir posts con usuarios;
-- trae todos los posts que no tengan usuario.
SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;


-- INNER JOIN unir posts con usuarios;
-- traer posts que tenga usuarios y usuarios que tengas posts.
SELECT *
FROM usuarios
INNER JOIN posts ON usuarios.id = posts.usuario_id;

-- es una manera de FULL OUTER JOIN para hacer la union de 
-- dos tablas sin importar si es null sobre usuario o si el usuario es null sobre posts.
SELECT *
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.usuario_id
UNION
SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.usuario_id;

-- DIFERENCIA ASIMÉTICA, es como la UNION pero este nos brinda
-- los posts que no tengan usuarios y los usuarios que no tienen posts.

SELECT *
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.usuario_id
where posts.usuario_id IS NULL
UNION
SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.usuario_id
where posts.usuario_id IS NULL;


SELECT * FROM posts;
select * from usuarios;