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

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'15/01/2030',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'01/11/2028',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17501,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'30/05/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'15/09/2023',1500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'15/10/2024',2500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'15/08/2025',3500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17503,'15/06/2017',4500);

select numero_cuenta,saldo from cuentas
select * from cuentas where fecha_creacion between '07/01/2024' and '07/03/2024'
select numero_cuenta,saldo from cuentas where fecha_creacion between '07/01/2024' and '07/03/2024'

update cuentas set saldo=10
where cedula_propietario like '17%'

delete from cuentas
where cedula_propietario like '10%'

--reto 7
select numero_cuenta, saldo from cuentas
where saldo between money(101) and money(999)

select * from cuentas
where fecha_creacion between '13/03/2023' and '13/03/2024'

select * from cuentas
where saldo=money(0) or cedula_propietario like '%2'

