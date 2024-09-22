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

-- 2
DELIMITER $$
CREATE TRIGGER actualizar_num_empleados
AFTER INSERT ON empleados
FOR EACH ROW
BEGIN
UPDATE tiendas
SET num_empleados = num_empleados + 1
WHERE tienda_id = NEW.tienda_id;
END$$
DELIMITER ;