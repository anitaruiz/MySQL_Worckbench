-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: block_buster
-- ------------------------------------------------------
-- Server version	8.0.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `descuentos_en_alquileres`
--

DROP TABLE IF EXISTS `descuentos_en_alquileres`;
/*!50001 DROP VIEW IF EXISTS `descuentos_en_alquileres`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `descuentos_en_alquileres` AS SELECT 
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `titulo`,
 1 AS `nombre_descuento`,
 1 AS `porcentaje_descuento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `empleados_por_tienda`
--

DROP TABLE IF EXISTS `empleados_por_tienda`;
/*!50001 DROP VIEW IF EXISTS `empleados_por_tienda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `empleados_por_tienda` AS SELECT 
 1 AS `nombre_tienda`,
 1 AS `nombre_empleado`,
 1 AS `apellido_empleado`,
 1 AS `telefono`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `compras_clientes`
--

DROP TABLE IF EXISTS `compras_clientes`;
/*!50001 DROP VIEW IF EXISTS `compras_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `compras_clientes` AS SELECT 
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `comision`
--

DROP TABLE IF EXISTS `comision`;
/*!50001 DROP VIEW IF EXISTS `comision`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comision` AS SELECT 
 1 AS `fecha_alquiler`,
 1 AS `cliente_id`,
 1 AS `nombre_empleado`,
 1 AS `apellido_empleado`,
 1 AS `nombre_tienda`,
 1 AS `direccion_tienda`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pelicula_y_genero`
--

DROP TABLE IF EXISTS `pelicula_y_genero`;
/*!50001 DROP VIEW IF EXISTS `pelicula_y_genero`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pelicula_y_genero` AS SELECT 
 1 AS `titulo`,
 1 AS `nombre_genero`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clientes_con_membresias`
--

DROP TABLE IF EXISTS `clientes_con_membresias`;
/*!50001 DROP VIEW IF EXISTS `clientes_con_membresias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_con_membresias` AS SELECT 
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `nombre_membresia`,
 1 AS `costo`,
 1 AS `duracion_meses`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!50001 DROP VIEW IF EXISTS `sucursales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sucursales` AS SELECT 
 1 AS `nombre_tienda`,
 1 AS `direccion_tienda`,
 1 AS `nombre_ciudad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `peliculas_mas_alquiladas`
--

DROP TABLE IF EXISTS `peliculas_mas_alquiladas`;
/*!50001 DROP VIEW IF EXISTS `peliculas_mas_alquiladas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `peliculas_mas_alquiladas` AS SELECT 
 1 AS `titulo`,
 1 AS `veces_alquilada`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `monto_alquiler`
--

DROP TABLE IF EXISTS `monto_alquiler`;
/*!50001 DROP VIEW IF EXISTS `monto_alquiler`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `monto_alquiler` AS SELECT 
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `alquiler_id`,
 1 AS `monto`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `descuentos_en_alquileres`
--

/*!50001 DROP VIEW IF EXISTS `descuentos_en_alquileres`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `descuentos_en_alquileres` AS select `c`.`nombre_cliente` AS `nombre_cliente`,`c`.`apellido_cliente` AS `apellido_cliente`,`p`.`titulo` AS `titulo`,`d`.`nombre_descuento` AS `nombre_descuento`,`d`.`porcentaje_descuento` AS `porcentaje_descuento` from (((`clientes` `c` join `alquileres` `a` on((`c`.`cliente_id` = `a`.`cliente_id`))) join `peliculas` `p` on((`a`.`pelicula_id` = `p`.`pelicula_id`))) join `descuentos` `d` on((`a`.`descuento_id` = `d`.`descuento_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `empleados_por_tienda`
--

/*!50001 DROP VIEW IF EXISTS `empleados_por_tienda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleados_por_tienda` AS select `t`.`nombre_tienda` AS `nombre_tienda`,`e`.`nombre_empleado` AS `nombre_empleado`,`e`.`apellido_empleado` AS `apellido_empleado`,`e`.`telefono` AS `telefono` from (`tiendas` `t` join `empleados` `e` on((`t`.`tienda_id` = `e`.`tienda_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `compras_clientes`
--

/*!50001 DROP VIEW IF EXISTS `compras_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `compras_clientes` AS select `c`.`nombre_cliente` AS `nombre_cliente`,`c`.`apellido_cliente` AS `apellido_cliente`,`p`.`titulo` AS `titulo` from ((`clientes` `c` join `alquileres` `a` on((`c`.`cliente_id` = `a`.`cliente_id`))) join `peliculas` `p` on((`a`.`pelicula_id` = `p`.`pelicula_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `comision`
--

/*!50001 DROP VIEW IF EXISTS `comision`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comision` AS select `a`.`fecha_alquiler` AS `fecha_alquiler`,`c`.`cliente_id` AS `cliente_id`,`e`.`nombre_empleado` AS `nombre_empleado`,`e`.`apellido_empleado` AS `apellido_empleado`,`t`.`nombre_tienda` AS `nombre_tienda`,`t`.`direccion_tienda` AS `direccion_tienda` from (((`alquileres` `a` join `clientes` `c` on((`c`.`cliente_id` = `a`.`cliente_id`))) join `empleados` `e` on((`a`.`empleado_id` = `e`.`empleado_id`))) join `tiendas` `t` on((`a`.`tienda_id` = `t`.`tienda_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pelicula_y_genero`
--

/*!50001 DROP VIEW IF EXISTS `pelicula_y_genero`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pelicula_y_genero` AS select `p`.`titulo` AS `titulo`,`g`.`nombre_genero` AS `nombre_genero` from (`peliculas` `p` join `generos` `g` on((`g`.`genero_id` = `p`.`genero_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientes_con_membresias`
--

/*!50001 DROP VIEW IF EXISTS `clientes_con_membresias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_con_membresias` AS select `c`.`nombre_cliente` AS `nombre_cliente`,`c`.`apellido_cliente` AS `apellido_cliente`,`m`.`nombre_membresia` AS `nombre_membresia`,`m`.`costo` AS `costo`,`m`.`duracion_meses` AS `duracion_meses` from (`clientes` `c` join `membresias` `m` on((`c`.`membresia_id` = `m`.`membresia_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sucursales`
--

/*!50001 DROP VIEW IF EXISTS `sucursales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sucursales` AS select `t`.`nombre_tienda` AS `nombre_tienda`,`t`.`direccion_tienda` AS `direccion_tienda`,`ci`.`nombre_ciudad` AS `nombre_ciudad` from (`tiendas` `t` join `ciudades` `ci` on((`ci`.`ciudad_id` = `t`.`ciudad_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `peliculas_mas_alquiladas`
--

/*!50001 DROP VIEW IF EXISTS `peliculas_mas_alquiladas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `peliculas_mas_alquiladas` AS select `p`.`titulo` AS `titulo`,count(`a`.`alquiler_id`) AS `veces_alquilada` from (`peliculas` `p` join `alquileres` `a` on((`p`.`pelicula_id` = `a`.`pelicula_id`))) group by `p`.`titulo` order by `veces_alquilada` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `monto_alquiler`
--

/*!50001 DROP VIEW IF EXISTS `monto_alquiler`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `monto_alquiler` AS select `c`.`nombre_cliente` AS `nombre_cliente`,`c`.`apellido_cliente` AS `apellido_cliente`,`a`.`alquiler_id` AS `alquiler_id`,`a`.`monto` AS `monto` from (`alquileres` `a` join `clientes` `c` on((`c`.`cliente_id` = `a`.`cliente_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-20 16:35:57
