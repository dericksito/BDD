CREATE TABLE ciudad(
	id INT PRIMARY KEY,
	nombre VARCHAR(45) not null
)

CREATE TABLE municipio(
	id INT PRIMARY KEY,
	nombre VARCHAR(45),
	ciudad_id INT,
	FOREIGN KEY (ciudad_id) REFERENCES ciudad(id)
)

CREATE TABLE proyecto(
	id INT PRIMARY KEY,
	proyecto VARCHAR(50) NOT null,
	monto money NOT null,
	fecha_inicio date,
	fecha_entrega date
)

CREATE TABLE proyecto_municipio (
  municipio_id INT NOT NULL,
  proyecto_id INT NOT NULL,
  FOREIGN KEY (municipio_id) REFERENCES municipio(id),
  FOREIGN KEY (proyecto_id) REFERENCES proyecto(id),
  PRIMARY KEY (municipio_id, proyecto_id)
);

select * from proyecto_municipio;


