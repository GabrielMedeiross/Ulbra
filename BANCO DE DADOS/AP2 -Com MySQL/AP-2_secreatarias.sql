
CREATE TABLE `secreatarias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setor` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
);
INSERT INTO `secreatarias` VALUES (1,'setor','nome'),(2,'setor2','nome2'),(3,'setor3','nome3'),(4,'setor4','setor4'),(5,'setor5','nome5');
