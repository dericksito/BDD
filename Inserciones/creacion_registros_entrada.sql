
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

