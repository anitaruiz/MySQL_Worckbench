-- Funciones

-- 1

  DELIMITER $$
 CREATE FUNCTION cantidad_de_alquileres (cliente INT)
 RETURNS INT
DETERMINISTIC
 BEGIN
 DECLARE  cantidad INT;
 SELECT COUNT(*) INTO cantidad
 FROM alquileres
 WHERE cliente_id = cliente;
 RETURN cantidad; 
 end
 $$
 
 SELECT cantidad_de_alquileres(1) AS cantidad_alquilada;
 
SELECT cantidad_de_alquileres(2) AS cantidad_alquilada;

-- 2

DELIMITER $$
CREATE FUNCTION cantidad_pelicula_alquilada (pelicula INT)
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE cantidad INT;
SELECT COUNT(*) INTO cantidad
FROM alquileres
WHERE pelicula_id = pelicula;
return cantidad;
end
$$

SELECT cantidad_pelicula_alquilada (1) AS pelicula_alquilada;


-- 3
 DELIMITER $$
 
CREATE FUNCTION total_gastado_por_cliente (cliente INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
DECLARE total DECIMAL(10, 2);
SELECT IFNULL(SUM(p.monto), 0) INTO total
FROM pagos p
JOIN alquileres a ON p.alquiler_id = a.alquiler_id
WHERE a.cliente_id = cliente;
RETURN total;
END;
$$








