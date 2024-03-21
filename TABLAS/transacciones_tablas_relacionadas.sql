select * from transacciones 
delete from transacciones 

create table banco (
codigo_banco int ,
	codigo_transaccion int,
	detalle varchar(100),
	
	constraint banco_pk primary key (codigo_banco)
)

ALTER TABLE banco
ADD CONSTRAINT banco_codigo_transaccion_unique UNIQUE (codigo_transaccion);


alter table transacciones
add constraint transacciones_banco_fk
foreign key (codigo)

references banco(codigo_transaccion)


--inserts de la tabla principal 
insert into  transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values
(1, 22001, 500.00, 'C', '2024-04-05', '10:30:00'),
(2, 22002, 750.00, 'C', '2024-04-10', '11:15:00'),
(3, 22003, 300.00, 'C', '2024-04-15', '09:45:00'),
(4, 22004, 1500.00, 'D', '2024-04-20', '08:00:00'),
(5, 22005, 200.00, 'D', '2024-04-25', '10:00:00'),
(6, 22006, 600.00, 'D', '2024-04-30', '12:30:00'),
(7, 22007, 900.00, 'D', '2024-05-05', '11:30:00'),
(8, 22008, 1100.00, 'D', '2024-05-10', '09:00:00'),
(9, 22009, 250.00, 'D', '2024-05-15', '08:45:00'),
(10, 22010, 800.00, 'D', '2024-05-20', '10:15:00');

--inserts de la tabla nueva 
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values
(11, 1, 'Transferencia recibida de cuenta 22001'),
(12, 2, 'Transferencia recibida de cuenta 22002'),
(13, 3, 'Transferencia recibida de cuenta 22003'),
(14, 4, 'Pago realizado a cuenta 22004'),
(15, 5, 'Pago realizado a cuenta 22005'),
(16, 6, 'Pago realizado a cuenta 22006'),
(17, 7, 'Transferencia recibida de cuenta 22007'),
(18, 8, 'Transferencia recibida de cuenta 22008'),
(19, 9, 'Pago realizado a cuenta 22009'),
(20, 10, 'Pago realizado a cuenta 22010');
