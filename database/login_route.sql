
DROP TABLE IF EXISTS `route`;
CREATE TABLE `route` (
  `id` int NOT NULL AUTO_INCREMENT,
  `longStart` double(9,6) NOT NULL,
  `latStart` double(9,6) NOT NULL,
  `longFinish` double(9,6) NOT NULL,
  `latFinish` double(9,6) NOT NULL,
  `number_of_route` int NOT NULL,
  `name_of_route` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_of_route` (`number_of_route`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `route` WRITE;
UNLOCK TABLES;