
drop table registros_entrada
create table registros_entrada(
    codigo_registro int not null,
	cedula_empleado char (10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key (codigo_registro)
	
)

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(1,'0850983421','01/03/2024','06:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2,'0850983422','02/03/2024','07:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(3,'0850983423','03/03/2024','08:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(4,'0850983424','04/03/2024','09:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(5,'0850983425','05/03/2024','10:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(6,'0850983426','06/03/2024','11:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(7,'0850983427','07/03/2024','12:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(8,'0850983428','08/03/2024','13:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(9,'0850983429','09/03/2024','12:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(10,'0850983410','10/03/2024','14:00')

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12345, '1754416489', '18/06/2023', '7:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12355, '1758254591', '03/08/2023', '14:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12346, '1715974492', '25/03/2022', '23:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12347, '1735642583', '28/12/2015', '16:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12389, '1707416984', '16/07/2012', '8:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12349, '1778541235', '17/03/2013', '10:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12310, '1742158637', '14/05/2017', '19:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12311, '1756321784', '15/05/2004', '20:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12358, '1712546328', '07/07/2008', '21:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12378, '1725785413', '02/09/2023', '4:00');

select cedula_empleado,fecha,hora from registros_entrada
select * from registros_entrada where hora between '07:00' and '14:00'
select * from registros_entrada where hora > '08:00'

update registros_entrada set cedula_empleado='082345679'
where fecha between '01/08/2024' and '31/08/2024'

delete from registros_entrada
where fecha between '01/06/2024' and '30/06/2024'

--reto 7 

select * from registros_entrada
where fecha between '01/09/2024' and '30/09/2024' or cedula_empleado like '17%'


select * from registros_entrada
where fecha between '01/08/2024' and '31/08/2024' 
and cedula_empleado like '17%'
and hora between '08:00' and '12:00'

select * from registros_entrada
where (fecha between '01/08/2024' and '31/08/2024' and cedula_empleado like '17%' and hora between '08:00' and '12:00')
or
(fecha between '01/09/2024' and '30/09/2024' and cedula_empleado like '08%' and hora between '09:00' and '13:00')

