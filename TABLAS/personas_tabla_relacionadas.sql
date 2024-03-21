select * from personas 
delete from personas
create table prestamo(
cedula char(10),
monto money ,
fecha_prestamo date ,
hora_prestamo time ,
	garante varchar(40),
	
	constraint prestamo_pk primary key (cedula)
)

alter table personas 
add constraint personas_prestamo_fk
foreign key (cedula)

references prestamo(cedula)


ALTER TABLE personas
ADD CONSTRAINT personas_cedula_unique UNIQUE (cedula);

--inserts de tabla principal

insert into  personas (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, estado_civil_codigo)
values
('178098342', 'Juan', 'Pérez', 1.75, '1990-05-20', '08:30:00', 5000.00, 2, 'C'),
('178123456', 'María', 'Rodríguez', 1.65, '1985-08-15', '09:45:00', 7500.00, 1, 'S'),
('178234567', 'Pedro', 'Sánchez', 1.80, '1992-03-10', '10:15:00', 3000.00, 0, 'S'),
('178345678', 'Laura', 'Fernández', 1.70, '1988-09-25', '11:30:00', 15000.00, 3, 'C'),
('178456789', 'Carlos', 'García', 1.78, '1995-12-05', '12:00:00', 2000.00, 2, 'U'),
('178567890', 'Elena', 'Martínez', 1.68, '1987-07-12', '08:00:00', 8000.00, 1, 'C'),
('178678901', 'David', 'López', 1.75, '1993-04-30', '09:30:00', 6000.00, 0, 'S'),
('178789012', 'Sara', 'Gómez', 1.63, '1997-10-20', '10:45:00', 4000.00, 2, 'C'),
('178890123', 'Francisco', 'González', 1.82, '1989-06-15', '11:15:00', 9000.00, 1, 'S'),
('178901234', 'Ana', 'Sánchez', 1.70, '1991-02-28', '12:30:00', 7000.00, 0, 'U');

insert into personas (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, estado_civil_codigo) 
values('178987654', 'Sean', 'O''Connor', 1.85, '1994-11-10', '08:30:00', 3000.00, 0, 'S');


--inserts de tabla nueva
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values
('178098342', 500.00, '2024-01-15', '10:30:00', 'Carlos García'),
('178123456', 750.00, '2024-01-20', '11:15:00', 'María Rodríguez'),
('178234567', 300.00, '2024-01-25', '09:45:00', 'Pedro Sánchez'),
('178345678', 1500.00, '2024-02-05', '08:00:00', 'Laura Fernández'),
('178456789', 200.00, '2024-02-10', '10:00:00', 'Juan Pérez'),
('178567890', 600.00, '2024-02-15', '12:30:00', 'Elena Martínez'),
('178678901', 900.00, '2024-02-20', '09:00:00', 'David López'),
('178789012', 1100.00, '2024-03-05', '11:30:00', 'Sara Gómez'),
('178890123', 250.00, '2024-03-10', '08:45:00', 'Francisco González'),
('178901234', 800.00, '2024-03-15', '10:15:00', 'Ana Sánchez');

--olvide el usuario sean
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values('178987654', 1200.00, '2024-04-01', '09:00:00', 'Laura Fernández');

