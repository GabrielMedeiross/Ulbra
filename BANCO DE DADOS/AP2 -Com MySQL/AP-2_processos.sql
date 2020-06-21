CREATE TABLE `processos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_processo` varchar(45) NOT NULL,
  `vara` varchar(45) DEFAULT NULL,
  `num_processo` varchar(45) NOT NULL,
  `id_advogado` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cod_processo_UNIQUE` (`cod_processo`),
  KEY `adv_proc_idx` (`id_advogado`),
  KEY `cli_proc_idx` (`id_cliente`),
  CONSTRAINT `adv_proc` FOREIGN KEY (`id_advogado`) REFERENCES `advogados` (`id`),
  CONSTRAINT `cli_proc` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`)
);

INSERT INTO `processos` VALUES (1,'cod1','vara1','num1',1,1),(2,'cod2','vara2','num2',2,2),(3,'cod3','vara3','num3',3,3),(4,'cod4','vara4','num4',4,4),(5,'cod5','vara5','num5',5,5);
