
CREATE TABLE `calculo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `id_processo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calc_proc_idx` (`id_processo`),
  CONSTRAINT `calc_proc` FOREIGN KEY (`id_processo`) REFERENCES `processos` (`id`)
);
INSERT INTO `calculo` VALUES (1,'nome1','2020-05-15',1),(2,'nome2','2020-05-15',2),(3,'nome3','2020-05-15',3),(4,'nome4','2020-05-15',4),(5,'nome5','2020-05-15',5);
