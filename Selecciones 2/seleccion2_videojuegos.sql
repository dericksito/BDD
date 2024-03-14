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
values(9,'Plato','Juegos de mesa',20)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(5,'FIFA','deportes',5)

insert into videojuegos(codigo,nombre,valoracion)
values(6,'EFOTBALL',3)

insert into videojuegos(codigo,nombre,valoracion)
values(7,'fall guys',4)

insert into videojuegos(codigo,nombre,valoracion)
values(8,'stumbles guys',2)

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire 2', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite 2', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);



select * from videojuegos where nombre like 'C%'
select * from videojuegos where valoracion between 9 and 10
select * from videojuegos where descripcion is null


update videojuegos set descripcion='Mejor Puntuado'
where valoracion > 9

delete from videojuegos 
where valoracion < 7

--reto 7 

select * from videojuegos 
where nombre like '%C%' or valoracion = 7

select * from videojuegos 
where (codigo between 3 and 7) or valoracion = 7

select * from videojuegos 
where (descripcion like '%terror%' and valoracion > 7 and nombre like 'C%')
or 
(valoracion > 8 and nombre like 'D%')

