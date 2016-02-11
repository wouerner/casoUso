-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: meulanche.local.dev    Database: uc
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Conta`
--

DROP TABLE IF EXISTS `Conta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Conta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Conta`
--

LOCK TABLES `Conta` WRITE;
/*!40000 ALTER TABLE `Conta` DISABLE KEYS */;
/*!40000 ALTER TABLE `Conta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campos`
--

DROP TABLE IF EXISTS `campos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` longtext,
  `tela_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_campos_telas1_idx` (`tela_id`),
  CONSTRAINT `fk_campos_telas1` FOREIGN KEY (`tela_id`) REFERENCES `telas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campos`
--

LOCK TABLES `campos` WRITE;
/*!40000 ALTER TABLE `campos` DISABLE KEYS */;
INSERT INTO `campos` VALUES (3,'qwe','qwe',7);
/*!40000 ALTER TABLE `campos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos`
--

DROP TABLE IF EXISTS `documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `tag` varchar(45) DEFAULT NULL,
  `projeto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`projeto_id`),
  KEY `fk_documentos_projetos1_idx` (`projeto_id`),
  CONSTRAINT `fk_documentos_projetos1` FOREIGN KEY (`projeto_id`) REFERENCES `projetos` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
INSERT INTO `documentos` VALUES (1,'Manter Cadastro Requerimento Avulso','UC044',4);
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fluxos`
--

DROP TABLE IF EXISTS `fluxos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fluxos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `tag` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`documento_id`),
  CONSTRAINT `fk_fluxos_1` FOREIGN KEY (`documento_id`) REFERENCES `documentos` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fluxos`
--

LOCK TABLES `fluxos` WRITE;
/*!40000 ALTER TABLE `fluxos` DISABLE KEYS */;
INSERT INTO `fluxos` VALUES (6,'novo','novo','novo',NULL),(8,'Fluxo Básico','FB',NULL,1),(9,'Fluxo Alternativo','fa0001','Cadastrar Requerimento Avulso',1),(10,'Fluxo Exceção','fe001','Preenchimento de Campo Obrigatório',1),(11,'Fluxo Exceção','fe002','Nenhum Resultado Encontrado',1);
/*!40000 ALTER TABLE `fluxos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(45) DEFAULT NULL,
  `descricao` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens`
--

LOCK TABLES `mensagens` WRITE;
/*!40000 ALTER TABLE `mensagens` DISABLE KEYS */;
INSERT INTO `mensagens` VALUES (1,'kjkj','uyguy');
/*!40000 ALTER TABLE `mensagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passos`
--

DROP TABLE IF EXISTS `passos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` longtext,
  `fluxo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`fluxo_id`),
  CONSTRAINT `fk_passos_1` FOREIGN KEY (`fluxo_id`) REFERENCES `fluxos` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passos`
--

LOCK TABLES `passos` WRITE;
/*!40000 ALTER TABLE `passos` DISABLE KEYS */;
INSERT INTO `passos` VALUES (10,'<p class=\"western\">O ator seleciona a opção REQUERIMENTO CADASTRAR REQUERIMENTO AVULSO.</p>',8),(11,'<p class=\"western\">O sistema exibe a tela IDENTIFICAR SERVIDOR/PENSIONISTA.</p>',8),(12,'<p><title></title></p><p class=\"western\">O ator seleciona um REQUERIMENTO.</p>',8),(13,'<p><title></title></p><p class=\"western\">O ator seleciona um TIPO DE REQUERENTE.</p>',8),(14,'<p class=\"western\">O ator seleciona um SERVIDOR/PENSIONISTA.</p>',8),(15,'<p class=\"western\">O sistema exibe um pop-up (por cima da atual) PESQUISAR SERVIDOR/PENSIONISTA.</p>',8),(16,'<p class=\"western\">O ator preenche os campos de pesquisa.</p>',8),(17,'<p><title></title></p><p class=\"western\">O sistema exibe o resultado.</p>',8),(18,'<p><title></title></p><p class=\"western\">O ator seleciona um registro.</p>',8),(19,'<p class=\"western\">O sistema retorna para a tela anterior carregando o nome do registro selecionado e um botão de OK.</p>',8),(20,'<p>O ator clica em Ok.<br/></p>',8),(21,'<p class=\"western\">O sistema exibe uma tabela com a relação do que já foi solicitado pelo requerente a respeito do tipo de requerimento selecionado</p>',8),(22,'<p><title></title></p><p class=\"western\">O ator clica em NOVO</p>',8),(23,'<p><title></title></p><p class=\"western\">O fluxo básico é encerrado</p>',8);
/*!40000 ALTER TABLE `passos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passos_fluxos`
--

DROP TABLE IF EXISTS `passos_fluxos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passos_fluxos` (
  `passo_id` int(11) NOT NULL,
  `fluxo_id` int(11) NOT NULL,
  PRIMARY KEY (`passo_id`,`fluxo_id`),
  KEY `fk_passos_has_fluxos_fluxos1_idx` (`fluxo_id`),
  KEY `fk_passos_has_fluxos_passos1_idx` (`passo_id`),
  CONSTRAINT `fk_passos_has_fluxos_fluxos1` FOREIGN KEY (`fluxo_id`) REFERENCES `fluxos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_passos_has_fluxos_passos1` FOREIGN KEY (`passo_id`) REFERENCES `passos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passos_fluxos`
--

LOCK TABLES `passos_fluxos` WRITE;
/*!40000 ALTER TABLE `passos_fluxos` DISABLE KEYS */;
INSERT INTO `passos_fluxos` VALUES (22,10),(21,11);
/*!40000 ALTER TABLE `passos_fluxos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passos_mensagens`
--

DROP TABLE IF EXISTS `passos_mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passos_mensagens` (
  `passo_id` int(11) NOT NULL,
  `mensagem_id` int(11) NOT NULL,
  PRIMARY KEY (`passo_id`,`mensagem_id`),
  KEY `fk_passos_has_mensagens_mensagens1_idx` (`mensagem_id`),
  KEY `fk_passos_has_mensagens_passos1_idx` (`passo_id`),
  CONSTRAINT `fk_passos_has_mensagens_mensagens1` FOREIGN KEY (`mensagem_id`) REFERENCES `mensagens` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_passos_has_mensagens_passos1` FOREIGN KEY (`passo_id`) REFERENCES `passos` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passos_mensagens`
--

LOCK TABLES `passos_mensagens` WRITE;
/*!40000 ALTER TABLE `passos_mensagens` DISABLE KEYS */;
INSERT INTO `passos_mensagens` VALUES (10,1);
/*!40000 ALTER TABLE `passos_mensagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passos_regra_negocios`
--

DROP TABLE IF EXISTS `passos_regra_negocios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passos_regra_negocios` (
  `regra_negocio_id` int(11) NOT NULL,
  `passo_id` int(11) NOT NULL,
  KEY `fk_fluxos_has_regra_negocios_regra_negocios1_idx` (`regra_negocio_id`),
  KEY `index2` (`passo_id`),
  CONSTRAINT `fk_fluxos_has_regra_negocios_regra_negocios1` FOREIGN KEY (`regra_negocio_id`) REFERENCES `regra_negocios` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_passos_regra_negocios_1` FOREIGN KEY (`passo_id`) REFERENCES `passos` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passos_regra_negocios`
--

LOCK TABLES `passos_regra_negocios` WRITE;
/*!40000 ALTER TABLE `passos_regra_negocios` DISABLE KEYS */;
INSERT INTO `passos_regra_negocios` VALUES (4,12),(5,13),(6,15),(7,20);
/*!40000 ALTER TABLE `passos_regra_negocios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passos_telas`
--

DROP TABLE IF EXISTS `passos_telas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passos_telas` (
  `passo_id` int(11) NOT NULL,
  `tela_id` int(11) NOT NULL,
  PRIMARY KEY (`passo_id`,`tela_id`),
  KEY `fk_passos_has_telas_telas1_idx` (`tela_id`),
  KEY `fk_passos_has_telas_passos1_idx` (`passo_id`),
  CONSTRAINT `fk_passos_has_telas_passos1` FOREIGN KEY (`passo_id`) REFERENCES `passos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_passos_has_telas_telas1` FOREIGN KEY (`tela_id`) REFERENCES `telas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passos_telas`
--

LOCK TABLES `passos_telas` WRITE;
/*!40000 ALTER TABLE `passos_telas` DISABLE KEYS */;
INSERT INTO `passos_telas` VALUES (11,7);
/*!40000 ALTER TABLE `passos_telas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projetos`
--

DROP TABLE IF EXISTS `projetos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projetos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projetos`
--

LOCK TABLES `projetos` WRITE;
/*!40000 ALTER TABLE `projetos` DISABLE KEYS */;
INSERT INTO `projetos` VALUES (3,'SAD','Avalição de Desempenho'),(4,'SAPMS','Atendimento de Pessoal'),(5,'SIARH','Sistema Integrado de Gestão de RH'),(6,'SIGESP','Portal Saúde');
/*!40000 ALTER TABLE `projetos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regra_negocios`
--

DROP TABLE IF EXISTS `regra_negocios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regra_negocios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` longtext,
  `tag` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regra_negocios`
--

LOCK TABLES `regra_negocios` WRITE;
/*!40000 ALTER TABLE `regra_negocios` DISABLE KEYS */;
INSERT INTO `regra_negocios` VALUES (4,'RN232 – No campo SELECIONE UM REQUERIMENTO deverá constar apenas os tipos de  requerimentos avulsos que foram cadastrados no caso de uso FRM-PMGDS-UC33 - Configurar   Requerimento no DF.','RN232'),(5,'RN227 – No campo “SELECIONE UM TIPO DE REQUERENTE” da tela “IDENTIFICAR SERVIDOR”   deverá constar apenas os tipos de requerentes que foram relacionados ao requerimento selecionado   na tela “RELACIONAR TIPOS DE REQUERENTE A UM REQUERIMENTO” do caso de uso FRM-  PMGDS-UC33 - Configurar Requerimento no DF.','RN227'),(6,'<p><strong>RN047</strong> (UC001-TL1) Se no campo SELECIONE UM TIPO DE REQUERENTE estiver selecionado: <b><br/></b></p><p><b>SERVIDOR ATIVO</b>, na pop-up PESQUISAR SERVIDOR, o sistema deverá trazer resultado   somente da tabela de servidores e que sua situação funcional não <i><b>seja aposentado.</b></i><br/></p><p> <b>APOSENTADO</b>, na pop-up PESQUISAR SERVIDOR, o sistema deverá trazer resultado   somente da tabela de servidores e que sua situação funcional <i><b>seja aposentado</b></i>.<br/></p><p><b>PENSIONISTA</b>, na pop-up PESQUISAR SERVIDOR, o sistema deverá trazer resultado   somente da tabela de pensionistas. Importante observar que os dados do pensionista   aparecerão nas informações do requerente e o servidor selecionado como instituidor da   pensão. <br/></p><p><b>PENSIONISTA PENSÃO ALIMENTÍCIA</b>, <b>PESSOA FÍSICA</b> e <b>PESSOA JURÍDICA</b>, na pop-up   <b>PESQUISAR SERVIDOR</b>, o sistema deverá trazer resultado tanto da tabela de cadastro de   servidores quanto da tabela de pensionistas. Importante observar que, no tipo de requerente   pensionista pensão alimentícia, o servidor pesquisado será o instituidor da pensão.</p>','RN047'),(7,'RN006 – (UC1-TL1) Quando o usuário clicar no botão OK para verificar os requerimentos já   solicitados pelo servidor selecionado, o sistema deverá apresentar na tabela abaixo apenas os   requerimentos referente ao que se encontra selecionado no campo de seleção “SELECIONE UM   REQUERIMENTO”. O sistema devera sempre  apresentar opção “novo” exceto para o   requerimento de Auxilio Funeral que só deverá ser cadastrado uma única vez.','RN006'),(8,'<p>RN238 – O sistema deverá abrir o sistema SIPAR e na página do documento quando o usuário clicar no link do campo Nº SIPAR. Para isso o sistema deverá identificar o número de registro e ano do documento<br/></p>','RN238'),(9,'<p>RN239 – O ícone CONCLUIR REQUERIMENTO deverá estar desabilitado quando o requerimento já estiver sido concluído. <br/></p>','RN239');
/*!40000 ALTER TABLE `regra_negocios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telas`
--

DROP TABLE IF EXISTS `telas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `caminho` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telas`
--

LOCK TABLES `telas` WRITE;
/*!40000 ALTER TABLE `telas` DISABLE KEYS */;
INSERT INTO `telas` VALUES (7,'TL001','Identificar Servidor/Pensionista',NULL),(8,'TL002','Pesquisar Servidor/Pensionista',NULL);
/*!40000 ALTER TABLE `telas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ryan Chenkie','ryanchenkie@gmail.com','$2y$10$kGYAml7qduMmbp5Bai/FK..1clxw9av4/JMFMaVLSd5zSmQ3KVTV2',NULL,'2015-10-29 08:19:40','2015-10-29 08:19:40'),(2,'Chris Sevilleja','chris@scotch.io','$2y$10$37zGxv/GZl2Wi0kFiu55nujUwLSRlQ0hP/kyze5L3vPsjv/Ss6z.u',NULL,'2015-10-29 08:19:40','2015-10-29 08:19:40'),(3,'Holly Lloyd','holly@scotch.io','$2y$10$ueS13/PlIHRiesXMdxCwYuNHGQm0MoGm6fOTNlxf0As8KvuLOhZdu',NULL,'2015-10-29 08:19:40','2015-10-29 08:19:40'),(4,'Adnan Kukic','adnan@scotch.io','$2y$10$5vgHnisF20o6xIwYlbrkXO364u/Hj19om.QWUHkivhLg3vydvIgby',NULL,'2015-10-29 08:19:40','2015-10-29 08:19:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-11 19:12:42
