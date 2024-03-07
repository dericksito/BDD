 drop table videojuegos
 create table videojuegos(
    codigo int  not null,
	nombre varchar (100) not null,
	descripcion varchar (300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
	
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(1,'FREE FIRE','batle royale de armas',5)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(2,'pug mobile','batle royale de armas',4)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(3,'letal company','supervivencia',4)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(4,'Fornite','batle royale de armas',5)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(5,'FIFA','deportes',5)

insert into videojuegos(codigo,nombre,valoracion)
values(6,'EFOTBALL',3)

insert into videojuegos(codigo,nombre,valoracion)
values(7,'fall guys',4)

insert into videojuegos(codigo,nombre,valoracion)
values(8,'stumbles guys',2)
