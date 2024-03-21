select * from videojuegos 
delete from videojuegos

create table plataformas (
id_plataforma int,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int ,
	constraint plataformas_pk primary key (id_plataforma)
)

ALTER TABLE plataformas
ADD CONSTRAINT plataformas_codigo_videojuego_unique UNIQUE (codigo_videojuego);

alter table videojuegos
add constraint videojuegos_plataformas_fk
foreign key (codigo)

references plataformas (codigo_videojuego)


--inserts tabla principal
insert into videojuegos (codigo, nombre,descripcion,valoracion) 
values
(1, 'God of war','Guerra',10),
(2, 'Call of duty','Guerra',8),
(3, 'Doom','Guerra',7),
(4, 'Delta wofl','Guerra',10),
(5, 'Conter Strike ','Guerra',10),
(6, 'Mario Kart 8 Deluxe','Carreras',10),
(7, 'Super Smash Bros. Ultimate','Entretenimiento',8),
(8, 'Fire Emblem: Three Houses','Guerra',7),
(9, 'Luigi''s Mansion 3','Entretenimiento',10),
(10, 'Xenoblade Chronicles 2','Aventura',9);


--inserts nueva tabla
insert into plataformas (id_plataforma,nombre_plataforma, codigo_videojuego) 
values
(1,'Nintendo Switch', 1),
(2,'Nintendo Switch', 2),
(3,'Steam', 3),
(4,'Nintendo Switch', 4),
(5,'PlayStation 4', 5),
(6,'Xbox One', 6),
(7,'Steam', 7),
(8,'Nintendo Switch', 8),
(9,'PlayStation 4', 9),
(10,'Steam', 10);




