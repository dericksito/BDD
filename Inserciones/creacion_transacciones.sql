drop table transacciones
create table transacciones(
    codigo int not null,
	numero_cuenta char (5) not null,
	monto money not null,
	tipo char (1) not null,
    fecha date not null,
	hora time,
	constraint transacciones_pk primary key (codigo)
	
)

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(1,'12341',100.21,'C','01/02/2024','06:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(2,'12342',200.21,'D','02/02/2024','07:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(3,'12343',300.21,'C','03/02/2024','08:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(4,'12344',400.21,'D','04/02/2024','09:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(5,'12345',500.21,'C','05/02/2024','10:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(6,'12346',600.21,'C','06/02/2024','11:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(7,'12347',700.21,'D','07/02/2024','12:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(8,'12348',800.21,'D','08/02/2024','13:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(9,'12349',900.21,'C','09/02/2024','14:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(10,'12310',1000.21,'D','10/02/2024','15:00')

