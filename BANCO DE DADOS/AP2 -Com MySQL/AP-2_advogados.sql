CREATE TABLE `advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `oab` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `advogados` VALUES (1,'nome1','oab1','area1'),(2,'nome2','oab2','area2'),(3,'nome3','oab3','area3'),(4,'nome4','oab4','area4'),(5,'nome5','oab5','area5');
