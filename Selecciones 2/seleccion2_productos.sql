
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

insert into productos(codigo,nombre,descripcion,precio,stock) 
values (9,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (10,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (11,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (12,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (13,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (14,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (15,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (16,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (17,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (18,'Coca Cola',3.50,300);


select * from productos where nombre like 'Q%'
select * from productos where descripcion is null
select * from productos where precio between money(2) and money(3)


update productos set stock=0
where descripcion is null

delete from productos
where descripcion is null


--reto 7

select * from productos
where stock = 10 and precio < money(10)

select nombre,stock from productos
where nombre like '%m%' or descripcion like '% %'

select nombre from productos
where descripcion is null or stock=0

