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
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `cod_venda` int NOT NULL AUTO_INCREMENT,
  `valor_total` decimal(10,2) DEFAULT NULL,
  `data_venda` date DEFAULT NULL,
  `forma_pagamento` varchar(20) DEFAULT NULL,
  `quantidade_vendida` int DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `cpf_cliente` char(11) DEFAULT NULL,
  `cod_livro` int DEFAULT NULL,
  PRIMARY KEY (`cod_venda`),
  KEY `cpf_cliente` (`cpf_cliente`),
  KEY `cod_livro` (`cod_livro`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`cpf_cliente`) REFERENCES `cliente` (`cpf`),
  CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,79.80,'2025-06-01','Crédito',2,'livro','12345678901',1),(2,29.90,'2025-06-02','Débito',1,'livro','98765432100',2),(3,99.80,'2025-05-15','Débito',2,'livro','76887690008',3),(4,74.70,'2025-05-20','Crédito',3,'livro','98709890876',2),(5,49.90,'2025-04-10','Dinheiro',1,'livro','12345678901',5),(6,119.80,'2025-04-18','Crédito',2,'livro','98765432100',6),(7,24.90,'2025-03-05','Débito',1,'livro','11122233344',4),(8,149.70,'2025-03-22','Crédito',3,'livro','55566677788',1),(9,59.90,'2025-03-30','Dinheiro',1,'livro','99988877766',6),(10,119.70,'2025-06-05','Crédito',3,'livro','12345678901',1),(11,59.90,'2025-06-08','Débito',1,'livro','98765432100',6),(12,99.80,'2025-06-12','Dinheiro',2,'livro','76887690008',3),(13,149.70,'2025-06-18','Crédito',5,'livro','98709890876',2),(14,49.90,'2025-05-03','Débito',1,'livro','11122233344',5),(15,124.75,'2025-05-10','Crédito',5,'livro','55566677788',2),(16,74.70,'2025-05-22','Dinheiro',3,'livro','99988877766',4),(17,199.60,'2025-04-05','Crédito',5,'livro','12345678901',3),(18,29.90,'2025-04-15','Débito',1,'livro','98765432100',2),(19,179.70,'2025-04-25','Crédito',3,'livro','76887690008',6),(20,39.90,'2025-03-08','Dinheiro',1,'livro','98709890876',1),(21,79.80,'2025-03-15','Crédito',2,'livro','11122233344',3),(22,199.60,'2025-03-28','Crédito',8,'livro','55566677788',4),(23,59.90,'2025-02-14','Débito',1,'livro','99988877766',6),(24,89.70,'2025-02-20','Crédito',3,'livro','12345678901',2),(25,39.90,'2025-01-05','Dinheiro',1,'livro','98765432100',1),(26,319.60,'2025-01-15','Crédito',8,'livro','76887690008',5);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-17 21:26:53
