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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `cliente_id` int NOT NULL,
  `nombre_cliente` varchar(50) DEFAULT NULL,
  `apellido_cliente` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion_cliente` varchar(100) DEFAULT NULL,
  `ciudad_id` int DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `tienda_id` int DEFAULT NULL,
  PRIMARY KEY (`cliente_id`),
  KEY `tienda_id` (`tienda_id`),
  KEY `ciudad_id` (`ciudad_id`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`tienda_id`) REFERENCES `tienda` (`tienda_id`),
  CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudades` (`ciudad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan','Gómez','juan.gomez@ejemplo.com','600123456','Calle de Caballito 50',1,'1043',1),(2,'Ana','Serrano','ana.serrano@ejemplo.com','600234567','Calle San Fernando 28',2,'5001',2),(3,'Pedro','Alonso','pedro.alonso@ejemplo.com','600345678','Calle del Parque 12',3,'2001',5),(4,'Laura','Jiménez','laura.jimenez@ejemplo.com','600456789','Av. Alem 7',4,'5501',4),(5,'Miguel','Cruz','miguel.cruz@ejemplo.com','600567890','Calle Constitución 14',5,'1901',5),(6,'María','Hidalgo','maria.hidalgo@ejemplo.com','600678901','Calle Mitre 22',6,'4001',6),(7,'José','Morales','jose.morales@ejemplo.com','600789012','Calle Moreno 35',7,'4401',2),(8,'Isabel','Ramírez','isabel.ramirez@ejemplo.com','600890123','Av. Juan B. Justo 50',8,'7601',3),(9,'Luis','García','luis.garcia@ejemplo.com','600901234','Calle 9 de Julio 18',9,'5401',9),(10,'Carmen','Rivas','carmen.rivas@ejemplo.com','600012345','Calle San Martín 9',10,'3301',10);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
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
