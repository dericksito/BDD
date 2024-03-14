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

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(11,'12311',200.21,'D','10/09/2024','16:00')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');

insert into transacciones(codigo, numero_cuenta, monto, tipo,fecha, hora)
values(23210, '32015', 400, 'C' ,'14/03/2024','13:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54145, '85215', 22008, 'D', '25/05/2024', '7:30');


select * from transacciones where tipo = 'D'
select * from transacciones where monto between money(200) and money(2000)
select codigo,monto,tipo,fecha from transacciones where fecha is not null


update transacciones set tipo='T'
where monto between money(101) and money(499)
and fecha between '01/09/2024' and '30/09/2024'
and hora between '14:00' and '20:00'


delete from transacciones
where hora between '14:00' and '18:00'
and fecha between '01/08/2024' and '30/08/2024'

--reto 7 

select * from transacciones
where tipo='C' and numero_cuenta between '222001' and '222004'

select * from transacciones
where tipo='D'and fecha = '25/05/2024'  and numero_cuenta between '22007' and '22010'

select * from transacciones 
where codigo between 1 and 5
and (numero_cuenta = '22002' or numero_cuenta = '22004')
and fecha between '26/05/2024' and '29/05/2024'