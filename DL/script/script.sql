-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: tech_app
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int unsigned NOT NULL,
  `id_user` int NOT NULL,
  `province_id` varchar(45) NOT NULL COMMENT 'id tỉnh',
  `district_id` varchar(45) NOT NULL,
  `ward_id` varchar(45) NOT NULL,
  `address_detail` varchar(100) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'28','20','26','1 Evergreen Circle','Hammes-Spencer','(795) 6655958'),(2,2,'20','46','11','1 Duke Junction','Altenwerth-Rodriguez','(256) 6476102'),(3,3,'2','43','31','698 Kings Terrace','Kilback Inc','(603) 6780597'),(4,4,'40','17','7','568 Calypso Park','Schimmel Inc','(229) 9358068'),(5,5,'20','50','35','7005 Orin Center','Schimmel-Collins','(629) 6444429'),(6,6,'39','25','46','0 Waxwing Road','West LLC','(122) 4712001'),(7,7,'6','44','36','06252 Marcy Way','Cartwright Inc','(305) 9423773'),(8,8,'9','29','9','60 Havey Park','Ryan and Sons','(849) 3830513'),(9,9,'14','23','22','971 Northview Junction','Dibbert LLC','(716) 2908445'),(10,10,'18','42','21','416 Brentwood Park','Klein-Rau','(936) 2247934'),(11,11,'12','49','46','22 Morning Parkway','Toy-Shields','(382) 9498088'),(12,12,'34','29','8','777 Almo Lane','Ratke, Lowe and Harvey','(784) 5625148'),(13,13,'15','41','50','4338 Walton Terrace','Wolff LLC','(897) 7143241'),(14,14,'21','27','46','42535 Little Fleur Hill','O\'Hara, Thompson and O\'Conner','(140) 9047771'),(15,15,'34','17','8','981 Jenna Plaza','Kshlerin and Sons','(982) 2711928'),(16,16,'50','5','38','10912 Lighthouse Bay Alley','Macejkovic-Hilpert','(341) 8365148'),(17,17,'25','4','20','76980 Elka Center','Schiller-Mertz','(218) 8673625'),(18,18,'4','39','5','0457 Duke Parkway','Kreiger, Altenwerth and Satterfield','(551) 6144432'),(19,19,'34','47','36','077 Redwing Crossing','Johnston, Macejkovic and Lowe','(204) 8224409'),(20,20,'23','30','24','43 Shelley Park','Doyle, Boyer and Johns','(519) 1662445'),(21,21,'6','38','2','5 Anzinger Pass','Schultz Group','(378) 1046037'),(22,22,'2','8','1','2519 Hansons Hill','Stiedemann-Mayert','(606) 9626447'),(23,23,'27','1','18','8 Brickson Park Park','Rolfson LLC','(107) 7989481'),(24,24,'40','40','41','2488 Milwaukee Park','Lubowitz, Schuppe and Leuschke','(847) 9341142'),(25,25,'16','31','18','2843 Aberg Plaza','Hyatt, Schulist and Greenfelder','(406) 3979972'),(26,26,'12','36','6','89505 Lien Drive','Jaskolski LLC','(888) 1753905'),(27,27,'43','40','5','17425 Hanson Terrace','Conroy, Quigley and Lebsack','(346) 1567896'),(28,28,'32','31','26','9 Bonner Junction','Cartwright-Fahey','(652) 9938040'),(29,29,'41','38','3','6314 Washington Street','Beer, Wolf and Cronin','(635) 5884012'),(30,30,'14','11','40','44 Del Sol Junction','Schuppe Inc','(594) 2616795'),(31,31,'22','7','34','22 Raven Street','Johnson-Weimann','(608) 4933846'),(32,32,'33','3','3','71 Kennedy Place','Little and Sons','(121) 8153004'),(33,33,'21','8','5','67122 Ludington Terrace','Rau, Rice and Mitchell','(322) 4161811'),(34,34,'10','2','14','6172 Mockingbird Hill','Wisozk, Rodriguez and McDermott','(712) 9890153'),(35,35,'43','42','22','07904 Manufacturers Court','Ruecker-Baumbach','(569) 1498480'),(36,36,'1','31','1','62 Dawn Avenue','Lueilwitz-Ondricka','(508) 8729914'),(37,37,'20','42','19','16 Crowley Circle','Lockman-Brakus','(488) 2905079'),(38,38,'41','3','22','1231 Gerald Street','Turner-Welch','(799) 2963131'),(39,39,'8','36','39','94 Knutson Avenue','Gerlach, McLaughlin and Kuvalis','(674) 5738855'),(40,40,'22','36','13','641 Helena Trail','Wolff and Sons','(670) 8242520'),(41,41,'35','27','12','58359 Comanche Crossing','Lang, Cronin and Grady','(728) 5116824'),(42,42,'7','33','9','4 Browning Way','Grimes-Bernhard','(196) 4522719'),(43,43,'19','19','15','542 La Follette Alley','Flatley LLC','(544) 6660955'),(44,44,'39','24','40','6 Vidon Road','Miller, Brekke and Kiehn','(696) 4382715'),(45,45,'28','22','13','51 Eastwood Avenue','Rolfson-Breitenberg','(756) 5901366'),(46,46,'6','8','40','84 Truax Drive','Bruen-Ernser','(648) 6386471'),(47,47,'8','15','50','23 Sherman Park','Pacocha, Dicki and Nader','(990) 4151537'),(48,48,'31','4','36','4 Brickson Park Pass','DuBuque, Runolfsdottir and Strosin','(519) 7560474'),(49,49,'6','27','37','1 Cherokee Point','Skiles-Klein','(175) 5855872'),(50,50,'1','43','25','814 Rieder Lane','DuBuque, Jacobs and Spencer','(996) 3815453'),(51,51,'36','16','39','3516 Karstens Center','Kulas, Beer and Simonis','(222) 4827195'),(52,52,'31','25','23','02 Melvin Center','Ortiz-Romaguera','(456) 6363130'),(53,53,'38','10','47','06 Bluejay Lane','Zemlak-Spencer','(742) 4312915'),(54,54,'35','42','34','0095 Michigan Plaza','Gutmann-Kris','(552) 3442998'),(55,55,'20','10','24','3400 Reinke Avenue','Reynolds, Parker and Swaniawski','(123) 4224104'),(56,56,'8','43','36','12509 Memorial Pass','Hessel, Orn and Weimann','(876) 1692982'),(57,57,'15','35','49','58 Buhler Park','Quigley and Sons','(399) 5821816'),(58,58,'41','36','25','52079 Holmberg Junction','Heller-Kutch','(315) 5912506'),(59,59,'42','1','30','54226 Prairie Rose Parkway','Kovacek Group','(699) 8738039'),(60,60,'10','45','4','8114 Sullivan Drive','Ziemann-Homenick','(549) 2845216'),(61,61,'44','46','10','2514 Hovde Junction','Klocko Inc','(757) 9544661'),(62,62,'28','7','29','0279 Commercial Park','Ernser Inc','(462) 5885660'),(63,63,'47','15','50','67788 Macpherson Center','D\'Amore Group','(971) 7166885'),(64,64,'13','41','16','425 Amoth Point','Brekke, Ledner and Wisoky','(269) 7533050'),(65,65,'31','3','2','725 Transport Trail','Bailey-Reinger','(224) 3039886'),(66,66,'13','46','43','9407 Lawn Lane','Quitzon LLC','(369) 5757267'),(67,67,'41','6','40','56691 Kensington Crossing','VonRueden, Stiedemann and Hagenes','(433) 2989776'),(68,68,'4','4','40','0411 Quincy Crossing','Deckow-Fay','(399) 1673690'),(69,69,'24','39','6','48707 Vermont Pass','Champlin LLC','(358) 1339793'),(70,70,'33','46','1','8 Trailsway Park','Kris and Sons','(101) 5233322'),(71,71,'35','15','32','92696 Judy Junction','Rohan Group','(272) 3459241'),(72,72,'1','44','1','8519 Darwin Plaza','Adams, Dickens and Fritsch','(307) 4630023'),(73,73,'33','25','15','1396 Bunting Terrace','Welch-Okuneva','(128) 6153651'),(74,74,'6','43','3','39502 Dakota Court','Wisoky Inc','(506) 5118971'),(75,75,'23','34','32','70575 Autumn Leaf Park','Feil-Lynch','(691) 6464413'),(76,76,'25','4','2','7 Gina Lane','Feil and Sons','(759) 9113912'),(77,77,'42','12','39','81 Sloan Point','Olson and Sons','(147) 5673458'),(78,78,'16','8','50','905 Welch Hill','Carroll Group','(534) 7771797'),(79,79,'8','31','29','20 Maryland Drive','Kessler, Toy and Heller','(823) 6870857'),(80,80,'8','37','35','7673 Maple Terrace','Stanton, Kling and Stehr','(387) 5680603'),(81,81,'28','28','4','76170 Manley Alley','Stokes and Sons','(989) 3559185'),(82,82,'35','39','49','20060 Sunnyside Place','Koepp-Monahan','(604) 1225247'),(83,83,'31','7','11','7453 Milwaukee Place','Weimann-Murray','(192) 8693573'),(84,84,'37','28','4','9926 Surrey Alley','Barrows-Hintz','(690) 1833688'),(85,85,'40','14','33','7151 Green Drive','Jaskolski-Oberbrunner','(141) 6193927'),(86,86,'25','32','2','23334 Schmedeman Court','Wisoky, Windler and Hammes','(868) 1151699'),(87,87,'37','26','20','6032 Kingsford Avenue','Cassin-Klocko','(524) 1170000'),(88,88,'25','20','6','56404 Eagle Crest Avenue','Mante LLC','(153) 8894477'),(89,89,'13','22','47','83 Barby Crossing','Hammes-Olson','(739) 8414844'),(90,90,'32','44','37','83572 Dryden Circle','Oberbrunner-Veum','(100) 4938163'),(91,91,'10','25','28','7930 Melvin Lane','Daugherty, King and Kemmer','(714) 9159302'),(92,92,'39','30','20','79 Schlimgen Avenue','Reichel-Beier','(811) 7963075'),(93,93,'41','35','15','2617 Gateway Alley','Streich Group','(255) 6018775'),(94,94,'28','39','45','1426 Corry Center','Hyatt-Gutmann','(182) 3018615'),(95,95,'16','23','11','03701 Mallard Avenue','Schoen, Johnston and Barrows','(323) 1825598'),(96,96,'31','44','48','6817 Pleasure Street','Funk, Romaguera and Cummings','(989) 7786099'),(97,97,'42','40','4','1 Red Cloud Plaza','Walsh Group','(580) 2693928'),(98,98,'43','29','48','1257 Old Gate Center','Mertz, Roberts and Bode','(345) 3276666'),(99,99,'15','40','7','380 Crowley Point','McClure-Daniel','(431) 9806090'),(100,100,'12','28','1','46233 Little Fleur Lane','Johnson-Pfannerstill','(574) 5076865');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertise`
--

DROP TABLE IF EXISTS `advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertise` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT 'link ảnh quảng cáo',
  `image` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='bảng quảng cáo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertise`
--

LOCK TABLES `advertise` WRITE;
/*!40000 ALTER TABLE `advertise` DISABLE KEYS */;
/*!40000 ALTER TABLE `advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int unsigned NOT NULL,
  `id_user` int NOT NULL,
  `id_product` int NOT NULL,
  `content` longtext NOT NULL,
  `like` int DEFAULT NULL COMMENT 'số lượng like comment này',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int unsigned NOT NULL,
  `id_user` int NOT NULL,
  `list_product` mediumtext NOT NULL COMMENT 'danh sách sản phẩm và số lượng sản phẩm trong order (lưu dạng JSON)\nex:''{"id":1,"quantity":2}''',
  `total_money` int DEFAULT NULL,
  `id_address` int NOT NULL,
  `shiping_method` int NOT NULL,
  `payment_method` int NOT NULL,
  `status` int DEFAULT NULL COMMENT 'trạng thái đơn hàng: \n1: chờ xác nhận\n2 chờ lấy hàng\n3 đang giao\n4: đã giao',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL,
  `images` longtext,
  `price` int NOT NULL,
  `description` longtext,
  `name` varchar(100) NOT NULL,
  `like` int DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `flash_sale_time` datetime DEFAULT NULL,
  `flash_sale_percent` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='bảng sản phẩm công nghệ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` int unsigned NOT NULL,
  `id_product` int DEFAULT NULL,
  `id_category` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL,
  `password` varchar(45) NOT NULL,
  `avatar` longtext COMMENT 'Link ảnh avatar',
  `background` longtext COMMENT 'Link ảnh bìa',
  `full_name` varchar(45) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='bảng user ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'8Dnfhhq3Q9ze',NULL,NULL,'Orelia Wilber','(474) 4551200','2021-05-11 00:00:00',2,'owilber0@cbsnews.com'),(2,'iYeBKAjcTNm',NULL,NULL,'Gwendolyn Blennerhassett','(232) 2466574','2022-02-07 00:00:00',3,'gblennerhassett1@examiner.com'),(3,'X0g32HHCZ5',NULL,NULL,'Hetty Villiers','(792) 5381411','2021-07-02 00:00:00',1,'hvilliers2@hc360.com'),(4,'jc3cBEg',NULL,NULL,'Shelia Godman','(121) 2054136','2022-03-11 00:00:00',1,'sgodman3@intel.com'),(5,'3BCfMw',NULL,NULL,'Marsh Claridge','(253) 3623529','2022-02-06 00:00:00',3,'mclaridge4@army.mil'),(6,'weFO3VwDZ2Eq',NULL,NULL,'Halie Trillo','(237) 3107170','2021-09-26 00:00:00',1,'htrillo5@samsung.com'),(7,'mh165N',NULL,NULL,'Franny Lettson','(434) 9305913','2022-03-29 00:00:00',1,'flettson6@guardian.co.uk'),(8,'A7morHGyzxRv',NULL,NULL,'Rickey Greedy','(740) 5779593','2021-10-24 00:00:00',2,'rgreedy7@weibo.com'),(9,'lrMwHKG',NULL,NULL,'Olly Schoenrock','(769) 2360777','2021-09-26 00:00:00',2,'oschoenrock8@chron.com'),(10,'ux5Yw6307bry',NULL,NULL,'Homere Engelmann','(348) 2184224','2022-03-26 00:00:00',3,'hengelmann9@youtu.be'),(11,'bzizyZr1G',NULL,NULL,'Alwyn Brisseau','(345) 8378420','2022-03-10 00:00:00',1,'abrisseaua@miitbeian.gov.cn'),(12,'rItLItx0K',NULL,NULL,'Neal Iredale','(894) 8240623','2021-06-17 00:00:00',1,'niredaleb@timesonline.co.uk'),(13,'2NYk02J',NULL,NULL,'Freeland Nye','(801) 6226948','2022-03-22 00:00:00',2,'fnyec@harvard.edu'),(14,'g4UbjFp0t',NULL,NULL,'Rosmunda Good','(991) 1962114','2021-12-07 00:00:00',1,'rgoodd@cyberchimps.com'),(15,'1sOiuLsB9',NULL,NULL,'Guillermo Dupre','(128) 7542443','2021-08-31 00:00:00',2,'gdupree@yellowbook.com'),(16,'Ji9JsWY',NULL,NULL,'Raynard Deerr','(816) 2568180','2022-02-20 00:00:00',1,'rdeerrf@google.ru'),(17,'uMAAuQSgGmy',NULL,NULL,'Elroy Meryett','(305) 2989629','2021-06-04 00:00:00',2,'emeryettg@accuweather.com'),(18,'BCXuo8PBhde',NULL,NULL,'Vita Prisk','(346) 8134020','2021-07-17 00:00:00',3,'vpriskh@cmu.edu'),(19,'Ar9wx928gva',NULL,NULL,'Giorgi Primarolo','(884) 6427961','2021-07-27 00:00:00',3,'gprimaroloi@dyndns.org'),(20,'YDo1IE',NULL,NULL,'Jenny Francklyn','(145) 9958661','2021-06-28 00:00:00',2,'jfrancklynj@alexa.com'),(21,'8qmLx5uWsiUO',NULL,NULL,'Lorilee Skeffington','(144) 1274620','2021-07-08 00:00:00',2,'lskeffingtonk@spotify.com'),(22,'8ELAJj0',NULL,NULL,'Nikolaos Stobart','(222) 7759426','2021-06-06 00:00:00',3,'nstobartl@msu.edu'),(23,'rtxzqxcOtKw',NULL,NULL,'Dore Udy','(522) 5698110','2021-04-19 00:00:00',3,'dudym@ftc.gov'),(24,'jWPP0GnV',NULL,NULL,'Caty Stoyles','(884) 1377065','2022-01-24 00:00:00',2,'cstoylesn@answers.com'),(25,'boyT44MLY',NULL,NULL,'Griffy Kapelhoff','(115) 7123145','2022-01-27 00:00:00',1,'gkapelhoffo@webeden.co.uk'),(26,'mm4mzniwFDEx',NULL,NULL,'Giselle Temblett','(591) 2442327','2021-05-02 00:00:00',1,'gtemblettp@npr.org'),(27,'1q1eOe',NULL,NULL,'Neale Matkin','(802) 6060474','2021-11-08 00:00:00',3,'nmatkinq@lycos.com'),(28,'1i77V1X',NULL,NULL,'Merlina Gott','(844) 9228179','2021-10-21 00:00:00',1,'mgottr@springer.com'),(29,'LXNcRA',NULL,NULL,'Leanna Lowers','(472) 6216789','2022-01-03 00:00:00',3,'llowerss@multiply.com'),(30,'CUgx7qQo4',NULL,NULL,'Conrad Jentzsch','(862) 4906934','2022-03-24 00:00:00',1,'cjentzscht@creativecommons.org'),(31,'efLQlMt',NULL,NULL,'Caz Lebarree','(457) 2747506','2021-07-31 00:00:00',1,'clebarreeu@dagondesign.com'),(32,'6MTW727aAPB8',NULL,NULL,'Pasquale Paik','(160) 1598045','2022-01-06 00:00:00',2,'ppaikv@jalbum.net'),(33,'isGDpY4KOCzE',NULL,NULL,'Pattin Pakeman','(588) 6925269','2021-05-26 00:00:00',2,'ppakemanw@sfgate.com'),(34,'NrxfT5B7VO',NULL,NULL,'Juliana Freda','(354) 2517144','2022-01-28 00:00:00',3,'jfredax@squidoo.com'),(35,'uxU75nMvume',NULL,NULL,'Jody Thompson','(568) 6417552','2021-11-12 00:00:00',3,'jthompsony@netlog.com'),(36,'lEhL5ghoN',NULL,NULL,'Petr Madge','(500) 1999665','2022-04-08 00:00:00',2,'pmadgez@liveinternet.ru'),(37,'poPZzE',NULL,NULL,'Auberta Flageul','(983) 2022505','2022-04-14 00:00:00',2,'aflageul10@slideshare.net'),(38,'KQEPEL',NULL,NULL,'Trueman Berre','(585) 6153950','2021-09-05 00:00:00',2,'tberre11@hubpages.com'),(39,'BGVA7lC9',NULL,NULL,'Harriott Gaspard','(913) 7205039','2021-08-01 00:00:00',3,'hgaspard12@diigo.com'),(40,'BiR3aYtd',NULL,NULL,'Calvin Lavender','(969) 4790114','2021-06-20 00:00:00',2,'clavender13@cbsnews.com'),(41,'YBT6AosoMI',NULL,NULL,'Kory De Lisle','(430) 1860330','2021-07-10 00:00:00',2,'kde14@businessinsider.com'),(42,'7N575VY0xmSC',NULL,NULL,'Lindon Matz','(470) 6758157','2022-02-28 00:00:00',1,'lmatz15@tmall.com'),(43,'Lhpuzz5PwT6',NULL,NULL,'Elfrieda Hellyer','(619) 5235509','2022-03-03 00:00:00',2,'ehellyer16@netvibes.com'),(44,'jnwfAx',NULL,NULL,'Sibella Beange','(100) 7607133','2021-06-24 00:00:00',3,'sbeange17@ning.com'),(45,'BsNyYF',NULL,NULL,'Tamas Rouby','(236) 5128492','2021-06-15 00:00:00',2,'trouby18@ihg.com'),(46,'GJ61mD',NULL,NULL,'Sande Bortolazzi','(467) 5328733','2022-04-12 00:00:00',3,'sbortolazzi19@wunderground.com'),(47,'y1UeiH',NULL,NULL,'Rosalynd Bastone','(290) 7234595','2021-09-24 00:00:00',2,'rbastone1a@infoseek.co.jp'),(48,'oVMPo7',NULL,NULL,'Kermy Worsell','(218) 5999464','2021-12-24 00:00:00',2,'kworsell1b@fotki.com'),(49,'e7yP8m',NULL,NULL,'Luciana Dable','(650) 1589029','2022-02-28 00:00:00',2,'ldable1c@t-online.de'),(50,'E8QyiX',NULL,NULL,'Luce Kamall','(583) 7878725','2021-06-04 00:00:00',1,'lkamall1d@tmall.com'),(51,'p7RW6V0xSI',NULL,NULL,'Nathalia Marieton','(336) 5839065','2022-03-22 00:00:00',2,'nmarieton1e@mozilla.org'),(52,'koDfn9UAr6',NULL,NULL,'Sorcha Boxell','(431) 6663417','2021-06-24 00:00:00',2,'sboxell1f@joomla.org'),(53,'3bdJFLTM',NULL,NULL,'Baily Critchlow','(234) 6761287','2021-04-26 00:00:00',3,'bcritchlow1g@bravesites.com'),(54,'c24sNNRj',NULL,NULL,'Erie Gormley','(873) 8064395','2021-10-31 00:00:00',3,'egormley1h@booking.com'),(55,'gVraaff',NULL,NULL,'Ardene Houseman','(349) 4669684','2022-01-23 00:00:00',2,'ahouseman1i@ftc.gov'),(56,'ZFpXBg',NULL,NULL,'Currey Ros','(759) 4194517','2021-06-01 00:00:00',3,'cros1j@shutterfly.com'),(57,'KqiFKPG4',NULL,NULL,'Sherie O\'Kennavain','(649) 9941280','2021-06-19 00:00:00',2,'sokennavain1k@list-manage.com'),(58,'3bUfxfZvU2qV',NULL,NULL,'Sargent Skellorne','(491) 2667452','2021-09-01 00:00:00',2,'sskellorne1l@home.pl'),(59,'lRNdl3eeC0',NULL,NULL,'Montague Lawley','(843) 4889337','2022-01-17 00:00:00',2,'mlawley1m@free.fr'),(60,'3c6T4bzcoh',NULL,NULL,'James Driffill','(861) 2795674','2021-11-17 00:00:00',3,'jdriffill1n@pagesperso-orange.fr'),(61,'E3Wb0kt1SB5',NULL,NULL,'Winny Dooher','(482) 2912627','2022-01-16 00:00:00',2,'wdooher1o@si.edu'),(62,'IzdY0RxAPVI',NULL,NULL,'Gladi Halford','(221) 1444578','2021-10-12 00:00:00',2,'ghalford1p@histats.com'),(63,'XYb6pUHo',NULL,NULL,'Claiborne Stithe','(387) 8801561','2021-07-28 00:00:00',2,'cstithe1q@histats.com'),(64,'H0vQREfoKac',NULL,NULL,'Vladimir Rawes','(366) 1995149','2022-02-05 00:00:00',3,'vrawes1r@youtube.com'),(65,'qvzGVoxm',NULL,NULL,'Melisandra Caldow','(223) 7872875','2021-06-30 00:00:00',2,'mcaldow1s@apache.org'),(66,'9nqcbOodbmj',NULL,NULL,'Darsie Fawks','(192) 1976996','2021-10-30 00:00:00',3,'dfawks1t@arizona.edu'),(67,'d7nvpqTiG',NULL,NULL,'Kimmi Minchi','(995) 3108767','2021-12-18 00:00:00',1,'kminchi1u@admin.ch'),(68,'UhzqM8R6n',NULL,NULL,'Jule Hauxby','(332) 3001094','2021-08-06 00:00:00',1,'jhauxby1v@usnews.com'),(69,'EAt0DsWNlr',NULL,NULL,'Kalle Rathbone','(161) 8062705','2022-03-11 00:00:00',1,'krathbone1w@furl.net'),(70,'QwydJD',NULL,NULL,'Asher Stock','(103) 7677436','2022-03-25 00:00:00',3,'astock1x@t-online.de'),(71,'VZs7Yjza',NULL,NULL,'Yalonda Waeland','(587) 4706166','2021-11-07 00:00:00',3,'ywaeland1y@usda.gov'),(72,'ZHMh9zMs',NULL,NULL,'Ronnica Peizer','(428) 1684129','2021-08-04 00:00:00',1,'rpeizer1z@google.fr'),(73,'iFrN6TDB8k1R',NULL,NULL,'Garvey Dowsett','(837) 4259897','2021-12-14 00:00:00',3,'gdowsett20@instagram.com'),(74,'klkqNKnS',NULL,NULL,'Godfry Guerreiro','(757) 7483917','2021-12-08 00:00:00',3,'gguerreiro21@purevolume.com'),(75,'pOSgXRzYLz',NULL,NULL,'Kiley Kimmons','(803) 8365694','2022-03-03 00:00:00',3,'kkimmons22@omniture.com'),(76,'O1QTI8',NULL,NULL,'Justino Harwood','(945) 1164223','2022-03-03 00:00:00',3,'jharwood23@macromedia.com'),(77,'gKxLmp',NULL,NULL,'Piper Radmore','(201) 4023554','2021-12-14 00:00:00',1,'pradmore24@disqus.com'),(78,'pAQ8ee',NULL,NULL,'Tymothy Antognozzii','(391) 5590867','2021-10-30 00:00:00',2,'tantognozzii25@forbes.com'),(79,'8nNXRSJq',NULL,NULL,'Ferris Keling','(499) 5531910','2022-04-01 00:00:00',1,'fkeling26@dell.com'),(80,'z48TgNzLu1MG',NULL,NULL,'Emlen Routhorn','(472) 5831623','2021-05-24 00:00:00',2,'erouthorn27@slideshare.net'),(81,'gWxfYLO',NULL,NULL,'Tyson Brewerton','(293) 6076890','2021-10-18 00:00:00',3,'tbrewerton28@walmart.com'),(82,'1t0ZbIRCM5',NULL,NULL,'Haleigh Bulstrode','(613) 7331545','2022-03-21 00:00:00',3,'hbulstrode29@boston.com'),(83,'Zdzjq1KM',NULL,NULL,'Diana Overnell','(931) 3164774','2021-08-21 00:00:00',2,'dovernell2a@cyberchimps.com'),(84,'5i2vVRyN8',NULL,NULL,'Austin Peake','(563) 6057127','2021-07-22 00:00:00',1,'apeake2b@smugmug.com'),(85,'Wfv2olafbnH',NULL,NULL,'Fons Purves','(697) 1672319','2021-11-30 00:00:00',3,'fpurves2c@vkontakte.ru'),(86,'8rB66gjWA',NULL,NULL,'Clifford Yurchishin','(463) 9251316','2021-09-23 00:00:00',2,'cyurchishin2d@abc.net.au'),(87,'SxNpha42',NULL,NULL,'Alwyn Cossum','(391) 5534730','2021-08-15 00:00:00',2,'acossum2e@disqus.com'),(88,'Z3ujLkmUiQJR',NULL,NULL,'Damon Noye','(121) 1964617','2021-08-25 00:00:00',3,'dnoye2f@apple.com'),(89,'1jKVEVsv',NULL,NULL,'Ossie Nelle','(199) 7059903','2021-09-03 00:00:00',2,'onelle2g@vistaprint.com'),(90,'KLoFFP',NULL,NULL,'Janey Meere','(926) 8969485','2022-03-01 00:00:00',3,'jmeere2h@reuters.com'),(91,'15tH1A0N',NULL,NULL,'Deeyn Roarty','(974) 5846166','2021-08-29 00:00:00',3,'droarty2i@bloglovin.com'),(92,'rY296IgfW',NULL,NULL,'Adara Denyukhin','(340) 3737506','2021-09-19 00:00:00',1,'adenyukhin2j@nifty.com'),(93,'0UPjdtRe',NULL,NULL,'Lorianna Bawden','(940) 8915775','2022-01-14 00:00:00',2,'lbawden2k@google.it'),(94,'YqPWpk',NULL,NULL,'Yevette Caesar','(428) 7644166','2021-12-25 00:00:00',2,'ycaesar2l@harvard.edu'),(95,'JC5LUQ0By2',NULL,NULL,'Wain Benadette','(970) 3527406','2021-10-07 00:00:00',1,'wbenadette2m@godaddy.com'),(96,'aom2BCsXJDBm',NULL,NULL,'Konstantine Yitzhakov','(884) 3052061','2021-06-23 00:00:00',2,'kyitzhakov2n@house.gov'),(97,'9CUig4oMq',NULL,NULL,'Chevy Hordle','(540) 6280410','2022-03-11 00:00:00',2,'chordle2o@huffingtonpost.com'),(98,'D3bvG3StQw',NULL,NULL,'Adelina Edwin','(218) 7414943','2021-12-16 00:00:00',3,'aedwin2p@linkedin.com'),(99,'nWPL54',NULL,NULL,'Silvie Perotti','(696) 1378482','2021-05-07 00:00:00',3,'sperotti2q@acquirethisname.com'),(100,'bz9naH1gv5s',NULL,NULL,'Lilllie Charlick','(658) 2828345','2021-11-25 00:00:00',2,'lcharlick2r@jalbum.net');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-18  7:08:44
