CREATE DATABASE  IF NOT EXISTS `library` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `library`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: library
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `Book`
--

DROP TABLE IF EXISTS `Book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Book` (
  `BookID` int unsigned NOT NULL AUTO_INCREMENT,
  `Author` varchar(50) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Publisher` varchar(45) DEFAULT NULL,
  `BookYear` int unsigned DEFAULT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book`
--

LOCK TABLES `Book` WRITE;
/*!40000 ALTER TABLE `Book` DISABLE KEYS */;
INSERT INTO `Book` VALUES (1,'Зеленин В.М.','Экспертные системы','Политехника',1996),(2,'Дейт К.','Введение в системы баз данных','Издательский дом \"\"Вильямс\"\"',1999),(3,'Кириллов В.В., Громов Г.Ю.','Введение в реляционные базы данных','БХВ-Петербург',2009),(4,'Кастанеда К.','Особая реальность: Новые беседы с доном Хуаном.','Азбука',2001),(5,'Пелевин В.','Омон Ра','ФТМ',1998),(6,'К. Маккарти','Дорога','Азбука',2018);
/*!40000 ALTER TABLE `Book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookInLib`
--

DROP TABLE IF EXISTS `BookInLib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BookInLib` (
  `LibID` int unsigned NOT NULL AUTO_INCREMENT,
  `BookID` int DEFAULT NULL,
  `StatusID` int DEFAULT NULL,
  PRIMARY KEY (`LibID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookInLib`
--

LOCK TABLES `BookInLib` WRITE;
/*!40000 ALTER TABLE `BookInLib` DISABLE KEYS */;
INSERT INTO `BookInLib` VALUES (1,1,1),(2,1,2),(3,5,3),(4,6,1);
/*!40000 ALTER TABLE `BookInLib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookStatus`
--

DROP TABLE IF EXISTS `BookStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BookStatus` (
  `StatusID` int NOT NULL,
  `StatusName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`StatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookStatus`
--

LOCK TABLES `BookStatus` WRITE;
/*!40000 ALTER TABLE `BookStatus` DISABLE KEYS */;
INSERT INTO `BookStatus` VALUES (1,'в библиотеке'),(2,'в учебном классе'),(3,'выдана');
/*!40000 ALTER TABLE `BookStatus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-02 19:16:42
