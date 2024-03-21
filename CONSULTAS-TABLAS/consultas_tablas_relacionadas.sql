--consultas de usuario y cuentas

select cu.numero_cuenta,u.nombre
from cuentas cu, usuario u
where cu.cedula_propietario=u.cedula
and cu.saldo between money(100.00) and money(1000.00)
--subconsulta
select *
from cuentas cu, usuario u
where fecha_creacion between '2022-09-21' and '2023-09-21'
and cu.cedula_propietario = u.cedula



--consultas de clientes y compras

select cl.nombre,cl.apellido from clientes cl, compras co
where cl.cedula=co.cedula and cl.cedula like '%7%'

--subconsulta
select * from clientes 
where cedula = '1750983420'




--consultas de estudiantes y profesores
select pr.codigo, es.nombre,es.apellido from estudiantes es,profesores pr
where es.apellido like '%n%' and es.codigo_profesor=pr.codigo

--subconsulta
select * from estudiantes
where codigo_profesor = '103'



--consultas de persona y prestamo

select pe.cantidad_ahorrada,pr.monto,pr.garante from personas pe, prestamo pr
where pe.cedula=pr.cedula and pr.monto between money(100.00) and money(1000.00)

--subconsulta
select * from personas 
where cedula= '178987654 '




--consultas de productos y ventas
select pr.nombre,pr.stock,ve.cantidad  from productos pr, ventas ve
where pr.codigo=ve.codigo_producto and pr.nombre like '%m%' or pr.descripcion='0'

--subconsulta
select pr.nombre,pr.stock from productos pr , ventas ve
where codigo_producto= '1234' and pr.codigo=ve.codigo_producto



--consulta transacciones y banco 

select *
from transacciones where tipo = 'C' and numero_cuenta between '22001' and '22004'

--subconsulta
select *
from transacciones tr, banco ba where  tr.codigo= ba.codigo_transaccion and ba.codigo_transaccion = 1





--consulta videojuegos y plataformas

select vi.nombre, vi.descripcion, vi.valoracion, pl.nombre_plataforma
from videojuegos vi, plataformas pl where  vi.codigo=pl.codigo_videojuego and (vi.descripcion like '%Guerra%' 
and vi.valoracion > 7) or (vi.nombre like 'C%' and vi.valoracion >8 or vi.nombre like 'D')

--subconsulta
select  pl.*
from plataformas pl, videojuegos vi 
where pl.codigo_videojuego = 1





--CONSULTA registro entrada y empleado

select re.cedula_empleado, em.fecha, em.nombre
from empleado em, registros_entrada re
where re.codigo_empleado=em.codigo_empleado and (re.fecha between '2023-08-01' and '2023-08-31')
or (re.cedula_empleado like '17%' and re.hora between '08:00' and '12:00')
or (re.fecha between '2023-10-06' and '2023-10-20' and re.cedula_empleado like '08%'
and re.hora between '09:00' and '13:00' ) 

--subconsulta
select re.codigo_registro, em.nombre
from empleado em,registros_entrada re 
where re.codigo_empleado = em.codigo_empleado and re.codigo_empleado = '2201'
