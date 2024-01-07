-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: projeto_embraer
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `categoria_id` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Manutenção preventiva'),(2,'Atualizações e modificações'),(3,'Treinamento técnico'),(4,'Especificação técnica de peça de reposição'),(5,'Problemas relacionados à documentação');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `cliente_id` int NOT NULL AUTO_INCREMENT,
  `cliente_nome` varchar(100) NOT NULL,
  `cliente_pais` varchar(50) NOT NULL,
  `cliente_email` varchar(100) NOT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Jetblue','Estados Unidos da América','jetblue@mail.com'),(2,'Azul','Brasil','azul@mail.com'),(3,'BOC Aviation','Singapura','boc_aviation@mail.com'),(4,'Kenya Airways','Quênia','kenya_airways@mail.com'),(5,'GE Capital Aviation','Estados Unidos da América','ge_capital_aviation@mail.com'),(6,'Lufthansa','Alemanha','lugthansa@mail.com'),(7,'Virgin Nigeria','Nigéria','virgin_nigeria@mail.com'),(8,'China Southern','China','china_southern@mail.com'),(9,'Força Aérea Brasileira','Brasil','fab@mail.com'),(10,'Força Aérea de Portugal','Portugal','fa_portugal@mail.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta_tecnica`
--

DROP TABLE IF EXISTS `consulta_tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta_tecnica` (
  `consulta_id` int NOT NULL AUTO_INCREMENT,
  `tempo_resposta_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  PRIMARY KEY (`consulta_id`),
  KEY `tempo_resposta_id` (`tempo_resposta_id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `consulta_tecnica_ibfk_1` FOREIGN KEY (`tempo_resposta_id`) REFERENCES `tempo_resposta` (`tempo_resposta_id`),
  CONSTRAINT `consulta_tecnica_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta_tecnica`
--

LOCK TABLES `consulta_tecnica` WRITE;
/*!40000 ALTER TABLE `consulta_tecnica` DISABLE KEYS */;
INSERT INTO `consulta_tecnica` VALUES (1,3,3),(2,3,1),(3,3,5),(4,2,1),(5,2,3),(6,2,3),(7,2,1),(8,1,2),(9,1,1),(10,1,3),(11,1,4),(12,3,3),(13,1,3),(14,1,5),(15,1,1),(16,2,1),(17,3,5),(18,3,5),(19,3,5),(20,3,2),(21,1,3),(22,2,3),(23,3,3),(24,3,4),(25,2,2),(26,1,3),(27,3,1),(28,3,3),(29,1,5),(30,2,3),(31,2,3),(32,1,4),(33,3,5),(34,1,3),(35,3,1),(36,3,4),(37,2,3),(38,3,5),(39,2,4),(40,1,1),(41,1,3),(42,2,2),(43,3,2),(44,2,4),(45,2,1),(46,2,1),(47,3,3),(48,3,1),(49,2,1),(50,1,4),(51,1,4),(52,3,3),(53,1,5),(54,2,5),(55,2,1),(56,3,5),(57,1,4),(58,3,3),(59,1,2),(60,3,2),(61,3,4),(62,3,4),(63,1,3),(64,2,1),(65,2,3),(66,3,4),(67,3,2),(68,3,4),(69,2,2),(70,3,4),(71,1,3),(72,3,2),(73,2,2),(74,2,5),(75,2,3),(76,2,1),(77,1,2),(78,2,1),(79,1,3),(80,1,2),(81,1,2),(82,2,1),(83,1,2),(84,3,4),(85,3,3),(86,1,1),(87,2,1),(88,3,3),(89,3,3),(90,3,3),(91,1,1),(92,3,2),(93,2,4),(94,3,1),(95,2,1),(96,1,5),(97,3,5),(98,1,5),(99,2,1),(100,2,3),(101,3,1),(102,1,5),(103,2,4),(104,2,2),(105,2,1),(106,1,1),(107,2,1),(108,2,1),(109,1,3),(110,2,3),(111,2,3),(112,1,1),(113,2,3),(114,1,2),(115,3,2),(116,1,1),(117,3,4),(118,3,2),(119,3,4),(120,1,3),(121,3,5),(122,3,4),(123,3,1),(124,2,1),(125,2,1),(126,3,5),(127,1,1),(128,3,3),(129,1,4),(130,2,2),(131,2,2),(132,1,1),(133,3,2),(134,2,5),(135,3,5),(136,2,5),(137,2,1),(138,2,2),(139,1,1),(140,3,2),(141,3,5),(142,2,1),(143,1,5),(144,2,2),(145,2,1),(146,1,5),(147,2,5),(148,2,2),(149,2,1),(150,3,2),(151,2,4),(152,2,3),(153,1,5),(154,2,1),(155,3,2),(156,3,5),(157,2,4),(158,1,3),(159,3,2),(160,3,4),(161,3,5),(162,1,2),(163,1,1),(164,2,3),(165,2,2),(166,1,1),(167,3,4),(168,1,5),(169,2,3),(170,1,3),(171,2,4),(172,3,5),(173,2,2),(174,2,1),(175,3,1),(176,1,5),(177,1,2),(178,3,1),(179,3,5),(180,1,2),(181,3,5),(182,1,4),(183,1,3),(184,3,1),(185,3,3),(186,1,2),(187,1,2),(188,1,4),(189,3,1),(190,3,5),(191,2,5),(192,1,5),(193,3,1),(194,3,2),(195,3,2),(196,1,3),(197,2,5),(198,1,3),(199,1,2),(200,3,2),(201,1,4),(202,1,1),(203,3,3),(204,1,2),(205,3,1),(206,3,2),(207,2,2),(208,2,5),(209,1,3),(210,1,4),(211,2,1),(212,1,1),(213,3,3),(214,2,5),(215,3,1),(216,1,5),(217,3,5),(218,1,1),(219,1,5),(220,3,1),(221,2,4),(222,3,5),(223,3,5),(224,3,5),(225,1,3),(226,2,5),(227,3,3),(228,1,3),(229,2,3),(230,2,2),(231,1,2),(232,2,2),(233,3,1),(234,3,4),(235,1,2),(236,1,5),(237,3,5),(238,3,4),(239,2,1),(240,1,5),(241,2,2),(242,3,5),(243,2,3),(244,1,2),(245,3,1),(246,3,5),(247,1,2),(248,3,3),(249,1,3),(250,1,3);
/*!40000 ALTER TABLE `consulta_tecnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nps`
--

DROP TABLE IF EXISTS `nps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nps` (
  `nps_id` int NOT NULL AUTO_INCREMENT,
  `nps_pontuacao` int NOT NULL,
  `nps_data` date NOT NULL,
  PRIMARY KEY (`nps_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nps`
--

LOCK TABLES `nps` WRITE;
/*!40000 ALTER TABLE `nps` DISABLE KEYS */;
INSERT INTO `nps` VALUES (1,2,'2022-03-28'),(2,10,'2022-03-28'),(3,2,'2022-03-28'),(4,0,'2022-03-28'),(5,7,'2022-03-28'),(6,3,'2022-03-28'),(7,6,'2022-03-28'),(8,9,'2022-03-28'),(9,6,'2022-03-28'),(10,3,'2022-03-28'),(11,0,'2022-06-27'),(12,0,'2022-06-27'),(13,2,'2022-06-27'),(14,8,'2022-06-27'),(15,3,'2022-06-27'),(16,2,'2022-06-27'),(17,2,'2022-06-27'),(18,3,'2022-06-27'),(19,9,'2022-06-27'),(20,5,'2022-06-27'),(21,8,'2022-09-26'),(22,6,'2022-09-26'),(23,3,'2022-09-26'),(24,0,'2022-09-26'),(25,2,'2022-09-26'),(26,0,'2022-09-26'),(27,5,'2022-09-26'),(28,3,'2022-09-26'),(29,1,'2022-09-26'),(30,6,'2022-09-26'),(31,7,'2022-12-19'),(32,4,'2022-12-19'),(33,3,'2022-12-19'),(34,1,'2022-12-19'),(35,9,'2022-12-19'),(36,10,'2022-12-19'),(37,10,'2022-12-19'),(38,0,'2022-12-19'),(39,3,'2022-12-19'),(40,5,'2022-12-19'),(41,4,'2023-03-27'),(42,5,'2023-03-27'),(43,4,'2023-03-27'),(44,4,'2023-03-27'),(45,10,'2023-03-27'),(46,6,'2023-03-27'),(47,1,'2023-03-27'),(48,0,'2023-03-27'),(49,5,'2023-03-27'),(50,5,'2023-03-27'),(51,10,'2023-06-26'),(52,1,'2023-06-26'),(53,10,'2023-06-26'),(54,2,'2023-06-26'),(55,5,'2023-06-26'),(56,7,'2023-06-26'),(57,10,'2023-06-26'),(58,7,'2023-06-26'),(59,4,'2023-06-26'),(60,2,'2023-06-26'),(61,10,'2023-09-25'),(62,9,'2023-09-25'),(63,4,'2023-09-25'),(64,4,'2023-09-25'),(65,9,'2023-09-25'),(66,10,'2023-09-25'),(67,3,'2023-09-25'),(68,6,'2023-09-25'),(69,9,'2023-09-25'),(70,9,'2023-09-25'),(71,5,'2023-12-18'),(72,10,'2023-12-18'),(73,4,'2023-12-18'),(74,0,'2023-12-18'),(75,10,'2023-12-18'),(76,8,'2023-12-18'),(77,0,'2023-12-18'),(78,7,'2023-12-18'),(79,6,'2023-12-18'),(80,6,'2023-12-18');
/*!40000 ALTER TABLE `nps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nps_cliente`
--

DROP TABLE IF EXISTS `nps_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nps_cliente` (
  `nps_cliente_id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `nps_id` int NOT NULL,
  PRIMARY KEY (`nps_cliente_id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `nps_id` (`nps_id`),
  CONSTRAINT `nps_cliente_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`),
  CONSTRAINT `nps_cliente_ibfk_2` FOREIGN KEY (`nps_id`) REFERENCES `nps` (`nps_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nps_cliente`
--

LOCK TABLES `nps_cliente` WRITE;
/*!40000 ALTER TABLE `nps_cliente` DISABLE KEYS */;
INSERT INTO `nps_cliente` VALUES (1,1,1),(2,1,11),(3,1,21),(4,1,31),(5,1,41),(6,1,51),(7,1,61),(8,1,71),(9,2,2),(10,2,12),(11,2,22),(12,2,32),(13,2,42),(14,2,52),(15,2,62),(16,2,72),(17,3,3),(18,3,13),(19,3,23),(20,3,33),(21,3,43),(22,3,53),(23,3,63),(24,3,73),(25,4,4),(26,4,14),(27,4,24),(28,4,34),(29,4,44),(30,4,54),(31,4,64),(32,4,74),(33,5,5),(34,5,15),(35,5,25),(36,5,35),(37,5,45),(38,5,55),(39,5,65),(40,5,75),(41,6,6),(42,6,16),(43,6,26),(44,6,36),(45,6,46),(46,6,56),(47,6,66),(48,6,76),(49,7,7),(50,7,17),(51,7,27),(52,7,37),(53,7,47),(54,7,57),(55,7,67),(56,7,77),(57,8,8),(58,8,18),(59,8,28),(60,8,38),(61,8,48),(62,8,58),(63,8,68),(64,8,78),(65,9,9),(66,9,19),(67,9,29),(68,9,39),(69,9,49),(70,9,59),(71,9,69),(72,9,79),(73,10,10),(74,10,20),(75,10,30),(76,10,40),(77,10,50),(78,10,60),(79,10,70),(80,10,80);
/*!40000 ALTER TABLE `nps_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `pedido_id` int NOT NULL AUTO_INCREMENT,
  `pedido_tempo_estimado` int NOT NULL,
  `cliente_id` int NOT NULL,
  `satisfacao_cliente_id` int DEFAULT NULL,
  `tempo_entrega_id` int DEFAULT NULL,
  PRIMARY KEY (`pedido_id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `satisfacao_cliente_id` (`satisfacao_cliente_id`),
  KEY `tempo_entrega_id` (`tempo_entrega_id`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`satisfacao_cliente_id`) REFERENCES `satisfacao_cliente` (`satisfacao_cliente_id`),
  CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`tempo_entrega_id`) REFERENCES `tempo_entrega` (`tempo_entrega_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,18,7,5,10),(2,16,10,2,8),(3,18,8,4,8),(4,10,10,2,7),(5,14,2,4,3),(6,6,9,2,8),(7,15,9,5,4),(8,8,2,4,11),(9,17,1,2,1),(10,11,9,5,12),(11,7,6,2,4),(12,9,5,1,9),(13,7,5,4,13),(14,13,6,1,3),(15,18,4,2,9),(16,14,3,5,7),(17,11,9,2,9),(18,13,4,5,7),(19,15,8,5,2),(20,6,4,3,11),(21,10,5,5,3),(22,12,9,5,12),(23,14,4,1,12),(24,14,1,2,8),(25,18,9,1,11),(26,10,5,2,12),(27,12,9,2,5),(28,11,9,3,1),(29,14,4,5,4),(30,9,6,4,9),(31,9,8,3,5),(32,7,5,3,10),(33,18,5,4,5),(34,6,3,2,13),(35,12,5,5,5),(36,16,2,2,4),(37,6,7,3,4),(38,7,2,1,13),(39,8,1,5,2),(40,13,7,2,11),(41,7,9,2,5),(42,12,6,4,3),(43,17,1,4,12),(44,13,6,1,13),(45,15,1,4,3),(46,9,4,1,2),(47,10,8,5,9),(48,12,9,5,5),(49,18,10,3,10),(50,14,7,5,2),(51,10,9,2,7),(52,17,1,3,6),(53,15,8,5,2),(54,18,5,3,7),(55,18,6,4,3),(56,10,6,2,11),(57,15,3,2,10),(58,13,6,5,12),(59,11,5,3,5),(60,18,1,3,7),(61,12,5,2,2),(62,13,9,3,5),(63,6,1,2,10),(64,6,4,2,2),(65,9,6,3,9),(66,6,8,3,13),(67,9,9,4,7),(68,16,7,4,8),(69,12,8,1,5),(70,18,4,5,12),(71,6,3,5,2),(72,17,1,3,2),(73,10,9,2,11),(74,11,2,1,11),(75,17,6,4,5),(76,8,6,1,6),(77,15,2,1,13),(78,14,1,3,10),(79,16,8,4,6),(80,13,9,3,13),(81,8,5,5,4),(82,18,8,2,6),(83,11,2,4,7),(84,7,2,1,12),(85,8,8,2,9),(86,8,7,4,11),(87,13,10,1,1),(88,6,8,3,1),(89,6,4,3,10),(90,13,1,1,13),(91,9,5,1,8),(92,8,6,1,5),(93,7,5,5,3),(94,14,10,2,3),(95,7,6,5,12),(96,14,8,3,12),(97,14,8,3,4),(98,10,10,3,11),(99,7,9,4,5),(100,18,8,4,12),(101,6,10,3,5),(102,7,6,2,5),(103,13,9,3,11),(104,7,7,4,5),(105,14,9,4,9),(106,15,1,5,8),(107,13,6,4,11),(108,12,2,4,12),(109,14,5,3,12),(110,13,1,4,13),(111,17,1,4,1),(112,7,9,5,12),(113,11,1,4,4),(114,6,8,5,4),(115,17,8,5,4),(116,17,1,4,5),(117,12,2,3,5),(118,9,9,3,9),(119,9,1,5,13),(120,9,9,4,5),(121,16,6,2,6),(122,17,3,3,5),(123,9,10,4,1),(124,17,6,4,1),(125,16,1,5,1),(126,13,3,5,10),(127,12,1,2,13),(128,13,3,4,2),(129,15,10,2,2),(130,17,6,3,11),(131,8,2,5,3),(132,18,5,2,4),(133,8,7,1,11),(134,18,6,4,1),(135,9,5,1,11),(136,13,3,2,8),(137,14,6,3,8),(138,9,9,5,9),(139,7,6,2,11),(140,8,3,3,8),(141,10,1,2,9),(142,13,1,5,13),(143,11,5,3,12),(144,6,5,4,11),(145,18,4,1,8),(146,13,4,4,5),(147,15,9,1,10),(148,6,7,4,5),(149,7,9,5,9),(150,8,10,2,11),(151,10,3,2,7),(152,10,7,3,1),(153,13,1,2,12),(154,16,10,5,5),(155,18,7,3,12),(156,10,3,2,11),(157,16,7,1,4),(158,7,8,2,12),(159,6,4,3,4),(160,17,4,3,10),(161,6,6,2,5),(162,12,2,3,3),(163,11,8,1,6),(164,13,1,4,2),(165,15,9,1,3),(166,11,1,1,7),(167,18,4,4,2),(168,12,6,2,5),(169,11,6,4,3),(170,14,10,4,9),(171,12,5,2,2),(172,11,3,2,1),(173,6,9,5,5),(174,15,6,1,7),(175,7,6,4,6),(176,18,8,3,10),(177,8,3,5,11),(178,11,7,2,2),(179,7,8,4,5),(180,13,1,4,3),(181,11,7,1,4),(182,7,5,2,6),(183,6,5,4,4),(184,13,5,2,7),(185,6,1,4,7),(186,17,7,4,5),(187,15,10,1,2),(188,15,8,2,11),(189,16,8,1,1),(190,10,3,1,11),(191,13,2,4,7),(192,12,9,3,10),(193,6,3,3,10),(194,16,7,1,7),(195,8,6,2,13),(196,12,1,1,4),(197,10,1,5,6),(198,9,4,1,7),(199,10,7,3,2),(200,12,3,1,12);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_consulta`
--

DROP TABLE IF EXISTS `pedido_consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_consulta` (
  `pedido_consulta_id` int NOT NULL AUTO_INCREMENT,
  `pedido_id` int NOT NULL,
  `consulta_id` int NOT NULL,
  PRIMARY KEY (`pedido_consulta_id`),
  KEY `pedido_id` (`pedido_id`),
  KEY `consulta_id` (`consulta_id`),
  CONSTRAINT `pedido_consulta_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`pedido_id`),
  CONSTRAINT `pedido_consulta_ibfk_2` FOREIGN KEY (`consulta_id`) REFERENCES `consulta_tecnica` (`consulta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_consulta`
--

LOCK TABLES `pedido_consulta` WRITE;
/*!40000 ALTER TABLE `pedido_consulta` DISABLE KEYS */;
INSERT INTO `pedido_consulta` VALUES (1,5,41),(2,130,46),(3,85,71),(4,17,72),(5,125,99),(6,85,179),(7,141,47),(8,141,148),(9,84,35),(10,4,189),(11,62,174),(12,110,42),(13,143,123),(14,193,230),(15,146,232),(16,126,217),(17,56,177),(18,156,72),(19,104,226),(20,68,234),(21,159,221),(22,173,57),(23,143,159),(24,111,194),(25,158,24),(26,174,160),(27,141,162),(28,63,94),(29,7,119),(30,82,175),(31,172,196),(32,18,192),(33,69,156),(34,165,188),(35,61,79),(36,133,42),(37,138,58),(38,120,181),(39,127,30),(40,149,15),(41,38,10),(42,112,144),(43,113,51),(44,39,68),(45,39,163),(46,25,220),(47,154,191),(48,167,60),(49,3,194),(50,23,106),(51,69,41),(52,193,182),(53,186,196),(54,146,230),(55,130,59),(56,75,193),(57,112,156),(58,41,250),(59,21,229),(60,73,109),(61,161,176),(62,55,101),(63,200,194),(64,136,84),(65,171,106),(66,68,160),(67,37,105),(68,135,21),(69,60,82),(70,106,32),(71,76,71),(72,195,214),(73,145,124),(74,74,61),(75,117,35),(76,17,41),(77,72,114),(78,99,9),(79,144,233),(80,174,119),(81,105,114),(82,86,233),(83,172,175),(84,107,67),(85,25,1),(86,86,49),(87,57,32),(88,113,239),(89,57,177),(90,114,223),(91,159,31),(92,39,33),(93,27,25),(94,19,178),(95,162,186),(96,163,108),(97,103,162),(98,191,182),(99,176,117),(100,151,249),(101,93,71),(102,135,119),(103,87,72),(104,193,125),(105,65,54),(106,174,154),(107,80,77),(108,13,142),(109,153,192),(110,196,81),(111,130,194),(112,134,168),(113,147,234),(114,171,49),(115,5,160),(116,17,31),(117,156,14),(118,35,168),(119,68,23),(120,200,69),(121,160,94),(122,67,45),(123,177,2),(124,28,156),(125,120,56),(126,108,157),(127,114,218),(128,164,143),(129,152,219),(130,96,12),(131,20,157),(132,171,221),(133,39,193),(134,10,156),(135,193,126),(136,80,174),(137,7,117),(138,128,162),(139,43,197),(140,44,195),(141,36,77),(142,17,154),(143,128,90),(144,109,163),(145,163,164),(146,80,175),(147,89,132),(148,127,164),(149,172,230),(150,120,226),(151,10,9),(152,180,1),(153,98,142),(154,47,96),(155,46,94),(156,47,139),(157,187,166),(158,103,222),(159,85,91),(160,187,81),(161,58,91),(162,155,125),(163,162,20),(164,73,88),(165,68,25),(166,200,231),(167,95,41),(168,183,240),(169,63,56),(170,154,22),(171,144,236),(172,111,42),(173,99,125),(174,82,87),(175,184,65),(176,10,234),(177,145,211),(178,153,166),(179,151,219),(180,79,34),(181,129,45),(182,23,122),(183,42,140),(184,164,6),(185,28,100),(186,126,128),(187,8,186),(188,176,122),(189,70,161),(190,117,86),(191,33,11),(192,168,165),(193,179,119),(194,10,196),(195,191,58),(196,117,237),(197,178,14),(198,56,190),(199,69,200),(200,165,178),(201,137,13),(202,111,37),(203,126,188),(204,31,136),(205,95,30),(206,133,170),(207,142,185),(208,100,11),(209,23,239),(210,185,198),(211,94,127),(212,184,14),(213,71,187),(214,122,80),(215,108,231),(216,142,83),(217,166,107),(218,51,19),(219,138,28),(220,124,180),(221,124,141),(222,162,80),(223,37,122),(224,138,87),(225,194,35),(226,24,107),(227,185,162),(228,83,136),(229,56,168),(230,106,123),(231,18,36),(232,54,215),(233,156,133),(234,59,193),(235,118,176),(236,83,77),(237,65,61),(238,88,106),(239,106,194),(240,195,247),(241,85,64),(242,153,65),(243,146,55),(244,200,190),(245,69,44),(246,72,134),(247,71,29),(248,7,60),(249,71,174),(250,158,123);
/*!40000 ALTER TABLE `pedido_consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_produto`
--

DROP TABLE IF EXISTS `pedido_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_produto` (
  `pedido_produto_id` int NOT NULL AUTO_INCREMENT,
  `pedido_id` int NOT NULL,
  `produto_id` int NOT NULL,
  PRIMARY KEY (`pedido_produto_id`),
  KEY `pedido_id` (`pedido_id`),
  KEY `produto_id` (`produto_id`),
  CONSTRAINT `pedido_produto_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`pedido_id`),
  CONSTRAINT `pedido_produto_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`produto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_produto`
--

LOCK TABLES `pedido_produto` WRITE;
/*!40000 ALTER TABLE `pedido_produto` DISABLE KEYS */;
INSERT INTO `pedido_produto` VALUES (1,1,2),(2,2,9),(3,3,5),(4,4,9),(5,5,7),(6,6,9),(7,7,9),(8,8,7),(9,9,3),(10,10,9),(11,11,2),(12,12,1),(13,13,4),(14,14,3),(15,15,2),(16,16,8),(17,17,9),(18,18,8),(19,19,7),(20,20,5),(21,21,8),(22,22,9),(23,23,4),(24,24,4),(25,25,9),(26,26,5),(27,27,9),(28,28,9),(29,29,3),(30,30,3),(31,31,5),(32,32,7),(33,33,3),(34,34,8),(35,35,8),(36,36,6),(37,37,4),(38,38,5),(39,39,3),(40,40,8),(41,41,9),(42,42,7),(43,43,1),(44,44,1),(45,45,7),(46,46,2),(47,47,2),(48,48,9),(49,49,9),(50,50,5),(51,51,9),(52,52,1),(53,53,7),(54,54,8),(55,55,2),(56,56,8),(57,57,4),(58,58,8),(59,59,7),(60,60,2),(61,61,2),(62,62,9),(63,63,4),(64,64,8),(65,65,1),(66,66,7),(67,67,9),(68,68,7),(69,69,5),(70,70,5),(71,71,7),(72,72,5),(73,73,9),(74,74,4),(75,75,6),(76,76,8),(77,77,6),(78,78,4),(79,79,4),(80,80,9),(81,81,7),(82,82,5),(83,83,6),(84,84,6),(85,85,2),(86,86,7),(87,87,9),(88,88,5),(89,89,2),(90,90,6),(91,91,5),(92,92,7),(93,93,2),(94,94,9),(95,95,7),(96,96,2),(97,97,5),(98,98,9),(99,99,9),(100,100,2),(101,101,9),(102,102,3),(103,103,9),(104,104,1),(105,105,9),(106,106,2),(107,107,1),(108,108,7),(109,109,6),(110,110,2),(111,111,7),(112,112,9),(113,113,5),(114,114,3),(115,115,8),(116,116,7),(117,117,1),(118,118,9),(119,119,8),(120,120,9),(121,121,4),(122,122,2),(123,123,9),(124,124,8),(125,125,1),(126,126,3),(127,127,4),(128,128,2),(129,129,9),(130,130,4),(131,131,1),(132,132,5),(133,133,7),(134,134,2),(135,135,6),(136,136,8),(137,137,4),(138,138,9),(139,139,6),(140,140,1),(141,141,4),(142,142,6),(143,143,3),(144,144,5),(145,145,7),(146,146,4),(147,147,9),(148,148,8),(149,149,9),(150,150,9),(151,151,8),(152,152,2),(153,153,3),(154,154,9),(155,155,6),(156,156,3),(157,157,6),(158,158,6),(159,159,4),(160,160,3),(161,161,7),(162,162,1),(163,163,8),(164,164,4),(165,165,9),(166,166,4),(167,167,8),(168,168,5),(169,169,5),(170,170,9),(171,171,5),(172,172,7),(173,173,9),(174,174,3),(175,175,1),(176,176,3),(177,177,5),(178,178,6),(179,179,8),(180,180,5),(181,181,2),(182,182,2),(183,183,4),(184,184,4),(185,185,7),(186,186,7),(187,187,9),(188,188,4),(189,189,7),(190,190,8),(191,191,8),(192,192,9),(193,193,8),(194,194,2),(195,195,6),(196,196,1),(197,197,3),(198,198,1),(199,199,6),(200,200,2);
/*!40000 ALTER TABLE `pedido_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `produto_id` int NOT NULL AUTO_INCREMENT,
  `produto` varchar(100) NOT NULL,
  `tipo_carga` varchar(50) NOT NULL,
  PRIMARY KEY (`produto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'ERJ 145','Transporte de Passageiros'),(2,'ERJ 145XR','Transporte de Passageiros'),(3,'E170','Transporte de Passageiros'),(4,'E175','Transporte de Passageiros'),(5,'E190','Transporte de Passageiros'),(6,'E195','Transporte de Passageiros'),(7,'E190-E2','Transporte de Passageiros'),(8,'E195-E2','Transporte de Passageiros'),(9,'KC-390 Millennium','Transporte de Carga');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satisfacao_cliente`
--

DROP TABLE IF EXISTS `satisfacao_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `satisfacao_cliente` (
  `satisfacao_cliente_id` int NOT NULL AUTO_INCREMENT,
  `satisfacao_cliente_avaliacao` varchar(30) NOT NULL,
  PRIMARY KEY (`satisfacao_cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satisfacao_cliente`
--

LOCK TABLES `satisfacao_cliente` WRITE;
/*!40000 ALTER TABLE `satisfacao_cliente` DISABLE KEYS */;
INSERT INTO `satisfacao_cliente` VALUES (1,'Muito insatisfeito'),(2,'Insatisfeito'),(3,'Neutro'),(4,'Satisfeito'),(5,'Muito satisfeito');
/*!40000 ALTER TABLE `satisfacao_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempo_entrega`
--

DROP TABLE IF EXISTS `tempo_entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tempo_entrega` (
  `tempo_entrega_id` int NOT NULL AUTO_INCREMENT,
  `tempo_entrega` int NOT NULL,
  PRIMARY KEY (`tempo_entrega_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempo_entrega`
--

LOCK TABLES `tempo_entrega` WRITE;
/*!40000 ALTER TABLE `tempo_entrega` DISABLE KEYS */;
INSERT INTO `tempo_entrega` VALUES (1,6),(2,7),(3,8),(4,9),(5,10),(6,11),(7,12),(8,13),(9,14),(10,15),(11,16),(12,17),(13,18);
/*!40000 ALTER TABLE `tempo_entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempo_resposta`
--

DROP TABLE IF EXISTS `tempo_resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tempo_resposta` (
  `tempo_resposta_id` int NOT NULL AUTO_INCREMENT,
  `tempo_resposta` int NOT NULL,
  PRIMARY KEY (`tempo_resposta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempo_resposta`
--

LOCK TABLES `tempo_resposta` WRITE;
/*!40000 ALTER TABLE `tempo_resposta` DISABLE KEYS */;
INSERT INTO `tempo_resposta` VALUES (1,3),(2,4),(3,5);
/*!40000 ALTER TABLE `tempo_resposta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-07 13:13:30
