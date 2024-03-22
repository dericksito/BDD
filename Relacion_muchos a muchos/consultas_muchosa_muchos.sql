
--- relacion usuarios grupo

SELECT u.nombre as nombre_usuario, g.nombre as nombre_grupo
FROM usuarios u, grupo g, usuario_grupo ug
WHERE u.id = ug.us_id
AND g.id = ug.gr_id;

SELECT nombre
FROM usuarios
WHERE id IN (SELECT us_id FROM usuario_grupo WHERE gr_id = 1);


SELECT g.nombre as nombres_grupo, count(ug.us_id) as total
FROM grupo g, usuario_grupo ug
WHERE g.id = ug.gr_id
GROUP BY g.nombre;


SELECT usuarios.nombre AS nombre_usuario, grupo.nombre AS nombre_grupo
FROM usuarios, usuario_grupo, grupo
WHERE usuarios.id = usuario_grupo.us_id
AND grupo.id = usuario_grupo.gr_id
AND grupo.nombre LIKE '%intensivo%';

SELECT nombre
FROM usuarios
WHERE id IN (SELECT us_id FROM usuario_grupo WHERE gr_id = 2);

SELECT grupo.nombre, MAX(usuario_grupo.us_id) AS max_us_id, MIN(usuario_grupo.us_id) AS min_us_id
FROM grupo, usuario_grupo
WHERE grupo.id = usuario_grupo.gr_id
GROUP BY grupo.nombre;


SELECT usuarios.nombre AS nombre_usuario, grupo.fecha_creacion
FROM usuarios, usuario_grupo, grupo
WHERE usuarios.id = usuario_grupo.us_id
AND grupo.id = usuario_grupo.gr_id
AND grupo.fecha_creacion BETWEEN '2020-03-08' AND '2022-03-08';

SELECT nombre
FROM usuarios
WHERE id IN (SELECT us_id FROM usuario_grupo WHERE gr_id = 3);

SELECT grupo.descripcion, COUNT(usuario_grupo.us_id) AS cantidad_usuarios
FROM grupo, usuario_grupo
WHERE grupo.id = usuario_grupo.gr_id
AND grupo.descripcion LIKE '%matutino%'
GROUP BY grupo.descripcion;


--- relacion habitaciones huespedes

SELECT habitaciones.habitacion_numero, huespedes.nombre, huespedes.apellidos
FROM habitaciones, huespedes, reservas
WHERE habitaciones.habitacion_numero = reservas.habitacion_numero
AND huespedes.id = reservas.huesped_id;


SELECT nombre, apellidos
FROM huespedes
WHERE id IN (SELECT huesped_id FROM reservas WHERE habitacion_numero = 2);

SELECT habitaciones.habitacion_numero, COUNT(reservas.huesped_id) AS cantidad_huespedes
FROM habitaciones, reservas
WHERE habitaciones.habitacion_numero = reservas.habitacion_numero
GROUP BY habitaciones.habitacion_numero;


SELECT habitaciones.habitacion_numero, habitaciones.piso, huespedes.nombre, huespedes.apellidos
FROM habitaciones, huespedes, reservas
WHERE habitaciones.habitacion_numero = reservas.habitacion_numero
AND huespedes.id = reservas.huesped_id
AND habitaciones.piso = 4;

SELECT nombre, apellidos
FROM huespedes
WHERE id IN (SELECT huesped_id FROM reservas WHERE habitacion_numero = 3);

SELECT habitaciones.habitacion_numero, AVG(reservas.huesped_id) AS promedio_huespedes
FROM habitaciones, reservas
WHERE habitaciones.habitacion_numero = reservas.habitacion_numero
GROUP BY habitaciones.habitacion_numero;


SELECT habitaciones.habitacion_numero, huespedes.nombre, huespedes.apellidos
FROM habitaciones, huespedes, reservas
WHERE habitaciones.habitacion_numero = reservas.habitacion_numero
AND huespedes.id = reservas.huesped_id;


SELECT nombre, apellidos
FROM huespedes
WHERE id IN (SELECT huesped_id FROM reservas WHERE habitacion_numero = 4);


SELECT habitaciones.habitacion_numero, SUM(habitaciones.precio_por_noche) AS total_recaudado
FROM habitaciones, reservas
WHERE habitaciones.habitacion_numero = reservas.habitacion_numero
GROUP BY habitaciones.habitacion_numero;

--- relacion municipio proyecto

SELECT municipio.nombre AS nombre_municipio, proyecto.proyecto AS nombre_proyecto
FROM municipio, proyecto, proyecto_municipio
WHERE municipio.id = proyecto_municipio.municipio_id
AND proyecto.id = proyecto_municipio.proyecto_id;

SELECT proyecto
FROM proyecto
WHERE id IN (SELECT proyecto_id FROM proyecto_municipio WHERE municipio_id = 1);


SELECT municipio.nombre, COUNT(proyecto_municipio.proyecto_id) AS cantidad_proyectos
FROM municipio, proyecto_municipio
WHERE municipio.id = proyecto_municipio.municipio_id
GROUP BY municipio.nombre;


SELECT municipio.nombre AS nombre_municipio, proyecto.proyecto AS nombre_proyecto
FROM municipio, proyecto, proyecto_municipio
WHERE municipio.id = proyecto_municipio.municipio_id
AND proyecto.id = proyecto_municipio.proyecto_id
AND municipio.nombre LIKE '%GAD%';

SELECT municipio.nombre, MIN(proyecto_municipio.proyecto_id) AS min_proyecto_id
FROM municipio, proyecto_municipio
WHERE municipio.id = proyecto_municipio.municipio_id
GROUP BY municipio.nombre;

SELECT municipio.nombre AS nombre_municipio, ciudad.nombre AS nombre_ciudad
FROM municipio, ciudad
WHERE municipio.ciudad_id = ciudad.id;

SELECT *
FROM proyecto
WHERE id IN (SELECT proyecto_id FROM proyecto_municipio WHERE municipio_id = 3);



SELECT municipio.nombre, MAX(proyecto_municipio.proyecto_id) AS max_proyecto_id
FROM municipio, proyecto_municipio
WHERE municipio.id = proyecto_municipio.municipio_id
GROUP BY municipio.nombre;




