select * from estudiantes

delete from estudiantes

alter table estudiantes
add column codigo_profesor int

create table profesores (
codigo int ,
nombre varchar(50) not null,
	
	constraint profesores_pk primary key (codigo)

	

)


alter table estudiantes
	add constraint estudiantes_profesores_fk
	foreign key (codigo_profesor)
	
	references profesores (codigo)
	
	--inserts de tabla principal 
insert into  estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values
('1700001001', 'Juan', 'Martínez', 'juan@gmail.com', '15/05/2000', 100),
('1700001002', 'María', 'Hernández', 'maria@gmail.com', '21/08/1999', 101),
('1700001003', 'Pedro', 'González', 'pedro@gmail.com', '10/03/2001', 102),
('1700001004', 'Laura', 'Fernández', 'laura@gmail.com', '30/01/2002', 103),
('1700001005', 'Carlos', 'López', 'carlos@gmail.com', '05/11/2000', 104),
('1700001006', 'Ana', 'Sanchez', 'ana@gmail.com', '12/07/2001', 100),
('1700001007', 'David', 'Martínez', 'david@gmail.com', '18/09/2002', 101),
('1700001008', 'Elena', 'Nuñez', 'elena@gmail.com', '03/12/1999', 102),
('1700001009', 'Sara', 'Rojas', 'sara@gmail.com', '25/04/2001', 103),
('1700001010', 'Francisco', 'García', 'francisco@gmail.com', '08/10/2000', 104);
	

--inserts tabla nueva 

Insert into profesores (codigo, nombre) 
values
(100, 'Juan '),
(101, 'María '),
(102, 'Pedro '),
(103, 'Francisco '),
(104, 'Ana ');