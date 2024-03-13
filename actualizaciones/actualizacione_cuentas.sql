drop table cuentas
create table cuentas(
   numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
    constraint cuentas_pk primary key (numero_cuenta)
)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12341','08501','10/05/2000',100.54)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12342','08502','10/05/2001',200.54)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12343','08503','10/05/2003',300.54)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12344','08504','10/05/2004',400.54)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12345','08505','10/05/2005',500.54)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12346','08506','10/05/2006',600.54)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12347','08507','10/05/2007',700.54)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12348','08508','10/05/2008',800.54)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12349','08509','10/05/2009',900.54)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12410','08510','07/02/2024',1000.54)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12810','08511','06/02/2024',1000.54)


select numero_cuenta,saldo from cuentas
select * from cuentas where fecha_creacion between '07/01/2024' and '07/03/2024'
select numero_cuenta,saldo from cuentas where fecha_creacion between '07/01/2024' and '07/03/2024'

update cuentas set saldo=10
where cedula_propietario like '17%'