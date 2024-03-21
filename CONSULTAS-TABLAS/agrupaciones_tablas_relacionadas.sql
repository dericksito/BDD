---AGREGACIONES

---- CONSULTA CUENTAS USUARIO

SELECT AVG(CAST(saldo AS numeric)) AS saldo_promedio 
FROM cuentas WHERE cedula_propietario = '22222';


SELECT tipo_cuenta, COUNT(*) as total_cuentas
FROM usuario
GROUP BY tipo_cuenta

---- CONSULTA clientes


SELECT cedula, SUM(monto) as monto_total_compras
FROM compras
GROUP BY cedula;

SELECT fecha_compra, COUNT(*) as total_compras
FROM compras
WHERE fecha_compra = '2024-03-19'
GROUP BY fecha_compra;

---- CONSULTA estudiantes



SELECT codigo_profesor, COUNT(*) as total_estudiantes
FROM estudiantes
GROUP BY codigo_profesor;

SELECT ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM fecha_nacimiento))) AS edad_promedio
FROM estudiantes;


---- CONSULTA PERSONAS

SELECT cedula,SUM(monto) as monto_total_prestamos
FROM prestamo
GROUP BY cedula;

SELECT COUNT(*) as total_personas
FROM personas
WHERE numero_hijos > 1;

---- CONSULTA PRODUCTOS

SELECT MAX(precio) as precio_maximo
FROM productos

SELECT SUM(cantidad) as cantidad_total_vendida
FROM ventas


---- CONSULTA TRANSACCIONES

SELECT COUNT(*) as total_transacciones_credito
FROM transacciones
WHERE tipo = 'C'

SELECT numero_cuenta, ROUND(AVG(CAST(monto AS decimal)), 2) AS monto_promedio
FROM transacciones
GROUP BY numero_cuenta;


---- CONSULTA VIDEOJUEGOS

SELECT codigo_videojuego, COUNT(*) as total_plataformas
FROM plataformas
GROUP BY codigo_videojuego;

SELECT ROUND(AVG(valoracion), 2) AS promedio_valoraciones
FROM videojuegos;



---- CONSULTA REGISTRO ENTRADA

SELECT cedula_empleado, COUNT(*) as total_registros_entrada
FROM registros_entrada
GROUP BY cedula_empleado;

SELECT MIN(fecha) as fecha_minima, MAX(fecha) fecha_maxima
FROM registros_entrada;

