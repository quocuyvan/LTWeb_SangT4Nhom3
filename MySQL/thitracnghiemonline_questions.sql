-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: thitracnghiemonline
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `questions` (
  `idQuestions` int(11) NOT NULL,
  `questName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `result` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idClass` int(11) NOT NULL,
  PRIMARY KEY (`idQuestions`),
  KEY `QuestionIdClass_idx` (`idClass`),
  CONSTRAINT `QuestionIdClass` FOREIGN KEY (`idClass`) REFERENCES `classes` (`idclass`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Which continent does NOT border the Indian Ocean?','A. Africa','B. Asia','C.	North America','D. Australia','c','easy',6),(2,'Which landmass straddles a mid-ocean ridge? ','A. Madagascar','B. Iceland','C. Greenland ','D. Australia','b','easy',6),(3,'Which region is known by the nickname “Pirate Alley” due to the large amount of pirate activity in the area?','A. Yellow Sea','B. Arabian Sea','C. Okhotsk Sea ','D. Gulf of Aden','d','easy',6),(4,'Earthquakes occur when there is a sudden release of stored up energy in Earth`s','A. inner core','B. outer core','C.	upper mantle','D. lower crust','c','easy',6),(5,'Tremors that have occurred in Earth`s crust are known as?','A. Earthquakes','B. Volcanic eruptions','C. Bed eruptions','D. Volcano-Earth Quake','a','easy',6),(6,'Instrument used to measure earthquake is known as','A. quake meter','B. quake graph','C.	seismograph','D. typanicgraph','c','Medium',6),(7,'Tremendous damage along with huge destruction of buildings can take place at a scale of','A. 5','B. 6','C. 7','D. 8-10','d','Medium',6),(8,'Another name for Earthquakes is','A. nektons','B. temblors','C. blusters','D. flickers','b','Medium',6),(9,'After earthquake has taken place, it is followed by','A. proshocks','B. preshock','C. aftershocks','D. minimaximal shocks','c','Medium',6),(10,'Seismograph is dependent on extent of damage caused by a/an','A. earthquake','B. air barrier','C. volcano','D. explosion','c','Medium',6),(11,'Magnitude of energy released by an earthquake is calculated using','A. Temblor scale','B. Richter scale','C. Tectonic scale','D. Seismic scale','b','Hard',6),(12,'At intensity level of `1` ','A. people don`t feel earthquake','B. poor buildings collapse','C. building and bridges collapse','D. people feel the tremor and windows rattle','a','Hard',6),(13,'Furniture may move and people may run outside houses at scale of','A. 3','B. 4','C. 5','D. 2','c','Hard',6),(14,'Richter scale measures factors of','A. 2','B. 4','C. 5','D. 10','d','Hard',6),(15,'Objects fall from shelves, plaster walls get cracked and people feel tremor at a level of','A. 3','B. 4','C. 5','D. 6','d','Hard',6),(16,'The average of first 50 natural numbers is ………… :','A. 25.30','B. 25.5','C. 25.00 ','D. 12.25','b','Easy',2),(17,'TA fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to ……… :','A. 1/55','B. 55','C. 3/11 ','D. 1/11','a','Easy',2),(18,'The number of 3-digit numbers divisible by 6, is ………… :','A. 149','B. 166','C. 150 ','D. 151','c','Easy',2),(19,'What is 1004 divided by 2?','A. 52','B. 502','C. 520 ','D. 5002','b','Easy',2),(20,'A clock strikes once at 1 o’clock, twice at 2 o’clock, thrice at 3 o’clock and so on. How many times will it strike in 24 hours?','A. 78','B. 136','C. 156 ','D. 196','c','Easy',2),(21,'125 gallons of a mixture contains 20% water. What amount of additional water should be added such that water content be raised to 25%?','A. 45','B. 90','C. 54','D. 89','d','Medium',2),(22,'106 × 106 – 94 × 94 = ?','A. 2004','B. 2400','C. 1904','D. 1906','b','Medium',2),(23,'Which of the following numbers gives 240 when added to its own square? ','A. 15','B. 16','C. 18','D.20','a','Medium',2),(24,'Evaluation of 83 × 82 × 8-5 is …………','A. 1','B. 0','C. 8','D. None of these.','a','Medium',2),(25,'The simplest form of 1.5 : 2.5 is ……………','A. 6 : 10','B. 15 : 25','C. 0.75 : 1.25','D. 3 : 5','d','Medium',2),(26,'How many digits are there in Hindu-Arabic System?','A. 10','B. 20','C. 30','D. 40','a','Hard',2),(27,'Among the following which natural number has no predecessor?','A. 100',' B. 200','C. 1','D. 0','c','Hard',2),(28,'Among the following which whole number has no predecessor?','A. –1','B. 0','C. 1','D. e','b','Hard',2),(29,'Counting numbers are kept under ________ number','A. Natural','B. Whole ','C. Rational','D. Odd','a','Hard',2),(30,'An integer that is divisible by 2 is called:','A. Even number','B. Natural number','C. Odd number','D. Whole number','a','Hard',2),(31,'An object that revolves around a planet is called a','A. robot','B. modulus','C. solar cars','D. satellite','d','Easy',5),(32,'To complete one revolution around Earth, communication satellites take','A. 24 hours','B. 36 hours','C. 48 hours','D. 72 hours','a','Easy',5),(33,'Velocity of geostationary satellite with respect to earth is','A. 10 ms^-1','B. 15 ms^-1','C. zero','D. 1 ms^-1','c','Easy',5),(34,'Gravitational force of attraction between satellite and earth provides','A. centripetal force','B. centrifugal force','C. resistive force','D. none of above','a','Easy',5),(35,'Natural satellite of Earth is','A. moon','B. stars','C. sun','D. mars','a','Easy',5),(36,'Perpendicular distance between axis of rotation and line of action of force is called the','A. moment arm','B. inertia','C. velocity','D. displacement','a','Medium',5),(37,'If distance between all pairs of particles of body do not change by applying a force then body is said to be','A. flexible','B. small','C. large','D. rigid','d','Medium',5),(38,'Turning effect of a force is called force`s','A. momentum','B. distance','C. torque/moment','D. inertia','c','Medium',5),(39,'Number of forces that can be added by head to tail rule are','A. 4','B. 2','C. 5','D. any number','d','Medium',5),(40,'Door is opened or closed due to the','A. weight','B. turning effect on it','C. distance from roof','D. height','b','Medium',5),(41,'Vehicles are made heavy at base in order to','A. decrease center of gravity','B. increase center of gravity','C. decrease weight','D. increase weight','a','Hard',5),(42,'If force is applied at center of mass then torque is','A. maximum','B. zero','C. 1','D. infinity','b','Hard',5),(43,'Point where force causes system to move without rotation is','A. center of mass','B. mid point of body','C. edge of the body','D. none of above','a','Hard',5),(44,'To lower their center of mass, circus artists use','A. short poles','B. long poles','C. heavy costumes','D. light costumes','b','Hard',5),(45,'Point of a system where an applied force causes system to move without ratation is termed as','A. friction','B. centre of gravity','C. centre of a mass','D. intersection point','c','Hard',5);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-19 16:15:58
