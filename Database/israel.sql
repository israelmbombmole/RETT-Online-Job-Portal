-- MySQL dump 10.13  Distrib 5.7.27, for Win64 (x86_64)
--
-- Host: localhost    Database: dbuser
-- ------------------------------------------------------
-- Server version	5.7.27-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addjob`
--

DROP TABLE IF EXISTS `addjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addjob` (
  `id` varchar(255) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `settime` varchar(255) NOT NULL,
  `duetime` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addjob`
--

LOCK TABLES `addjob` WRITE;
/*!40000 ALTER TABLE `addjob` DISABLE KEYS */;
INSERT INTO `addjob` VALUES ('FO001','Electrical Engineer','3M Company','Electrical Engineering.','2021-06-18','19 jun 2021','25 jun 2021','1000'),('FO002','Computer technician','3Com Corp','Computer Engineering.','2021-06-30','30 jun 2021','1 December 2021','2000'),('FO003','System Analyst','A.G. Edwards Inc.','Software Engineering.','2020-06-16','12 jun 2020','120 Jan 2021','R25000'),('FO004','junor developer','A.G. Edwards Inc.','Computer Engineering.','2021-06-21','21 jun 2021','28 jun 2021','10000');
/*!40000 ALTER TABLE `addjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicants` (
  `id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `nic` varchar(255) NOT NULL,
  `passport` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `photo` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants`
--

LOCK TABLES `applicants` WRITE;
/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;
INSERT INTO `applicants` VALUES ('CS001','israel','masangu','1265','OPB0265','4 Piers Road wyngerg','1995-03-17','Male',643212263,_binary 'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0˙\0\0\0˙\0\0\0z\¬G\0\0\0PLTE\Ã\Ã\Ã\0\0\0LLL≤≤≤ôôôfff333cLF\Ô\0\0\0	pHYs\0\0\ƒ\0\0\ƒï+\0\0zIDATxú\Ì\÷1O\€@¿Ò\√\·\Ïåßc\"Åîë™¥blH•dtZJWßQG®\ÕH†-|\Ïæw>G$®≠=t¯ˇ§8è\À\”=øÀùÉ1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Õé\‚Q&\ÔÉ—ì ˙ûºy&/–º[YGy\Õ\‚aÚu>ÿï\‡¯õê\Ÿ\Ïª\Î\œÀã\Õy≠{…ªñ\‡t<t\ÎV\Ô\…\ÂR™\ﬁ˘Å\Ì\“\ﬂ\Ó\Êºˆ°ô\»JÙ{5Àªä2„Ωè/uyè6\Áµ˝∫Dπ¥\ﬁ6P=íI\∆>v\Ô\”\ﬁ∆ºm_›Ω€ßãÙo\’Oä0LıZ,Ø\Õ\›H∂Z\›\ﬂ\ÿ\Ã}xg\Í\”Y}¡N9 ±ªì\Ÿ\≈JﬁñØ\ﬁw◊´™k´©ùkì\—\Õ\„=∏]vWÛ∂Ú≥sçï{®GV\—vóq\"]∂\\ı∞\„∆£t•u∑\⁄\”E\Î\ﬁ8.F2S€É|\«…Åy?ëÍáï\Í\“|µu\Õ3”ì\Ã\Ó\À-æj™z†µryù^¯˝VVè\“j\Î./îóó˚≠ÅÍ≥ûdW≠¨º4\ﬂ]óßõ≠©ï∑£2í¢æ˙NY0]óßE}ı∫\≈\Õi˘\Ï46ıg≠∏\ÍÜ\◊mˇ$\œLs\÷jü8;y;~Õã\–\r•kÚ\Ã4Ûk~\\∑z•%=\Ê\Ó©\„ß∫\·7_\…\”cæ\’\”`l\Í	øM◊≤˚Å\ÈõI7|\Ÿ|5O[v?0A\«\‘S=R˝\\U˛∂\≈N/Œ∫o~\Â\Ë•>g˙ÙÅø\Ï}ô	n3ÛA\'˜2≥STwsGy5\œå}©\Ã^õ`≤~\“?÷éU\«ÿ´x¯\¬\’˘\◊|õeû˘4L\‚ü\ÓﬁñIR≥ıä≥yú?õg\Áy4ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇô_Ç>b:=[:ç\0\0\0\0IENDÆB`Ç');
/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applywork`
--

DROP TABLE IF EXISTS `applywork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applywork` (
  `work_experience` varchar(6000) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `file` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applywork`
--

LOCK TABLES `applywork` WRITE;
/*!40000 ALTER TABLE `applywork` DISABLE KEYS */;
INSERT INTO `applywork` VALUES ('The engineer will enter their biographical and contact details on the online form.  They will then be asked to enter information about their qualifications, what they studied, where, when, how long the qualification is and what its NQF level is. ','F0003',_binary 'ERDiagramsforEBanking.doc'),('java, html, css5','F0004',_binary 'PMM300S_S1_ 2021_protected.docx');
/*!40000 ALTER TABLE `applywork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `id` varchar(255) NOT NULL,
  `flightname` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `depart` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `deptime` varchar(255) NOT NULL,
  `arrtime` varchar(255) NOT NULL,
  `flightcharge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES ('FO001','Electrical Enginner','3Com Corp','Civil Engineering.','2021-06-09','18 jun 2021','22 jun 2021','1000');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_book`
--

DROP TABLE IF EXISTS `job_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_book` (
  `id` varchar(255) NOT NULL,
  `jobid` varchar(255) NOT NULL,
  `applicantid` varchar(255) NOT NULL,
  `workoption` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_book`
--

LOCK TABLES `job_book` WRITE;
/*!40000 ALTER TABLE `job_book` DISABLE KEYS */;
INSERT INTO `job_book` VALUES ('TO001','FO002','CS001','Full-time',2000,'2021-06-15');
/*!40000 ALTER TABLE `job_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'israel',_binary '1234'),(2,'israel',_binary '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(3,'israel',_binary '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(12) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'israel','masangu','israelmasangu56@gmail.com',_binary 'Isr@1995'),(2,'adam','mbombole','deoadam@gmail.com',_binary 'Deo1234'),(3,'queen ','esher','queenesther@gmail.com',_binary 'queen12'),(4,'benitha','cibangu','benithacibangu@gmail.com',_binary 'beni1236'),(5,'ntolani','james','ntolanijames@gmail.com',_binary 'ntholi123'),(6,'adonis','muhi','adonis@gmail.com',_binary '0fda60c6e5d75abc82441f9dc4abf388877cd3d1'),(7,'adam','mbombole','adammbombole@gmail.com',_binary '2903d49eaf2ed1238acb6748f24a759221a40a15');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `periode` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification`
--

LOCK TABLES `qualification` WRITE;
/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
INSERT INTO `qualification` VALUES (1,'electrical engineering','3 years','university of cape town','cape town','7','advance diploma'),(2,'mechatronic','3 years','cput','capetown','6','national diploma'),(3,'electronics','5 years','croix rouge','kinshasa','6','diploma'),(4,'','','','','',''),(5,'mechanical engineering','5 years','cput','capetown','6','national diplona');
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('UO001','israel','mbombole','israel',_binary '1234'),('UO002','adonis','mhti','adonis',_binary '12345'),('UO003','adam','mbombole','adam',_binary 'adam'),('UO004','joe','kalala','joe',_binary 'joe'),('UO005','bethel','cibangu','bethel',_binary '1234'),('UO006','benitha','cibangu','benitha',_binary '1234'),('UO007','abel','adam','abel',_binary '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),('UO008','isaac','luciaka','isaac',_binary '6229a3e4f86172a005a6eaab5029d1bd13acce1f');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work` varchar(2000) NOT NULL,
  `reference` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES (1,'[In answering this question, follow the assessment guide strictly from 1.1]\r\nRETT is Recruiting agency for Engineers, Technologists and Technicians. You are required to design a system for the agency that allows engineers to register their biographical details and skills and be able to search for jobs.  The recruiters will use the system to post jobs and to access details of applicants the applicants.  \r\n','israel mbombole'),(2,'[In answering this question, follow the assessment guide strictly from 1.1]\r\nRETT is Recruiting agency for Engineers, Technologists and Technicians. You are required to design a system for the agency that allows engineers to register their biographical details and skills and be able to search for jobs.  The recruiters will use the system to post jobs and to access details of applicants the applicants.  \r\n','israel mbombole'),(3,'',''),(4,'. You are required to design a system for the agency that allows engineers to register their biographical details and skills and be able to search for jobs.  The recruiters will use the system to post jobs and to access details of applicants the applicants.  ','israel'),(5,'. You are required to design a system for the agency that allows engineers to register their biographical details and skills and be able to search for jobs.  The recruiters will use the system to post jobs and to access details of applicants the applicants.  ','israel'),(6,'customer care ','adonis');
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-22 10:22:36
