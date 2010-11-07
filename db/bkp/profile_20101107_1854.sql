-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.6


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema eleicoes2010
--

CREATE DATABASE IF NOT EXISTS eleicoes2010;
USE eleicoes2010;

--
-- Definition of table `eleicoes2010`.`candidatos`
--

DROP TABLE IF EXISTS `eleicoes2010`.`candidatos`;
CREATE TABLE  `eleicoes2010`.`candidatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_candidato` int(11) DEFAULT NULL,
  `nome_urna` varchar(255) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `nome_completo` varchar(255) DEFAULT NULL,
  `data_nas` datetime DEFAULT NULL,
  `nacionalidade` varchar(255) DEFAULT NULL,
  `grau_instr` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `estado_civil` varchar(255) DEFAULT NULL,
  `naturalidade` varchar(255) DEFAULT NULL,
  `ocupacao` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleicoes2010`.`candidatos`
--

/*!40000 ALTER TABLE `candidatos` DISABLE KEYS */;
LOCK TABLES `candidatos` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `candidatos` ENABLE KEYS */;


--
-- Definition of table `eleicoes2010`.`eleitors`
--

DROP TABLE IF EXISTS `eleicoes2010`.`eleitors`;
CREATE TABLE  `eleicoes2010`.`eleitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tit_eleitor` int(11) DEFAULT NULL,
  `cod_secao` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `rg` int(11) DEFAULT NULL,
  `cod_bio` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleicoes2010`.`eleitors`
--

/*!40000 ALTER TABLE `eleitors` DISABLE KEYS */;
LOCK TABLES `eleitors` WRITE;
INSERT INTO `eleicoes2010`.`eleitors` VALUES  (1,123,123,'Rodrigo',214748364,214748364,'213123213','2010-11-02 15:17:03','2010-11-07 20:48:18','1988-10-12'),
 (2,144,345,'teste',2147483647,2147483647,'1231qwe','2010-11-07 20:49:08','2010-11-07 20:49:08','2010-11-07');
UNLOCK TABLES;
/*!40000 ALTER TABLE `eleitors` ENABLE KEYS */;


--
-- Definition of table `eleicoes2010`.`estados`
--

DROP TABLE IF EXISTS `eleicoes2010`.`estados`;
CREATE TABLE  `eleicoes2010`.`estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_est` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleicoes2010`.`estados`
--

/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
LOCK TABLES `estados` WRITE;
INSERT INTO `eleicoes2010`.`estados` VALUES  (1,'São Paulo','2010-09-21 12:04:22','2010-09-29 23:43:00'),
 (2,'Rio de Janeiro','2010-09-21 13:41:14','2010-09-21 13:41:14'),
 (4,'Paraíba','2010-09-29 23:43:23','2010-09-29 23:43:23'),
 (5,'Minas Gerais','2010-09-30 14:35:47','2010-09-30 14:35:47'),
 (6,'Mato Grosso','2010-09-30 23:01:49','2010-09-30 23:01:49'),
 (7,'Acre','2010-11-02 21:14:12','2010-11-02 21:14:12'),
 (8,'Amazonas','2010-11-02 21:14:24','2010-11-02 21:14:24'),
 (9,'Rondônia','2010-11-02 21:14:35','2010-11-02 21:14:35'),
 (10,'Roraima','2010-11-02 21:14:46','2010-11-02 21:14:46'),
 (11,'Amapá','2010-11-02 21:14:57','2010-11-02 21:14:57'),
 (12,'Pará','2010-11-02 21:21:03','2010-11-02 21:21:03'),
 (13,'Mato Grosso do Sul','2010-11-02 21:21:19','2010-11-02 21:21:19'),
 (14,'Tocantins','2010-11-02 21:21:29','2010-11-02 21:21:29'),
 (15,'Goiás','2010-11-02 21:21:37','2010-11-02 21:21:37'),
 (16,'Distrito Federal','2010-11-02 21:21:47','2010-11-02 21:21:47'),
 (17,'Maranhão','2010-11-02 21:21:58','2010-11-02 21:21:58'),
 (18,'Piaui','2010-11-02 21:22:07','2010-11-02 21:22:07'),
 (19,'Ceará','2010-11-02 21:22:17','2010-11-02 21:22:17'),
 (20,'Rio Grande do Norte','2010-11-02 21:22:30','2010-11-02 21:22:30'),
 (21,'Pernanbuco','2010-11-02 21:22:54','2010-11-02 21:22:54'),
 (22,'Alagoas','2010-11-02 21:23:11','2010-11-02 21:23:11'),
 (23,'Sergipe','2010-11-02 21:23:26','2010-11-02 21:23:26'),
 (24,'Bahia','2010-11-02 21:23:36','2010-11-02 21:23:36'),
 (25,'Espírito Santo','2010-11-02 21:23:53','2010-11-02 21:23:53'),
 (26,'Paraná','2010-11-02 21:24:07','2010-11-02 21:24:07'),
 (27,'Santa Catarina','2010-11-02 21:24:21','2010-11-02 21:24:21'),
 (28,'Rio Grande do Sul','2010-11-02 21:24:34','2010-11-02 21:24:34');
UNLOCK TABLES;
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;


--
-- Definition of table `eleicoes2010`.`municipios`
--

DROP TABLE IF EXISTS `eleicoes2010`.`municipios`;
CREATE TABLE  `eleicoes2010`.`municipios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_munic` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleicoes2010`.`municipios`
--

/*!40000 ALTER TABLE `municipios` DISABLE KEYS */;
LOCK TABLES `municipios` WRITE;
INSERT INTO `eleicoes2010`.`municipios` VALUES  (1,'São Paulo','2010-09-21 12:04:54','2010-09-21 12:04:54',1),
 (2,'Mairiporã','2010-09-30 14:18:57','2010-09-30 14:18:57',1),
 (3,'Rio de Janeiro','2010-09-30 22:39:32','2010-09-30 22:39:32',2),
 (4,'Santa Terezinha','2010-09-30 23:02:54','2010-09-30 23:02:54',6);
UNLOCK TABLES;
/*!40000 ALTER TABLE `municipios` ENABLE KEYS */;


--
-- Definition of table `eleicoes2010`.`partidos`
--

DROP TABLE IF EXISTS `eleicoes2010`.`partidos`;
CREATE TABLE  `eleicoes2010`.`partidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_partido` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `end_internet` varchar(255) DEFAULT NULL,
  `sigla` varchar(255) DEFAULT NULL,
  `comp_colig` varchar(255) DEFAULT NULL,
  `coligacao` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pres_nacional` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleicoes2010`.`partidos`
--

/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
LOCK TABLES `partidos` WRITE;
INSERT INTO `eleicoes2010`.`partidos` VALUES  (1,'PST','teste',123,'www.pst.gov.br','PST','tse','ptt','2010-09-30 22:19:44','2010-09-30 22:19:44','rodrigo');
UNLOCK TABLES;
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;


--
-- Definition of table `eleicoes2010`.`schema_migrations`
--

DROP TABLE IF EXISTS `eleicoes2010`.`schema_migrations`;
CREATE TABLE  `eleicoes2010`.`schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleicoes2010`.`schema_migrations`
--

/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
LOCK TABLES `schema_migrations` WRITE;
INSERT INTO `eleicoes2010`.`schema_migrations` VALUES  ('20100917193407'),
 ('20100921112201'),
 ('20100921114054'),
 ('20100921120657'),
 ('20100921134547'),
 ('20100923111427'),
 ('20100923111743'),
 ('20100923112500'),
 ('20100929233553'),
 ('20100930002327'),
 ('20100930144619'),
 ('20100930144929'),
 ('20100930150931'),
 ('20100930215207'),
 ('20100930221112'),
 ('20101102153822'),
 ('20101107201924'),
 ('20101107204456');
UNLOCK TABLES;
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


--
-- Definition of table `eleicoes2010`.`secaos`
--

DROP TABLE IF EXISTS `eleicoes2010`.`secaos`;
CREATE TABLE  `eleicoes2010`.`secaos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zona_id` int(11) DEFAULT NULL,
  `municipio_id` int(11) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `urna_id` int(11) DEFAULT NULL,
  `sala` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleicoes2010`.`secaos`
--

/*!40000 ALTER TABLE `secaos` DISABLE KEYS */;
LOCK TABLES `secaos` WRITE;
INSERT INTO `eleicoes2010`.`secaos` VALUES  (1,2,1,1,1,'122','2010-09-30 22:02:37','2010-10-01 14:10:31'),
 (2,2,4,6,1,'111','2010-09-30 23:05:16','2010-09-30 23:05:16'),
 (3,1,1,1,1,'21','2010-10-02 22:41:11','2010-10-02 22:41:11');
UNLOCK TABLES;
/*!40000 ALTER TABLE `secaos` ENABLE KEYS */;


--
-- Definition of table `eleicoes2010`.`urnas`
--

DROP TABLE IF EXISTS `eleicoes2010`.`urnas`;
CREATE TABLE  `eleicoes2010`.`urnas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partido_id` int(11) DEFAULT NULL,
  `candidato_id` int(11) DEFAULT NULL,
  `voto` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleicoes2010`.`urnas`
--

/*!40000 ALTER TABLE `urnas` DISABLE KEYS */;
LOCK TABLES `urnas` WRITE;
INSERT INTO `eleicoes2010`.`urnas` VALUES  (1,1,1,'1',NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `urnas` ENABLE KEYS */;


--
-- Definition of table `eleicoes2010`.`zonas`
--

DROP TABLE IF EXISTS `eleicoes2010`.`zonas`;
CREATE TABLE  `eleicoes2010`.`zonas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `municipio_id` int(11) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `nome_zona` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleicoes2010`.`zonas`
--

/*!40000 ALTER TABLE `zonas` DISABLE KEYS */;
LOCK TABLES `zonas` WRITE;
INSERT INTO `eleicoes2010`.`zonas` VALUES  (1,1,1,'231','2010-09-21 12:07:51','2010-09-21 12:07:51'),
 (2,4,6,'432','2010-09-30 23:04:33','2010-09-30 23:04:49');
UNLOCK TABLES;
/*!40000 ALTER TABLE `zonas` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
