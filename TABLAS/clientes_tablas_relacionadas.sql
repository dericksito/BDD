select * from clientes

create table compras(
    id_compra int ,
	cedula_cliente char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2) not null,
	constraint compras_pk primary key(id_compra)	
)

--para que sea unico el atributo cedula en la nueva tabla
ALTER TABLE compras
ADD CONSTRAINT compras_cedula_unique UNIQUE (cedula);


alter table clientes
add constraint clientes_compras_fk 
foreign key (cedula)

references compras(cedula)


--inserts de la tabla principal
insert into clientes (cedula,nombre,apellido)
values('1750983420','Monica','Tenorio');
insert into clientes (cedula,nombre,apellido)
values('1750983421','Derick','Tenorio');
insert into clientes (cedula,nombre,apellido)
values('1750983422','Karime','Velazco');
insert into clientes (cedula,nombre,apellido)
values('1750983424','Maria','Marquez');
insert into clientes (cedula,nombre,apellido)
values('0850983424','Ademir','Ortiz');
insert into clientes (cedula,nombre,apellido)
values('0850673424','Vicente','Lopez');
insert into clientes (cedula,nombre,apellido)
values('0898673424','Nadine','Lopez');
insert into clientes (cedula,nombre,apellido)
values('0898675424','Jorge','Ibarra');
insert into clientes (cedula,nombre,apellido)
values('0898675924','Adriano','Lopez');
insert into clientes (cedula,nombre,apellido)
values('0898675929','Jose','Panezo');
--insert de la nueva tabbla
insert into compras(id_compra,cedula,fecha_compra,monto)
values(1234,'1750983420','20/03/2024',15.5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(1233,'1750983421','25/03/2023',40.5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(1236,'1750983424','25/03/2023',66.5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(1237,'0850983424','25/03/2023',56.5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(1238,'0850673424','22/03/2024',86.5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(1239,'0898673424','17/05/2024',96.5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(1210,'0898675424','17/05/2024',96.5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(1211,'0898675924','24/08/2024',96.5);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(1212,'0898675929','24/08/2024',36.5);
