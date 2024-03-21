select * from registros_entrada
delete from registros_entrada


alter table registros_entrada
add column codigo_empleado int  not null


create table empleado(
codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora  time not null,


)



alter table registros_entrada 
add constraint registros_entrada_empleado_fk 
foreign key (codigo_empleado)

references empleado(codigo_empleado)


ALTER TABLE empleado
ADD CONSTRAINT empleado_codigo_empleado_unique UNIQUE (codigo_empleado);

--inserts de la tabla principal
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
values
(11, '1700001001', '2023-08-02', '09:30:00', 2202),
(12, '1700001002', '2023-08-05', '10:15:00', 2203),
(13, '1700001003', '2023-08-10', '11:00:00', 2204),
(14, '1700001004', '2023-08-15', '08:45:00', 2205),
(15, '1700001005', '2023-08-20', '09:20:00', 2201),
(16, '1700001006', '2023-08-25', '10:30:00', 2202),
(17, '1700001007', '2023-08-30', '12:00:00', 2203),
(18, '1700001008', '2023-09-02', '08:30:00', 2204),
(19, '1700001009', '2023-09-05', '09:45:00', 2205),
(20, '1700001010', '2023-09-10', '11:15:00', 2201);

--inserts de la tabla nueva

insert into  empleado (codigo_empleado, nombre, fecha, hora) 
values
(2201, 'Juan ', '2023-08-01', '08:00:00'),
(2202, 'María ', '2023-08-05', '08:30:00'),
(2203, 'Pedro ', '2023-08-10', '09:00:00'),
(2204, 'Laura ', '2023-08-15', '10:00:00'),
(2205, 'Carlos ', '2023-08-20', '11:00:00');

