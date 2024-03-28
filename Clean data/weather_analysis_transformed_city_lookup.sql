-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: weather_analysis_transformed
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `city_lookup`
--

DROP TABLE IF EXISTS `city_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_lookup` (
  `City_id` bigint DEFAULT NULL,
  `City` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_lookup`
--

LOCK TABLES `city_lookup` WRITE;
/*!40000 ALTER TABLE `city_lookup` DISABLE KEYS */;
INSERT INTO `city_lookup` VALUES (1,'Vancouver'),(2,'Portland'),(3,'San Francisco'),(4,'Seattle'),(5,'Los Angeles'),(6,'San Diego'),(7,'Las Vegas'),(8,'Phoenix'),(9,'Albuquerque'),(10,'Denver'),(11,'San Antonio'),(12,'Dallas'),(13,'Houston'),(14,'Kansas City'),(15,'Minneapolis'),(16,'Saint Louis'),(17,'Chicago'),(18,'Nashville'),(19,'Indianapolis'),(20,'Atlanta'),(21,'Detroit'),(22,'Jacksonville'),(23,'Charlotte'),(24,'Miami'),(25,'Pittsburgh'),(26,'Toronto'),(27,'Philadelphia'),(28,'New York'),(29,'Montreal'),(30,'Boston'),(31,'Beersheba'),(32,'Tel Aviv District'),(33,'Eilat'),(34,'Haifa'),(35,'Nahariyya'),(36,'Jerusalem');
/*!40000 ALTER TABLE `city_lookup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03  7:41:19
