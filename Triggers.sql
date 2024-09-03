-- TRIGGERS

-- 1
DELIMITER $$
CREATE TRIGGER calcular_monto_pelicula
BEFORE INSERT ON alquileres
FOR EACH ROW
BEGIN
DECLARE monto FLOAT;
CALL valor_pelicula(NEW.pelicula_id, monto);
SET NEW.monto = monto;
END $$


SELECT * from alquileres;