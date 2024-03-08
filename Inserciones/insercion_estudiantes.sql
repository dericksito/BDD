drop table estudiantes
create table estudiantes(
    cedula char (10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	email varchar (50) not null,
    fecha_nacimiento date not null,
	constraint estudiantes_pk primary key (cedula)
	
)

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0850983421','Derick','Tenorio','dericktenorio@gmail.com','01/01/2001')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0850983422','Jose','Valencia','josevalencia@gmail.com','02/02/2002')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0850983423','Geral','Ibarra','geralibarra@gmail.com','03/03/2003')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0850983424','Vanessa','Ortiz','vanessaortiz@gmail.com','04/04/2004')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0850983425','Maria','Tenorio','mariatenorio@gmail.com','05/05/2005')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0850983426','Jarel','Panezo','jarelpanezo@gmail.com','06/06/2006')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0850983427','Nadine','Cedeno','nadinecedeno@gmail.com','07/07/2007')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('085098348','Oswaldo','Tenorio','oswaldotenorio@gmail.com','08/08/2008')
