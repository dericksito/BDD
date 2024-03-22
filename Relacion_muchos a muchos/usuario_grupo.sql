
CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    fecha_nacimiento DATE
);


CREATE TABLE grupo (
    id INT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    descripcion VARCHAR(75),
    fecha_creacion DATE
);


CREATE TABLE usuario_grupo (
    us_id INT NOT NULL,
    gr_id INT NOT NULL,
    PRIMARY KEY (us_id, gr_id),
    FOREIGN KEY (us_id) REFERENCES usuarios(id),
    FOREIGN KEY (gr_id) REFERENCES grupo(id)
);

select * from usuario_grupo;