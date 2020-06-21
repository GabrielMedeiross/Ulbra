CREATE TABLE `andamento_processo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_processo` int(11) NOT NULL,
  `cod_andamento` varchar(45) DEFAULT NULL,
  `ocorrencia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `and_proc_idx` (`id_processo`),
  CONSTRAINT `and_proc` FOREIGN KEY (`id_processo`) REFERENCES `processos` (`id`)
);

INSERT INTO `andamento_processo` VALUES (1,1,'and1','oc1'),(2,2,'and2','oc2'),(3,3,'and3','oc3'),(4,4,'and4','oc4'),(5,5,'and5','oc5');
