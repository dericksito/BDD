select * from cuentas
delete from cuentas
create table usuario(
cedula char(5),
nombre varchar(25) not null,
apellido varchar(25) not null,
tipo_cuenta varchar(20),
limite_credito decimal(10,5),
	constraint usuario_pk primary key(cedula)	
				   
)

alter table cuentas
add constraint cuentas_usuario_fk 
foreign key (cedula_propietario)

references usuario(cedula)


insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12345','08509','22/08/2022',200);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12346','08509','22/08/2023',600);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12347','08508','27/08/2022',400);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12348','08508','27/08/2023',900);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12349','08507','28/08/2022',600);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('14346','08507','28/08/2023',500);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('14446','08506','23/08/2022',500);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('14746','08506','23/08/2023',600);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('14345','08505','24/08/2023',300);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('14348','08505','24/08/2023',700);

--nueva tabla 
select * from usuario
insert into usuario(cedula,nombre,apellido)
values('08509','Derick','Tenorio');
insert into usuario(cedula,nombre,apellido)
values('08508','Julian','Alvarez');
insert into usuario(cedula,nombre,apellido)
values('08507','Jose','Valencia');
insert into usuario(cedula,nombre,apellido)
values('08506','Andre','Reyes');
insert into usuario(cedula,nombre,apellido)
values('08505','Mia','Lara');
