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

CREATE TABLE formatos (
    formato_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_formato VARCHAR(50)
);

INSERT INTO formatos (nombre_formato) VALUES
('DVD'),
('Blu-ray'),
('4K UHD'),
('Digital HD'),
('Digital SD'),
('VHS'),
('LaserDisc'),
('Betamax'),
('3D Blu-ray'),
('Streaming');


ALTER TABLE peliculas
ADD COLUMN formato_id INT,
ADD FOREIGN KEY (formato_id) REFERENCES formatos(formato_id);


CREATE TABLE inventarios (
    inventario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pelicula_id INT,
    tienda_id INT,
    cantidad INT,
    FOREIGN KEY (pelicula_id) REFERENCES peliculas(pelicula_id),
    FOREIGN KEY (tienda_id) REFERENCES tiendas(tienda_id)
);
INSERT INTO inventarios (pelicula_id, tienda_id, cantidad) VALUES
(1, 1, 15),
(2, 2, 10),
(3, 3, 8),
(4, 4, 12),
(5, 1, 20),
(6, 5, 9),
(7, 3, 5),
(8, 2, 7),
(9, 4, 13),
(10, 5, 6);


CREATE TABLE metodos_pago (
    metodo_pago_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_metodo_pago VARCHAR(50)
);



INSERT INTO metodos_pago (nombre_metodo_pago) VALUES
('Tarjeta de crédito'),
('Tarjeta de débito'),
('Efectivo'),
('Transferencia bancaria'),
('PayPal'),
('Crédito en tienda');




CREATE TABLE pagos (
    pago_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    alquiler_id INT,
    metodo_pago_id INT,
    monto DECIMAL(10,2),
    fecha_pago DATETIME,
    FOREIGN KEY (alquiler_id) REFERENCES alquileres(alquiler_id),
    FOREIGN KEY (metodo_pago_id) REFERENCES metodos_pago(metodo_pago_id)
);

INSERT INTO pagos (alquiler_id, metodo_pago_id, monto, fecha_pago) VALUES
(1, 1, 29.99, '2024-05-01 14:30:00'),
(2, 2, 19.99, '2024-08-02 15:00:00'),
(3, 3, 15.50, '2024-01-05 16:45:00'),
(4, 4, 9.99, '2024-02-12 10:30:00'),
(5, 5, 24.99, '2024-04-05 18:20:00'),
(11, 6, 49.99, '2024-12-05 11:00:00'),
(7, 7, 39.99, '2024-05-07 12:15:00'),
(8, 8, 12.99, '2024-11-11 14:45:00'),
(9, 9, 27.50, '2024-10-09 17:30:00'),
(10, 10, 5.99, '2024-09-11 09:00:00');

select * from pagos;

SELECT * FROM alquileres;
SELECT * FROM metodos_pago;


CREATE TABLE descuentos (
    descuento_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_descuento VARCHAR(50),
    porcentaje_descuento DECIMAL(5,2)
);
INSERT INTO descuentos (nombre_descuento, porcentaje_descuento) VALUES
('Descuento de Navidad', 15),
('Descuento para Estudiantes', 20),
('Descuento Familiar', 5),
('Descuento Corporativo',10),
('Promoción Aniversario',50),
('Cliente VIP', 18),
('Primera Compra', 10),
('Recomendación de Amigo', 8);

ALTER TABLE alquileres
ADD COLUMN descuento_id INT,
ADD FOREIGN KEY (descuento_id) REFERENCES descuentos(descuento_id);

CREATE TABLE proveedores (
    proveedor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_proveedor VARCHAR(100),
    telefono VARCHAR(15),
    email VARCHAR(50),
    direccion_proveedor VARCHAR(100)
);

INSERT INTO proveedores (nombre_proveedor, telefono, email, direccion_proveedor) VALUES
('Distribuidora CineMax', '555-1234', 'contacto@cinemax.com', 'Av. Siempre Viva 742'),
('Films Internacionales', '555-5678', 'ventas@filmsint.com', 'Calle Falsa 123'),
('Cine Global', '555-8765', 'soporte@cineglobal.com', 'Av. Libertador 2020'),
('Películas Plus', '555-4321', 'contact@peliculasplus.com', 'Paseo de la Reforma 345'),
('Video & Movies', '555-6789', 'info@videomovies.com', 'Calle Corrientes 555'),
('CineMaster', '555-9876', 'cine@cinemaster.com', 'Av. San Martín 222'),
('FilmDistribución', '555-6543', 'distribucion@filmdis.com', 'Calle Perú 888'),
('BlockBuster Proveedor', '555-7412', 'contacto@blockbuster.com', 'Calle Mayor 999');



ALTER TABLE peliculas
ADD COLUMN proveedor_id INT,
ADD FOREIGN KEY (proveedor_id) REFERENCES proveedores(proveedor_id);

CREATE TABLE membresias (
    membresia_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_membresia VARCHAR(50),
    costo DECIMAL(10,2),
    duracion_meses INT,
    beneficios TEXT 
);

INSERT INTO membresias (nombre_membresia, costo, duracion_meses, beneficios) VALUES
('Básica', 9.99, 1, 'Acceso a catálogo limitado'),
('Premium', 19.99, 1, 'Acceso completo al catálogo'),
('Familiar', 29.99, 3, 'Acceso para 4 miembros de familia'),
('Anual Básica', 99.99, 12, 'Acceso a catálogo limitado durante un año'),
('Anual Premium', 199.99, 12, 'Acceso completo durante un año'),
('Estudiante', 7.99, 1, 'Descuento para estudiantes'),
('VIP', 49.99, 6, 'Acceso prioritario a estrenos'),
('Test', 0.99, 1, 'Membresía de prueba');



ALTER TABLE clientes
ADD COLUMN membresia_id INT,
ADD FOREIGN KEY (membresia_id) REFERENCES membresias(membresia_id);


CREATE TABLE recomendaciones (
    recomendacion_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    pelicula_id INT,
    fecha_recomendacion DATE,
    motivo_recomendacion VARCHAR(255),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (pelicula_id) REFERENCES peliculas(pelicula_id)
);



INSERT INTO recomendaciones (cliente_id, pelicula_id, fecha_recomendacion, motivo_recomendacion) VALUES
(11, 3, '2024-01-01', 'Basado en tus alquileres anteriores'),
(29, 4, '2024-01-05', 'Película popular entre clientes similares'),
(71, 5, '2024-01-10', 'Nueva película en nuestra tienda'),
(4, 2, '2024-01-15', 'Película recomendada por empleados'),
(63, 1, '2024-01-20', 'Estreno reciente en formato Blu-ray'),
(45, 6, '2024-01-25', 'Película favorita de otros usuarios VIP'),
(76, 7, '2024-01-30', 'Recomendación personalizada por tus gustos'),
(12, 8, '2024-02-01', 'Ganadora de premios importantes'),
(94, 9, '2024-02-05', 'Tendencia actual en la industria del cine'),
(10, 10, '2024-02-10', 'Clásico que debes ver');

