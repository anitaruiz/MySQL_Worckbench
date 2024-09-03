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









