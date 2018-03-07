DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'carmen','carmen@domain.com','Ave María 17, Primero','933889003'),(3,'juan','juan@domain.com','Ave María 23, 3A','925695632'),(4,'javier','javier@domain.com','Ave María 11, 1H','954528830'),(6,'ramiros','juani@yahoo.es','esa 17','999562141'),(8,'eulogio','eulo@gmail.com','esa 17','951422356'),(9,'alejandro','alejandro@domain.com','Ave María 23, 2F','925695927'),(10,'silvia','silvia@domain.com','Ave María 25, 3H','966595547'),(11,'carmen','carment@domain.com','Ave María 47, Primero','933889003'),(12,'juan','juan@domain.com','Ave María 23, 3A','925695632'),(13,'javier','javier@domain.com','Ave María 11, 1H','954528830');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

