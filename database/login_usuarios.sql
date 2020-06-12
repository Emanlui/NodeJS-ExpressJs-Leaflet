

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `firstLastName` varchar(50) NOT NULL,
  `secondLastName` varchar(50) NOT NULL,
  `password` varchar(70) NOT NULL,
  `email` varchar(60) NOT NULL,
  `birthday` varchar(15) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `usuarios` WRITE;
INSERT INTO `usuarios` VALUES ('Emanlui','e','s','s','jhdsjbv23kh','emanlui@gmail.com','2020-01-10'),('esolano','Ericka','Solano','Fernandez','erickaSola123','erikasolano@hotmail.com','2020-01-16'),('p','Prueba','apellido','segundo apellido','dkajFDe32asd','prueba@hotmail.es','2020-01-30');
UNLOCK TABLES;