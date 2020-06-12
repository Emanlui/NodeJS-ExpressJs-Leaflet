
DROP TABLE IF EXISTS `middle_location`;
CREATE TABLE `middle_location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `long_location` double(9,6) NOT NULL,
  `lat_location` double(9,6) NOT NULL,
  `id_route` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_route` (`id_route`),
  CONSTRAINT `middle_location_ibfk_1` FOREIGN KEY (`id_route`) REFERENCES `route` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `middle_location` WRITE;
UNLOCK TABLES;