CREATE TABLE ciudades (
    ciudad_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_ciudad VARCHAR(50)
);

ALTER TABLE ciudades
ADD UNIQUE INDEX ciudad_id_UNIQUE (ciudad_id);

CREATE TABLE tiendas (
    tienda_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_tienda VARCHAR(50),
    direccion_tienda VARCHAR(50),
    ciudad_id INT,
    codigo_postal VARCHAR(10),
    FOREIGN KEY (ciudad_id) REFERENCES ciudades(ciudad_id)
);

ALTER TABLE tiendas
ADD UNIQUE INDEX tienda_id_UNIQUE (tienda_id);

ALTER TABLE tiendas
DROP COLUMN codigo_postal;
select* from tiendas;

CREATE TABLE empleados (
    empleado_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_empleado VARCHAR(50),
    apellido_empleado VARCHAR(50),
    email VARCHAR(50),
    tienda_id INT,
    FOREIGN KEY (tienda_id) REFERENCES tiendas(tienda_id)
);

ALTER TABLE empleados
ADD COLUMN telefono VARCHAR(15);

ALTER TABLE empleados
CHANGE COLUMN nombre_empleado nombre_empleado VARCHAR (50) NOT NULL;


ALTER TABLE empleados
CHANGE COLUMN apellido_empleado apellido_empleado VARCHAR (50) NOT NULL;
select* from empleados;

ALTER TABLE empleados
ADD UNIQUE INDEX empleado_id_UNIQUE (empleado_id);

ALTER TABLE tiendas ADD COLUMN num_empleados INT DEFAULT 0;


CREATE TABLE clientes (
    cliente_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR(50),
    apellido_cliente VARCHAR(50),
    email VARCHAR(50),
    telefono VARCHAR(15),
    direccion_cliente VARCHAR(100),
    ciudad_id INT,
    FOREIGN KEY (ciudad_id) REFERENCES ciudades(ciudad_id)
);

ALTER TABLE clientes
MODIFY COLUMN email VARCHAR(45);
ALTER TABLE clientes
ADD UNIQUE INDEX cliente_id_UNIQUE (cliente_id);

CREATE TABLE generos (
    genero_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_genero VARCHAR(50)
);


CREATE TABLE peliculas (
    pelicula_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    fecha_lanzamiento YEAR,
    genero_id INT NOT NULL,
    FOREIGN KEY (genero_id) REFERENCES generos(genero_id)
);
SELECT * FROM peliculas;


CREATE TABLE alquileres (
    alquiler_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha_alquiler DATETIME,
    fecha_devolucion DATETIME,
    cliente_id INT,
    pelicula_id INT,
    empleado_id INT,
    tienda_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (pelicula_id) REFERENCES peliculas(pelicula_id),
    FOREIGN KEY (empleado_id) REFERENCES empleados(empleado_id),
    FOREIGN KEY (tienda_id) REFERENCES tiendas(tienda_id)
);

ALTER table alquileres
ADD COLUMN monto DECIMAL(10,2);

alter table alquileres
drop column monto;

alter table alquileres
drop column monto;

SELECT * FROM alquileres;

INSERT INTO ciudades ( nombre_ciudad) VALUES
('Buenos Aires'),
('Cordoba'),
('Rosario'),
('Mendoza'),
('La Plata'),
('San Miguel de Tucuman'),
('Salta'),
('Mar del Plata'),
('San Juan'),
('Posadas');

SELECT * FROM ciudades;


INSERT INTO tiendas (nombre_tienda, direccion_tienda, ciudad_id) VALUES
('Tiendas El Rastro', 'Av. Corrientes 1234', 1),
('ElectroMundo', 'Calle Belgrano 456', 2),
('Todo en Casa', 'Calle Santa Fe 789', 2),
('La Casa del Video', 'Av. San Martín 321', 6),
('Biblioteca del Hogar', 'Calle 7 654', 5),
('El Rincón del Cine', 'Calle San Lorenzo 321', 6),
('Mundo Digital', 'Av. Bicentenario 567', 7),
('Ofertas y Más', 'Av. Colón 890', 8),
('Todo en Video', 'Calle Libertador 543', 10),
('Renta y Compra', 'Calle Alem 123', 10);



INSERT INTO generos (nombre_genero) VALUES
('Acción'),
('Comedia'),
('Drama'),
('Terror'),
('Ciencia Ficción'),
('Romántico'),
('Documental'),
('Aventura'),
('Musical'),
('Animación');


SELECT * FROM empleados;


SELECT * FROM alquileres;







