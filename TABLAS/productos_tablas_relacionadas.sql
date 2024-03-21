select * from productos 
delete from productos
create table ventas(
id_venta int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	 constraint ventas_pk primary key (id_venta)
)

ALTER TABLE ventas
ADD CONSTRAINT ventas_codigo_producto_unique UNIQUE (codigo_producto);


alter table productos 
add constraint productos_ventas_fk 
foreign key (codigo)

references ventas(codigo_producto)

--inserts tabla principal
insert into productos(codigo,nombre,precio,stock)
values(1234,'salmon',17.5,10);
insert into productos(codigo,nombre,precio,stock)
values(1235,'salmon',17.5,10);--tiene otra fecha:3
insert into productos(codigo,nombre,descripcion,precio,stock)
values(1236,'mostaza','Moztaza royale',4.5,20);
insert into productos(codigo,nombre,descripcion,precio,stock)
values(1237,'mayonesa','mayonesa royale',3.5,50);
insert into productos(codigo,nombre,descripcion,precio,stock)
values(1238,'papas','papas royale',3.5,70);
insert into productos(codigo,nombre,descripcion,precio,stock)
values(1239,'paletas','paletas tuffo',6.5,30);
insert into productos(codigo,nombre,descripcion,precio,stock)
values(1231,'Sanduche','Sanduche mixto',5.5,40);
insert into productos(codigo,nombre,descripcion,precio,stock)
values(1232,'Carne','carne de vaca',11.5,50);
insert into productos(codigo,nombre,descripcion,precio,stock)
values(1233,'Costillas','Costillas de cerdo',23.5,10);
insert into productos(codigo,nombre,descripcion,precio,stock)
values(1222,'Takis','takis picantes',2.5,80);



--inserts tabla ventas
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1234,1234,'20/03/2024',5)
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1235,1235,'22/04/2023',10)
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1236,1236,'22/04/2023',2)
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1237,1237,'25/05/2023',6)
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1238,1238,'25/05/2024',7)
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1239,1239,'25/08/2023',9)
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1231,1231,'23/04/2022',9)
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1232,1232,'22/06/2023',10)
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1233,1233,'22/05/2022',9)
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1222,1222,'26/04/2023',4)