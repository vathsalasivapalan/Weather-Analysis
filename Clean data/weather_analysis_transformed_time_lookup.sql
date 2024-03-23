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
-- Table structure for table `time_lookup`
--

DROP TABLE IF EXISTS `time_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_lookup` (
  `time_id` bigint DEFAULT NULL,
  `time` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_lookup`
--

LOCK TABLES `time_lookup` WRITE;
/*!40000 ALTER TABLE `time_lookup` DISABLE KEYS */;
INSERT INTO `time_lookup` VALUES (1,'12:00:00'),(2,'13:00:00'),(3,'14:00:00'),(4,'15:00:00'),(5,'16:00:00'),(6,'17:00:00'),(7,'18:00:00'),(8,'19:00:00'),(9,'20:00:00'),(10,'21:00:00'),(11,'22:00:00'),(12,'23:00:00'),(13,'00:00:00'),(14,'01:00:00'),(15,'02:00:00'),(16,'03:00:00'),(17,'04:00:00'),(18,'05:00:00'),(19,'06:00:00'),(20,'07:00:00'),(21,'08:00:00'),(22,'09:00:00'),(23,'10:00:00'),(24,'11:00:00');
/*!40000 ALTER TABLE `time_lookup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03  7:41:17
SELECT ca.city, ca.country, ca.latitude, ff.average_temperature, ff.humidity
FROM city_attributes ca
JOIN final_fact ff ON ca.city = ff.city
WHERE ca.latitude BETWEEN 48 AND 49 and 

WHERE ca.latitude BETWEEN 48 AND 49

select *
from city_attributes

SELECT *
FROM time_lookup


SELECT ca.City_id AS city, ca.Country_id as country, max(ca.Latitude) as latitude, AVG(ff.temperature) AS avg_temperature, AVG(ff.humidity) AS avg_humidity
FROM city_attributes as ca
JOIN Final_Fact as ff ON ca.City_id = ff.City_id
WHERE ca.Latitude BETWEEN 40 AND 49 AND ff.temperature IS NOT NULL AND ff.humidity IS NOT NULL
GROUP BY city, country, ca.Latitude

SELECT ci.city AS City, co.Country AS Country, 
    ROUND(MAX(ca.Latitude), 2) AS Latitude, 
    ROUND(AVG(ff.temperature), 2) AS Avg_Temperature, 
    ANY_VALUE(ff.weather_description) AS Weather_descriptions
FROM city_attributes AS ca
JOIN Final_Fact AS ff
     ON ca.City_id = ff.City_id
JOIN country AS co
     ON ca.Country_id = co.Country_id
JOIN city_lookup AS ci 
	ON ci.City_id = ca.City_id
WHERE ca.Latitude BETWEEN 40 AND 50 
     AND ff.temperature IS NOT NULL 
	 AND ff.humidity IS NOT NULL
GROUP BY ci.city, co.country;