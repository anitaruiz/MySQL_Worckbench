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
-- Table structure for table `renta`
--

DROP TABLE IF EXISTS `renta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `renta` (
  `renta_id` int NOT NULL,
  `fecha_renta` datetime DEFAULT NULL,
  `fecha_devolucion` datetime DEFAULT NULL,
  `cliente_id` int DEFAULT NULL,
  `pelicula_id` int DEFAULT NULL,
  `empleado_id` int DEFAULT NULL,
  PRIMARY KEY (`renta_id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `pelicula_id` (`pelicula_id`),
  KEY `empleado_id` (`empleado_id`),
  CONSTRAINT `renta_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`),
  CONSTRAINT `renta_ibfk_2` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`pelicula_id`),
  CONSTRAINT `renta_ibfk_3` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`empleado_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renta`
--

LOCK TABLES `renta` WRITE;
/*!40000 ALTER TABLE `renta` DISABLE KEYS */;
INSERT INTO `renta` VALUES (1,'2024-07-15 10:00:00','2024-07-22 10:00:00',1,1,1),(2,'2024-07-16 11:00:00','2024-07-23 11:00:00',2,2,2),(3,'2024-07-17 12:00:00','2024-07-24 12:00:00',3,3,3),(4,'2024-07-18 13:00:00','2024-07-25 13:00:00',4,4,4),(5,'2024-07-19 14:00:00','2024-07-26 14:00:00',5,5,5),(6,'2024-07-20 15:00:00','2024-07-27 15:00:00',6,6,6),(7,'2024-07-21 16:00:00','2024-07-28 16:00:00',7,7,7),(8,'2024-07-22 17:00:00','2024-07-29 17:00:00',8,8,8),(9,'2024-07-23 18:00:00','2024-07-30 18:00:00',9,9,9),(10,'2024-07-24 19:00:00','2024-07-31 19:00:00',10,10,10);
/*!40000 ALTER TABLE `renta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-29 18:14:19
