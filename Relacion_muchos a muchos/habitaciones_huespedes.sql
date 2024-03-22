
CREATE TABLE habitaciones (
    habitacion_numero INT PRIMARY KEY,
    precio_por_noche decimal(10,2) NOT NULL,
    piso int NOT NULL,
    max_personas int
);


CREATE TABLE huespedes (
    id INT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    apellidos VARCHAR(45) NOT NULL,
    telefono char(10),
    correo VARCHAR(45),
    direccion VARCHAR(45),
    ciudad VARCHAR(45),
    pais VARCHAR(45)
);


CREATE TABLE reservas (
    inicio_fecha date,
    fin_fecha date,
    habitacion_numero  int not null,
    huesped_id INT NOT NULL,
	PRIMARY KEY (habitacion_numero , huesped_id),
    FOREIGN KEY (habitacion_numero) REFERENCES habitaciones(habitacion_numero),
    FOREIGN KEY (huesped_id) REFERENCES huespedes(id)
);
  
select * from reservas;