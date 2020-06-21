CREATE TABLE `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hora` time NOT NULL,
  `data` date NOT NULL,
  `nome` varchar(45) NOT NULL,
  `inf_agendamento` varchar(255) DEFAULT NULL,
  `inf_processo` varchar(255) DEFAULT NULL,
  `cadastro` varchar(45) DEFAULT NULL,
  `id_processo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ag_proc_idx` (`id_processo`),
  CONSTRAINT `ag_proc` FOREIGN KEY (`id_processo`) REFERENCES `processos` (`id`)
);
INSERT INTO `agenda` VALUES (1,'08:00:00','2020-05-15','nome1','infa1','infp1','cad1',1),(2,'09:00:00','2020-05-15','nome2','infa2','infp2','cad2',2),(3,'10:00:00','2020-05-15','nome3','infa3','infp3','cad3',3),(4,'11:00:00','2020-05-15','nome4','infa4','infp4','cad4',4),(5,'14:00:00','2020-05-15','nome5','infa5','infp5','cad5',5);
