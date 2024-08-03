CREATE TABLE ciudades (
    ciudad_id INT PRIMARY KEY,
    nombre_ciudad VARCHAR(50)
);

CREATE TABLE tienda (
    tienda_id INT PRIMARY KEY,
    nombre_tienda VARCHAR(50),
    direccion_tienda VARCHAR(50),
    ciudad_id INT,
    codigo_postal VARCHAR(10),
    FOREIGN KEY (ciudad_id) REFERENCES ciudades(ciudad_id)
);


CREATE TABLE empleados (
    empleado_id INT PRIMARY KEY,
    nombre_empleado VARCHAR(50),
    apellido_empleado VARCHAR(50),
    email VARCHAR(50),
    tienda_id INT,
    FOREIGN KEY (tienda_id) REFERENCES tienda(tienda_id)
);

ALTER TABLE empleados
ADD COLUMN telefono VARCHAR(15);


CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY,
    nombre_cliente VARCHAR(50),
    apellido_cliente VARCHAR(50),
    email VARCHAR(50),
    telefono VARCHAR(15),
    direccion_cliente VARCHAR(100),
    ciudad_id INT,
    codigo_postal VARCHAR(10),
    tienda_id INT,
    FOREIGN KEY (tienda_id) REFERENCES tienda(tienda_id),
    FOREIGN KEY (ciudad_id) REFERENCES ciudades(ciudad_id)
);

ALTER TABLE clientes
DROP COLUMN tienda_id;


ALTER TABLE clientes
DROP COLUMN codigo_postal;

ALTER TABLE clientes
MODIFY COLUMN email VARCHAR(45);

ALTER TABLE clientes
ADD COLUMN pelicula_rentada INT;


CREATE TABLE genero (
    genero_id INT PRIMARY KEY,
    nombre_genero VARCHAR(50)
);

CREATE TABLE peliculas (
    pelicula_id INT PRIMARY KEY,
    titulo VARCHAR(50),
    fecha_lanzamiento YEAR,
    genero_id INT,
    duracion_renta INT,
    rating VARCHAR(10),
    FOREIGN KEY (genero_id) REFERENCES genero(genero_id)
);

CREATE TABLE renta (
    renta_id INT PRIMARY KEY,
    fecha_renta DATETIME,
    fecha_devolucion DATETIME,
    cliente_id INT,
    pelicula_id INT,
    empleado_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (pelicula_id) REFERENCES peliculas(pelicula_id),
    FOREIGN KEY (empleado_id) REFERENCES empleados(empleado_id)
);

RENAME TABLE renta TO alquileres;
 ALTER TABLE alquileres CHANGE renta_id alquiler_id INT;
 ALTER TABLE alquileres CHANGE fecha_renta fecha_alquiler DATETIME;
 
 
 
CREATE TABLE pagos (
    pago_id INT PRIMARY KEY,
    cliente_id INT,
    renta_id INT,
    monto DECIMAL(5,2),
    fecha_pago DATETIME,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (renta_id) REFERENCES renta(renta_id)
);


INSERT INTO ciudades (ciudad_id, nombre_ciudad) VALUES
(1, 'Buenos Aires'),
(2, 'Cordoba'),
(3, 'Rosario'),
(4, 'Mendoza'),
(5, 'La Plata'),
(6, 'San Miguel de Tucuman'),
(7, 'Salta'),
(8, 'Mar del Plata'),
(9, 'San Juan'),
(10, 'Posadas');



INSERT INTO tienda (tienda_id, nombre_tienda, direccion_tienda, ciudad_id, codigo_postal) VALUES
(1, 'Tiendas El Rastro', 'Av. Corrientes 1234', 1, '1042'),
(2, 'ElectroMundo', 'Calle Belgrano 456', 2, '5000'),
(3, 'Todo en Casa', 'Calle Santa Fe 789', 2, '2000'),
(4, 'La Casa del Video', 'Av. San Martín 321', 6, '5500'),
(5, 'Biblioteca del Hogar', 'Calle 7 654', 5, '1900'),
(6, 'El Rincón del Cine', 'Calle San Lorenzo 321', 6, '4000'),
(7, 'Mundo Digital', 'Av. Bicentenario 567', 7, '4400'),
(8, 'Ofertas y Más', 'Av. Colón 890', 8, '7600'),
(9, 'Todo en Video', 'Calle Libertador 543', 10, '5400'),
(10, 'Renta y Compra', 'Calle Alem 123', 10, '3300');

INSERT INTO empleados (empleado_id, nombre_empleado, apellido_empleado, email, tienda_id) VALUES
(1, 'Ana', 'Martínez', 'ana.martinez@ejemplo.com', 1),
(2, 'Luis', 'García', 'luis.garcia@ejemplo.com', 2),
(3, 'Sofía', 'Pérez', 'sofia.perez@ejemplo.com', 3),
(4, 'Carlos', 'Sánchez', 'carlos.sanchez@ejemplo.com', 4),
(5, 'Marta', 'Fernández', 'marta.fernandez@ejemplo.com', 5),
(6, 'Javier', 'Gómez', 'javier.gomez@ejemplo.com', 6),
(7, 'Laura', 'Ramírez', 'laura.ramirez@ejemplo.com', 7),
(8, 'Pedro', 'Torres', 'pedro.torres@ejemplo.com', 8),
(9, 'Isabel', 'Hernández', 'isabel.hernandez@ejemplo.com', 9),
(10, 'Miguel', 'Vázquez', 'miguel.vazquez@ejemplo.com', 10);


INSERT INTO clientes (cliente_id, nombre_cliente, apellido_cliente, email, telefono, direccion_cliente, ciudad_id, codigo_postal, tienda_id) VALUES
(1, 'Juan', 'Gómez', 'juan.gomez@ejemplo.com', '600123456', 'Caballito 50', 1, '1043', 1),
(2, 'Ana', 'Serrano', 'ana.serrano@ejemplo.com', '600234567', ' San Fernando 28', 2, '5001', 2),
(3, 'Pedro', 'Alonso', 'pedro.alonso@ejemplo.com', '600345678', 'Parque 12', 2, '2001', 5),
(4, 'Laura', 'Jiménez', 'laura.jimenez@ejemplo.com', '600456789', 'Av. Alem 7', 4, '5501', 4),
(5, 'Miguel', 'Cruz', 'miguel.cruz@ejemplo.com', '600567890', 'Constitución 14', 5, '1901', 5),
(6, 'María', 'Hidalgo', 'maria.hidalgo@ejemplo.com', '600678901', 'Mitre 22', 8, '4001', 6),
(7, 'José', 'Morales', 'jose.morales@ejemplo.com', '600789012', 'Moreno 35', 7, '4401', 2),
(8, 'Isabel', 'Ramírez', 'isabel.ramirez@ejemplo.com', '600890123', 'Av. Juan B. Justo 50', 8, '7601', 3),
(9, 'Luis', 'García', 'luis.garcia@ejemplo.com', '600901234', '9 de Julio 18', 9, '5401', 9),
(10, 'Carmen', 'Rivas', 'carmen.rivas@ejemplo.com', '600012345', 'San Martín 9', 10, '3301', 10);

INSERT INTO genero (genero_id, nombre_genero) VALUES
(1, 'Acción'),
(2, 'Comedia'),
(3, 'Drama'),
(4, 'Terror'),
(5, 'Ciencia Ficción'),
(6, 'Romántico'),
(7, 'Documental'),
(8, 'Aventura'),
(9, 'Musical'),
(10, 'Animación');

INSERT INTO peliculas (pelicula_id, titulo, fecha_lanzamiento, genero_id, duracion_renta, rating) VALUES
(1, 'Misión Imposible', 2023, 1, 5, 'PG-13'),
(2, 'La Gran Comedia', 2022, 2, 3, 'PG'),
(3, 'La Última Cena', 2021, 3, 7, 'R'),
(4, 'El Resplandor', 1980, 4, 5, 'R'),
(5, 'Viaje a las Estrellas', 2024, 5, 4, 'PG'),
(6, 'Amor en Tiempos de Guerra', 2022, 6, 6, 'PG-13'),
(7, 'En la Selva', 2023, 8, 5, 'PG'),
(8, 'Historia del Jazz', 2021, 7, 8, 'NR'),
(9, 'La Canción de la Vida', 2023, 9, 4, 'PG'),
(10, 'Un Mundo de Fantasía', 2024, 10, 3, 'G');

INSERT INTO renta (renta_id, fecha_renta, fecha_devolucion, cliente_id, pelicula_id, empleado_id) VALUES
(1, '2024-07-15 10:00:00', '2024-07-22 10:00:00', 1, 1, 1),
(2, '2024-07-15 11:00:00', '2024-07-23 11:00:00', 1, 2, 2),
(3, '2024-07-11 12:00:00', '2024-07-24 12:00:00', 3, 4, 3),
(4, '2024-07-18 13:00:00', '2024-07-25 13:00:00', 4, 4, 4),
(5, '2024-07-13 14:00:00', '2024-07-26 14:00:00', 4, 6, 5),
(6, '2024-07-20 15:00:00', '2024-07-26 15:00:00', 6, 6, 6),
(7, '2024-07-21 16:00:00', '2024-07-28 16:00:00', 4, 7, 7),
(8, '2024-07-22 17:00:00', '2024-07-29 17:00:00', 8, 1, 8),
(9, '2024-07-22 18:00:00', '2024-07-25 18:00:00', 9, 9, 9),
(10, '2024-07-18 19:00:00', '2024-07-31 19:00:00', 10, 9, 10);

INSERT INTO pagos (pago_id, cliente_id, renta_id, monto, fecha_pago) VALUES
(1, 1, 1, 25.00, '2024-07-15 10:30:00'),
(2, 1, 9, 15.00, '2024-07-16 11:30:00'),
(3, 3, 3, 20.00, '2024-07-16 12:30:00'),
(4, 4, 4, 30.00, '2024-07-18 13:30:00'),
(5, 2, 8, 18.00, '2024-07-19 14:30:00'),
(6, 6, 6, 22.00, '2024-07-22 15:30:00'),
(7, 7, 7, 25.00, '2024-07-21 16:30:00'),
(8, 3, 3, 17.00, '2024-07-22 17:30:00'),
(9, 9, 9, 21.00, '2024-07-23 18:30:00'),
(10, 10, 10, 19.00, '2024-07-24 19:30:00');



SELECT * FROM empleados;


SELECT * FROM alquileres;



CREATE VIEW compras_clientes AS
SELECT c.nombre_cliente, c.apellido_cliente, p.titulo FROM clientes c
JOIN alquileres a ON c.cliente_id = a.cliente_id
JOIN peliculas p ON a.pelicula_id = p.pelicula_id; 

SELECT * FROM compras_clientes;


select * from clientes c
join alquileres a on c.cliente_id = a.cliente_id
join ciudades ci on c.ciudad_id = ci.ciudad_id



