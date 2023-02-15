CREATE DATABASE  IF NOT EXISTS `idar2022` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `idar2022`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: idar2022
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `aud_comercios`
--

DROP TABLE IF EXISTS `aud_comercios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aud_comercios` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `FechaAud` datetime NOT NULL,
  `UsuarioAud` varchar(30) NOT NULL,
  `IP` varchar(40) NOT NULL,
  `UserAgent` varchar(255) DEFAULT NULL,
  `Aplicacion` varchar(50) NOT NULL,
  `Motivo` varchar(100) DEFAULT NULL,
  `TipoAud` char(1) NOT NULL,
  `IdComercio` int NOT NULL,
  `Comercio` varchar(100) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `Localidad` varchar(100) NOT NULL,
  `EstadoComercio` char(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`),
  KEY `IX_IdComercio` (`IdComercio`)
) ENGINE=InnoDB AUTO_INCREMENT=591 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacena la auditoria de los comercios del sistema.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aud_comercios`
--

LOCK TABLES `aud_comercios` WRITE;
/*!40000 ALTER TABLE `aud_comercios` DISABLE KEYS */;
INSERT INTO `aud_comercios` VALUES (1,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',1,'Ipsum Leo Elementum LLP','3812352888','254-9561 Enim, Avenue','Słupsk','A'),(2,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',2,'Semper Dui Associates','3813377345','Ap #490-7082 Semper Road','Ebenthal in Kärnten','A'),(3,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',3,'Quam Vel Corp.','3815013727','Ap #977-2240 Libero Street','Carleton','B'),(4,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',4,'Consectetuer Ltd','3815824556','291-9233 Risus. St.','Cavasso Nuovo','B'),(5,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',5,'Consectetuer Rhoncus Institute','3817611742','455-6932 Luctus Street','Shaheed Benazirabad','B'),(6,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',6,'Laoreet Posuere Foundation','3817026385','P.O. Box 733, 4424 Ante Avenue','Huaraz','B'),(7,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',7,'A Corporation','3819688882','792-6175 Nullam Road','Beijing','A'),(8,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',8,'Mauris A Foundation','3817324734','862-9069 Integer Rd.','Palopo','B'),(9,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',9,'Urna Incorporated','3815616363','Ap #500-6021 Ac Road','Escalante','A'),(10,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',10,'Cum Sociis Industries','3812728769','Ap #818-7789 Pellentesque Avenue','Sicuani','A'),(11,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',11,'Vulputate Foundation','3816522147','P.O. Box 303, 7253 Sit Ave','Galway','A'),(12,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',12,'Ullamcorper Duis At Associates','3812116636','247-2942 Nec, Road','Ergani','A'),(13,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',13,'Enim Suspendisse Corp.','3816937132','870-9657 Auctor St.','Whyalla','B'),(14,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',14,'Leo LLP','3815982970','957-1106 Suspendisse Avenue','Sincelejo','A'),(15,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',15,'Molestie Pharetra Associates','3818854975','3613 Facilisi. Rd.','Buken','A'),(16,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',16,'Justo Proin Corp.','3815649725','Ap #328-9639 Nunc, Street','Buôn Ma Thuột','B'),(17,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',17,'Id Sapien Limited','3817401840','227-4472 Leo. Av.','Caruaru','A'),(18,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',18,'At Lacus LLC','3819135832','P.O. Box 498, 2978 Auctor Av.','Didim','A'),(19,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',19,'Vel Lectus Cum Institute','3811852441','628-6296 Non Av.','Tarma','A'),(20,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',20,'Cras Sed Industries','3816909305','Ap #150-8369 Eu Street','Kolhapur','B'),(21,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',21,'Mauris Corporation','3815583174','Ap #350-167 Fermentum Rd.','Murmansk','A'),(22,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',22,'Tincidunt Tempus Corporation','3814665821','Ap #885-9073 Cras Av.','Karapınar','B'),(23,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',23,'Lorem Donec Corp.','3815137121','Ap #623-7443 Tempor Av.','Kuruman','B'),(24,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',24,'Eget Volutpat Ornare Inc.','3815944585','P.O. Box 566, 2646 Dui, Rd.','Bengkulu','A'),(25,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',25,'Felis Foundation','3811765368','Ap #584-4322 Metus. Road','Cartagena','A'),(26,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',26,'Posuere At LLC','3814286308','749-6776 Sapien Rd.','Teruel','B'),(27,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',27,'Cras Lorem PC','3818137117','2507 Non, Rd.','Lagos','A'),(28,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',28,'Augue Malesuada Malesuada Corporation','3815738913','P.O. Box 808, 9379 Mattis. Rd.','Galway','A'),(29,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',29,'Purus Duis Industries','3811258482','424-9379 Nascetur Street','Seogwipo','A'),(30,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',30,'Quam Dignissim Ltd','3813816725','Ap #317-2497 Lorem, Rd.','Palma de Mallorca','B'),(31,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',31,'Ornare Institute','3813809408','6470 Torquent Road','Guápiles','B'),(32,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',32,'Amet Ante Associates','3816217435','189-5205 Nisl. Ave','Muradiye','A'),(33,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',33,'Mattis Semper Foundation','3815078235','P.O. Box 428, 2238 At Road','New Plymouth','B'),(34,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',34,'Vivamus Non Lorem Associates','3812923024','3531 Sociis Rd.','Geoje','B'),(35,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',35,'Pharetra Quisque Ac LLP','3814017887','P.O. Box 924, 9808 Ac Rd.','Auxerre','B'),(36,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',36,'Non Enim Commodo PC','3815681877','Ap #817-6717 Nulla. Street','Kitsman','B'),(37,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',37,'Dignissim Maecenas Foundation','3815346373','619-2085 Cursus Av.','Chortkiv','B'),(38,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',38,'Lacus Industries','3812261153','3025 Id St.','Belfast','B'),(39,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',39,'In Tempus Institute','3819551358','Ap #510-2077 Quisque Av.','Jurong West','B'),(40,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',40,'Dolor Nulla LLP','3818756311','Ap #576-1635 A Road','Denpasar','A'),(41,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',41,'Vestibulum Massa Institute','3815784113','8840 Dui Ave','Iligan','B'),(42,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',42,'Iaculis Aliquet Corporation','3817332114','P.O. Box 605, 4767 Vestibulum Ave','Arequipa','A'),(43,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',43,'Pede Sagittis PC','3810934806','4203 Mollis Street','Sakhalin','B'),(44,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',44,'Sed Eget Lacus Inc.','3815157690','9560 Donec Rd.','Białystok','A'),(45,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',45,'Ut Dolor Dapibus Incorporated','3810816847','Ap #892-3952 Sed Ave','Jammu','B'),(46,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',46,'Odio A Associates','3814252523','175-2945 Massa Av.','Timaru','A'),(47,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',47,'A Purus PC','3817936854','858-7726 Lobortis Rd.','Sangju','B'),(48,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',48,'Urna Ut Ltd','3817475527','280-3303 Etiam Av.','Changi','A'),(49,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',49,'Fermentum Convallis Ligula Inc.','3813713752','908-2548 Inceptos St.','Bremen','A'),(50,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',50,'Egestas Rhoncus Proin LLP','3811443694','Ap #349-5624 Magnis St.','Cusco','A'),(51,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',51,'Ut Institute','3819679352','Ap #744-3860 Nunc Rd.','Urbe','A'),(52,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',52,'Lorem Ipsum PC','3813210129','P.O. Box 839, 4678 Nisl. Road','Gasteiz','B'),(53,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',53,'Nam Interdum Corporation','3815825788','Ap #309-8599 Ornare. Av.','Awka','B'),(54,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',54,'Nibh Industries','3815546481','3550 Nulla Rd.','GomzŽ-Andoumont','A'),(55,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',55,'Lorem Fringilla Ornare Institute','3814453534','Ap #317-6503 Ullamcorper Road','Gunsan','B'),(56,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',56,'Dui Cras Pellentesque Inc.','3814565873','9692 Ante Road','Oslo','B'),(57,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',57,'Risus Morbi Institute','3813736131','367-1635 Cursus St.','Puerto Asís','B'),(58,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',58,'Pharetra Nibh Industries','3812084738','Ap #841-6009 Elit, St.','Kaliningrad','A'),(59,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',59,'Justo Praesent Corporation','3817222854','9305 Feugiat St.','Nicoya','A'),(60,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',60,'Dignissim Magna A Ltd','3811200501','P.O. Box 551, 8551 Aliquet Avenue','Uyo','B'),(61,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',61,'Massa Integer Incorporated','3813214439','5074 Mollis Avenue','Ceuta','A'),(62,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',62,'Tincidunt Adipiscing Consulting','3813614004','524-3539 In Rd.','Sichuan','A'),(63,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',63,'Lobortis Quam Associates','3810182541','Ap #484-1397 Faucibus Road','Melitopol','A'),(64,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',64,'Enim Consequat Incorporated','3817755514','571-2667 Rutrum, Rd.','Turrialba','B'),(65,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',65,'Varius Incorporated','3816756081','749-9467 Lacus Rd.','Aguacaliente (San Francisco]','B'),(66,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',66,'Dolor Incorporated','3812547858','2008 Morbi Av.','Kupang','B'),(67,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',67,'Sem Eget Incorporated','3811755603','8115 Mauris St.','Montignies-sur-Sambre','A'),(68,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',68,'Elit Dictum Associates','3814184123','Ap #354-4059 Cursus St.','Quetta','B'),(69,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',69,'Arcu Aliquam Limited','3815435550','270-7523 In St.','Alajuela','B'),(70,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',70,'Proin Dolor Institute','3816039421','Ap #916-7340 Odio. St.','Upplands Väsby','A'),(71,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',71,'Tortor At Risus Foundation','3811326788','568-5569 Leo, Avenue','Vierzon','A'),(72,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',72,'Quisque Varius Nam Foundation','3814819034','535-6805 Fusce Street','Maule','B'),(73,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',73,'Et Libero Proin Institute','3814554345','750-9892 Bibendum Av.','Umlazi','B'),(74,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',74,'Urna Ut Inc.','3811075588','200-4724 Ante Av.','Belfast','A'),(75,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',75,'Sit Amet LLC','3812158342','P.O. Box 883, 9994 Elit, Street','Galway','B'),(76,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',76,'Sapien Cras Limited','3811822345','782 Diam Ave','Western Islands','A'),(77,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',77,'Ut Industries','3811250640','8239 Non, Av.','Edremit','B'),(78,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',78,'Venenatis Lacus Corp.','3818972548','5328 Augue. Road','Ozamiz','B'),(79,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',79,'Curae Phasellus Associates','3817830871','520-7977 Laoreet, Rd.','Deline','A'),(80,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',80,'Fusce Mollis Duis Ltd','3815538938','572-1839 Nec Street','Ghizer','A'),(81,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',81,'Risus Donec Incorporated','3818147232','P.O. Box 690, 7215 Quisque Avenue','Bengkulu','A'),(82,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',82,'Vehicula Et LLC','3816888155','214-9423 Litora Rd.','Piura','A'),(83,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',83,'Mi Associates','3810816231','Ap #698-3359 Ullamcorper Street','Cork','B'),(84,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',84,'Augue Malesuada Institute','3813033337','Ap #503-1803 Eget Av.','Baasrode','A'),(85,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',85,'Torquent Per LLP','3815904481','P.O. Box 367, 6642 Ultricies St.','Maracanaú','B'),(86,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',86,'Vitae Diam Proin Incorporated','3810674435','8291 Eleifend, Road','Carmarthen','B'),(87,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',87,'Vestibulum Lorem Incorporated','3815121732','Ap #902-9777 Molestie Rd.','Söderhamn','B'),(88,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',88,'Facilisis Vitae Inc.','3813987637','616-6869 Consectetuer Rd.','Aurora','B'),(89,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',89,'Euismod In LLP','3816778583','Ap #799-3220 Congue Road','Telfs','B'),(90,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',90,'Mi Aliquam LLC','3818952008','779-5144 Dolor, St.','Hamilton','B'),(91,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',91,'Et Libero Corp.','3818436548','P.O. Box 364, 5611 Curabitur Road','Helensburgh','A'),(92,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',92,'Donec Inc.','3815614008','784-4266 Dolor Ave','Kırıkhan','B'),(93,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',93,'Eu Nulla At Corp.','3811742195','808-6009 Congue, St.','Tanjay','A'),(94,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',94,'Enim Curabitur LLC','3813264542','P.O. Box 332, 9138 Non, St.','Amiens','B'),(95,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',95,'At Pretium Aliquet Corporation','3810302532','Ap #316-9703 Sodales. Street','Whittlesey','A'),(96,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',96,'Dolor Elit Pellentesque Incorporated','3814762842','Ap #882-4586 Eu Rd.','Vallentuna','A'),(97,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',97,'Phasellus Dapibus Quam Consulting','3813295861','P.O. Box 669, 1996 Ante Rd.','Gorinchem','A'),(98,'2023-02-14 17:38:34','root','localhost',NULL,'localhost',NULL,'B',98,'Ornare Fusce Mollis Consulting','3816997403','Ap #562-1702 Tempus Road','Pitt Meadows','B'),(99,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',1,'Ipsum Leo Elementum LLP','3812352888','254-9561 Enim, Avenue','Słupsk','A'),(100,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',2,'Semper Dui Associates','3813377345','Ap #490-7082 Semper Road','Ebenthal in Kärnten','A'),(101,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',3,'Quam Vel Corp.','3815013727','Ap #977-2240 Libero Street','Carleton','B'),(102,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',4,'Consectetuer Ltd','3815824556','291-9233 Risus. St.','Cavasso Nuovo','B'),(103,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',5,'Consectetuer Rhoncus Institute','3817611742','455-6932 Luctus Street','Shaheed Benazirabad','B'),(104,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',6,'Laoreet Posuere Foundation','3817026385','P.O. Box 733, 4424 Ante Avenue','Huaraz','B'),(105,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',7,'A Corporation','3819688882','792-6175 Nullam Road','Beijing','A'),(106,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',8,'Mauris A Foundation','3817324734','862-9069 Integer Rd.','Palopo','B'),(107,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',9,'Urna Incorporated','3815616363','Ap #500-6021 Ac Road','Escalante','A'),(108,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',10,'Cum Sociis Industries','3812728769','Ap #818-7789 Pellentesque Avenue','Sicuani','A'),(109,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',11,'Vulputate Foundation','3816522147','P.O. Box 303, 7253 Sit Ave','Galway','A'),(110,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',12,'Ullamcorper Duis At Associates','3812116636','247-2942 Nec, Road','Ergani','A'),(111,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',13,'Enim Suspendisse Corp.','3816937132','870-9657 Auctor St.','Whyalla','B'),(112,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',14,'Leo LLP','3815982970','957-1106 Suspendisse Avenue','Sincelejo','A'),(113,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',15,'Molestie Pharetra Associates','3818854975','3613 Facilisi. Rd.','Buken','A'),(114,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',16,'Justo Proin Corp.','3815649725','Ap #328-9639 Nunc, Street','Buôn Ma Thuột','B'),(115,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',17,'Id Sapien Limited','3817401840','227-4472 Leo. Av.','Caruaru','A'),(116,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',18,'At Lacus LLC','3819135832','P.O. Box 498, 2978 Auctor Av.','Didim','A'),(117,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',19,'Vel Lectus Cum Institute','3811852441','628-6296 Non Av.','Tarma','A'),(118,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',20,'Cras Sed Industries','3816909305','Ap #150-8369 Eu Street','Kolhapur','B'),(119,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',21,'Mauris Corporation','3815583174','Ap #350-167 Fermentum Rd.','Murmansk','A'),(120,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',22,'Tincidunt Tempus Corporation','3814665821','Ap #885-9073 Cras Av.','Karapınar','B'),(121,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',23,'Lorem Donec Corp.','3815137121','Ap #623-7443 Tempor Av.','Kuruman','B'),(122,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',24,'Eget Volutpat Ornare Inc.','3815944585','P.O. Box 566, 2646 Dui, Rd.','Bengkulu','A'),(123,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',25,'Felis Foundation','3811765368','Ap #584-4322 Metus. Road','Cartagena','A'),(124,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',26,'Posuere At LLC','3814286308','749-6776 Sapien Rd.','Teruel','B'),(125,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',27,'Cras Lorem PC','3818137117','2507 Non, Rd.','Lagos','A'),(126,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',28,'Augue Malesuada Malesuada Corporation','3815738913','P.O. Box 808, 9379 Mattis. Rd.','Galway','A'),(127,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',29,'Purus Duis Industries','3811258482','424-9379 Nascetur Street','Seogwipo','A'),(128,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',30,'Quam Dignissim Ltd','3813816725','Ap #317-2497 Lorem, Rd.','Palma de Mallorca','B'),(129,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',31,'Ornare Institute','3813809408','6470 Torquent Road','Guápiles','B'),(130,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',32,'Amet Ante Associates','3816217435','189-5205 Nisl. Ave','Muradiye','A'),(131,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',33,'Mattis Semper Foundation','3815078235','P.O. Box 428, 2238 At Road','New Plymouth','B'),(132,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',34,'Vivamus Non Lorem Associates','3812923024','3531 Sociis Rd.','Geoje','B'),(133,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',35,'Pharetra Quisque Ac LLP','3814017887','P.O. Box 924, 9808 Ac Rd.','Auxerre','B'),(134,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',36,'Non Enim Commodo PC','3815681877','Ap #817-6717 Nulla. Street','Kitsman','B'),(135,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',37,'Dignissim Maecenas Foundation','3815346373','619-2085 Cursus Av.','Chortkiv','B'),(136,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',38,'Lacus Industries','3812261153','3025 Id St.','Belfast','B'),(137,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',39,'In Tempus Institute','3819551358','Ap #510-2077 Quisque Av.','Jurong West','B'),(138,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',40,'Dolor Nulla LLP','3818756311','Ap #576-1635 A Road','Denpasar','A'),(139,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',41,'Vestibulum Massa Institute','3815784113','8840 Dui Ave','Iligan','B'),(140,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',42,'Iaculis Aliquet Corporation','3817332114','P.O. Box 605, 4767 Vestibulum Ave','Arequipa','A'),(141,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',43,'Pede Sagittis PC','3810934806','4203 Mollis Street','Sakhalin','B'),(142,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',44,'Sed Eget Lacus Inc.','3815157690','9560 Donec Rd.','Białystok','A'),(143,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',45,'Ut Dolor Dapibus Incorporated','3810816847','Ap #892-3952 Sed Ave','Jammu','B'),(144,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',46,'Odio A Associates','3814252523','175-2945 Massa Av.','Timaru','A'),(145,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',47,'A Purus PC','3817936854','858-7726 Lobortis Rd.','Sangju','B'),(146,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',48,'Urna Ut Ltd','3817475527','280-3303 Etiam Av.','Changi','A'),(147,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',49,'Fermentum Convallis Ligula Inc.','3813713752','908-2548 Inceptos St.','Bremen','A'),(148,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',50,'Egestas Rhoncus Proin LLP','3811443694','Ap #349-5624 Magnis St.','Cusco','A'),(149,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',51,'Ut Institute','3819679352','Ap #744-3860 Nunc Rd.','Urbe','A'),(150,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',52,'Lorem Ipsum PC','3813210129','P.O. Box 839, 4678 Nisl. Road','Gasteiz','B'),(151,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',53,'Nam Interdum Corporation','3815825788','Ap #309-8599 Ornare. Av.','Awka','B'),(152,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',54,'Nibh Industries','3815546481','3550 Nulla Rd.','GomzŽ-Andoumont','A'),(153,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',55,'Lorem Fringilla Ornare Institute','3814453534','Ap #317-6503 Ullamcorper Road','Gunsan','B'),(154,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',56,'Dui Cras Pellentesque Inc.','3814565873','9692 Ante Road','Oslo','B'),(155,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',57,'Risus Morbi Institute','3813736131','367-1635 Cursus St.','Puerto Asís','B'),(156,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',58,'Pharetra Nibh Industries','3812084738','Ap #841-6009 Elit, St.','Kaliningrad','A'),(157,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',59,'Justo Praesent Corporation','3817222854','9305 Feugiat St.','Nicoya','A'),(158,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',60,'Dignissim Magna A Ltd','3811200501','P.O. Box 551, 8551 Aliquet Avenue','Uyo','B'),(159,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',61,'Massa Integer Incorporated','3813214439','5074 Mollis Avenue','Ceuta','A'),(160,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',62,'Tincidunt Adipiscing Consulting','3813614004','524-3539 In Rd.','Sichuan','A'),(161,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',63,'Lobortis Quam Associates','3810182541','Ap #484-1397 Faucibus Road','Melitopol','A'),(162,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',64,'Enim Consequat Incorporated','3817755514','571-2667 Rutrum, Rd.','Turrialba','B'),(163,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',65,'Varius Incorporated','3816756081','749-9467 Lacus Rd.','Aguacaliente (San Francisco]','B'),(164,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',66,'Dolor Incorporated','3812547858','2008 Morbi Av.','Kupang','B'),(165,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',67,'Sem Eget Incorporated','3811755603','8115 Mauris St.','Montignies-sur-Sambre','A'),(166,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',68,'Elit Dictum Associates','3814184123','Ap #354-4059 Cursus St.','Quetta','B'),(167,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',69,'Arcu Aliquam Limited','3815435550','270-7523 In St.','Alajuela','B'),(168,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',70,'Proin Dolor Institute','3816039421','Ap #916-7340 Odio. St.','Upplands Väsby','A'),(169,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',71,'Tortor At Risus Foundation','3811326788','568-5569 Leo, Avenue','Vierzon','A'),(170,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',72,'Quisque Varius Nam Foundation','3814819034','535-6805 Fusce Street','Maule','B'),(171,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',73,'Et Libero Proin Institute','3814554345','750-9892 Bibendum Av.','Umlazi','B'),(172,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',74,'Urna Ut Inc.','3811075588','200-4724 Ante Av.','Belfast','A'),(173,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',75,'Sit Amet LLC','3812158342','P.O. Box 883, 9994 Elit, Street','Galway','B'),(174,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',76,'Sapien Cras Limited','3811822345','782 Diam Ave','Western Islands','A'),(175,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',77,'Ut Industries','3811250640','8239 Non, Av.','Edremit','B'),(176,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',78,'Venenatis Lacus Corp.','3818972548','5328 Augue. Road','Ozamiz','B'),(177,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',79,'Curae Phasellus Associates','3817830871','520-7977 Laoreet, Rd.','Deline','A'),(178,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',80,'Fusce Mollis Duis Ltd','3815538938','572-1839 Nec Street','Ghizer','A'),(179,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',81,'Risus Donec Incorporated','3818147232','P.O. Box 690, 7215 Quisque Avenue','Bengkulu','A'),(180,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',82,'Vehicula Et LLC','3816888155','214-9423 Litora Rd.','Piura','A'),(181,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',83,'Mi Associates','3810816231','Ap #698-3359 Ullamcorper Street','Cork','B'),(182,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',84,'Augue Malesuada Institute','3813033337','Ap #503-1803 Eget Av.','Baasrode','A'),(183,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',85,'Torquent Per LLP','3815904481','P.O. Box 367, 6642 Ultricies St.','Maracanaú','B'),(184,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',86,'Vitae Diam Proin Incorporated','3810674435','8291 Eleifend, Road','Carmarthen','B'),(185,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',87,'Vestibulum Lorem Incorporated','3815121732','Ap #902-9777 Molestie Rd.','Söderhamn','B'),(186,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',88,'Facilisis Vitae Inc.','3813987637','616-6869 Consectetuer Rd.','Aurora','B'),(187,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',89,'Euismod In LLP','3816778583','Ap #799-3220 Congue Road','Telfs','B'),(188,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',90,'Mi Aliquam LLC','3818952008','779-5144 Dolor, St.','Hamilton','B'),(189,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',91,'Et Libero Corp.','3818436548','P.O. Box 364, 5611 Curabitur Road','Helensburgh','A'),(190,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',92,'Donec Inc.','3815614008','784-4266 Dolor Ave','Kırıkhan','B'),(191,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',93,'Eu Nulla At Corp.','3811742195','808-6009 Congue, St.','Tanjay','A'),(192,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',94,'Enim Curabitur LLC','3813264542','P.O. Box 332, 9138 Non, St.','Amiens','B'),(193,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',95,'At Pretium Aliquet Corporation','3810302532','Ap #316-9703 Sodales. Street','Whittlesey','A'),(194,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',96,'Dolor Elit Pellentesque Incorporated','3814762842','Ap #882-4586 Eu Rd.','Vallentuna','A'),(195,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',97,'Phasellus Dapibus Quam Consulting','3813295861','P.O. Box 669, 1996 Ante Rd.','Gorinchem','A'),(196,'2023-02-14 17:38:35','root','localhost',NULL,'localhost',NULL,'I',98,'Ornare Fusce Mollis Consulting','3816997403','Ap #562-1702 Tempus Road','Pitt Meadows','B'),(197,'2023-02-14 17:42:49','root','localhost',NULL,'localhost',NULL,'A',4,'Consectetuer Ltd','3815824556','291-9233 Risus. St.','Cavasso Nuovo','B'),(198,'2023-02-14 17:42:49','root','localhost',NULL,'localhost',NULL,'D',4,'Pichilandia','1234','Thames 2645','San miguel de Tucuman','B'),(199,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',1,'Ipsum Leo Elementum LLP','3812352888','254-9561 Enim, Avenue','Słupsk','A'),(200,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',2,'Semper Dui Associates','3813377345','Ap #490-7082 Semper Road','Ebenthal in Kärnten','A'),(201,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',3,'Quam Vel Corp.','3815013727','Ap #977-2240 Libero Street','Carleton','B'),(202,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',4,'Pichilandia','1234','Thames 2645','San miguel de Tucuman','B'),(203,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',5,'Consectetuer Rhoncus Institute','3817611742','455-6932 Luctus Street','Shaheed Benazirabad','B'),(204,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',6,'Laoreet Posuere Foundation','3817026385','P.O. Box 733, 4424 Ante Avenue','Huaraz','B'),(205,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',7,'A Corporation','3819688882','792-6175 Nullam Road','Beijing','A'),(206,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',8,'Mauris A Foundation','3817324734','862-9069 Integer Rd.','Palopo','B'),(207,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',9,'Urna Incorporated','3815616363','Ap #500-6021 Ac Road','Escalante','A'),(208,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',10,'Cum Sociis Industries','3812728769','Ap #818-7789 Pellentesque Avenue','Sicuani','A'),(209,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',11,'Vulputate Foundation','3816522147','P.O. Box 303, 7253 Sit Ave','Galway','A'),(210,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',12,'Ullamcorper Duis At Associates','3812116636','247-2942 Nec, Road','Ergani','A'),(211,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',13,'Enim Suspendisse Corp.','3816937132','870-9657 Auctor St.','Whyalla','B'),(212,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',14,'Leo LLP','3815982970','957-1106 Suspendisse Avenue','Sincelejo','A'),(213,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',15,'Molestie Pharetra Associates','3818854975','3613 Facilisi. Rd.','Buken','A'),(214,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',16,'Justo Proin Corp.','3815649725','Ap #328-9639 Nunc, Street','Buôn Ma Thuột','B'),(215,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',17,'Id Sapien Limited','3817401840','227-4472 Leo. Av.','Caruaru','A'),(216,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',18,'At Lacus LLC','3819135832','P.O. Box 498, 2978 Auctor Av.','Didim','A'),(217,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',19,'Vel Lectus Cum Institute','3811852441','628-6296 Non Av.','Tarma','A'),(218,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',20,'Cras Sed Industries','3816909305','Ap #150-8369 Eu Street','Kolhapur','B'),(219,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',21,'Mauris Corporation','3815583174','Ap #350-167 Fermentum Rd.','Murmansk','A'),(220,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',22,'Tincidunt Tempus Corporation','3814665821','Ap #885-9073 Cras Av.','Karapınar','B'),(221,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',23,'Lorem Donec Corp.','3815137121','Ap #623-7443 Tempor Av.','Kuruman','B'),(222,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',24,'Eget Volutpat Ornare Inc.','3815944585','P.O. Box 566, 2646 Dui, Rd.','Bengkulu','A'),(223,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',25,'Felis Foundation','3811765368','Ap #584-4322 Metus. Road','Cartagena','A'),(224,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',26,'Posuere At LLC','3814286308','749-6776 Sapien Rd.','Teruel','B'),(225,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',27,'Cras Lorem PC','3818137117','2507 Non, Rd.','Lagos','A'),(226,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',28,'Augue Malesuada Malesuada Corporation','3815738913','P.O. Box 808, 9379 Mattis. Rd.','Galway','A'),(227,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',29,'Purus Duis Industries','3811258482','424-9379 Nascetur Street','Seogwipo','A'),(228,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',30,'Quam Dignissim Ltd','3813816725','Ap #317-2497 Lorem, Rd.','Palma de Mallorca','B'),(229,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',31,'Ornare Institute','3813809408','6470 Torquent Road','Guápiles','B'),(230,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',32,'Amet Ante Associates','3816217435','189-5205 Nisl. Ave','Muradiye','A'),(231,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',33,'Mattis Semper Foundation','3815078235','P.O. Box 428, 2238 At Road','New Plymouth','B'),(232,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',34,'Vivamus Non Lorem Associates','3812923024','3531 Sociis Rd.','Geoje','B'),(233,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',35,'Pharetra Quisque Ac LLP','3814017887','P.O. Box 924, 9808 Ac Rd.','Auxerre','B'),(234,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',36,'Non Enim Commodo PC','3815681877','Ap #817-6717 Nulla. Street','Kitsman','B'),(235,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',37,'Dignissim Maecenas Foundation','3815346373','619-2085 Cursus Av.','Chortkiv','B'),(236,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',38,'Lacus Industries','3812261153','3025 Id St.','Belfast','B'),(237,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',39,'In Tempus Institute','3819551358','Ap #510-2077 Quisque Av.','Jurong West','B'),(238,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',40,'Dolor Nulla LLP','3818756311','Ap #576-1635 A Road','Denpasar','A'),(239,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',41,'Vestibulum Massa Institute','3815784113','8840 Dui Ave','Iligan','B'),(240,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',42,'Iaculis Aliquet Corporation','3817332114','P.O. Box 605, 4767 Vestibulum Ave','Arequipa','A'),(241,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',43,'Pede Sagittis PC','3810934806','4203 Mollis Street','Sakhalin','B'),(242,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',44,'Sed Eget Lacus Inc.','3815157690','9560 Donec Rd.','Białystok','A'),(243,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',45,'Ut Dolor Dapibus Incorporated','3810816847','Ap #892-3952 Sed Ave','Jammu','B'),(244,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',46,'Odio A Associates','3814252523','175-2945 Massa Av.','Timaru','A'),(245,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',47,'A Purus PC','3817936854','858-7726 Lobortis Rd.','Sangju','B'),(246,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',48,'Urna Ut Ltd','3817475527','280-3303 Etiam Av.','Changi','A'),(247,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',49,'Fermentum Convallis Ligula Inc.','3813713752','908-2548 Inceptos St.','Bremen','A'),(248,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',50,'Egestas Rhoncus Proin LLP','3811443694','Ap #349-5624 Magnis St.','Cusco','A'),(249,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',51,'Ut Institute','3819679352','Ap #744-3860 Nunc Rd.','Urbe','A'),(250,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',52,'Lorem Ipsum PC','3813210129','P.O. Box 839, 4678 Nisl. Road','Gasteiz','B'),(251,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',53,'Nam Interdum Corporation','3815825788','Ap #309-8599 Ornare. Av.','Awka','B'),(252,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',54,'Nibh Industries','3815546481','3550 Nulla Rd.','GomzŽ-Andoumont','A'),(253,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',55,'Lorem Fringilla Ornare Institute','3814453534','Ap #317-6503 Ullamcorper Road','Gunsan','B'),(254,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',56,'Dui Cras Pellentesque Inc.','3814565873','9692 Ante Road','Oslo','B'),(255,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',57,'Risus Morbi Institute','3813736131','367-1635 Cursus St.','Puerto Asís','B'),(256,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',58,'Pharetra Nibh Industries','3812084738','Ap #841-6009 Elit, St.','Kaliningrad','A'),(257,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',59,'Justo Praesent Corporation','3817222854','9305 Feugiat St.','Nicoya','A'),(258,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',60,'Dignissim Magna A Ltd','3811200501','P.O. Box 551, 8551 Aliquet Avenue','Uyo','B'),(259,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',61,'Massa Integer Incorporated','3813214439','5074 Mollis Avenue','Ceuta','A'),(260,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',62,'Tincidunt Adipiscing Consulting','3813614004','524-3539 In Rd.','Sichuan','A'),(261,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',63,'Lobortis Quam Associates','3810182541','Ap #484-1397 Faucibus Road','Melitopol','A'),(262,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',64,'Enim Consequat Incorporated','3817755514','571-2667 Rutrum, Rd.','Turrialba','B'),(263,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',65,'Varius Incorporated','3816756081','749-9467 Lacus Rd.','Aguacaliente (San Francisco]','B'),(264,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',66,'Dolor Incorporated','3812547858','2008 Morbi Av.','Kupang','B'),(265,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',67,'Sem Eget Incorporated','3811755603','8115 Mauris St.','Montignies-sur-Sambre','A'),(266,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',68,'Elit Dictum Associates','3814184123','Ap #354-4059 Cursus St.','Quetta','B'),(267,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',69,'Arcu Aliquam Limited','3815435550','270-7523 In St.','Alajuela','B'),(268,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',70,'Proin Dolor Institute','3816039421','Ap #916-7340 Odio. St.','Upplands Väsby','A'),(269,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',71,'Tortor At Risus Foundation','3811326788','568-5569 Leo, Avenue','Vierzon','A'),(270,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',72,'Quisque Varius Nam Foundation','3814819034','535-6805 Fusce Street','Maule','B'),(271,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',73,'Et Libero Proin Institute','3814554345','750-9892 Bibendum Av.','Umlazi','B'),(272,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',74,'Urna Ut Inc.','3811075588','200-4724 Ante Av.','Belfast','A'),(273,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',75,'Sit Amet LLC','3812158342','P.O. Box 883, 9994 Elit, Street','Galway','B'),(274,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',76,'Sapien Cras Limited','3811822345','782 Diam Ave','Western Islands','A'),(275,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',77,'Ut Industries','3811250640','8239 Non, Av.','Edremit','B'),(276,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',78,'Venenatis Lacus Corp.','3818972548','5328 Augue. Road','Ozamiz','B'),(277,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',79,'Curae Phasellus Associates','3817830871','520-7977 Laoreet, Rd.','Deline','A'),(278,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',80,'Fusce Mollis Duis Ltd','3815538938','572-1839 Nec Street','Ghizer','A'),(279,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',81,'Risus Donec Incorporated','3818147232','P.O. Box 690, 7215 Quisque Avenue','Bengkulu','A'),(280,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',82,'Vehicula Et LLC','3816888155','214-9423 Litora Rd.','Piura','A'),(281,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',83,'Mi Associates','3810816231','Ap #698-3359 Ullamcorper Street','Cork','B'),(282,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',84,'Augue Malesuada Institute','3813033337','Ap #503-1803 Eget Av.','Baasrode','A'),(283,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',85,'Torquent Per LLP','3815904481','P.O. Box 367, 6642 Ultricies St.','Maracanaú','B'),(284,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',86,'Vitae Diam Proin Incorporated','3810674435','8291 Eleifend, Road','Carmarthen','B'),(285,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',87,'Vestibulum Lorem Incorporated','3815121732','Ap #902-9777 Molestie Rd.','Söderhamn','B'),(286,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',88,'Facilisis Vitae Inc.','3813987637','616-6869 Consectetuer Rd.','Aurora','B'),(287,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',89,'Euismod In LLP','3816778583','Ap #799-3220 Congue Road','Telfs','B'),(288,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',90,'Mi Aliquam LLC','3818952008','779-5144 Dolor, St.','Hamilton','B'),(289,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',91,'Et Libero Corp.','3818436548','P.O. Box 364, 5611 Curabitur Road','Helensburgh','A'),(290,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',92,'Donec Inc.','3815614008','784-4266 Dolor Ave','Kırıkhan','B'),(291,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',93,'Eu Nulla At Corp.','3811742195','808-6009 Congue, St.','Tanjay','A'),(292,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',94,'Enim Curabitur LLC','3813264542','P.O. Box 332, 9138 Non, St.','Amiens','B'),(293,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',95,'At Pretium Aliquet Corporation','3810302532','Ap #316-9703 Sodales. Street','Whittlesey','A'),(294,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',96,'Dolor Elit Pellentesque Incorporated','3814762842','Ap #882-4586 Eu Rd.','Vallentuna','A'),(295,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',97,'Phasellus Dapibus Quam Consulting','3813295861','P.O. Box 669, 1996 Ante Rd.','Gorinchem','A'),(296,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'B',98,'Ornare Fusce Mollis Consulting','3816997403','Ap #562-1702 Tempus Road','Pitt Meadows','B'),(297,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',1,'Ipsum Leo Elementum LLP','3812352888','254-9561 Enim, Avenue','Słupsk','A'),(298,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',2,'Semper Dui Associates','3813377345','Ap #490-7082 Semper Road','Ebenthal in Kärnten','A'),(299,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',3,'Quam Vel Corp.','3815013727','Ap #977-2240 Libero Street','Carleton','B'),(300,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',4,'Consectetuer Ltd','3815824556','291-9233 Risus. St.','Cavasso Nuovo','B'),(301,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',5,'Consectetuer Rhoncus Institute','3817611742','455-6932 Luctus Street','Shaheed Benazirabad','B'),(302,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',6,'Laoreet Posuere Foundation','3817026385','P.O. Box 733, 4424 Ante Avenue','Huaraz','B'),(303,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',7,'A Corporation','3819688882','792-6175 Nullam Road','Beijing','A'),(304,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',8,'Mauris A Foundation','3817324734','862-9069 Integer Rd.','Palopo','B'),(305,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',9,'Urna Incorporated','3815616363','Ap #500-6021 Ac Road','Escalante','A'),(306,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',10,'Cum Sociis Industries','3812728769','Ap #818-7789 Pellentesque Avenue','Sicuani','A'),(307,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',11,'Vulputate Foundation','3816522147','P.O. Box 303, 7253 Sit Ave','Galway','A'),(308,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',12,'Ullamcorper Duis At Associates','3812116636','247-2942 Nec, Road','Ergani','A'),(309,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',13,'Enim Suspendisse Corp.','3816937132','870-9657 Auctor St.','Whyalla','B'),(310,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',14,'Leo LLP','3815982970','957-1106 Suspendisse Avenue','Sincelejo','A'),(311,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',15,'Molestie Pharetra Associates','3818854975','3613 Facilisi. Rd.','Buken','A'),(312,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',16,'Justo Proin Corp.','3815649725','Ap #328-9639 Nunc, Street','Buôn Ma Thuột','B'),(313,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',17,'Id Sapien Limited','3817401840','227-4472 Leo. Av.','Caruaru','A'),(314,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',18,'At Lacus LLC','3819135832','P.O. Box 498, 2978 Auctor Av.','Didim','A'),(315,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',19,'Vel Lectus Cum Institute','3811852441','628-6296 Non Av.','Tarma','A'),(316,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',20,'Cras Sed Industries','3816909305','Ap #150-8369 Eu Street','Kolhapur','B'),(317,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',21,'Mauris Corporation','3815583174','Ap #350-167 Fermentum Rd.','Murmansk','A'),(318,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',22,'Tincidunt Tempus Corporation','3814665821','Ap #885-9073 Cras Av.','Karapınar','B'),(319,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',23,'Lorem Donec Corp.','3815137121','Ap #623-7443 Tempor Av.','Kuruman','B'),(320,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',24,'Eget Volutpat Ornare Inc.','3815944585','P.O. Box 566, 2646 Dui, Rd.','Bengkulu','A'),(321,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',25,'Felis Foundation','3811765368','Ap #584-4322 Metus. Road','Cartagena','A'),(322,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',26,'Posuere At LLC','3814286308','749-6776 Sapien Rd.','Teruel','B'),(323,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',27,'Cras Lorem PC','3818137117','2507 Non, Rd.','Lagos','A'),(324,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',28,'Augue Malesuada Malesuada Corporation','3815738913','P.O. Box 808, 9379 Mattis. Rd.','Galway','A'),(325,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',29,'Purus Duis Industries','3811258482','424-9379 Nascetur Street','Seogwipo','A'),(326,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',30,'Quam Dignissim Ltd','3813816725','Ap #317-2497 Lorem, Rd.','Palma de Mallorca','B'),(327,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',31,'Ornare Institute','3813809408','6470 Torquent Road','Guápiles','B'),(328,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',32,'Amet Ante Associates','3816217435','189-5205 Nisl. Ave','Muradiye','A'),(329,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',33,'Mattis Semper Foundation','3815078235','P.O. Box 428, 2238 At Road','New Plymouth','B'),(330,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',34,'Vivamus Non Lorem Associates','3812923024','3531 Sociis Rd.','Geoje','B'),(331,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',35,'Pharetra Quisque Ac LLP','3814017887','P.O. Box 924, 9808 Ac Rd.','Auxerre','B'),(332,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',36,'Non Enim Commodo PC','3815681877','Ap #817-6717 Nulla. Street','Kitsman','B'),(333,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',37,'Dignissim Maecenas Foundation','3815346373','619-2085 Cursus Av.','Chortkiv','B'),(334,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',38,'Lacus Industries','3812261153','3025 Id St.','Belfast','B'),(335,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',39,'In Tempus Institute','3819551358','Ap #510-2077 Quisque Av.','Jurong West','B'),(336,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',40,'Dolor Nulla LLP','3818756311','Ap #576-1635 A Road','Denpasar','A'),(337,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',41,'Vestibulum Massa Institute','3815784113','8840 Dui Ave','Iligan','B'),(338,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',42,'Iaculis Aliquet Corporation','3817332114','P.O. Box 605, 4767 Vestibulum Ave','Arequipa','A'),(339,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',43,'Pede Sagittis PC','3810934806','4203 Mollis Street','Sakhalin','B'),(340,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',44,'Sed Eget Lacus Inc.','3815157690','9560 Donec Rd.','Białystok','A'),(341,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',45,'Ut Dolor Dapibus Incorporated','3810816847','Ap #892-3952 Sed Ave','Jammu','B'),(342,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',46,'Odio A Associates','3814252523','175-2945 Massa Av.','Timaru','A'),(343,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',47,'A Purus PC','3817936854','858-7726 Lobortis Rd.','Sangju','B'),(344,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',48,'Urna Ut Ltd','3817475527','280-3303 Etiam Av.','Changi','A'),(345,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',49,'Fermentum Convallis Ligula Inc.','3813713752','908-2548 Inceptos St.','Bremen','A'),(346,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',50,'Egestas Rhoncus Proin LLP','3811443694','Ap #349-5624 Magnis St.','Cusco','A'),(347,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',51,'Ut Institute','3819679352','Ap #744-3860 Nunc Rd.','Urbe','A'),(348,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',52,'Lorem Ipsum PC','3813210129','P.O. Box 839, 4678 Nisl. Road','Gasteiz','B'),(349,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',53,'Nam Interdum Corporation','3815825788','Ap #309-8599 Ornare. Av.','Awka','B'),(350,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',54,'Nibh Industries','3815546481','3550 Nulla Rd.','GomzŽ-Andoumont','A'),(351,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',55,'Lorem Fringilla Ornare Institute','3814453534','Ap #317-6503 Ullamcorper Road','Gunsan','B'),(352,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',56,'Dui Cras Pellentesque Inc.','3814565873','9692 Ante Road','Oslo','B'),(353,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',57,'Risus Morbi Institute','3813736131','367-1635 Cursus St.','Puerto Asís','B'),(354,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',58,'Pharetra Nibh Industries','3812084738','Ap #841-6009 Elit, St.','Kaliningrad','A'),(355,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',59,'Justo Praesent Corporation','3817222854','9305 Feugiat St.','Nicoya','A'),(356,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',60,'Dignissim Magna A Ltd','3811200501','P.O. Box 551, 8551 Aliquet Avenue','Uyo','B'),(357,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',61,'Massa Integer Incorporated','3813214439','5074 Mollis Avenue','Ceuta','A'),(358,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',62,'Tincidunt Adipiscing Consulting','3813614004','524-3539 In Rd.','Sichuan','A'),(359,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',63,'Lobortis Quam Associates','3810182541','Ap #484-1397 Faucibus Road','Melitopol','A'),(360,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',64,'Enim Consequat Incorporated','3817755514','571-2667 Rutrum, Rd.','Turrialba','B'),(361,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',65,'Varius Incorporated','3816756081','749-9467 Lacus Rd.','Aguacaliente (San Francisco]','B'),(362,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',66,'Dolor Incorporated','3812547858','2008 Morbi Av.','Kupang','B'),(363,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',67,'Sem Eget Incorporated','3811755603','8115 Mauris St.','Montignies-sur-Sambre','A'),(364,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',68,'Elit Dictum Associates','3814184123','Ap #354-4059 Cursus St.','Quetta','B'),(365,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',69,'Arcu Aliquam Limited','3815435550','270-7523 In St.','Alajuela','B'),(366,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',70,'Proin Dolor Institute','3816039421','Ap #916-7340 Odio. St.','Upplands Väsby','A'),(367,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',71,'Tortor At Risus Foundation','3811326788','568-5569 Leo, Avenue','Vierzon','A'),(368,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',72,'Quisque Varius Nam Foundation','3814819034','535-6805 Fusce Street','Maule','B'),(369,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',73,'Et Libero Proin Institute','3814554345','750-9892 Bibendum Av.','Umlazi','B'),(370,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',74,'Urna Ut Inc.','3811075588','200-4724 Ante Av.','Belfast','A'),(371,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',75,'Sit Amet LLC','3812158342','P.O. Box 883, 9994 Elit, Street','Galway','B'),(372,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',76,'Sapien Cras Limited','3811822345','782 Diam Ave','Western Islands','A'),(373,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',77,'Ut Industries','3811250640','8239 Non, Av.','Edremit','B'),(374,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',78,'Venenatis Lacus Corp.','3818972548','5328 Augue. Road','Ozamiz','B'),(375,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',79,'Curae Phasellus Associates','3817830871','520-7977 Laoreet, Rd.','Deline','A'),(376,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',80,'Fusce Mollis Duis Ltd','3815538938','572-1839 Nec Street','Ghizer','A'),(377,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',81,'Risus Donec Incorporated','3818147232','P.O. Box 690, 7215 Quisque Avenue','Bengkulu','A'),(378,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',82,'Vehicula Et LLC','3816888155','214-9423 Litora Rd.','Piura','A'),(379,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',83,'Mi Associates','3810816231','Ap #698-3359 Ullamcorper Street','Cork','B'),(380,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',84,'Augue Malesuada Institute','3813033337','Ap #503-1803 Eget Av.','Baasrode','A'),(381,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',85,'Torquent Per LLP','3815904481','P.O. Box 367, 6642 Ultricies St.','Maracanaú','B'),(382,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',86,'Vitae Diam Proin Incorporated','3810674435','8291 Eleifend, Road','Carmarthen','B'),(383,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',87,'Vestibulum Lorem Incorporated','3815121732','Ap #902-9777 Molestie Rd.','Söderhamn','B'),(384,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',88,'Facilisis Vitae Inc.','3813987637','616-6869 Consectetuer Rd.','Aurora','B'),(385,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',89,'Euismod In LLP','3816778583','Ap #799-3220 Congue Road','Telfs','B'),(386,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',90,'Mi Aliquam LLC','3818952008','779-5144 Dolor, St.','Hamilton','B'),(387,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',91,'Et Libero Corp.','3818436548','P.O. Box 364, 5611 Curabitur Road','Helensburgh','A'),(388,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',92,'Donec Inc.','3815614008','784-4266 Dolor Ave','Kırıkhan','B'),(389,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',93,'Eu Nulla At Corp.','3811742195','808-6009 Congue, St.','Tanjay','A'),(390,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',94,'Enim Curabitur LLC','3813264542','P.O. Box 332, 9138 Non, St.','Amiens','B'),(391,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',95,'At Pretium Aliquet Corporation','3810302532','Ap #316-9703 Sodales. Street','Whittlesey','A'),(392,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',96,'Dolor Elit Pellentesque Incorporated','3814762842','Ap #882-4586 Eu Rd.','Vallentuna','A'),(393,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',97,'Phasellus Dapibus Quam Consulting','3813295861','P.O. Box 669, 1996 Ante Rd.','Gorinchem','A'),(394,'2023-02-14 23:59:58','root','localhost',NULL,'localhost',NULL,'I',98,'Ornare Fusce Mollis Consulting','3816997403','Ap #562-1702 Tempus Road','Pitt Meadows','B'),(395,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',1,'Ipsum Leo Elementum LLP','3812352888','254-9561 Enim, Avenue','Słupsk','A'),(396,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',2,'Semper Dui Associates','3813377345','Ap #490-7082 Semper Road','Ebenthal in Kärnten','A'),(397,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',3,'Quam Vel Corp.','3815013727','Ap #977-2240 Libero Street','Carleton','B'),(398,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',4,'Consectetuer Ltd','3815824556','291-9233 Risus. St.','Cavasso Nuovo','B'),(399,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',5,'Consectetuer Rhoncus Institute','3817611742','455-6932 Luctus Street','Shaheed Benazirabad','B'),(400,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',6,'Laoreet Posuere Foundation','3817026385','P.O. Box 733, 4424 Ante Avenue','Huaraz','B'),(401,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',7,'A Corporation','3819688882','792-6175 Nullam Road','Beijing','A'),(402,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',8,'Mauris A Foundation','3817324734','862-9069 Integer Rd.','Palopo','B'),(403,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',9,'Urna Incorporated','3815616363','Ap #500-6021 Ac Road','Escalante','A'),(404,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',10,'Cum Sociis Industries','3812728769','Ap #818-7789 Pellentesque Avenue','Sicuani','A'),(405,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',11,'Vulputate Foundation','3816522147','P.O. Box 303, 7253 Sit Ave','Galway','A'),(406,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',12,'Ullamcorper Duis At Associates','3812116636','247-2942 Nec, Road','Ergani','A'),(407,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',13,'Enim Suspendisse Corp.','3816937132','870-9657 Auctor St.','Whyalla','B'),(408,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',14,'Leo LLP','3815982970','957-1106 Suspendisse Avenue','Sincelejo','A'),(409,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',15,'Molestie Pharetra Associates','3818854975','3613 Facilisi. Rd.','Buken','A'),(410,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',16,'Justo Proin Corp.','3815649725','Ap #328-9639 Nunc, Street','Buôn Ma Thuột','B'),(411,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',17,'Id Sapien Limited','3817401840','227-4472 Leo. Av.','Caruaru','A'),(412,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',18,'At Lacus LLC','3819135832','P.O. Box 498, 2978 Auctor Av.','Didim','A'),(413,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',19,'Vel Lectus Cum Institute','3811852441','628-6296 Non Av.','Tarma','A'),(414,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',20,'Cras Sed Industries','3816909305','Ap #150-8369 Eu Street','Kolhapur','B'),(415,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',21,'Mauris Corporation','3815583174','Ap #350-167 Fermentum Rd.','Murmansk','A'),(416,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',22,'Tincidunt Tempus Corporation','3814665821','Ap #885-9073 Cras Av.','Karapınar','B'),(417,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',23,'Lorem Donec Corp.','3815137121','Ap #623-7443 Tempor Av.','Kuruman','B'),(418,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',24,'Eget Volutpat Ornare Inc.','3815944585','P.O. Box 566, 2646 Dui, Rd.','Bengkulu','A'),(419,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',25,'Felis Foundation','3811765368','Ap #584-4322 Metus. Road','Cartagena','A'),(420,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',26,'Posuere At LLC','3814286308','749-6776 Sapien Rd.','Teruel','B'),(421,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',27,'Cras Lorem PC','3818137117','2507 Non, Rd.','Lagos','A'),(422,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',28,'Augue Malesuada Malesuada Corporation','3815738913','P.O. Box 808, 9379 Mattis. Rd.','Galway','A'),(423,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',29,'Purus Duis Industries','3811258482','424-9379 Nascetur Street','Seogwipo','A'),(424,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',30,'Quam Dignissim Ltd','3813816725','Ap #317-2497 Lorem, Rd.','Palma de Mallorca','B'),(425,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',31,'Ornare Institute','3813809408','6470 Torquent Road','Guápiles','B'),(426,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',32,'Amet Ante Associates','3816217435','189-5205 Nisl. Ave','Muradiye','A'),(427,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',33,'Mattis Semper Foundation','3815078235','P.O. Box 428, 2238 At Road','New Plymouth','B'),(428,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',34,'Vivamus Non Lorem Associates','3812923024','3531 Sociis Rd.','Geoje','B'),(429,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',35,'Pharetra Quisque Ac LLP','3814017887','P.O. Box 924, 9808 Ac Rd.','Auxerre','B'),(430,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',36,'Non Enim Commodo PC','3815681877','Ap #817-6717 Nulla. Street','Kitsman','B'),(431,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',37,'Dignissim Maecenas Foundation','3815346373','619-2085 Cursus Av.','Chortkiv','B'),(432,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',38,'Lacus Industries','3812261153','3025 Id St.','Belfast','B'),(433,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',39,'In Tempus Institute','3819551358','Ap #510-2077 Quisque Av.','Jurong West','B'),(434,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',40,'Dolor Nulla LLP','3818756311','Ap #576-1635 A Road','Denpasar','A'),(435,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',41,'Vestibulum Massa Institute','3815784113','8840 Dui Ave','Iligan','B'),(436,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',42,'Iaculis Aliquet Corporation','3817332114','P.O. Box 605, 4767 Vestibulum Ave','Arequipa','A'),(437,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',43,'Pede Sagittis PC','3810934806','4203 Mollis Street','Sakhalin','B'),(438,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',44,'Sed Eget Lacus Inc.','3815157690','9560 Donec Rd.','Białystok','A'),(439,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',45,'Ut Dolor Dapibus Incorporated','3810816847','Ap #892-3952 Sed Ave','Jammu','B'),(440,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',46,'Odio A Associates','3814252523','175-2945 Massa Av.','Timaru','A'),(441,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',47,'A Purus PC','3817936854','858-7726 Lobortis Rd.','Sangju','B'),(442,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',48,'Urna Ut Ltd','3817475527','280-3303 Etiam Av.','Changi','A'),(443,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',49,'Fermentum Convallis Ligula Inc.','3813713752','908-2548 Inceptos St.','Bremen','A'),(444,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',50,'Egestas Rhoncus Proin LLP','3811443694','Ap #349-5624 Magnis St.','Cusco','A'),(445,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',51,'Ut Institute','3819679352','Ap #744-3860 Nunc Rd.','Urbe','A'),(446,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',52,'Lorem Ipsum PC','3813210129','P.O. Box 839, 4678 Nisl. Road','Gasteiz','B'),(447,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',53,'Nam Interdum Corporation','3815825788','Ap #309-8599 Ornare. Av.','Awka','B'),(448,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',54,'Nibh Industries','3815546481','3550 Nulla Rd.','GomzŽ-Andoumont','A'),(449,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',55,'Lorem Fringilla Ornare Institute','3814453534','Ap #317-6503 Ullamcorper Road','Gunsan','B'),(450,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',56,'Dui Cras Pellentesque Inc.','3814565873','9692 Ante Road','Oslo','B'),(451,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',57,'Risus Morbi Institute','3813736131','367-1635 Cursus St.','Puerto Asís','B'),(452,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',58,'Pharetra Nibh Industries','3812084738','Ap #841-6009 Elit, St.','Kaliningrad','A'),(453,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',59,'Justo Praesent Corporation','3817222854','9305 Feugiat St.','Nicoya','A'),(454,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',60,'Dignissim Magna A Ltd','3811200501','P.O. Box 551, 8551 Aliquet Avenue','Uyo','B'),(455,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',61,'Massa Integer Incorporated','3813214439','5074 Mollis Avenue','Ceuta','A'),(456,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',62,'Tincidunt Adipiscing Consulting','3813614004','524-3539 In Rd.','Sichuan','A'),(457,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',63,'Lobortis Quam Associates','3810182541','Ap #484-1397 Faucibus Road','Melitopol','A'),(458,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',64,'Enim Consequat Incorporated','3817755514','571-2667 Rutrum, Rd.','Turrialba','B'),(459,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',65,'Varius Incorporated','3816756081','749-9467 Lacus Rd.','Aguacaliente (San Francisco]','B'),(460,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',66,'Dolor Incorporated','3812547858','2008 Morbi Av.','Kupang','B'),(461,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',67,'Sem Eget Incorporated','3811755603','8115 Mauris St.','Montignies-sur-Sambre','A'),(462,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',68,'Elit Dictum Associates','3814184123','Ap #354-4059 Cursus St.','Quetta','B'),(463,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',69,'Arcu Aliquam Limited','3815435550','270-7523 In St.','Alajuela','B'),(464,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',70,'Proin Dolor Institute','3816039421','Ap #916-7340 Odio. St.','Upplands Väsby','A'),(465,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',71,'Tortor At Risus Foundation','3811326788','568-5569 Leo, Avenue','Vierzon','A'),(466,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',72,'Quisque Varius Nam Foundation','3814819034','535-6805 Fusce Street','Maule','B'),(467,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',73,'Et Libero Proin Institute','3814554345','750-9892 Bibendum Av.','Umlazi','B'),(468,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',74,'Urna Ut Inc.','3811075588','200-4724 Ante Av.','Belfast','A'),(469,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',75,'Sit Amet LLC','3812158342','P.O. Box 883, 9994 Elit, Street','Galway','B'),(470,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',76,'Sapien Cras Limited','3811822345','782 Diam Ave','Western Islands','A'),(471,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',77,'Ut Industries','3811250640','8239 Non, Av.','Edremit','B'),(472,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',78,'Venenatis Lacus Corp.','3818972548','5328 Augue. Road','Ozamiz','B'),(473,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',79,'Curae Phasellus Associates','3817830871','520-7977 Laoreet, Rd.','Deline','A'),(474,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',80,'Fusce Mollis Duis Ltd','3815538938','572-1839 Nec Street','Ghizer','A'),(475,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',81,'Risus Donec Incorporated','3818147232','P.O. Box 690, 7215 Quisque Avenue','Bengkulu','A'),(476,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',82,'Vehicula Et LLC','3816888155','214-9423 Litora Rd.','Piura','A'),(477,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',83,'Mi Associates','3810816231','Ap #698-3359 Ullamcorper Street','Cork','B'),(478,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',84,'Augue Malesuada Institute','3813033337','Ap #503-1803 Eget Av.','Baasrode','A'),(479,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',85,'Torquent Per LLP','3815904481','P.O. Box 367, 6642 Ultricies St.','Maracanaú','B'),(480,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',86,'Vitae Diam Proin Incorporated','3810674435','8291 Eleifend, Road','Carmarthen','B'),(481,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',87,'Vestibulum Lorem Incorporated','3815121732','Ap #902-9777 Molestie Rd.','Söderhamn','B'),(482,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',88,'Facilisis Vitae Inc.','3813987637','616-6869 Consectetuer Rd.','Aurora','B'),(483,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',89,'Euismod In LLP','3816778583','Ap #799-3220 Congue Road','Telfs','B'),(484,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',90,'Mi Aliquam LLC','3818952008','779-5144 Dolor, St.','Hamilton','B'),(485,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',91,'Et Libero Corp.','3818436548','P.O. Box 364, 5611 Curabitur Road','Helensburgh','A'),(486,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',92,'Donec Inc.','3815614008','784-4266 Dolor Ave','Kırıkhan','B'),(487,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',93,'Eu Nulla At Corp.','3811742195','808-6009 Congue, St.','Tanjay','A'),(488,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',94,'Enim Curabitur LLC','3813264542','P.O. Box 332, 9138 Non, St.','Amiens','B'),(489,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',95,'At Pretium Aliquet Corporation','3810302532','Ap #316-9703 Sodales. Street','Whittlesey','A'),(490,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',96,'Dolor Elit Pellentesque Incorporated','3814762842','Ap #882-4586 Eu Rd.','Vallentuna','A'),(491,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',97,'Phasellus Dapibus Quam Consulting','3813295861','P.O. Box 669, 1996 Ante Rd.','Gorinchem','A'),(492,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'B',98,'Ornare Fusce Mollis Consulting','3816997403','Ap #562-1702 Tempus Road','Pitt Meadows','B'),(493,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',1,'Ipsum Leo Elementum LLP','3812352888','254-9561 Enim, Avenue','Słupsk','A'),(494,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',2,'Semper Dui Associates','3813377345','Ap #490-7082 Semper Road','Ebenthal in Kärnten','A'),(495,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',3,'Quam Vel Corp.','3815013727','Ap #977-2240 Libero Street','Carleton','B'),(496,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',4,'Consectetuer Ltd','3815824556','291-9233 Risus. St.','Cavasso Nuovo','B'),(497,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',5,'Consectetuer Rhoncus Institute','3817611742','455-6932 Luctus Street','Shaheed Benazirabad','B'),(498,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',6,'Laoreet Posuere Foundation','3817026385','P.O. Box 733, 4424 Ante Avenue','Huaraz','B'),(499,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',7,'A Corporation','3819688882','792-6175 Nullam Road','Beijing','A'),(500,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',8,'Mauris A Foundation','3817324734','862-9069 Integer Rd.','Palopo','B'),(501,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',9,'Urna Incorporated','3815616363','Ap #500-6021 Ac Road','Escalante','A'),(502,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',10,'Cum Sociis Industries','3812728769','Ap #818-7789 Pellentesque Avenue','Sicuani','A'),(503,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',11,'Vulputate Foundation','3816522147','P.O. Box 303, 7253 Sit Ave','Galway','A'),(504,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',12,'Ullamcorper Duis At Associates','3812116636','247-2942 Nec, Road','Ergani','A'),(505,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',13,'Enim Suspendisse Corp.','3816937132','870-9657 Auctor St.','Whyalla','B'),(506,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',14,'Leo LLP','3815982970','957-1106 Suspendisse Avenue','Sincelejo','A'),(507,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',15,'Molestie Pharetra Associates','3818854975','3613 Facilisi. Rd.','Buken','A'),(508,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',16,'Justo Proin Corp.','3815649725','Ap #328-9639 Nunc, Street','Buôn Ma Thuột','B'),(509,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',17,'Id Sapien Limited','3817401840','227-4472 Leo. Av.','Caruaru','A'),(510,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',18,'At Lacus LLC','3819135832','P.O. Box 498, 2978 Auctor Av.','Didim','A'),(511,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',19,'Vel Lectus Cum Institute','3811852441','628-6296 Non Av.','Tarma','A'),(512,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',20,'Cras Sed Industries','3816909305','Ap #150-8369 Eu Street','Kolhapur','B'),(513,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',21,'Mauris Corporation','3815583174','Ap #350-167 Fermentum Rd.','Murmansk','A'),(514,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',22,'Tincidunt Tempus Corporation','3814665821','Ap #885-9073 Cras Av.','Karapınar','B'),(515,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',23,'Lorem Donec Corp.','3815137121','Ap #623-7443 Tempor Av.','Kuruman','B'),(516,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',24,'Eget Volutpat Ornare Inc.','3815944585','P.O. Box 566, 2646 Dui, Rd.','Bengkulu','A'),(517,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',25,'Felis Foundation','3811765368','Ap #584-4322 Metus. Road','Cartagena','A'),(518,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',26,'Posuere At LLC','3814286308','749-6776 Sapien Rd.','Teruel','B'),(519,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',27,'Cras Lorem PC','3818137117','2507 Non, Rd.','Lagos','A'),(520,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',28,'Augue Malesuada Malesuada Corporation','3815738913','P.O. Box 808, 9379 Mattis. Rd.','Galway','A'),(521,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',29,'Purus Duis Industries','3811258482','424-9379 Nascetur Street','Seogwipo','A'),(522,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',30,'Quam Dignissim Ltd','3813816725','Ap #317-2497 Lorem, Rd.','Palma de Mallorca','B'),(523,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',31,'Ornare Institute','3813809408','6470 Torquent Road','Guápiles','B'),(524,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',32,'Amet Ante Associates','3816217435','189-5205 Nisl. Ave','Muradiye','A'),(525,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',33,'Mattis Semper Foundation','3815078235','P.O. Box 428, 2238 At Road','New Plymouth','B'),(526,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',34,'Vivamus Non Lorem Associates','3812923024','3531 Sociis Rd.','Geoje','B'),(527,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',35,'Pharetra Quisque Ac LLP','3814017887','P.O. Box 924, 9808 Ac Rd.','Auxerre','B'),(528,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',36,'Non Enim Commodo PC','3815681877','Ap #817-6717 Nulla. Street','Kitsman','B'),(529,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',37,'Dignissim Maecenas Foundation','3815346373','619-2085 Cursus Av.','Chortkiv','B'),(530,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',38,'Lacus Industries','3812261153','3025 Id St.','Belfast','B'),(531,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',39,'In Tempus Institute','3819551358','Ap #510-2077 Quisque Av.','Jurong West','B'),(532,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',40,'Dolor Nulla LLP','3818756311','Ap #576-1635 A Road','Denpasar','A'),(533,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',41,'Vestibulum Massa Institute','3815784113','8840 Dui Ave','Iligan','B'),(534,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',42,'Iaculis Aliquet Corporation','3817332114','P.O. Box 605, 4767 Vestibulum Ave','Arequipa','A'),(535,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',43,'Pede Sagittis PC','3810934806','4203 Mollis Street','Sakhalin','B'),(536,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',44,'Sed Eget Lacus Inc.','3815157690','9560 Donec Rd.','Białystok','A'),(537,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',45,'Ut Dolor Dapibus Incorporated','3810816847','Ap #892-3952 Sed Ave','Jammu','B'),(538,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',46,'Odio A Associates','3814252523','175-2945 Massa Av.','Timaru','A'),(539,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',47,'A Purus PC','3817936854','858-7726 Lobortis Rd.','Sangju','B'),(540,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',48,'Urna Ut Ltd','3817475527','280-3303 Etiam Av.','Changi','A'),(541,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',49,'Fermentum Convallis Ligula Inc.','3813713752','908-2548 Inceptos St.','Bremen','A'),(542,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',50,'Egestas Rhoncus Proin LLP','3811443694','Ap #349-5624 Magnis St.','Cusco','A'),(543,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',51,'Ut Institute','3819679352','Ap #744-3860 Nunc Rd.','Urbe','A'),(544,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',52,'Lorem Ipsum PC','3813210129','P.O. Box 839, 4678 Nisl. Road','Gasteiz','B'),(545,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',53,'Nam Interdum Corporation','3815825788','Ap #309-8599 Ornare. Av.','Awka','B'),(546,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',54,'Nibh Industries','3815546481','3550 Nulla Rd.','GomzŽ-Andoumont','A'),(547,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',55,'Lorem Fringilla Ornare Institute','3814453534','Ap #317-6503 Ullamcorper Road','Gunsan','B'),(548,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',56,'Dui Cras Pellentesque Inc.','3814565873','9692 Ante Road','Oslo','B'),(549,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',57,'Risus Morbi Institute','3813736131','367-1635 Cursus St.','Puerto Asís','B'),(550,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',58,'Pharetra Nibh Industries','3812084738','Ap #841-6009 Elit, St.','Kaliningrad','A'),(551,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',59,'Justo Praesent Corporation','3817222854','9305 Feugiat St.','Nicoya','A'),(552,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',60,'Dignissim Magna A Ltd','3811200501','P.O. Box 551, 8551 Aliquet Avenue','Uyo','B'),(553,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',61,'Massa Integer Incorporated','3813214439','5074 Mollis Avenue','Ceuta','A'),(554,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',62,'Tincidunt Adipiscing Consulting','3813614004','524-3539 In Rd.','Sichuan','A'),(555,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',63,'Lobortis Quam Associates','3810182541','Ap #484-1397 Faucibus Road','Melitopol','A'),(556,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',64,'Enim Consequat Incorporated','3817755514','571-2667 Rutrum, Rd.','Turrialba','B'),(557,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',65,'Varius Incorporated','3816756081','749-9467 Lacus Rd.','Aguacaliente (San Francisco]','B'),(558,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',66,'Dolor Incorporated','3812547858','2008 Morbi Av.','Kupang','B'),(559,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',67,'Sem Eget Incorporated','3811755603','8115 Mauris St.','Montignies-sur-Sambre','A'),(560,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',68,'Elit Dictum Associates','3814184123','Ap #354-4059 Cursus St.','Quetta','B'),(561,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',69,'Arcu Aliquam Limited','3815435550','270-7523 In St.','Alajuela','B'),(562,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',70,'Proin Dolor Institute','3816039421','Ap #916-7340 Odio. St.','Upplands Väsby','A'),(563,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',71,'Tortor At Risus Foundation','3811326788','568-5569 Leo, Avenue','Vierzon','A'),(564,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',72,'Quisque Varius Nam Foundation','3814819034','535-6805 Fusce Street','Maule','B'),(565,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',73,'Et Libero Proin Institute','3814554345','750-9892 Bibendum Av.','Umlazi','B'),(566,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',74,'Urna Ut Inc.','3811075588','200-4724 Ante Av.','Belfast','A'),(567,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',75,'Sit Amet LLC','3812158342','P.O. Box 883, 9994 Elit, Street','Galway','B'),(568,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',76,'Sapien Cras Limited','3811822345','782 Diam Ave','Western Islands','A'),(569,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',77,'Ut Industries','3811250640','8239 Non, Av.','Edremit','B'),(570,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',78,'Venenatis Lacus Corp.','3818972548','5328 Augue. Road','Ozamiz','B'),(571,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',79,'Curae Phasellus Associates','3817830871','520-7977 Laoreet, Rd.','Deline','A'),(572,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',80,'Fusce Mollis Duis Ltd','3815538938','572-1839 Nec Street','Ghizer','A'),(573,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',81,'Risus Donec Incorporated','3818147232','P.O. Box 690, 7215 Quisque Avenue','Bengkulu','A'),(574,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',82,'Vehicula Et LLC','3816888155','214-9423 Litora Rd.','Piura','A'),(575,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',83,'Mi Associates','3810816231','Ap #698-3359 Ullamcorper Street','Cork','B'),(576,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',84,'Augue Malesuada Institute','3813033337','Ap #503-1803 Eget Av.','Baasrode','A'),(577,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',85,'Torquent Per LLP','3815904481','P.O. Box 367, 6642 Ultricies St.','Maracanaú','B'),(578,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',86,'Vitae Diam Proin Incorporated','3810674435','8291 Eleifend, Road','Carmarthen','B'),(579,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',87,'Vestibulum Lorem Incorporated','3815121732','Ap #902-9777 Molestie Rd.','Söderhamn','B'),(580,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',88,'Facilisis Vitae Inc.','3813987637','616-6869 Consectetuer Rd.','Aurora','B'),(581,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',89,'Euismod In LLP','3816778583','Ap #799-3220 Congue Road','Telfs','B'),(582,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',90,'Mi Aliquam LLC','3818952008','779-5144 Dolor, St.','Hamilton','B'),(583,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',91,'Et Libero Corp.','3818436548','P.O. Box 364, 5611 Curabitur Road','Helensburgh','A'),(584,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',92,'Donec Inc.','3815614008','784-4266 Dolor Ave','Kırıkhan','B'),(585,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',93,'Eu Nulla At Corp.','3811742195','808-6009 Congue, St.','Tanjay','A'),(586,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',94,'Enim Curabitur LLC','3813264542','P.O. Box 332, 9138 Non, St.','Amiens','B'),(587,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',95,'At Pretium Aliquet Corporation','3810302532','Ap #316-9703 Sodales. Street','Whittlesey','A'),(588,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',96,'Dolor Elit Pellentesque Incorporated','3814762842','Ap #882-4586 Eu Rd.','Vallentuna','A'),(589,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',97,'Phasellus Dapibus Quam Consulting','3813295861','P.O. Box 669, 1996 Ante Rd.','Gorinchem','A'),(590,'2023-02-15 00:40:38','root','localhost',NULL,'localhost',NULL,'I',98,'Ornare Fusce Mollis Consulting','3816997403','Ap #562-1702 Tempus Road','Pitt Meadows','B');
/*!40000 ALTER TABLE `aud_comercios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comercios`
--

DROP TABLE IF EXISTS `comercios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comercios` (
  `IdComercio` int NOT NULL AUTO_INCREMENT,
  `Comercio` varchar(100) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `Localidad` varchar(100) NOT NULL,
  `EstadoComercio` char(1) NOT NULL,
  PRIMARY KEY (`IdComercio`),
  UNIQUE KEY `UI_Comercio` (`Comercio`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comercios`
--

LOCK TABLES `comercios` WRITE;
/*!40000 ALTER TABLE `comercios` DISABLE KEYS */;
INSERT INTO `comercios` VALUES (1,'Ipsum Leo Elementum LLP','3812352888','254-9561 Enim, Avenue','Słupsk','A'),(2,'Semper Dui Associates','3813377345','Ap #490-7082 Semper Road','Ebenthal in Kärnten','A'),(3,'Quam Vel Corp.','3815013727','Ap #977-2240 Libero Street','Carleton','B'),(4,'Consectetuer Ltd','3815824556','291-9233 Risus. St.','Cavasso Nuovo','B'),(5,'Consectetuer Rhoncus Institute','3817611742','455-6932 Luctus Street','Shaheed Benazirabad','B'),(6,'Laoreet Posuere Foundation','3817026385','P.O. Box 733, 4424 Ante Avenue','Huaraz','B'),(7,'A Corporation','3819688882','792-6175 Nullam Road','Beijing','A'),(8,'Mauris A Foundation','3817324734','862-9069 Integer Rd.','Palopo','B'),(9,'Urna Incorporated','3815616363','Ap #500-6021 Ac Road','Escalante','A'),(10,'Cum Sociis Industries','3812728769','Ap #818-7789 Pellentesque Avenue','Sicuani','A'),(11,'Vulputate Foundation','3816522147','P.O. Box 303, 7253 Sit Ave','Galway','A'),(12,'Ullamcorper Duis At Associates','3812116636','247-2942 Nec, Road','Ergani','A'),(13,'Enim Suspendisse Corp.','3816937132','870-9657 Auctor St.','Whyalla','B'),(14,'Leo LLP','3815982970','957-1106 Suspendisse Avenue','Sincelejo','A'),(15,'Molestie Pharetra Associates','3818854975','3613 Facilisi. Rd.','Buken','A'),(16,'Justo Proin Corp.','3815649725','Ap #328-9639 Nunc, Street','Buôn Ma Thuột','B'),(17,'Id Sapien Limited','3817401840','227-4472 Leo. Av.','Caruaru','A'),(18,'At Lacus LLC','3819135832','P.O. Box 498, 2978 Auctor Av.','Didim','A'),(19,'Vel Lectus Cum Institute','3811852441','628-6296 Non Av.','Tarma','A'),(20,'Cras Sed Industries','3816909305','Ap #150-8369 Eu Street','Kolhapur','B'),(21,'Mauris Corporation','3815583174','Ap #350-167 Fermentum Rd.','Murmansk','A'),(22,'Tincidunt Tempus Corporation','3814665821','Ap #885-9073 Cras Av.','Karapınar','B'),(23,'Lorem Donec Corp.','3815137121','Ap #623-7443 Tempor Av.','Kuruman','B'),(24,'Eget Volutpat Ornare Inc.','3815944585','P.O. Box 566, 2646 Dui, Rd.','Bengkulu','A'),(25,'Felis Foundation','3811765368','Ap #584-4322 Metus. Road','Cartagena','A'),(26,'Posuere At LLC','3814286308','749-6776 Sapien Rd.','Teruel','B'),(27,'Cras Lorem PC','3818137117','2507 Non, Rd.','Lagos','A'),(28,'Augue Malesuada Malesuada Corporation','3815738913','P.O. Box 808, 9379 Mattis. Rd.','Galway','A'),(29,'Purus Duis Industries','3811258482','424-9379 Nascetur Street','Seogwipo','A'),(30,'Quam Dignissim Ltd','3813816725','Ap #317-2497 Lorem, Rd.','Palma de Mallorca','B'),(31,'Ornare Institute','3813809408','6470 Torquent Road','Guápiles','B'),(32,'Amet Ante Associates','3816217435','189-5205 Nisl. Ave','Muradiye','A'),(33,'Mattis Semper Foundation','3815078235','P.O. Box 428, 2238 At Road','New Plymouth','B'),(34,'Vivamus Non Lorem Associates','3812923024','3531 Sociis Rd.','Geoje','B'),(35,'Pharetra Quisque Ac LLP','3814017887','P.O. Box 924, 9808 Ac Rd.','Auxerre','B'),(36,'Non Enim Commodo PC','3815681877','Ap #817-6717 Nulla. Street','Kitsman','B'),(37,'Dignissim Maecenas Foundation','3815346373','619-2085 Cursus Av.','Chortkiv','B'),(38,'Lacus Industries','3812261153','3025 Id St.','Belfast','B'),(39,'In Tempus Institute','3819551358','Ap #510-2077 Quisque Av.','Jurong West','B'),(40,'Dolor Nulla LLP','3818756311','Ap #576-1635 A Road','Denpasar','A'),(41,'Vestibulum Massa Institute','3815784113','8840 Dui Ave','Iligan','B'),(42,'Iaculis Aliquet Corporation','3817332114','P.O. Box 605, 4767 Vestibulum Ave','Arequipa','A'),(43,'Pede Sagittis PC','3810934806','4203 Mollis Street','Sakhalin','B'),(44,'Sed Eget Lacus Inc.','3815157690','9560 Donec Rd.','Białystok','A'),(45,'Ut Dolor Dapibus Incorporated','3810816847','Ap #892-3952 Sed Ave','Jammu','B'),(46,'Odio A Associates','3814252523','175-2945 Massa Av.','Timaru','A'),(47,'A Purus PC','3817936854','858-7726 Lobortis Rd.','Sangju','B'),(48,'Urna Ut Ltd','3817475527','280-3303 Etiam Av.','Changi','A'),(49,'Fermentum Convallis Ligula Inc.','3813713752','908-2548 Inceptos St.','Bremen','A'),(50,'Egestas Rhoncus Proin LLP','3811443694','Ap #349-5624 Magnis St.','Cusco','A'),(51,'Ut Institute','3819679352','Ap #744-3860 Nunc Rd.','Urbe','A'),(52,'Lorem Ipsum PC','3813210129','P.O. Box 839, 4678 Nisl. Road','Gasteiz','B'),(53,'Nam Interdum Corporation','3815825788','Ap #309-8599 Ornare. Av.','Awka','B'),(54,'Nibh Industries','3815546481','3550 Nulla Rd.','GomzŽ-Andoumont','A'),(55,'Lorem Fringilla Ornare Institute','3814453534','Ap #317-6503 Ullamcorper Road','Gunsan','B'),(56,'Dui Cras Pellentesque Inc.','3814565873','9692 Ante Road','Oslo','B'),(57,'Risus Morbi Institute','3813736131','367-1635 Cursus St.','Puerto Asís','B'),(58,'Pharetra Nibh Industries','3812084738','Ap #841-6009 Elit, St.','Kaliningrad','A'),(59,'Justo Praesent Corporation','3817222854','9305 Feugiat St.','Nicoya','A'),(60,'Dignissim Magna A Ltd','3811200501','P.O. Box 551, 8551 Aliquet Avenue','Uyo','B'),(61,'Massa Integer Incorporated','3813214439','5074 Mollis Avenue','Ceuta','A'),(62,'Tincidunt Adipiscing Consulting','3813614004','524-3539 In Rd.','Sichuan','A'),(63,'Lobortis Quam Associates','3810182541','Ap #484-1397 Faucibus Road','Melitopol','A'),(64,'Enim Consequat Incorporated','3817755514','571-2667 Rutrum, Rd.','Turrialba','B'),(65,'Varius Incorporated','3816756081','749-9467 Lacus Rd.','Aguacaliente (San Francisco]','B'),(66,'Dolor Incorporated','3812547858','2008 Morbi Av.','Kupang','B'),(67,'Sem Eget Incorporated','3811755603','8115 Mauris St.','Montignies-sur-Sambre','A'),(68,'Elit Dictum Associates','3814184123','Ap #354-4059 Cursus St.','Quetta','B'),(69,'Arcu Aliquam Limited','3815435550','270-7523 In St.','Alajuela','B'),(70,'Proin Dolor Institute','3816039421','Ap #916-7340 Odio. St.','Upplands Väsby','A'),(71,'Tortor At Risus Foundation','3811326788','568-5569 Leo, Avenue','Vierzon','A'),(72,'Quisque Varius Nam Foundation','3814819034','535-6805 Fusce Street','Maule','B'),(73,'Et Libero Proin Institute','3814554345','750-9892 Bibendum Av.','Umlazi','B'),(74,'Urna Ut Inc.','3811075588','200-4724 Ante Av.','Belfast','A'),(75,'Sit Amet LLC','3812158342','P.O. Box 883, 9994 Elit, Street','Galway','B'),(76,'Sapien Cras Limited','3811822345','782 Diam Ave','Western Islands','A'),(77,'Ut Industries','3811250640','8239 Non, Av.','Edremit','B'),(78,'Venenatis Lacus Corp.','3818972548','5328 Augue. Road','Ozamiz','B'),(79,'Curae Phasellus Associates','3817830871','520-7977 Laoreet, Rd.','Deline','A'),(80,'Fusce Mollis Duis Ltd','3815538938','572-1839 Nec Street','Ghizer','A'),(81,'Risus Donec Incorporated','3818147232','P.O. Box 690, 7215 Quisque Avenue','Bengkulu','A'),(82,'Vehicula Et LLC','3816888155','214-9423 Litora Rd.','Piura','A'),(83,'Mi Associates','3810816231','Ap #698-3359 Ullamcorper Street','Cork','B'),(84,'Augue Malesuada Institute','3813033337','Ap #503-1803 Eget Av.','Baasrode','A'),(85,'Torquent Per LLP','3815904481','P.O. Box 367, 6642 Ultricies St.','Maracanaú','B'),(86,'Vitae Diam Proin Incorporated','3810674435','8291 Eleifend, Road','Carmarthen','B'),(87,'Vestibulum Lorem Incorporated','3815121732','Ap #902-9777 Molestie Rd.','Söderhamn','B'),(88,'Facilisis Vitae Inc.','3813987637','616-6869 Consectetuer Rd.','Aurora','B'),(89,'Euismod In LLP','3816778583','Ap #799-3220 Congue Road','Telfs','B'),(90,'Mi Aliquam LLC','3818952008','779-5144 Dolor, St.','Hamilton','B'),(91,'Et Libero Corp.','3818436548','P.O. Box 364, 5611 Curabitur Road','Helensburgh','A'),(92,'Donec Inc.','3815614008','784-4266 Dolor Ave','Kırıkhan','B'),(93,'Eu Nulla At Corp.','3811742195','808-6009 Congue, St.','Tanjay','A'),(94,'Enim Curabitur LLC','3813264542','P.O. Box 332, 9138 Non, St.','Amiens','B'),(95,'At Pretium Aliquet Corporation','3810302532','Ap #316-9703 Sodales. Street','Whittlesey','A'),(96,'Dolor Elit Pellentesque Incorporated','3814762842','Ap #882-4586 Eu Rd.','Vallentuna','A'),(97,'Phasellus Dapibus Quam Consulting','3813295861','P.O. Box 669, 1996 Ante Rd.','Gorinchem','A'),(98,'Ornare Fusce Mollis Consulting','3816997403','Ap #562-1702 Tempus Road','Pitt Meadows','B');
/*!40000 ALTER TABLE `comercios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comercios_AFTER_INSERT` AFTER INSERT ON `comercios` FOR EACH ROW BEGIN
    INSERT INTO aud_comercios
    VALUES (0, NOW(), SUBSTRING_INDEX(USER(), '@', 1), SUBSTRING_INDEX(USER(), '@', -1), NULL,
            SUBSTRING_INDEX(USER(), '@', -1), NULL, 'I',
            NEW.IdComercio, NEW.Comercio, NEW.Telefono, NEW.Direccion, NEW.Localidad, NEW.EstadoComercio);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comercios_AFTER_UPDATE` AFTER UPDATE ON `comercios` FOR EACH ROW BEGIN

    INSERT INTO aud_comercios
    VALUES (0, NOW(), SUBSTRING_INDEX(USER(), '@', 1), SUBSTRING_INDEX(USER(), '@', -1), NULL,
            SUBSTRING_INDEX(USER(), '@', -1), NULL, 'A',
            OLD.IdComercio, OLD.Comercio, OLD.Telefono, OLD.Direccion, OLD.Localidad, OLD.EstadoComercio);

    INSERT INTO aud_comercios
    VALUES (0, NOW(), SUBSTRING_INDEX(USER(), '@', 1), SUBSTRING_INDEX(USER(), '@', -1), NULL,
            SUBSTRING_INDEX(USER(), '@', -1), NULL, 'D',
            NEW.IdComercio, NEW.Comercio, NEW.Telefono, NEW.Direccion, NEW.Localidad, NEW.EstadoComercio);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comercios_AFTER_DELETE` AFTER DELETE ON `comercios` FOR EACH ROW BEGIN
    INSERT INTO aud_comercios
    VALUES (0, NOW(), SUBSTRING_INDEX(USER(), '@', 1), SUBSTRING_INDEX(USER(), '@', -1), NULL,
            SUBSTRING_INDEX(USER(), '@', -1), NULL, 'B',
            OLD.IdComercio, OLD.Comercio, OLD.Telefono, OLD.Direccion, OLD.Localidad, OLD.EstadoComercio);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mediospago`
--

DROP TABLE IF EXISTS `mediospago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mediospago` (
  `IdMedioPago` smallint NOT NULL AUTO_INCREMENT,
  `MedioPago` varchar(100) NOT NULL,
  `TipoMedioPago` char(1) NOT NULL,
  `Banco` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdMedioPago`),
  UNIQUE KEY `UI_MedioPago` (`MedioPago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediospago`
--

LOCK TABLES `mediospago` WRITE;
/*!40000 ALTER TABLE `mediospago` DISABLE KEYS */;
INSERT INTO `mediospago` VALUES (1,'Visa Credito','C','BNA'),(2,'Visa Debito','D','BNA'),(3,'Mastercard','D',NULL),(4,'Maestro','C','Macro'),(5,'MercadoPago','P',NULL);
/*!40000 ALTER TABLE `mediospago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planes`
--

DROP TABLE IF EXISTS `planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planes` (
  `IdPlan` smallint NOT NULL AUTO_INCREMENT,
  `IdMedioPago` smallint NOT NULL,
  `Codigo` varchar(15) NOT NULL,
  `NumeroCuotas` tinyint NOT NULL,
  `TNA` decimal(5,2) NOT NULL,
  PRIMARY KEY (`IdPlan`,`IdMedioPago`),
  UNIQUE KEY `UI_IdPlan` (`IdPlan`),
  KEY `IX_Codigo` (`Codigo`),
  KEY `Ref65` (`IdMedioPago`),
  CONSTRAINT `RefMediosPago5` FOREIGN KEY (`IdMedioPago`) REFERENCES `mediospago` (`IdMedioPago`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planes`
--

LOCK TABLES `planes` WRITE;
/*!40000 ALTER TABLE `planes` DISABLE KEYS */;
INSERT INTO `planes` VALUES (1,1,'R878J38F7',24,17.86),(2,3,'K554E58D4',12,74.05),(3,2,'Z513B94M6',1,38.01),(4,1,'K484V18M5',9,3.82),(5,2,'W673I67Y5',1,1.85),(6,1,'K895F68W4',6,45.55),(7,2,'F813H37E2',12,53.86),(8,2,'K301B14A4',9,25.29),(9,3,'Y497U19I9',1,43.84),(10,4,'P457A96Z6',12,90.74),(11,2,'U163G66D5',3,72.67),(12,1,'P058O11O2',12,75.10),(13,4,'M161F14P7',1,9.97),(14,4,'M200O02Q2',3,92.04),(15,3,'H427O67K6',9,64.13),(16,4,'S565M31H6',24,30.15),(17,2,'S153J68Y0',6,52.98),(18,4,'H231H27C3',6,94.92);
/*!40000 ALTER TABLE `planes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planescomercio`
--

DROP TABLE IF EXISTS `planescomercio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planescomercio` (
  `IdPlanComercio` int NOT NULL AUTO_INCREMENT,
  `IdComercio` int NOT NULL,
  `IdPlan` smallint NOT NULL,
  `IdMedioPago` smallint NOT NULL,
  `EstadoPComercio` char(1) NOT NULL,
  PRIMARY KEY (`IdPlanComercio`,`IdComercio`,`IdPlan`,`IdMedioPago`),
  UNIQUE KEY `UI_IdPlanComercio` (`IdPlanComercio`),
  UNIQUE KEY `UI_IdComercioIdPlan` (`IdComercio`,`IdPlan`),
  KEY `Ref32` (`IdComercio`),
  KEY `Ref53` (`IdPlan`,`IdMedioPago`),
  CONSTRAINT `RefComercios2` FOREIGN KEY (`IdComercio`) REFERENCES `comercios` (`IdComercio`),
  CONSTRAINT `RefPlanes3` FOREIGN KEY (`IdPlan`, `IdMedioPago`) REFERENCES `planes` (`IdPlan`, `IdMedioPago`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planescomercio`
--

LOCK TABLES `planescomercio` WRITE;
/*!40000 ALTER TABLE `planescomercio` DISABLE KEYS */;
INSERT INTO `planescomercio` VALUES (1,21,9,3,'A'),(2,33,17,2,'A'),(3,33,16,4,'A'),(4,55,1,1,'B'),(5,79,4,1,'A'),(6,58,3,2,'A'),(7,53,13,4,'B'),(8,38,11,2,'B'),(9,32,3,2,'B'),(10,42,13,4,'B'),(11,12,12,1,'A'),(12,97,13,4,'A'),(13,7,2,3,'B'),(14,8,2,3,'A'),(15,96,18,4,'A'),(16,45,18,4,'B'),(17,16,17,2,'B'),(18,79,16,4,'A'),(19,93,15,3,'B'),(20,90,15,3,'A'),(21,21,15,3,'B'),(22,16,12,1,'A'),(23,84,7,2,'B'),(24,3,17,2,'A'),(25,18,6,1,'B'),(26,26,8,2,'A'),(27,66,7,2,'A'),(28,87,13,4,'B'),(29,70,6,1,'B'),(30,26,1,1,'B'),(31,79,14,4,'B'),(32,26,13,4,'B'),(33,19,7,2,'B'),(34,65,7,2,'A'),(35,23,10,4,'B'),(36,25,3,2,'A'),(37,75,1,1,'A'),(38,3,5,2,'A'),(39,32,18,4,'A'),(40,57,7,2,'A'),(41,89,16,4,'B'),(42,4,6,1,'A'),(43,84,10,4,'A'),(44,32,4,1,'A'),(45,25,9,3,'A'),(46,85,13,4,'A'),(47,6,4,1,'B'),(48,33,2,3,'B'),(49,88,5,2,'A'),(50,50,6,1,'B');
/*!40000 ALTER TABLE `planescomercio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `IdUsuario` int NOT NULL AUTO_INCREMENT,
  `IdComercio` int NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `EstadoUsuario` char(1) NOT NULL,
  PRIMARY KEY (`IdUsuario`,`IdComercio`),
  UNIQUE KEY `UI_IdUsuario` (`IdUsuario`),
  UNIQUE KEY `UI_Email` (`Email`),
  UNIQUE KEY `UI_DNI` (`DNI`),
  KEY `IX_NombreApellido` (`Nombres`,`Apellidos`),
  KEY `Ref31` (`IdComercio`),
  CONSTRAINT `RefComercios1` FOREIGN KEY (`IdComercio`) REFERENCES `comercios` (`IdComercio`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,87,'Quyn','Nolan','3817576390','quyn3861@google.com','3098879','A'),(2,64,'Mariam','Guerra Kane','3863896711','mariam@google.com','3708647','B'),(3,80,'Hermione Bradley','Mathis Burks','3865337843','hermionebradley447@google.com','4328861','A'),(4,89,'Keely','Robinson Bond','3863865741','keely@google.com','4888476','A'),(5,16,'Cameron','Sampson Pruitt','3863945716','cameron@hotmail.com','3378886','A'),(6,57,'Malachi Kasper','Keith','3812279162','malachikasper9496@hotmail.com','3247380','A'),(7,59,'Stone Madeson','Wilkerson Cooper','3863384351','stonemadeson6331@google.com','3397953','A'),(8,67,'Tarik','Snider Michael','3865108483','tarik6739@google.com','3388263','A'),(9,96,'Garth','Knight','3865127811','garth2644@hotmail.com','3944765','B'),(10,86,'Kiona','Reyes','3865273752','kiona@google.com','3281806','A'),(11,81,'Roanna Aurora','Boyer','3863128899','roannaaurora@hotmail.com','3363142','B'),(12,18,'Angelica Danielle','Leonard Manning','3863631355','angelicadanielle7517@hotmail.com','3003189','A'),(13,70,'Donna','Bond','3863150425','donna@google.com','3408002','A'),(14,37,'Aidan','Gilbert','3812234297','aidan@hotmail.com','4749515','B'),(15,25,'Caleb','Cohen','3865813812','caleb6990@google.com','4257844','A'),(16,43,'Kylie','Bridges Odom','3863315371','kylie5804@google.com','3139272','A'),(17,34,'Emma','Burris Irwin','3817304714','emma6882@google.com','4758325','B'),(18,55,'Colton','Doyle','3865287272','colton@hotmail.com','4612640','A'),(19,3,'Buffy Isabella','Drake Hines','3865353016','buffyisabella8757@hotmail.com','3335084','B'),(20,62,'Sopoline','Hobbs Martin','3863541664','sopoline5735@hotmail.com','4367559','A'),(21,9,'Joel','Torres Buckner','3863385687','joel5298@hotmail.com','3206570','B'),(22,10,'Oren Christian','Banks Dillon','3863449113','orenchristian@google.com','4565996','B'),(23,88,'Alec Candace','Wiley','3865814031','aleccandace@google.com','4275726','B'),(24,49,'Marsden','Osborn','3863354404','marsden6853@hotmail.com','4458763','A'),(25,50,'Deacon','Salazar Burks','3865064653','deacon@google.com','3385890','A'),(26,92,'Shad','Fisher Gregory','3865676948','shad9367@google.com','3454758','B'),(27,16,'Ira','Peck','3815393614','ira@hotmail.com','4339926','B'),(28,92,'Carter','York Schultz','3865634824','carter@hotmail.com','3277824','B'),(29,52,'Timothy','Townsend','3810262841','timothy@google.com','4933573','B'),(30,83,'Oleg','Noble Curtis','3865985357','oleg7982@google.com','3216624','B'),(31,67,'Uta','Rush Hardin','3863395834','uta@google.com','3790020','A'),(32,59,'Hyatt','Mclaughlin','3865723056','hyatt@google.com','3961809','A'),(33,42,'Donovan Kylee','Cooke Charles','3865168880','donovankylee2941@google.com','4438307','A'),(34,42,'Edward Yvette','Pickett','3813148020','edwardyvette@hotmail.com','4428849','B'),(35,4,'Ali Lev','Pugh Vaughn','3865318948','alilev5453@hotmail.com','4114099','A'),(36,28,'Chancellor Ariel','Frank','3865515640','chancellorariel@hotmail.com','3559413','A'),(37,3,'Emily','Parker Luna','3863383833','emily8485@google.com','4033917','B'),(38,32,'Raja','Nunez May','3863413923','raja@google.com','3828057','A'),(39,33,'Eric','Hutchinson','3863452324','eric6266@hotmail.com','3809999','A'),(40,48,'Zephr','Fernandez Bell','3865925600','zephr@hotmail.com','4012259','A'),(41,4,'Jenna Castor','Mcgee','3811418589','jennacastor@hotmail.com','3634438','A'),(42,66,'Dawn','Austin','3817322865','dawn1098@google.com','4494711','B'),(43,87,'Thane','Riggs Dominguez','3865246676','thane@google.com','3577073','B'),(44,92,'Baxter Leonard','Simpson','3863330423','baxterleonard6899@google.com','3126476','A'),(45,23,'Maile Deanna','Bell','3819903326','mailedeanna@hotmail.com','4929085','B'),(46,10,'Audrey Howard','Sharpe Howe','3865007873','audreyhoward7607@hotmail.com','4394625','A'),(47,36,'David Autumn','ONeill','3812100120','davidautumn@hotmail.com','3663612','A'),(48,17,'Cailin Raya','Dudley','3814755121','cailinraya@google.com','4516285','A'),(49,7,'Sade','Black Joseph','3865976752','sade@google.com','3908641','A'),(50,28,'Bert Kasper','Bullock Garcia','3811355601','bertkasper@google.com','3027090','A'),(51,38,'Quamar Rudyard','Lambert','3863929317','quamarrudyard2968@google.com','4766864','A'),(52,21,'Stephen','Nicholson','3812104224','stephen5717@hotmail.com','3901446','B'),(53,13,'Penelope','Estrada','3863522934','penelope@hotmail.com','3431943','B'),(54,66,'Merritt Abraham','Garrett Raymond','3863629992','merrittabraham4001@hotmail.com','3645992','B'),(55,47,'Chancellor Kerry','Christensen','3863961737','chancellorkerry@google.com','3886650','A'),(56,12,'Brent','Lyons Curry','3865993255','brent@google.com','4996953','A'),(57,98,'Florence','Whitaker','3815647281','florence@google.com','3947917','A'),(58,50,'Kirk Kevyn','Hatfield Wilkerson','3865297732','kirkkevyn@hotmail.com','3116879','B'),(59,46,'Griffith','Mccarthy','3863741085','griffith@google.com','3730400','B'),(60,2,'Imogene','Rutledge Dennis','3817597782','imogene@google.com','3800589','B'),(61,91,'Dylan','Frye Velasquez','3863219374','dylan4595@hotmail.com','3889812','A'),(62,68,'Olympia Xena','Sears Ferguson','3863378617','olympiaxena1482@hotmail.com','4798994','B'),(63,97,'Silas Jonas','Dean','3863213276','silasjonas@hotmail.com','4029867','B'),(64,9,'Jenna','Castro Reid','3865613128','jenna@hotmail.com','3808473','B'),(65,59,'Camille Vladimir','Estes Patrick','3816396364','camillevladimir3341@google.com','3396171','A'),(66,44,'Hamilton Colin','Olson Holmes','3865557829','hamiltoncolin6327@hotmail.com','3662472','A'),(67,46,'Ulysses','Gilbert','3863826775','ulysses@hotmail.com','3554761','B'),(68,38,'Armando Kadeem','Perry','3814715983','armandokadeem8928@hotmail.com','3602323','A'),(69,71,'Ciaran','Moon','3863122746','ciaran6394@hotmail.com','3391098','A'),(70,11,'Illana','Sharp','3863735834','illana@google.com','3249074','B'),(71,42,'Camilla Hakeem','Trujillo','3865243692','camillahakeem3169@google.com','4679130','A'),(72,91,'Elijah Shad','Anderson','3818215301','elijahshad@hotmail.com','4392069','B'),(73,96,'Merrill','Gutierrez','3865121566','merrill@hotmail.com','3769412','A'),(74,69,'Garrett','Barrera Jefferson','3819634591','garrett7733@google.com','3406560','B'),(75,41,'Sawyer Adara','Wise Hansen','3811421185','sawyeradara1138@hotmail.com','4526280','A'),(76,63,'Macon Murphy','Morris Lynch','3863461386','maconmurphy5260@google.com','4104911','B'),(77,33,'Samantha Alexander','Marsh Nunez','3815872048','samanthaalexander4055@google.com','4541127','A'),(78,29,'Lucas Burton','Snyder','3863461645','lucasburton9374@hotmail.com','3915740','B'),(79,24,'Patience Talon','Acevedo Carey','3817514513','patiencetalon@hotmail.com','4022618','A'),(80,57,'Alec Darius','Kelley Williamson','3863888323','alecdarius5517@hotmail.com','4237482','A'),(81,65,'Wayne','Bolton Goodman','3863088184','wayne6031@google.com','4287545','A'),(82,69,'Rosalyn','Mckinney','3865790304','rosalyn4380@google.com','4725127','A'),(83,4,'Brandon','Lambert','3865674136','brandon1210@google.com','4927393','B'),(84,23,'Dennis','Mccarthy','3863152900','dennis2084@hotmail.com','4300410','B'),(85,73,'Jackson','Gallegos Cameron','3865835606','jackson6523@hotmail.com','3402100','B'),(86,53,'Clayton','Lara','3865824392','clayton385@google.com','4297369','B'),(87,13,'Katelyn','Young','3863574113','katelyn@google.com','4219056','B'),(88,20,'Melissa','Pace Elliott','3865202845','melissa8265@hotmail.com','3683878','A'),(89,98,'Steel','Hunt Klein','3865147458','steel9630@google.com','3823570','B'),(90,30,'Ivana','Sanchez','3863433516','ivana@google.com','3345763','B'),(91,64,'Wang Sigourney','Carver Macdonald','3865658083','wangsigourney@hotmail.com','4210767','B'),(92,36,'Herrod','Mcgee Tucker','3865635576','herrod@hotmail.com','3449865','B'),(93,47,'Lilah','Cannon','3815948909','lilah6603@google.com','4381327','A'),(94,46,'Jameson','Mills Daugherty','3812273196','jameson@google.com','3893360','A'),(95,78,'Chava','Collier Lynch','3863152433','chava@google.com','4028988','B'),(96,37,'Daquan','Snider Anderson','3865236022','daquan8632@google.com','4985061','A'),(97,57,'Blossom Amethyst','Harrington Avila','3863285160','blossomamethyst3086@hotmail.com','3509952','A'),(98,24,'Macon','Travis Beasley','3811241564','macon1814@google.com','4153306','A');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `IdVenta` int NOT NULL AUTO_INCREMENT,
  `FechaAlta` datetime NOT NULL,
  `NombresCliente` varchar(100) NOT NULL,
  `ApellidosCliente` varchar(60) NOT NULL,
  `DNICliente` varchar(10) NOT NULL,
  `DireccionCliente` varchar(150) NOT NULL,
  `Monto` decimal(12,2) NOT NULL,
  `Detalles` json NOT NULL,
  `NumeroTarjeta` varchar(18) NOT NULL,
  `Observaciones` text,
  `EstadoVenta` char(1) NOT NULL,
  `IdUsuario` int NOT NULL,
  `IdComercio` int NOT NULL,
  `IdPlanComercio` int DEFAULT NULL,
  `IdPlan` smallint DEFAULT NULL,
  `IdMedioPago` smallint DEFAULT NULL,
  PRIMARY KEY (`IdVenta`),
  KEY `IX_FechaAlta` (`FechaAlta`),
  KEY `IX_DNICliente` (`DNICliente`),
  KEY `Ref26` (`IdComercio`,`IdUsuario`),
  KEY `Ref17` (`IdPlanComercio`,`IdMedioPago`,`IdPlan`,`IdComercio`),
  KEY `RefUsuarios6` (`IdUsuario`,`IdComercio`),
  KEY `RefPlanesComercio7` (`IdPlanComercio`,`IdComercio`,`IdPlan`,`IdMedioPago`),
  CONSTRAINT `RefPlanesComercio7` FOREIGN KEY (`IdPlanComercio`, `IdComercio`, `IdPlan`, `IdMedioPago`) REFERENCES `planescomercio` (`IdPlanComercio`, `IdComercio`, `IdPlan`, `IdMedioPago`),
  CONSTRAINT `RefUsuarios6` FOREIGN KEY (`IdUsuario`, `IdComercio`) REFERENCES `usuarios` (`IdUsuario`, `IdComercio`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2023-05-05 23:15:08','Jael','Patel','83353282','133-3855 Sit St.',654.94,'{\"Producto\": \"nec eleifend non dapibus\", \"Unidades\": 11, \"PrecioUnitario\": 992.09}','535372 483132 1425','consectetuer rhoncus. Nullam','F',58,50,50,6,1),(2,'2023-08-23 13:36:20','Quyn','Paul','71432126','Ap #518-106 Est. Street',5272.06,'{\"Producto\": \"sit\", \"Unidades\": 14, \"PrecioUnitario\": 807.16}','57898 4654832 1465','consectetuer rhoncus. Nullam','F',23,88,49,5,2),(3,'2022-05-15 01:02:21','Lionel','Patterson','74872089','Ap #711-1689 Nec Rd.',5874.04,'{\"Producto\": \"Fusce diam nunc\", \"Unidades\": 32, \"PrecioUnitario\": 941.08}','364826832675863','nec tellus. Nunc','P',81,65,34,7,2),(4,'2023-12-01 05:20:13','Debra','Adams','38886427','Ap #122-2640 Blandit Ave',8960.64,'{\"Producto\": \"Aliquam erat volutpat Nulla facilisis Suspendisse\", \"Unidades\": 47, \"PrecioUnitario\": 834.37}','5352177455446781','vitae, orci. Phasellus','F',9,96,15,18,4),(5,'2023-05-15 04:31:25','Jana','Ballard','19855723','177-3840 Aliquam St.',205.54,'{\"Producto\": \"Nam porttitor scelerisque neque Nullam nisl.\", \"Unidades\": 33, \"PrecioUnitario\": 930.78}','6011 927 2699','penatibus et magnis','B',71,42,10,13,4),(6,'2022-10-31 11:07:07','Amos','Dominguez','27263605','915-1696 Tempus, St.',8005.37,'{\"Producto\": \"lorem\", \"Unidades\": 15, \"PrecioUnitario\": 456.27}','2014 76846388','metus eu erat','B',25,50,50,6,1),(7,'2023-05-01 20:29:17','Ruby','Lowe','82434532','271-9110 Vel St.',748.25,'{\"Producto\": \"quam a felis ullamcorper\", \"Unidades\": 24, \"PrecioUnitario\": 167.54}','4716824638711877','nibh vulputate mauris','A',33,42,10,13,4),(8,'2023-05-12 02:45:39','Alexis','Palmer','88124683','2196 Non, Rd.',2743.79,'{\"Producto\": \"risus quis diam luctus lobortis. Class aptent taciti sociosqu ad\", \"Unidades\": 17, \"PrecioUnitario\": 794.88}','5463797327713419','Suspendisse eleifend. Cras','B',73,96,15,18,4),(9,'2023-04-25 15:54:23','Scarlett','Clayton','19361058','Ap #397-7929 Inceptos Street',3131.11,'{\"Producto\": \"eleifend nec malesuada ut sem Nulla interdum\", \"Unidades\": 11, \"PrecioUnitario\": 530.68}','302845636793560','egestas lacinia. Sed','F',34,42,10,13,4),(10,'2022-09-02 06:33:02','Jane','Frank','44561372','3500 Nec Street',78.80,'{\"Producto\": \"eget volutpat ornare\", \"Unidades\": 42, \"PrecioUnitario\": \"754.43\"}','523 45682 681','mollis non, cursus','F',71,42,10,13,4),(11,'2022-10-03 16:38:31','Anthony','Miller','63345340','960-6267 Nulla. St.',3272.03,'{\"Producto\": \"arcu imperdiet ullamcorper Duis at lacus. Quisque\", \"Unidades\": 22, \"PrecioUnitario\": 929.15}','6767151846273351','viverra. Donec tempus,','P',18,55,4,1,1),(12,'2022-12-19 03:20:37','Melissa','Jensen','83742754','476-9679 Tellus Rd.',8685.44,'{\"Producto\": \"nonummy Fusce fermentum fermentum arcu Vestibulum ante ipsum primis\", \"Unidades\": 3, \"PrecioUnitario\": 530.77}','677169 3876382416','vel nisl. Quisque','A',27,16,22,12,1),(13,'2023-03-24 09:15:04','Courtney','Mcguire','48111880','P.O. Box 890, 7673 Aliquet Rd.',9655.55,'{\"Producto\": \"cursus non egestas a\", \"Unidades\": 14, \"PrecioUnitario\": 610.17}','6709 2629 2221','Donec dignissim magna','B',63,97,12,13,4),(14,'2022-05-25 10:43:56','Xenos','Bell','14105719','Ap #191-2518 Nec, St.',6211.28,'{\"Producto\": \"tempor lorem eget mollis lectus pede et risus Quisque\", \"Unidades\": 19, \"PrecioUnitario\": 189.95}','3674 7516856','dolor elit, pellentesque','B',15,25,45,9,3),(15,'2022-03-17 21:25:06','Amal','Colon','69055301','P.O. Box 361, 2045 Commodo Rd.',1085.28,'{\"Producto\": \"elementum sem\", \"Unidades\": 26, \"PrecioUnitario\": 760.11}','2149572932766','a, dui. Cras','F',56,12,11,12,1),(16,'2022-11-09 09:20:34','Ori','Dale','92511471','Ap #204-9077 Ullamcorper, Rd.',3773.59,'{\"Producto\": \"ac tellus\", \"Unidades\": 21, \"PrecioUnitario\": 235.89}','3645 326 66540','tellus non magna.','B',6,57,40,7,2),(17,'2022-04-26 15:35:35','Cameron','Lambert','25873275','539 Leo. Road',9791.01,'{\"Producto\": \"felis\", \"Unidades\": 2, \"PrecioUnitario\": 587.82}','4556 7627  7189','congue. In scelerisque','A',49,7,13,2,3),(18,'2022-04-27 17:46:02','Rhona','Molina','22268365','Ap #310-3602 Nec, Rd.',7808.65,'{\"Producto\": \"eu tempor erat\", \"Unidades\": 38, \"PrecioUnitario\": 452.31}','3682844364842','tempus mauris erat','B',71,42,10,13,4),(19,'2022-10-27 03:09:52','Kennan','Houston','68423644','5501 Integer Street',866.90,'{\"Producto\": \"est congue a aliquet vel vulputate eu odio Phasellus\", \"Unidades\": 16, \"PrecioUnitario\": 595.26}','36743744215','Aliquam ornare, libero','P',9,96,15,18,4),(20,'2023-07-02 08:54:49','Hilel','Ayers','64278430','Ap #651-7662 Consectetuer Ave',7418.59,'{\"Producto\": \"nulla at sem molestie\", \"Unidades\": 7, \"PrecioUnitario\": 972.18}','371252 86215','a, magna. Lorem','P',77,33,48,2,3);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'idar2022'
--

--
-- Dumping routines for database 'idar2022'
--
/*!50003 DROP PROCEDURE IF EXISTS `psp_activar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_activar_usuario`(pIdUsuario INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite cambiar el estado de un usuario a A: Activo sin importar si este ya se encuentra activo. Devuelve OK en Mensaje.
    */
    -- Parametros

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE
				IdUsuario = pIdUsuario) THEN
		SELECT 'No existe el usuario que quiere activar.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE
				IdUsuario = pIdUsuario AND EstadoUsuario = 'B') THEN
		SELECT 'El usuario ya está en estado activo.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE usuarios
    SET EstadoUsuario = 'A'
    WHERE IdUsuario = pIdUsuario;

    SELECT 'OK' AS Mensaje;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_asignar_plan_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_asignar_plan_comercio`(pIdVenta INT,
                                             pIdPlanComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite asignar un plan de comercio a la venta, siempre que la venta se encuentre en un estado de edición.
    Transiciona al estado P: Pendiente de Pago.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones
    DECLARE tEstadoVenta CHAR(1);
    DECLARE tIdComercio_venta INT;
    DECLARE tIdComercio_planescomercio INT;
    DECLARE tIdPlan SMALLINT;
    DECLARE tIdMedioPago INT;
    DECLARE tEstadoPComercio CHAR(1);
    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;
    SELECT IdComercio, EstadoVenta INTO tIdComercio_venta,tEstadoVenta FROM ventas WHERE IdVenta = pIdVenta;
    IF tEstadoVenta IS NULL THEN
        SELECT ('Error, la venta no existe.') AS Mensaje;
        LEAVE FINAL;
    END IF;
    IF tEstadoVenta != 'E' THEN
        SELECT ('Error, la venta debe estar en estado de Edicion.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    SELECT IdPlan, IdMedioPago, EstadoPComercio, IdComercio
    INTO tIdPlan,tIdMedioPago,tEstadoPComercio,tIdComercio_planescomercio
    FROM planescomercio
    WHERE IdPlanComercio = pIdPlanComercio;

    IF tEstadoPComercio IS NULL THEN
        SELECT ('Error, campo IdPlanComercio incorrecto. Plan inexistente') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF tIdComercio_planescomercio != tIdComercio_venta THEN
        SELECT ('Error, campo IdPlanComercio incorrecto. El plan no esta asociado al comercio') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF tEstadoPComercio = 'B' THEN
        SELECT ('Error, el plan elegido esta dado de baja para el comercio') AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE ventas
    SET IdPlanComercio = pIdPlanComercio,
        IdPlan=tIdPlan,
        IdMedioPago=tIdMedioPago,
        EstadoVenta='P'
    WHERE IdVenta = pIdVenta;

    SELECT CONCAT('OK') AS Mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_borrar_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_borrar_comercio`(pIdComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite borrar un comercio siempre que este en estado B.
    Elimina los usuarios y ventas asociadas al comercio. Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF pIdComercio IS NULL THEN
        SELECT ('Error el campo idComercio no puede ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE IdComercio = pIdComercio) THEN
        SELECT ('Error al borrar comercio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE IdComercio = pIdComercio AND EstadoComercio = 'B') THEN
        SELECT ('Error no puede borrar comercios activos.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    START TRANSACTION;
        DELETE FROM ventas WHERE IdComercio = pIdComercio;
        DELETE FROM usuarios WHERE IdComercio = pIdComercio;
        DELETE FROM comercios WHERE IdComercio = pIdComercio;
    COMMIT;
    SELECT CONCAT('OK') AS Mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_borrar_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_borrar_plan`(pIdPlan smallint)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite borrar un plan siempre y cuando no este asociado a un comercio.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF pIdPlan IS NULL THEN
        SELECT ('Error, el campo idPlan no puede ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF ;
    IF NOT EXISTS(SELECT IdPlan FROM planes WHERE IdPlan =pIdPlan) THEN
        SELECT ('Error al intentar borrar el plan.') AS Mensaje;
        LEAVE FINAL;
    END IF ;
    IF EXISTS(SELECT IdPlan FROM planescomercio WHERE IdPlan =pIdPlan) THEN
        SELECT ('Error al intentar borrar el plan.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    DELETE FROM planes WHERE IdPlan=pIdPlan;
    SELECT CONCAT('OK') AS Mensaje;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_borrar_plancomercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_borrar_plancomercio`(pIdPlanComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite borrar un plan de comercio siempre que no tenga ventas asociadas y este dado de baja.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF NOT EXISTS(SELECT IdPlanComercio FROM planescomercio WHERE IdPlanComercio = pIdPlanComercio) THEN
        SELECT ('Error al borrar plan del comercio') AS Mensaje;
        LEAVE FINAL;
    END IF;


    IF NOT EXISTS(SELECT IdPlanComercio FROM planescomercio WHERE IdPlanComercio = pIdPlanComercio AND EstadoPComercio = 'B') THEN
        SELECT 'Error no puede borrar planes de comercio activos.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT IdPlanComercio FROM ventas WHERE IdPlanComercio = pIdPlanComercio) THEN
        SELECT ('Error, existen ventas asociadas a este plan del comercio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    DELETE FROM planescomercio WHERE IdPlanComercio=pIdPlanComercio;
    SELECT CONCAT('OK') AS Mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_borrar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_borrar_usuario`(pIdUsuario int)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite borrar un usuario siempre que este en estado B y
    no tenga ventas asociadas. Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones
    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE IdUsuario = pIdUsuario) THEN
        SELECT ('Error al borrar usuario.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF pIdUsuario IS NULL THEN
        SELECT ('El campo id usuario no puede ser nulo o estar vacio.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE
				IdUsuario = pIdUsuario AND EstadoUsuario = 'B') THEN
		SELECT 'Error no puede borrar usuarios activos.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT IdUsuario FROM ventas WHERE IdUsuario =pIdUsuario) THEN
        SELECT ('Error al borrar usuario. Tiene ventas asociadas.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    DELETE FROM usuarios WHERE IdUsuario=pIdUsuario;

    SELECT 'OK' as Mensaje;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_borrar_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_borrar_venta`(pIdVenta INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite borrar una venta, siempre y cuando la misma se encuentre en estado E: En edición.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones
    DECLARE tEstadoVenta CHAR(1);
    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF pIdVenta IS NULL THEN
        SELECT ('Error el campo IdVenta no puede ser vacio.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    SET tEstadoVenta=(SELECT EstadoVenta FROM ventas WHERE  IdVenta=pIdVenta);
    IF tEstadoVenta IS NULL THEN
        SELECT ('Error al borrar la venta.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    IF tEstadoVenta !='E' THEN
        SELECT ('Error, solo se puede borrar ventas en estado edicion.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    DELETE FROM ventas WHERE IdVenta=pIdVenta;

    SELECT CONCAT('OK') AS Mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_buscar_comercios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_buscar_comercios`(pCadena VARCHAR(100),
                                        pIncluyeBajas CHAR(1),
                                        pOffset INT,
                                        pRowCount INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite buscar los comercios por nombre dado una cadena que contenga una parte del nombre.
    Puede o no incluir los comercios dados de baja según pIncluyeBajas (S: Si - N: No).
    Ordena por nombre del comercio en forma descendente. Para listar todos, cadena vacía. Pagina.
    */
    -- Declaraciones
    DECLARE pTotalRows INT;
    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

    DROP TEMPORARY TABLE IF EXISTS tmp_comercios;

    CREATE TEMPORARY TABLE tmp_comercios ENGINE = MEMORY AS
    SELECT idcomercio, comercio, telefono, direccion, localidad, estadocomercio FROM comercios
    WHERE ((Comercio LIKE CONCAT(pCadena, '%') OR
            Comercio IS NULL)
        AND (pIncluyeBajas = 'S' OR EstadoComercio = 'A')) ORDER BY comercio;

    SET pTotalRows = (SELECT COUNT(*) FROM tmp_comercios);

    -- CONSULTA FINAL
    SELECT *, pTotalRows TotalRows FROM tmp_comercios LIMIT pOffset, pRowCount; -- comienzo y longitud

    DROP TEMPORARY TABLE IF EXISTS tmp_comercios;

    SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_buscar_medio_pago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_buscar_medio_pago`(pCadena VARCHAR(100),
                                         pOffset INT,
                                         pRowCount INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite buscar los medios de pago a partir de una una cadena que contenga una parte del nombre del medio de pago.
    Ordena de forma descendente.  Para listar todos pCadena debe estar vacio. Pagina.
    */
    -- Declaraciones
    DECLARE pTotalRows INT;
    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

    DROP TEMPORARY TABLE IF EXISTS tmp_medioPago;

    CREATE TEMPORARY TABLE tmp_medioPago ENGINE = MEMORY AS
    SELECT idmediopago, mediopago, tipomediopago, banco
    FROM mediospago
    WHERE ((mediopago LIKE CONCAT(pCadena, '%') OR
            mediopago IS NULL))
    ORDER BY mediopago;

    SET pTotalRows = (SELECT COUNT(*) FROM tmp_medioPago);

    SELECT *, pTotalRows TotalRows FROM tmp_medioPago LIMIT pOffset, pRowCount; -- comienzo y longitud

    DROP TEMPORARY TABLE IF EXISTS tmp_medioPago;

    SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_crear_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_crear_comercio`(pComercio VARCHAR(100), pTelefono VARCHAR(12),
                                      pDireccion VARCHAR(100), pLocalidad VARCHAR(100))
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite crear un comercio controlando siempre que el nombre del mismo no exista ya.
    Lo crea en estado A: Alta. Devuelve OK + Id o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF TRIM(pComercio) = '' OR pComercio IS NULL THEN
        SELECT ('Error, el nombre del comercio no puede ser nulo o estar vacio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT Comercio FROM comercios WHERE Comercio = pComercio) THEN
        SELECT ('Error, el nombre del comercio ya ha sido registrado.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pTelefono) = '' OR pTelefono IS NULL THEN
        SELECT ('Error, el numero de telefono no puede ser nulo o estar vacio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pDireccion) = '' OR pDireccion IS NULL THEN
        SELECT ('Error, la direccion no puede ser nula o estar vacia.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pLocalidad) = '' OR pLocalidad IS NULL THEN
        SELECT ('Error, la direccion no puede ser nula o estar vacia.') AS Mensaje;
        LEAVE FINAL;
    END IF;
    START TRANSACTION;
        INSERT INTO comercios (Comercio, Telefono, Direccion, Localidad, EstadoComercio)
        VALUES (pComercio, pTelefono, pDireccion, pLocalidad, 'A');

        SELECT CONCAT('OK ', 'ID:', LAST_INSERT_ID()) AS Mensaje;
    COMMIT;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_crear_medio_pago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_crear_medio_pago`(pMedioPago VARCHAR(100),
                                        pTipoMedioPago CHAR(1),
                                        pBanco VARCHAR(100))
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite crear un medio de pago, controlando que el nombre del mismo no exista ya.
    El campo tipo medio de pago solo puede estar compuesto D(DEBITO),C(CREDITO) o P(Prepago).
    Devuelve OK + Id o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;
    
    IF EXISTS(SELECT MedioPago FROM mediospago WHERE MedioPago =pMedioPago) THEN
        SELECT ('Error el nombre del medio de pago ya existe.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    IF pTipoMedioPago NOT IN ('C','D','P')THEN
        SELECT ('Error tipo de medio de pago incorrecto.') AS Mensaje;
        LEAVE FINAL;
    END IF ;
    
    START TRANSACTION;
        INSERT INTO mediospago (mediopago, tipomediopago, banco)
        VALUES (pMedioPago,UPPER(pTipoMedioPago),pBanco);
        SELECT CONCAT('OK ', 'ID:', LAST_INSERT_ID()) AS Mensaje;
    COMMIT;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_crear_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_crear_plan`(pIdMedioPago TINYINT,
                                  pCodigo VARCHAR(15),
                                  pNumCuotas TINYINT,
                                  pTNA DECIMAL(5, 2))
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite crear un plan siempre y cuando que el medio de pago exista, el código no se encuentre registrado,
    el número de cuotas sea mayor a cero y el TNA  se encuentre entre 0 y 100.
    Devuelve OK + Id o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF NOT EXISTS(SELECT IdMedioPago FROM mediospago WHERE IdMedioPago = pIdMedioPago) THEN
        SELECT ('Error el medio de pago no existe') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT Codigo FROM planes WHERE Codigo = pCodigo) THEN
        SELECT ('Error el codigo del plan ya existe') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF pNumCuotas <= 0 THEN
        SELECT ('Error el numero de cuotas no puede ser negativo o cero') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF pTNA < 0 OR pTNA>100 THEN
        SELECT ('Error el TNA debe estar entre 0 y  100') AS Mensaje;
        LEAVE FINAL;
    END IF;

    START TRANSACTION;
        INSERT INTO planes (idmediopago, codigo, numerocuotas, tna)
        VALUES (pIdMedioPago, pCodigo, pNumCuotas, pTNA);
        SELECT CONCAT('OK ', 'ID:', LAST_INSERT_ID()) AS Mensaje;
    COMMIT;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_crear_plancomercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_crear_plancomercio`(pIdPlan SMALLINT,
                                          pIdComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite crear un plan de comercio controlando que no exista para un mismo comercio el mismo plan de pago.
    Lo crea con estado A: Alta. Devuelve OK + Id o el mensaje de error en Mensaje.
    */
    -- Declaraciones
    DECLARE tIdMedioPago SMALLINT;
    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;
    SELECT IdMedioPago INTO tIdMedioPago FROM planes WHERE IdPlan = pIdPlan;
    IF tIdMedioPago IS NULL THEN
        SELECT ('Error, no existe el plan.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE IdComercio = pIdComercio) THEN
        SELECT ('Error, no existe el comercio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT IdPlanComercio FROM planescomercio WHERE IdPlan = pIdPlan AND IdComercio = pIdComercio) THEN
        SELECT ('Error, este plan ya fue asociado al comercio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    START TRANSACTION;
        INSERT INTO planescomercio (IdComercio, IdPlan, IdMedioPago, EstadoPComercio)
        VALUES (pIdComercio, pIdPlan, tIdMedioPago, 'A');
        SELECT CONCAT('OK ', 'ID:', LAST_INSERT_ID()) AS Mensaje;
    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_crear_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_crear_usuario`(pApellidos VARCHAR(100), pNombres VARCHAR(100),
                                     pEmail VARCHAR(256), pTelefono VARCHAR(20), pDNI VARCHAR(10), pIdComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite crear un usuario, controlando que el DNI y el email no se encuentren registrados.
    Se debe garantizar que el comercio exista. Los campos nombres, apellidos y telefonos no pueden estan vacios.
    Se crea en Estado:B. Devuelve OK + id o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF TRIM(pApellidos) = '' OR pApellidos IS NULL THEN
        SELECT ('El campo apellido no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pNombres) = '' OR pNombres IS NULL THEN
        SELECT ('El campo nombre no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pEmail) = '' OR pEmail IS NULL THEN
        SELECT ('El campo email no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF pEmail NOT REGEXP
       "^[a-zA-Z0-9][a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]*?[a-zA-Z0-9._-]?@[a-zA-Z0-9][a-zA-Z0-9._-]*?[a-zA-Z0-9]?\\.[a-zA-Z]{2,63}$" THEN
        SELECT ('Formato de email incorrecto.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pTelefono) = '' OR pTelefono IS NULL THEN
        SELECT ('El campo telefono no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pDNI) = '' OR pDNI IS NULL THEN
        SELECT ('El campo DNI no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;


    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE IdComercio = pIdComercio) THEN
        SELECT ('El comercio del usuario no existe') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT DNI FROM usuarios WHERE DNI = pDNI) THEN
        SELECT ('El DNI ya se encuentra registrado') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT Email FROM usuarios WHERE Email = pEmail) THEN
        SELECT ('El correo electronico ya se encuentra registrado') AS Mensaje;
        LEAVE FINAL;
    END IF;


    START TRANSACTION;
        INSERT INTO usuarios (IdComercio, Nombres, Apellidos, Telefono, Email, DNI, EstadoUsuario)
        VALUES (pIdComercio, pNombres, pApellidos, pTelefono, pEmail, pDNI, 'A');

        SELECT CONCAT('OK ', 'ID:', LAST_INSERT_ID()) AS Mensaje;
    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_dame_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_dame_comercio`(pIdComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite obtener un usuario a partir de su Id. Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SELECT * FROM comercios WHERE IdComercio=pIdComercio;
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_dame_medio_pago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_dame_medio_pago`(pIdMedioPago INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite obtener un medio de pago a partir de su Id. Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SELECT * FROM mediospago WHERE IdMedioPago=pIdMedioPago;
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_dame_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_dame_plan`(pIdPlan SMALLINT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite obtener un usuario a partir de su Id. Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SELECT * FROM planes WHERE IdPlan = pIdPlan;
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_dame_plancomercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_dame_plancomercio`(pIdPlanComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite obtener un plan de comercio a partir de su Id.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SELECT * FROM planescomercio WHERE IdPlanComercio=pIdPlanComercio;
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_dame_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_dame_usuario`(pIdUsuario int)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite obtener un usuario a partir de su Id. Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;
    
    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SELECT * FROM usuarios WHERE IdUsuario=pIdUsuario;
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_dame_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_dame_venta`(pIdVenta INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite obtener un medio de pago a partir de su Id. Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SELECT * FROM ventas WHERE IdVenta = pIdVenta;
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_daralta_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_daralta_comercio`(pIdComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite cambiar el estado de un usuario a B: Baja siempre y cuando no se encuentre  ya en este estado.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Parametros

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE
				IdComercio = pIdComercio) THEN
		SELECT 'No existe el comercio que quiere dar de alta.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE
				IdComercio = pIdComercio AND EstadoComercio = 'B') THEN
		SELECT 'El comercio ya está en estado activo.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE comercios
    SET EstadoComercio = 'A'
    WHERE IdComercio = pIdComercio;
    SELECT 'OK' AS Mensaje;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_darbaja_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_darbaja_comercio`(pIdComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite cambiar el estado de un usuario a B: Baja siempre y cuando no se encuentre  ya en este estado.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Parametros

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE
				IdComercio = pIdComercio) THEN
		SELECT 'No existe el comercio que quiere dar de baja.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE
				IdComercio = pIdComercio AND EstadoComercio = 'A') THEN
		SELECT 'El comercio ya está en estado baja.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE comercios
    SET EstadoComercio = 'B'
    WHERE IdComercio = pIdComercio;
    SELECT 'OK' AS Mensaje;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_darbaja_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_darbaja_usuario`(pIdUsuario INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite cambiar el estado de un usuario a B: Baja siempre y cuando no se encuentre  ya en este estado.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Parametros

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE
				IdUsuario = pIdUsuario) THEN
		SELECT 'No existe el usuario que quiere dar de baja.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE
				IdUsuario = pIdUsuario AND EstadoUsuario = 'A') THEN
		SELECT 'El usuario ya está en estado Baja.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE usuarios
    SET EstadoUsuario = 'B'
    WHERE IdUsuario = pIdUsuario;
    SELECT 'OK' AS Mensaje;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_darbaja_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_darbaja_venta`(pIdVenta INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite cambiar el estado de la venta a B: Baja siempre y cuando no esté dado de baja ya,
    la misma se encuente  en el estado P: Pendiente de pago
    y la solicitud del medio de pago devuelve un valor de cancelado.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones
    DECLARE tEstadoVenta CHAR(1);
    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SET tEstadoVenta = (SELECT estadoVenta FROM ventas WHERE IdVenta = pIdVenta);

    IF tEstadoVenta IS NULL THEN
        SELECT ('Error la venta no existe') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF tEstadoVenta = ('B') THEN
        SELECT ('Error, la venta ya fue dada de baja.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF tEstadoVenta != ('P') THEN
        SELECT ('Error, para dar de baja la venta debe estar en estado pendiente.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE ventas SET EstadoVenta = 'B' WHERE IdVenta=pIdVenta;
    SELECT CONCAT('OK') AS Mensaje;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_listar_planescomercios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_listar_planescomercios`(pIdComercio INT,
                                              pIncluyeBajas CHAR(1))
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite listar todos los planes de comercio de un comercio dado.
    Puede o no incluir los planes de comercios dados de baja según pIncluyeBajas (S: Si - N: No).
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SELECT pc.IdPlanComercio,pc.IdComercio,p.IdPlan,m.MedioPago, m.Banco, m.TipoMedioPago, p.Codigo, p.NumeroCuotas, p.TNA, pc.EstadoPComercio
    FROM planescomercio AS pc
             JOIN planes p ON p.IdPlan = pc.IdPlan
             JOIN mediospago m ON m.IdMedioPago = p.IdMedioPago
    WHERE (pIncluyeBajas = 'S' OR EstadoPComercio = 'A') AND pc.IdComercio=pIdComercio;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_listar_planes_del_mediopago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_listar_planes_del_mediopago`(pIdMedioPago SMALLINT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite listar los planes de un medio de pago. Ordena por Numero de cuotas de forma Ascendente.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

    SELECT *
    FROM planes
    WHERE IdMedioPago = pIdMedioPago
    ORDER BY NumeroCuotas ASC;

    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_modificar_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_modificar_comercio`(pIdComercio INT,
                                          pComercio VARCHAR(100),
                                          pTelefono VARCHAR(12),
                                          pDireccion VARCHAR(100),
                                          pLocalidad VARCHAR(100))
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite modificar un comercio existente controlando que el nombre del mismo no exista ya.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF TRIM(pComercio) = '' OR pComercio IS NULL THEN
        SELECT ('Error, el nombre del comercio no puede ser nulo o estar vacio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT Comercio FROM comercios WHERE Comercio = pComercio AND IdComercio!=pIdComercio) THEN
        SELECT ('Error, el nombre del comercio ya ha sido registrado.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pTelefono) = '' OR pTelefono IS NULL THEN
        SELECT ('Error, el numero de telefono no puede ser nulo o estar vacio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pDireccion) = '' OR pDireccion IS NULL THEN
        SELECT ('Error, la direccion no puede ser nula o estar vacia.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pLocalidad) = '' OR pLocalidad IS NULL THEN
        SELECT ('Error, la direccion no puede ser nula o estar vacia.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE comercios
    SET Comercio= pComercio,
        Telefono=pTelefono,
        Localidad= pLocalidad,
        Direccion=pDireccion
    WHERE IdComercio = pIdComercio;
    SELECT 'OK' AS Mensaje;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_modificar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_modificar_usuario`(pIdUsuario INT, pApellidos VARCHAR(100), pNombres VARCHAR(100),
                                         pEmail VARCHAR(256), pTelefono VARCHAR(20), pDNI VARCHAR(10), pIdComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite crear un usuario, controlando que el DNI y el email no se encuentren registrados.
    Se debe garantizar que el comercio exista. Los campos nombres, apellidos y telefonos no pueden estan vacios.
    Se crea en Estado:B. Devuelve OK + id o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF pIdUsuario IS NULL THEN
        SELECT ('El campo IdUsuario no puede ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pDNI) = '' OR pDNI IS NULL THEN
        SELECT ('El campo DNI no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pEmail) = '' OR pEmail IS NULL THEN
        SELECT ('El campo email no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pTelefono) = '' OR pTelefono IS NULL THEN
        SELECT ('El campo telefono no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pApellidos) = '' OR pApellidos IS NULL THEN
        SELECT ('El campo apellidp no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pNombres) = '' OR pNombres IS NULL THEN
        SELECT ('El campo nombre no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE IdUsuario = pIdUsuario) THEN
        SELECT ('El usuario no existe.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT DNI FROM usuarios WHERE DNI = pDNI AND IdUsuario != pIdUsuario) THEN
        SELECT ('El DNI ya se encuentra registrado.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF pEmail NOT REGEXP
       "^[a-zA-Z0-9][a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]*?[a-zA-Z0-9._-]?@[a-zA-Z0-9][a-zA-Z0-9._-]*?[a-zA-Z0-9]?\\.[a-zA-Z]{2,63}$" THEN
        SELECT ('Formato de email incorrecto.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT Email FROM usuarios WHERE Email = pEmail AND IdUsuario != pIdUsuario) THEN
        SELECT ('El correo electronico ya se encuentra registrado.') AS Mensaje;
        LEAVE FINAL;
    END IF;


    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE IdComercio = pIdComercio) THEN
        SELECT ('El comercio del usuario no existe.') AS Mensaje;
        LEAVE FINAL;
    END IF;


    UPDATE usuarios
    SET Apellidos= pApellidos,
        Nombres=pNombres,
        Email= pEmail,
        Telefono=pTelefono,
        DNI=pDNI,
        IdComercio=pIdComercio
    WHERE IdUsuario = pIdUsuario;
    SELECT 'OK' AS Mensaje;

    SELECT CONCAT('OK') AS Mensaje;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-15  1:23:00
