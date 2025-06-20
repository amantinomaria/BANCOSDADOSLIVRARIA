-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bancodedados
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
-- Table structure for table `ordem_de_compra`
--

DROP TABLE IF EXISTS `ordem_de_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordem_de_compra` (
  `id_ordem` int NOT NULL AUTO_INCREMENT,
  `quantidade_comprada` int DEFAULT NULL,
  `data_compra` date DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  `cnpj_fornecedor` char(14) DEFAULT NULL,
  `cnpj_livraria` char(14) DEFAULT NULL,
  PRIMARY KEY (`id_ordem`),
  KEY `cnpj_fornecedor` (`cnpj_fornecedor`),
  KEY `cnpj_livraria` (`cnpj_livraria`),
  CONSTRAINT `ordem_de_compra_ibfk_1` FOREIGN KEY (`cnpj_fornecedor`) REFERENCES `fornecedor` (`cnpj_fornecedor`),
  CONSTRAINT `ordem_de_compra_ibfk_2` FOREIGN KEY (`cnpj_livraria`) REFERENCES `livraria` (`cnpj_livraria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordem_de_compra`
--

LOCK TABLES `ordem_de_compra` WRITE;
/*!40000 ALTER TABLE `ordem_de_compra` DISABLE KEYS */;
INSERT INTO `ordem_de_compra` VALUES (1,100,'2025-05-15',3990.00,'11111111000191','33333333000191'),(2,60,'2025-05-20',1794.00,'22222222000191','33333333000191'),(3,50,'2025-04-10',1245.00,'11111111000191','33333333000191'),(4,30,'2025-04-25',1497.00,'22222222000191','33333333000191'),(5,40,'2025-03-05',996.00,'11111111000191','33333333000191'),(6,25,'2025-03-15',748.50,'22222222000191','33333333000191');
/*!40000 ALTER TABLE `ordem_de_compra` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-17 21:26:54
