CREATE DATABASE  IF NOT EXISTS `happiness` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `happiness`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: happiness
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `climate`
--

DROP TABLE IF EXISTS `climate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `climate` (
  `climate_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  `precipitation` float DEFAULT NULL,
  PRIMARY KEY (`climate_id`),
  KEY `fk_country_idx` (`country`),
  CONSTRAINT `fk_country_climate` FOREIGN KEY (`country`) REFERENCES `happiness_score` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `climate`
--

LOCK TABLES `climate` WRITE;
/*!40000 ALTER TABLE `climate` DISABLE KEYS */;
INSERT INTO `climate` VALUES (1,'Afghanistan',327),(3,'Albania',1485),(4,'United Arab Emirates',78),(5,'Argentina',591),(6,'Armenia',562),(8,'Australia',534),(9,'Austria',1110),(10,'Azerbaijan',447),(12,'Belgium',847),(13,'Benin',1039),(14,'Burkina Faso',748),(15,'Bangladesh',2666),(16,'Bulgaria',608),(17,'Bahrain',83),(19,'Bosnia and Herzegovina',1028),(20,'Belarus',618),(22,'Bolivia',1146),(23,'Brazil',1761),(27,'Botswana',416),(29,'Canada',537),(30,'Switzerland',1537),(31,'Chile',1522),(32,'China',645),(33,'Ivory Coast',1348),(34,'Cameroon',1604),(35,'Congo',1543),(36,'Congo',1646),(37,'Colombia',3240),(38,'Comoros',900),(40,'Costa Rica',2926),(42,'Cyprus',498),(43,'Czechia',677),(44,'Germany',700),(47,'Denmark',703),(48,'Dominican Republic',1410),(49,'Algeria',89),(50,'Ecuador',2274),(51,'Egypt',18.1),(53,'Spain',636),(54,'Estonia',626),(55,'Ethiopia',848),(56,'Finland',536),(58,'France',867),(59,'Gabon',1831),(60,'United Kingdom',1220),(61,'Georgia',1026),(62,'Ghana',1187),(63,'Guinea',1651),(64,'Gambia',836),(67,'Greece',652),(69,'Guatemala',1996),(71,'Honduras',1976),(72,'Croatia',1113),(74,'Hungary',589),(75,'Indonesia',2702),(76,'India',1083),(77,'Ireland',1118),(78,'Iran',228),(79,'Iraq',216),(80,'Iceland',1940),(81,'Israel',435),(82,'Italy',832),(83,'Jamaica',2051),(84,'Jordan',111),(85,'Japan',1668),(86,'Kazakhstan',250),(87,'Kenya',630),(88,'Kyrgyzstan',533),(89,'Cambodia',1904),(92,'Kuwait',121),(93,'Laos',1834),(94,'Lebanon',661),(95,'Liberia',2391),(96,'Libya',56),(98,'Sri Lanka',1712),(99,'Lesotho',788),(100,'Lithuania',656),(101,'Luxembourg',934),(102,'Latvia',667),(103,'Morocco',346),(104,'Moldova',450),(105,'Madagascar',1513),(107,'Mexico',758),(108,'North Macedonia',619),(109,'Mali',282),(110,'Malta',560),(111,'Myanmar',2091),(112,'Mongolia',241),(113,'Mozambique',1032),(114,'Mauritania',92),(115,'Mauritius',2041),(116,'Malawi',1181),(117,'Malaysia',2875),(118,'Namibia',285),(119,'Niger',151),(120,'Nigeria',1150),(121,'Nicaragua',2280),(122,'Netherlands',778),(123,'Norway',1414),(124,'Nepal',1500),(125,'New Zealand',1732),(127,'Pakistan',494),(128,'Panama',2928),(129,'Peru',1738),(130,'Philippines',2348),(132,'Poland',600),(135,'Portugal',854),(136,'Paraguay',1130),(139,'Romania',637),(140,'Russia',460),(141,'Rwanda',1212),(142,'Saudi Arabia',59),(144,'Senegal',686),(145,'Singapore',2497),(147,'Sierra Leone',2526),(148,'El Salvador',1784),(153,'Slovakia',824),(154,'Slovenia',1162),(155,'Sweden',624),(159,'Chad',322),(160,'Togo',1168),(161,'Thailand',1622),(162,'Tajikistan',691),(163,'Turkmenistan',161),(166,'Tunisia',207),(167,'Turkey',593),(168,'Tanzania',1071),(169,'Uganda',1180),(170,'Ukraine',565),(171,'Uruguay',1300),(172,'United States',715),(173,'Uzbekistan',206),(175,'Venezuela',2044),(176,'Vietnam',1821),(179,'Yemen',167),(180,'South Africa',495),(181,'Zambia',1020),(182,'Zimbabwe',657);
/*!40000 ALTER TABLE `climate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `economics`
--

DROP TABLE IF EXISTS `economics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `economics` (
  `economics_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  `gdp_per_capita` float DEFAULT NULL,
  `inflation` float DEFAULT NULL,
  `unemployment` float DEFAULT NULL,
  PRIMARY KEY (`economics_id`),
  KEY `fk_country_idx` (`country`),
  CONSTRAINT `fk_country_economics` FOREIGN KEY (`country`) REFERENCES `happiness_score` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `economics`
--

LOCK TABLES `economics` WRITE;
/*!40000 ALTER TABLE `economics` DISABLE KEYS */;
INSERT INTO `economics` VALUES (3,'afghanistan',352.604,0,14.1),(6,'albania',6810.11,6.7252,11.588),(8,'united arab emirates',53708,4.82789,2.873),(9,'argentina',13650.6,0,6.805),(10,'armenia',7018.05,8.64091,8.608),(13,'australia',65077.7,6.5941,3.701),(14,'austria',52084.7,8.54687,4.992),(15,'azerbaijan',7770.59,13.8523,5.65),(17,'belgium',49942.1,9.59751,5.558),(18,'benin',1304.99,1.35078,1.473),(19,'burkina faso',830.044,14.2902,5.348),(20,'bangladesh',2687.9,7.69695,5.247),(21,'bulgaria',13974.4,15.3253,4.268),(22,'bahrain',30146.9,3.62574,1.326),(24,'bosnia and herzegovina',7587.59,0,12.657),(25,'belarus',7994.65,15.2097,3.574),(28,'bolivia',3600.12,1.74633,3.552),(29,'brazil',9065.5,9.28011,9.231),(33,'botswana',7726.11,11.6656,23.615),(35,'canada',55509.4,6.8028,5.28),(36,'switzerland',93259.9,2.83503,4.3),(38,'chile',15411.2,11.6439,8.299),(39,'china',12662.6,1.97358,4.98),(40,'ivory coast',2491.9,5.27617,2.434),(41,'cameroon',1563.49,6.24768,3.687),(44,'colombia',6657.09,10.1772,10.547),(45,'comoros',1484.89,0,5.854),(47,'costa rica',13365.4,8.27477,11.325),(51,'cyprus',32048.2,8.39548,6.807),(52,'czechia',27226.6,15.1002,2.224),(53,'germany',48718,6.87257,3.135),(56,'denmark',67790.1,7.69657,4.434),(57,'dominican republic',10111.2,8.81109,5.504),(58,'algeria',5023.25,9.26552,12.437),(62,'ecuador',6476.64,3.46617,3.761),(65,'spain',29674.5,8.39058,12.917),(66,'estonia',28114.1,19.3983,5.571),(67,'ethiopia',1027.5,33.8899,3.493),(68,'finland',50734.7,7.12351,6.719),(70,'france',40886.3,5.22237,7.308),(73,'gabon',8820.35,4.23125,20.501),(74,'united kingdom',45564.2,7.92205,3.73),(75,'georgia',6729.85,11.8982,11.657),(76,'ghana',2218.41,31.2559,3.084),(78,'guinea',1515.17,10.493,5.328),(82,'greece',20867.3,9.64526,12.426),(85,'guatemala',5473.21,6.88513,3.051),(89,'honduras',3012.22,9.08964,7.037),(91,'croatia',18673.2,10.7806,6.96),(93,'hungary',18355.8,14.6081,3.609),(98,'indonesia',4787.91,4.20946,3.462),(101,'india',2366.31,6.69903,4.822),(103,'ireland',103983,7.82946,4.479),(105,'iraq',6441.92,4.99477,15.588),(106,'iceland',75135.1,8.30875,3.789),(107,'israel',54930.9,4.3936,3.695),(108,'italy',35068.8,8.20129,8.069),(109,'jamaica',6047.22,10.3496,4.083),(110,'jordan',4311,4.22916,18.2),(111,'japan',34017.3,2.4977,2.6),(112,'kazakhstan',11484.4,15.0279,4.86),(113,'kenya',2099.3,7.65986,5.805),(115,'cambodia',1759.61,5.3437,0.247),(119,'kuwait',42823.8,3.98065,2.124),(121,'laos',2054.43,22.9562,1.209),(122,'lebanon',3823.94,171.205,11.599),(123,'liberia',754.533,0,2.99),(124,'libya',8211.38,4.5103,19.319),(128,'sri lanka',3342.72,49.7211,6.33),(130,'lesotho',992.857,8.2718,16.668),(132,'lithuania',25078.7,19.705,5.956),(133,'luxembourg',125006,6.33601,4.585),(134,'latvia',21508.4,17.3103,6.815),(137,'morocco',3441.99,6.65704,9.53),(139,'moldova',5715.28,28.7373,0.909),(140,'madagascar',516.772,8.16059,3.186),(143,'mexico',11476.7,7.89628,3.256),(145,'north macedonia',7485.6,14.2047,14.477),(146,'mali',831.223,9.62148,3.09),(147,'malta',34563.4,6.15376,2.929),(148,'myanmar',1149.02,0,2.83),(150,'montenegro',10093.4,13.0403,15.288),(151,'mongolia',5045.5,15.148,6.211),(153,'mozambique',558.299,10.2794,3.621),(154,'mauritania',2057.38,9.52527,10.602),(155,'mauritius',10239.8,10.7738,6.322),(156,'malawi',643.433,20.954,5.051),(157,'malaysia',11993.2,3.3787,3.93),(159,'namibia',4895.68,6.08128,19.748),(161,'niger',588.899,4.22622,0.552),(162,'nigeria',2162.63,18.8472,3.827),(163,'nicaragua',2252.31,10.4674,4.978),(164,'netherlands',57025,10.0012,3.524),(165,'norway',108798,5.76412,3.233),(166,'nepal',1348.16,7.65079,10.922),(168,'new zealand',48216.5,7.17222,3.297),(171,'pakistan',1589.26,19.8739,5.548),(172,'panama',17357.6,2.85965,8.202),(173,'peru',7239.11,8.33371,3.85),(174,'philippines',3499.11,5.82116,2.598),(177,'poland',18732.5,14.4295,2.886),(181,'portugal',24515.3,7.83269,6.011),(182,'paraguay',6187.07,9.76557,6.755),(188,'romania',15692.3,13.7955,5.614),(189,'russia',15445.2,0,3.867),(190,'rwanda',966.571,17.6892,15.085),(192,'saudi arabia',30447.9,2.47407,5.589),(194,'senegal',1594.99,9.69682,2.968),(195,'singapore',88428.7,6.12106,3.591),(197,'sierra leone',475.796,27.2083,3.194),(198,'el salvador',5048.44,7.19862,2.999),(201,'serbia',9537.68,11.9815,8.684),(207,'slovakia',21279.5,12.7741,6.143),(208,'slovenia',28439.3,8.8337,4.013),(209,'sweden',56299.5,8.36929,7.392),(215,'chad',699.463,5.78803,1.104),(217,'togo',923.24,7.96757,2.065),(218,'thailand',6913.05,6.07741,0.94),(219,'tajikistan',1076.43,0,6.981),(220,'turkmenistan',8792.55,0,4.121),(228,'tunisia',3607.91,8.30646,15.301),(229,'turkey',10674.5,72.3088,10.432),(231,'tanzania',1193.36,4.35027,2.609),(232,'uganda',964.354,7.19579,2.93),(233,'ukraine',4575.98,20.1836,0),(235,'uruguay',20499.2,9.10438,7.877),(236,'united states',77246.7,8.0028,3.65),(237,'uzbekistan',2276.16,11.4466,4.535),(242,'vietnam',4179.01,3.15651,1.535),(245,'kosovo',5290.98,11.5805,0),(247,'south africa',6766.48,7.03973,28.838),(248,'zambia',1456.9,10.9932,5.993),(249,'zimbabwe',1676.82,104.705,10.087);
/*!40000 ALTER TABLE `economics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `governance`
--

DROP TABLE IF EXISTS `governance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `governance` (
  `governance_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  `country_code` char(3) DEFAULT NULL,
  `corruption` float DEFAULT NULL,
  `government_effectiveness` float DEFAULT NULL,
  `political_stability` float DEFAULT NULL,
  `regulatory_quality` float DEFAULT NULL,
  `rule_of_law` float DEFAULT NULL,
  `accountability` float DEFAULT NULL,
  PRIMARY KEY (`governance_id`),
  KEY `fk_country_idx` (`country`),
  CONSTRAINT `fk_country_governance` FOREIGN KEY (`country`) REFERENCES `happiness_score` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `governance`
--

LOCK TABLES `governance` WRITE;
/*!40000 ALTER TABLE `governance` DISABLE KEYS */;
INSERT INTO `governance` VALUES (1,'Finland','FIN',99.53,96.7,79.72,97.17,100,98.55),(2,'Denmark','DNK',100,98.58,77.36,98.58,99.53,98.07),(3,'Iceland','ISL',91.51,93.87,95.28,88.21,95.28,95.17),(4,'Switzerland','CHE',97.17,99.53,92.45,94.34,97.64,99.03),(5,'Netherlands','NLD',96.7,95.28,71.23,96.7,93.4,97.58),(6,'Luxembourg','LUX',96.23,97.64,86.32,98.11,98.58,97.1),(7,'Sweden','SWE',97.64,94.81,80.19,96.23,93.87,96.62),(8,'Norway','NOR',98.11,98.11,76.42,91.98,98.11,100),(9,'Israel','ISR',78.77,85.38,11.79,86.32,81.13,67.63),(10,'New Zealand','NZL',99.06,89.15,96.23,99.06,96.7,99.52),(11,'Austria','AUT',84.91,91.51,68.87,87.26,95.75,94.2),(12,'Australia','AUS',95.28,92.92,81.6,99.53,91.04,93.24),(13,'Ireland','IRL',93.87,93.4,78.77,95.28,91.51,96.14),(14,'Germany','DEU',95.75,88.21,67.45,92.45,91.98,94.69),(15,'Canada','CAN',93.4,94.34,73.58,95.75,92.92,95.65),(16,'United States','USA',82.55,86.79,45.28,91.04,88.68,72.95),(17,'United Kingdom','GBR',92.92,85.85,62.26,93.4,89.15,89.37),(18,'Czechia','CZE',74.53,81.13,75,88.68,83.49,80.68),(19,'Belgium','BEL',89.62,84.91,65.57,86.79,88.21,92.75),(20,'France','FRA',85.38,83.02,56.13,85.38,85.38,85.99),(21,'Bahrain','BHR',59.43,72.17,30.66,78.3,65.09,10.14),(22,'Slovenia','SVN',78.3,80.66,70.75,73.58,82.55,77.78),(23,'Costa Rica','CRI',66.98,55.66,83.49,71.23,64.62,82.13),(24,'United Arab Emirates','ARE',83.49,88.68,70.28,82.08,78.77,18.36),(25,'Saudi Arabia','SAU',63.68,70.75,32.08,65.09,58.02,7.73),(26,'Taiwan Province of China','TWN',83.02,90.57,72.17,90.57,86.79,83.09),(27,'Singapore','SGP',98.58,100,97.17,100,99.06,44.44),(28,'Romania','ROU',55.66,53.3,60.85,63.68,62.26,63.77),(29,'Spain','ESP',75,77.83,53.3,75.94,77.36,79.71),(30,'Uruguay','URY',91.98,77.36,88.21,74.06,75.94,91.79),(31,'Italy','ITA',68.87,66.98,58.49,68.87,58.49,82.61),(32,'Malta','MLT',61.79,76.89,80.66,73.11,76.42,83.57),(33,'Lithuania','LTU',76.42,79.72,69.34,87.74,83.02,81.16),(34,'Slovakia','SVK',60.38,63.68,59.91,76.89,70.28,75.36),(35,'Estonia','EST',91.04,89.62,71.7,92.92,89.62,87.92),(36,'Panama','PAN',28.77,47.64,54.72,55.19,40.09,62.32),(37,'Brazil','BRA',32.08,30.66,33.96,43.87,43.4,55.56),(38,'Guatemala','GTM',11.32,16.51,34.91,41.51,13.21,33.82),(39,'Kazakhstan','KAZ',48.58,58.49,32.55,52.83,35.85,19.81),(40,'Cyprus','CYP',66.04,75.47,58.96,75.47,68.87,73.91),(41,'Latvia','LVA',75.47,75,60.38,84.91,79.72,75.85),(42,'Serbia','SRB',35.38,57.08,40.09,56.13,49.06,42.51),(43,'Chile','CHL',80.66,69.34,51.42,81.13,72.64,78.26),(44,'Nicaragua','NIC',7.55,13.68,33.49,18.4,8.96,11.59),(45,'Mexico','MEX',17.45,42.45,21.7,46.7,20.75,42.03),(46,'Croatia','HRV',59.91,70.28,66.98,68.4,61.32,66.18),(47,'Poland','POL',68.4,61.79,61.79,74.53,64.15,65.22),(48,'El Salvador','SLV',27.83,38.68,41.04,34.91,24.06,36.71),(49,'Kuwait','KWT',58.96,57.55,54.25,60.38,57.55,29.47),(50,'Hungary','HUN',51.42,68.87,67.92,64.62,63.21,59.9),(51,'Mauritius','MUS',65.57,75.94,75.47,84.43,77.83,65.7),(52,'Uzbekistan','UZB',24.53,38.21,39.62,31.6,21.7,12.56),(53,'Japan','JPN',90.57,96.23,86.79,91.51,92.45,80.19),(54,'Honduras','HND',18.87,19.34,25,33.49,16.98,34.3),(55,'Portugal','PRT',75.94,80.19,75.94,75,83.96,89.86),(56,'Argentina','ARG',36.32,41.98,46.7,25.94,34.91,62.8),(57,'Greece','GRC',56.6,66.51,49.06,67.45,59.91,76.81),(58,'South Korea','KOR',76.89,90.09,64.62,83.96,84.91,74.88),(59,'Philippines','PHL',33.49,56.13,20.28,53.77,33.49,43.96),(60,'Thailand','THA',35.85,58.02,31.6,58.49,54.72,31.4),(61,'Moldova','MDA',42.92,40.57,22.17,54.72,41.98,51.69),(62,'Jamaica','JAM',54.25,71.7,57.55,58.96,51.89,64.25),(63,'Kyrgyzstan','KGZ',10.38,17.92,25.47,28.77,12.74,28.99),(64,'Belarus','BLR',31.6,19.81,18.4,7.55,11.79,5.31),(65,'Colombia','COL',41.04,53.77,23.11,56.6,38.68,54.59),(66,'Bosnia and Herzegovina','BIH',25.94,12.74,29.72,45.75,41.51,37.68),(67,'Mongolia','MNG',33.02,34.91,63.21,42.45,45.75,56.04),(68,'Dominican Republic','DOM',37.26,50,55.19,54.25,50.47,57.97),(69,'Malaysia','MYS',62.26,79.25,51.89,72.64,68.4,47.34),(70,'Bolivia','BOL',20.75,31.6,36.32,10.38,9.43,39.61),(71,'China','CHN',55.19,68.4,28.3,36.79,52.83,6.28),(72,'Paraguay','PRY',15.09,29.72,48.11,45.28,30.19,47.83),(73,'Peru','PER',22.17,35.38,27.83,59.91,32.55,49.76),(74,'Montenegro','MNE',50.94,51.42,44.34,69.34,48.58,56.52),(75,'Ecuador','ECU',29.72,40.09,38.68,35.38,26.89,48.79),(76,'Vietnam','VNM',45.75,59.43,45.75,36.32,47.64,13.53),(77,'Turkmenistan','TKM',5.66,12.26,42.45,1.89,6.13,0.48),(78,'Russia','RUS',19.34,25.94,16.04,13.21,12.26,14.49),(79,'Hong Kong S.A.R. of China','HKG',92.45,95.75,66.51,93.87,87.74,35.27),(80,'Armenia','ARM',56.13,39.15,17.92,51.89,46.23,51.21),(81,'Tajikistan','TJK',6.13,23.58,21.23,11.32,10.85,3.86),(82,'Nepal','NPL',33.96,16.04,37.74,27.83,37.74,44.93),(83,'Bulgaria','BGR',50,42.92,52.36,61.79,49.53,57),(84,'Libya','LBY',3.77,2.36,3.77,1.42,2.36,11.11),(85,'Indonesia','IDN',37.74,66.04,29.25,59.43,45.28,52.66),(86,'Ivory Coast','CIV',42.45,37.74,26.42,46.23,35.38,34.78),(87,'North Macedonia','MKD',43.87,49.53,50.94,66.98,50,53.62),(88,'Albania','ALB',38.68,56.6,50.47,57.55,47.17,52.17),(89,'South Africa','ZAF',44.81,48.11,19.81,44.34,54.25,68.6),(90,'Azerbaijan','AZE',16.98,50.94,15.57,48.11,25.94,9.66),(91,'Gambia','GMB',46.23,27.36,48.58,24.06,37.26,45.41),(92,'Bangladesh','BGD',15.57,23.11,13.21,17.92,29.72,28.02),(93,'Laos','LAO',19.81,30.19,74.06,16.04,23.58,4.83),(94,'Algeria','DZA',28.3,32.55,19.34,14.15,22.64,21.74),(95,'Liberia','LBR',20.28,8.02,35.85,16.51,19.34,46.38),(96,'Ukraine','UKR',29.25,33.02,5.66,40.57,18.87,45.89),(97,'Congo','COG',7.08,8.96,46.23,9.43,15.09,15.94),(98,'Morocco','MAR',41.51,47.17,34.43,49.06,44.81,32.85),(99,'Mozambique','MOZ',21.7,25,11.32,22.64,16.51,31.88),(100,'Cameroon','CMR',13.21,18.87,10.85,19.34,15.57,17.39),(101,'Senegal','SEN',53.77,52.83,40.57,41.04,42.92,54.11),(102,'Niger','NER',31.13,28.77,9.91,23.11,34.43,36.23),(103,'Georgia','GEO',72.17,72.64,28.77,81.6,56.6,48.31),(104,'Gabon','GAB',16.04,24.53,49.53,25.47,22.17,24.15),(105,'Iraq','IRQ',10.85,9.43,2.36,11.79,3.3,22.22),(106,'Venezuela','VEN',1.89,5.19,12.26,2.36,0.47,6.76),(107,'Guinea','GIN',18.4,15.57,16.98,15.57,14.15,19.32),(108,'Iran','IRN',14.15,18.4,8.49,4.25,17.45,8.7),(109,'Ghana','GHA',52.83,50.47,43.87,44.81,51.42,59.42),(110,'Turkey','TUR',34.91,43.87,13.68,43.4,36.79,23.19),(111,'Burkina Faso','BFA',51.89,21.23,8.02,34.43,28.3,30.43),(112,'Cambodia','KHM',9.91,36.79,44.81,25,21.23,13.04),(113,'Benin','BEN',50.47,45.75,33.02,39.62,28.77,37.2),(114,'Comoros','COM',9.43,6.13,39.15,10.85,8.49,24.64),(115,'Uganda','UGA',16.51,31.13,17.45,33.02,39.15,26.09),(116,'Nigeria','NGA',14.62,14.15,7.55,12.26,19.81,32.37),(117,'Kenya','KEN',24.06,41.04,15.09,39.15,40.57,39.13),(118,'Tunisia','TUN',47.64,41.51,24.06,37.26,50.94,40.58),(119,'Pakistan','PAK',22.64,29.25,6.6,20.28,25,25.12),(120,'Mali','MLI',21.23,11.32,1.42,28.3,17.92,23.67),(121,'Namibia','NAM',60.85,55.19,64.15,52.36,62.74,63.29),(122,'Eswatini, Kingdom of','SWZ',26.89,26.42,38.21,23.58,29.25,14.98),(123,'Myanmar','MMR',12.74,5.66,2.83,9.91,5.66,1.93),(124,'Sri Lanka','LKA',40.09,35.85,18.87,27.36,52.36,40.1),(125,'Madagascar','MDG',17.92,14.62,25.94,20.75,18.4,38.16),(126,'Egypt','EGY',26.42,33.96,14.15,24.53,42.45,9.18),(127,'Chad','TCD',4.72,8.49,8.96,12.74,8.02,8.21),(128,'Ethiopia','ETH',36.79,24.06,4.72,16.98,26.42,20.77),(129,'Yemen','YEM',1.42,0.47,1.89,2.83,1.89,5.8),(130,'Mauritania','MRT',23.11,25.47,27.36,14.62,25.47,28.5),(131,'Jordan','JOR',58.02,59.91,35.38,57.08,57.08,27.05),(132,'Togo','TGO',27.36,28.3,20.75,30.66,30.66,27.54),(133,'India','IND',44.34,63.21,24.53,50.94,55.19,49.28),(134,'Zambia','ZMB',34.43,27.83,50,32.08,33.02,43),(135,'Malawi','MWI',30.19,20.75,41.51,22.17,44.34,50.72),(136,'Tanzania','TZA',43.4,34.43,36.79,30.19,38.21,29.95),(137,'Sierra Leone','SLE',32.55,11.79,42.92,15.09,23.11,41.55),(138,'Lesotho','LSO',41.98,17.45,41.98,29.25,33.96,50.24),(139,'Botswana','BWA',74.06,67.92,87.26,72.17,66.04,60.87),(140,'Rwanda','RWA',70.28,61.32,47.64,58.02,56.13,22.71),(141,'Zimbabwe','ZWE',8.49,10.85,16.51,6.6,11.32,18.84),(142,'Lebanon','LBN',13.68,7.55,9.43,13.68,13.68,30.92),(143,'Afghanistan','AFG',12.26,1.89,0.47,8.96,5.19,2.42);
/*!40000 ALTER TABLE `governance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happiness_score`
--

DROP TABLE IF EXISTS `happiness_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happiness_score` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(100) NOT NULL,
  `RANK` int NOT NULL,
  `happiness_score` float NOT NULL,
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `country` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happiness_score`
--

LOCK TABLES `happiness_score` WRITE;
/*!40000 ALTER TABLE `happiness_score` DISABLE KEYS */;
INSERT INTO `happiness_score` VALUES (1,'Finland',1,7.821),(2,'Denmark',2,7.636),(3,'Iceland',3,7.557),(4,'Switzerland',4,7.512),(5,'Netherlands',5,7.415),(6,'Luxembourg',6,7.404),(7,'Sweden',7,7.384),(8,'Norway',8,7.365),(9,'Israel',9,7.364),(10,'New Zealand',10,7.2),(11,'Austria',11,7.163),(12,'Australia',12,7.162),(13,'Ireland',13,7.041),(14,'Germany',14,7.034),(15,'Canada',15,7.025),(16,'United States',16,6.977),(17,'United Kingdom',17,6.943),(18,'Czechia',18,6.92),(19,'Belgium',19,6.805),(20,'France',20,6.687),(21,'Bahrain',21,6.647),(22,'Slovenia',22,6.63),(23,'Costa Rica',23,6.582),(24,'United Arab Emirates',24,6.576),(25,'Saudi Arabia',25,6.523),(26,'Taiwan Province of China',26,6.512),(27,'Singapore',27,6.48),(28,'Romania',28,6.477),(29,'Spain',29,6.476),(30,'Uruguay',30,6.474),(31,'Italy',31,6.467),(32,'Kosovo',32,6.455),(33,'Malta',33,6.447),(34,'Lithuania',34,6.446),(35,'Slovakia',35,6.391),(36,'Estonia',36,6.341),(37,'Panama',37,6.309),(38,'Brazil',38,6.293),(39,'Guatemala',39,6.262),(40,'Kazakhstan',40,6.234),(41,'Cyprus',41,6.221),(42,'Latvia',42,6.18),(43,'Serbia',43,6.178),(44,'Chile',44,6.172),(45,'Nicaragua',45,6.165),(46,'Mexico',46,6.128),(47,'Croatia',47,6.125),(48,'Poland',48,6.123),(49,'El Salvador',49,6.12),(50,'Kuwait',50,6.106),(51,'Hungary',51,6.086),(52,'Mauritius',52,6.071),(53,'Uzbekistan',53,6.063),(54,'Japan',54,6.039),(55,'Honduras',55,6.022),(56,'Portugal',56,6.016),(57,'Argentina',57,5.967),(58,'Greece',58,5.948),(59,'South Korea',59,5.935),(60,'Philippines',60,5.904),(61,'Thailand',61,5.891),(62,'Moldova',62,5.857),(63,'Jamaica',63,5.85),(64,'Kyrgyzstan',64,5.828),(65,'Belarus',65,5.821),(66,'Colombia',66,5.781),(67,'Bosnia and Herzegovina',67,5.768),(68,'Mongolia',68,5.761),(69,'Dominican Republic',69,5.737),(70,'Malaysia',70,5.711),(71,'Bolivia',71,5.6),(72,'China',72,5.585),(73,'Paraguay',73,5.578),(74,'Peru',74,5.559),(75,'Montenegro',75,5.547),(76,'Ecuador',76,5.533),(77,'Vietnam',77,5.485),(78,'Turkmenistan',78,5.474),(79,'North Cyprus',79,5.467),(80,'Russia',80,5.459),(81,'Hong Kong S.A.R. of China',81,5.425),(82,'Armenia',82,5.399),(83,'Tajikistan',83,5.377),(84,'Nepal',84,5.377),(85,'Bulgaria',85,5.371),(86,'Libya',86,5.33),(87,'Indonesia',87,5.24),(88,'Ivory Coast',88,5.235),(89,'North Macedonia',89,5.199),(90,'Albania',90,5.199),(91,'South Africa',91,5.194),(92,'Azerbaijan',92,5.173),(93,'Gambia',93,5.164),(94,'Bangladesh',94,5.155),(95,'Laos',95,5.14),(96,'Algeria',96,5.122),(97,'Liberia',97,5.122),(98,'Ukraine',98,5.084),(99,'Congo',99,5.075),(100,'Morocco',100,5.06),(101,'Mozambique',101,5.048),(102,'Cameroon',102,5.048),(103,'Senegal',103,5.046),(104,'Niger',104,5.003),(105,'Georgia',105,4.973),(106,'Gabon',106,4.958),(107,'Iraq',107,4.941),(108,'Venezuela',108,4.925),(109,'Guinea',109,4.891),(110,'Iran',110,4.888),(111,'Ghana',111,4.872),(112,'Turkey',112,4.744),(113,'Burkina Faso',113,4.67),(114,'Cambodia',114,4.64),(115,'Benin',115,4.623),(116,'Comoros',116,4.609),(117,'Uganda',117,4.603),(118,'Nigeria',118,4.552),(119,'Kenya',119,4.543),(120,'Tunisia',120,4.516),(121,'Pakistan',121,4.516),(122,'Palestinian Territories',122,4.483),(123,'Mali',123,4.479),(124,'Namibia',124,4.459),(125,'Eswatini, Kingdom of',125,4.396),(126,'Myanmar',126,4.394),(127,'Sri Lanka',127,4.362),(128,'Madagascar',128,4.339),(129,'Egypt',129,4.288),(130,'Chad',130,4.251),(131,'Ethiopia',131,4.241),(132,'Yemen',132,4.197),(133,'Mauritania',133,4.153),(134,'Jordan',134,4.152),(135,'Togo',135,4.112),(136,'India',136,3.777),(137,'Zambia',137,3.76),(138,'Malawi',138,3.75),(139,'Tanzania',139,3.702),(140,'Sierra Leone',140,3.574),(141,'Lesotho',141,3.512),(142,'Botswana',142,3.471),(143,'Rwanda',143,3.268),(144,'Zimbabwe',144,2.995),(145,'Lebanon',145,2.955),(146,'Afghanistan',146,2.404);
/*!40000 ALTER TABLE `happiness_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health`
--

DROP TABLE IF EXISTS `health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `health` (
  `health_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  `life_expectancy` float DEFAULT NULL,
  PRIMARY KEY (`health_id`),
  KEY `fk_country_health_idx` (`country`),
  CONSTRAINT `fk_country_health` FOREIGN KEY (`country`) REFERENCES `happiness_score` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health`
--

LOCK TABLES `health` WRITE;
/*!40000 ALTER TABLE `health` DISABLE KEYS */;
INSERT INTO `health` VALUES (1,'finland',81.1878),(2,'denmark',81.3049),(3,'iceland',82.1707),(4,'switzerland',83.4537),(5,'netherlands',81.7146),(6,'luxembourg',83.0463),(7,'sweden',83.1098),(8,'norway',82.561),(9,'israel',82.7),(10,'new zealand',82.761),(11,'austria',81.0927),(12,'australia',83.2),(13,'ireland',83.0561),(14,'germany',80.7056),(15,'canada',81.2956),(16,'united states',77.4341),(17,'united kingdom',82.0585),(18,'czechia',79.0293),(19,'belgium',81.6976),(20,'france',82.2293),(21,'bahrain',79.246),(22,'slovenia',81.2829),(23,'costa rica',77.32),(24,'united arab emirates',79.196),(25,'saudi arabia',77.905),(26,'taiwan province of china',0),(27,'singapore',82.8951),(28,'romania',75.3049),(29,'spain',83.0829),(30,'uruguay',78),(31,'italy',82.9),(32,'kosovo',79.524),(33,'malta',82.7),(34,'lithuania',75.7927),(35,'slovakia',77.0659),(36,'estonia',77.9439),(37,'panama',76.826),(38,'brazil',73.425),(39,'guatemala',68.674),(40,'kazakhstan',74.44),(41,'cyprus',81.889),(42,'latvia',74.5805),(43,'serbia',75.4822),(44,'chile',79.519),(45,'nicaragua',74.615),(46,'mexico',74.832),(47,'croatia',77.5756),(48,'poland',77.3049),(49,'el salvador',71.475),(50,'kuwait',80.264),(51,'hungary',76.0171),(52,'mauritius',73.5146),(53,'uzbekistan',71.674),(54,'japan',83.9963),(55,'honduras',70.728),(56,'portugal',81.5805),(57,'argentina',76.064),(58,'greece',80.6366),(59,'south korea',0),(60,'philippines',72.187),(61,'thailand',79.68),(62,'moldova',68.621),(63,'jamaica',70.629),(64,'kyrgyzstan',0),(65,'belarus',73.1115),(66,'colombia',73.659),(67,'bosnia and herzegovina',75.293),(68,'mongolia',72.667),(69,'dominican republic',74.17),(70,'malaysia',76.26),(71,'bolivia',64.928),(72,'china',78.587),(73,'paraguay',70.475),(74,'peru',73.385),(75,'montenegro',76.1878),(76,'ecuador',77.894),(77,'vietnam',74.58),(78,'turkmenistan',69.41),(79,'north cyprus',0),(80,'russia',72.5456),(81,'hong kong s.a.r. of china',0),(82,'armenia',73.372),(83,'tajikistan',71.288),(84,'nepal',70.484),(85,'bulgaria',74.361),(86,'libya',72.151),(87,'indonesia',68.25),(88,'ivory coast',58.916),(89,'north macedonia',74.4249),(90,'albania',76.833),(91,'south africa',61.48),(92,'azerbaijan',73.488),(93,'gambia',0),(94,'bangladesh',73.698),(95,'laos',68.999),(96,'algeria',77.129),(97,'liberia',61.1),(98,'ukraine',68.5879),(99,'congo',0),(100,'morocco',74.973),(101,'mozambique',59.625),(102,'cameroon',60.958),(103,'senegal',67.913),(104,'niger',62.08),(105,'georgia',71.587),(106,'gabon',65.694),(107,'iraq',71.336),(108,'venezuela',0),(109,'guinea',58.985),(110,'iran',0),(111,'ghana',63.945),(112,'turkey',78.475),(113,'burkina faso',59.766),(114,'cambodia',69.896),(115,'benin',59.954),(116,'comoros',63.68),(117,'uganda',63.638),(118,'nigeria',53.633),(119,'kenya',62.055),(120,'tunisia',74.263),(121,'pakistan',66.431),(122,'palestinian territories',0),(123,'mali',59.417),(124,'namibia',58.059),(125,'eswatini, kingdom of',0),(126,'myanmar',67.256),(127,'sri lanka',76.61),(128,'madagascar',65.23),(129,'egypt',0),(130,'chad',52.997),(131,'ethiopia',65.645),(132,'yemen',0),(133,'mauritania',64.691),(134,'jordan',74.215),(135,'togo',61.588),(136,'india',67.744),(137,'zambia',61.803),(138,'malawi',62.898),(139,'tanzania',66.782),(140,'sierra leone',60.411),(141,'lesotho',53.036),(142,'botswana',65.913),(143,'rwanda',67.129),(144,'zimbabwe',59.391),(145,'lebanon',74.416),(146,'afghanistan',62.879);
/*!40000 ALTER TABLE `health` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social`
--

DROP TABLE IF EXISTS `social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social` (
  `social_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  `average_working_hours` float DEFAULT NULL,
  `household_size` float DEFAULT NULL,
  `education` float DEFAULT NULL,
  PRIMARY KEY (`social_id`),
  KEY `fk_country_idx` (`country`),
  CONSTRAINT `fk_country_social` FOREIGN KEY (`country`) REFERENCES `happiness_score` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social`
--

LOCK TABLES `social` WRITE;
/*!40000 ALTER TABLE `social` DISABLE KEYS */;
INSERT INTO `social` VALUES (1,'afghanistan',39.62,0,0),(4,'albania',41.35,0,2.74931),(5,'algeria',0,4.94,0),(10,'argentina',36.39,2.95,0),(11,'armenia',0,3.54,2.49327),(13,'australia',0,2.55,5.20678),(14,'austria',33.33,2.27,4.77447),(15,'azerbaijan',0,4.55,2.904),(16,'bahrain',0,0,1.987),(17,'bangladesh',0,4.26,1.973),(19,'belarus',39.14,2.16,5.18737),(20,'belgium',35.58,2.36,0),(22,'benin',0,5.19,3.211),(25,'bolivia',38.46,0,7.74074),(27,'bosnia and herzegovina',42.19,3.5,0),(28,'brazil',38.69,3.31,0),(31,'burkina faso',0,5.92,5.277),(34,'cambodia',40.39,4.61,0),(35,'cameroon',0,4.99,2.618),(36,'canada',35.37,2.45,4.13957),(38,'chad',0,5.97,2.539),(39,'chile',40.19,3.04,0),(40,'colombia',43.14,3.53,0),(41,'comoros',37.75,5.37,2.432),(42,'costa rica',41.34,3.21,0),(43,'croatia',37.92,2.8,0),(46,'cyprus',37.2,2.75,0),(47,'czechia',37.99,2.34,0),(51,'denmark',33.88,0,0),(54,'dominican republic',39.73,3.09,3.94),(57,'ecuador',0,3.78,3.64704),(58,'el salvador',43.42,3.92,4.531),(61,'estonia',36.44,2.3,0),(63,'ethiopia',31.92,4.73,3.736),(68,'finland',34.29,2.07,0),(69,'france',35.69,2.22,0),(71,'gabon',0,4.1,2.208),(72,'georgia',0,3.42,3.81285),(73,'germany',34.03,2.14,4.54389),(74,'ghana',0,3.83,2.905),(76,'greece',40.02,2.56,0),(81,'guatemala',0,4.81,3.22941),(82,'guinea',0,6.39,1.986),(87,'honduras',42.89,3.87,4.442),(88,'hungary',37.97,2.36,0),(90,'iceland',35.55,0,7.13967),(95,'india',47.69,4.38,0),(96,'indonesia',37.46,3.86,2.42013),(97,'iraq',31.72,6.35,0),(98,'ireland',35.39,2.83,0),(100,'israel',38.9,3.14,6.46),(101,'italy',35.9,2.4,0),(102,'ivory coast',0,0,3.51972),(103,'jamaica',42.7,3.18,5.35435),(104,'japan',0,2.33,0),(105,'jordan',46.97,4.72,3.24027),(106,'kazakhstan',0,3.44,4.205),(107,'kenya',0,3.75,0),(109,'kosovo',42.84,4.9,0),(110,'kuwait',0,0,0),(112,'kyrgyzstan',37.97,4.05,0),(114,'laos',0,0,1.394),(118,'latvia',37.78,2.26,0),(119,'lebanon',0,0,0),(120,'lesotho',0,3.73,6.433),(121,'liberia',0,4.58,2.595),(122,'libya',0,0,0),(124,'lithuania',38.14,2.38,0),(127,'luxembourg',35.48,2.41,4.70302),(128,'madagascar',0,4.5,3.139),(129,'malawi',0,4.28,0),(130,'malaysia',0,4.56,3.506),(132,'mali',0,5.81,4.035),(133,'malta',37.05,2.67,0),(136,'mauritania',0,5.77,2.288),(137,'mauritius',40,3.48,4.8442),(139,'mexico',43.23,3.74,0),(143,'moldova',39.44,0,6.14757),(145,'mongolia',47.59,3.63,4.258),(146,'montenegro',43.31,3.29,0),(147,'morocco',0,4.58,5.768),(148,'mozambique',0,4.52,0),(149,'myanmar',0,4.22,0),(150,'namibia',0,4.24,9.678),(152,'nepal',0,4.25,3.649),(153,'netherlands',30.38,2.23,0),(154,'new zealand',0,2.6,5.50568),(155,'nicaragua',0,4.92,0),(156,'niger',0,5.92,4.101),(157,'nigeria',0,4.66,0),(159,'north macedonia',39.89,0,0),(161,'norway',32.79,2.22,3.97),(166,'pakistan',46.93,6.8,0),(167,'palestinian territories',41.65,5.06,0),(168,'panama',34.14,3.64,3.887),(170,'paraguay',40.01,3.87,3.41497),(171,'peru',38.09,3.46,3.8941),(172,'philippines',39.64,4.23,3.58),(173,'poland',39.48,2.82,0),(174,'portugal',37.71,2.58,0),(180,'romania',39.75,2.67,0),(181,'russia',39.19,0,0),(183,'rwanda',29.35,4.28,4.75224),(192,'saudi arabia',0,0,0),(193,'senegal',0,8.66,5.641),(194,'serbia',41.97,2.85,0),(195,'sierra leone',0,5.29,8.80635),(196,'singapore',0,2.95,2.389),(199,'slovakia',37.9,2.8,0),(200,'slovenia',38.38,2.47,0),(204,'south africa',42.35,3.36,6.18348),(207,'south korea',39.24,2.34,0),(209,'spain',36.13,2.69,0),(210,'sri lanka',42.01,0,1.2),(219,'sweden',34.64,0,0),(220,'switzerland',35.29,2.21,0),(223,'tajikistan',0,5.99,5.447),(224,'tanzania',0,0,3.238),(226,'thailand',41.37,2.84,2.613),(228,'togo',0,4.35,3.798),(232,'tunisia',0,3.89,0),(233,'turkey',43.53,0,2.61521),(234,'turkmenistan',0,5.22,0),(238,'uganda',44.47,4.87,2.561),(239,'ukraine',0,2.53,5.9339),(240,'united arab emirates',0,0,0),(241,'united kingdom',35.61,2.27,0),(243,'united states',38.06,0,5.44),(246,'uruguay',0,3.02,4.37),(247,'uzbekistan',0,5.22,5.284),(250,'vietnam',41.38,3.44,2.898),(253,'zambia',42.58,5,3.583),(254,'zimbabwe',41.33,4.02,0);
/*!40000 ALTER TABLE `social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'happiness'
--

--
-- Dumping routines for database 'happiness'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-03 14:27:33
