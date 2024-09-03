-- VISTAS
-- 1
CREATE VIEW compras_clientes AS
SELECT c.nombre_cliente, c.apellido_cliente, p.titulo FROM clientes c
JOIN alquileres a ON c.cliente_id = a.cliente_id
JOIN peliculas p ON a.pelicula_id = p.pelicula_id; 

SELECT * FROM compras_clientes;

-- 2
CREATE VIEW monto_alquiler AS
SELECT c.nombre_cliente, c.apellido_cliente, a.alquiler_id, a.monto FROM alquileres a
JOIN clientes c ON c.cliente_id = a.cliente_id;

SELECT * FROM monto_alquiler;

-- 3
CREATE VIEW sucursales AS
SELECT t.nombre_tienda, t.direccion_tienda, ci.nombre_ciudad FROM tiendas t
JOIN ciudades ci ON ci.ciudad_id = t.ciudad_id;

SELECT* FROM sucursales;

-- 4
CREATE VIEW pelicula_y_genero AS
SELECT p.titulo, g.nombre_genero FROM peliculas p
JOIN generos g ON g.genero_id = p.genero_id;

SELECT * FROM pelicula_y_genero;


-- 5
CREATE VIEW comision AS
SELECT a.fecha_alquiler, c.cliente_id, e.nombre_empleado, e.apellido_empleado, t.nombre_tienda, t.direccion_tienda FROM alquileres a
JOIN clientes c ON c.cliente_id = a.cliente_id
JOIN empleados e ON a.empleado_id = e.empleado_id
JOIN tiendas t ON a.tienda_id = t.tienda_id;


SELECT * FROM comision;
