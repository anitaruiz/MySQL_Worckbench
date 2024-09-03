-- SP

-- 1

DELIMITER $$

CREATE PROCEDURE valor_pelicula (IN genero_id INTEGER, OUT valor FLOAT)
BEGIN 
    IF genero_id = 1 THEN
        SET valor = 1200;
    ELSEIF genero_id = 2 THEN 
        SET valor = 2300;
    ELSEIF genero_id = 3 THEN
        SET valor = 2040.50;
    ELSEIF genero_id = 4 THEN
        SET valor = 3890.50;
    ELSEIF genero_id = 5 THEN
        SET valor = 1790;
    ELSEIF genero_id = 6 THEN
        SET valor = 2894;
    ELSEIF genero_id = 7 THEN
        SET valor = 3000;
    ELSEIF genero_id = 8 THEN
        SET valor = 1020;
    ELSEIF genero_id = 9 THEN 
        SET valor = 1500;
    ELSEIF genero_id = 10 THEN
        SET valor = 4050.50;
    ELSE
        SET valor = 0;
    END IF;
END $$

DELIMITER ;

-- 2 
DELIMITER $$
CREATE PROCEDURE detalle_alquileres_cliente(IN cliente INT)
BEGIN
SELECT 
c.nombre_cliente AS nombre_cliente,
c.apellido_cliente AS apellido_cliente,
p.titulo AS nombre_pelicula,
t.nombre_tienda AS nombre_tienda,
COUNT(*) AS cantidad_alquileres
FROM alquileres a
JOIN peliculas p ON a.pelicula_id = p.pelicula_id
JOIN tiendas t ON a.tienda_id = t.tienda_id
JOIN clientes c ON c.cliente_id = a.cliente_id
WHERE a.cliente_id = cliente
GROUP BY c.nombre_cliente, c.apellido_cliente, p.titulo, t.nombre_tienda;
END$$



CALL detalle_alquileres_cliente(35);


DELIMITER $$
CREATE PROCEDURE detalles_pelicula_alquilada (IN pelicula INT)
BEGIN
DECLARE nombre VARCHAR(50);
DECLARE cantidad INT;
SELECT titulo INTO nombre
FROM peliculas
WHERE pelicula_id = pelicula;
SELECT COUNT(*) INTO cantidad
FROM alquileres
WHERE pelicula_id = pelicula;
SELECT nombre AS nombre_pelicula, cantidad AS cantidad_alquileres;
END$$

CALL detalles_pelicula_alquilada(322);
