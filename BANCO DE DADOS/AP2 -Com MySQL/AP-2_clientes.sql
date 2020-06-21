
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `idade` int(11) DEFAULT NULL,
  `id_secretaria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cli_sec_idx` (`id_secretaria`),
  CONSTRAINT `cli_sec` FOREIGN KEY (`id_secretaria`) REFERENCES `secreatarias` (`id`)
);
INSERT INTO `clientes` VALUES (1,'nome1',23,1),(2,'nome2',35,2),(3,'nome3',49,3),(4,'nome4',29,4),(5,'nome5',65,5);
