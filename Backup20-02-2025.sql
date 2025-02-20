CREATE DATABASE  IF NOT EXISTS `flotillasi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `flotillasi`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: flotillasi
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `automovil`
--

DROP TABLE IF EXISTS `automovil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automovil` (
  `idAuto` int NOT NULL AUTO_INCREMENT,
  `placa` varchar(20) NOT NULL,
  `Marca` varchar(50) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `estado` int NOT NULL,
  `idDocumentacion` int DEFAULT NULL,
  PRIMARY KEY (`idAuto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automovil`
--

LOCK TABLES `automovil` WRITE;
/*!40000 ALTER TABLE `automovil` DISABLE KEYS */;
INSERT INTO `automovil` VALUES (1,'ABC-1234','Toyota','Corolla',1,1),(2,'XYZ-5678','Ford','Focus',1,2),(3,'LMN-9101','Honda','Civic',1,3),(4,'JKL-2345','Chevrolet','Spark',1,4),(5,'DEF-6789','Nissan','Sentra',1,5);
/*!40000 ALTER TABLE `automovil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conductor`
--

DROP TABLE IF EXISTS `conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductor` (
  `idConductor` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `idAuto` int NOT NULL,
  PRIMARY KEY (`idConductor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductor`
--

LOCK TABLES `conductor` WRITE;
/*!40000 ALTER TABLE `conductor` DISABLE KEYS */;
INSERT INTO `conductor` VALUES (1,'Juan Pérez','5551234567','JUPE890123XYZ',1),(2,'María López','5552345678','MALO870321ABC',2),(3,'Carlos Gómez','5553456789','CAGO860412DEF',3),(4,'Ana Ramírez','5554567890','ANRA850503GHI',4),(5,'Luis Martínez','5555678901','LUMA840604JKL',5);
/*!40000 ALTER TABLE `conductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentacion`
--

DROP TABLE IF EXISTS `documentacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentacion` (
  `idDocumentacion` int NOT NULL AUTO_INCREMENT,
  `fechaEmision` date NOT NULL,
  `tipoDocumento` varchar(80) NOT NULL,
  `fechaVencimiento` date NOT NULL,
  `mesVerificacion` int NOT NULL,
  PRIMARY KEY (`idDocumentacion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentacion`
--

LOCK TABLES `documentacion` WRITE;
/*!40000 ALTER TABLE `documentacion` DISABLE KEYS */;
INSERT INTO `documentacion` VALUES (1,'2023-03-15','Tarjeta de Circulación','2025-03-15',3),(2,'2022-06-10','Seguro Obligatorio','2025-06-10',6),(3,'2023-07-25','Tarjeta de Circulación','2025-07-25',7),(4,'2024-01-05','Seguro Obligatorio','2026-01-05',1),(5,'2023-03-20','Tarjeta de Circulación','2025-03-20',3);
/*!40000 ALTER TABLE `documentacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gasolina`
--

DROP TABLE IF EXISTS `gasolina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gasolina` (
  `idConsumo` int NOT NULL AUTO_INCREMENT,
  `fechaConsumo` date NOT NULL,
  `consumoTotal` int NOT NULL,
  `tipoGas` varchar(20) NOT NULL,
  `costoTotal` int NOT NULL,
  `idAuto` int NOT NULL,
  PRIMARY KEY (`idConsumo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gasolina`
--

LOCK TABLES `gasolina` WRITE;
/*!40000 ALTER TABLE `gasolina` DISABLE KEYS */;
INSERT INTO `gasolina` VALUES (1,'2025-02-01',50,'Premium',2500,1),(2,'2025-02-02',60,'Magna',1800,2),(3,'2025-02-03',55,'Diesel',2400,3),(4,'2025-02-04',70,'Premium',3000,4),(5,'2024-12-19',70,'Premium',3000,4),(6,'2024-12-20',70,'Premium',3000,4),(7,'2024-11-15',70,'Premium',3000,4),(8,'2025-02-05',65,'Magna',2200,5);
/*!40000 ALTER TABLE `gasolina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantenimiento`
--

DROP TABLE IF EXISTS `mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimiento` (
  `idMantenimiento` int NOT NULL AUTO_INCREMENT,
  `fechaMantenimiento` date NOT NULL,
  `tipoMantenimiento` varchar(50) NOT NULL,
  `costoTotal` int NOT NULL,
  `idAuto` int NOT NULL,
  PRIMARY KEY (`idMantenimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento`
--

LOCK TABLES `mantenimiento` WRITE;
/*!40000 ALTER TABLE `mantenimiento` DISABLE KEYS */;
INSERT INTO `mantenimiento` VALUES (1,'2025-01-10','Cambio de Aceite',1500,1),(2,'2025-01-15','Frenos',2200,2),(3,'2025-01-20','Alineación y Balanceo',1800,3),(4,'2025-01-25','Cambio de Batería',3500,4),(5,'2025-01-30','Afinación Completa',5000,5);
/*!40000 ALTER TABLE `mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refaccion`
--

DROP TABLE IF EXISTS `refaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refaccion` (
  `idRefaccion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `costo` int NOT NULL,
  `idMantenimiento` int NOT NULL,
  PRIMARY KEY (`idRefaccion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refaccion`
--

LOCK TABLES `refaccion` WRITE;
/*!40000 ALTER TABLE `refaccion` DISABLE KEYS */;
INSERT INTO `refaccion` VALUES (1,'Aceite Sintético',800,1),(2,'Pastillas de Freno',1200,2),(3,'Balanceo',900,3),(4,'Batería 12V',3500,4),(5,'Filtro de Aire',300,5);
/*!40000 ALTER TABLE `refaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrotrabajo`
--

DROP TABLE IF EXISTS `registrotrabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrotrabajo` (
  `idRegistro` int NOT NULL AUTO_INCREMENT,
  `fechaTrabajo` date NOT NULL,
  `idConductor` int NOT NULL,
  `idAuto` int NOT NULL,
  PRIMARY KEY (`idRegistro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrotrabajo`
--

LOCK TABLES `registrotrabajo` WRITE;
/*!40000 ALTER TABLE `registrotrabajo` DISABLE KEYS */;
INSERT INTO `registrotrabajo` VALUES (1,'2025-02-19',1,1),(2,'2025-02-19',2,2),(3,'2025-02-19',3,3),(4,'2025-02-19',4,4),(5,'2025-02-19',5,5);
/*!40000 ALTER TABLE `registrotrabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'flotillasi'
--

--
-- Dumping routines for database 'flotillasi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-20 13:38:34
