
drop table productos
create table productos(
     codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
	
)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(1,'papas','picantes',20.56,10)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(2,'queso','salado',30.45,5)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(3,'chupetes','plop rojos',10.32,20)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(4,'gaseosa','coca-cola',40.67,70)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(5,'tarjetas','recargas free fire',5.89,30)

insert into productos(codigo,nombre,precio,stock)
values(6,'agua',6.57,7)

insert into productos(codigo,nombre,precio,stock)
values(7,'cuaderno',4.55,8)

insert into productos(codigo,nombre,precio,stock)
values(8,'esferos',3.98,50)


select * from productos where nombre like 'Q%'
select * from productos where descripcion is null
select * from productos where precio between money(2) and money(3)


update productos set stock=0
where descripcion is null

delete from productos
where descripcion is null
