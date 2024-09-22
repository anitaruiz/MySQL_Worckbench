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

-- 6

CREATE VIEW peliculas_mas_alquiladas AS
SELECT p.titulo, COUNT(a.alquiler_id) AS veces_alquilada
FROM peliculas p
JOIN alquileres a ON p.pelicula_id = a.pelicula_id
GROUP BY p.titulo
ORDER BY veces_alquilada DESC;

SELECT * FROM peliculas_mas_alquiladas;

-- 5

CREATE VIEW clientes_con_membresias AS
SELECT c.nombre_cliente, c.apellido_cliente, m.nombre_membresia, m.costo, m.duracion_meses
FROM clientes c
JOIN membresias m ON c.membresia_id = m.membresia_id;

SELECT * FROM clientes_con_membresias;


CREATE VIEW proveedores_de_peliculas AS
SELECT p.titulo, pr.nombre_proveedor, pr.telefono, pr.email
FROM peliculas p
JOIN proveedores pr ON p.proveedor_id = pr.proveedor_id;

SELECT * FROM proveedores_de_peliculas;


CREATE VIEW descuentos_en_alquileres AS
SELECT c.nombre_cliente, c.apellido_cliente, p.titulo, d.nombre_descuento, d.porcentaje_descuento
FROM clientes c
JOIN alquileres a ON c.cliente_id = a.cliente_id
JOIN peliculas p ON a.pelicula_id = p.pelicula_id
JOIN descuentos d ON a.descuento_id = d.descuento_id;

SELECT * FROM descuentos_en_alquileres;

-- 7

CREATE VIEW empleados_por_tienda AS
SELECT t.nombre_tienda, e.nombre_empleado, e.apellido_empleado, e.telefono
FROM tiendas t
JOIN empleados e ON t.tienda_id = e.tienda_id;

SELECT * FROM empleados_por_tienda;


