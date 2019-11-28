-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: alessandria
-- ------------------------------------------------------
-- Server version	5.1.73

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

create database portale;
grant all on portale.* to portale@'%' identified by 'Pass.2019!' with grant option;
flush privileges;

use portale;

--
-- Table structure for table `appuntamenti__chiusura`
--

DROP TABLE IF EXISTS `appuntamenti__chiusura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appuntamenti__chiusura` (
  `PERMS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CR_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOD_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CR_USER_ID` int(11) DEFAULT NULL,
  `MOD_USER_ID` int(11) DEFAULT NULL,
  `ID_OPERATORE` int(11) DEFAULT NULL,
  `GIORNO_CHIUSURA` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ID_OPERATORE` (`ID_OPERATORE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuntamenti__chiusura`
--

LOCK TABLES `appuntamenti__chiusura` WRITE;
/*!40000 ALTER TABLE `appuntamenti__chiusura` DISABLE KEYS */;
/*!40000 ALTER TABLE `appuntamenti__chiusura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appuntamenti__operatore`
--

DROP TABLE IF EXISTS `appuntamenti__operatore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appuntamenti__operatore` (
  `PERMS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CR_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOD_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CR_USER_ID` int(11) DEFAULT NULL,
  `MOD_USER_ID` int(11) DEFAULT NULL,
  `NOME` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIZIONE` longtext COLLATE utf8_unicode_ci,
  `EMAIL` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIMITAMESI` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuntamenti__operatore`
--

LOCK TABLES `appuntamenti__operatore` WRITE;
/*!40000 ALTER TABLE `appuntamenti__operatore` DISABLE KEYS */;
INSERT INTO `appuntamenti__operatore` VALUES ('ns',1,'2019-03-20T12:38:25','2019-04-12T09:38:14',-1,-1,'Sportello 1','','sportello1@tuodominio.it',3);
/*!40000 ALTER TABLE `appuntamenti__operatore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appuntamenti__operatore_ref_appuntamenti__tipo`
--

DROP TABLE IF EXISTS `appuntamenti__operatore_ref_appuntamenti__tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appuntamenti__operatore_ref_appuntamenti__tipo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_APPUNTAMENTI__OPERATORE` int(11) DEFAULT NULL,
  `ID_APPUNTAMENTI__TIPO` int(11) DEFAULT NULL,
  `PERMS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ID_APPUNTAMENTI__OPERATORE` (`ID_APPUNTAMENTI__OPERATORE`),
  KEY `IDX_ID_APPUNTAMENTI__TIPO` (`ID_APPUNTAMENTI__TIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuntamenti__operatore_ref_appuntamenti__tipo`
--

LOCK TABLES `appuntamenti__operatore_ref_appuntamenti__tipo` WRITE;
/*!40000 ALTER TABLE `appuntamenti__operatore_ref_appuntamenti__tipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `appuntamenti__operatore_ref_appuntamenti__tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appuntamenti__orario`
--

DROP TABLE IF EXISTS `appuntamenti__orario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appuntamenti__orario` (
  `PERMS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CR_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOD_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CR_USER_ID` int(11) DEFAULT NULL,
  `MOD_USER_ID` int(11) DEFAULT NULL,
  `ID_OPERATORE` int(11) DEFAULT NULL,
  `ORARIO_APERTURA` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORARIO_CHIUSURA` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID_GIORNO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ID_OPERATORE` (`ID_OPERATORE`),
  KEY `IDX_ID_GIORNO` (`ID_GIORNO`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuntamenti__orario`
--

LOCK TABLES `appuntamenti__orario` WRITE;
/*!40000 ALTER TABLE `appuntamenti__orario` DISABLE KEYS */;
INSERT INTO `appuntamenti__orario` VALUES ('ns',5,'2019-03-20T12:39:55','2019-04-16T10:18:25',-1,0,1,'08:30','10:15',5),('ns',18,'2019-04-09T10:48:58','2019-04-16T10:17:34',-1,0,1,'08:30','10:15',3),('ns',25,'2019-04-16T07:54:19','2019-04-16T09:46:50',0,0,1,'08:30','10:15',1),('ns',26,'2019-04-16T07:54:30','2019-07-22T13:19:52',0,18,1,'10:30','13:15',1),('ns',33,'2019-04-16T10:10:34','2019-04-16T10:15:30',0,0,1,'14:30','16:45',2),('ns',36,'2019-04-16T10:17:58','2019-07-22T13:18:43',0,18,1,'10:30','13:15',3),('ns',37,'2019-04-16T10:18:42','2019-07-22T13:17:48',0,18,1,'10:30','13:15',5),('ns',38,'2019-04-16T10:20:33','2019-04-16T10:21:57',0,0,1,'14:30','16:45',4),('ns',45,'2019-05-25T15:04:05','2019-07-22T13:18:58',0,18,1,'10:30','13:15',2),('ns',46,'2019-05-25T15:04:40','2019-05-25T16:34:51',0,18,1,'08:30','10:15',2),('ns',47,'2019-05-25T16:17:20','2019-07-22T13:18:30',0,18,1,'10:30','13:15',4),('ns',48,'2019-05-25T16:17:45','2019-05-25T16:35:30',0,18,1,'08:30','10:15',4);
/*!40000 ALTER TABLE `appuntamenti__orario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appuntamenti__prenotazione`
--

DROP TABLE IF EXISTS `appuntamenti__prenotazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appuntamenti__prenotazione` (
  `PERMS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CR_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOD_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CR_USER_ID` int(11) DEFAULT NULL,
  `MOD_USER_ID` int(11) DEFAULT NULL,
  `PERSONA` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UTENTE` int(11) DEFAULT NULL,
  `ID_OPERATORE` int(11) DEFAULT NULL,
  `ID_TIPO` int(11) DEFAULT NULL,
  `EMAIL` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEFONO` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INIZIO` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FINE` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOTE` longtext COLLATE utf8_unicode_ci,
  `MOTIVOANNULLAMENTO` longtext COLLATE utf8_unicode_ci,
  `NRISTANZA` int(11) DEFAULT NULL,
  `ID_STATO` int(11) DEFAULT NULL,
  `ALLEGATO` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOTEUFFICIO` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IDX_ID_OPERATORE` (`ID_OPERATORE`),
  KEY `IDX_ID_TIPO` (`ID_TIPO`),
  KEY `IDX_ID_STATO` (`ID_STATO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuntamenti__prenotazione`
--

LOCK TABLES `appuntamenti__prenotazione` WRITE;
/*!40000 ALTER TABLE `appuntamenti__prenotazione` DISABLE KEYS */;
/*!40000 ALTER TABLE `appuntamenti__prenotazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appuntamenti__stato`
--

DROP TABLE IF EXISTS `appuntamenti__stato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appuntamenti__stato` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CR_DATE` varchar(50) DEFAULT NULL,
  `MOD_DATE` varchar(50) DEFAULT NULL,
  `CR_USER_ID` int(11) DEFAULT NULL,
  `MOD_USER_ID` int(11) DEFAULT NULL,
  `PERMS` varchar(50) DEFAULT NULL,
  `STATO` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuntamenti__stato`
--

LOCK TABLES `appuntamenti__stato` WRITE;
/*!40000 ALTER TABLE `appuntamenti__stato` DISABLE KEYS */;
INSERT INTO `appuntamenti__stato` VALUES (1,NULL,NULL,NULL,NULL,NULL,'Richiesto'),(2,NULL,NULL,NULL,NULL,NULL,'Confermato'),(3,NULL,NULL,NULL,NULL,NULL,'Rifiutato/Annullato');
/*!40000 ALTER TABLE `appuntamenti__stato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appuntamenti__tipo`
--

DROP TABLE IF EXISTS `appuntamenti__tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appuntamenti__tipo` (
  `PERMS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CR_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOD_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CR_USER_ID` int(11) DEFAULT NULL,
  `MOD_USER_ID` int(11) DEFAULT NULL,
  `TIPO` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DURATA` int(11) DEFAULT NULL,
  `ISTRUZIONI` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuntamenti__tipo`
--

LOCK TABLES `appuntamenti__tipo` WRITE;
/*!40000 ALTER TABLE `appuntamenti__tipo` DISABLE KEYS */;
INSERT INTO `appuntamenti__tipo` VALUES ('ns',1,'2019-03-20T12:37:41','2019-05-30T16:59:02',-1,0,'Richiesta informazioni',15,'');
/*!40000 ALTER TABLE `appuntamenti__tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunicazioni__comunicazione`
--

DROP TABLE IF EXISTS `comunicazioni__comunicazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comunicazioni__comunicazione` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `titolo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testo_breve` text COLLATE utf8_unicode_ci,
  `immagine` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dir_immagine` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testo` text COLLATE utf8_unicode_ci,
  `lingua` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_da` date DEFAULT NULL,
  `data_a` date DEFAULT NULL,
  `data_invio` date DEFAULT NULL,
  `canali_pubblicazione` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stato_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pubblica` tinyint(1) DEFAULT NULL,
  `mostra_in_portal` tinyint(1) DEFAULT NULL,
  `invia_da_newsletter` tinyint(1) DEFAULT NULL,
  `extra_params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunicazioni__comunicazione`
--

LOCK TABLES `comunicazioni__comunicazione` WRITE;
/*!40000 ALTER TABLE `comunicazioni__comunicazione` DISABLE KEYS */;
/*!40000 ALTER TABLE `comunicazioni__comunicazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunicazioni__comunicazione__gruppi`
--

DROP TABLE IF EXISTS `comunicazioni__comunicazione__gruppi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comunicazioni__comunicazione__gruppi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comunicazione_id` int(11) DEFAULT NULL,
  `gruppo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunicazioni__comunicazione__gruppi`
--

LOCK TABLES `comunicazioni__comunicazione__gruppi` WRITE;
/*!40000 ALTER TABLE `comunicazioni__comunicazione__gruppi` DISABLE KEYS */;
/*!40000 ALTER TABLE `comunicazioni__comunicazione__gruppi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunicazioni__comunicazione__utenti`
--

DROP TABLE IF EXISTS `comunicazioni__comunicazione__utenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comunicazioni__comunicazione__utenti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comunicazione_id` int(11) DEFAULT NULL,
  `utente_id` int(11) DEFAULT NULL,
  `letta` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunicazioni__comunicazione__utenti`
--

LOCK TABLES `comunicazioni__comunicazione__utenti` WRITE;
/*!40000 ALTER TABLE `comunicazioni__comunicazione__utenti` DISABLE KEYS */;
/*!40000 ALTER TABLE `comunicazioni__comunicazione__utenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunicazioni__segnalazione`
--

DROP TABLE IF EXISTS `comunicazioni__segnalazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comunicazioni__segnalazione` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cognome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indirizzo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testo_segnalazione` text COLLATE utf8_unicode_ci,
  `foto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitudine` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitudine` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipologia_richiesta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_chiusura` date DEFAULT NULL,
  `note_operatore` text COLLATE utf8_unicode_ci,
  `token_device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stato_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gestore_segnalazione` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunicazioni__segnalazione`
--

LOCK TABLES `comunicazioni__segnalazione` WRITE;
/*!40000 ALTER TABLE `comunicazioni__segnalazione` DISABLE KEYS */;
/*!40000 ALTER TABLE `comunicazioni__segnalazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moduli__categoriagiuridica`
--

DROP TABLE IF EXISTS `moduli__categoriagiuridica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moduli__categoriagiuridica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moduli__categoriagiuridica`
--

LOCK TABLES `moduli__categoriagiuridica` WRITE;
/*!40000 ALTER TABLE `moduli__categoriagiuridica` DISABLE KEYS */;
/*!40000 ALTER TABLE `moduli__categoriagiuridica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moduli__importo`
--

DROP TABLE IF EXISTS `moduli__importo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moduli__importo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `codice` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descrizione` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `importo` decimal(65,2) DEFAULT NULL,
  `tipo_obbligatorieta_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bollo` tinyint(1) DEFAULT NULL,
  `importo_utente` tinyint(1) DEFAULT NULL,
  `tipo_modulo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moduli__importo`
--

LOCK TABLES `moduli__importo` WRITE;
/*!40000 ALTER TABLE `moduli__importo` DISABLE KEYS */;
/*!40000 ALTER TABLE `moduli__importo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moduli__modulosalvato`
--

DROP TABLE IF EXISTS `moduli__modulosalvato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moduli__modulosalvato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `chiave` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utente_id` int(11) DEFAULT NULL,
  `dati` text COLLATE utf8_unicode_ci,
  `dimensioni` text COLLATE utf8_unicode_ci,
  `inviato` datetime DEFAULT NULL,
  `confermato` datetime DEFAULT NULL,
  `stampato` tinyint(1) DEFAULT NULL,
  `hashdir_allegati` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_modulo` int(11) DEFAULT NULL,
  `stato_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_pratica` int(11) DEFAULT NULL,
  `importi` text COLLATE utf8_unicode_ci,
  `modulo_firmato` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spid_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_modulo_id` int(11) DEFAULT NULL,
  `id_iscrizione` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completare_servizi_titoli` tinyint(1) DEFAULT NULL,
  `servizi_svolti` text COLLATE utf8_unicode_ci,
  `titoli_studio` text COLLATE utf8_unicode_ci,
  `titoli_vari` text COLLATE utf8_unicode_ci,
  `punteggio_servizi` decimal(20,11) DEFAULT NULL,
  `punteggio_titoli` decimal(20,11) DEFAULT NULL,
  `punteggio_titoli_vari` decimal(20,11) DEFAULT NULL,
  `punteggio_totale` decimal(12,6) DEFAULT NULL,
  `protocollo_numero` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `protocollo_data` datetime DEFAULT NULL,
  `protocollo_id` int(11) DEFAULT NULL,
  `extra_dati` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moduli__modulosalvato`
--

LOCK TABLES `moduli__modulosalvato` WRITE;
/*!40000 ALTER TABLE `moduli__modulosalvato` DISABLE KEYS */;
/*!40000 ALTER TABLE `moduli__modulosalvato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moduli__tipomodulo`
--

DROP TABLE IF EXISTS `moduli__tipomodulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moduli__tipomodulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disponibile_dal` datetime DEFAULT NULL,
  `disponibile_al` datetime DEFAULT NULL,
  `descrizione` text COLLATE utf8_unicode_ci,
  `tipo_compilazione_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stato_visualizzazione_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_destinatari` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_a_compilatore` tinyint(1) DEFAULT NULL,
  `solo_pratiche` tinyint(1) DEFAULT NULL,
  `contenuto_modulo` longtext COLLATE utf8_unicode_ci,
  `nome_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campi_obbligatori` text COLLATE utf8_unicode_ci,
  `allegati_associati` text COLLATE utf8_unicode_ci,
  `settore_id` int(11) DEFAULT NULL,
  `procedimento_id` int(11) DEFAULT NULL,
  `responsabile_id` int(11) DEFAULT NULL,
  `tipo_firma_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_iscrizioni_scolastiche` tinyint(1) DEFAULT NULL,
  `eventi_associati` text COLLATE utf8_unicode_ci,
  `interventi_associati` text COLLATE utf8_unicode_ci,
  `categoria_giuridica_id` int(11) DEFAULT NULL,
  `servizio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moduli__tipomodulo`
--

LOCK TABLES `moduli__tipomodulo` WRITE;
/*!40000 ALTER TABLE `moduli__tipomodulo` DISABLE KEYS */;
INSERT INTO `moduli__tipomodulo` VALUES (1,'2019-03-20 18:33:02','2019-09-23 09:55:24','Accesso agli atti','Accesso_agli_atti',NULL,NULL,'Richiesta di accesso agli atti in carta semplice o in bollo','molti','visibile','comunedialessandria@legalmail.it',NULL,NULL,'<!DOCTYPE html>\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n</head>\r\n<body>\r\nAl Comune di<br>                                                                                                                                       ...<br>                                                                                                                  Alla c.a. del  Responsabile<br>                                                                                                                                   del Settore<br><br><br><strong>OGGETTO: Richiesta di accesso agli atti</strong><br><br>\r\n<div class=\"mceTmpl\"><fieldset id=\"dati_utente\">\n<em><strong>Il sottoscritto/a</strong></em> <br> Nome   <input id=\"nome\" class=\"input_mediumwidth_220\" size=\"2\" type=\"text\">   Cognome   <input id=\"cognome\" class=\"input_mediumwidth_220\" size=\"2\" type=\"text\"> <br> Codice Fiscale   <input id=\"codice_fiscale\" class=\"input_mediumwidth_220\" size=\"2\" type=\"text\">   Nato a   <input id=\"luogo_nascita\" class=\"input_mediumwidth obbligatorio\" size=\"0\" type=\"text\">   <br>Il   <input id=\"data_nascita\" class=\"sel_data input_date input_mediumwidth_220\" type=\"date\" placeholder=\"data dd/mm/aaaa\"> Residente a   <input id=\"luogo_residenza\" class=\"input_mediumwidth\" size=\"0\" type=\"text\"> <br>prov   <input id=\"prov_residenza\" class=\"input_xxsmallwidth\" size=\"0\" type=\"text\">   cap   <input id=\"cap\" class=\"input_smallwidth\" size=\"1\" type=\"text\"> Indirizzo   <input id=\"indirizzo_residenza\" class=\"input_largewidth\" size=\"4\" type=\"text\">   n   <input id=\"civico_residenza\" class=\"input_xxsmallwidth\" size=\"0\" type=\"text\">   <br> Tipo documento <input id=\"tipo_documento\" class=\"input_mediumwidth_220\" size=\"2\" type=\"text\"> Num. <input id=\"num_documento\" class=\"input_smallwidth\" size=\"1\" type=\"text\"> del   <input id=\"data_documento\" class=\"sel_data input_date input_mediumwidth_220\" type=\"date\" placeholder=\"data dd/mm/aaaa\">   <br> Rilasciato da   <input id=\"doc_rilasciato_da\" class=\"input_mediumwidth_220\" size=\"2\" type=\"text\">   E-mail <input id=\"email\" class=\"input_mediumwidth\" size=\"0\" type=\"text\"> <br>Pec   <input id=\"pec\" class=\"input_mediumwidth\" size=\"0\" type=\"text\">   Telefono   <input id=\"telefono\" class=\"input_mediumwidth_220\" size=\"2\" type=\"text\"> <br>cellulare   <input id=\"cellulare\" class=\"input_mediumwidth_220\" size=\"2\" type=\"text\">   <br>\n</fieldset></div>\r\n<br> \r\n<div id=\"1\" class=\"contenitore contenitore_checkbox_obbligatori contenitore_checkbox_esclusivi\">\r\n<div class=\"barra_contenitore_opzioni\">  OBBL EXCL</div>\r\nIn qualità di:<br> <span class=\"cont_check\"><input id=\"1\" class=\"input_checkbox\" type=\"checkbox\"></span> Rappresentante legale della società/associazione/ente richiedente.<br> <span class=\"cont_check\"><input id=\"2\" class=\"input_checkbox\" type=\"checkbox\"></span> Soggetto incaricato (è necessario allegare in copia mandato/procura/convenzione di incarico.<br>\n</div>\r\n <br><br>\r\n<div style=\"text-align: center;\"><strong>CHIEDE<br><br></strong></div>\r\ndi prendere visione e/o di avere copia della seguente documentazione agli atti dell’amministrazione: (N.B. specificare la tipologia del provvedimento, la data ed il numero, e comunque tutti i dati necessari ad identificare con esattezza il fascicolo o il documento oggetto della richiesta):<br> <input id=\"1\" class=\"textarea obbligatorio\" type=\"text\" placeholder=\"textarea\"> <br><br> <span class=\"cont_check\"><input id=\"3\" class=\"input_checkbox\" type=\"checkbox\"></span> Visione documenti/fascicolo<br> <span class=\"cont_check\"><input id=\"4\" class=\"input_checkbox\" type=\"checkbox\"></span> Rilascio copia documenti<br><br>per il seguente motivo (ai sensi dell’art. 22 della Legge 241/1990 deve trattarsi di un interesse diretto, concreto e attuale, corrispondente ad una situazione giuridicamente tutelata e collegata al documento al quale è chiesto l\'accesso. In pratica, il richiedente deve dimostrare la necessità <br>di conoscere il contenuto di atti collegati a un bene concreto della vita, quali ad esempio: la partecipazione ad un concorso/appalto, il rilascio di autorizzazioni, la richiesta di contributi/agevolazioni, la tutela giurisdizionale in giudizio, l’acquisto di un bene, eccetera):<br> <input id=\"2\" class=\"textarea\" type=\"text\" placeholder=\"textarea\"> <br><br>disponendo la consegna/autorizzazione alla visione a favore:<br> <span class=\"cont_check\"><input id=\"5\" class=\"input_checkbox\" type=\"checkbox\"></span> del sottoscritto richiedente<br>  <span class=\"cont_check\"><input id=\"6\" class=\"input_checkbox\" type=\"checkbox\"></span> del/la Signor/a  <input id=\"19\" class=\"input_bigwidth\" size=\"5\" type=\"text\"> <br> <br>ed il rilascio della documentazione richiesta<br> <span class=\"cont_check\"><input id=\"7\" class=\"input_checkbox\" type=\"checkbox\"></span> in copia fotostatica semplice<br>  <span class=\"cont_check\"><input id=\"8\" class=\"input_checkbox\" type=\"checkbox\"></span> in copia autenticata in bollo.<br> <br><strong>Dichiara di essere informato che:</strong><br>\r\n<ul>\r\n<li>il conferimento dei dati personali indicati nella presente richiesta è obbligatorio,pena l’impossibilità di soddisfare la richiesta stessa; i dati personali saranno trattati dagli Uffici preposti in modo manuale ed informatizzato; i propri diritti sono previsti dall’art. 7 del D.Lgs. 196/2003</li>\r\n<li>la visione e il rilascio di copia saranno autorizzati una volta concluso l’eventuale procedimento di notifica ai controinteressati, fatte salve in ogni caso eventuali motivate comunicazioni di differimento/limitazione/rifiuto di accesso agli atti, nei casi previsti dalla normativa vigente.</li>\r\n</ul>\r\nData  <input id=\"1\" class=\"data_oggi input_date input_mediumwidth_220\" type=\"date\" placeholder=\"data corrente dd/mm/aaaa\">                                                 <input id=\"nome\" class=\"input_mediumwidth_220\" size=\"2\" type=\"text\">  <br>\r\n<div class=\"layer layer_input\" style=\"top: 356.594px; left: 126.938px;\">Nome|<a class=\"aumenta_dim\" href=\"#\"> + </a>|<a class=\"diminuisci_dim\" href=\"#\"> - </a>|<a class=\"associa_obbligatorio\" href=\"#\"> Obbl </a>\n</div>\r\n</body>\r\n</html>\n','Accesso_agli_atti','{\"text\":[[\"dati_utente\",\"luogo_nascita\"],[\"textarea_1\"]],\"checkbox\":[[\"gruppo_checkbox_1\"]],\"textarea\":[[\"textarea_1\"]]}','{}',NULL,0,0,'',NULL,NULL,NULL,NULL,NULL),(3,'2019-06-19 08:48:36','2019-06-21 08:34:20','Segnalazione ','Segnalazione',NULL,NULL,'Segnalaci problemi sulle strade','molti','test','marco.citarelli@comune.alessandria.it',1,NULL,'<!DOCTYPE html>\n<html>\n<head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head>\n<body>\r\nSegnalazioni<br><br><hr>\r\n<div class=\"mceTmpl dati_portale\"><fieldset id=\"dati_utente\">\r\n<div id=\"dati_utente_portale\" class=\"barra_opzioni_template\"> <br>\n</div>\r\n<br> <em><strong>Dati Utente Portale</strong></em> <br> <br> Nome   <input id=\"nome\" class=\"input_mediumwidth_220 da_portale\" size=\"2\" type=\"text\">   Cognome   <input id=\"cognome\" class=\"input_mediumwidth_220 da_portale\" size=\"2\" type=\"text\"> <br> Codice Fiscale   <input id=\"codice_fiscale\" class=\"input_mediumwidth_220 da_portale\" size=\"2\" type=\"text\">   Sesso   <input id=\"sesso\" class=\"input_xxsmallwidth da_portale\" size=\"2\" type=\"text\">   <br> Nato a   <input id=\"luogo_nascita\" class=\"input_mediumwidth da_portale\" size=\"0\" type=\"text\">   Il   <input id=\"data_nascita\" class=\"sel_data input_date input_mediumwidth_220 da_portale\" type=\"date\" placeholder=\"data dd/mm/aaaa\"> <br> Prov Nascita   <input id=\"prov_nascita\" class=\"input_smallwidth da_portale\" size=\"0\" type=\"text\"> Stato Nascita   <input id=\"stato_nascita\" class=\"input_mediumwidth da_portale\" size=\"0\" type=\"text\"> <br> Residente a   <input id=\"luogo_residenza\" class=\"input_mediumwidth da_portale\" size=\"0\" type=\"text\"> prov   <input id=\"prov_residenza\" class=\"input_xxsmallwidth da_portale\" size=\"0\" type=\"text\">   cap   <input id=\"cap\" class=\"input_smallwidth da_portale\" size=\"1\" type=\"text\"> <br> Indirizzo   <input id=\"indirizzo_residenza\" class=\"input_largewidth da_portale\" size=\"4\" type=\"text\">   n   <input id=\"civico_residenza\" class=\"input_xxsmallwidth da_portale\" size=\"0\" type=\"text\">   <br> Stato Residenza   <input id=\"stato_residenza\" class=\"input_mediumwidth da_portale\" size=\"0\" type=\"text\">   <br> Tipo documento <input id=\"tipo_documento\" class=\"input_mediumwidth_220 da_portale\" size=\"2\" type=\"text\"> Num. <input id=\"num_documento\" class=\"input_smallwidth da_portale\" size=\"1\" type=\"text\"> del   <input id=\"data_documento\" class=\"sel_data input_date input_mediumwidth_220 da_portale\" type=\"date\" placeholder=\"data dd/mm/aaaa\">   <br> Rilasciato da   <input id=\"doc_rilasciato_da\" class=\"input_mediumwidth_220 da_portale\" size=\"2\" type=\"text\">   <br> E-mail <input id=\"email\" class=\"input_mediumwidth da_portale\" size=\"0\" type=\"text\"> Pec   <input id=\"pec\" class=\"input_mediumwidth da_portale\" size=\"0\" type=\"text\">   <br> Telefono   <input id=\"telefono\" class=\"input_mediumwidth_220 da_portale\" size=\"2\" type=\"text\"> cellulare   <input id=\"cellulare\" class=\"input_mediumwidth_220 da_portale\" size=\"2\" type=\"text\">   <br>\n</fieldset></div>\r\n <strong>SEGNALAZIONE : </strong><br> <input id=\"1\" class=\"textarea input_largewidth obbligatorio\" type=\"text\" placeholder=\"textarea\"> <br>\r\n</body>\n</html>\n','Segnalazione','{\"text\":[[\"textarea_1\"]],\"checkbox\":[],\"textarea\":[[\"textarea_1\"]]}','{}',0,0,0,'',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `moduli__tipomodulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__amministratore`
--

DROP TABLE IF EXISTS `portal__amministratore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__amministratore` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `start_user` varchar(255) DEFAULT NULL,
  `settore_id` int(11) DEFAULT NULL,
  `limitazione_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__amministratore`
--

LOCK TABLES `portal__amministratore` WRITE;
/*!40000 ALTER TABLE `portal__amministratore` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__amministratore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__amministratore__servizi`
--

DROP TABLE IF EXISTS `portal__amministratore__servizi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__amministratore__servizi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amministratore_id` int(11) DEFAULT NULL,
  `servizio_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__amministratore__servizi`
--

LOCK TABLES `portal__amministratore__servizi` WRITE;
/*!40000 ALTER TABLE `portal__amministratore__servizi` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__amministratore__servizi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__anagrafica`
--

DROP TABLE IF EXISTS `portal__anagrafica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__anagrafica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `nome_cognome` varchar(255) DEFAULT NULL,
  `stato_id` varchar(255) DEFAULT NULL,
  `tipo_anagrafica_id` varchar(255) DEFAULT NULL,
  `codice_fiscale` varchar(255) DEFAULT NULL,
  `via_residenza` varchar(255) DEFAULT NULL,
  `civico_residenza` varchar(255) DEFAULT NULL,
  `comune_residenza` varchar(255) DEFAULT NULL,
  `cap_residenza` varchar(255) DEFAULT NULL,
  `prov_residenza` varchar(255) DEFAULT NULL,
  `nazione_residenza` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_psp` varchar(255) DEFAULT NULL,
  `tipo_versamento_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__anagrafica`
--

LOCK TABLES `portal__anagrafica` WRITE;
/*!40000 ALTER TABLE `portal__anagrafica` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__anagrafica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__anagrafica__familiari`
--

DROP TABLE IF EXISTS `portal__anagrafica__familiari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__anagrafica__familiari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anagrafica_id` int(11) DEFAULT NULL,
  `portal_anagrafica_id` int(11) DEFAULT NULL,
  `stato_relazione` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__anagrafica__familiari`
--

LOCK TABLES `portal__anagrafica__familiari` WRITE;
/*!40000 ALTER TABLE `portal__anagrafica__familiari` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__anagrafica__familiari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__ditta`
--

DROP TABLE IF EXISTS `portal__ditta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__ditta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `ragione_sociale` varchar(255) DEFAULT NULL,
  `partita_iva` varchar(255) DEFAULT NULL,
  `codice_fiscale_azienda` varchar(255) DEFAULT NULL,
  `referente_id` int(11) DEFAULT NULL,
  `indirizzo_azienda` varchar(255) DEFAULT NULL,
  `civico_azienda` varchar(255) DEFAULT NULL,
  `cap_azienda` varchar(255) DEFAULT NULL,
  `comune_azienda` varchar(255) DEFAULT NULL,
  `provincia_azienda` varchar(255) DEFAULT NULL,
  `telefono_azienda` varchar(255) DEFAULT NULL,
  `fax_azienda` varchar(255) DEFAULT NULL,
  `email_azienda` varchar(255) DEFAULT NULL,
  `pec_azienda` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__ditta`
--

LOCK TABLES `portal__ditta` WRITE;
/*!40000 ALTER TABLE `portal__ditta` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__ditta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__gdpr`
--

DROP TABLE IF EXISTS `portal__gdpr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__gdpr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `titolo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `informativa` longtext COLLATE utf8_unicode_ci,
  `autorizzazione` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__gdpr`
--

LOCK TABLES `portal__gdpr` WRITE;
/*!40000 ALTER TABLE `portal__gdpr` DISABLE KEYS */;
INSERT INTO `portal__gdpr` VALUES (1,'2019-02-25 21:21:11','2019-04-11 12:14:23','Informativa ed Autorizzazione al consenso GDPR','\r\n<p style=\"text-align: center;\"> <strong>INFORMATIVA SULLA PRIVACY</strong></p>\r\n<p> </p>\r\n<p>Ai sensi del combinato disposto degli artt. 12 e 13 del Regolamento (UE) 2016/679 (GDPR) e dell’art. 13 del D.Lgs. 196/2003 e s.m.i. (CODICE), siamo qui a fornirLe in forma concisa, trasparente, intelligibile e facilmente accessibile, con un linguaggio semplice e chiaro, le seguenti informazioni relative al trattamento dei Suoi dati personali:</p>\r\n<p> </p>\r\n<ol>\r\n<li>A) <strong>Identità e dati di contatto del titolare del trattamento e, ove applicabile, del suo rappresentante</strong>:</li>\r\n</ol>\r\n<p>Il Titolare del Trattamento è: Comune di Alessandria, Piazza Libertà 1 - 15121 Alessandria (AL), tel. 0131/515111, PEC: comunedialessandria@legalmail.it, C.F. e P.IVA: 00429440068;</p>\r\n<p> </p>\r\n<ol>\r\n<li>B) <strong>Dati di contatto del Responsabile della Protezione dei Dati (RPD-DPO)</strong>:</li>\r\n</ol>\r\n<p>Stante la tipologia di trattamento svolto dal titolare, a seguito altresì di un’attenta valutazione di accountability, si è determinato di procedere alla nomina del Dott. Daniele Delfino, Servizio Autonomo Sistemi Informativi ed E-government del Comune di Alessandria  Piazza della Libertà 1  15121 Alessandria (AL), tel. 0131/515309, PEC: <a href=\"mailto:daniele.delfino@comunedialessandria.it\">daniele.delfino@comunedialessandria.it</a> quale Responsabile della Protezione dei Dati (RPD/DPO);</p>\r\n<p> </p>\r\n<ol>\r\n<li>C) <strong>Finalità e la base giuridica (art. 6 del Regolamento UE 2016/679) del trattamento</strong>:</li>\r\n</ol>\r\n<p>I dati saranno trattati esclusivamente al fine di adempiere a:</p>\r\n<p>1) obblighi di legge, regolamenti e normative comunitarie, disposizioni impartite da autorità o organi a ciò autorizzati; la base giuridica del trattamento è quella prevista all’art. 6, comma 1, lett. c), Reg. UE 2016/679; 2) obblighi nei confronti dell’amministrazione finanziaria, della Pubblica Amministrazione in genere e degli enti connessi; la base giuridica del trattamento è quella prevista all’art. 6, comma 1, lett. c), Reg. UE 2016/679;</p>\r\n<p> </p>\r\n<ol>\r\n<li>D) <strong>Gli eventuali destinatari o le eventuali categorie di destinatari dei dati personali</strong>:</li>\r\n</ol>\r\n<p>I Suoi dati personali potranno essere comunicati:</p>\r\n<p>1) a soggetti che possono accedere ai dati in forza di disposizioni di legge o di normativa secondaria o comunitaria;</p>\r\n<p>2) a soggetti ai quali la comunicazione è prevista per legge. Possono inoltre accedere ai Suoi dati personali: il titolare, i responsabili interni e/o esterni, eventualmente nominati, e i collaboratori interni e/o dipendenti incaricati del trattamento.</p>\r\n<p> </p>\r\n<ol>\r\n<li>E) <strong>Ove applicabile, l’intenzione del titolare del trattamento di trasferire dati personali a un paese terzo o a un’organizzazione internazionale e l’esistenza o l’assenza di una decisione di adeguatezza della Commissione o, nel caso dei trasferimenti di cui all’articolo 46 o 47, o all’articolo 49, secondo comma, il riferimento alle garanzie appropriate o opportune e i mezzi per ottenere una copia di tali dati o il luogo dove sono stati resi disponibili:</strong>\n</li>\r\n</ol>\r\n<p>I suoi dati non saranno trasferiti né in Stati membri dell’Unione Europea né in Paesi terzi non appartenenti all’Unione Europea.</p>\r\n<p> </p>\r\n<ol>\r\n<li>F) <strong>Il periodo di conservazione dei dati personali oppure, se non è possibile, i criteri utilizzati per determinare tale periodo</strong>:</li>\r\n</ol>\r\n<p>I Suoi dati personali saranno conservati per l’esecuzione delle prestazioni previste dalla legge.</p>\r\n<p> </p>\r\n<ol>\r\n<li>G) <strong>l’esistenza del diritto dell’interessato di chiedere al titolare del trattamento l’accesso ai dati personali e la rettifica o la cancellazione degli stessi o la limitazione del trattamento che lo riguardano o di opporsi al loro trattamento, oltre al diritto alla portabilità dei dati</strong>:</li>\r\n</ol>\r\n<p>In ogni momento, Lei potrà esercitare, ai sensi degli articoli dal 15 al 22 del Regolamento UE n. 2016/679, il diritto di: 1) chiedere la conferma dell’esistenza o meno di propri dati personali; 2) ottenere la rettifica e la cancellazione dei dati; 3) ottenere la limitazione del trattamento; 4) opporsi al trattamento in qualsiasi momento; 5) ottenere la portabilità dei dati, ossia riceverli da un titolare del trattamento, in un formato strutturato, di uso comune e leggibile da dispositivo automatico, e trasmetterli ad un altro titolare del trattamento senza impedimenti.</p>\r\n<p> </p>\r\n<ol>\r\n<li>H) <strong>il diritto di proporre reclamo a un’autorità di controllo</strong>:</li>\r\n</ol>\r\n<p>In ogni momento, Lei potrà proporre reclamo all’autorità di controllo competente (Garante per la Protezione dei Dati Personali), ai sensi dell’art. 77 del Regolamento, qualora ritenga che il trattamento dei vostri dati sia contrario alla normativa in vigore.</p>\r\n<p> </p>\r\n<ol>\r\n<li>I) <strong>se la comunicazione di dati personali è un obbligo legale o contrattuale oppure un requisito necessario per la conclusione di un contratto, e se l’interessato ha l’obbligo di fornire i dati personali nonché le possibili conseguenze della mancata comunicazione di tali dati</strong>:</li>\r\n</ol>\r\n<p>per le finalità di trattamento di cui alla lettera C) numeri 1) e 2) della presente informativa, il conferimento dei suoi dati è necessario al fine di dare esecuzione ai rapporti giuridici previsti dalla legge e ad altre attività connesse, in caso di mancato conferimento non sarà pertanto possibile svolgere le attività richieste per la conclusione e per l’esecuzione del servizio.</p>\r\n<p> </p>\r\n<ol>\r\n<li>L) <strong>l’esistenza di un processo decisionale automatizzato, compresa la profilazione di cui all’articolo 22, paragrafi 1 e 4, e, almeno in tali casi, informazioni significative sulla logica utilizzata, nonché l’importanza e le conseguenze previste di tale trattamento per l’interessato</strong>:</li>\r\n</ol>\r\n<p>Il software gestionale del Titolare provvederà al trattamento dei Suoi dati personali soltanto per le finalità indicate alla lettera C) di cui alla presente informativa; i Suoi dati non verranno trattati per finalità di profilazione.</p>\r\n<p> </p>\r\n','\r\n<div>\r\n<p style=\"text-align: center;\"><strong>AUTORIZZAZIONE AL TRATTAMENTO DEI DATI</strong></p>\r\n<p> <br>I dati personali vengono utilizzati e raccolti dal titolare del trattamento dei dati e conservati dal responsabile della protezione dei dati (<a title=\"Informatica Trattamento Dati\" href=\"../../../portal/informativa_gdpr\" target=\"_blank\">vedi informativa</a>). <br><br></p>\r\n<p>Nel rispetto di quanto prescritto dall’attuale normativa in materia di protezione dei dati personali (art. 29 del Regolamento UE 2016/679 e art. 2-quaterdecies del d.lgs. 196/2003 e s.m.i) con la presente la incarichiamo del trattamento dei dati necessari per la gestione dell’attività del portale delle prenotazioni per appuntamenti presso gli uffici e della comunicazione al cittadino del Comune di Alessandria.</p>\r\n<p><strong> </strong></p>\r\n<p><strong>Soggetti autorizzati</strong></p>\r\n<p>Il trattamento dei dati personali viene effettuato solo da soggetti che hanno ricevuto una formale autorizzazione mediante designazione per iscritto di ogni singolo operatore, con la quale si individua l’ambito del trattamento consentito.</p>\r\n<p> </p>\r\n<p><strong>Istruzioni specifiche sul trattamento dei dati</strong></p>\r\n<p>Le rammentiamo quanto disposto dall’art. 5 del Regolamento UE 2016/679.</p>\r\n<p>I dati personali oggetto di trattamento devono essere:<br> a)trattati in modo lecito,corretto e trasparente nei confronti dell’interessato (&lt;&lt;liceità,correttezza e trasparenza&gt;&gt;);</p>\r\n<p>b)raccolti per finalità determinate,esplicite e legittime, e successivamente trattati in modo che non sia incompatibile con tali finalità; un ulteriore trattamento dei dati personali a fini di archiviazione nel pubblico interesse,di ricerca scientifica o storica o a fini statistici non è,conformemente all’articolo 89, paragrafo 1,considerato incompatibile con le finalità iniziali (&lt;&gt;);</p>\r\n<p>c)adeguati, pertinenti e limitati a quanto necessario rispetto alle finalità per le quali sono trattati (&lt;&gt;);</p>\r\n<p>d)esatti e, se necessario, aggiornati;devono essere adottate tutte le misure ragionevoli per cancellare o rettificare tempestivamente i dati inesatti rispetto alle finalità per le quali sono trattati (&lt;&gt;);</p>\r\n<p>e)conservati in una forma che consenta l’identificazione degli interessati per un arco di tempo non superiore al conseguimento delle finalità per le quali sono trattati; i dati personali possono essere conservati per periodi più lunghi a condizione che siano trattati esclusivamente a fini di archiviazione nel pubblico interesse, di ricerca scientifica o storica o a fini statistici, conformemente all’articolo 89, paragrafo 1, fatta salva l’attuazione di misure tecniche e organizzative adeguate richieste dal presente regolamento a tutela dei diritti e delle libertà dell’interessato (&lt;&lt;integrità e riservatezza&gt;&gt;)</p>\r\n<p>Inoltre si richiede la Sua particolare attenzione ai seguenti, aventi specifica attinenza con la sicurezza dei dati trattati:</p>\r\n<ul>\r\n<li>Procedure da seguire per la classificazione dei dati personali, al fine di distinguere quelli appartenenti a categorie particolari (art. 9 GDPR) e quelli relativi a condanne penali e reati, osservando le maggiori cautele di trattamento che questo tipo di dati richiedono;</li>\r\n<li>Modalità di reperimento dei documenti contenenti dati personali e modalità da osservare per la custodia e l’archiviazione degli stessi;</li>\r\n<li>Modalità per elaborare e custodire le password necessarie per accedere agli elaboratori elettronici e ai dati in esso contenuti, nonché per fornirne copia al preposto alla custodia della parola chiave;</li>\r\n<li>Prescrizione di non lasciare incustoditi e accessibili gli strumenti elettronici, mentre è in corso una sessione di lavoro;</li>\r\n<li>Procedure e modalità di utilizzo degli strumenti e dei programmi atti a proteggere i sistemi informativi, nonché procedure per il salvataggio dei dati;</li>\r\n<li>Modalità di utilizzo, custodia e archiviazione dei supporti rimuovibili contenenti dati personali.</li>\r\n</ul>\r\n<p> </p>\r\n<p><strong>Modalità operative da seguire per il trattamento dei dati</strong></p>\r\n<p>Al fine della corretta gestione dei dati in trattamento la invitiamo pertanto ad attenersi alle seguenti indicazioni:</p>\r\n<ul>\r\n<li>Richiedere e utilizzare soltanto i dati necessari alla normale attività lavorativa;</li>\r\n<li>Custodire i dati oggetto del trattamento in luoghi non accessibili a non autorizzati;</li>\r\n<li>Non lasciare incustodito il proprio posto di lavoro prima di aver provveduto alla messa in sicurezza dei dati;</li>\r\n<li>Non lasciare incustoditi e accessibili a terzi gli strumenti elettronici, mentre è in corso una sessione di lavoro;</li>\r\n<li>Procedere all’archiviazione definitiva, nei luoghi predisposti, dei supporti cartacei e dei supporti magnetico/ottici una volta terminate le ragioni di consultazione;</li>\r\n<li>Custodire e non divulgare il codice di identificazione personale (username) e la password di accesso agli strumenti elettronici;</li>\r\n<li>Accertarsi che i terzi siano a conoscenza e abbiano autorizzato l’uso dei dati richiesti;</li>\r\n<li>Accertarsi dell’identità di terzi e della loro autorizzazione al ritiro di documentazione in uscita;</li>\r\n<li>Non fornire telefonicamente o a mezzo fax dati senza specifica autorizzazione e/o identificazione del richiedente.</li>\r\n</ul>\r\n<p>Le presenti indicazioni sono tassative, la preghiamo di sottoscrivere la presente per presa visione in accettazione di quanto riportato.</p>\r\n<br>\n</div>\r\n');
/*!40000 ALTER TABLE `portal__gdpr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__gruppo`
--

DROP TABLE IF EXISTS `portal__gruppo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__gruppo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `lingua` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__gruppo`
--

LOCK TABLES `portal__gruppo` WRITE;
/*!40000 ALTER TABLE `portal__gruppo` DISABLE KEYS */;
INSERT INTO `portal__gruppo` VALUES (1,'2019-06-21 12:34:23','2019-06-21 12:34:23','gruppo 1','gruppo di prova','');
/*!40000 ALTER TABLE `portal__gruppo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__hippo__procedimento`
--

DROP TABLE IF EXISTS `portal__hippo__procedimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__hippo__procedimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `termine` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__hippo__procedimento`
--

LOCK TABLES `portal__hippo__procedimento` WRITE;
/*!40000 ALTER TABLE `portal__hippo__procedimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__hippo__procedimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__hippo__responsabile`
--

DROP TABLE IF EXISTS `portal__hippo__responsabile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__hippo__responsabile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__hippo__responsabile`
--

LOCK TABLES `portal__hippo__responsabile` WRITE;
/*!40000 ALTER TABLE `portal__hippo__responsabile` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__hippo__responsabile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__hippo__settore`
--

DROP TABLE IF EXISTS `portal__hippo__settore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__hippo__settore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_esterno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__hippo__settore`
--

LOCK TABLES `portal__hippo__settore` WRITE;
/*!40000 ALTER TABLE `portal__hippo__settore` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__hippo__settore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__mobiledeviceregistrati`
--

DROP TABLE IF EXISTS `portal__mobiledeviceregistrati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__mobiledeviceregistrati` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `registrationId` varchar(255) DEFAULT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `lista_servizi` varchar(255) DEFAULT NULL,
  `utente_portale_id` int(11) DEFAULT NULL,
  `gruppo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__mobiledeviceregistrati`
--

LOCK TABLES `portal__mobiledeviceregistrati` WRITE;
/*!40000 ALTER TABLE `portal__mobiledeviceregistrati` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__mobiledeviceregistrati` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__modificacontatto`
--

DROP TABLE IF EXISTS `portal__modificacontatto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__modificacontatto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `prima` varchar(255) DEFAULT NULL,
  `dopo` varchar(255) DEFAULT NULL,
  `chiave_conferma` varchar(255) DEFAULT NULL,
  `conferme_mandate` int(11) DEFAULT NULL,
  `utente_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__modificacontatto`
--

LOCK TABLES `portal__modificacontatto` WRITE;
/*!40000 ALTER TABLE `portal__modificacontatto` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__modificacontatto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__notifiche__applicazione`
--

DROP TABLE IF EXISTS `portal__notifiche__applicazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__notifiche__applicazione` (
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `codice` varchar(255) NOT NULL DEFAULT '',
  `nome_breve` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__notifiche__applicazione`
--

LOCK TABLES `portal__notifiche__applicazione` WRITE;
/*!40000 ALTER TABLE `portal__notifiche__applicazione` DISABLE KEYS */;
INSERT INTO `portal__notifiche__applicazione` VALUES ('2019-02-25 21:21:11','2019-02-25 21:21:11','demografici','Carte Identità','Notifiche Carte d\'Identità in scadenza'),('2019-02-25 21:21:11','2019-02-25 21:21:11','muse','CityCard','Notifiche credito CityCard'),('2019-02-25 21:21:11','2019-02-25 21:21:11','pagamenti','PagoPA','Avvisatura digitale, invia una mail di notifica per l\'inserimento di un nuovo pagamento da parte della pubblica amministrazione'),('2019-02-25 21:21:11','2019-02-25 21:21:11','pratiche','Pratiche','Notifiche Pratiche');
/*!40000 ALTER TABLE `portal__notifiche__applicazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__notifiche__notifica`
--

DROP TABLE IF EXISTS `portal__notifiche__notifica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__notifiche__notifica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `applicazione_codice` varchar(255) DEFAULT NULL,
  `notifica_email` tinyint(1) DEFAULT NULL,
  `notifica_sms` tinyint(1) DEFAULT NULL,
  `notifica_push` tinyint(1) DEFAULT NULL,
  `utente_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__notifiche__notifica`
--

LOCK TABLES `portal__notifiche__notifica` WRITE;
/*!40000 ALTER TABLE `portal__notifiche__notifica` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__notifiche__notifica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__servizio`
--

DROP TABLE IF EXISTS `portal__servizio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__servizio` (
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `id` varchar(255) NOT NULL DEFAULT '',
  `nome` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `descrizione` text,
  `web_service` tinyint(1) DEFAULT NULL,
  `gestibile` tinyint(1) DEFAULT NULL,
  `accesso_id` varchar(255) DEFAULT NULL,
  `contesto_id` varchar(255) DEFAULT NULL,
  `posizione` int(11) DEFAULT NULL,
  `richiede_strong_auth` tinyint(1) DEFAULT NULL,
  `usa_oauth` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__servizio`
--

LOCK TABLES `portal__servizio` WRITE;
/*!40000 ALTER TABLE `portal__servizio` DISABLE KEYS */;
INSERT INTO `portal__servizio` VALUES ('2019-02-25 21:44:19','2019-04-15 12:34:21','appuntamenti','Prenotazione Appuntamenti','https://tuodominio.it/openweb/appuntamenti/appuntamenti.php?servizio=appuntamenti','',NULL,0,'registrati',NULL,100,0,NULL),('2019-04-10 12:20:38','2019-06-19 08:20:57','comunicazioni','Comunicazioni','/portal/servizi/comunicazioni',NULL,NULL,1,'confermati',NULL,0,0,NULL),('2019-03-20 18:45:19','2019-08-27 08:28:05','moduli','Modulistica OnLine','/portal/servizi/moduli',NULL,NULL,1,'confermati',NULL,100,0,NULL),('2019-03-20 18:45:51','2019-04-11 20:03:26','moduli_test','Anteprima Moduli','/portal/servizi/moduli','',NULL,0,'nascosto',NULL,100,0,NULL);
/*!40000 ALTER TABLE `portal__servizio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__traccia`
--

DROP TABLE IF EXISTS `portal__traccia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__traccia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `utente_id` int(11) DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagina` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parametri` text COLLATE utf8_unicode_ci,
  `id_transazione_app` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipologia_servizio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipologia_richiesta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__traccia`
--

LOCK TABLES `portal__traccia` WRITE;
/*!40000 ALTER TABLE `portal__traccia` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__traccia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__tracciaturaspidagid`
--

DROP TABLE IF EXISTS `portal__tracciaturaspidagid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__tracciaturaspidagid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authn_request` text COLLATE utf8_unicode_ci,
  `response` text COLLATE utf8_unicode_ci,
  `authn_req_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authn_req_issue_instant` datetime DEFAULT NULL,
  `response_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_issue_instant` datetime DEFAULT NULL,
  `response_issuer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assertion_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assertion_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assertion_subject_name_qualifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utente_tracciato_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1110 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__tracciaturaspidagid`
--

LOCK TABLES `portal__tracciaturaspidagid` WRITE;
/*!40000 ALTER TABLE `portal__tracciaturaspidagid` DISABLE KEYS */;
INSERT INTO `portal__tracciaturaspidagid` VALUES (981,'2019-10-17 16:29:42','2019-10-17 16:32:10','eidas','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','_7b997420-d318-0137-d4f8-005056a531ed','2019-10-17 14:29:42','_08c67044-2bbb-4c48-aa8f-4650d449d1ad','2019-10-17 14:32:09','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','_3B7tg0tni4iypbCwZybJvqSkt-lVpRBWgNC4EtNXOWTzBG.kccz94BSgoJyQq-M','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','https://sp-proxy.pre.eid.gov.it/spproxy/idpit',1076),(982,'2019-10-17 16:45:12','2019-10-17 16:48:21','eidas','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','_a59b5f00-d31a-0137-d4f9-005056a531ed','2019-10-17 14:45:12','_139e0e7f-ebc6-4f3a-8e88-d2e845cb13ee','2019-10-17 14:48:20','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','_RE-lvmCWWvcUSCmHV2NZ7Z_ZIIY7AW3KSwh7.IZ9gwXSaAUn2ruT8A.VBiGZc2p','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','https://sp-proxy.pre.eid.gov.it/spproxy/idpit',1076),(983,'2019-10-17 18:06:06','2019-10-17 18:07:01','infocert','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','_f2da3de0-d325-0137-d4fb-005056a531ed','2019-10-17 16:06:06','_a887ae1ead7e0b4185fdb19886f7de66','2019-10-17 16:07:01','https://identity.infocert.it','_b7509465c612ad5618c5160b923f9bac','_59757a334367ccd58f81699b206c7235','https://identity.infocert.it',8),(984,'2019-10-18 03:23:23','2019-10-18 03:23:23','eidas','eJydU8tu2zAQ/BWBF58kUVKUB2E5MGwEMJAUTZz20EvBiOuEgESq3KUffx9Kdmwf0qAooAOxnFnOzo7Gt9u2idbgUFtTjbKEjyIwtVXavFajH8938fXodjJG2TZ5J6ae3swT/PGAFE0RwVGgzaxB34JbglvrGhZGwbZiGecsmhI5/eIJ9pjQ9BPQPHTTRvatKvZG1KFIU+ziztntLukcJKBV8mrXiaZQH8pprwjRsujOuhoGYRUj54FFi3nFfte1usnLgsequCpinhVXsSr5Rcx5yctLWRYZqABF9EELkjRUsZxnN3HG4+z6mWciL8L3i0U/D+awPAlig10GRf96xbwzwkrUKIxsAQXVYjl9uBcBKOSHO+eUvPuaFEYjW9uG7R0XgzzXj9hK+praV7SKVwNUgCFNOxZ9C9VHLxu90uBO5nbWkWwgqW3rDSThiCiNcloGi9nkn2Dj9EziMSH9g4v5d9voevcfuslJgzqoZ+mx5SFvoIYlhyARbCma2baTTmO/mJAr3fr2w7Vz3KwJi3iC1XGmzWaTYHfK0zKc7/PDMJ8y93d/E3K6Pv85Ju/j1SzZ',NULL,'_ccd92530-d373-0137-d504-005056a531ed','2019-10-18 01:23:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(985,'2019-10-18 06:45:01','2019-10-18 06:45:01','tim','eJydU9Fq2zAU/RWjlzzZlp16TUWcEhIKgW5sTdeHvQzFvk4FluTpXiXp30920jSwroy9CCGdc3XuuUfT24Nuox04VNaUoyzhowhMZWtltuXo++NdPBndzqYodZt3Yu7p2TzALw9I0RwRHAXawhr0Gtwa3E5VsDI1HErGWTQncmrjCY6IUPIPyDJUUkb2ZUr2TNShSNPWbpVJVJ2Q0omiVDbNHjZ45GLa+U2rqnTQhGhZdGddBYO2kpHzwKLVsmQ/m+vmppBjHtfjSRPzbHwd1wUvYs7D+kkW4wzqAEX0QRCSNFSynGc3ccbjbPLIr8RVIXj2g0VPJ39YngTNwTGDon++ZN4ZYSUqFEZqQEGVWM8/34sAFPLVoEtK3n1M6pwlW9mWHU0XgzzXt6glfUztT1QdNwNUgCFFLyz6Ek6/edmqRoF787izjmQLSWW1N5CELaI0tVMyOM5m/wSbphcSzyHpH1wtv9owo5f/0E1OGlRBPUvPJU+Rg3oYckgTwYGihdWddAr7wYRwKe31q2uXuEUbBvEAzbmn/X6fYBfitbW7Pl7rsL/PT828yzze/U3I2/Xl/5j9BvLtLsw=',NULL,'_f7f95a30-d38f-0137-d505-005056a531ed','2019-10-18 04:45:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(986,'2019-10-18 07:53:08','2019-10-18 07:53:08','lepida','eJydU8tu2zAQ/BWBF58kUXLlB2E5MGwEMJC+rDSHXgpWXCcLSKRKLm3n70vZjmOgTVD0xsfMcnZ2OLs5tE20A+vQ6HKQJXwQga6NQv1YDr7d38aTwc185mTb5J1YeHrSG/jlwVG0cA4sBdrSaOdbsBXYHdaw1goOJeMsWhBZ/OkJTohQ8g/IKlRCLfsyJXsi6pxIU1RJAx0qmSCFTZd21myxgbRafLzL0w0otFBTWlWfWXRrbA1HYSUj64FF61XJfozrD6PJeMRjNZxOY54Nx7Eq+CjmvODFSBbDDFSAOueDGkdSU8lynk3jjMfZ5J4XohgKPvnOooezOSxPguBgl3ai96Nk3mphpEMntGzBCapFr1AEoJAv7lxT8u59UuiTTG0adnJcHOXZvsVW0vvU/gRVvD1CBWhCembRp3D61csGtwj21eDOWJINJLVpvYYkLJ2TWlnsHWfzf4LN0iuJl4T0D65XX0yD9fN/6CYrtcOgnqWXkue8gToOOUSJ4EDR0rSdtOj6wYRkYevbF9euccsmDGID20tP+/0+cSFbyaPZ9fGqwvouPzfzV+bp7i0hr9fXn2P+GyJ1K7o=',NULL,'_7c468760-d399-0137-d506-005056a531ed','2019-10-18 05:53:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(987,'2019-10-18 09:45:56','2019-10-18 09:45:56','infocert','eJydU0Fu2zAQ/IrAi0+SKLmKEsJyYNgIYCAt2jjNoZeCEdcJAYlUuUvb+X1J23EMNA2K3ghyZnd2dji53vVdsgGH2ppmVGR8lIBprdLmqRl9v79JL0fX0wnKvisHMfP0bO7glwekZIYIjgJtbg36HtwK3Ea3sDQKdg3jLJkROf3oCQ6IUPIPyCJU0kbGMg17JhpQ5LlWYEjTS6bN2rahSaYpx0GrPOpAtCy5sa6FvZyGkfPAkuWiYT/HUNTqseapGsurlBfjOlUVr1POK15dyGpcgApQRB80IElDDSt5cZUWPC0u73ktPlWiuvjBkoejJazMgsxgkkERuzfMOyOsRI3CyB5QUCtWs8+3IgCFfPXknFIOH5MGZ8m2tmMHn8Venosj9pI+psYbrdL1HioOrrHkS7j95mWn1xrcm62DdSQ7yFrbewNZOCJKo5yWwV82/SfYJD+TeMpFbLhcfLWdbl/+Qzc5aVAH9Sw/lTymDNR+ySFABDtK5rYfpNMYFxPypHvfv7p2jpt3YRF3sD7NtN1usxig7MluYphW4XxbHod5l3l4+5uQt+fzLzH9DZx1KjY=',NULL,'_3e17db70-d3a9-0137-d507-005056a531ed','2019-10-18 07:45:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(988,'2019-10-18 10:27:36','2019-10-18 10:27:36','poste','eJydU0Fu2zAQ/ArBi0+SKLlOHMJyYNgIYCAt2jjtIZeCFdcJC4lUuUvb+X0p2XEEtAmKnkiQM8vZ2eHs+tDUbAcejbPlKE/FiIGtnDb2sRx9vb9JpqPr+QxVUxetXAR6snfwKwASWyCCp0hbOouhAb8BvzMVrK2GQ8kFZwsib34EgiMilvwDsoqVjFVdmZI/EbUos6x1SGB02q+poeyn08kWM0SHxwIetPFQEWc3zlfQ6yo5+QCcrVcl/56L/MOVUiLRY7VNRD6+TPRETBMhJmJyoSbjHHSEIoYoBklZKnkh8qskF0k+vRdTWVzK8cUDZ99O3vAijXqjWxZlZ0fJg7fSKTQorWoAJVVys/h4KyNQqhdzhpSifZ/UekeucjU/Gi57eb5rsVH0PrU7MdGkHirBkqFnzj7F0y9B1WZrwA/99aRqSCvXBAtp3CIqq71R0Ww+/yfYLBtIPAeke3C9+uxqUz3/h27yyqKJ6nl2LnmKG+h+yDFJBAdiS9e0yhvsBhODZZrQvLg2xC3rOIg72J572u/3KbYxW49u1yVrE/e3xamZvzKPd28Jeb0e/o35b/1SLa8=',NULL,'_10149aa0-d3af-0137-d508-005056a531ed','2019-10-18 08:27:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(989,'2019-10-18 10:50:16','2019-10-18 10:50:16','poste','eJydU9Fu2jAU/ZXILzwlcYLCwCJUCFQJqZu20vVhL5OJL62nxM58r4H+/ZxAWaRu1bQnW/Y51+eeezy/OTV1dACH2ppylCV8FIGprNLmqRx9fbiNp6ObxRxlU+etWHp6Nvfw0wNStEQER4G2sgZ9A24L7qAr2BgFp5JxFi2JnN55gjMilHwDWYdK2siuTMmeiVoUadpaJNAq6ddEU/rDqniPKaLFcwEHSjuoiEW31lXQ6yoZOQ8s2qxL9n0sd5PdfsZjNd7lMc/GH2JV8FnMecGLiSzGGagARfRBDJI0VLKcZ7M443E2feBTUXCRTb6x6PHiDcuToDe4ZVB0dpTMOyOsRI3CyAZQUCW2y493IgCFfDVnSMnb90mts2QrW7Oz4aKX57oWG0nvU7sTHUzqoQIMaXph0adw+sXLWu81uKG/jmQNSWUbbyAJW0RplNMymM0W/wSbpwOJ14B0D27Wn22tq5f/0E1OGtRBPUuvJS9xA9UPOSSJ4ETRyjatdBq7wYRg6cY3r64Ncas6DOIe9teejsdjgm3I1pM9dMnahv1dfmnmj8zz3d+E/L4e/o3FL4KvLeM=',NULL,'_3ab6bf90-d3b2-0137-d509-005056a531ed','2019-10-18 08:50:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(990,'2019-10-18 11:00:58','2019-10-18 11:00:58','poste','eJydU0Fu2zAQ/IrAi0+SKAlqbMJyYNgIYCAt2jjtoZeCFtcJC4lUuUvb+X0p2XEFtA2KnkiQM8vZ2eH89tQ20QEcamuqSZbwSQSmtkqbp2ry+fEunk5uF3OUbZN3Yunp2TzADw9I0RIRHAXayhr0LbgtuIOuYWMUnCrGWbQkcnrnCc6IUPI3yDpU0kb2ZSr2TNShSNPOIoFWybAmmtLvVsV7TBEtngs4UNpBTSy6s66GQVfFyHlg0WZdsW+72c20mJU8VsWuiHlW3MSq5DLmvOTlO1kWGagARfRBDJI0VLGcZ7M443E2feQzwbkop19Z9OXiDcuToDe4ZVD0dlTMOyOsRI3CyBZQUC22y/f3IgCFfDVnTMm7t0mds2Rr27Cz4WKQ5/oWW0lvU/sTHUwaoAIMaXph0Ydw+snLRu81uLG/jmQDSW1bbyAJW0RplNMymM0W/wSbpyOJ14D0D27WH22j65f/0E1OGtRBPUuvJS9xAzUMOSSJ4ETRyraddBr7wYRg6da3r66NcasmDOIB9teejsdjgl3I1pM99Mnahv19fmnmj8zz3d+E/Loe/43FT6eSLYw=',NULL,'_b9783950-d3b3-0137-d50a-005056a531ed','2019-10-18 09:00:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(991,'2019-10-18 11:41:13','2019-10-18 11:41:13','sielte','eJydU11v2jAU/SuRX3hK4iRLVyxChUCVkLqv0vVhL5OJL8WSY3v2NdB/PydQirS1mvZm2eecnHvuyeTm0KlkB85Lo5tRkdFRAro1QuqnZvT94Ta9Ht1MJ553qrRsFnCr7+FXAI/JzHtwGGlzo33owK3A7WQLSy3g0BBKkhmik+uAcEREyT8gi6gkNe9lGrJFtJ7luRSgUeJz5iUohFaZIDKJuZedVdB7yQdDEWjz1erLSTWzW0uSW+NaGIw2BF0AkiwXDflZj8uqqq5oKqr1OKVF9TEVNV2nlNa0vuJ1VYCIUO9DdOeRa2xISYtxWtC0uH6gY/ahYEX1gySPp7BImcUBYnzas95OQ4LTzHAvPdO8A8+wZavZpzsWgYy/pHVJKe37JOsMmtYoctwAG+y5fsSO4/vU/kaKdDNA2TFPknyOt98CV3Ijwb0Gbo1DriBrTRc0ZPHoPdfCSR5jJ9N/gk3yC4vnxvQfXC6+GiXb5//wjY7rWAKNJD9LnvoHYlhyrBbCAZO56Sx30veLiU2TXeheUrvEzVVcxD1szjPt9/vMWymyJ7PrO7aK57vyNMxfmce3t4y8Pl/+LNPfaCwzSQ==',NULL,'_59233360-d3b9-0137-d50b-005056a531ed','2019-10-18 09:41:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(992,'2019-10-18 15:16:22','2019-10-18 15:17:15','eidas','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','_675508f0-d3d7-0137-d50e-005056a531ed','2019-10-18 13:16:22','_545f1e0a-ec2a-4247-b19f-05b65d2008d7','2019-10-18 13:17:15','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','_JpqlwN82XlZjDJDfOLbJXpcoO1gGq3JTIrp4L79jMmYhPAJahdsrshcsyXDRyBB','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','https://sp-proxy.pre.eid.gov.it/spproxy/idpit',1076),(993,'2019-10-18 15:18:19','2019-10-18 15:19:04','eidas','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','_acdaa970-d3d7-0137-d50f-005056a531ed','2019-10-18 13:18:19','_cf373cd7-ed81-44fe-a601-9229fe6e0383','2019-10-18 13:19:03','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','_fOR1O8kFJM6uUP_J96sCv7betGUYFuocJah5EDWmBdOZQfucW9OKYG0njhI4omr','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','https://sp-proxy.pre.eid.gov.it/spproxy/idpit',1076),(994,'2019-10-18 15:30:20','2019-10-18 15:31:11','eidas','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','_5b0d2400-d3d9-0137-d510-005056a531ed','2019-10-18 13:30:20','_d021e2e5-5713-47c9-9652-c063825e0c2a','2019-10-18 13:31:10','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','_coStU3.i5e0lgDVVlpq3Zs-1nLe-KYERuU8lBN-IOsGE64GyJPTZj1KgCnz.kqj','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','https://sp-proxy.pre.eid.gov.it/spproxy/idpit',1076),(995,'2019-10-18 17:37:23','2019-10-18 17:37:23','poste','eJydU11P2zAU/SuRX/qUDycKMKspqlohVWLTRmEPe0EmvgVPiR18r9vy7+ekpYu0gRBPtuxzrs8993h6uW+baAsOtTXVhCfZJAJTW6XNYzW5u72KLyaXsynKtsk7Mff0ZG7g2QNSNEcER4G2sAZ9C24NbqtrWBkF+4plLJoTOf3gCQ6IUPIfyDJU0kb2ZSr2RNShSNPOIoFWybAmmtLfVsUbTBEtHgo4UNpBTSy6sq6GQVfFyHlg0WpZsXsuZalKmcWqgIc448V5rEqex1lWZuWZLAsOKkARfRCDJA1VLM/4l5hnMb+45aUozkVe/GLRz6M3LE+C3uCWQdHbUTHvjLASNQojW0BBtVjPv16LABTy1ZwxJe/eJ3XOkq1tww6Gi0Ge61tsJb1P7U90MGmACjCk6YVF38LpDy8bvdHgxv46kg0ktW29gSRsEaVRTstgNpt9CDZNRxJPAekfXC2/20bXL5/QTU4a1EE9S08lj3EDNQw5JIlgT9HCtp10GvvBhGDp1revro1xiyYM4gY2p552u12CXcjWo932yVqH/XV+bOa/zMPdW0L+Xo//xuwP1+8uBg==',NULL,'_1aa5d5a0-d3eb-0137-d512-005056a531ed','2019-10-18 15:37:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(996,'2019-10-19 18:12:41','2019-10-19 18:12:41','poste','eJydU8tu2zAQ/BWBF5/0oBSnNWE5MGwEMJAWbZz20EtAi+uEgUSq3KXt/H0p2XEENA2CnkiQM8vZ2eH06tDU0Q4camvKEU+yUQSmskqbh3L04+46/jy6mk1RNnXeirmnR3MLvz0gRXNEcBRoC2vQN+DW4Ha6gpVRcChZxqI5kdMbT3BEhJJ/QZahkjayK1OyR6IWRZq2Fgm0Svo10ZQ+WRVvMUW0eCzgQGkHFbHo2roKel0lI+eBRatlye6LotjwbZ7F6mIziTNefIrVmFdxlo2z8aUcFxxUgCL6IAZJGipZnvFJzLOYT+74peC5uOC/WPTz5A3Lk6A3uGVQdHaUzDsjrESNwsgGUFAl1vMvNyIAhXwxZ0jJ2/dJrbNkK1uzo+Gil+e6FhtJ71O7Ex1M6qECDGl6ZtHXcPrdy1pvNbihv45kDUllG28gCVtEaZTTMpjNZh+CTdOBxHNAugdXy2+21tXzf+gmJw3qoJ6l55KnuIHqhxySRHCgaGGbVjqN3WBCsHTjmxfXhrhFHQZxC9tzT/v9PsE2ZOvB7rpkrcP+Jj818ybzePcvIa/Xw78x+wPv1i2p',NULL,'_333b1f20-d4b9-0137-d51c-005056a531ed','2019-10-19 16:12:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(997,'2019-10-19 18:24:47','2019-10-19 18:24:47','poste','eJydU9FO2zAU/ZXIL31K4oQGitUUVa2QKjHEKOxhL5OJb8FTYme+1235+zlpKZHY0LQnW/Y51+eeezy92jd1tAWH2ppylCV8FIGprNLmuRw9PlzHk9HVbIqyqfNWzD29mHv45QEpmiOCo0BbWIO+AbcGt9UVrIyCfck4i+ZETj95ggMilPwAWYZK2siuTMleiFoUadpaJNAq6ddEU/rTqniDKaLFQwEHSjuoiEXX1lXQ6yoZOQ8sWi1L9gPGhZKTCY/V+EnGPDu7iFWRqZjzghfnsjjLQAUoog9ikKShkuU8u4wzHmeXD9m5yMdifPGdRd+O3rA8CXqDWwZFZ0fJvDPCStQojGwABVViPf9yIwJQyDdzhpS8/ZzUOku2sjU7GC56ea5rsZH0ObU70cGkHirAkKZXFt2G069e1nqjwQ39dSRrSCrbeANJ2CJKo5yWwWw2+yfYNB1IPAWke3C1vLO1rl7/Qzc5aVAH9Sw9lTzGDVQ/5JAkgj1FC9u00mnsBhOCpRvfvLk2xC3qMIh72Jx62u12CbYhW8922yVrHfY3+bGZPzIPd38T8n49/Buz3wWYLho=',NULL,'_e45da880-d4ba-0137-d51d-005056a531ed','2019-10-19 16:24:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(998,'2019-10-19 20:36:09','2019-10-19 20:36:09','lepida','eJydU01v4jAQ/SuRL5ySOKGwYBEqBKqE1P0o6e6hl5U3nrQjJXZqj4H++3WAUqTdrVa9+eO98Zs3z7PrfdtEW7AOjS4GWcIHEejKKNSPxeD7/U08GVzPZ062Td6JhacnvYFnD46ihXNgKdCWRjvfgi3BbrGCtVawLxhn0YLI4i9PcESEkn9AVqESatmXKdgTUedEmqJKGuhQyQQpbLq0s6bGBtJy8fk2Tzeg0EJFaVl+ZdGNsRUchBWMrAcWrVcF+zmEMZeTmsfqqlIxz4afYjXKIOZ8xEdjORpmoALUOR/UOJKaCpbzbBpnPM6m99lEDMeCTx9Y9ONkDsuTIDjYpZ3o/SiYt1oY6dAJLVtwgirRKxQBKOSrO5eUvHufFPokU5mGHR0XB3m2b7GV9D61P0EV1weoAE1ILyz6Ek7vvGywRrBvBnfGkmwgqUzrNSRh6ZzUymLvOJv/F2yWXkg8J6R/cL36ZhqsXj6gm6zUDoN6lp5LnvIG6jDkECWCPUVL03bSousHE5KFrW9fXbvELZswiA3U5552u13iQraSR7Pt41WG9W1+auavzOPdv4S8XV9+jvlvSLMsmw==',NULL,'_3e60a8f0-d4cd-0137-d51e-005056a531ed','2019-10-19 18:36:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(999,'2019-10-20 09:20:15','2019-10-20 09:20:15','poste','eJydU0Fu2zAQ/ArBi0+SKBlKGsJyYNgIYCAt2jjpoZeAFdcJC4lUuUvb+X0p2XEFtAmKXiiCnB3Nzg5n14e2YTvwaJytJnkqJgxs7bSxT9Xk4f4m+TC5ns9QtU3RyUWgZ3sHPwMgsQUieIplS2cxtOA34HemhrXVcKi44GxB5M33QHBERMo/IKvIZKzqaSr+TNShzLLOIYHR6fBNDWU/nE62mCE6PBJ40MZDTZzdOF/DoKvi5ANwtl5V/HFbT/XFFYhEl9PLRORx0WVRJEKUorxQ5TQHHaGIIYpBUpYqXoj8KslFUoh7cSkLIfPyG2dfT97wIo16o1sWZW9HxYO30ik0KK1qASXVcrP4eCsjUKpXc8YlRfd+Uecdudo1/Gi4HOT5vsVW0ful/YmJJg1QCZYMvXD2KZ5+CaoxWwN+7K8n1UBauzZYSOMWUVntjYpm8/k/wWbZSOI5IP0P16vPrjH1y3/oJq8smqieZ2fKU9xAD0OOSSI4EFu6tlPeYD+YGCzThvbVtTFu2cRB3MH23NN+v0+xi9l6crs+WZu4vy1Ozfy18nj3lpDf1+O3Mf8FC1ktsQ==',NULL,'_fc3d69e0-d537-0137-d522-005056a531ed','2019-10-20 07:20:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1000,'2019-10-20 13:47:48','2019-10-20 13:47:48','poste','eJydU0Fu2zAQ/IrAi0+SKCVqEsJyYNgIYCAt2jjtoZeCJtcJC4lUuUvb+X0p2XEFtA2KnrQgZ5azs6Pp7aFtkh14NM7WkyLjkwSsctrYp3ry+fEuvZ7czqYo26bsxDzQs32AHwGQkjkieIq0hbMYWvBr8DujYGU1HGrGWTIn8mYTCI6I2PI3yDJ2Mlb2bWr2TNShyPPOIYHR2fDNDOXfnU63mCM6PDbwoI0HRSy5c17BoKtm5AOwZLWs2bdKbTcb2PBUV5VOeXFxFauySjmvePVOVhcF6AhFDFEMkrRUs5IXN2nB05I/FoW4vBKX119Z8uXkDSuzqDe6ZVH0dtQseCucRIPCyhZQkBLr+ft7EYFCvpozppTd26TOO3LKNexouBjk+X7EVtLb1P7ERJMGqABLhl5Y8iGefgqyMVsDfuyvJ9lAplwbLGSxRJRWeyOj2Wz2T7BpPpJ4Dkj/4Gr50TVGvfyHbvLSoonqWX5ueYob6GHJMUkEB0oWru2kN9gvJgbLtKF9dW2MWzRxEQ+wPc+03+8z7GK2ntyuT9Y61vflaZg/Mo93fxPy63r8b8x+Am5QLkI=',NULL,'_5cfbbeb0-d55d-0137-d525-005056a531ed','2019-10-20 11:47:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1001,'2019-10-20 13:50:52','2019-10-20 13:50:52','poste','eJydU8Fu2zAM/RVDl5xsyy7cdkKcIkhQIEA3bE27wy6DZjGtBlvyRCpJ/350kmYGthXDTiak96jHx+fpzb5rky0EtN7VkyKTkwRc4411T/Xk8eE2vZ7czKaou7bs1TzSs7uHHxGQkjkiBGLawjuMHYQ1hK1tYOUM7GshRTInCvZbJDgiuOVvkCV3sk4PbWrxTNSjyvPeI4E12eGbWcq/e5NuMEf0eGwQwNgADYnk1ocGDrpqQSGCSFbLWnxt9DXoq1KmpqpMKouLK67Ky1TKSlaXuroowDAUMbIYJO2oFqUs3qWFTEv5UBSqkqoqv4jk88kbUWasl91yqAY7ahGDU16jReV0B6ioUev5+zvFQKVfzRlTyv5tUh88+ca34mi4OsgLw4idprepw4llkw5QBY4svYjkA59+irq1Gwth7G8g3ULW+C46yLhE1M4Eq9lsMfsn2DQfSTwHZHhwtfzoW9u8/IduCtqhZfUiP7c8xQ3MYcmcJII9JQvf9TpYHBbDwbJd7F5dG+MWLS/iHjbnmXa7XYY9Z+vJb4dkrbm+K0/D/JF5vPubkF/X439j9hNv5C3a',NULL,'_ca8ea720-d55d-0137-d526-005056a531ed','2019-10-20 11:50:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1002,'2019-10-20 13:51:52','2019-10-20 13:51:52','poste','eJydU9Fq20AQ/BVxL36SdFKquDksB2MTMKSljdM89KVcpXVyRbpTb/ds5++7kh1X0CaUgkDL3exodnY0uz60TbQDj8bZcpIlchKBrVxt7GM5+XJ/E7+fXM9nqNsm79Qi0JO9g58BkKIFInjitqWzGFrwG/A7U8Ha1nAohRTRgsib74HgiGDKPyArZjJW9zSleCLqUKVp55DA1MnwTgylP1wdbzFFdHgk8FAbDxWJ6Mb5CgZdpSAfQETrVSm+AbybXla5jOuiqGOZXUy5yqexlIUsLnVxkUHNUMTAYpC0pVLkMruKMxnn8j7LVMFP/lVEDydvRJ6wXnbLourtKEXwVjmNBpXVLaCiSm0WH24VA5V+MWfckndvN3XekatcI46Gq0Ge70dsNb3d2p8YNmmAKrBk6FlEH/n0c9CN2RrwY3896QaSyrXBQsIlora1N5rNFvN/gs3SkcRzQPoPrlefXGOq5//QTV5bNKxepGfKU9ygHpbMSSI4ULR0bae9wX4xHCzThvbFtTFu2fAi7mB7nmm/3yfYcbYe3a5P1obr2/w0zF87j3evCfl9Pf435r8ACZItsQ==',NULL,'_ee476c20-d55d-0137-d527-005056a531ed','2019-10-20 11:51:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1003,'2019-10-20 13:53:43','2019-10-20 13:53:43','poste','eJydU8tu2zAQ/BWBF58kUVKUB2E5MGwEMJAWbZz20EvBiOuEgUSq3KXt/H0p2XEENA2KnrQgZ5azs6Pp9b5toi041NZUkyzhkwhMbZU2j9Xk2/1NfDm5nk1Rtk3eibmnJ3MHvzwgRXNEcBRoC2vQt+DW4La6hpVRsK8YZ9GcyOkHT3BAhJZ/QJahkzayb1OxJ6IORZp2Fgm0SoZvoil9tireYIpo8dDAgdIOamLRjXU1DLoqRs4Di1bLiv0suFRX5xc8VmUJMc+Ki1DllzHnJS/PZVlkoAIU0QcxSNJQxXKeXcUZj3N+n2WiLMRZ8YNF34/esDwJeoNbBkVvR8W8M8JK1CiMbAEF1WI9/3QrAlDIV3PGlLz7mNQ5S7a2DTsYLgZ5rh+xlfQxtT/RwaQBKsCQphcWfQ6nX71s9EaDG/vrSDaQ1Lb1BpJQIkqjnJbBbDb7J9g0HUk8BaR/cLX8Yhtdv/yHbnLSoA7qWXpqeYwbqGHJIUkEe4oWtu2k09gvJgRLt759dW2MWzRhEXewOc202+0S7EK2Hu22T9Y61Lf5cZh3mYe7vwl5ux7/G7PflhMtgw==',NULL,'_30ad9670-d55e-0137-d528-005056a531ed','2019-10-20 11:53:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1004,'2019-10-20 13:57:07','2019-10-20 13:57:07','poste','eJydU8Fu2zAM/RVDl5xsyy68LEKcIkhQIEA3bE3XQy+DZjOtBlvyRCpJ/360k2YGthXDTiak96jHx+f59bFtoj14NM6WkyyRkwhs5Wpjn8rJl/ub+P3kejFH3TZ5p5aBnu0d/AiAFC0RwRPTVs5iaMFvwe9NBRtbw7EUUkRLIm++BYITglv+BllzJ2N136YUz0QdqjTtHBKYOhm+iaH0u6vjHaaIDk8NPNTGQ0UiunG+gkFXKcgHENFmXYqvWmczCTMZ10UBscyuplzls1jKQhbvdHGVQc1QxMBikLSlUuQym8WZjHN5n2WqmCo5fRTRw9kbkSesl92yqHo7ShG8VU6jQWV1C6ioUtvlh1vFQKVfzRlT8u5tUucduco14mS4GuT5fsRW09vU/sSwSQNUgSVDLyL6yKefg27MzoAf++tJN5BUrg0WEi4Rta290Wy2WPwTbJ6OJF4C0j+4WX9yjale/kM3eW3RsHqRXlqe4wb1sGROEsGRopVrO+0N9ovhYJk2tK+ujXGrhhdxB7vLTIfDIcGOs/Xk9n2ytlzf5udh/sg83f1NyK/r8b+x+AkPKC20',NULL,'_aa190e90-d55e-0137-d529-005056a531ed','2019-10-20 11:57:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1005,'2019-10-20 14:01:31','2019-10-20 14:01:31','poste','eJydU0Fu2zAQ/ArBi0+SKLlqEsJyYNgIYCAt2jjtIZeCFdcJC4lUuUvb+X0p2XEFtA2CnrQgZ5azs6PZ9aFt2A48GmerSZ6KCQNbO23sYzX5cn+TXE6u5zNUbVN0chHoyd7BzwBIbIEIniJt6SyGFvwG/M7UsLYaDhUXnC2IvPkeCI6I2PIPyCp2Mlb1bSr+RNShzLLOIYHR6fBNDWU/nE62mCE6PDbwoI2Hmji7cb6GQVfFyQfgbL2q+Ld3F1f6shQi0WW5TUQ+vYhVoRIhSlG+V+U0Bx2hiCGKQVKWKl6I/CrJRVKI+7yQIpfT/IGzrydveJFGvdEti7K3o+LBW+kUGpRWtYCSarlZfLiVESjVizljStG9Tuq8I1e7hh8Nl4M834/YKnqd2p+YaNIAlWDJ0DNnH+Pp56AaszXgx/56Ug2ktWuDhTSWiMpqb1Q0m8/fBJtlI4nngPQPrlefXGPq5//QTV5ZNFE9z84tT3EDPSw5JongQGzp2k55g/1iYrBMG9oX18a4ZRMXcQfb80z7/T7FLmbr0e36ZG1ifVuchvkr83j3LyG/r8f/xvwXgWYtew==',NULL,'_479d8500-d55f-0137-d52a-005056a531ed','2019-10-20 12:01:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1006,'2019-10-20 14:16:39','2019-10-20 14:16:39','poste','eJydU8Fu2zAM/RVDl5xsy86SLUKcIkhQIEA3bE23Qy+DajOtBlvyRCpJ/360k2YGthXFTiak96jHx+f51bGpoz14NM4WoyyRowhs6SpjH4vR17vr+MPoajFH3dR5q5aBnuwt/AyAFC0RwRPTVs5iaMBvwe9NCRtbwbEQUkRLIm8eAsEJwS3/gKy5k7G6a1OIJ6IWVZq2DglMlfTfxFD6w1XxDlNEh6cGHirjoSQRXTtfQq+rEOQDiGizLsT36btZNt7lMq4m0yyW2fg9V/lDLOVETqZ6Ms6gYihiYDFI2lIhcpnN4kzGubzLcpVN1Xh2L6JvZ29EnrBedsui6uwoRPBWOY0GldUNoKJSbZcfbxQDlX4xZ0jJ29dJrXfkSleLk+Gql+e7ERtNr1O7E8Mm9VAFlgw9i+gTn34JujY7A37oryddQ1K6JlhIuETUtvJGs9li8SbYPB1IvASke3Cz/uxqUz7/h27y2qJh9SK9tDzHDap+yZwkgiNFK9e02hvsFsPBMk1oXlwb4lY1L+IWdpeZDodDgi1n69Htu2Rtub7Jz8P8lXm6+5eQ39fDf2PxCxRaLVA=',NULL,'_64913f20-d561-0137-d52b-005056a531ed','2019-10-20 12:16:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1007,'2019-10-20 14:17:42','2019-10-20 14:17:42','poste','eJydU0Fu2zAQ/IrAi0+SKKVKHMJyYNgIYCAt2jjtoZeCJdcJC4lUuUvb+X0p2XEEtA2KnrQgZ5azs6PZzaFtkh14NM7WkyLjkwSsctrYx3ry+eE2nU5u5jOUbVN2YhHoyd7DzwBIyQIRPEXa0lkMLfgN+J1RsLYaDjXjLFkQefM9EBwRseVvkFXsZKzs29TsiahDkeedQwKjs+GbGcp/OJ1uMUd0eGzgQRsPilhy67yCQVfNyAdgyXpVs2/Taz1V04qnurosUl5cXMWqVCnnFa8uZXVRgI5QxBDFIElLNSt5cZ0WPC35Q1GK4kq8K7+y5MvJG1ZmUW90y6Lo7ahZ8FY4iQaFlS2gICU2i/d3IgKFfDFnTCm7t0mdd+SUa9jRcDHI8/2IraS3qf2JiSYNUAGWDD2z5EM8/RRkY7YG/NhfT7KBTLk2WMhiiSit9kZGs9n8n2CzfCTxHJD+wfXqo2uMev4P3eSlRRPVs/zc8hQ30MOSY5IIDpQsXdtJb7BfTAyWaUP74toYt2ziIu5he55pv99n2MVsPbpdn6xNrO/K0zB/ZB7v/ibk9Xr8b8x/AaYQLYo=',NULL,'_89d8c850-d561-0137-d52c-005056a531ed','2019-10-20 12:17:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1008,'2019-10-20 14:30:10','2019-10-20 14:30:10','poste','eJydU0Fu2zAQ/IrAi0+SSKlOE8JyYNgIYCAt2jjtIZeCFdcJC4lUuUvb+X0p2XEFtA2CnrQgZ5azs6PZ9aFtkh14NM5WE5HxSQK2dtrYx2ry5f4mvZxcz2eo2qbo5CLQk72DnwGQkgUieIq0pbMYWvAb8DtTw9pqOFSMs2RB5M33QHBExJZ/QFaxk7Gqb1OxJ6IOZZ53DgmMzoZvZij/4XS6xRzR4bGBB2081MSSG+drGHRVjHwAlqxXFfv27rIUWlzxVE8vypSL8n2sCp1yPuXTCzUtBegIRQxRDJKyVLGCi6tU8LTg96KQJZeCP7Dk68kbVmRRb3TLouztqFjwVjqFBqVVLaCkWm4WH25lBEr1Ys6YUnSvkzrvyNWuYUfD5SDP9yO2il6n9icmmjRAJVgy9MySj/H0c1CN2RrwY389qQay2rXBQhZLRGW1NyqazeZvgs3ykcRzQPoH16tPrjH183/oJq8smqie5eeWp7iBHpYck0RwoGTp2k55g/1iYrBMG9oX18a4ZRMXcQfb80z7/T7DLmbr0e36ZG1ifVuchvkr83j3LyG/r8f/xvwX+kQtRA==',NULL,'_4831d190-d563-0137-d52d-005056a531ed','2019-10-20 12:30:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1009,'2019-10-20 15:03:42','2019-10-20 15:03:42','poste','eJydU8Fu2zAM/RVDl5xsy/ZSr0KcIkhQIEA3bE23wy6DZjOtBlvyRCpJ/350kmYGthXDTiak96jHx+fZzaFrox14NM5WkyyRkwhs7RpjH6vJp4fb+O3kZj5D3bV5rxaBnuw9/AiAFC0QwRPTls5i6MBvwO9MDWvbwKESUkQLIm++BYITglv+BllxJ2P10KYST0Q9qjTtHRKYJjl+E0Ppd9fEW0wRHZ4aeGiMh5pEdOt8DUddlSAfQETrVSW+bsuyzMtCxs30qoxlVpRc5RBLOZXTKz0tMmgYihhYDJK2VIlcZtdxJuNcPmSFkoV6k38R0eezNyJPWC+7ZVENdlQieKucRoPK6g5QUa02i3d3ioFKv5gzpuT966TeO3K1a8XJcHWU54cRO02vU4cTwyYdoQosGXoW0Xs+/Rh0a7YG/NhfT7qFpHZdsJBwiaht441ms8X8n2CzdCTxEpDhwfXqg2tN/fwfuslri4bVi/TS8hw3aI5L5iQRHChauq7X3uCwGA6W6UL34toYt2x5Efewvcy03+8T7Dlbj243JGvD9V1+HuaPzNPd34T8uh7/G/OfKxAtWA==',NULL,'_f7772730-d567-0137-d52e-005056a531ed','2019-10-20 13:03:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1010,'2019-10-20 15:44:11','2019-10-20 15:44:11','spiditalia','eJydU8Fu2zAM/RVDl5xsy07TrUKcIkhQIEA3bE23wy6DZjEpAVvyRCpJ/36yk6YBthXDboT0HvX4+DS9PbRNsgNP6Gw1KjI5SsDWzqDdVqMvj3fp+9HtbEq6bcpOzQM/2Qf4GYA4mROB50hbOEuhBb8Gv8MaVtbAoRJSJHNmjz8CwxERW/4GWcZOaHXfphJPzB2pPKcOTeZhi8TgM+S8cVu0OZETyZ3zNQw6KsE+gEhWy0p8vwEzkeNSpmZybVJZjN/FqtykUk7k5FpPxgWYCCUK8XFibbkSpSxu0kKmpXwsxurqShXFN5F8PXkhyizqi+5YUv34lQjeKqcJSVndAimu1Xr+4V5FoNIvZlxSyu5tUucdu9o14miwGuT5fsRW89vU/gRNuhmgCiwjP4vkYzz9HHSDGwT/6mfnPOsGstq1wUIWSyJtjUcdzRWzf4JN8wuJ50D0D66Wn1yD9fN/6GavLWFUL/Jzy1O8wAxLjslhOHCycG2nPVK/mBgkbEP74tolbtHERTzA5jzTfr/Phjht3a5P0jrW9+VpmD8yj3d/E/J6ffkXZr8AAxcnMQ==',NULL,'_9ed50320-d56d-0137-d52f-005056a531ed','2019-10-20 13:44:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1011,'2019-10-20 15:57:52','2019-10-20 16:04:08','infocert','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','_885cbdd0-d56f-0137-d530-005056a531ed','2019-10-20 13:57:52','_fa9856f324e03dca7e82bc0fbcf56029','2019-10-20 14:04:06','https://identity.infocert.it','_5cd5c5155a25ed9faed8dd72fd636eeb','_bde4198d77fb866a45f7037727de499c','https://identity.infocert.it',145),(1012,'2019-10-20 16:20:56','2019-10-20 16:20:56','infocert','eJydU8Fu2zAM/RVDl5xsy+6SdEKcIkhQIEA7bE23wy6DZjOtAFtyRSpJ/35UkqYBthVFb5T0SD4+Pk2udl2bbMCjcbYaFJkcJGBr1xj7UA2+31+nl4Or6QR115a9mgV6tHfwFAApmSGCJ06bO4uhA78CvzE1LG0Du0pIkcyIvPkdCA4ILvkXZMGVjNWxTCUeiXpUeW4asGToOTN27WpukhnKsTdNHnkgOpFcO1/Dnk4lyAcQyXJRiV91cTG+HI1l2gzHZSr5xNFFkUo5lMOR5hAahiIG5oCkLVWilMXntJBpKe+LT6qUajj6KZIfR0lEmTFNFsmiit0rEbxVTqNBZXUHqKhWq9ntjWKg0i+anKeU/dtJvXfkateKg85qT8/HETtNb6fGG9Ok6z1UHVQTyRe+/RZ0a9YG/KusvfOkW8hq1wULGYeI2jbeaNZXTN8Fm+RnFE++iA2Xi6+uNfXzB3iT1xYNsxf5qeTRZdDsl8wGIthRMnddr73BuBj2k+lC96LaOW7e8iLuYH2aabvdZtFA2YPbRDOtOL4pj8P8M/Pw9j8ir8/nX2L6Bx8RKZo=',NULL,'_c1378670-d572-0137-d531-005056a531ed','2019-10-20 14:20:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1013,'2019-10-20 22:06:34','2019-10-20 22:06:34','arubaid','eJydU9Fq20AQ/BVxL36SdJJqpzksB2MTMLilTdIW+lIu0to5kO7U2z3b+fuuZMcxtA2lb8vezGp2djS9ObRNtAOPxtlylCVyFIGtXG3sthx9ebiN349uZlPUbZN3ah7oyd7BzwBI0RwRPDFt4SyGFvw9+J2pYGVrOJRCimhO5M1jIDgieORvkCVPMlb3Y0rxRNShStPGbY3FztSJ9uFRJ4bSE3Hdv3yDpnItiOjW+QoGTaUgH7izWpbih7yG/CqbyLge6yKWWXHFVcGVHMvxRI+LDGqGIgYWgqQtlSKX2XWcyTiXD7lUcqKKd99F9PXki8gT1spOWVS9FaUI3iqn0aCyugVUVKn7+Ye1YqDSL8ZcUvLubVLnHbnKNeJothrk+X7FVtPb1L5j6ngzQBVYMvQsoo/c/Rx0YzYG/Ku3nfOkG0jYwWAh4RJR29qb3mYx+yfYNL2QeA5H/8HV8pNrTPX8H7rJa4uG1Yv0PPIUNaiHI3OKCA4ULVzbaW+wPwyHyrShfXHtErdo+BB3sDnvtN/vkyFVW7cbMsX1Oj8t80fm8e1vQl6fL/+L2S9cYCuE',NULL,'_09e27160-d5a3-0137-d533-005056a531ed','2019-10-20 20:06:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1014,'2019-10-21 08:22:44','2019-10-21 08:22:44','poste','eJydU8GO0zAQ/ZXIl56SOOmmsFbTVdVqpUoLgu3CgQsy9nTXKLGDZ9x2/x4n7ZZIwApxysh+b/zmzcv85tg2yR48GmfrSZHxSQJWOW3sYz359HCbvp3cLOYo26bsxDLQk72HHwGQkiUieIq0lbMYWvBb8HujYGM1HGvGWbIk8uZbIDghYsvfIOvYyVjZt6nZE1GHIs87hwRGZ8M3M5R/dzrdYY7o8NTAgzYeFLHk1nkFg66akQ/Aks26Zl8LKIuZVjzV1e465cX0TaymVcp5xauZrKYF6AhFDFEMkrRUs5IX12nB07J44DNRluLq6gtLPp+9YWUW9Ua3LIrejpoFb4WTaFBY2QIKUmK7fHcnIlDIF3PGlLJ7ndR5R065hp0MF4M834/YSnqd2p+YaNIAFWDJ0DNL3sfTj0E2ZmfAj/31JBvIlGuDhSyWiNJqb2Q0my3+CTbPRxIvAekf3Kw/uMao5//QTV5aNFE9yy8tz3EDPSw5JongSMnKtZ30BvvFxGCZNrQvro1xqyYu4h52l5kOh0OGXczWo9v3ydrG+q48D/NH5unub0J+XY//jcVPBPwtsA==',NULL,'_1e216dc0-d5f9-0137-d535-005056a531ed','2019-10-21 06:22:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1015,'2019-10-21 12:47:45','2019-10-21 12:49:16','arubaid','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','_23874610-d61e-0137-d547-005056a531ed','2019-10-21 10:47:45','AIDPR_d93632ed-600c-42d2-98cc-8bf625902fc7','2019-10-21 10:49:15','https://loginspid.aruba.it','AIDPA_07da018d-3e66-4edf-a80b-4805afcf6df8','esykapQiZCGJU0DzYE7nM0m630CifsvVGmMih1U6og6iinpuDv0Q1xjsdCtm0ABosrXjBT60lRogAumiTV77lMTYpSdjT5Bb+u70nZ0wRJ0=','https://loginspid.aruba.it',518),(1016,'2019-10-21 13:40:17','2019-10-21 13:40:17','poste','eJydU8GO0zAQ/RXLl56SONlNC1bTVdVqpUoLgu3CgQsy8XTXKLGDZ9x2/x4n7ZZIwApxiuV5b/zmzcv85tg2bA8ejbPVJE/FhIGtnTb2sZp8erhN3kxuFnNUbVN0chnoyd7DjwBIbIkIniJt5SyGFvwW/N7UsLEajhUXnC2JvPkWCE6I2PI3yDp2Mlb1bSr+RNShzLLOIYHR6fBNDWXfnU52mCE6PDXwoI2Hmji7db6GQVfFyQfgbLOu+NeZmpZXeS0SPS3KRORXs0SX15AIUYpyqmINdIQihigGSVmqeCHyt0kukiJ/yHN5LWQ++8LZ57M3vEij3uiWRdnbUfHgrXQKDUqrWkBJtdwu393JCJTqxZwxpeheJ3Xekatdw0+Gy0Ge70dsFb1O7W9MNGmASrBk6Jmz9/H2Y1CN2RnwY389qQbS2rXBQhqPiMpqb1Q0my/+CTbPRhIvAekf3Kw/uMbUz/+hm7yyaKJ6nl1anuMGelhyTBLBkdjKtZ3yBvvFxGCZNrQvro1xqyYu4h52l5kOh0OKXczWo9v3ydrG811xHuaPzFPtb0J+lcf/xuInfksteg==',NULL,'_7a6531c0-d625-0137-d54e-005056a531ed','2019-10-21 11:40:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1017,'2019-10-21 13:48:31','2019-10-21 13:48:31','poste','eJydU9FO2zAU/ZXIL31K4qSkA6spqlohVWLTRoEHXiYT34KnxM58r9vy93PSUiKxIbQnW/Y51+eeezy93Dd1tAWH2ppylCV8FIGprNLmqRzd3V7F56PL2RRlU+etmHt6Njfw2wNSNEcER4G2sAZ9A24NbqsrWBkF+5JxFs2JnH70BAdEKPkOsgyVtJFdmZI9E7Uo0rS1SKBV0q+JpvSXVfEGU0SLhwIOlHZQEYuurKug11Uych5YtFqW7KfkkD9CwWM1yScxz8ZfYlWcbWLOC15MZDHOQAUoog9ikKShkuU8u4gzHufZbZaJs3Mxzh5YdH/0huVJ0BvcMig6O0rmnRFWokZhZAMoqBLr+ddrEYBCvpozpOTtx6TWWbKVrdnBcNHLc12LjaSPqd2JDib1UAGGNL2w6Fs4/eFlrTca3NBfR7KGpLKNN5CELaI0ymkZzGazT8Gm6UDiKSDdg6vld1vr6uU/dJOTBnVQz9JTyWPcQPVDDkki2FO0sE0rncZuMCFYuvHNq2tD3KIOg7iBzamn3W6XYBuy9WS3XbLWYX+dH5v5K/Nw9y8hb9fDvzH7A2wKLdo=',NULL,'_a0e2be50-d626-0137-d54f-005056a531ed','2019-10-21 11:48:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1018,'2019-10-21 14:21:44','2019-10-21 14:21:44','poste','eJydU0Fu2zAQ/IrAi0+SKMVOE8JyYNgIYCAt2jjNoZeCJtcJC4lUuUvb+X0p2XEFpA2KnkiQM8vZ2eH05tDUyQ48GmerUZHxUQJWOW3sUzX6+nCbXo1uZlOUTV22Yh7o2d7DzwBIyRwRPEXawlkMDfg1+J1RsLIaDhXjLJkTebMJBEdELPkGsoyVjJVdmYo9E7Uo8rx1SGB01q+ZofyH0+kWc0SHxwIetPGgiCW3zivodVWMfACWrJYV+z4eb9SV0jzVl+Um5cXFh1RPJjzlfMInl3JyUYCOUMQQxSBJSxUreXGdFjwti4eiFGUhxuNvLHk8ecPKLOqNblkUnR0VC94KJ9GgsLIBFKTEev7xTkSgkK/mDCll+z6p9Y6ccjU7Gi56eb5rsZH0PrU7MdGkHirAkqEXlnyKp1+CrM3WgB/660nWkCnXBAtZ3CJKq72R0Ww2+yfYNB9IPAeke3C1/Oxqo17+Qzd5adFE9Sw/lzzFDXQ/5JgkggMlC9e00hvsBhODZZrQvLo2xC3qOIh72J572u/3GbYxW09u1yVrHfd35amZPzKPd38T8vt6+DdmvwBiFy3V',NULL,'_44bc8cd0-d62b-0137-d550-005056a531ed','2019-10-21 12:21:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1019,'2019-10-21 15:56:42','2019-10-21 15:57:40','eidas','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','_88e76740-d638-0137-d551-005056a531ed','2019-10-21 13:56:42','_539b69cd-e57d-4ce5-ad81-fa4538841e97','2019-10-21 13:57:40','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','_K85yiLFfFyt9SXhj1oyo9qRLGufPR6.6txfIIsJoQ9TU0n-S-YNqyDIUgaSmJWj','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','https://sp-proxy.pre.eid.gov.it/spproxy/idpit',1076),(1020,'2019-10-21 16:03:37','2019-10-21 16:04:25','eidas','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','_80751d70-d639-0137-d552-005056a531ed','2019-10-21 14:03:37','_40a16569-c190-4e2d-928e-b887b681a64c','2019-10-21 14:04:24','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','_uc.HtOV.keYrZwllvAakZxgI3BiNw07ln3W-2-nLJmJecfTWNsR-bDZQwKhhZ9R','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','https://sp-proxy.pre.eid.gov.it/spproxy/idpit',1091),(1021,'2019-10-21 16:25:57','2019-10-21 16:27:33','eidas','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','_9ed66e10-d63c-0137-d553-005056a531ed','2019-10-21 14:25:57','_1b1fa317-736d-44e2-be93-c1ae0e45e19c','2019-10-21 14:27:32','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','_lozKiZEUMIdIBBwrpY5xkG_DXhVpOPzIxKQQrGtqmsKBdzSjTYA-mrUm_NmRBhZ','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','https://sp-proxy.pre.eid.gov.it/spproxy/idpit',1092),(1022,'2019-10-21 17:00:09','2019-10-21 17:01:01','eidas','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','_6636b930-d641-0137-d559-005056a531ed','2019-10-21 15:00:09','_0fc048f3-7759-4c72-a90e-8e8b0b272676','2019-10-21 15:01:00','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','__-KLf5XnehaMFRe9sKDpc7.W0hMXVQRkXvh9kWBN.7nEqyYG94tiP8Qu6eJPbTC','https://sp-proxy.pre.eid.gov.it/spproxy/idpit','https://sp-proxy.pre.eid.gov.it/spproxy/idpit',1092),(1023,'2019-10-22 00:56:33','2019-10-22 00:56:33','namirialid','eJydU8tu2zAQ/BWBF5/0hpyYsBwYNgIYSF920kMuBSuukgUkUuWubOfvS9mOY6BNUPRGLGeWM7PL6c2+bYItOEJrylEaJaMATGU1mqdy9HB/G16PbmZTUm2TdXLe87NZw68eiIM5ETj2tIU11LfgNuC2WMHKaNiXIhHBnNnhz57hiPAt/4AsfSc0amhTimfmjmQco+4io1p0qBqmLqpsO9TiztkaG4g38093WbwGjQ4qjjebLyK4ta6Cg75SsOtBBKtlKX7Uub6aTKok1OPrPEzS/CrUxbgIk6RIirEq8hS0hxL1XhSxMlyKLEknYZqEWXqfZbIYyzx/FMH3U0Yii7xun5ohOcRSit4ZaRUhSS8aSHIlB4XSA6V6DemSknUfk7xPtpVtxDF4eZDnBout4o+pQwV1WB+gEgwjv4jgs69+61WDNYJ7y7mzjlUDQ769gcgfiZTRPvYIWcz+CTaNLySeF2V4cLX8ahusXv5DNztlCL16EZ9bntYO9GHIfqMY9hwsbNsphzQMxi8Ytn37mtolbtH4QayhPnva7XYRdaijJ7v1LuKNP99lJzN/ZR7v3hPydn35R2a/Ad4aLxw=',NULL,'_f3d799c0-d683-0137-d565-005056a531ed','2019-10-21 22:56:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1024,'2019-10-22 08:18:02','2019-10-22 08:18:02','eidas','eJydU8tu2zAQ/BWBF58kUUrlJITlwLARwEBatHHSQy8FK60TAhKpcpd+/H1XsmP7kAZFb8RyZjk7O5zc7dom2oBH42w5yhI5isBWrjb2pRw9P93HN6O76QR12+SdmgV6tY/wOwBSNEMET0ybO4uhBb8CvzEVLG0Nu1JkUopoRuTNr0BwwHDTd0AL7mas7luV4pWoQ5Wm2MWdd7t90nlIwNTJi9skhrg+lNNeEaIT0b3zFQzCSkE+gIiWi1L81DL7VNxmMq7HVRbL7Oo6rovxdSxlIYuxLq4yqBmKGFgLkrZUilxmtzFT8vxJjlV2o2T+Q0Tfj+aIPGGxbJdF1b9eiuCtchoNKqtbQEWVWs0+PygGKv3mziUl7z4m8WjkKteIg+NqkOf7EVtNH1P7iqnj9QBVYMnQXkRfuPot6MasDfizuZ3zpBtIKtcGCwkfEbWtvdFssZj+E2ySXkg8JaR/cLn46hpT7f9DN3lt0bB6kZ5aHvMG9bBkDhLBjqK5azvtDfaL4VyZNrRvrl3i5g0v4hHWp5m2222C3TlPKz4/5Mdh3mUe7v4m5Hx9+TmmfwBnJSyo',NULL,'_a0145910-d6c1-0137-d567-005056a531ed','2019-10-22 06:18:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1025,'2019-10-22 12:01:58','2019-10-22 12:01:58','arubaid','eJydU11r4zAQ/CtGL3myLbs4l4g4JSQUArnjrp/Ql0O1N6lAlnzaVZL++5OdNA30g+PexO7MenZ2PLncNzragkNlTTnIEj6IwFS2VmZTDu5ur+LR4HI6QdnovBUzT8/mGv54QIpmiOAo0ObWoG/A3YDbqgqWpoZ9yTiLZkROPXmCAyKMfAdZhEnKyG5MyZ6JWhRpqu1GGWxVnUjnn2SiKD0SV13nAXRlG2DRlXUV9JpKRs6HynJRst8wWo9zPuZxPQQe8+ziW1wXw3HMecGLoSwuMqgDFNEHIUjSUMlyno3jjMd5fptxwTNRjB5ZdH/0heVJ0BqcMig6K0rmnRFWokJhZAMoqBI3s+8rEYBCvhpzTsnbr0mts2Qrq9nBbNHLc92KjaSvqV1F1fG6hwowpOiFRT9C9ZeXWq0VuDdvW+tIakiCg95AEp6I0tROdTaz6T/BJumZxFM4ug8uFz+tVtXLf+gmJw2qoJ6lp5HHqEHdHzmkiGBP0dw2rXQKu8OEUKnGN6+unePmOhziGtannXa7XdKnamO3fabCe5Ufl/mQeeh9JuStff5fTP8CCbcryg==',NULL,'_e8f92090-d6e0-0137-d569-005056a531ed','2019-10-22 10:01:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1026,'2019-10-22 12:02:03','2019-10-22 12:02:03','eidas','eJydU8tu2zAQ/BWBF58kUTLstITlwLARwEBatHHSQy8FI60SAhKpcpd+/H1XsmP7kAZFTyKWM8vZ2dHsdt820RY8GmeLUZbIUQS2dJWxL8Xo6fEu/jS6nc9Qt03eqUWgV/sAvwMgRQtE8MS0pbMYWvAb8FtTwtpWsC9EJqWIFkTePAeCI4abvgNacTdjdd+qEK9EHao0xS7uvNsfks5DAqZKXtw2McT1oZz2ihCdiO6cL2EQVgjyAUS0XhXiFzzf1PU0l3E1BRnLbHwTV5OpjqWcSP5OxhlUDEUMrAVJWypELrPPcSbjPH/MpJK5kuOfIvpxMkfkCYtluyyq/vVCBG+V02hQWd0CKirVZvHlXjFQ6Td3ril59zGJRyNXukYcHVeDPN+P2Gr6mNpXTBXXA1SBJUMHEX3l6vegG1Mb8BdzO+dJN5CUrg0WEj4ialt5o9liMf8n2Cy9knhOSP/gevXNNaY8/Idu8tqiYfUiPbc85Q2qYckcJII9RUvXdtob7BfDuTJtaN9cu8YtG17EA9TnmXa7XYLdJU8bPt/np2HeZR7v/ibkcn39c8z/ADygLWU=',NULL,'_eb7ff620-d6e0-0137-d56a-005056a531ed','2019-10-22 10:02:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1027,'2019-10-22 12:02:08','2019-10-22 12:02:08','infocert','eJydU8Fu2zAM/RVDl5xsyw6cdkKcIkhQIEA3bE23wy6DajEtAVvyRCpJ/35ykqYBthXDboL0Hvn4+DS92XdtsgVP6Gw9KjI5SsA2zqB9qkdfH27T69HNbEq6a8tezQM/23v4GYA4mROB50hbOEuhA78Gv8UGVtbAvhZSJHNmj4+B4YiIJX+DLGMltHooU4tn5p5UnqMBy8gvGdqNa2KTDDmnHk0+6CByIrl1voGDnFqwDyCS1bIWPwCuxpUsZWomIFNZjK9SU00eUykrWU10NS7ARChRiBqIteValLL4kBYyLcuHQipZKnn9XSTfTpaIMosyo0mW1NC9FsFb5TQhKas7IMWNWs8/3qkIVPrVk0tK2b9P6r1j17hWHH1WB3l+GLHT/D51uEGTbg5QdXRNJJ/i7ZegW9wg+Ddbe+dZt5A1rgsWsngk0tZ41NFfMfsn2DS/kHjOxdBwtfzsWmxe/kM3e20Jo3qRn0ueUgbmsOQYIIY9JwvX9dojDYuJecIudK+uXeIWbVzEPWzOM+12u2wIUPbktkOY1vF8V56G+SPz+PY3IW/Pl19i9gtjpCoe',NULL,'_ee735020-d6e0-0137-d56b-005056a531ed','2019-10-22 10:02:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1028,'2019-10-22 12:02:11','2019-10-22 12:02:11','intesa','eJydUk1v2zAM/SuGLjnZlt0mWYU4RZCgQIBu2Jp0h14GzWJaAZbkiVSS/vvJzkcDbC2GXQSCeiQfH9/kdm+aZAsetbPVoMj4IAFbO6XtczV4XN+lnwa30wlK05StmAV6sQ/wKwBSMkMET7Fs7iwGA34FfqtrWFoF+4pxlsyIvP4ZCA6I2PIPyCJ20lZ2bSr2QtSiyHNstcq0JUCZacrX2sD1I54HYI6nQKs2vyTFkjvna+hTFSMfgCXLRcV+bPi1Go+Bp2oUH15cjVM1HNUp50M+HMnhVQEqQhFDJIckLVWs5MVNWvC0LNcFF7wURfHEku9HrViZRf5RPYuik6diwVvhJGoUVhpAQbVYzT7fiwgU8iTWZUnZflzUekeudg07HED09Hy3opH0cWmX0Srd9FABljS9suRLzH4LstEbDf5N79Z5kg1ktTPBQhZDRGmV1538bPpPsEl+QfFsmG7gcvHVNbp+/Q/e5KVFHdmz/NzyeGlQ/ZGjswj2lMydaaXX2B0mGk2bYE6qXeLmTTzEA2zOO+12u6y327Pbdl5bxfi+PC7z18rD33tE3r4vbTn9DdTCM5s=',NULL,'_f04d77e0-d6e0-0137-d56c-005056a531ed','2019-10-22 10:02:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1029,'2019-10-22 12:02:16','2019-10-22 12:02:16','lepida','eJydU8tu2zAQ/BWBF58kUTLstITlwLARwED6spIecilYcpUsIJEqubSdvy9lO46BtkHQGx8zy9nZ4ex637XJFpxHa6pRkfFRAkZZjeaxGt3f3aQfRtfzmZddW/ZiEejJbOBXAE/JwntwFGlLa3zowNXgtqhgbTTsK8ZZsiBy+DMQHBGx5B+QVayERg5lKvZE1HuR56izFnrUMkOKmz7vnW2whbxefLot8w1odKAor+svLLmxTsFBWMXIBWDJelWxH81YSjW+4qmeAk95Mb5K9WSqU84nfDKVk3EBOkK9D1GNJ2moYiUvPqYFT8vyruCCl6KYPrDk+8kcVmZRcLTLeDH4UbHgjLDSoxdGduAFKTEoFBEo5Is7l5Syf5sU+ySrbMuOjouDPDe02El6mzqcoE6bA1SAIaRnlnyOp9+CbLFBcK8G99aRbCFTtgsGsrj0XhrtcHCczd8Fm+UXEs8JGR5cr77aFtXzf+gmJ43HqJ7l55KnvIE+DDlGiWBPydJ2vXToh8HEZGEXuhfXLnHLNg5iA825p91ul/mYrezRbod41XF9W56a+SvzePcvIa/Xl59j/hsVACyD',NULL,'_f3aac370-d6e0-0137-d56d-005056a531ed','2019-10-22 10:02:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1030,'2019-10-22 12:02:20','2019-10-22 12:02:20','namirialid','eJydU8tu2zAQ/BWBF58kUUzlpoTlwLARwED6stIeeilYcZUsIJEqubSdvy9lO46BtkHRG7GcWc7MLmc3+75LtuA8WlNNioxPEjCN1WgeqsmX+9v0enIzn3nVd2KQi0CPZgM/A3hKFt6Do0hbWuNDD64Gt8UG1kbDvmKcJQsihz8CwRERW/4GWcVOaNTYpmKPRIOXeY56yIzq0aHqyA9ZY/uxlg/OtthBXi/e34l8AxodNJTX9UeW3FrXwEFfxcgFYMl6VbHvbaneTK8VT/UUeMqLq7epLqeQcl7ycqrKqwJ0hHofoihPylDFBC/epQVPhbgvuORCCv6NJV9PGTGRRd0xNePlGEvFgjPSKo9eRtHgJTVyVCgjUKrnkC4pYnidFH2SbWzHjsHLgzw3WuwVvU4dK6jT9gCVYAjpiSUfYvVzUB22CO4l58E6Uh2M+QYDWTx6r4yOsWdIbP5PsFl+IfG8KOOD69Un22Hz9B+6ySnjMapn+bnlae1AH4YcN4pgT8nS9oNy6MfBxAXDPvTPqV3ill0cxAbas6fdbpf5AXX2YLfRRV7H8504mfkj83j3NyEv15d/ZP4LfpYvXQ==',NULL,'_f5a468a0-d6e0-0137-d56e-005056a531ed','2019-10-22 10:02:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1031,'2019-10-22 12:02:23','2019-10-22 12:02:23','poste','eJydU0Fu2zAQ/IrAi0+SKBp2UsJyYNgIYCAt2jjtoZeCEVcJC4lUuUvb+X0p2XEFtA2KnkiQM8vZ2eHi5tg2yR48GmfLSZHxSQK2ctrYp3Ly+eE2vZ7cLBeo2kZ0chXo2d7DjwBIyQoRPEXa2lkMLfgd+L2pYGs1HEvGWbIi8uYxEJwQseRvkE2sZKzqy5TsmahDmeedQwKjs2HNDOXfnU5rzBEdngp40MZDRSy5db6CQVfJyAdgyXZTsm/1lZ5e60ee6jnwlBfTq1TP5nXK+YzP5mo2LUBHKGKIYpCUpZIJXrxLC54K8VBwyYUU068s+XL2hoks6o1uWZS9HSUL3kqn0KC0qgWUVMnd6v2djECpXs0ZU0T3NqnzjlzlGnYyXA7yfN9iq+htan9iokkDVIIlQy8s+RBPPwXVmNqAH/vrSTWQVa4NFrK4RVRWe6Oi2Wz5T7BFPpJ4CUj/4Hbz0TWmevkP3eSVRRPVs/xS8hw30MOQY5IIjpSsXdspb7AfTAyWaUP76toYt27iIO6hvvR0OBwy7GK2nty+T9Yu7u/EuZk/Mk93fxPy63r8N5Y/Ae2wLg4=',NULL,'_f7d38db0-d6e0-0137-d56f-005056a531ed','2019-10-22 10:02:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1032,'2019-10-22 12:02:27','2019-10-22 12:02:27','sielte','eJydU8tu2zAQ/BWBF58kUUodN4TlwLARwED6SJzm0EvBiquYAF8ll7bz96VkxzHQNgh6W5Azy9nZ4fR6r1W2BR+kNc2oKugoA9NaIc1TM/r2cJN/HF3PpoFrVTs2j7gx9/ArQsBsHgJ4TLSFNSFq8GvwW9nCygjYN4SSbI7o5c+IcECkln9AlqmTNLxv05ANogusLKUAgxKfiyBBIbTKRlFILIPUTkGvpRwEJaAr1+svx66F2ziS3VjfwiC0IegjkGy1bMiPjn+YXFUdzcUl0JxWF5NcjCepomM6vuTjiwpEgoYQk7qA3GBDalpd5RXN6/qhoozWrJ58J9nj0SxSF2mAZJ8JrJfTkOgNszzIwAzXEBi2bD3/dMsSkPEXt84ptXub5LxF21pFDhtggzzfj6g5vk3tT6TIuwHKDn6S7HM6vYtcyU6CfzXcWY9cQdFaHQ0UqQyBG+ElT7aT2btg0/JM4ikx/YOr5VerZPv8H7rRc5NCYJCUp5bH/IEYlpyihbDHbGG1416GfjEpaVJH/eLaOW6h0iLuoTvNtNvtiuCkKJ7sts/YOtW39XGYvzIPd/8S8np9/llmvwFN/DOj',NULL,'_fa4791f0-d6e0-0137-d570-005056a531ed','2019-10-22 10:02:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1033,'2019-10-22 12:02:31','2019-10-22 12:02:31','spiditalia','eJydU8FuGjEQ/ZWVL5x217uU0FgsEQJFQkqrNqQ95FK564GMtGtvPWMgf18vEILUJqp6s8bvjd+8eZ7c7Nsm2YIndLYaFJkcJGBrZ9BuqsG3h9v04+BmOiHdNmWnZoGf7D38CkCczIjAc6TNnaXQgl+B32INS2tgXwkpkhmzx5+B4YiILf+ALGIntLpvU4kn5o5UnlOHJvOwQWLwGXLeuA3anMiJ5Nb5Gg46KsE+gEiWi0r8WNdjuDYfZGquQKayGI5TMxoXqZQjObrSo2EBJkKJQnycWFuuRCmL67SQaVk+FFLJUg2LR5F8P3khyizqi+5YUv34lQjeKqcJSVndAimu1Wr26U5FoNIvZlxSyu59Uucdu9o14miwOsjz/Yit5vepfQVNuj5AFVhGfhbJ51j9GnSDawT/6mfnPOsGstq1wUIWj0TaGo86mium/wSb5BcSz4HoH1wuvrgG6+f/0M1eW8KoXuTnlqd4gTksOSaHYc/J3LWd9kj9YmKQsA3ti2uXuHkTF3EP6/NMu90uO8Rp47Z9klbxfFeehvkr83j3lpDX68u/MP0Ngd0nYg==',NULL,'_fc7e9d40-d6e0-0137-d571-005056a531ed','2019-10-22 10:02:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1034,'2019-10-22 12:02:35','2019-10-22 12:02:35','tim','eJydU0Fu2zAQ/IrAi0+SKBpOWsJyYNgIYCAt2jjpIZeCllYOAZFUuUvb+X0p2XEMtA2C3ojlzHJ2dji9OZg22YFH7Ww5KjI+SsBWrtZ2W44eH27TT6Ob2RSVaUUn54Ge7T38CoCUzBHBU6QtnMVgwK/B73QFK1vDoWScJXMirzeB4IiILf+ALGMnbVXfpmTPRB3KPG/dVttM1xlpk2nKVdPsYYNHLuZd2LS6ygdNiI4lt85XMGgrGfkALFktS/azgaYGEDytr4CnvBhfp/XkWqScT/jkSk3GBdQRihiiICRlqWSCF5/TgqdCPBRcciHHkyeW/Dj5w0QWNUfHLMr++ZIFb6VTqFFaZQAlVXI9/3InI1CqV4MuKaJ7n9R5R65yLTuaLgd5vh/RKHqf2ld0nTYDVIIlTS8s+Rqr34NqdaPBv3ncOU+qhaxyJljI4hFR2dprFR1nsw/BpvmFxHNI+gdXy28u7ujlP3STVxZ1VM/yc8tT5KAelhzTRHCgZOFMp7zGfjExXNoE8+raJW7RxkXcQ3Oeab/fZ9jFeG3dro/XOp7vxGmYvzKPd/8S8nZ9+T9mvwE4Ey9O',NULL,'_fefdee20-d6e0-0137-d572-005056a531ed','2019-10-22 10:02:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1035,'2019-10-22 14:13:35','2019-10-22 14:13:35','poste','eJydU0Fu2zAQ/IrAi0+SKClKWsJyYNgIYCAt2jjtoZeCFtcJA4lUuEvb+X0p2XEFNA2KnkiQM8vZ2eH0+tA20Q4camuqSZbwSQSmtkqbh2ry7f4m/jC5nk1Rtk3eibmnR3MHzx6QojkiOAq0hTXoW3BrcDtdw8ooOFSMs2hO5PTGExwRoeQfkGWopI3sy1TskahDkaadRQKtkmFNNKVPVsVbTBEtHgs4UNpBTSy6sa6GQVfFyHlg0WpZsZ8XG5AbLnmsLrdFzLPiKlbllYw5L3l5KcsiAxWgiD6IQZKGKpbz7GOc8TjP77NcZIUoyh8s+n7yhuVJ0BvcMih6OyrmnRFWokZhZAsoqBbr+adbEYBCvpozpuTd+6TOWbK1bdjRcDHIc32LraT3qf2JDiYNUAGGNL2w6HM4/eplo7ca3NhfR7KBpLatN5CELaI0ymkZzGazf4JN05HEc0D6B1fLL7bR9ct/6CYnDeqgnqXnkqe4gRqGHJJEcKBoYdtOOo39YEKwdOvbV9fGuEUTBnEH23NP+/0+wS5k68Hu+mStw/42PzXzJvN49zchv6/Hf2P2C0WaLjI=',NULL,'_4beab0a0-d6f3-0137-d57a-005056a531ed','2019-10-22 12:13:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1036,'2019-10-22 15:27:20','2019-10-22 15:27:20','poste','eJydU9Fu2jAU/ZXILzwlccwoxSJUCFQJqZu20u1hL5MX37SeEjvzvQb693OA0kjbqmlPtuxzrs8993h+c2ibZAcejbPlqMj4KAFbOW3sYzn6/HCbXo9uFnNUbSM6uQz0ZO/hZwCkZIkIniJt5SyGFvwW/M5UsLEaDiXjLFkSefM9EJwQseRvkHWsZKzqy5TsiahDmeedQwKjs+OaGcp/OJ3WmCM6PBXwoI2Hilhy63wFR10lIx+AJZt1yb7NZuJdfQ081Ve1TnkxnqZ6MoWU8wmfXKnJuAAdoYghikFSlkomeDFLC54K8VCMpZhKwb+y5MvZGyayqDe6ZVH2dpQseCudQoPSqhZQUiW3y/d3MgKlejFnSBHd26TOO3KVa9jJcHmU5/sWW0VvU/sTE006QiVYMvTMkg/x9FNQjakN+KG/nlQDWeXaYCGLW0RltTcqms0W/wSb5wOJl4D0D27WH11jquf/0E1eWTRRPcsvJc9xA30cckwSwYGSlWs75Q32g4nBMm1oX1wb4lZNHMQ91Jee9vt9hl3M1qPb9cnaxv2dODfzR+bp7m9CXq+Hf2PxC6aBLfM=',NULL,'_9924f8e0-d6fd-0137-d57e-005056a531ed','2019-10-22 13:27:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1037,'2019-10-22 15:28:22','2019-10-22 15:28:22','poste','eJydU8tu2zAQ/BWBF5/0ouEkJSwHho0ABtKijdMecikYcpWwkEiVu7Sdvy8lO66ApkHREwlyZjk7O5xfH9om2YFH42w1KbNikoBVThv7VE2+3t+kV5PrxRxl2/BOLAM92zv4GQApWSKCp0hbOYuhBb8FvzMKNlbDoWIFS5ZE3jwGgiMilvwDso6VjJV9mYo9E3Uo8rxzSGB0NqyZofyH02mNOaLDYwEP2nhQxJIb5xUMuipGPgBLNuuKfX+EUslaF6m+qHValNPLVM8u67QoZsXsQs6mJegIRQxRDJK0VDFelB/Sskg5vy+ngl8Jzh9Y8u3kDeNZ1Bvdsih6OyoWvBVOokFhZQsoSInt8uOtiEAhX80ZU3j3PqnzjpxyDTsaLgZ5vm+xlfQ+tT8x0aQBKsCSoReWfIqnX4JsTG3Aj/31JBvIlGuDhSxuEaXV3shoNlv8E2yejySeA9I/uFl/do1RL/+hm7y0aKJ6lp9LnuIGehhyTBLBgZKVazvpDfaDicEybWhfXRvjVk0cxB3U5572+32GXczWk9v1ydrG/S0/NfMm83j3NyG/r8d/Y/ELWQguog==',NULL,'_be1cafd0-d6fd-0137-d57f-005056a531ed','2019-10-22 13:28:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1038,'2019-10-22 19:11:59','2019-10-22 19:11:59','eidas','eJydU8tu2zAQ/BWBF58kkUpVxYTlwLARwEBatHHSQy4FI60TAhKpcpd+/H0p2bF9SIMiN2I5s5ydHU5udm0TbcChtqYciYSPIjCVrbV5KUePD7fx9ehmOkHVNlknZ55ezT388YAUzRDBUaDNrUHfgluB2+gKlqaGXckE5yyaETn97AkOmND0HdAidNNG9a1K9krUoUxT7OLO2d0+6RwkoOvkxW4STaE+lNNeEaJl0a11FQzCSkbOA4uWi5L9Xj+PRaG+8LguRBVzcVXEdX5dxJznPP+q8isBdYAi+qAFSRkqWcbFOBY8zrIHUUghZD5+YtGvozksS4LYYJdB2b9eMu+MtAo1SqNaQEmVXM2+3ckAlOrNnUtK1n1MCqORrWzDDo7LQZ7rR2wVfUztK7qO1wNUgiFNexZ9D9WfXjV6rcGdze2sI9VAUtnWG0jCEVGZ2mkVLGbT/4JN0guJp4T0Dy4XP2yjq/0ndJNTBnVQz9JTy2PeoB6WHIJEsKNobttOOY39YkKudOvbN9cucfMmLOIe1qeZttttgt05T6twvsuOw7zLPNz9S8j5+vJzTP8CgtMtGw==',NULL,'_fb917a40-d71c-0137-d587-005056a531ed','2019-10-22 17:11:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1039,'2019-10-22 20:09:47','2019-10-22 20:09:47','intesa','eJydUstu2zAQ/BWBF58kUUpU24TlwLARwEBatLHTQy8FK64TAiKpcle28/el5EcEtA2K3hbL2eXszMzujqaO9uBRO1uOsoSPIrCVU9o+l6On7X08Gd3NZyhNnTdi0dKLfYSfLSBFC0TwFMaWzmJrwG/A73UFa6vgWDLOogWR1z9aghMirPwNsgqbtJXdmpK9EDUo0hQbrRJtCVAmmtKtNnD7hNcPMMVLoVWTDkmx6N75CvpWyci3wKL1qmTfOUyyalLwWI3zIubZzThWxWQac17w4oMsbjJQAYrYBnJI0lLJcp5N44zHeb7NJoJPxe34G4u+nrVieRL4B/Usik6ekrXeCidRo7DSAAqqxGbx8UEEoJAXsYYjefP+UOMducrV7GSA6On57kQj6f3RrqNVvOuhAixpemXRp9D90spa7zT4N70b50nWkFTOtBaSUCJKq7zu5Gfzf4LN0gHFa2C6D9erz67W1et/8CYvLerAnqXXlWenQfUmh2QRHClaOtNIr7EzJgRNm9ZcVBvilnUw4hF215sOh0PSx+3Z7busbUL9kJ+P+ePk6e1vRN6eh7Gc/wK8/zMr',NULL,'_0e81c850-d725-0137-d589-005056a531ed','2019-10-22 18:09:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1040,'2019-10-22 22:50:49','2019-10-22 22:50:49','eidas','eJydU01P4zAQ/SuRLz0lcVKyFKspqlohVWIRS4HDXpCJp2ApsbOecT/+/TppaXtg0YqbNX5v/ObN8/h629TRGhxqa8pBlvBBBKaySpu3cvD0eBOPBteTMcqmzlsx9fRuHuCPB6RoigiOAm1mDfoG3BLcWlewMAq2Jcs4Z9GUyOlXT7DHhKafgOahmzaya1Wyd6IWRZpiG7fObndJ6yABrZI3u040hXpfTjtFiJZFN9ZV0AsrGTkPLFrMS/YyUqOLfAU8VpfD15hnw8tYFSMZc17w4ocshhmoAEX0QQuSNFSynGdXccbjPH/MuSi4uLj6zaLngzksT4LYYJdB0b1eMu+MsBI1CiMbQEGVWE5/3ooAFPLDnXNK3n5NCqORrWzN9o6LXp7rRmwkfU3tKlrFqx4qwJCmHYvuQvWXl7VeaXAnc1vrSNaQVLbxBpJwRJRGOS2DxWzyX7BxeibxmJDuwcX83ta62n1DNzlpUAf1LD22POQNVL/kECSCLUUz27TSaewWE3KlG998uHaOm9VhEQ+wOs602WwSbE95WobzbX4Y5lPm/u5fQk7X559j8hfxzC1J',NULL,'_8d842fe0-d73b-0137-d58a-005056a531ed','2019-10-22 20:50:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1041,'2019-10-22 22:51:10','2019-10-22 22:51:10','namirialid','eJydU11v2kAQ/CvWvfBk+2zqJpwwEQJFQkq/IM1DX6rDtyQr2Xfu7RrIv+8ZCEFqE1V9W+3NrGdm1+ObfVNHW/CEzpaDLJGDCGzlDNrHcvD9/ja+HtxMxqSbOm/VtOMnu4RfHRBHUyLwHGgzZ6lrwK/Ab7GChTWwL4UU0ZTZ47pjOCLCyD8g8zAJre7HlOKJuSWVpmjaxOoGPeqaqU0q1/S9tPVugzWkq+mnuzxdgkEPFaer1RcR3TpfwUFfKdh3IKLFvBQ/RzrLRh/WMjZXw3Uss+FVbIrrUMlCFh91MczABChRF0QRa8ulyGU2ijMZ5/l9LlWRqUz+ENHDKSORJ0F3SM2S6mMpReetcpqQVBANpLhSvUIVgEq/hHRJydv3ScEnu8rV4hi8OsjzvcVG8/vUvoMm3hygCiwjP4voc+h+63SNGwT/mnPrPOsa+nw7C0koibQ1IfYEWUz+CTZOLySeD6X/4GL+1dVYPf+HbvbaEgb1Ij2PPJ0dmMOSw0Ux7DmauabVHqlfTDgwbLrmJbVL3KwOi1jC5uxpt9sl1KJJHt02uEhXob7LT2b+yjy+vSXk9fnyH5n8BgXgLy0=',NULL,'_9a1194b0-d73b-0137-d58b-005056a531ed','2019-10-22 20:51:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1042,'2019-10-22 22:52:18','2019-10-22 22:52:18','eidas','eJydU8tu2zAQ/BWBF58kUTTUuITlwLARwEBatHHSQy8FQ60TAhKpcpd+/H0p2bF9SIOiN2I5s5ydHU5v922TbMGjcbYaFRkfJWC1q419qUZPj3fpZHQ7m6JqG9HJeaBX+wC/AyAlc0TwFGkLZzG04Nfgt0bDytawr1jBOUvmRN48B4IjJjZ9B7SM3YxVfauKvRJ1KPMcu7Tzbn/IOg8ZmDp7cdvMUKwP5bxXhOhYcue8hkFYxcgHYMlqWbFfWpQllMDT+mb8nPJifJPW5USnnJe8/KTKcQF1hCKGqAVJWaqY4MXntOCpEI+Cy1LIYvKTJT9O5jCRRbHRLouyf71iwVvpFBqUVrWAkrRcz7/cywiU6s2da4roPibF0chp17Cj43KQ5/sRW0UfU/uKqdPNAJVgydCBJV9j9XtQjdkY8BdzO+dJNZBp1wYLWTwiKlt7o6LFbPZPsGl+JfGckP7B1fKba4w+/Idu8sqiiepZfm55yhvUw5JjkAj2lCxc2ylvsF9MzJVpQ/vm2jVu0cRFPMDmPNNut8uwu+RpHc/34jTMu8zj3d+EXK6vP8fsD+EULUI=',NULL,'_c255e5e0-d73b-0137-d58c-005056a531ed','2019-10-22 20:52:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1043,'2019-10-22 22:52:34','2019-10-22 22:52:34','spiditalia','eJydU0Fu2zAQ/IrAi0+SKCquE8JyYNgIYCAt2jjtoZeCEdcOAYlUuUvb+X0p2XEMtA2K3ojlzHJ2dji9PbRNsgOPxtlqVGR8lICtnTZ2W42+Pt6l16Pb2RRV24hOzgM92wf4GQApmSOCp0hbOIuhBb8GvzM1rKyGQ8U4S+ZE3jwFgiMitvwNsoydjFV9m4o9E3Uo8xw7ozMPW4MEPjOUN25rbI7oWHLnfA2DjoqRD8CS1bJiP+paTIryiqd6Uj6lvCgnqR5f65TzMR9/UOOyAB2hiCE+jqQsVUzw4iYteCrEo+ByLGR59Z0l305eMJFFfdEdi7Ifv2LBW+kUGpRWtYCSarmef7yXESjVqxmXFNG9T+q8I1e7hh0NloM834/YKnqf2leMTjcDVIIlQy8s+RSrX4JqzMaAf/Ozc55UA1nt2mAhi0dEZbU3KprLZv8Em+YXEs+B6B9cLT+7xtQv/6GbvLJoonqWn1ue4gV6WHJMDsGBkoVrO+UN9ouJQTJtaF9du8QtmriIB9icZ9rv99kQp63b9Ulax/O9OA3zR+bx7m9C3q4v/8LsFwIpJzE=',NULL,'_cc271340-d73b-0137-d58d-005056a531ed','2019-10-22 20:52:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1044,'2019-10-22 22:53:08','2019-10-22 22:53:08','poste','eJydU0Fu2zAQ/IrAi0+SKAluXMJyYNgIYCAt2jjpoZeAEtcJC4lUuUvb+X0p2XEFtAmKnkiQM8vZ2eH8+tg20R4camvKSZbwSQSmtkqbp3LycH8TzybXiznKtsk7sfT0bO7gpwekaIkIjgJtZQ36FtwW3F7XsDEKjiXjLFoSOV15ghMilPwDsg6VtJF9mZI9E3Uo0rSzSKBVMqyJpvSHVfEOU0SLpwIOlHZQE4turKth0FUych5YtFmX7BF4UVVVxmN1VVQxz4qrWE1nEHM+5dMPclpkoAIU0QcxSNJQyXKefYwDJc/vcy6mheCz7yz6dvaG5UnQG9wyKHo7SuadEVaiRmFkCyioFtvlp1sRgEK+mjOm5N37pM5ZsrVt2MlwMchzfYutpPep/YkOJg1QAYY0vbDoczj96mWjdxrc2F9HsoGktq03kIQtojTKaRnMZot/gs3TkcRLQPoHN+svttH1y3/oJicN6qCepZeS57iBGoYckkRwpGhl2046jf1gQrB069tX18a4VRMGcQe7S0+HwyHBLmTrye77ZG3D/jY/N/NX5unuLSG/r8d/Y/EL2asuBw==',NULL,'_e03bbb10-d73b-0137-d58e-005056a531ed','2019-10-22 20:53:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1045,'2019-10-22 23:42:44','2019-10-22 23:42:44','poste','eJydU8tu2zAQ/BWBF5/0YuS4ISwHho0ABtKijdMccikYcZ2wkEiVu7Sdvy8lO66APBD0RIKcWc7ODqeX+6aOtuBQW1OO8iQbRWAqq7R5LEc/b6/iL6PL2RRlU/NWzD09mRv44wEpmiOCo0BbWIO+AbcGt9UVrIyCfckyFs2JnH7wBAdEKPkKsgyVtJFdmZI9EbUo0rS1SKBV0q+JpvS3VfEGU0SLhwIOlHZQEYuurKug11Uych5YtFqW7FcFxeS8eMhiNSl4nOVnk1iNL/I4y8bZ+FyOz3JQAYrogxgkaahkPMsv4jyLOb/luSi4KIp7Ft0dvWE8CXqDWwZFZ0fJvDPCStQojGwABVViPf96LQJQyBdzhhTefkxqnSVb2ZodDBe9PNe12Ej6mNqd6GBSDxVgSNMzi76F0x9e1nqjwQ39dSRrSCrbeANJ2CJKo5yWwWw2+xRsmg4kngLSPbhafre1rp7/Qzc5aVAH9Sw9lTzGDVQ/5JAkgj1FC9u00mnsBhOCpRvfvLg2xC3qMIgb2Jx62u12CbYhW4922yVrHfbX/NjMm8zD3XtC/l0P/8bsL5o6LYQ=',NULL,'_ce4764b0-d742-0137-d591-005056a531ed','2019-10-22 21:42:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1046,'2019-10-23 11:37:22','2019-10-23 11:37:22','namirialid','eJydU11v2kAQ/CvWvfBk+2xEKCdMhECRkNIvnPahL9XVt05Wsu/cuzWQf981EILUNqr6dtqdWc/Mrue3h7aJduADOluMskSOIrCVM2gfi9GXh7v43eh2MQ+6bfJOLXt6slv42UOgaBkCeGLaytnQt+BL8DusYGMNHAohRbQk8vijJzgheORvkDVPQquHMYV4IuqCSlM0XWJ1ix51Q6FLKtcOtbTzrsYG0nL5/j5Pt2DQQ0VpWX4U0Z3zFRz1FYJ8DyLarAvxXY8zmNZTGZupvollNp7GZjKrYikncnKjJ9w2DA2hZ1GBtKVC5DKbxZmM8/GDnKnxVOX5NxF9PWck8oR1c2o2qCGWQvTeKqcDBsWiISiq1KBQMVDpl5CuKXn3Nol9kqtcI07Bq6M8P1hsNb1NHSpo4voIVWAJ6VlEH7j6udcN1gj+NefOedINDPn2FhJ+hqCt4dgTJLH4J9g8vZJ4OZThg5v1J9dg9fwfuslrG5DVi/Qy8nx2YI5L5osiOFC0cm2nPYZhMXxg2PbtS2rXuFXDi9hCffG03++T0KFJHt2OXaQlv+/zs5k/Mk+9vwl5bV//I4tfsEkvcw==',NULL,'_a31e7f70-d7a6-0137-d59c-005056a531ed','2019-10-23 09:37:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1047,'2019-10-23 11:37:36','2019-10-23 11:37:36','arubaid','eJydU12P2jAQ/CuRX3jKt4BiEU4IdBISrdr76El9qUy8cJZiO/Wugfv3dQLHIfV6qvpm7c5sZmcn05ujbqI9OFTWVIM8yQYRmNpKZXbV4PHhNv40uJlNUeimaPnc07O5g18ekKI5IjgKtIU16DW4e3B7VcPKSDhWLGPRnMipjSc4IcLIPyDLMEkZ0Y2p2DNRizxNG7tTBlslE+H8RiSK0jNx3XWeoKmtBhbdWldDr6li5HyorJYV+yk2G1HIPIvlWIziLC/HsRxOZJxlw2w4EsMyBxmgiD4IQRKGKlZk+SQOlKJ8yCa8HPNy9INF38++sCIJWoNTBnlnRcW8M9wKVMiN0ICcan4//7zmAcjFqzHXlKL9mNQ6S7a2DTuZzXt5rltRC/qY2lWUjLc9lIMhRS8s+hKq37xo1FaBe/O2tY5EA0lw0BtIwhNRGOlUZzOb/RNsml5JvISj++Bq+dU2qn75D93khEEV1LP0MvIcNZD9kUOKCI4ULaxuhVPYHSaESmmvX127xi2acIg72F52OhwOSZ+qnd33mQrvdXFe5l3mqfc3IW/t6/9i9hvEjCx/',NULL,'_abba2d10-d7a6-0137-d59d-005056a531ed','2019-10-23 09:37:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1048,'2019-10-23 11:38:18','2019-10-23 11:38:18','tim','eJydU9Fu2jAU/ZXILzwlccKgYBEqBKqE1E1b6fqwl8kkN9RSbGe+10D/fk6gFGldNe3Nuj7n+txzj2e3R91Ee3CorCkGWcIHEZjSVsrsisH3x7t4Mridz1DqJm/FwtOzeYBfHpCiBSI4CrSlNeg1uA24vSphbSo4FoyzaEHk1NYTnBCh5R+QVeikjOzaFOyZqEWRpo3dKZOoKiGlE0WprOsDbPHExbT120aVaa8J0bLozroSem0FI+eBRetVwX6Wn4CPswmPqxs5jnk2vImr0RRizkd8NJajYQZVgCL6IAhJGipYzrNpnPE4Hz7yqRhORDb5waKnsz8sT4Lm4JhB0T1fMO+MsBIVCiM1oKBSbBaf70UACvlq0DUlbz8mtc6SLW3DTqaLXp7rRtSSPqZ2FVXFdQ8VYEjRC4u+hOo3LxtVK3BvHrfWkWwgKa32BpJwRJSmckoGx9n8n2Cz9EriJSTdg+vVVxt29PIfuslJgyqoZ+ml5TlyUPVLDmkiOFK0tLqVTmG3mBAupb1+de0at2zCIh6gvsx0OBwSbEO8dnbfxWsTzvf5eZh3mae7vwl5u77+H/Pf/csu0w==',NULL,'_c4e06180-d7a6-0137-d59e-005056a531ed','2019-10-23 09:38:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1049,'2019-10-23 11:51:16','2019-10-23 11:51:16','arubaid','eJydU12L2zAQ/CtGL3myLTv15SziHCHhIJCW9j5a6EvRWZucwJZc7SrJ/fvKTi4XaHuUvondmfXs7Hh6c2ibaAcOtTXVKEv4KAJTW6XNtho9PtzG16Ob2RRl2+SdmHt6Nnfw0wNSNEcER4G2sAZ9C+4e3E7XsDIKDhXjLJoTOf3kCY6IMPI3yDJM0kb2Yyr2TNShSNPGbrXBTqtEOv8kE03pibjuO9+gqW0LLLq1roZBU8XI+VBZLSv2o/wwKcuy5rGayOuYZ+NJrIpyE3Ne8OJKFuMMVIAi+iAESRqqWM6zMs54nI8feCmKTGRX31n09eQLy5OgNThlUPRWVMw7I6xEjcLIFlBQLe7nH9ciAIV8NeaSknfvkzpnyda2YUezxSDP9Su2kt6n9hWt4s0AFWBI0wuLPoXqFy8bvdHg3rztrCPZQBIc9AaS8ESURjnd28xm/wSbphcSz+HoP7hafraNrl/+Qzc5aVAH9Sw9jzxFDdRw5JAiggNFC9t20mnsDxNCpVvfvrp2iVs04RB3sDnvtN/vkyFVW7sbMhXe6/y0zB+Zx97fhLy1L/+L2S8+eSvi',NULL,'_947999c0-d7a8-0137-d59f-005056a531ed','2019-10-23 09:51:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1050,'2019-10-23 14:10:56','2019-10-23 14:10:56','eidas','eJydU01P4zAQ/SuRLz0lcVKlBaspqlohVWJXQNk97GVlnClYSuysZ9yPf4+TlrYHFiFu1vi98Zs3z5ObXVNHG3CorSkHWcIHERhlK21eysGvp9v4anAznaBs6rwVM0+v5hH+eUCKZojgKNDm1qBvwK3AbbSCpalgV7KMcxbNiJx+9gQHTGj6AWgRumkju1YleyVqUaQptnHr7G6ftA4S0FXyYjeJplDvy2mnCNGy6NY6Bb2wkpHzwKLlomR/s/HoWoHkcTV+VjHPhuO4KqSMOS94MZLFMIMqQBF90IIkDZUs59l1nPE4Hz5luci4KEZ/WPT7aA7LkyA22GVQdK+XzDsjrESNwsgGUJASq9mPOxGAQr67c0nJ289JYTSyytbs4Ljo5bluxEbS59Suoqt43UMFGNK0Z9HPUH3wstZrDe5sbmsdyRoSZRtvIAlHRGkqp2WwmE2/BJukFxJPCekeXC7uba3V/hu6yUmDOqhn6anlMW9Q9UsOQSLYUTS3TSudxm4xIVe68c27a5e4eR0W8Qjr00zb7TbB9pynVTjf5cdhPmQe7v4n5Hx9+Tmmb7SvLZk=',NULL,'_1769cea0-d7bc-0137-d5aa-005056a531ed','2019-10-23 12:10:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1051,'2019-10-23 15:28:41','2019-10-23 15:28:41','poste','eJydU8tu2zAQ/BWCF5/0rhOHsBwYNgIYSIs2TnPIpWDEdcJCIlXu0nb+vpTsuALyQNATCXJmOTs7nF7um5ptwaG2phxlcTpiYCqrtHksRz9vr6LJ6HI2RdnUeSvmnp7MDfzxgMTmiOAo0BbWoG/ArcFtdQUro2Bf8pSzOZHTD57ggAglX0GWoZI2sitT8ieiFkWStBYJtIr7NdaU/LYq2mCCaPFQwIHSDiri7Mq6CnpdJSfngbPVsuS/NgVMios8jdR5dRalWXEeqbF8iNJ0nI7P5LjIQAUoog9ikKShkudpdhFlaZQXt1kh8on4kt1zdnf0hudx0BvcMig6O0runRFWokZhZAMoqBLr+ddrEYBCvpgzpOTtx6TWWbKVrfnBcNHLc12LjaSPqd2JDib1UAGGND1z9i2c/vCy1hsNbuivI1lDXNnGG4jDFlEa5bQMZvPZp2DTZCDxFJDuwdXyu6119fwfuslJgzqo58mp5DFuoPohhyQR7IktbNNKp7EbTAiWbnzz4toQt6jDIG5gc+ppt9vF2IZsPdptl6x12F/nx2beZB7u3hPy73r4N2Z/AYpYLeg=',NULL,'_f3e83920-d7c6-0137-d5ab-005056a531ed','2019-10-23 13:28:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1052,'2019-10-23 15:30:11','2019-10-23 15:30:11','poste','eJydU0Fu2zAQ/IrAi0+SSAmuG8JyYNgIYCAt2jjNIZeCJdcJC4lUuSvb+X0p2XEFtA2KnkiQM8vZ2eH8+tjUyR4CWu+qicj4JAGnvbHuqZp8ub9J30+uF3NUTV20ctnRs7uDHx0gJUtECBRpK++wayBsIeytho0zcKwYZ8mSKNhvHcEJEUv+BlnHStapvkzFnolalHneeiSwJhvWzFL+3Zt0hzmix1OBAMYG0MSSGx80DLoqRqEDlmzWFftaXE2FmBmempmepVyUs9RMlU45n/LpOzUtBZgIReyiGCTlqGIFF1ep4GlR3otSllwK8ciSh7M3rMii3uiWQ9nbUbEuOOkVWpRONYCStNwuP9zKCJTq1ZwxpWjfJrXBk9e+ZifD5SAv9C02it6m9ic2mjRAJTiy9MKSj/H0c6dqu7MQxv4GUjVk2jedgyxuEZUzwapoNlv8E2yejyReAtI/uFl/8rXVL/+hm4JyaKN6ll9KnuMGZhhyTBLBkZKVb1oVLPaDicGyTde8ujbGreo4iDvYXXo6HA4ZtjFbT37fJ2sb97fFuZk/Mk93fxPy63r8NxY/Ae7gLak=',NULL,'_295117d0-d7c7-0137-d5ac-005056a531ed','2019-10-23 13:30:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1053,'2019-10-23 17:57:38','2019-10-23 17:57:38','namirialid','eJydU8tu2zAQ/BWBF5/0ruqUsBwYNgIYSB+x0hx6KWhxnSwgkSp3ZTt/X8p2HANtgqI3YjmznJldTq73bRNswRFaU47SKBkFYGqr0TyWo+/3N+HV6Ho6IdU2WSdnPT+ZFfzqgTiYEYFjT5tbQ30LrgK3xRqWRsO+FIkIZswO1z3DEeFb/gFZ+E5o1NCmFE/MHck4Rt1FRrXoUDVMXVTbdqjFnbMbbCCuZp9vs3gFGh3UHFfVVxHcWFfDQV8p2PUgguWiFD/rDD6Mx0US6rFeh0maj0NdrPMwSYqk+KiKPAXtoUS9F0WsDJciS9JPYZqEWX6fFrIYy/zqhwgeThmJLPK6fWqG5BBLKXpnpFWEJL1oIMm1HBRKD5TqJaRLSta9T/I+2da2Ecfg5UGeGyy2it+nDhXU4eYAlWAY+VkEX3z1rlcNbhDca86ddawaGPLtDUT+SKSM9rFHyGL6T7BJfCHxvCjDg8vFN9tg/fwfutkpQ+jVi/jc8rR2oA9D9hvFsOdgbttOOaRhMH7BsO3bl9QucfPGD2IFm7On3W4XUYc6erRb7yKu/Pk2O5n5K/N495aQ1+vLPzL9DbDRL3Q=',NULL,'_c2e47750-d7db-0137-d5b3-005056a531ed','2019-10-23 15:57:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1054,'2019-10-23 20:20:02','2019-10-23 20:20:02','spiditalia','eJydU8Fu2zAM/RVDl5xsyw7cdEKcIkhQIEA3bE23Qy+DajMpAVvyRCpJ/36yk6YBthbDbgL1HvX4+DS9ObRNtANHaE05yhI5isBUtkazLUffH27j69HNbEq6bfJOzT0/m3v45YE4mhOB40BbWEO+BbcGt8MKVqaGQymkiObMDp88wxERWv4BWYZOaHTfphTPzB2pNKUO68TBFonBJchpY7doUiIrolvrKhh0lIKdBxGtlqX4qSeToihyGdcT2MQyG0/iuni6iqUsZHGli3EGdYAS+fA4sTZcilxmn+JMxvn4IbtWuVQyfxTRj5MXIk+CvuCOIdWPXwrvjLKakJTRLZDiSq3nn+9UACr9asYlJe8+JnXOsq1sI44Gq0Ge60dsNX9M7StYx5sBqsAw8ouIvoTqN68b3CC4Nz8761g3kFS29QaScCTSpnaog7li9k+waXoh8RyI/sHV8qttsHr5D93stCEM6kV6bnmKF9TDkkNyGA4cLWzbaYfULyYECVvfvrp2iVs0YRH3sDnPtN/vkyFOW7vrk7QO57v8NMxfmce794S8XV/+hdlvF48nOg==',NULL,'_a7755520-d7ef-0137-d5b6-005056a531ed','2019-10-23 18:20:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1055,'2019-10-23 20:22:50','2019-10-23 20:22:50','tim','eJydU0Fu2zAQ/IrAi0+SKLmuE8JyYNgIYCAt2jjpIZeCklYOAZFUuUvb+X0p2XEMtAmK3ojlzHJ2dji7Oeg22oFDZU0xyhI+isBUtlZmW4weH27jq9HNfIZSt3knFp6ezT388oAULRDBUaAtrUGvwW3A7VQFa1PDoWCcRQsip0pPcESEln9AVqGTMrJvU7Bnog5FmrZ2q0yi6oSUThSlsmn2UOKRi2nny1ZV6aAJ0bLo1roKBm0FI+eBRetVwX7y8vqTbDiP62nDY56Np3E9Kacx5xM++Swn4wzqAEX0QRCSNFSwnGfXccbjfPyQXYk8FxP+xKIfJ39YngTNwTGDon++YN4ZYSUqFEZqQEGV2Cy+3IkAFPLVoEtK3n1M6pwlW9mWHU0XgzzXj6glfUztK6qOmwEqwJCiFxZ9DdXvXraqUeDePO6sI9lCUlntDSThiChN7ZQMjrP5P8Fm6YXEc0j6B9erbzbs6OU/dJOTBlVQz9Jzy1PkoB6WHNJEcKBoaXUnncJ+MSFcSnv96tolbtmGRdxDc55pv98n2IV4be2uj9cmnO/y0zB/ZR7v3hPydn35P+a/AUDyLu0=',NULL,'_0b94af00-d7f0-0137-d5b7-005056a531ed','2019-10-23 18:22:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1056,'2019-10-23 20:40:30','2019-10-23 20:40:30','poste','eJydU0Fu2zAQ/IrAi0+SKKluVMJyYNgIYCAt2jjtIZeCFtcJC4lUuUvb+X0p2XEFtAmKnkiQM8vZ2eHs+tg20R4camuqSZbwSQSmtkqbx2ry9f4mLifX8xnKtsk7sfD0ZO7gpwekaIEIjgJtaQ36FtwG3F7XsDYKjhXjLFoQOb31BCdEKPkHZBUqaSP7MhV7IupQpGlnkUCrZFgTTekPq+IdpogWTwUcKO2gJhbdWFfDoKti5DywaL2q2PeyKPmWcx6rq10e86y4itV0W8acT/n0vZwWGagARfRBDJI0VLGcZx/ijMd5cZ+V4h0XBX9g0bezNyxPgt7glkHR21Ex74ywEjUKI1tAQbXYLD7eigAU8sWcMSXv3iZ1zpKtbcNOhotBnutbbCW9Te1PdDBpgAowpOmZRZ/C6RcvG73T4Mb+OpINJLVtvYEkbBGlUU7LYDab/xNslo4kXgLSP7hefbaNrp//Qzc5aVAH9Sy9lDzHDdQw5JAkgiNFS9t20mnsBxOCpVvfvrg2xi2bMIg72F16OhwOCXYhW4923ydrE/a3+bmZvzJPd68J+X09/hvzX4EZLXw=',NULL,'_8380b000-d7f2-0137-d5b8-005056a531ed','2019-10-23 18:40:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1057,'2019-10-23 21:00:03','2019-10-23 21:00:03','tim','eJydU0Fu2zAQ/IrAi0+SKClOasJyYNgIYCAt2jjNoZeCllYOAZFUuUvb+X0p2XEMNA2K3ojlzHJ2dji9Peg22oFDZU05yhI+isBUtlZmW46+P97Fn0a3sylK3eadmHt6Ng/wywNSNEcER4G2sAa9BrcGt1MVrEwNh5JxFs2JnNp4giMitPwDsgydlJF9m5I9E3Uo0rS1W2USVSekdKIolU2zhw0euZh2ftOqKh00IVoW3VlXwaCtZOQ8sGi1LNnPAqoruL7icX3TjGOeFTdxPd5MYs7HfHwtx0UGdYAi+iAISRoqWc6zSZzxOC8es4ngXPDiB4ueTv6wPAmag2MGRf98ybwzwkpUKIzUgIIqsZ5/vhcBKOSrQZeUvPuY1DlLtrItO5ouBnmuH1FL+pjaV1QdNwNUgCFFLyz6EqrfvGxVo8C9edxZR7KFpLLaG0jCEVGa2ikZHGezf4JN0wuJ55D0D66WX23Y0ct/6CYnDaqgnqXnlqfIQT0sOaSJ4EDRwupOOoX9YkK4lPb61bVL3KINi3iA5jzTfr9PsAvx2tpdH691ON/np2HeZR7v/ibk7fryf8x+A1tCLvc=',NULL,'_3ec4e640-d7f5-0137-d5b9-005056a531ed','2019-10-23 19:00:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1058,'2019-10-24 05:41:55','2019-10-24 05:41:55','tim','eJydU0Fu2zAQ/IrAi0+SKDlKE8JyYNgIYCAt2jjtoZeCFtcOAZFUuUvb+X0p2XEMtA2K3ojlzHJ2dji5O5g22YFH7Ww9KjI+SsA2Tmm7rUdfn+7Tm9HddILStGUnZoGe7SP8DICUzBDBU6TNncVgwK/A73QDS6vgUDPOkhmR1+tAcETElr9BFrGTtrJvU7Nnog5Fnrduq22mVUbaZJpyudnsYY1HLuZdWLe6yQdNiI4l9843MGirGfkALFkuavajvOaqBMlTdTOGlBfjD6mq1jLlvOLVtazGBagIRQxREJK0VLOSF7dpwdPy6omPxVUhquo7S76d/GFlFjVHxyyK/vmaBW+Fk6hRWGkABTViNfv4ICJQyFeDLill9z6p845c41p2NF0M8nw/opH0PrWvaJVuBqgAS5peWPIpVr8E2eqNBv/mcec8yRayxplgIYtHRGmV1zI6zqb/BJvkFxLPIekfXC4+u7ijl//QTV5a1FE9y88tT5EDNSw5pongQMncmU56jf1iYri0CebVtUvcvI2LeITNeab9fp9hF+O1dbs+Xqt4fihPw/yRebz7m5C368v/Mf0FqcEvGQ==',NULL,'_260d2ea0-d83e-0137-d5ba-005056a531ed','2019-10-24 03:41:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1059,'2019-10-24 10:29:17','2019-10-24 10:29:43','infocert','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','_4ab71f20-d866-0137-d5c9-005056a531ed','2019-10-24 08:29:17','_c74f3a8e114d66d97290f3656876bda6','2019-10-24 08:29:42','https://identity.infocert.it','_d3ebf2f87c2bc3997735bb04ca8cf025','_de11a18f2bbd6c4c08ca95b9db10d53e','https://identity.infocert.it',8),(1060,'2019-10-24 21:29:55','2019-10-24 21:29:55','poste','eJydU9FO2zAU/ZXIL31K4gTSUaspqlohVWLTRtkeeEFefAtGiR18r9vy93PSUiJtILQnW/Y51+eeezy93Dd1tAWH2ppylCV8FIGprNLmoRz9vL2KL0aXsynKps5bMff0aG7g2QNSNEcER4G2sAZ9A24NbqsrWBkF+5JxFs2JnP7tCQ6IUPIvyDJU0kZ2ZUr2SNSiSNPWIoFWSb8mmtInq+INpogWDwUcKO2gIhZdWVdBr6tk5DywaLUs2f3kHMZjPuaxuqjymGdnX2JVQBFzXvBiLIuzDFSAIvogBkkaKlnOs0mc8Tg/v80mIp+Iorhj0a+jNyxPgt7glkHR2VEy74ywEjUKIxtAQZVYz79eiwAU8tWcISVvPya1zpKtbM0OhotenutabCR9TO1OdDCphwowpOmFRd/C6Q8va73R4Ib+OpI1JJVtvIEkbBGlUU7LYDabfQo2TQcSTwHpHlwtv9taVy//oZucNKiDepaeSh7jBqofckgSwZ6ihW1a6TR2gwnB0o1vXl0b4hZ1GMQNbE497Xa7BNuQrQe77ZK1Dvvr/NjMP5mHu/eEvF0P/8bsD8V5LZk=',NULL,'_94e66060-d8c2-0137-d5e5-005056a531ed','2019-10-24 19:29:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1061,'2019-10-24 21:32:08','2019-10-24 21:32:08','poste','eJydU9Fu2jAU/ZXILzwlcUKh1CJUCFQJqZu20u1hL5NnX1pPiZ35XgP9+zmBskjbqmlPtuxzrs8993h+e2zqZA8ejbPVqMj4KAGrnDb2qRp9erxLZ6PbxRxlU5etWAZ6tg/wIwBSskQET5G2chZDA34Lfm8UbKyGY8U4S5ZE3nwLBCdELPkbZB0rGSu7MhV7JmpR5HnrkMDorF8zQ/l3p9Md5ogOTwU8aONBEUvunFfQ66oY+QAs2awr9hWuyum1nPJUz1SZ8mJ8neoJTFPOJ3wylZNxATpCEUMUgyQtVazkxU1a8LS8eixuxLgUfPaFJZ/P3rAyi3qjWxZFZ0fFgrfCSTQorGwABSmxXb67FxEo5Ks5Q0rZvk1qvSOnXM1Ohotenu9abCS9Te1OTDSphwqwZOiFJe/j6ccga7Mz4If+epI1ZMo1wUIWt4jSam9kNJst/gk2zwcSLwHpHtysP7jaqJf/0E1eWjRRPcsvJc9xA90POSaJ4EjJyjWt9Aa7wcRgmSY0r64Ncas6DuIBdpeeDodDhm3M1pPbd8naxv19eW7mj8zT3d+E/Loe/o3FTyDVLb0=',NULL,'_e4267a60-d8c2-0137-d5e6-005056a531ed','2019-10-24 19:32:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1062,'2019-10-24 21:32:57','2019-10-24 21:32:57','poste','eJydU9Fu0zAU/ZXIL31K4qSEblbTqWo1qdJAsA4eeEHGvt2MEjv4Xrfd3+OkXYkETIgnW/Y51+eeezy/ObZNsgePxtl6UmR8koBVThv7WE8+PdymV5ObxRxl25SdWAZ6svfwIwBSskQET5G2chZDC34Lfm8UbKyGY804S5ZE3nwLBCdELPkbZB0rGSv7MjV7IupQ5HnnkMDobFgzQ/l3p9Md5ogOTwU8aONBEUtunVcw6KoZ+QAs2axr9pUXUu6U4qm+UtOUF9NZqiuYpZxXvHorq2kBOkIRQxSDJC3VrOTFdVrwtHzzUFyLaSmq2ReWfD57w8os6o1uWRS9HTUL3gon0aCwsgUUpMR2+e5ORKCQL+aMKWX3OqnzjpxyDTsZLgZ5vm+xlfQ6tT8x0aQBKsCSoWeWvI+nH4NszM6AH/vrSTaQKdcGC1ncIkqrvZHRbLb4J9g8H0m8BKR/cLP+4Bqjnv9DN3lp0UT1LL+UPMcN9DDkmCSCIyUr13bSG+wHE4Nl2tC+uDbGrZo4iHvYXXo6HA4ZdjFbj27fJ2sb93fluZk/Mk93fxPy63r8NxY/AWt5LkM=',NULL,'_01aafcc0-d8c3-0137-d5e7-005056a531ed','2019-10-24 19:32:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1063,'2019-10-25 10:41:46','2019-10-25 10:41:46','sielte','eJydU8tu2zAQ/BWBF58kUVKUOoTlwLARwED6itIeeilYcR0ToEiWXNrO35eSHcdA26DojSBnRrOzo9ntoVfJDpyXRjeTIqOTBHRnhNRPzeTL4106ndzOZ573qrRsEXCrH+BnAI/JwntwGGlLo33owbXgdrKDtRZwaAglyQLRyR8B4YiIkr9BVlFJaj7INGSLaD3LcylAo8TnzEtQCJ0yQWQScy97q2Dwko+GItDmbfvxpJrZrSXJnXEdjEYbgi4ASdarhnyvqg6mwGkqbqoipUX1LhU18JTSmtbXvK4KEBHqfYjuPHKNDSlpcZMWNC3rRzplVwW7uv5Gkq+nsEiZxQFifNqzwU5DgtPMcC8907wHz7Bj7eL9PYtAxl/SuqSU9m2SdQZNZxQ5boCN9twwYs/xbepwI0W6GaHsmCdJPsTbz4EruZHgXgO3xiFXkHWmDxqyePSea+Ekj7GT+T/BZvmFxXNjhg+uV5+Mkt3zf/hGx3UsgUaSnyVP/QMxLjlWC+GAydL0ljvph8XEpsk+9C+pXeKWKi7iATbnmfb7featFNmT2Q0da+P5vjwN80fm8e1vRl6fL3+W+S9JBTQM',NULL,'_33ce8ea0-d931-0137-d5ea-005056a531ed','2019-10-25 08:41:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1064,'2019-10-25 10:42:43','2019-10-25 10:42:43','sielte','eJydU8tu2zAQ/BWBF58kUXLUJoTlwLARwED6itMeeikYcR0T4Kvk0nb+vpTsOAbSBkVuBDkzmp0dTa73WmVb8EFa046qgo4yMJ0V0jy2o+/3N/nl6Ho6CVyr2rFZxI25g98RAmazEMBjos2tCVGDX4Hfyg6WRsC+JZRkM0QvHyLCAZEkX0EWSUka3su0ZIPoAitLKcCgxKciSFAInbJRFBLLILVT0HspB0MJ6MrV6stRtXAbR7Ib6zsYjLYEfQSSLRct+dU0AJRzmourcZXTavwxFw085JQ2tPnAm3EFIkFDiMldQG6wJTWtrvKK5nVzTy/ZRc0uxj9J9uMYFqmLNECKzwTW22lJ9IZZHmRghmsIDDu2mn26ZQnI+HNa55TavU1y3qLtrCKHDbDBnu9H1BzfpvY3UuTrAcoOeZLsc7r9FrmSawn+JXBnPXIFRWd1NFCkYwjcCC95ip1M/ws2Kc8snhrTf3C5+GqV7J7e4Rs9N6kEBkl5kjz2D8Sw5FQthD1mc6sd9zL0i0lNkzrq59TOcXOVFnEH69NMu92uCE6K4tFu+46t0vm2Pg7zV+bh7V9GXp7Pf5bpHzgzNAU=',NULL,'_55ee0aa0-d931-0137-d5eb-005056a531ed','2019-10-25 08:42:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1065,'2019-10-25 10:44:10','2019-10-25 10:44:10','sielte','eJydU11v2jAU/SuRX3hK4oRmCxahQqBKSN1HS9eHvUxefCmWHNuzr4H++zmBUqRtVbU3yz7n5NxzT6bXh04lO3BeGt2MioyOEtCtEVI/NaNvDzdpPbqeTT3vVGnZPOBW38OvAB6TuffgMNIWRvvQgVuD28kWVlrAoSGUJHNEJ38GhCMiSv4BWUYlqXkv05AtovUsz6UAjRKfMy9BIbTKBJFJzL3srILeSz4YikCbr9dfTqqZ3VqS3BjXwmC0IegCkGS1bMiPelLXvN7QVEzGRUqL8cdUVNCmlFa0+sCrcQEiQr0P0Z1HrrEhJS0maUHTsnqgNbu6YgX9TpLHU1ikzOIAMT7tWW+nIcFpZriXnmnegWfYsvX80y2LQMZf0rqklPZtknUGTWsUOW6ADfZcP2LH8W1qfyNFuhmg7JgnST7H27vAldxIcK+BW+OQK8ha0wUNWTx6z7VwksfYyexdsGl+YfHcmP6Dq+VXo2T7/B++0XEdS6CR5GfJU/9ADEuO1UI4YLIwneVO+n4xsWmyC91Lape4hYqLuIfNeab9fp95K0X2ZHZ9x9bxfFuehvkr8/j2LyOvz5c/y+w3g7ozvA==',NULL,'_8988a8f0-d931-0137-d5ec-005056a531ed','2019-10-25 08:44:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1066,'2019-10-25 10:50:21','2019-10-25 10:50:21','sielte','eJydU8tu2zAQ/BWBF58kUTLkJoTlwLARwED6itMecilYcR0T4Kvk0nb+vpTsOAbaBEVvxHJmOTs7nN4ctMp24IO0ph1VBR1lYDorpHlqR98ebvOr0c1sGrhWtWPziFtzD78iBMzmIYDHRFtYE6IGvwa/kx2sjIBDSyjJ5ohe/owIR0Rq+QdkmTpJw/s2LdkiusDKUgowKPG5CBIUQqdsFIXEMkjtFPRaykFQArpyvf586lq4rSPZrfUdDEJbgj4CyVbLlvyYTLp6Qxuai+txndNq/CEXDYicploz4c24ApGgIcSkLiA32JKaVtd5RfO6eaBXrKGsrh5J9v1kFqmLNECyzwTWy2lJ9IZZHmRghmsIDDu2nn+8YwnI+Itbl5TavU9y3qLtrCLHDbBBnu9H1Bzfp/YVKfLNAGVHP0n2KVW/Rq7kRoJ/NdxZj1xB0VkdDRTpGAI3wkuebCezf4JNywuJ58T0D66WX6yS3fN/6EbPTQqBQVKeW57yB2JYcooWwgGzhdWOexn6xaSkSR31i2uXuIVKi7iHzXmm/X5fBCdF8WR3fcbW6XxXn4b5K/N495aQ1+vLzzL7DVVjM6k=',NULL,'_66c2f050-d932-0137-d5ed-005056a531ed','2019-10-25 08:50:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1067,'2019-10-25 12:06:13','2019-10-25 12:06:13','eidas','eJydU8tu2zAQ/BWBF58kUXKUJoTlwLARwEAStHbaQy8FI64SAhKpcpd+/H0p2bF9SIOiN2I5s5ydHU7udm0TbcChtqYcZQkfRWAqq7R5LUffn+/jm9HddIKybfJOzDy9mRX89oAUzRDBUaDNrUHfgluD2+gKlkbBrmQZ5yyaETn94gkOmND0A9AidNNG9q1K9kbUoUhT7OLO2d0+6RwkoFXyajeJplAfymmvCNGy6N66CgZhJSPngUXLRcl+1bW6uqlyHqvbcRXzbPwlVgXUMecFL65lMc5ABSiiD1qQpKGS5Ty7jTMe58VzxgW/Ftn4J4t+HM1heRLEBrsMiv71knlnhJWoURjZAgqqxHr2+CACUMh3dy4pefc5KYxGtrINOzguBnmuH7GV9Dm1r2gV1wNUgCFNexY9heo3Lxtda3BnczvrSDaQVLb1BpJwRJRGOS2DxWz6T7BJeiHxlJD+weXiq210tf8P3eSkQR3Us/TU8pg3UMOSQ5AIdhTNbdtJp7FfTMiVbn377tolbt6ERaygPs203W4T7M55WofzQ34c5kPm4e5vQs7Xl59j+gfTQy2k',NULL,'_ffd48c20-d93c-0137-d5ef-005056a531ed','2019-10-25 10:06:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1068,'2019-10-25 14:51:42','2019-10-25 14:51:42','eidas','eJydU8tu2zAQ/BWBF58kkUrUNITlwLARwEBatHHSQy4FI64TAhKpcpd+/H0p2bF9SIMiN2I5s5ydHY5vtm2TrMGjcbYaiYyPErC108a+VKPHh9v06+hmMkbVNkUnp4Fe7T38CYCUTBHBU6TNnMXQgl+CX5saFlbDtmKCc5ZMibx5DgR7TGz6Dmgeuxmr+lYVeyXqUOY5dmnn3XaXdR4yMDp7cevMUKwP5bxXhOhYcut8DYOwipEPwJLFvGK/hdZF/Qw81dflZcrFxVWqy9VVynnJyy+qvBCgIxQxRC1IylLFCi6uU8HTonwQhSyFvBRPLPl1MIcVWRQb7bIo+9crFryVTqFBaVULKKmWy+m3OxmBUr25c04puo9JcTRytWvY3nE5yPP9iK2ij6l9xeh0NUAlWDK0Y8n3WP0ZVGNWBvzJ3M55Ug1ktWuDhSweEZXV3qhoMZv8F2ycn0k8JqR/cDH/4RpT7z6hm7yyaKJ6lh9bHvIGelhyDBLBlpKZazvlDfaLibkybWjfXDvHzZq4iHtYHWfabDYZdqc8LeP5rjgM8y5zf/cvIafr888x+QtU+y1w',NULL,'_1dd2cbe0-d954-0137-d5f7-005056a531ed','2019-10-25 12:51:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1069,'2019-10-25 14:51:54','2019-10-25 14:51:54','arubaid','eJydU11rGzEQ/CuHXvx0n4kaR/gcjE3A4JY2Hy30pSintSPQSVftynb+fXVnxzG0DaVvYndmb3Z2bnKzb02yBY/a2XpUZsUoAds4pe2mHj0+3Kbj0c10grI1VSdmgZ7tHfwMgJTMEMFTpM2dxdCCvwe/1Q0srYJ9zQqWzIi8fgoEB0Qc+RtkESdpK/sxNXsm6lDkuXEbbbHTKpM+PMlMU34krvrONzCNa4Elt843MGiqGfkQK8tFzX5U/EqNoSlSdc0v06K8uEoVX4/TouAF/yD5RQkqQhFDFIIkLdWsKsrrtCzSij+UleCl4JffWfL16Aursqg1OmVR9FbULHgrnESNwsoWUFAj7mcfVyIChXw15pxSde+TOu/INc6wg9likOf7FVtJ71P7ilbpeoAKsKTphSWfYvVLkEavNfg3bzvnSRrIooPBQhafiNIqr3ub2fSfYJP8TOIpHP0Hl4vPzujm5T90k5cWdVTP8tPIY9RADUeOKSLYUzJ3bSe9xv4wMVS6De2ra+e4uYmHuIP1aafdbpcNqdq47ZCp+F5Vx2X+yDz0/ibkrX3+X0x/AY1CLAE=',NULL,'_257d8ec0-d954-0137-d5f8-005056a531ed','2019-10-25 12:51:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1070,'2019-10-25 15:38:24','2019-10-25 15:38:24','sielte','eJydU9tuGjEQ/ZWVX3jaK2wbLJYIgSIhpbds2oe+VM56CJZ8qz0G8vf1LoQgpY2qvI3sc8ZnzhzPrg9KJjtwXhjdjMqsGCWgO8OFfmxG3+9v0qvR9XzmmZKVpYuAW30HvwN4TBbeg8NIWxrtgwLXgtuJDtaaw6EhBUkWiE48BIQjIrZ8BVnFTkKzvk1DtojW0zwXHDQKfMq8AInQSRN4JjD3QlkJvZZ8EBSBNm/bL6eumd1aktwY18EgtCHoApBkvWrILzYpJg/TSZHyac3Sohx/THm9iVVRF/UHVo9L4BHqfYjqPDKNDamKcpqWRVrV9+WYjq9oNflJkh8ns0iVxQGifdrTXk5DgtPUMC881UyBp9jRdvHplkYgZc9uXVIq+zbJOoOmM5IcN0AHea4fUTF8m9qfCJ5uBig9+kmSz/H0W2BSbAS4F8OtccgkZJ1RQUMWS++Z5k6waDuZ/xdsll9IPCemf3C9+mqk6J7eoRsd0zEEGkl+bnnKH/BhyTFaCAdMlkZZ5oTvFxOTJlRQz65d4pYyLuIONueZ9vt95q3g2aPZ9RlrY31bnYb5K/N49y8hL9eXn2X+B8n8M9k=',NULL,'_a404b940-d95a-0137-d5fa-005056a531ed','2019-10-25 13:38:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1071,'2019-10-25 16:15:51','2019-10-25 16:15:51','sielte','eJydU8tu2zAQ/BWBF5/0TNU2hOXAsBHAQPqK0xx6KRhyFRPgq+TSdv6+lOw4BtoERW8LcmY5OzucXu21yrbgg7Smm9RFNcnAcCukeewm3++u84+Tq9k0MK0aR+cRN+YWfkUImM1DAI+JtrAmRA1+DX4rOayMgH1HKpLNEb18iAgHRGr5B2SZOknDhjYd2SC6QMtSCjAo8akIEhQCVzaKQmIZpHYKBi3lKCgBXblefzl2LdzGkezaeg6j0I6gj0Cy1bIjP0XPef/Aq1xctn1e1RcfctH2qaraqn3P2osaRIKGEJO6gMxgR5qqvszrKm/au/odrVva1j9Idn80izRFGiDZZwId5HQkekMtCzJQwzQEipyu559uaAJS9uzWOaVxb5Oct2i5VeSwATrK88OImuHb1OFEirwfofTgJ8k+p9NvkSnZS/AvhjvrkSkouNXRQJHKEJgRXrJkO5n9E2xankk8JWZ4cLX8apXkT/+hGz0zKQQGSXlqecwfiHHJKVoIe8wWVjvmZRgWk5ImddTPrp3jFiot4hb600y73a4ITori0W6HjK1TfdMch/kr83D3mpCX6/PPMvsNNPo00g==',NULL,'_dfccfbc0-d95f-0137-d5ff-005056a531ed','2019-10-25 14:15:51',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1072,'2019-10-25 16:16:15','2019-10-25 16:16:15','sielte','eJydU8tu2zAQ/BWBF58kUUrkNITlwLARwED6SJz20EvBiOuYAF8ll7bz96VkxzHQNih6I8iZ0ezsaHKz1yrbgg/SmnZUFXSUgemskOa5HX19vM0/jG6mk8C1qh2bRdyYB/gZIWA2CwE8JtrcmhA1+BX4rexgaQTsW0JJNkP08ikiHBBJ8jfIIilJw3uZlmwQXWBlKQUYlPhSBAkKoVM2ikJiGaR2Cnov5WAoAV25Wn0+qhZu40h2a30Hg9GWoI9AsuWiJT9A8Oby6onm4rpZ57S6uMrFmNKc0oY2Y95cVCASNISY3AXkBltS0+o6r2heN4/VJavGrGq+k+zbMSxSF2mAFJ8JrLfTkugNszzIwAzXEBh2bDX7eMcSkPHXtM4ptXuf5LxF21lFDhtggz3fj6g5vk/tb6TI1wOUHfIk2ad0ex+5kmsJ/i1wZz1yBUVndTRQpGMI3AgveYqdTP8JNinPLJ4a039wufhilexe/sM3em5SCQyS8iR57B+IYcmpWgh7zOZWO+5l6BeTmiZ11K+pnePmKi3iAdanmXa7XRGcFMWz3fYdW6XzXX0c5o/Mw9vfjLw9n/8s01/SMjPZ',NULL,'_eda547b0-d95f-0137-d600-005056a531ed','2019-10-25 14:16:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1073,'2019-10-25 16:17:25','2019-10-25 16:17:25','arubaid','eJydU2Fr2zAQ/StGX/LJtuzOziLilJBQCGRja7sV9mWo1iUV2JKnOyXpv5/spGlgaxn7Ju7eO7979zy9PrRNtAOH2ppqlCV8FIGprdJmW42+3d/EH0fXsynKtsk7Mff0ZG7hlwekaI4IjgJtYQ36FtwduJ2uYWUUHCrGWTQncvrRExwRYeQfkGWYpI3sx1TsiahDkaaN3WqDnVaJdP5RJprSE3Hddx6gqW0LLLqxroZBU8XI+VBZLSv2MxuXipcTHqtJyWOeXY1jVfIs5rzgRSmLqwxUgCL6IARJGqpYzrNJnPE4L+6zDyIbi7z4waLvJ19YngStwSmDoreiYt4ZYSVqFEa2gIJqcTf/tBYBKOSLMZeUvHuf1DlLtrYNO5otBnmuX7GV9D61r2gVbwaoAEOanln0OVS/etnojQb36m1nHckGkuCgN5CEJ6I0yuneZjb7J9g0vZB4Dkf/wdXyi210/fwfuslJgzqoZ+l55ClqoIYjhxQRHCha2LaTTmN/mBAq3fr2xbVL3KIJh7iFzXmn/X6fDKna2t2QqfBe56dl/so89t4S8tq+/C9mvwEJcCtj',NULL,'_176d0690-d960-0137-d601-005056a531ed','2019-10-25 14:17:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1074,'2019-10-25 17:23:28','2019-10-25 17:23:28','sielte','eJydU02P2jAU/CuRL5ySOEGhi0VYIdBKSNuvZdtDL5UbPxZL/qr9DOy/rxNYFqntqurNsmcm8+ZNZrdHrbI9+CCtaUdVQUcZmM4KaZ7a0ZfHu/xmdDufBa5V7dgi4s48wM8IAbNFCOAx0ZbWhKjBb8DvZQdrI+DYEkqyBaKXPyLCCZEkf4OskpI0vJdpyQ7RBVaWUoBBic9FkKAQOmWjKCSWQWqnoPdSDoYS0JWbzcezauF2jmR31ncwGG0J+ggkW69a8r2pJls67WguppNpTqvxu1xMaJ1T2tBmwptxBSJBQ4jJXUBusCU1raZ5RfO6eawaVo9ZffONZF/PYZG6SAOk+ExgvZ2WRG+Y5UEGZriGwLBjm8X7e5aAjL+kdU2p3dsk5y3azipy2gAb7Pl+RM3xbWp/I0W+HaDslCfJPqTbz5EruZXgXwN31iNXUHRWRwNFOobAjfCSp9jJ/J9gs/LK4qUx/QfXq09Wye75P3yj5yaVwCApL5Ln/oEYlpyqhXDEbGm1416GfjGpaVJH/ZLaNW6p0iIeYHuZ6XA4FMFJUTzZfd+xTTrf1+dh/sg8vf3NyOvz9c8y/wWHMzNU',NULL,'_516f09c0-d969-0137-d602-005056a531ed','2019-10-25 15:23:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1075,'2019-10-25 18:33:57','2019-10-25 18:33:57','poste','eJydU0Fu2zAQ/IrAi0+SKAmyG8JyYNgIYCAt2jjpoZeAFdcJC4lUuUvb+X0p2XEFtAmKnkiQM8vZ2eH8+tg20R4camuqSZbwSQSmtkqbp2rycH8Tf5hcL+Yo2ybvxNLTs7mDnx6QoiUiOAq0lTXoW3BbcHtdw8YoOFaMs2hJ5PR3T3BChJJ/QNahkjayL1OxZ6IORZp2Fgm0SoY10ZT+sCreYYpo8VTAgdIOamLRjXU1DLoqRs4Dizbrij3msuRqxnmsrmZFzLNiFqspL2POS15OZVlkoAIU0QcxSNJQxXKeXcUZj/PyPpuKohDl7BuLvp69YXkS9Aa3DIrejop5Z4SVqFEY2QIKqsV2+fFWBKCQr+aMKXn3PqlzlmxtG3YyXAzyXN9iK+l9an+ig0kDVIAhTS8s+hROv3jZ6J0GN/bXkWwgqW3rDSRhiyiNcloGs9nin2DzdCTxEpD+wc36s210/fIfuslJgzqoZ+ml5DluoIYhhyQRHCla2baTTmM/mBAs3fr21bUxbtWEQdzB7tLT4XBIsAvZerL7PlnbsL/Nz838lXm6e0vI7+vx31j8AiKlLVU=',NULL,'_2a50d700-d973-0137-d605-005056a531ed','2019-10-25 16:33:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1076,'2019-10-25 21:07:55','2019-10-25 21:07:55','sielte','eJydU01v4jAU/CuRL5ySOKlCwSJUCFQJqfvVtHvoZeWNH8VS/LH2M9B/v06gFGm31Wpvlj0zmTdvMrs5qC7ZgfPS6HpUZHSUgG6NkPq5Hj0+3KaT0c185rnqSssWAbf6Hn4F8JgsvAeHkbY02gcFrgG3ky2stYBDTShJFohO/gwIR0SU/AOyikpS816mJltE61meSwEaJb5kXkKH0HYmiExi7qWyHfRe8sFQBNq8ab6cVDO7tSS5Na6FwWhN0AUgyXpVkx+85VNRTWkqppNJSour61SM6TiltKLVmFdXBYgI9T5Edx65xpqUtJimBU3L6qGYMnrNquqJJN9PYZEyiwPE+LRnvZ2aBKeZ4V56prkCz7BlzeLTHYtAxl/TuqSU9mOSdQZNazpy3AAb7Ll+RMXxY2p/I0W6GaDsmCdJPsfbb4F3ciPBvQVujUPeQdYaFTRk8eg918JJHmMn83+CzfILi+fG9B9cr76aTrYv/+EbHdexBBpJfpY89Q/EsORYLYQDJkujLHfS94uJTZMqqNfULnHLLi7iHjbnmfb7featFNmz2fUda+L5rjwN81fm8e09I2/Plz/L/DeVrTPB',NULL,'_aca9d590-d988-0137-d606-005056a531ed','2019-10-25 19:07:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1077,'2019-10-25 21:12:39','2019-10-25 21:12:39','sielte','eJydU02P2jAU/CuRL5ySOKFhiUVYIdBKSNuvZdtDL5UbPxZLju3az8D++zqBZZHarqreLHtmMm/eZHZ77FSyB+el0c2oyOgoAd0aIfVTM/ryeJdOR7fzmeedKi1bBNzpB/gZwGOy8B4cRtrSaB86cBtwe9nCWgs4NoSSZIHo5I+AcEJEyd8gq6gkNe9lGrJDtJ7luRSgUeJz5iUohFaZIDKJuZedVdB7yQdDEWjzzebjWTWzO0uSO+NaGIw2BF0AkqxXDfleTcbv+FTQVNTTOqXF+CYVE3qTUlrRasKrcQEiQr0P0Z1HrrEhJS3qtKBpWT0WNStKNq6/keTrOSxSZnGAGJ/2rLfTkOA0M9xLzzTvwDNs2Wbx/p5FIOMvaV1TSvs2yTqDpjWKnDbABnuuH7Hj+Da1v5Ei3Q5QdsqTJB/i7efAldxKcK+BW+OQK8ha0wUNWTx6z7VwksfYyfyfYLP8yuKlMf0H16tPRsn2+T98o+M6lkAjyS+S5/6BGJYcq4VwxGRpOsud9P1iYtNkF7qX1K5xSxUX8QDby0yHwyHzVorsyez7jm3i+b48D/NH5untb0Zen69/lvkvo28zYA==',NULL,'_5634a8d0-d989-0137-d607-005056a531ed','2019-10-25 19:12:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1078,'2019-10-25 21:14:34','2019-10-25 21:14:34','sielte','eJydU02P2jAU/CuRL5ySOGGhxCKsEGglpO3XZttDL5UbPxZL8UftZ2D/fZ3AskhtV1Vvlj0zmTdvMr89qi7Zg/PS6HpUZHSUgG6NkPqpHn15vEtno9vF3HPVlZYtA+70A/wM4DFZeg8OI21ltA8KXANuL1vYaAHHmlCSLBGd/BEQTogo+RtkHZWk5r1MTXaI1rM8lwI0SnzOvIQOoe1MEJnE3EtlO+i95IOhCLR503w8q2Z2Z0lyZ1wLg9GaoAtAks26Jt8rPt1W45amoppVKS3G71IxpbOU0gmdTPlkXICIUO9DdOeRa6xJSYsqLWhaTh6LihU3bHzzjSRfz2GRMosDxPi0Z72dmgSnmeFeeqa5As+wZc3y/T2LQMZf0rqmlPZtknUGTWs6ctoAG+y5fkTF8W1qfyNFuh2g7JQnST7E28+Bd3Irwb0Gbo1D3kHWGhU0ZPHoPdfCSR5jJ4t/gs3zK4uXxvQf3Kw/mU62z//hGx3XsQQaSX6RPPcPxLDkWC2EIyYroyx30veLiU2TKqiX1K5xqy4u4gG2l5kOh0PmrRTZk9n3HWvi+b48D/NH5untb0Zen69/lsUvJgQzlA==',NULL,'_9a6f93c0-d989-0137-d608-005056a531ed','2019-10-25 19:14:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1079,'2019-10-25 22:30:30','2019-10-25 22:30:30','poste','eJydU11r2zAU/StGL3myLTtNlog4JSQUAt3Ymq4PfRmqddNq2JKne5Wk/36yk2aGflAGAgvp3ONzzz2aXR7qKtqBQ21NMcgSPojAlFZp81gMft5exZPB5XyGsq7yRiw8PZkb+OMBKVoggqNQtrQGfQ1uA26nS1gbBYeCcRYtiJx+8ARHRKB8BVkFJm1kS1OwJ6IGRZo2Fgm0Srpvoin9bVW8xRTR4pHAgdIOSmLRlXUldLoKRs4Di9argv0aji8expMJj9V0ehHzbPglVmM+jTkf8dFYjoYZqABF9EEMkjRUsJxn0zjjcT66zbkYtuueRXcnb1ieBL3BLYOitaNg3hlhJWoURtaAgkqxWXy9FgEo5Is5/ZK8+biocZZsaSt2NFx08lzbYi3p49L2RAeTOqgAQ5qeWfQtnP7wstJbDa7vryNZQVLa2htIwhZRGuW0DGaz+adgs7Qn8RyQ9ofr1Xdb6fL5P3STkwZ1UM/SM+UpbqC6IYckERwoWtq6kU5jO5gQLF37+sW1Pm5ZhUHcwPbc036/T7AJ2Xq0uzZZm7C/zk/NvFl5vHtPyL/r/tuY/wXC3C0t',NULL,'_364b6880-d994-0137-d609-005056a531ed','2019-10-25 20:30:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1080,'2019-10-25 22:32:37','2019-10-25 22:33:27','poste','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','_81a39b20-d994-0137-d60a-005056a531ed','2019-10-25 20:32:37','_73071ac0-2f87-4b36-b841-67e38615f9b7','2019-10-25 20:33:27','https://posteid.poste.it','_d5e9e81f-0166-4369-8ae9-9a5f993aeb63','SPID-3b396be8-4b04-4c9e-839c-941a4544cbb2','https://posteid.poste.it',1096),(1081,'2019-10-25 22:39:39','2019-10-25 22:39:39','poste','eJydU9Fq2zAU/RWjlzzZlh3c1iJOCQmFQDe2pt1DX4Zq3bQatuTpXiXp30920sywtYyBwEI69/jcc49m14e2iXbgUFtTTbKETyIwtVXaPFeTh/ub+GpyPZ+hbJu8EwtPL+YOfnpAihaI4CiULa1B34LbgNvpGtZGwaFinEULIqefPMERESj/gKwCkzayp6nYC1GHIk07iwRaJcM30ZT+sCreYopo8UjgQGkHNbHoxroaBl0VI+eBRetVxb5fqjK/ksBjVZZFzLPpZawu+FPMecGLC1lMM1ABiuiDGCRpqGI5z8o443Fe3OdcTMuwHln07eQNy5OgN7hlUPR2VMw7I6xEjcLIFlBQLTaLT7ciAIV8M2dckncfF3XOkq1tw46Gi0Ge61tsJX1c2p/oYNIAFWBI0yuLPofTr142eqvBjf11JBtIatt6A0nYIkqjnJbBbDb/J9gsHUk8B6T/4Xr1xTa6fv0P3eSkQR3Us/RMeYobqGHIIUkEB4qWtu2k09gPJgRLt759c22MWzZhEHewPfe03+8T7EK2nu2uT9Ym7G/zUzN/rTzevSfk9/X4bcx/ATvxLcg=',NULL,'_7d928ae0-d995-0137-d60b-005056a531ed','2019-10-25 20:39:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1082,'2019-10-25 23:15:25','2019-10-25 23:15:25','eidas','eJydU01P4zAQ/SuRLz0lcVKFUqspqlohVWJXLAUOXFbeeAqWEjvrGffj36+TlrYHFiFu1vi98Zs3z5ObXVNHG3CorSkHWcIHEZjKKm1ey8HT4218PbiZTlA2dd6Kmac38wB/PSBFM0RwFGhza9A34FbgNrqCpVGwK1nGOYtmRE7/8QQHTGj6AWgRumkju1YleyNqUaQptnHr7G6ftA4S0Cp5tZtEU6j35bRThGhZdGtdBb2wkpHzwKLlomS/R9V4pIohj9V4LGOeDUexuuJVzHnBiytZDDNQAYrogxYkaahkOc/GccbjvHjMM5EVIi9eWPR8NIflSRAb7DIoutdL5p0RVqJGYWQDKKgSq9mPOxGAQr67c0nJ289JYTSyla3ZwXHRy3PdiI2kz6ldRat43UMFGNK0Z9HPUP3lZa3XGtzZ3NY6kjUklW28gSQcEaVRTstgMZt+CTZJLySeEtI9uFzc21pX+2/oJicN6qCepaeWx7yB6pccgkSwo2hum1Y6jd1iQq5045t31y5x8zos4gHWp5m2222C7TlPq3C+y4/DfMg83P1PyPn68nNM/wGAyy0b',NULL,'_7c97d530-d99a-0137-d60c-005056a531ed','2019-10-25 21:15:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1083,'2019-10-26 00:04:37','2019-10-26 00:04:37','eidas','eJydU01P4zAQ/SuRLz0lcVJSwGqKqlZIldjVQoEDl5U3noKlxM56xv349+ukpe2BRYibNX5v/ObN8/hm29TRGhxqa8pBlvBBBKaySpvXcvD0eBtfDW4mY5RNnbdi6unNPMBfD0jRFBEcBdrMGvQNuCW4ta5gYRRsS5ZxzqIpkdN/PMEeE5p+AJqHbtrIrlXJ3ohaFGmKbdw6u90lrYMEtEpe7TrRFOp9Oe0UIVoW3VpXQS+sZOQ8sGgxL9nvosouqpHksbqWWcyz4WWsRlzFnBe8GMlimIEKUEQftCBJQyXLeXYdZzzOi8c8F/xCDC9fWPR8MIflSRAb7DIoutdL5p0RVqJGYWQDKKgSy+mPOxGAQr67c07J289JYTSyla3Z3nHRy3PdiI2kz6ldRat41UMFGNK0Y9HPUL33stYrDe5kbmsdyRqSyjbeQBKOiNIop2WwmE2+BBunZxKPCekeXMx/2VpXu2/oJicN6qCepceWh7yB6pccgkSwpWhmm1Y6jd1iQq5045t3185xszos4gFWx5k2m02C7SlPy3C+yw/DfMjc3/1PyOn6/HNM/gHFmS03',NULL,'_5c14c6a0-d9a1-0137-d60d-005056a531ed','2019-10-25 22:04:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1084,'2019-10-26 09:19:54','2019-10-26 09:19:54','sielte','eJydU8tu2zAQ/BWBF58kUUrl1ITlwLARwED6SJT20EvBiquYAEWy5NJ2/r6U7DgG2gZFbwQ5M5qdHc1vDr1KduC8NLqeFBmdJKBbI6R+qidfHm/T95ObxdzzXpWWLQNu9QP8DOAxWXoPDiNtZbQPPbgG3E62sNECDjWhJFkiOvkjIBwRUfI3yDoqSc0HmZpsEa1neS4FaJT4nHkJCqFVJohMYu5lbxUMXvLRUATavGk+nVQzu7UkuTWuhdFoTdAFIMlmXZPvAFVXVUBTMQNIaXF1nYop7VJKK1pNeXVVgIhQ70N055FrrElJi1la0LScPtJrVsxY9e4bSb6ewiJlFgeI8WnPBjs1CU4zw730TPMePMOWNcsPdywCGX9J65JS2rdJ1hk0rVHkuAE22nPDiD3Ht6nDjRRpN0LZMU+SfIy394Er2Ulwr4Fb45AryFrTBw1ZPHrPtXCSx9jJ4p9g8/zC4rkxwwc3689Gyfb5P3yj4zqWQCPJz5Kn/oEYlxyrhXDAZGV6y530w2Ji02Qf+pfULnErFRfxAN15pv1+n3krRfZkdkPHmni+K0/D/JF5fPubkdfny59l8QvvhjRP',NULL,'_ee5f55e0-d9ee-0137-d60f-005056a531ed','2019-10-26 07:19:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1085,'2019-10-26 12:02:32','2019-10-26 12:02:32','eidas','eJydU8tu2zAQ/BWBF58oUTRkt4TlwLARwEBatHHaQy8FK60TAhKpcpd+/H0p2bF9SIOiN2I5s5ydHc7uDm2T7MCjcbYc5akYJWArVxv7XI6+Pd3zD6O7+Qx128hOLQK92Ef4HQApWSCCp0hbOouhBb8BvzMVrG0Nh5LlQrBkQeTNr0BwwsSmb4BWsZuxum9VsheiDlWWYcc77w7HtPOQgqnTZ7dLDcX6UM56RYiOJffOVzAIKxn5ACxZr0r2U0+mYioLwWstCi7y8ZTXkzznQhSimOhinEMdoYghakHSlkomRf6R54LLyVMulJBqLH+w5PvZHCbTKDbaZVH1r5cseKucRoPK6hZQUaU2i08PKgKVfnXnliK790lxNHKVa9jJcTXI8/2Irab3qX3F1Hw7QBVYMnRkyedY/Rp0Y7YG/NXcznnSDaSVa4OFNB4Rta290dFiNv8n2Cy7kXhJSP/gevXFNaY6/odu8tqiiepZdml5zhvUw5JjkAgOlCxd22lvsF9MzJVpQ/vq2i1u2cRFPML2MtN+v0+xu+ZpE88P8jzMm8zT3d+EXK9vP8f8D0usLJw=',NULL,'_a6707250-da05-0137-d611-005056a531ed','2019-10-26 10:02:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1086,'2019-10-26 16:32:36','2019-10-26 16:32:36','poste','eJydU0Fu2zAQ/IrAi0+SKKlWG8JyYNgIYCAt2jjtoZeAEdcJA4lUuUvb+X0p2XEFNA2KnEiQM8vZ2eHs8tA20Q4camuqSZbwSQSmtkqbh2ry/fYq/jS5nM9Qtk3eiYWnR3MDvzwgRQtEcBRoS2vQt+A24Ha6hrVRcKgYZ9GCyOl7T3BEhJJ/QVahkjayL1OxR6IORZp2Fgm0SoY10ZQ+WRVvMUW0eCzgQGkHNbHoyroaBl0VI+eBRetVxe7KLOdQXvBYyfw+5lnxMVZlVsScT/m0lNMiAxWgiD6IQZKGKpbz7CLOeJyXt9kHUeSiKH+y6MfJG5YnQW9wy6Do7aiYd0ZYiRqFkS2goFpsFp+vRQAK+WLOmJJ3b5M6Z8nWtmFHw8Ugz/UttpLepvYnOpg0QAUY0vTMoi/h9JuXjd5qcGN/HckGktq23kAStojSKKdlMJvN/ws2S0cSzwHpH1yvvtpG18/v0E1OGtRBPUvPJU9xAzUMOSSJ4EDR0raddBr7wYRg6da3L66NccsmDOIGtuee9vt9gl3I1oPd9cnahP11fmrmVebx7l9C/lyP/8b8N39gLXs=',NULL,'_6120e690-da2b-0137-d613-005056a531ed','2019-10-26 14:32:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1087,'2019-10-27 20:09:44','2019-10-27 20:09:44','sielte','eJydU01v4jAU/CuRL5ySOCnQxSJUCFQJqfvRpruHvaxM/CiWHNtrPwP99+sESpG2rVZ7s+yZybx5k+nNoVXJDpyXRleDIqODBHRjhNRP1eD74236aXAzm3reqtKyecCtfoDfATwmc+/BYaQtjPahBVeD28kGVlrAoSKUJHNEJ9cB4YiIkn9BllFJat7JVGSLaD3LcylAo8TnzEtQCI0yQWQScy9bq6DzkveGItDmdf31pJrZrSXJrXEN9EYrgi4ASVbLivwalmMqRiVNxbpYp7S4uk7FuNiklI7oaMxHVwWICPU+RHceucaKlLSYpAVNy+vHYsLohA2HP0ny4xQWKbM4QIxPe9bZqUhwmhnupWeat+AZNqyef75jEcj4S1qXlNJ+TLLOoGmMIscNsN6e60ZsOX5M7W6kSDc9lB3zJMmXeHsfuJIbCe41cGsccgVZY9qgIYtH77kWTvIYO5n9E2yaX1g8N6b74Gr5zSjZPP+Hb3RcxxJoJPlZ8tQ/EP2SY7UQDpgsTGu5k75bTGyabEP7ktolbqHiIh5gc55pv99n3kqRPZld17E6nu/K0zBvMo9v7xl5fb78WWZ/AE2kM6c=',NULL,'_4260d520-db1b-0137-d61f-005056a531ed','2019-10-27 19:09:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1088,'2019-10-27 22:12:39','2019-10-27 22:12:39','poste','eJydU0Fu2zAQ/IrAi0+SKLp2EsJyYNgIYCAt2jjtoZeCEdcJC4lUuUvb+X0p2XEFNAmKnkiQM8vZ2eHs+tDUyQ48GmfLUZHxUQK2ctrYx3L09f4mvRxdz2eomlq0chHoyd7BrwBIyQIRPEXa0lkMDfgN+J2pYG01HErGWbIg8uYhEBwRseRfkFWsZKzqypTsiahFmeetQwKjs37NDOU/nU63mCM6PBbwoI2Hilhy43wFva6SkQ/AkvWqZD+mMOHw4ZKn+kFUKS/GF6meCpFyPuGTqZqMC9ARihiiGCRlqWSCF1dpwVNxcS8KWQg5vvrOkm8nb5jIot7olkXZ2VGy4K10Cg1KqxpASZXcLD7eygiU6sWcIUW075Na78hVrmZHw2Uvz3ctNorep3YnJprUQyVYMvTMkk/x9EtQtdka8EN/Pakasso1wUIWt4jKam9UNJvN/wk2ywcSzwHpHlyvPrvaVM//oZu8smiiepafS57iBrofckwSwYGSpWta5Q12g4nBMk1oXlwb4pZ1HMQdbM897ff7DNuYrUe365K1iftbcWrmVebx7i0hf66Hf2P+GwXwLbE=',NULL,'_6e50e480-db2c-0137-d622-005056a531ed','2019-10-27 21:12:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1089,'2019-10-28 08:32:26','2019-10-28 08:32:26','sielte','eJydU11v2jAU/SuRX3hK4iSCgkWoEKgSUvfVdHvYy+TGl2LJsT37Gui/nxMoRdpWTXu7ss+5Pvfc4/ntsVPJHpyXRtejIqOjBHRrhNTP9ejr4106Hd0u5p53qrRsGXCnH+BnAI/J0ntwGGkro33owDXg9rKFjRZwrAklyRLRyaeAcELElr9B1rGT1LxvU5MdovUsz6UAjRJfMi9BIbTKBJFJzL3srIJeSz4IikCbN82nc9fM7ixJ7oxrYRBaE3QBSLJZ1+QHrWazKVQ0FU/TKqVFdZOKSRkrOqbjCR9XBYgI9T5EdR65xpqUtJilBU3L6SO9YVXJysl3knw7m0XKLA4Q7dOe9XJqEpxmhnvpmeYdeIYta5Yf7lkEMv7q1jWltO+TrDNoWqPIaQNskOf6ETuO71P7EynS7QBlJz9J8jGefglcya0E92a4NQ65gqw1XdCQxdJ7roWTPNpOFv8Em+dXEi+J6R/crD8bJduX/9CNjusYAo0kv7Q85w/EsOQYLYQjJivTWe6k7xcTkya70L26do1bqbiIB9heZjocDpm3UmTPZt9nrIn1fXke5o/M093fhLxdX3+WxS+IQjNV',NULL,'_03998e30-db83-0137-d623-005056a531ed','2019-10-28 07:32:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1090,'2019-10-28 13:43:05','2019-10-28 13:43:05','arubaid','eJydU2Fr2zAQ/StGX/LJtuw0XivilJBQCGRja7sV+mUo1iUV2JKrOyXpv5/spGlgayn7Ju7eO7979zy+3jd1tAWH2ppykCV8EIGprNJmUw5+3t/El4PryRhlU+etmHp6Mrfw7AEpmiKCo0CbWYO+AXcHbqsrWBgF+5JxFk2JnF55ggMijPwLMg+TtJHdmJI9EbUo0rS2G22w1SqRzq9koik9Epdd5wHqyjbAohvrKug1lYycD5XFvGS/i6uiKmTBY7WSEPNs+CVWRa5izkd8VMjRMAMVoIg+CEGShkqW8+wqznicX95nubgYCj56ZNGvoy8sT4LW4JRB0VlRMu+MsBI1CiMbQEGVuJt+XYoAFPLVmHNK3n5Map0lW9maHcwWvTzXrdhI+pjaVbSK1z1UgCFNLyz6Fqo/vKz1WoN787a1jmQNSXDQG0jCE1Ea5XRnM5t8CjZOzySewtF9cDH/bmtdvfyHbnLSoA7qWXoaeYwaqP7IIUUEe4pmtmml09gdJoRKN755de0cN6vDIW5hfdppt9slfao2dttnKryX+XGZfzIPvfeEvLXP/4vJH1XgLFM=',NULL,'_696c6a60-dbae-0137-d62d-005056a531ed','2019-10-28 12:43:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1091,'2019-10-28 22:47:58','2019-10-28 22:47:58','eidas','eJydU8tu2zAQ/BWCF58kUXIdK4TlwLARwEBatHHaQy8FI60SAhKpcpd+/H0p2bF9SIOiN2I5s5ydHc7u9m3DtuBQW1OM0liMGJjSVtq8FKPvT/dRPrqbz1C1TdbJhadX8wi/PSCxBSI4CrSlNehbcBtwW13C2lSwL3gqBGcLIqefPcERE5q+A1qFbtqovlXBX4k6lEmCXdQ5uz/EnYMYdBW/2G2sKdSHctIrQrSc3VtXwiCs4OQ8cLZeFfxXPr2t02kuouq5VpFIx9OouhmnkRATMblRk3EKVYAi+qAFSRkqeCbS2ygVUZY/Zan8NJWT/CdnP07m8CwOYoNdBmX/esG9M9Iq1CiNagEllXKz+PwgA1CqN3euKVn3MSmMRra0DT86Lgd5rh+xVfQxta/oKqoHqARDmg6cfQnVb141utbgLuZ21pFqIC5t6w3E4YioTOW0Chbz+T/BZsmVxHNC+gfXq6+20eXhP3STUwZ1UM+Tc8tT3qAalhyCRLAntrRtp5zGfjEhV7r17Ztr17hlExbxCPV5pt1uF2N3ydMmnB+y0zDvMo93fxNyub7+HPM/nmEtKA==',NULL,'_879f1780-dbfa-0137-d631-005056a531ed','2019-10-28 21:47:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1092,'2019-10-28 23:37:52','2019-10-28 23:37:52','namirialid','eJydU8tu2zAQ/BWBF58kURSUuITlwLARwED6spMeeikYcp0sIJEqubKdvy9lO46BtkHRG7GcWc7MLic3+7ZJtuADOluPioyPErDaGbRP9ejh/jYdj26mk6DaRnRy1tOzXcHPHgIlsxDAU6TNnQ19C34NfosaltbAvmacJTMij489wRERW/4GWcROaNXQpmbPRF2QeY6my6xq0aNqKHSZdu1QyzvvNthAvp59vBP5Cgx60JSv159Zcuu8hoO+mpHvgSXLRc1+jHlZaf7IU6N5kfKivE7NVSlSziteXamqLMBEaAh9FBVIWaqZ4MWHtOCpGN8LIctrWYnvLPl2yoiJLOqOqdkgh1hq1nsrnQoYZBQNQZKWg0IZgVK9hnRJEd37pOiTnHYNOwYvD/L8YLFV9D51qKBJNweoBEtILyz5FKtfe9XgBsG/5dw5T6qBId/eQhaPIShrYuwZEpv+E2ySX0g8L8rw4HLxxTWoX/5DN3llA0b1LD+3PK0dmMOQ40YR7CmZu7ZTHsMwmLhg2Pbta2qXuHkTB7GCzdnTbrfLQocme3Lb6CJfx/OdOJn5I/N49zchb9eXf2T6C44cLv0=',NULL,'_8035c0b0-dc01-0137-d632-005056a531ed','2019-10-28 22:37:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1093,'2019-10-28 23:37:53','2019-10-28 23:37:53','tim','eJydU9Fu2jAU/ZXILzwlcRLRgkWoEKgSUjdtpd3DXiaT3FBLsZ35XgP9+zmBUqRt1bQ36/qc63PPPZ7dHXUb7cGhsqYcZQkfRWAqWyuzK0fPT/fxZHQ3n6HUbd6JhacX8wg/PSBFC0RwFGhLa9BrcBtwe1XB2tRwLBln0YLIqa0nOCFCy98gq9BJGdm3KdkLUYciTVu7UyZRdUJKJ4pS2TQH2OKJi2nnt62q0kETomXRvXUVDNpKRs4Di9arkv2Y8GmTySmP64pnMc+K27i+KYqY8zEf38hxkUEdoIg+CEKShkqW82waZzzOJ095LopbMS6+s+jb2R+WJ0FzcMyg6J8vmXdGWIkKhZEaUFAlNotPDyIAhXwz6JqSdx+TOmfJVrZlJ9PFIM/1I2pJH1P7iqrjZoAKMKTolUWfQ/Wrl61qFLh3jzvrSLaQVFZ7A0k4IkpTOyWD42z+T7BZeiXxEpL+wfXqiw07ev0P3eSkQRXUs/TS8hw5qIclhzQRHClaWt1Jp7BfTAiX0l6/uXaNW7ZhEY/QXGY6HA4JdiFeO7vv47UJ54f8PMwfmae7vwl5v77+H/NfbNIulw==',NULL,'_809f1a90-dc01-0137-d633-005056a531ed','2019-10-28 22:37:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1094,'2019-10-28 23:37:54','2019-10-28 23:37:54','poste','eJydU9Fu2jAU/RXLLzwlcUIp1CJUCFQJqZu20u1hL5MXX1pPiZ35XgP9+zmBskjbqmlPtuxzrs8993h+e2xqtgePxtlylKdixMBWThv7VI4+Pd4ls9HtYo6qqYtWLgM92wf4EQCJLRHBU6StnMXQgN+C35sKNlbDseSCsyWRN98CwQkRS/4GWcdKxqquTMmfiVqUWdY6JDA67dfUUPbd6WSHGaLDUwEP2nioiLM75yvodZWcfADONuuSf53lsynonUh0JfJE5ONpoq/HV4kQEzG5VpNxDjpCEUMUg6QslbwQ+U2Si6SYPRaFHE/l5OoLZ5/P3vAijXqjWxZlZ0fJg7fSKTQorWoAJVVyu3x3LyNQqldzhpSifZvUekeucjU/GS57eb5rsVH0NrU7MdGkHirBkqEXzt7H049B1WZnwA/99aRqSCvXBAtp3CIqq71R0Wy++CfYPBtIvASke3Cz/uBqU738h27yyqKJ6nl2KXmOG+h+yDFJBEdiK9e0yhvsBhODZZrQvLo2xK3qOIgH2F16OhwOKbYxW09u3yVrG/f3xbmZPzJPd38T8ut6+DcWPwEioC29',NULL,'_8187edf0-dc01-0137-d634-005056a531ed','2019-10-28 22:37:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1095,'2019-10-28 23:37:55','2019-10-28 23:37:55','spiditalia','eJydU8Fu2zAM/RVDl5xsyw6cZkKcIkhQIEA3bE23wy6DajMpAVvyRCpJ/36yk6YBthXDbgL1HvX4+DS7PbZNtAdHaE05yhI5isBUtkazK0dfH+/i6eh2PiPdNnmnFp6fzQP89EAcLYjAcaAtrSHfgtuA22MFa1PDsRRSRAtmh0+e4YQILX+DrEInNLpvU4pn5o5UmlKHdeJgh8TgEuS0sTs0KZEV0Z11FQw6SsHOg4jWq1L8mOaT8VMmZVxXMotlNr6J68m4iKUsZDHRxTiDOkCJfHicWBsuRS6zD3Em43z6mOdqfKOK4ruIvp29EHkS9AV3DKl+/FJ4Z5TVhKSMboEUV2qz+HivAlDpVzOuKXn3Pqlzlm1lG3EyWA3yXD9iq/l9al/BOt4OUAWGkV9E9ClUv3jd4BbBvfnZWce6gaSyrTeQhCORNrVDHcwV83+CzdIriZdA9A+uV59tg9XLf+hmpw1hUC/SS8tzvKAelhySw3DkaGnbTjukfjEhSNj69tW1a9yyCYt4gO1lpsPhkAxx2tl9n6RNON/n52H+yDzd/U3I2/X1X5j/AhiWJtM=',NULL,'_8263b100-dc01-0137-d635-005056a531ed','2019-10-28 22:37:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1096,'2019-10-28 23:37:57','2019-10-28 23:37:57','sielte','eJydU9tuGjEU/JWVX3jauxaoxRIhUCSk9BbSPuSlcteHYMm32sdA/r7ehRCkNlHVN8uemZ0zZ3Z2c1Qy2YPzwuh2VGbFKAHdGS70Uzv69nCbTkc385lnSlaWLgLu9D38CuAxWXgPDiNtabQPCtwG3F50sNYcji0pSLJAdOJnQDghouQfkFVUEpr1Mi3ZIVpP81xw0CjwOfMCJEInTeCZwNwLZSX0XvLBUATafLP5fFbN7M6S5Na4DgajLUEXgCTrVUt+TOumqvm2SHlXlGlR1pOUj+txWhRN0YxZU5fAI9T7EN15ZBpbUhXlh7Qs0mr6UFW0ntBm8kiS7+ewSJXFAWJ82tPeTkuC09QwLzzVTIGn2NHN4uMdjUDKXtK6plT2fZJ1Bk1nJDltgA72XD+iYvg+tb8RPN0OUHrKkySf4u3XwKTYCnCvgVvjkEnIOqOChiwevWeaO8Fi7GT+T7BZfmXx0pj+g+vVFyNF9/wfvtExHUugkeQXyXP/gA9LjtVCOGKyNMoyJ3y/mNg0oYJ6Se0at5RxEfewvcx0OBwybwXPnsy+79gmnu+q8zB/ZZ7e3jLy+nz9s8x/A/EIM4A=',NULL,'_83523df0-dc01-0137-d636-005056a531ed','2019-10-28 22:37:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1097,'2019-10-28 23:41:16','2019-10-28 23:41:16','lepida','eJydU11v4jAQ/CuRX3hK4oTCUYtQIVAlpN4X6fWhLyc33rQrJXZqr4H++3OAUqS7VtW9RI49s56dHU+vdm0TbcA6NLoYZAkfRKAro1A/FoNft9fxZHA1mzrZNnkn5p6e9BqePTiK5s6BpUBbGO18C7YEu8EKVlrBrmCcRXMiiw+e4IAIJf+CLEMl1LIvU7Anos6JNEWVNNChkglS+OnSzpoaG0jL+debPF2DQgsVpWX5nUXXxlawF1Ywsh5YtFoW7Hd9WV+MhxMeq4pnMc+GX2I1Dh/OR3w0lqNhBipAnfNBjSOpqWA5zy7jjMf55DbPxUUmsvE9i+6O5rA8CYKDXdqJ3o+CeauFkQ6d0LIFJ6gSvUIRgEK+unNOybuPSaFPMpVp2MFxsZdn+xZbSR9T+x1Ucb2HCtCE9MKib2H3p5cN1gj2zeDOWJINJJVpvYYkLJ2TWlnsHWezT8Gm6ZnEU0L6C1fLH6bB6uU/dJOV2mFQz9JTyWPeQO2HHKJEsKNoYdpOWnT9YEKysPXtq2vnuEUTBrGG+tTTdrtNXMhW8mg2fbzKsL7Jj838k3k4e0/I2/H545j9AewPLAs=',NULL,'_f9f46380-dc01-0137-d637-005056a531ed','2019-10-28 22:41:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1098,'2019-10-29 00:32:47','2019-10-29 00:32:47','infocert','eJydU8FuGjEQ/ZWVL5x213ghIRZLhECRkNKqDWkPvVSuPSSWdu2tZwzk7+sFQpDaRlVvlv3ezJs3z9PbfdtkWwhovasHw4IPMnDaG+ue6sGXx7t8MridTVG1jejkPNKze4CfEZCyOSIESrSFdxhbCGsIW6th5Qzsa8ZZNicK9kckOCJSyd8gy1TJOtWXqdkzUYeyLK0BR5ZeCus2XqcmhaUSO2vKXgeiZ9mdDxoOcmpGIQLLVsuafRdawEiPeG40v8n5sLrOzVU1yTkf8/GVGldDMAmKGJMGJOWoZoIPb/Ihz8XkUVSyEnJ0/Y1lX0+WMFEkmckkh7LvXrMYnPQKLUqnWkBJWq7nH+5lAkr16sklRXTvk7rgyWvfsKPP8iAv9CO2it6n9jfW5JsDVB5dY9nHdPs5qsZuLIQ3WzsfSDVQaN9GB0U6IipnglXJXzb7J9i0vJB4zkXfcLX85BurX/5DNwXl0Cb1rDyXPKUMzGHJKUAEe8oWvu1UsNgvJuXJtrF9de0St2jSIh5gc55pt9sVfYCKJ7/tw7RO53txGuaPzOPb34S8PV9+idkvjGEqLw==',NULL,'_2c2e4c40-dc09-0137-d638-005056a531ed','2019-10-28 23:32:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1099,'2019-10-29 04:16:24','2019-10-29 04:16:24','lepida','eJydU01v4jAQ/SuRL5ySOKFki0WoEKgSUveLdHvoZeXGQztSYqf2GOi/XwcoRdptVe3NH++N37x5nlzt2ibagHVodDnIEj6IQNdGoX4sB79ur+PLwdV04mTb5J2YeXrSK3j24CiaOQeWAm1utPMt2ArsBmtYagW7knEWzYgsPniCAyKU/AuyCJVQy75MyZ6IOifSFFXSQIdKJkhh06WdNWtsIK1mX2/ydAUKLdSUVtV3Fl0bW8NeWMnIemDRclGy38W4uFAw4rGq88uYZ8MvsSqG45jzER8VcjTMQAWocz6ocSQ1lSzn2TjOeJyPb/lQZIXIL+5ZdHc0h+VJEBzs0k70fpTMWy2MdOiEli04QbXoFYoAFPLVnXNK3n1MCn2SqU3DDo6LvTzbt9hK+pjan6CK13uoAE1ILyz6Fk5/etngGsG+GdwZS7KBpDat15CEpXNSK4u942z6KdgkPZN4Skj/4HLxwzRYv/yHbrJSOwzqWXoqecwbqP2QQ5QIdhTNTdtJi64fTEgWtr59de0cN2/CIFawPvW03W4TF7KVPJpNH68qrG/yYzP/ZB7u3hPydn3+OaZ/AAB+LBQ=',NULL,'_6964de50-dc28-0137-d639-005056a531ed','2019-10-29 03:16:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1100,'2019-10-29 08:25:29','2019-10-29 08:25:29','spiditalia','eJydU8GO2jAQ/ZXIF05JTNhAsQgrBFoJaVu1y7aHXipvMrAjJXbqGQP793UCyyK1XVW9WeP3xm/ePM9uj00d7cERWlMMhokcRGBKW6HZFYOvj3fxh8HtfEa6qbNWLTw/mwf46YE4WhCB40BbWkO+AbcBt8cS1qaCYyGkiBbMDp88wwkRWv4GWYVOaHTXphDPzC2pNKUWq8TBDonBJchpbXdoUiIrojvrSuh1FIKdBxGtV4X4Mcr1eCJvZFyVN0+xHI4mcTUe6VjKXOZjnY+GUAUokQ+PE2vDhcjkcBoPZZxNH+VEZbnKpt9F9O3shciSoC+4Y0h14xfCO6OsJiRldAOkuFSbxcd7FYBKv5pxTcna90mts2xLW4uTwaqX57oRG83vU7sKVvG2hyowjPwiok+h+sXrGrcI7s3P1jrWNSSlbbyBJByJtKkc6mCumP8TbJZeSbwEontwvfpsayxf/kM3O20Ig3qRXlqe4wVVv+SQHIYjR0vbtNohdYsJQcLGN6+uXeOWdVjEA2wvMx0Oh6SP087uuyRtwvk+Ow/zR+bp7m9C3q6v/8L8FxM1Jzo=',NULL,'_35a67040-dc4b-0137-d63a-005056a531ed','2019-10-29 07:25:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1101,'2019-10-29 08:40:08','2019-10-29 08:40:08','sielte','eJydU8tu2zAQ/BWBF58kUfIzhOXAsBHAQPqK0h56KRhxHROgSJZc2s7fl5Idx0DboOiNIGdGs7Oj+e2xVckenJdGV4Mio4MEdGOE1M/V4OvjXTob3C7mnreqtGwZcKcf4GcAj8nSe3AYaSujfWjB1eD2soGNFnCsCCXJEtHJp4BwQkTJ3yDrqCQ172QqskO0nuW5FKBR4kvmJSiERpkgMom5l61V0HnJe0MRaPO6/nRWzezOkuTOuAZ6oxVBF4Akm3VFfoyK8WQGU5qKZiRSWgynqZgMn1JKx3Q84eNhASJCvQ/RnUeusSIlLW7SgqblzSOdshFldPadJN/OYZEyiwPE+LRnnZ2KBKeZ4V56pnkLnmHD6uWHexaBjL+mdU0p7fsk6wyaxihy2gDr7bluxJbj+9TuRop020PZKU+SfIy3XwJXcivBvQVujUOuIGtMGzRk8eg918JJHmMni3+CzfMri5fGdB/crD8bJZuX//CNjutYAo0kv0ie+weiX3KsFsIRk5VpLXfSd4uJTZNtaF9Tu8atVFzEA2wvMx0Oh8xbKbJns+86VsfzfXke5o/M09vfjLw9X/8si19qKzOy',NULL,'_41568e70-dc4d-0137-d63b-005056a531ed','2019-10-29 07:40:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1102,'2019-10-29 09:10:55','2019-10-29 09:10:55','eidas','eJydU8tu2zAQ/BWBF58kkRKU2oTlwLARwEBatHHSQy8FK60TAhKpcpd+/H0p2bF9SIMgN2I5s5ydHU5v920TbcGhtqYciYSPIjCVrbV5LkdPj3fxeHQ7m6Jqm6yTc08v5gH+ekCK5ojgKNAW1qBvwa3BbXUFK1PDvmSCcxbNiZz+4wmOmND0DdAydNNG9a1K9kLUoUxT7OLO2f0h6RwkoOvk2W4TTaE+lNNeEaJl0Z11FQzCSkbOA4tWy5L9HoPIVT7hcV0VIuYi/xLXNznEnBe8uFFFLqAOUEQftCApQyXLuJjEgsfZ5JGPpeCyKH6x6OfJHJYlQWywy6DsXy+Zd0ZahRqlUS2gpEqu51/vZQBK9erONSXr3ieF0chWtmFHx+Ugz/Ujtorep/YVXcebASrBkKYDi76F6g+vGr3R4C7mdtaRaiCpbOsNJOGIqEzttAoWs9mHYNP0SuI5If2Dq+V32+jq8And5JRBHdSz9NzylDeohyWHIBHsKVrYtlNOY7+YkCvd+vbVtWvcogmLeIDNeabdbpdgd8nTOpzvs9MwbzKPd/8Tcrm+/hyzf3CELRU=',NULL,'_8e13a390-dc51-0137-d63e-005056a531ed','2019-10-29 08:10:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1103,'2019-10-29 09:50:59','2019-10-29 09:50:59','eidas','eJydU8tu2zAQ/BWBF58kUXLlxITlwLARwEBatHHSQy8FS60SAhKpcpd+/H0p2bF9SIOiN2I5s5ydHc7u9m0TbcGhtqYcZQkfRWCUrbR5KUfPT/fx7ehuPkPZNnknFp5ezSP89oAULRDBUaAtrUHfgtuA22oFa1PBvmQZ5yxaEDn9yxMcMaHpO6BV6KaN7FuV7JWoQ5Gm2MWds/tD0jlIQFfJi90mmkJ9KKe9IkTLonvrFAzCSkbOA4vWq5L9zCd1rrJPPK5UcRPzbHwTV5NxHXNe8GIii3EGVYAi+qAFSRoqWc6zaZzxOJ8+8VtRcFFMf7Do+8kclidBbLDLoOhfL5l3RliJGoWRLaAgJTaLzw8iAIV8c+eakncfk8JoZJVt2NFxMchz/YitpI+pfUVXcT1ABRjSdGDRl1D95mWjaw3uYm5nHckGEmVbbyAJR0RpKqdlsJjN/wk2S68knhPSP7hefbWNVof/0E1OGtRBPUvPLU95g2pYcggSwZ6ipW076TT2iwm50q1v31y7xi2bsIhHqM8z7Xa7BLtLnjbh/JCfhnmXebz7m5DL9fXnmP8BhGUtHg==',NULL,'_26f2c140-dc57-0137-d63f-005056a531ed','2019-10-29 08:50:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1104,'2019-10-29 10:21:24','2019-10-29 10:21:24','poste','eJydU9Fu2jAU/ZXILzwlcUKBYhEqBKqE1E5r6fawl8mNL62nxE59r4H+fZ1AaaRt1bQnW/Y51+eeezy7OtRVtAOH2ppikCV8EIEprdLmqRh8e7iOLwdX8xnKusobsfD0bO7hxQNStEAER4G2tAZ9DW4DbqdLWBsFh4JxFi2InH70BEdEKPkbZBUqaSPbMgV7JmpQpGljkUCrpFsTTekvq+ItpogWjwUcKO2gJBZdW1dCp6tg5DywaL0q2M/xhF9OJkMeq3L0GPNsOInV+ILHnI/4aCxHwwxUgCL6IAZJGipYzrNpnPE4nz7wqcgzkV/8YNH3kzcsT4Le4JZB0dpRMO+MsBI1CiNrQEGl2Cxub0QACvluTp+SN5+TGmfJlrZiR8NFJ8+1LdaSPqe2JzqY1EEFGNL0yqIv4fTOy0pvNbi+v45kBUlpa28gCVtEaZTTMpjN5v8Em6U9ieeAtA+uV19tpcvX/9BNThrUQT1LzyVPcQPVDTkkieBA0dLWjXQa28GEYOna1++u9XHLKgziHrbnnvb7fYJNyNaT3bXJ2oT9TX5q5o/M493fhHxc9//G/A0vqS1b',NULL,'_67087730-dc5b-0137-d640-005056a531ed','2019-10-29 09:21:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1105,'2019-10-29 11:25:22','2019-10-29 11:26:18','poste','eJydU8tu2zAQ/BWBF58kUUpkJ4TlwLARwEBatHGaQy4FK64TFhKpcpe28/elZMcVkAeCnkiQM8vZ2eH0at/U0RYcamvKUZbwUQSmskqbx3L04+46vhhdzaYomzpvxdzTk7mFPx6QojkiOAq0hTXoG3BrcFtdwcoo2JeMs2hO5PQvT3BAhJKvIMtQSRvZlSnZE1GLIk1biwRaJf2aaEp/WxVvMEW0eCjgQGkHFbHo2roKel0lI+eBRatlyX4W48nkouA8VtX4PObZ2SRW4/Ms5rzgxVgWZxmoAEX0QQySNFSynGeXccbj/PIu4yIvRJ4/sOj+6A3Lk6A3uGVQdHaUzDsjrESNwsgGUFAl1vMvNyIAhXwxZ0jJ249JrbNkK1uzg+Gil+e6FhtJH1O7Ex1M6qECDGl6ZtHXcPrdy1pvNLihv45kDUllG28gCVtEaZTTMpjNZp+CTdOBxFNAugdXy2+21tXzf+gmJw3qoJ6lp5LHuIHqhxySRLCnaGGbVjqN3WBCsHTjmxfXhrhFHQZxC5tTT7vdLsE2ZOvRbrtkrcP+Jj828ybzcPeekH/Xw78x+wu2Yi0p','eJztWUmXokwW3fsrPNbSYzKD5snM7mBQUVCZFN30YQgQZFBG9dc3pJVZWfXV1F/2Ivt0rcQg4sW990UE98HDP85x1K1glgdp8tjD7tBeFyZO6gaJ/9gz9PFg2OvmhZW4VpQm8LGXpL1/PD3kVhzhx3sV5sc0yWG3CZLk97fWx16ZJfeplQf5fWLFML8vnHsNyNI9fofeH7O0SJ006nV5mBdBYhXPE++L4pjfI8gxzQorgndOGpcJvGsu87yZPAusu6D4fBexymKP5MfARaw8h1kb4V9Og6OMYdbrivxj71+2bVvk0B0OMMZzByRjU4OhRxED6DIkxB2L8EZY0zV5YaCnzSCKZpghhaID16HJAYoRzMClSWyAohRK0RZFYNBtBuV5CcWkFaV47OEoNhpg6AAf6Rh6j9P3GHM3ophdr7t+EbWh3fss2f3z4OytXj+X65Vg7+mLRHkBA/fu+bdR5QF5G/rpQQv8RtUy+5yVm7bNuLqu72riLs18BEdRFEFHSNPBzQP/U+82Crpi4qVPD5yVpEngWFFwfU6PDIt96nZB5KdZUOzjH4TEEAxtQw7g2Rk4GJl86iFv4Px2FJR8ATaI0wx+ynJrkO8tnKLbeCr0YNYsUdg1VPGx9+n3Uv30oGdWkntpFudvrn+J5iuZYFLBKD1Cd5C/kGoR/X607yuEvIXGB36zL/5DrRo5Pn1R6BZibUUlfLp4RXnO5lyyhzGI5iGnYLIsHA9RDU9cNabNMliRk6VdEfLjA/J25APyqnRz/XZ5vGb01jEH2VXHwJkfx/0Jr8AcYeQhvTKzKCNODHLZzHeMMRNnI7CEfc9eztfW0o02kX6NynAVSBydU9rcO28Y79i5aiG+2RBzoPMXihpimLlJCpp35n6shCR5ZY7H09UsdDTnEwVxshDHOf5AKuohRrCi32fFa6m4GY5ZHt7ZqaROw73Mzo6b9VkVzxRwpGVpW+ZSPu2d+GBxip0PY31zWpuHMT5PjVnAClsSF2paNqfNrC4/tnYi6/Kd7ICCnaVZ81QYeiBjGMofp0vcPEb2fOmNJQoux0qBRaO1cl7Femy5YrU1FKqfEI6jXRGlJDnBmFLe/ip1kpkCJbvMtDT32FFm6iskSOF4vSDw2TZmqBj3wqR+fLwJ/0bshzm83LJgUuiItwrrdsW1p4TX7NkCPsmiKMyvHAfOSx/UIgt8kRfwLSoDdMJpp4km2gSvCCxXG0CegDN3BTPWX6xZsNXBITJk1a/H/pZfK8q8w4ORYhMLdLdZVLbG6lICSkUjzyIP4G1QLo/RReQk6nEXR+HWVI82TvqKuUatyehimSolq0Yt1Fu+00TkeXB+G5BXdLme7p2FrG9rORRxWTcwOVTQTdsWCl+3hexZVvKaU27BJkI9m615YSmDegIwQ+BAPdZMdW9PD2deB9INoSOz41llb4zzNATOrS2Vx2u2cgg1EoUI7Ww35+N2Q0XiWC4djmKlUFjIIL8FrWvBwNiZyguGzIrPbaCuJc1QFelzEM1Qat8XglbjzluRgWIAQIosX4O2wxykTUIUfjcWilkqTMcgPHLWzgkpfr3JVP5iSbtLSWAmOOaRnQ6ZDnfZXGlsOZOLmlYUA5Vdrsi2dqHN6GpWnxmEFoww3xEleSaEleRGh0swWZ7Kw6oGekU6jL5eGuucShPx1NGPe3lk98FU9Um4D+QJzGNk5DKqaEnlghkFK6NypYTerIjABZ5Q97P9DKm3goLuMTOm0nxh+MXGYSdW1dmJoZTnm0XG895sezanhLJDDyLtQaGSuFnth6Y0ObDlfgz3i71MenvbHAUGt6nrw4yY5Su831cdJNABKnV2+8DIzcXixPisI4HZyDDxNeZuQv3KTmHlTfPjtSAhuvZFsbZ59ZSrxXi4NlYav93aUnqqbanAhibwZbYDwCT03br23UOttitZRX2WH9YrHdSs72Q6yJtdIbAyZ9RivRXn9ZZlFWPatG3G+B51p4CWLiPCJZyy40xGV3eyDnfmDJXiqNlGhwl7KWSubraQL9b8bYIVUKZIm1rga7XMDttl4oq1spVZC4znDmqu8HGHvWwNPEL98XUyF4bXtXb1Ypm/dZ7WCinz23oxB5eU5yZS/Iqk/rxjmm2mlDdARtmxTKV6QWfjWLjV5WrbCCtfqNCJ63qqPCNbsuxWGAtVFhx2ysFjwzLQj2fhrLFwWE/8/PKXRdueDO2iBQq7APXQSGHAjftYNs5xxiVsAXo0J0FkNfOtkeDVc7EIZZ4fKVcdGWt7ddOZS9NoTo/kqYTtpJW6qsqNoR/E5VQ/Lk7sSpSqJVZihK35fTrt40v3BA4ce7D1kz0JN9pKsnRjvVjTsm3Gnaoo+OHaHVXizsfOLDshxlaAEW5daSGxBzt3WPpDa+htsAsS8LbKUTy27E+jKV9W4oaU7Bk6IkI37Ke7uqNdXByj/cKUUFQBKIeVcslXo403Es9JoNsMhrqq5ouOTCJQZYYE7u18d5mnVtTkrDkmNC4fbpa7LDyWHRvzXEvVhJJTDnjfjxuXoDp6PhJOK45bBIsoW4BgI1wmhTQEpJUSR16um+1r45fsAfn23L613M505PWc//IEeLXdWtH8z7/5y6Uu7D4/JH7uKPPn3vda6TiNt372H98Lew9enOffMas3E+5hBEm4DDPAKUgOyKHjDmwbZQYezeA2xUCCdLxf+2m68dPDX/jpcWOerOLn6NqWwB14z13vYVIExeWPq/6Rq/6t3P2/uuqZKF00we9v+zNen1AnqyqkPuchnpqrdrTWtyu/n0WWVGHO33XVBwrak2mCsRkX0Bhz4oJrGHKTDTVM8EXljVjeyLImssBDVJxkVeqg+FkrdohHz00giIeCyqxzOekPN2GHq/1c8cA00NjF5hCYgeRF4V7m54G5P05of7xLawaJEUNjd4o2J/ScPV1pbb2ExrBknXxO9FNRbB42fgQ7/Jk6+SGTCBzjwxpErmyK+fx84rIYNzEzHZM0IdflpVJVVg93U3+dDFWvP7GoGBFQslpp/UidC2veTsvOsDotkq2VEddJdZIra2tv60sAYhOHY0Ivru58xiOTVDDHVHacCVrQmPWtMHH6xpXDvQw4xWzIlkYmBqXWOYOLNSWQhDG3BVuflUtKzH3HWqxCaj8hKBtYOcf5f1z1H1f9x1X/cdV/XPUfV/3FVTeG2A6hU7z8XTRuUeT/hrEsWtsRNPay121jKGVj+LwAZm/fcX9tNXtP2krkB0PSxRkCJQfuCCcGJDUaDUaEQwzwoYVaNj7EbAx9caU3dN9A59LEC1oMrWm/eZ2fA3fiextaGcx6P4nUKvf3XpQv0mKZLDPgFS37b4w988XYq9AJjq1i/83PAK91zfc4fXvvhX7Txw3aDnkLnoVNSuHPSpLfZPhaUpVu0Dq/RssiC5wbkq9vPf2WAi/wX0d92/DVDMi35L5MWuyTtuqDcaN+9/nvLwqx9sOG1kBpwoiJC8+PvcbN03tqzJ2OJwvO8pHFAKu6In3dW02ni9g+mcUcQarplkLIohqqwM6mvPL42PsKRQOugOfie21c1KS3cc2v0rRuvU37nZ9W7XLQmmsJ/yLBd4Z+7+bXja8yvEIoGgXtsoA/vvO8wR97LZa2+u79pcOzu/xcP59/VDNiiClLmrOHsdV77Rv8uvMgeE6VA5tReXBfXI4NlnNTqDeTJ37vaaWLukTjGsGysyn1SvYrbE9/af4Ryfb0+GAEAcsLqgqmMli8l51nxUF0WXw8jktjBiQgvZtfkDtWtChj+81h/zEY6uJC1AczSWJVdUSqKLMjCFR7L+Fm4iD6YEwt24V3aRla//RbdO3R/l6aPmwO4Y+WUfm9rNzmwF16bJAV+w9CrUXUe8JGI7J9JKLMexkeI8v5YBRfstduv/fSc9IyKS4fk58gvJdd87S3MveD0XKsxi+K7vNrbasL1iiNUUOa6t78I5AETQMLXhVBtzF29AClmoXcXOL0f2dBW66btZ8TPpYo64auumQFVV92Jw39pTQWuxjWxSgMx7pvRXn/I9YN/Eb5CHxIIQbvfp6ej0H2Ug9+FJN0O5WbRfxcqGDYe0nGqR1EcLVPk4/C8CV/fWJEkE1ZTdIMRr/7/KqsD1iuvHuJZtAP8qYQh+7S8wLnf5jfty1vKtCXWy8vPL58vX15QfP0b/NACZ8=','_56778500-dc64-0137-d641-005056a531ed','2019-10-29 10:25:22','_bbba48d8-17fd-47b5-8f53-ed74e2ca3f91','2019-10-29 10:26:17','https://posteid.poste.it','_f1343d77-25e4-48cd-bb07-f672b57e34cf','SPID-84d27304-d923-4599-93c3-28a0ab281b10','https://posteid.poste.it',1099),(1106,'2019-10-29 15:24:22','2019-10-29 15:24:22','eidas','eJydU8tu2zAQ/BWBF58kU0qcB2E5MGwEMJAWbZz00EvBiOuEgESq3KUff9+V7Ng+pEFRQAdiObOcnR2N77ZNnawhoPWuHOSZHCTgKm+sey0Hz0/36c3gbjJG3dRFq6aR3twj/I6AlEwRIRDTZt5hbCAsIaxtBQtnYFuKXEqRTImCfYkEeww3/QA0527W6a5VKd6IWlTDIbZpG/x2l7UBMrAme/XrzBLX+/KwU4ToRXLvQwW9sFJQiCCSxbwUv150Xqyqa5ma6maUyvziOjVXlyaVciRHV3p0kYNhKGJkLUjaUSkKmd+muUyL26f8UhX8FT9F8uNgjigyFst2OVTd66WIwSmv0aJyugFUVKnl9MuDYqDS7+6cU4r2cxKPRr7ytdg7rnp5oRux0fQ5tatYk656qAJHlnYi+crV71HXdmUhnMxtfSBdQ1b5JjrI+IionQlWs8Vi8k+w8fBM4jEh3YOL+Tdf22r3H7opaIeW1YvhseUhb2D6JXOQCLaUzHzT6mCxWwznyjaxeXftHDereRGPsDrOtNlsMmxPeVry+aE4DPMhc3/3NyGn6/OfY/IHU4stcA==',NULL,'_ba12fc70-dc85-0137-d64d-005056a531ed','2019-10-29 14:24:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1107,'2019-10-30 04:52:28','2019-10-30 04:52:28','arubaid','eJydU2Fr2zAQ/StGX/LJtuzgpBVxSkgoBLKxtd0K+zJU65wKbMnTnZL030920jSwtYx9E3fvnd+9e57dHNom2oFDbU05yhI+isBUVmmzLUffHm7jq9HNfIaybfJOLDw9mzv45QEpWiCCo0BbWoO+BXcPbqcrWBsFh5JxFi2InH7yBEdEGPkHZBUmaSP7MSV7JupQpGljt9pgp1UinX+Siab0RNz0nUdoKtsCi26tq2DQVDJyPlTWq5L9vFbTOptUPFZVPYl5Np7GalJMY84LXkxkMc5ABSiiD0KQpKGS5Ty7jjMej/kDH4siF/nVDxZ9P/nC8iRoDU4ZFL0VJfPOCCtRozCyBRRUifvFp40IQCFfjbmk5N3HpM5ZspVt2NFsMchz/YqtpI+pfUWruB6gAgxpemHR51D96mWjaw3uzdvOOpINJMFBbyAJT0RplNO9zWz+T7BZeiHxHI7+g+vVF9vo6uU/dJOTBnVQz9LzyFPUQA1HDikiOFC0tG0nncb+MCFUuvXtq2uXuGUTDnEH9Xmn/X6fDKna2t2QqfDe5Kdl/so89t4T8ta+/C/mvwH8gCwt',NULL,'_9d7f16c0-dcf6-0137-d657-005056a531ed','2019-10-30 03:52:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1108,'2019-10-30 10:17:08','2019-10-30 10:17:08','poste','eJydU9Fu2jAU/ZXILzwlcRJBwSJUCFQJqZ220u1hL5UXX1pPiZ36XgP9+zmBskhbq2lPtuxzrs8993h+fWzqaA8OtTXlKEv4KAJTWaXNUzn6+nATT0fXiznKps5bsfT0bO7hxQNStEQER4G2sgZ9A24Lbq8r2BgFx5JxFi2JnP7hCU6IUPIPyDpU0kZ2ZUr2TNSiSNPWIoFWSb8mmtKfVsU7TBEtngo4UNpBRSy6sa6CXlfJyHlg0WZdssfddDIteM5jpfIi5llxFavJeBZzPubjiRwXGagARfRBDJI0VLKcZ7M443HBH/hMZFeCT7+z6NvZG5YnQW9wy6Do7CiZd0ZYiRqFkQ2goEpsl3e3IgCFfDNnSMnbj0mts2QrW7OT4aKX57oWG0kfU7sTHUzqoQIMaXpl0adw+sXLWu80uKG/jmQNSWUbbyAJW0RplNMymM0W/wSbpwOJl4B0D27Wn22tq9f/0E1OGtRBPUsvJc9xA9UPOSSJ4EjRyjatdBq7wYRg6cY3b64Ncas6DOIedpeeDodDgm3I1pPdd8nahv1tfm7mr8zT3XtCfl8P/8biFzjNLV4=',NULL,'_f8683020-dd23-0137-d659-005056a531ed','2019-10-30 09:17:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1109,'2019-10-30 14:48:14','2019-10-30 14:48:14','eidas','eJydU8tu2zAQ/BWBF58kUZLtOoTlwLARwEBatHHSQy4FK64TAhKpcpd+/H0p2bF9SIMiN2I5s5ydHU5v900dbcGhtqYcZAkfRGAqq7R5KQdPj3fxZHA7m6Js6rwVc0+v5gH+eECK5ojgKNAW1qBvwK3BbXUFK6NgX7KMcxbNiZz+7QmOmND0HdAydNNGdq1K9krUokhTbOPW2f0haR0koFXyYreJplDvy2mnCNGy6M66CnphJSPngUWrZcl+qUkx4YrzWKnhTcyz4kusxuMi5nzER2M5KjJQAYrogxYkaahkOc9u4ozHBX/MCjGciGz4zKKfJ3NYngSxwS6Donu9ZN4ZYSVqFEY2gIIqsZ5/vRcBKOSbO9eUvP2YFEYjW9maHR0XvTzXjdhI+pjaVbSKNz1UgCFNBxZ9C9UfXtZ6o8FdzG2tI1lDUtnGG0jCEVEa5bQMFrPZf8Gm6ZXEc0K6B1fL77bW1eETuslJgzqoZ+m55SlvoPolhyAR7Cla2KaVTmO3mJAr3fjmzbVr3KIOi3iAzXmm3W6XYHvJ0zqc7/PTMO8yj3f/EnK5vv4cs7/92Czl',NULL,'_d8380d00-dd49-0137-d663-005056a531ed','2019-10-30 13:48:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `portal__tracciaturaspidagid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__utente`
--

DROP TABLE IF EXISTS `portal__utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__utente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `stato_id` varchar(255) DEFAULT NULL,
  `codice_fiscale` varchar(255) DEFAULT NULL,
  `sesso_id` varchar(255) DEFAULT NULL,
  `comune_nascita` varchar(255) DEFAULT NULL,
  `stato_nascita` varchar(255) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `comune_residenza` varchar(255) DEFAULT NULL,
  `cap_residenza` varchar(255) DEFAULT NULL,
  `provincia_residenza` varchar(255) DEFAULT NULL,
  `provincia_nascita` varchar(255) DEFAULT NULL,
  `indirizzo_residenza` varchar(255) DEFAULT NULL,
  `civico_residenza` varchar(255) DEFAULT NULL,
  `tipo_documento_id` varchar(255) DEFAULT NULL,
  `numero_documento` varchar(255) DEFAULT NULL,
  `data_documento` date DEFAULT NULL,
  `documento_rilasciato` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_confermata` tinyint(1) DEFAULT NULL,
  `pec` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `cellulare` varchar(255) DEFAULT NULL,
  `cellulare_confermato` tinyint(1) DEFAULT NULL,
  `cancellato` tinyint(1) DEFAULT NULL,
  `data_cambio_password` date DEFAULT NULL,
  `strong_auth_key` varchar(255) DEFAULT NULL,
  `note` text,
  `accettazione_clausole` tinyint(1) DEFAULT NULL,
  `albo_id` varchar(255) DEFAULT NULL,
  `n_albo` varchar(255) DEFAULT NULL,
  `p_iva` varchar(255) DEFAULT NULL,
  `p_albo` varchar(255) DEFAULT NULL,
  `disabilita_comunicazioni` tinyint(1) DEFAULT NULL,
  `data_conferma` datetime DEFAULT NULL,
  `accettazione_gdpr` tinyint(1) DEFAULT NULL,
  `data_ora_accettazione_gdpr` datetime DEFAULT NULL,
  `richiesta_cancellazione_gdpr` tinyint(1) DEFAULT NULL,
  `data_ora_cancellazione_gdpr` datetime DEFAULT NULL,
  `stato_residenza` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__utente`
--

LOCK TABLES `portal__utente` WRITE;
/*!40000 ALTER TABLE `portal__utente` DISABLE KEYS */;
INSERT INTO `portal__utente` VALUES (1,'2016-05-28 15:14:52','2019-04-11 20:03:26','Utente','Test','attivo','TTTTTT11T11T123T','M','Trento','IT','1950-10-10','Trento','38100','TN','TN','Via Test','10','CI','12345789','2016-05-20','Comune di Test','test@soluzionipa.it',0,'','01111111111','','3333333333',0,NULL,NULL,NULL,'',0,NULL,NULL,NULL,'',0,NULL,1,'2019-04-11 20:03:26',NULL,NULL,NULL);
/*!40000 ALTER TABLE `portal__utente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__utente__attributiaggiuntivi`
--

DROP TABLE IF EXISTS `portal__utente__attributiaggiuntivi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__utente__attributiaggiuntivi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utente_id` int(11) DEFAULT NULL,
  `attributo_utente_id` varchar(255) DEFAULT NULL,
  `valore` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__utente__attributiaggiuntivi`
--

LOCK TABLES `portal__utente__attributiaggiuntivi` WRITE;
/*!40000 ALTER TABLE `portal__utente__attributiaggiuntivi` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__utente__attributiaggiuntivi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__utente__gruppi`
--

DROP TABLE IF EXISTS `portal__utente__gruppi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__utente__gruppi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utente_id` int(11) DEFAULT NULL,
  `gruppo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__utente__gruppi`
--

LOCK TABLES `portal__utente__gruppi` WRITE;
/*!40000 ALTER TABLE `portal__utente__gruppi` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__utente__gruppi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__utente__serviziprivati`
--

DROP TABLE IF EXISTS `portal__utente__serviziprivati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__utente__serviziprivati` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utente_id` int(11) DEFAULT NULL,
  `servizio_id` varchar(255) DEFAULT NULL,
  `stato_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1424 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__utente__serviziprivati`
--

LOCK TABLES `portal__utente__serviziprivati` WRITE;
/*!40000 ALTER TABLE `portal__utente__serviziprivati` DISABLE KEYS */;
INSERT INTO `portal__utente__serviziprivati` VALUES (3,1,'appuntamenti','attivo'),(6,1,'moduli','attivo'),(7,1,'moduli_test','attivo');
/*!40000 ALTER TABLE `portal__utente__serviziprivati` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__utente__utenteportalepermissionsjunction`
--

DROP TABLE IF EXISTS `portal__utente__utenteportalepermissionsjunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__utente__utenteportalepermissionsjunction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utente_id` int(11) DEFAULT NULL,
  `utente_portale_permissions_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__utente__utenteportalepermissionsjunction`
--

LOCK TABLES `portal__utente__utenteportalepermissionsjunction` WRITE;
/*!40000 ALTER TABLE `portal__utente__utenteportalepermissionsjunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__utente__utenteportalepermissionsjunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__utenteesterno`
--

DROP TABLE IF EXISTS `portal__utenteesterno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__utenteesterno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `chiave` varchar(255) DEFAULT NULL,
  `info_extra` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__utenteesterno`
--

LOCK TABLES `portal__utenteesterno` WRITE;
/*!40000 ALTER TABLE `portal__utenteesterno` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__utenteesterno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__utentelogin`
--

DROP TABLE IF EXISTS `portal__utentelogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__utentelogin` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `utente_portale_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__utentelogin`
--

LOCK TABLES `portal__utentelogin` WRITE;
/*!40000 ALTER TABLE `portal__utentelogin` DISABLE KEYS */;
INSERT INTO `portal__utentelogin` VALUES (2,'test','sha2$:70`W%okx;Q$8455075df6a047ddc94b7ff2e2c3af671015bf3212b2df1ccdf126a8a2ef1ce3',1);
/*!40000 ALTER TABLE `portal__utentelogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal__utentespidagid`
--

DROP TABLE IF EXISTS `portal__utentespidagid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal__utentespidagid` (
  `utente_esterno_id` int(11) NOT NULL DEFAULT '0',
  `id_utente_spid_agid` int(11) DEFAULT NULL,
  `utente_portale_id` int(11) DEFAULT NULL,
  `spid_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiration_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gestore_identita` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`utente_esterno_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal__utentespidagid`
--

LOCK TABLES `portal__utentespidagid` WRITE;
/*!40000 ALTER TABLE `portal__utentespidagid` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal__utentespidagid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settore`
--

DROP TABLE IF EXISTS `settore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settore` (
  `PERMS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CR_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOD_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CR_USER_ID` int(11) DEFAULT NULL,
  `MOD_USER_ID` int(11) DEFAULT NULL,
  `NOME` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settore`
--

LOCK TABLES `settore` WRITE;
/*!40000 ALTER TABLE `settore` DISABLE KEYS */;
/*!40000 ALTER TABLE `settore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup`
--

DROP TABLE IF EXISTS `setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup` (
  `PERMS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CR_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOD_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CR_USER_ID` int(11) DEFAULT NULL,
  `MOD_USER_ID` int(11) DEFAULT NULL,
  `APPLICAZIONE` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODICE` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALORE` longtext COLLATE utf8_unicode_ci,
  `NOTE` longtext COLLATE utf8_unicode_ci,
  `ID_TIPO` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID_ACCESSO` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup`
--

LOCK TABLES `setup` WRITE;
/*!40000 ALTER TABLE `setup` DISABLE KEYS */;
INSERT INTO `setup` VALUES ('ns',1,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'albo','codEstrPraticheAlbo',NULL,'tipologie di pratica dedicate ad albo','Array','AM'),('ns',2,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'albo','notifichePushAppAlbo',NULL,'attiva notifiche push per APP','Bool','SU'),('ns',3,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'albo','oscuraDopoScadenza',NULL,'Blocca la visualizzazione delle pagine dopo la scadenza','Bool','AM'),('ns',4,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'albo','soloPubblica',NULL,'Impostare a true se l\'installazione &Atilde;&uml; tutta su ns server anche di Notifiche ed Affissioni','Bool','SU'),('ns',5,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'albo','tabellaVisualizzazioneCompleta',NULL,'Visualizza tabella estesa per albo (true/false)','Bool','AM'),('ns',6,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'albo','visualizzaNrGiorni',NULL,'Visualizza numero di giorni sulle affissioni','Bool','AS'),('ns',7,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'benefici','percorsoUploadManuale',NULL,'eventuale percorso diverso per far coesistere installazioni che pubblicano con ftp ed inserimenti manuali da portale','String','SU'),('ns',8,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'benefici','tipologie_consulenti',NULL,'codici da usare per le tipologie dei  consulenti','Array','AM'),('ns',9,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'benefici','tipologie_legge190',NULL,'tipologie relative alla scelta del contraente legge 190','Array','AM'),('ns',10,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','abilita_allegato_firmato',NULL,'Flag per abilitare la ricezione del p7m','Bool','AM'),('ns',11,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','allegati_obbligatori',NULL,'Attiva l\'obbligatoriet&agrave;&nbsp; degli allegati','Bool','AM'),('ns',12,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','allegati_solo_p7m',NULL,'impostazione di base per accettare solo p7m. Questa impostazione viene sovrascritta dalle impostazioni specifiche sul procedimento','Bool','AM'),('ns',13,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','catasto_austriaco',NULL,'Nella scheda dei dati territoriali, imposta le informazioni come per il catasto austriaco','Bool','SU'),('ns',14,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','civiliaOpen',NULL,'Indica se il backoffice &egrave; Civilia Open.','Bool','SU'),('ns',15,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','codice_allegato_firmato',NULL,'codice allegato per upload documento finale firmato digitalmente','String','AM'),('ns',16,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','codice_allegato_generato',NULL,'codice allegato per documento generato dal portale','String','AM'),('ns',17,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','limita_piva_civilia',NULL,'limita la lunghezza della partita iva a 11 caratteri per evitare errori di inserimento in civilia','Bool','AM'),('ns',18,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','mailNuovePratiche',NULL,'Se valorizzata, viene inviata una Email al destinatario indicato, che avvisa circa la presenza di pratiche da scaricare','Email','AS'),('ns',19,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','mailPratiche',NULL,'Se valorizzato, invia al destinatario indicato una email con il documento finale prodotto per ciascuna pratica','Email','AS'),('ns',20,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','maxSizeAllegato',NULL,'dimensione massima allegato. 52428800 sono 50MB','Integer','AM'),('ns',21,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','nonFateIFurbi',NULL,'Se attivato impedisce blocca la navigazione delle schede con le sole freccie di avanzamento','Bool','SU'),('ns',22,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','otObbligatorio',NULL,'Richiede obbligatoriamente la presenza di almeno un dato territoriale . Questa impostazione viene sovrascritta dalle impostazioni specifiche sul procedimento.','Bool','AM'),('ns',23,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','PEC_email',NULL,'Email di cui i parametri sono stati inseriti in PEC_params','Email','AM'),('ns',24,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','PEC_params',NULL,'parametri SMTP per l\'invio della posta: host, port, autenticazione (true/false), username, password','Hash','AM'),('ns',25,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','ricevuta_protocollo',NULL,'mettendola a true la ricevuta viene attivata (sia sull\'elenco che sul dettaglio) solo se c\'&egrave; il numero di protocollo.','Bool','AM'),('ns',26,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','ricevute_PEC_email',NULL,'Mail from per l\'invio della ricevuta di protocollo','Email','AS'),('ns',27,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','richiediAppuntamento',NULL,'Se attivato abilita la possibilit&agrave;&nbsp; di prendere un appuntamento al termine del caricamento. Appuntamento e Pratica risulteranno poi collegati fra loro.','Bool','AM'),('ns',28,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','soloPersoneFisiche',NULL,'Se attivato esclude la possibilit&agrave;&nbsp; di inserire persone giuridiche sui referenti. Questa impostazione viene sovrascritta sulla base di quanto impostato su procedimento.','Bool','AM'),('ns',29,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','tipo_report',NULL,'tipo report finale (PDF / jasper)','String','SU'),('ns',30,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','vincoloObbligatorio',NULL,'Richiede obbligatoriamente la presenza di un vincolo sulla pratica. Questa impostazione viene sovrascritta dalle impostazioni specifiche sul procedimento.','Bool','AM'),('ns',31,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','zipFile',NULL,'Attiva lo scarico dei documenti in modalit&agrave;&nbsp; compressa e tramite wget. Necessario creare la cartella zipPratica sotto web/data e nella parte intranet impostare $urlZip','Bool','SU'),('ns',32,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'caricamento_pratiche','zonaObbligatoria',NULL,'Richiede obbligatoriamente la presenza di almeno una zona. Questa impostazione viene sovrascritta dalle impostazioni specifiche sul procedimento','Bool','AM'),('ns',33,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'commissione','codici',NULL,'Codici e le associazioni di visibilit&agrave; fra commissioni','Hash','AM'),('ns',34,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'commissione','invioEmail',NULL,'Attiva l\'invio delle email per la convocazione','Bool','SU'),('ns',35,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'commissione','invioSms',NULL,'Attiva l\'invio degli sms per la convocazione','Bool','SU'),('ns',36,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'commissione','notificaOdgSoloPerConvocazione',NULL,'Invia notifica solo in caso la data della convocazione nel futuro','Bool','SU'),('ns',37,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'commissione','sedutePubbliche',NULL,'codici delle commissioni pubbliche','Array','AM'),('ns',38,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'commissione','visualizzaSoloPdf',NULL,'Se attivo visualizza solo le stampe in PDF','Bool','AM'),('ns',39,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','codice_fiscale',NULL,'Codice fiscale dell\'ente','String','AM'),('ns',40,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','belfiore',NULL,'Codice belfiore dell\'ente','String','AM'),('ns',41,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','codice_aoo',NULL,'Codice AOO','String','AM'),('ns',42,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','codice_aoo_dest',NULL,'Codice AOO dell\'ente destinatario','String','AM'),('ns',43,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','codice_ipa',NULL,'Codice iPA o codice Amministrazione','String','AM'),('ns',44,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','codice_ipa_dest',NULL,'Codice iPA dell\'ente destinatario','String','AM'),('ns',45,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','codice_istat',NULL,'Codice Istat dell\'ente','String','AM'),('ns',46,'2019-09-19T06:14:02','2019-09-19T06:14:10',-1,-1,'ente','fax','','Fax dell\'ente','String','AM'),('ns',47,'2019-09-19T06:14:02','2019-09-19T06:14:10',-1,-1,'ente','indirizzo','Via ... ,1 - cap localita','Indirizzo dell\'ente','String','AM'),('ns',48,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','mail',NULL,'E-mail dell\'amministratore','String','AM'),('ns',49,'2019-09-19T06:14:02','2019-09-19T06:14:10',-1,-1,'ente','nome_ente','Comune di ...','Nome dell\'ente','String','AM'),('ns',50,'2019-09-19T06:14:02','2019-09-19T06:14:10',-1,-1,'ente','partita_iva','0000000000','Partita IVA dell\'ente','String','AM'),('ns',51,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','pec',NULL,'PEC istituzionale dell\'ente','Email','AM'),('ns',52,'2019-09-19T06:14:02','2019-09-19T06:14:10',-1,-1,'ente','telefono','','Telefono dell\'ente','String','AM'),('ns',53,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','tipo',NULL,'Tipo di ente, esempio: \'Comune di\', \'Citta di&#8217;','String','AM'),('ns',54,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ici','defaultsIMU',NULL,'valori di default per il calcolo dell\'IMU','Hash','AM'),('ns',55,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ici','email',NULL,'Email dell\'ufficio tributi','','AS'),('ns',56,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ici','max_anni_precedenti',NULL,'numero anni per andare indietro con il calcolo','Integer','SU'),('ns',57,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ici','max_righe_f24',NULL,'Numero massimo delle righe da riportare sull\'F24','Integer','SU'),('ns',58,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ici','nome_ufficio',NULL,'Nome dell\'ufficio per il calcolo dell\'IMU','String','AS'),('ns',59,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ici','orario1_ufficio',NULL,'Testo 1 per visualizzare gli orari degli uffici','String','AS'),('ns',60,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ici','orario2_ufficio',NULL,'Testo 2 per visualizzare gli orari degli uffici','String','AS'),('ns',61,'2019-09-19T06:14:02','2019-09-19T06:14:10',-1,-1,'portal','spider_moduli','','attiva integrazioni con moduli','Bool','SU'),('ns',62,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'portal','spider_pagamenti',NULL,'url completo per il servizio di pagamenti di spider','String','SU'),('ns',63,'2019-09-19T06:14:02','2019-09-19T06:14:10',-1,-1,'portal','spider_portal','http://tuodominio.it/portal/','url completo di portal di spider attivo per l\'installazione','String','SU'),('ns',64,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','anniTrasparenza',NULL,'numero anni visibili nelle consultazioni per trasparenza','Integer','AM'),('ns',65,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','consultazione_per_codice_fiscale',NULL,'Abilita la visualizzazione per codice fiscale e non per codice master','Bool','AM'),('ns',66,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','dimensioneMassima',NULL,'in byte: 52428800 sono 50Mb','Integer','AM'),('ns',67,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','email_comunicazioni',NULL,'se viene inserita l\'email attiva l\'invio delle comunicazioni sulla pratica','Email','AM'),('ns',68,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','estensioniAmmesse',NULL,'estensioni ammesse in inserimento','Array','AM'),('ns',69,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','PEC_params',NULL,'parametri invio posta tramite pec:  \'host\' , \'port\' , \'auth\', \'username\', \'password\'','Hash','AM'),('ns',70,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','sezioni',NULL,'codici sezione attivi per trasparenza','Hash','AS'),('ns',71,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','tipiDocumento',NULL,'tipi documento per pratica semplificata (next e gestione pratica semplificata)','Array','AS'),('ns',72,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','visualizza_estremi_protocollo_iter',NULL,'visualizza estremi protocollo nella tabella iter','Bool','AM'),('ns',73,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','visualizza_referenti_dett_registri',NULL,'visualizza dettaglio referenti su registri','Bool','AS'),('ns',74,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','visualizza_tecnico_iter_registri',NULL,'visualizza tecnico su registri','Bool','AS'),('ns',75,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','visualizzaSoloPdf',NULL,'Visualizza solo stampe in pdf','Bool','AS'),('ns',76,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','visualizzaStampeDoppie',NULL,'visualizza anche le stampe prodotte 2 volte','Bool','AM'),('ns',77,'2019-09-19T06:14:02','2019-09-19T06:14:10',-1,-1,'setupDB','hippo','1','se valorizzato a true significa che i setup sono a DB. Se valorizzato a false, ricarica i valori da file','Bool','SU'),('ns',78,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'setupDB','messi',NULL,'se valorizzato a true significa che i setup sono a DB. Se valorizzato a false, ricarica i valori da file','Bool','SU'),('ns',79,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'setupDB','spider',NULL,'se valorizzato a true significa che i setup sono a DB. Se valorizzato a false, ricarica i valori da file','Bool','SU'),('ns',80,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'tarsu','annoRiferimento',NULL,'anno di riferimento per gestione','Integer','AM'),('ns',81,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'tarsu','linkDocumentazione',NULL,'url per la documentazione della tarsu (esterno all\'applicazione)','String','AS'),('ns',82,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'tarsu','regime',NULL,'regime valori possibili TARSU o TIA. Ora sempre TIA','String','SU'),('ns',83,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'tarsu','soloCF',NULL,'forza consultazione per codice fiscale','Bool','SU'),('ns',84,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'trasparenza','pagineSezioni',NULL,'Associazione pagine e sezioni','Hash','SU'),('ns',85,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','estremi_banca',NULL,'inserire testo da visualizzare: esempio ABI 00000 CAB 00000 c/c n. 000000000000 CIN U IBAN IT 00 U 00000 00000 00000000000','String','AM'),('ns',86,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','url_sito',NULL,'indirizzo internet della home page dell\'ente. Inserire completo di http o https','String','AM'),('ns',87,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','estremi_conto_posta',NULL,'esempio C/C POSTALE n. 00000000. ABI 00000 CAB 00000 CIN U','String','AM'),('ns',88,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'ente','comune',NULL,'Comune dell\'ente.','String','AS'),('ns',89,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'messi','FESTIVITA',NULL,'salta festivi per il calcolo delle affissioni','Bool','AM'),('ns',90,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'commissione','visualizzaDa',NULL,'inserire la data (gg/mm/aaaa) dalla quale visualizzare le convocazioni','String','AM'),('ns',91,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'messi','CONTA_GIORNOINIZIO',NULL,'Conta anche il giorno di partenza per determinare la data di fine pubblicazione','Bool','AM'),('ns',92,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'messi','ELIMINA',NULL,'Consenti eliminazione delle pratiche','Bool','AM'),('ns',93,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'messi','DATIPROT_OBBLIGATORI',NULL,'Numero e data protcollo obbligatori','Bool','AM'),('ns',94,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'messi','TUTTE',NULL,'Imposta la visualizzazione di tutte le pratiche nella ricerca','Bool','AM'),('ns',95,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'messi','GRAFICA',NULL,'Attiva la visualizzazione grafica precedente','Bool','AM'),('ns',96,'2019-09-19T06:14:02','2019-09-19T06:14:12',-1,-1,'portal','cas','server: tuodominio.it\r\nport: 443\r\nuri: /portal/autenticazione/\r\n','Array del server cas: server (indicare senza protocollo), porta (443), uri (/portal/autenticazione/)','Hash','SU'),('ns',97,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','soloUfficiConSettore',NULL,'Se valorizzato visualizza in pratica semplificata solo gli uffici collegati ad un settore','Bool','AM'),('ns',98,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'pratiche_destinazione','estrazioniTrasparenza',NULL,'array delle estrazioni considerate nel visualizzare le sezioni','Array','AM'),('ns',99,'2019-09-19T06:14:02','2019-09-19T06:14:24',-1,-1,'auth','enable_auth_hub','','Se attivare l\'autenticazione unica','Bool','SU'),('ns',100,'2019-09-19T06:14:02','2019-09-19T06:14:47',-1,-1,'auth','redirect_url_auth_hub','','Url redirect per fare auth unica','String','SU'),('ns',101,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'auth_box','facebook',NULL,'Dati per autenticazione tramite auth_box per facebook','Hash','SU'),('ns',102,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'auth_box','twitter_admin',NULL,'Dati per autenticazione tramite auth_box per twitter','Hash','SU'),('ns',103,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'civilia_open','codice_relpar_coniuge',NULL,'Codice di relazione parentela del coniuge','String','AM'),('ns',104,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'civilia_open','master_segreti',NULL,'Array di codici master che non devono essere visualizzati','Array','AM'),('ns',105,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'cms','sanitize.enable',NULL,'Use whitelist based sanitizing for content','Bool','SU'),('ns',106,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'cms','sanitize.tags',NULL,'Additional tags allowed in content','Array','SU'),('ns',107,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'cms','sanitize.attributes_all',NULL,'Additional attributes allowed for every tag','Array','SU'),('ns',108,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'cms','sanitize.no_attributes_all',NULL,'Additional attributes allowed for every tag','Array','SU'),('ns',109,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'cms','sanitize.attributes',NULL,'An hash of attributes per tag to allow','Hash','SU'),('ns',110,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'cms','sanitize.no_tags',NULL,'Tags not allowed in content','Array','SU'),('ns',111,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'cms','sanitize.no_attributes',NULL,'Tags not allowed in content','Hash','SU'),('ns',112,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'cms','archive_news_sort',NULL,'','Hash','SU'),('ns',113,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'cms','destinatari_feedback',NULL,'Indica gli indirizzi email dei destinatari dei feedback, inserire indirizzi separati da virgola','String','AM'),('ns',114,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'comunicazioni','numero_comunicazioni_index',NULL,'Numero di comunicazioni visualizzate nell\'index delle comunicazioni','Integer','AM'),('ns',115,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'comunicazioni','canali_comunicazione',NULL,'Canali di comunicazione configurabili (portale, sms, email)','Array','SU'),('ns',116,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'comunicazioni','ws_area_riservata_abilitata',NULL,'Impostazione per indicare se il servizio manda tramite ws dati per l\'area riservata delle mobile apps','Bool','SU'),('ns',117,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'comunicazioni','consenti_sms_a_tutti',NULL,'Indica se anche gli amministratori del servizio comunicazioni possono usare il canale sms per inviare comunicazioni','Bool','AM'),('ns',118,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'comunicazioni','page_id_facebook',NULL,'Contiene il page_id della pagina facebook dove pubblica il comune, da vedere nelle impostazioni della pagina in Facebook','String','SU'),('ns',119,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'comunicazioni','app_id_facebook',NULL,'Contiene l\'id dell\' applicazione facebook fatta per il comune, da vedere nelle impostazioni della pagina in Facebook','String','SU'),('ns',120,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'comunicazioni','api_key_twitter',NULL,'Contiene la api_key che si vede nella app twitter fatta per il comune','String','SU'),('ns',121,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'comunicazioni','api_secret_twitter',NULL,'Contiene la api_secret che si vede nella app twitter fatta per il comune','String','SU'),('ns',122,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'comunicazioni','lingue_traduzioni',NULL,'Array con nome della lingua per traduzioni','Array','SU'),('ns',123,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'comunicazioni','pubbliche_per_gruppi',NULL,'Indica se le comunicazioni pubbliche possono essere inviate ai gruppi del portale.','Bool','SU'),('ns',124,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'comunicazioni','pubblica_home_cms',NULL,'Indica se usando il canale cms pubblica la home page','Bool','SU'),('ns',125,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'comunicazioni','max_risoluzione_immagini',NULL,'Indica la risoluzione massima in pixel (x e y) delle immagini delle news','Array','SU'),('ns',126,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'demografici','cartellini',NULL,'Se attivare la visualizzazione cartellini delle C.I.','Bool','SU'),('ns',127,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'demografici','formato_autocertificazioni',NULL,'Formato prescelto per la generazione delle autocertificazioni es: \'rtf\', \'pdf\' o \'odt\'','String','AM'),('ns',128,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'demografici','timbro_digitale',NULL,'Abilita le funzionalit&amp;agrave di Certificazione Anagrafica con TD_OPEN in modalit&agrave asincrona','Bool','SU'),('ns',129,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'demografici','people_xml',NULL,'Abilita le funzionalit&amp;agrave di Richiesta anagrafica PeopleXML','Bool','SU'),('ns',130,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'demografici','people_basic_auth',NULL,'Il servizio People richiede una basic_authentication, inserire nel formato \'user:password','String','SU'),('ns',131,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'demografici','people_service',NULL,'Url servizio PeopleXML','String','SU'),('ns',132,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'demografici','people_service_endpoint',NULL,'Url servizio di Endpoint PeopleXML, serve per impostare la location del servizio se differente dal\'Url principale','String','SU'),('ns',133,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'demografici','people_certificato_service',NULL,'Url servizio esterno per Appliance-CertificatoTD di PeopleXML','String','SU'),('ns',134,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'demografici','people_certificato_service_endpoint',NULL,'Url servizio esterno di Endpoint per Appliance-CertificatoTD di PeopleXML,  serve per impostare la location del servizio se differente dal\'Url principale','String','SU'),('ns',135,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'demografici','tipo_pagamento_bollo',NULL,'Indica se il pagamento in bollo &egrave; di tipo BolloNormale o BolloVirtuale','String','AM'),('ns',136,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'funzioni_speciali','abilita_dossier_cittadini',NULL,'Indica se &egrave; abilitato il dossier cittadino','Bool','SU'),('ns',137,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'funzioni_speciali','servizi_tracciati_dossier_cittadini',NULL,'Array di id dei servizi che si vogliono tracciare per i dossier dei cittadini','Array','SU'),('ns',138,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'funzioni_speciali','conf_tabella_estrazione',NULL,'','Hash','AM'),('ns',139,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'funzioni_speciali','password_demografici',NULL,'','String','SU'),('ns',140,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'moduli','mail_invio_moduli',NULL,'Indirizzo mail a cui inviare i moduli con gli allegati','String','AM'),('ns',141,'2019-09-19T06:14:02','2019-09-19T06:14:02',-1,-1,'moduli','aggiungi_dati_campo_dati',NULL,'Impostazione per indicare se si esportano in csv anche i campi interni del modulo nel campo Dati della tabella','Bool','AM'),('ns',142,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'moduli','url_ws_caricamento_pratiche',NULL,'Url completo tranne parametro per il web service getJSON per gli Allegati, Eventi e Interventi','String','SU'),('ns',143,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'moduli','testo_informativa_piede',NULL,'Testo da visualizzare nell\'informativa nel piede, se attivo','String','AM'),('ns',144,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'moduli','abilita_scelta_font',NULL,'Imposta se mostrare scelta font e dimensione del testo su editor','Bool','AM'),('ns',145,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'moduli','tipologia_bando',NULL,'Imposta tipo di bando (dirigenti, funzionari)','String','SU'),('ns',146,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'moduli','protocollo_interoperabile',NULL,'Attiva la protocollazione interoperabile (Default: nil, Opt: iride_web, civiliaopen, etc)','String','SU'),('ns',147,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'moduli','moduli.protocollo',NULL,'Parametri di connessione al webservice','Hash','AM'),('ns',148,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'moduli','protocollo_mittente',NULL,'Indirizzo di posta da usare forzatamente come mittente','String','AM'),('ns',149,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','email_amministratore',NULL,'Email amministratore muse','String','AM'),('ns',150,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','iscrizione.codice_comune',NULL,'Codice comune da tabelle MuSe','String',''),('ns',151,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','tipo_fatturazione',NULL,'Tipologia di fatturazione: City Card o Consuntiva','String','AM'),('ns',152,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','paga_anticipo_abilitato',NULL,'Indica se &egrave; abilitato il link al pagamento dell\'anticipo nell\'esito della iscrizione online','Bool','AM'),('ns',153,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','anno_erogazioni',NULL,'Imposta l\'anno per l\'estrazione delle erogazioni','Integer','AM'),('ns',154,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','anno_scolastico',NULL,'Imposta l\'anno per i servizi scolastici, formato: aaaa-aaaa','String','AM'),('ns',155,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','anno_scolastico_presenze',NULL,'Imposta l\'anno per il servizio di presenze scolastiche, formato: aaaa-aaaa','String','AM'),('ns',156,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','anno_scolastico_iscrizioni',NULL,'Imposta l\'anno per il servizio di Iscrizioni On Line, formato: aaaa-aaaa','String','AM'),('ns',157,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','orario_invio_presenze',NULL,'Imposta l\' orario massimo per inviare le presenze scolastiche. Formato hh:mm','String','AM'),('ns',158,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','abilita_invio_presenze',NULL,'Imposta se inviare le presenze per mail','Bool','AM'),('ns',159,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','email_servizio_mensa',NULL,'Indirizzi e mail a cui inviare le presenze (Array)','Array',''),('ns',160,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','abilita_presenze_per_operatore',NULL,'Imposta se mostrare all\'operatore scolastico la gestione delle presenze','Bool','AM'),('ns',161,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','numero_ricezione_sms',NULL,'Numero per abilitare comunicazioni dai cittadini via SMS','String','AM'),('ns',162,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','orari_rilevazione_presenze',NULL,'Intervallo orario in cui il servizio &egrave; sospeso.Es: Dalle 9:30 alle 18:30 non si accettano sms. Dalle 18:30 si segnala per il giorno seguente','Array',''),('ns',163,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','abilita_presenze_per_utente_portale',NULL,'Imposta se permettere all\'utente del portale la segnalazione delle presenze tramite web app','Bool','AM'),('ns',164,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','abilita_presenze_giorni_precedenti',NULL,'Imposta se mostrare all\'operatore che ci sono stati dei giorni non confermati','Bool','AM'),('ns',165,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','mail_mancato_inserimento_presenze',NULL,'Indirizzi e-mail a cui arriva la segnalazione che non sono state confermate delle classi','Array','AM'),('ns',166,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','giorni_non_confermati_mese_corrente',NULL,'Imposto se visualizzare solo i giorni non confermati del mese corrente','Bool','AM'),('ns',167,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'muse','data_generazione_presenze',NULL,'Imposto la data per cui generare le presenze scolastiche se diverse da data odierna','String','SU'),('ns',168,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'newsletter','nome',NULL,'Nome della newsletter','String','AM'),('ns',169,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'newsletter','indirizzo_mittente',NULL,'E-mail da cui devono provenire i messaggi newsletter','String','AM'),('ns',170,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'newsletter','email_amministratore',NULL,'Indirizzo e-mail dell\'amministratore della newsletter','String','AM'),('ns',171,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'newsletter','importa_comunicazioni',NULL,'Abilita la selezione dei testi dalle comunicazioni se installato','Bool','AM'),('ns',172,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','sistemi_segnalazione.segnalazioni',NULL,'Lista di segnalazioni di pagamento','Array','SU'),('ns',173,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','sistemi_segnalazione.intestatario_bonifici',NULL,'Intestatario dei bonifici degli utenti','String','AM'),('ns',174,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','sistemi_segnalazione.cc_banca',NULL,'Conto corrente della banca per i bonifici degli utenti','String','AM'),('ns',175,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','sistemi_segnalazione.iban',NULL,'IBAN da indicare nei bonifici degli utenti','String','AM'),('ns',176,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','endpoint_mespa',NULL,'Url http per contattare MESPA da Pagamenti','String','SU'),('ns',177,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','endpoint_wisp',NULL,'Url http per contattare pagina WISP da Pagamenti','String','SU'),('ns',178,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','endpoint_elenco_psp',NULL,'Url http per consultare elenco dei PSP attivi','String','SU'),('ns',179,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','pagopa.aux_digit',NULL,'AuxDigit PagoPA','String','AM'),('ns',180,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','pagopa.buffer_stampa_avviso',NULL,'Determina il buffer di generazione degli avvisi','String','AM'),('ns',181,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','genera_avviso_singolo',NULL,'Per generazione massiva degli avvisi viene generato un singolo file','Bool','AM'),('ns',182,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','pagopa.bollettino_postale',NULL,'Abilitazione alla stampa del bollettino postale','Bool','SU'),('ns',183,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','pagopa.modello3_utenti_confermati',NULL,'visualizza pagamenti da avviso solo per utenti confermati','Bool','SU'),('ns',184,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','pagopa.lettera_accompagnatoria',NULL,'Abilitazione della gestione delle lettere accompagnatorie','Bool','SU'),('ns',185,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','nafta.api_key',NULL,'Chiave per la comunicazione server2server','Hash','SU'),('ns',186,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','nafta.url',NULL,'Url di destinazione per aggiornamento pratiche','String','SU'),('ns',187,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','pagopa.wisp_psp',NULL,'Wisp2 PSP fittizio da inserire nella RPT','Hash','SU'),('ns',188,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pagamenti','pagopa.wisp_versione',NULL,'Definisce la versione di wisp da usare ver => 13,20,etc. default => 13','Integer','SU'),('ns',189,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','autenticazione_interna',NULL,'Se abilitare l\'autenticazione interna','Bool','AM'),('ns',190,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','registrazione_utenti',NULL,'Se abilitare la registrazione utenti dal portale','Bool','AM'),('ns',191,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','autenticazioni_esterne',NULL,'Elenco di provider di autenticazione esterna da utilizzare','Array','SU'),('ns',192,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','attivazione_utenti_automatica',NULL,'Se rendere l\'utente attivo quando si registra','Bool','AM'),('ns',193,'2019-09-19T06:14:03','2019-09-19T06:14:10',-1,-1,'portal','email_from','[non-rispondere@comune.it]','Indirizzo \'from\' da cui provengono i messaggi del portale','String','AM'),('ns',194,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','email_amministratore',NULL,'Indirizzo e-mail dell\'amministratore del portale','String','AM'),('ns',195,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','richiedi_documento',NULL,'Se richiedere il documento alla registrazione','Bool','AM'),('ns',196,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','conferma_email',NULL,'Se richiedere la conferma dell\'indirizzo e-mail alla registrazione','Bool','AM'),('ns',197,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','conferma_cellulare',NULL,'Se richiedere la conferma del numero di cellulare alla registrazione (richiede messenger SMS)','Bool','AM'),('ns',198,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','conferma_cambio_email',NULL,'Se richiedere la conferma dell\'e-mail quando viene cambiata','Bool','AM'),('ns',199,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','conferma_cambio_cellulare',NULL,'Se richiedere la conferma del cellulare quando viene cambiato (richiede messenger SMS)','Bool','AM'),('ns',200,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','cellulare_obbligatorio',NULL,'Se richiedere il cellulare in fase di registrazione','Bool','AM'),('ns',201,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','pec_obbligatoria',NULL,'Se richiedere la pec obbligatoria in fase di registrazione','Bool','AM'),('ns',202,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','registrazione_professionista',NULL,'Abilita registrazione come professionista con Albo professionale','Bool','AM'),('ns',203,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','spid.sp_name_qualifier',NULL,'Name qualifier del service processor , un URI con lo schema specificato (es: http://dominio/portal)','String','SU'),('ns',204,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','spid.skip_validation',NULL,'Imposto se evitare la validazione della response','Bool','SU'),('ns',205,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','spid.issuer',NULL,'SP Issuer, un URI con lo schema specificato (es: http://dominio/portal)','String','SU'),('ns',206,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','spid.cert_path',NULL,'Path del certificato (formato pem) dalla root','String','SU'),('ns',207,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','Spid.private_key_path',NULL,'Path della chiave (formato pem) dalla root','String','SU'),('ns',208,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','spid.organization',NULL,'Hash che contiene nome, nome lungo e url dell\'ente fornitore di servizi','Hash','AM'),('ns',209,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','spid.assertion_index',NULL,'Index di AssertionConsumerServiceIndex nella authnrequest','String','AM'),('ns',210,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','spid.attribute_index',NULL,'Index di AttributeConsumingServiceIndex nella authnrequest','String','AM'),('ns',211,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','servizi_privati_default',NULL,'Servizi privati da attivare in automatico alla registrazione','Array','AM'),('ns',212,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','api.chiavi',NULL,'Client id e secret key per autenticazione delle chiamate da web service','Hash','SU'),('ns',213,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'notifiche','moduli_da_disattivare',NULL,'Elenco dei moduli di notifica da disattivare','Array','SU'),('ns',214,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'notifiche','sms',NULL,'Se attivare l\'invio delle notifiche via SMS','Bool','SU'),('ns',215,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'notifiche','email_mittente',NULL,'Indirizzo From per le e-mail','String','AM'),('ns',216,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'notifiche','muse.limite_credito_1',NULL,'Limite di credito CityCard per il primo avviso','BigDecimal','AM'),('ns',217,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'notifiche','muse.limite_credito_2',NULL,'Limite di credito CityCard per il secondo avviso','BigDecimal','AM'),('ns',218,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'notifiche','muse.notifica_onetime_per_limit',NULL,'Notifica il credito una sola volta per limite','Bool','AM'),('ns',219,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','attiva_settori_hippo',NULL,'Imposta se attivare i settori delle tabelle dei benefici','Bool','AM'),('ns',220,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','url_get_doc',NULL,'Url per scaricare le pratiche con getDoc php dopo auth ruby','String','AM'),('ns',221,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','servizi.richiesta_documenti_cittadino',NULL,'Richiede al cittadino integrazione e successiva mail all\'Ente per abilitare un servizio con conferma es: (Demografici)','Bool','AM'),('ns',222,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','abilita_gdpr_utente',NULL,'Imposta se mostrare al cittadino l\'informativa sulla privacy','Bool','SU'),('ns',223,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','campi_readonly_auth_esterne',NULL,'Imposta se i campi provenienti da auth esterne sono readonly o no','Bool','AM'),('ns',224,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','campi_tabella_schede',NULL,'Indica i campi della scheda che visualizzo nella tabella dell\'elenco in gestione','Array','SU'),('ns',225,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','lingue_traduzioni',NULL,'Array con nome della lingua per traduzioni','Array','SU'),('ns',226,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','lingua_labels',NULL,'Lingua delle labels per andare a prendere le traduzioni degli elementi dei modelli','String','SU'),('ns',227,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','calendario.attivo',NULL,'Indica se attivare il calendario','Bool','SU'),('ns',228,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','calendario.abilita_scelta_dati_calendario',NULL,'Indica se abilitare la scelta dei dati da inseire nel calendario','Bool','SU'),('ns',229,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','calendario.modelli_dati_calendario',NULL,'Se impostato a \'prisma\' carica i modelli di prisma, altrimenti carica i modelli della app indicata','String','SU'),('ns',230,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','calendario.modello_per_calendario',NULL,'Indica le schede del modello alle quali saranno associati i calendari','String','SU'),('ns',231,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','mostra_mappa_dettaglio',NULL,'Indica se mostrare la mappa di Google Maps nel dettaglio della scheda.','Bool','SU'),('ns',232,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','mostra_labels_dettaglio',NULL,'Indica se mostrare le labels dei campi nel dettaglio della scheda','Bool','SU'),('ns',233,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','seleziona_liste_figli_dettaglio',NULL,'Hash che indica le liste di figli da mostrare nel dettaglio di una scheda','Hash','SU'),('ns',234,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','max_risoluzione_immagini',NULL,'Indica i valori x e y della risoluzione massima delle immagini consentita','Array','SU'),('ns',235,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','campi_scheda_per_lista',NULL,'Indica i campi della scheda di un modello che vengono visualizzati nella lista di schede, hash di array dove le chiavi sono i nomi dei modelli','Hash','SU'),('ns',236,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','attiva_sito_aziendale',NULL,'\"Indica se usare Prisma come sito aziendale','Bool','SU'),('ns',237,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','title_sito',NULL,'Title da mostrare nel sito','String','SU'),('ns',238,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','nome_azienda',NULL,'Nome dell\'azienda nella testata del sito','String','SU'),('ns',239,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','slogan_azienda',NULL,'Slogan dell\'azienda da mettere sotto al nome','String','SU'),('ns',240,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','modelli_menu',NULL,'Array con titolo delle schede di livello 1 da mostrare nel menu della testata','Array','SU'),('ns',241,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','attiva_carosello_aziendale',NULL,'Indica se usare il carosello prodotti nella home page.','Bool','SU'),('ns',242,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','link_social',NULL,'Hash che contiene come chiave il nome del social e come valore il link, es:  facebook: www.facebook.com/nostrapagina','Hash','SU'),('ns',243,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','link_referenze',NULL,'Hash che contiene come chiave il nome dell\'ente e dell\'immagine e come valore il link, es:  aglie: http://www.comune.aglie.to.it/','Hash','SU'),('ns',244,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','attiva_comunicazioni',NULL,'Indica se attivare le comunicazioni inserite da Comunicazioni in home page','Bool','SU'),('ns',245,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','attiva_tag_cloud',NULL,'Indica se attivare l\'inserimento dei tag e la tag_cloud','Bool','SU'),('ns',246,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','attiva_schede_non_visibili',NULL,'Indica se attivare la possibilit&agrave; di non mostare le schede se non selezionata l\'opzione visibile','Bool','SU'),('ns',247,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','attiva_menu_dettaglio',NULL,'Indica se attivare il menu laterale nel dettaglio delle schede','Bool','SU'),('ns',248,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'prisma','menu_top_fixed',NULL,'Indica se si vuole rendere il menu superiore fisso in versione minimale allo scroll della pagina','Bool','SU'),('ns',249,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','smtp.address',NULL,'SMTP address to use when sending mail','String','AM'),('ns',250,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','smtp.port',NULL,'SMTP port','Integer','AM'),('ns',251,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','smtp.domain',NULL,'HELO domain','String','AM'),('ns',252,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','smtp.username',NULL,'SMTP authentication username','String','AM'),('ns',253,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','smtp.password',NULL,'SMTP authentication password','String','AM'),('ns',254,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','smtp.auth_scheme',NULL,'SMTP authentication scheme','Symbol','AM'),('ns',255,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','smtp.enable_starttls_auto',NULL,'Automatically start TLS for SMTP','Bool','AM'),('ns',256,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','openssl_verify_mode',NULL,'Openssl verification','Bool','AM'),('ns',257,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','smtp.ssl',NULL,'ssl','String','AM'),('ns',258,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','smtp.tls',NULL,'tls','String','AM'),('ns',259,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','sms.backend',NULL,'The backend to use for sending sms','String','SU'),('ns',260,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','mobyt.username',NULL,'Username for the Mobyt servic','String','SU'),('ns',261,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','mobyt.password',NULL,'Password for the Mobyt service','String','SU'),('ns',262,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','mobyt.from',NULL,'From parameter for the Mobyt service','String','SU'),('ns',263,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','skebby.username',NULL,'Username for the Skebby service','String','SU'),('ns',264,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','skebby.password',NULL,'Password for the Skebby service','String','SU'),('ns',265,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'messenger','skebby.from',NULL,'From parameter for the Skebby service','String','SU'),('ns',266,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'static_content','mode',NULL,'Mode to use for serving static files','String','SU'),('ns',267,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'static_content','auto_publish',NULL,'Automatically publish content to the home\'s public folder','Bool','SU'),('ns',268,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'http','proxy_mapping',NULL,'If the request is proxyied, the urls used to reach spider, with the corresponding paths called by the proxy','Hash','SU'),('ns',269,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'site','admin.email',NULL,'Email of the site administrator','String','SU'),('ns',270,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'site','tech_admin.email',NULL,'Email of the site technical administrator','String','SU'),('ns',271,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'site','domain',NULL,'Main domain name used to access the site','String','SU'),('ns',272,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'site','port',NULL,'Main port used to access the site','Integer','SU'),('ns',273,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'site','ssl',NULL,'Whether this site can be accessed using SSL','Bool','SU'),('ns',274,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'site','ssl_port',NULL,'Port used to access the site via SSL','Integer','SU'),('ns',275,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'javascript','compress',NULL,'Compress JavaScript files','Bool','SU'),('ns',276,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'css','compress',NULL,'Combine CSS files','Bool','SU'),('ns',277,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'css','compile',NULL,'Compile CSS files','Bool','SU'),('ns',278,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'albo','storicoSenzaDocumenti',NULL,'Se attiva in albo pretorio full saranno visibili solo i dati ma non i documenti','Bool','AM'),('ns',279,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'pratiche_destinazione','email_comunicazioni_copiaUtente',NULL,'Se attivo, invia copia della comunicazione anche all\'utente','Bool','AM'),('ns',280,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'trasparenza','menuLaterale',NULL,'fa comparire la griglia classica della trasparenza','Bool','AM'),('ns',281,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'benefici','codiceSettoreAmministratori',NULL,'Se valorizzato indica il settore che pu&ograve; gestire tutte le tabelle relative agli amministratori','Integer','AM'),('ns',282,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','geonext',NULL,'Abilitata la visualizzazione di geonext: necessario definire prima le altre voci di setup','Bool','AM'),('ns',283,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','geonextUrl',NULL,'Indicare l\'url completo di geonext esempio: \r\nhttp://labcatania.dedagroup.it/geonext-ctw/home.jsp','String','AM'),('ns',284,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','geonextIdUtente',NULL,'indicare l\'id dell\'utente di geonext','Integer','AM'),('ns',285,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','geonextOrganizzation',NULL,'Impostare l\'id dell\'organizzazione per GeoNext','Integer','AM'),('ns',286,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'benefici','rilevaTempiProcedimento',NULL,'se attivo estende la gestione dell\'accesso civico con tutti i procedimenti. Necessario impostare il flag sui vari procedimenti e per l\'accesso civico','Bool','AM'),('ns',287,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','geonextAuthUrl',NULL,'Esempio: https://geonext.civilianextuat.it/geonext-datacatalogue-services/datacatalogservlet?','String','AM'),('ns',288,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','geonextAuthUtente',NULL,'esempio: openweb','String','AM'),('ns',289,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'portal','geonextAuthPassword',NULL,'esempio: openweb','String','AM'),('ns',290,'2019-09-19T06:14:03','2019-09-19T06:14:03',-1,-1,'caricamento_pratiche','proprietari',NULL,'Indicare l\'elenco dei codici di referenza da riportare nel template pratiche elenco referenti di moduli','Array','AS'),('ns',291,'2019-09-29T08:56:19','2019-09-29T08:57:56',-1,-1,'appuntamenti','durataSessione','300','Esprime in secondi, la durata della sessione','Integer','AM'),('ns',292,'2019-09-29T08:56:19','2019-09-29T08:57:44',-1,-1,'appuntamenti','limitaMesi','3','Numero dei mesi nel futuro per i quali &egrave; consentito prendere appuntamenti','Integer','AM'),('ns',293,'2019-09-29T08:56:19','2019-09-29T08:57:51',-1,-1,'appuntamenti','giorniAnticipo','1','Numero dei giorni per i quali non possibile chiedere l\'appuntamento','Integer','AM'),('ns',294,'2019-09-29T08:56:19','2019-09-29T08:57:32',-1,-1,'appuntamenti','chiusureAnnuali','[\'01/01\', \'06/01\', \'25/04\', \'01/05\', \'15/08\', \'01/11\', \'08/12\', \'25/12\', \'26/12\']','Elenco giorni di chiusura. Valore default [\'01/01\', \'06/01\', \'25/04\', \'01/05\', \'15/08\', \'01/11\', \'08/12\', \'25/12\', \'26/12\']','Array','AS'),('ns',295,'2019-09-29T08:56:19','2019-09-29T08:57:16',-1,-1,'appuntamenti','stato_richieste_default','2','impostare 1 per prenotato, 2 per confermato','Integer','AM');
/*!40000 ALTER TABLE `setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__auth__digestuser`
--

DROP TABLE IF EXISTS `spider__auth__digestuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__auth__digestuser` (
  `login_user_id` int(11) NOT NULL DEFAULT '0',
  `id_digest_user` int(11) DEFAULT NULL,
  `realm` varchar(255) DEFAULT NULL,
  `ha1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`login_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__auth__digestuser`
--

LOCK TABLES `spider__auth__digestuser` WRITE;
/*!40000 ALTER TABLE `spider__auth__digestuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__auth__digestuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__auth__loginuser`
--

DROP TABLE IF EXISTS `spider__auth__loginuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__auth__loginuser` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `id_login_user` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__auth__loginuser`
--

LOCK TABLES `spider__auth__loginuser` WRITE;
/*!40000 ALTER TABLE `spider__auth__loginuser` DISABLE KEYS */;
INSERT INTO `spider__auth__loginuser` VALUES (1,1,'admin','sha2$/hU)PBTIliB$c136c409565913b752a13450d7a8fa6f4ca8184f521899a33be117dc3336473e');
/*!40000 ALTER TABLE `spider__auth__loginuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__auth__superuser`
--

DROP TABLE IF EXISTS `spider__auth__superuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__auth__superuser` (
  `login_user_id` int(11) NOT NULL DEFAULT '0',
  `id_super_user` int(11) DEFAULT NULL,
  `global_admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`login_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__auth__superuser`
--

LOCK TABLES `spider__auth__superuser` WRITE;
/*!40000 ALTER TABLE `spider__auth__superuser` DISABLE KEYS */;
INSERT INTO `spider__auth__superuser` VALUES (1,1,NULL);
/*!40000 ALTER TABLE `spider__auth__superuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__auth__user`
--

DROP TABLE IF EXISTS `spider__auth__user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__auth__user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=958 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__auth__user`
--

LOCK TABLES `spider__auth__user` WRITE;
/*!40000 ALTER TABLE `spider__auth__user` DISABLE KEYS */;
INSERT INTO `spider__auth__user` VALUES (1,'2016-05-28 15:04:42','2016-05-28 15:04:42'),(2,'2016-05-28 15:14:52','2016-05-28 15:18:12'),(3,'2019-03-11 11:11:20','2019-03-11 11:11:20'),(4,'2019-03-11 11:13:41','2019-03-11 11:13:41'),(5,'2019-03-20 10:38:22','2019-03-20 10:38:22'),(6,'2019-03-20 10:48:56','2019-08-27 08:30:58'),(7,'2019-03-29 10:51:30','2019-03-29 10:51:30'),(8,'2019-04-02 13:55:52','2019-04-16 10:59:53'),(9,'2019-04-09 18:07:14','2019-04-09 18:07:14'),(10,'2019-04-10 08:20:27','2019-06-14 07:54:11'),(11,'2019-04-11 09:47:58','2019-04-11 10:22:44'),(12,'2019-04-11 10:08:44','2019-04-11 10:22:56'),(13,'2019-04-11 10:11:46','2019-04-11 10:23:07'),(14,'2019-04-11 10:12:39','2019-04-11 10:23:17'),(15,'2019-04-11 10:13:26','2019-04-11 10:23:26'),(18,'2019-04-11 16:46:33','2019-06-03 09:52:16'),(19,'2019-04-15 09:38:46','2019-04-15 11:25:47'),(20,'2019-04-16 11:05:30','2019-04-16 11:05:30'),(21,'2019-04-18 09:48:22','2019-04-18 09:48:22'),(22,'2019-04-18 09:58:38','2019-04-18 09:58:38'),(23,'2019-04-18 10:11:43','2019-04-18 10:11:43'),(24,'2019-04-18 10:23:59','2019-04-18 10:23:59'),(25,'2019-04-18 10:26:50','2019-04-18 10:26:50'),(26,'2019-04-18 10:39:07','2019-04-18 16:42:48'),(27,'2019-04-18 10:45:39','2019-04-18 10:45:39'),(28,'2019-04-18 11:02:25','2019-04-18 11:02:25'),(29,'2019-04-18 11:13:00','2019-04-18 11:13:00'),(30,'2019-04-18 11:38:15','2019-04-18 11:38:15'),(31,'2019-04-18 11:48:23','2019-04-18 11:48:23'),(32,'2019-04-18 12:14:46','2019-04-18 12:14:46'),(33,'2019-04-18 12:34:46','2019-04-18 12:34:46'),(34,'2019-04-18 13:28:59','2019-04-18 13:29:00'),(35,'2019-04-18 14:11:11','2019-04-18 14:11:11'),(36,'2019-04-18 14:41:49','2019-06-08 08:37:49'),(37,'2019-04-18 15:45:16','2019-04-18 15:45:16'),(38,'2019-04-18 16:34:32','2019-04-18 16:34:32'),(39,'2019-04-18 16:37:47','2019-04-18 16:37:47'),(40,'2019-04-18 16:51:48','2019-04-18 16:51:48'),(41,'2019-04-18 17:22:41','2019-04-18 17:22:42'),(42,'2019-04-18 17:24:47','2019-07-15 20:16:20'),(43,'2019-04-18 17:37:38','2019-04-18 17:37:38'),(44,'2019-04-18 18:35:11','2019-04-18 18:35:11'),(45,'2019-04-18 18:46:08','2019-04-18 18:46:08'),(46,'2019-04-18 19:07:42','2019-04-18 19:07:42'),(47,'2019-04-18 19:21:41','2019-04-18 19:21:41'),(48,'2019-04-18 19:29:10','2019-04-18 19:29:10'),(49,'2019-04-18 20:58:54','2019-04-18 20:58:54'),(50,'2019-04-18 21:04:58','2019-04-18 21:04:58'),(51,'2019-04-19 09:33:47','2019-04-19 09:33:47'),(52,'2019-04-19 09:53:50','2019-04-19 09:53:50'),(53,'2019-04-19 10:40:17','2019-04-19 10:40:17'),(54,'2019-04-19 11:02:00','2019-04-19 11:02:01'),(55,'2019-04-19 11:53:27','2019-04-19 11:53:27'),(56,'2019-04-19 11:53:44','2019-04-19 11:53:44'),(57,'2019-04-19 12:14:20','2019-04-19 12:14:20'),(58,'2019-04-19 13:26:52','2019-04-19 13:26:53'),(59,'2019-04-19 13:34:05','2019-05-14 00:45:45'),(60,'2019-04-19 15:26:55','2019-04-19 15:26:55'),(61,'2019-04-19 17:48:45','2019-04-19 17:48:45'),(62,'2019-04-20 14:30:17','2019-04-20 14:30:18'),(63,'2019-04-21 08:43:32','2019-04-21 08:43:32'),(64,'2019-04-21 10:54:31','2019-04-21 10:54:31'),(65,'2019-04-21 14:17:15','2019-04-21 14:17:15'),(66,'2019-04-21 18:31:06','2019-04-21 18:31:06'),(67,'2019-04-21 22:25:02','2019-04-21 22:25:03'),(68,'2019-04-22 16:46:10','2019-04-22 16:46:10'),(69,'2019-04-22 18:09:13','2019-04-22 18:09:13'),(70,'2019-04-22 19:13:21','2019-04-22 19:13:21'),(71,'2019-04-22 19:58:05','2019-04-22 19:58:05'),(72,'2019-04-22 22:45:04','2019-04-22 22:45:04'),(73,'2019-04-23 00:36:59','2019-04-23 00:36:59'),(74,'2019-04-23 09:05:55','2019-04-23 09:05:55'),(75,'2019-04-23 10:09:18','2019-04-23 10:09:18'),(76,'2019-04-23 10:34:43','2019-04-23 10:34:43'),(77,'2019-04-23 12:36:00','2019-04-23 12:36:00'),(78,'2019-04-23 13:58:37','2019-04-23 13:58:37'),(79,'2019-04-23 16:15:48','2019-04-23 16:15:48'),(80,'2019-04-23 23:11:59','2019-04-23 23:11:59'),(81,'2019-04-24 09:29:49','2019-04-24 09:29:50'),(82,'2019-04-24 09:29:53','2019-04-24 09:29:53'),(83,'2019-04-24 13:39:34','2019-04-24 13:39:34'),(84,'2019-04-24 15:03:34','2019-04-24 15:03:34'),(85,'2019-04-24 15:07:57','2019-04-24 15:07:57'),(86,'2019-04-24 15:57:31','2019-04-24 15:57:31'),(87,'2019-04-24 20:16:16','2019-04-24 20:16:16'),(88,'2019-04-24 20:18:43','2019-04-24 20:18:43'),(89,'2019-04-24 21:34:52','2019-04-24 21:34:52'),(90,'2019-04-25 11:52:21','2019-04-25 11:52:21'),(91,'2019-04-25 18:35:32','2019-04-25 18:35:32'),(92,'2019-04-26 08:52:45','2019-04-26 08:52:46'),(93,'2019-04-26 09:33:20','2019-04-26 09:33:21'),(94,'2019-04-26 09:48:23','2019-04-26 09:48:23'),(95,'2019-04-26 09:55:11','2019-04-26 09:55:12'),(96,'2019-04-26 11:24:34','2019-04-26 11:24:34'),(97,'2019-04-26 11:50:41','2019-04-26 11:50:41'),(98,'2019-04-26 13:34:50','2019-06-07 18:12:58'),(99,'2019-04-26 14:35:00','2019-04-26 14:35:00'),(100,'2019-04-26 16:41:24','2019-04-26 16:41:24'),(101,'2019-04-26 16:48:57','2019-04-26 16:48:57'),(102,'2019-04-26 18:06:30','2019-04-26 18:06:30'),(103,'2019-04-27 09:16:08','2019-06-20 13:08:38'),(104,'2019-04-27 09:25:37','2019-04-27 09:25:37'),(105,'2019-04-27 10:33:37','2019-04-27 10:33:37'),(106,'2019-04-28 03:00:51','2019-04-28 03:00:51'),(107,'2019-04-28 11:23:38','2019-05-04 13:59:04'),(108,'2019-04-28 17:49:36','2019-04-28 17:49:36'),(109,'2019-04-28 23:56:22','2019-04-28 23:56:22'),(110,'2019-04-29 09:54:01','2019-04-29 09:54:01'),(111,'2019-04-29 11:31:10','2019-04-29 11:31:10'),(112,'2019-04-29 11:51:01','2019-04-29 11:51:01'),(113,'2019-04-29 12:05:57','2019-04-29 12:05:57'),(114,'2019-04-29 12:37:37','2019-04-29 12:37:37'),(115,'2019-04-29 14:55:37','2019-04-29 18:39:35'),(116,'2019-04-29 16:15:07','2019-04-29 16:15:07'),(117,'2019-04-29 16:25:35','2019-04-29 16:25:35'),(118,'2019-04-29 19:30:52','2019-04-29 19:30:52'),(119,'2019-04-29 19:50:18','2019-04-29 19:50:18'),(120,'2019-04-29 21:02:43','2019-04-29 21:02:43'),(121,'2019-04-30 00:02:54','2019-04-30 00:02:54'),(122,'2019-04-30 08:01:33','2019-04-30 08:01:33'),(123,'2019-04-30 11:18:44','2019-04-30 11:18:44'),(124,'2019-04-30 12:01:29','2019-04-30 12:01:29'),(125,'2019-04-30 12:53:18','2019-04-30 12:53:18'),(126,'2019-04-30 19:07:13','2019-04-30 19:07:13'),(127,'2019-04-30 20:11:34','2019-04-30 20:11:34'),(128,'2019-05-01 14:00:52','2019-05-01 14:00:52'),(129,'2019-05-01 20:01:54','2019-05-01 20:01:54'),(130,'2019-05-02 09:02:19','2019-05-02 09:02:19'),(131,'2019-05-02 09:50:14','2019-05-02 09:50:14'),(132,'2019-05-02 11:33:53','2019-05-02 11:33:53'),(133,'2019-05-02 14:42:04','2019-06-15 17:06:31'),(134,'2019-05-02 16:44:48','2019-05-02 16:44:48'),(135,'2019-05-02 17:33:38','2019-05-02 17:33:38'),(136,'2019-05-02 19:36:24','2019-05-02 19:36:24'),(137,'2019-05-02 19:59:50','2019-05-02 19:59:50'),(138,'2019-05-02 20:57:25','2019-05-02 20:57:25'),(139,'2019-05-03 01:07:16','2019-05-03 01:07:16'),(140,'2019-05-03 08:14:38','2019-05-03 08:14:38'),(141,'2019-05-03 09:09:19','2019-05-03 09:09:19'),(142,'2019-05-03 10:20:38','2019-05-03 10:20:38'),(143,'2019-05-03 12:59:28','2019-05-03 12:59:28'),(144,'2019-05-03 13:32:28','2019-05-03 13:32:29'),(145,'2019-05-03 14:57:57','2019-05-15 10:51:43'),(146,'2019-05-03 16:02:04','2019-05-03 16:02:05'),(147,'2019-05-03 20:52:55','2019-05-03 20:52:55'),(148,'2019-05-04 10:34:06','2019-05-04 10:34:06'),(149,'2019-05-05 12:08:59','2019-05-05 12:08:59'),(150,'2019-05-05 17:06:31','2019-05-05 17:06:31'),(151,'2019-05-06 06:40:54','2019-05-06 06:40:54'),(152,'2019-05-06 11:06:59','2019-05-06 11:06:59'),(153,'2019-05-06 11:08:04','2019-05-06 11:08:04'),(154,'2019-05-06 13:29:44','2019-05-06 13:29:44'),(155,'2019-05-06 14:49:38','2019-05-06 14:49:38'),(156,'2019-05-06 15:42:40','2019-05-06 15:42:40'),(157,'2019-05-06 15:46:16','2019-05-06 15:46:16'),(158,'2019-05-06 16:51:33','2019-05-06 16:51:33'),(159,'2019-05-06 22:51:14','2019-05-06 22:51:14'),(160,'2019-05-07 09:14:46','2019-05-07 09:14:46'),(161,'2019-05-07 12:57:26','2019-05-07 12:57:26'),(162,'2019-05-07 14:08:20','2019-05-07 14:08:20'),(163,'2019-05-07 14:51:36','2019-05-07 14:51:36'),(164,'2019-05-07 15:07:40','2019-05-07 15:07:40'),(165,'2019-05-07 15:08:19','2019-05-07 15:08:19'),(166,'2019-05-07 15:25:54','2019-05-07 15:25:55'),(167,'2019-05-07 17:00:44','2019-05-07 17:00:44'),(168,'2019-05-07 18:07:52','2019-05-07 18:07:52'),(169,'2019-05-07 18:34:27','2019-05-07 18:34:28'),(170,'2019-05-08 09:40:35','2019-05-08 09:40:35'),(171,'2019-05-08 11:26:58','2019-05-08 11:26:58'),(172,'2019-05-08 12:29:59','2019-05-08 12:29:59'),(173,'2019-05-08 13:26:54','2019-05-08 13:26:54'),(174,'2019-05-08 14:04:57','2019-05-08 14:04:58'),(175,'2019-05-08 14:29:46','2019-05-08 14:29:46'),(176,'2019-05-08 18:23:03','2019-05-08 18:23:03'),(177,'2019-05-08 18:46:15','2019-06-25 12:17:42'),(178,'2019-05-08 21:55:33','2019-05-08 21:55:33'),(179,'2019-05-08 22:47:32','2019-05-08 22:47:32'),(180,'2019-05-09 02:09:38','2019-05-09 02:09:38'),(181,'2019-05-09 08:35:08','2019-05-09 08:35:08'),(182,'2019-05-09 09:13:01','2019-05-09 09:13:01'),(183,'2019-05-09 09:35:27','2019-07-09 21:22:57'),(184,'2019-05-09 10:22:52','2019-05-09 10:22:52'),(185,'2019-05-09 11:30:06','2019-05-09 11:30:06'),(186,'2019-05-09 11:54:59','2019-05-09 11:54:59'),(187,'2019-05-09 16:06:00','2019-05-09 16:06:00'),(188,'2019-05-09 21:29:54','2019-05-09 21:29:54'),(189,'2019-05-09 22:16:08','2019-05-09 22:16:08'),(190,'2019-05-10 01:00:50','2019-05-10 01:00:50'),(191,'2019-05-10 07:07:21','2019-05-10 07:07:21'),(192,'2019-05-10 08:03:25','2019-05-10 08:03:25'),(193,'2019-05-10 08:56:35','2019-05-10 08:56:36'),(194,'2019-05-10 13:26:39','2019-05-10 13:26:39'),(195,'2019-05-10 13:32:20','2019-05-10 13:32:20'),(196,'2019-05-10 17:49:18','2019-05-13 11:40:09'),(197,'2019-05-10 18:47:16','2019-05-10 18:47:17'),(198,'2019-05-10 21:40:17','2019-05-10 21:40:17'),(199,'2019-05-11 15:25:15','2019-05-11 15:25:15'),(200,'2019-05-12 11:17:29','2019-05-12 11:17:29'),(201,'2019-05-12 17:09:06','2019-05-12 17:09:06'),(202,'2019-05-12 17:58:31','2019-05-12 17:58:31'),(203,'2019-05-12 21:41:05','2019-05-12 21:41:05'),(204,'2019-05-12 23:08:40','2019-05-12 23:08:40'),(205,'2019-05-13 13:49:10','2019-05-13 13:49:10'),(206,'2019-05-13 14:52:13','2019-05-13 14:52:13'),(207,'2019-05-13 17:07:43','2019-05-13 17:07:43'),(208,'2019-05-13 18:08:20','2019-05-13 18:08:20'),(209,'2019-05-14 08:12:17','2019-05-14 08:12:17'),(210,'2019-05-14 09:39:16','2019-07-10 14:33:36'),(211,'2019-05-14 12:01:46','2019-05-14 12:01:46'),(212,'2019-05-14 12:07:01','2019-05-14 12:07:01'),(213,'2019-05-14 15:36:51','2019-05-14 15:36:51'),(214,'2019-05-14 16:02:07','2019-05-14 16:02:07'),(215,'2019-05-14 17:27:37','2019-05-14 17:27:37'),(216,'2019-05-14 21:02:13','2019-05-14 21:02:13'),(217,'2019-05-14 21:08:23','2019-05-14 21:08:24'),(218,'2019-05-15 08:47:00','2019-07-01 08:41:42'),(219,'2019-05-15 09:13:21','2019-05-15 09:13:21'),(220,'2019-05-15 09:28:49','2019-05-15 09:28:49'),(221,'2019-05-15 12:03:01','2019-05-15 12:03:01'),(222,'2019-05-15 13:31:10','2019-05-15 13:31:10'),(223,'2019-05-15 18:59:29','2019-05-15 18:59:29'),(224,'2019-05-15 19:14:48','2019-05-15 19:14:48'),(225,'2019-05-15 19:45:22','2019-05-15 19:45:22'),(226,'2019-05-16 00:28:05','2019-05-16 00:52:28'),(227,'2019-05-16 08:49:00','2019-05-16 08:49:00'),(228,'2019-05-16 08:50:22','2019-05-16 08:50:22'),(229,'2019-05-16 10:59:18','2019-05-16 10:59:18'),(230,'2019-05-16 13:53:39','2019-05-16 13:53:39'),(231,'2019-05-16 13:56:24','2019-05-16 13:56:25'),(232,'2019-05-16 14:22:32','2019-05-16 14:22:32'),(233,'2019-05-16 17:08:54','2019-05-16 17:08:54'),(234,'2019-05-16 18:04:56','2019-05-16 18:04:56'),(235,'2019-05-16 18:37:41','2019-05-16 18:37:41'),(236,'2019-05-17 07:27:06','2019-05-21 12:03:52'),(237,'2019-05-17 09:37:43','2019-05-17 09:37:44'),(238,'2019-05-17 09:38:41','2019-05-17 09:38:41'),(239,'2019-05-17 11:51:12','2019-05-17 11:51:12'),(240,'2019-05-17 12:03:22','2019-05-17 12:03:22'),(241,'2019-05-17 18:50:23','2019-05-17 18:50:23'),(242,'2019-05-17 19:36:14','2019-05-17 19:36:14'),(243,'2019-05-17 21:54:42','2019-05-17 21:54:42'),(244,'2019-05-18 10:16:26','2019-05-18 10:16:26'),(245,'2019-05-18 16:04:45','2019-05-18 16:04:45'),(246,'2019-05-19 11:16:19','2019-05-19 11:16:19'),(247,'2019-05-19 15:18:22','2019-05-19 15:18:22'),(248,'2019-05-20 09:57:50','2019-05-20 09:57:50'),(249,'2019-05-20 10:08:13','2019-05-20 10:08:13'),(250,'2019-05-20 10:45:39','2019-05-20 10:45:39'),(251,'2019-05-20 11:04:59','2019-07-05 15:18:42'),(252,'2019-05-20 11:08:44','2019-05-20 11:08:44'),(253,'2019-05-20 14:03:59','2019-05-20 14:04:00'),(254,'2019-05-20 15:24:50','2019-05-20 15:24:50'),(255,'2019-05-20 17:20:16','2019-05-20 17:20:16'),(256,'2019-05-20 17:50:38','2019-05-20 17:50:38'),(257,'2019-05-20 21:51:31','2019-05-20 21:51:31'),(258,'2019-05-20 23:09:33','2019-05-20 23:09:33'),(259,'2019-05-21 09:15:18','2019-05-21 09:15:18'),(260,'2019-05-21 09:44:21','2019-05-21 09:44:21'),(261,'2019-05-21 09:53:07','2019-05-21 09:53:08'),(262,'2019-05-21 12:15:25','2019-05-21 12:15:25'),(263,'2019-05-21 14:05:23','2019-05-21 14:05:23'),(264,'2019-05-21 15:26:48','2019-05-21 15:26:48'),(265,'2019-05-22 09:05:29','2019-05-22 09:05:29'),(266,'2019-05-22 10:02:06','2019-08-02 09:05:07'),(267,'2019-05-22 12:55:14','2019-05-22 12:55:14'),(268,'2019-05-22 13:49:01','2019-05-22 13:49:01'),(269,'2019-05-22 15:35:38','2019-05-22 15:35:38'),(270,'2019-05-22 16:04:24','2019-05-22 16:04:24'),(271,'2019-05-23 09:55:17','2019-05-23 09:55:17'),(272,'2019-05-23 11:00:53','2019-05-23 11:00:53'),(273,'2019-05-23 11:01:04','2019-05-23 11:01:04'),(274,'2019-05-23 18:14:26','2019-05-23 18:14:27'),(275,'2019-05-23 19:00:39','2019-05-23 19:00:40'),(276,'2019-05-23 21:42:57','2019-05-23 21:42:57'),(277,'2019-05-24 11:18:04','2019-05-24 11:18:04'),(278,'2019-05-24 13:27:41','2019-05-24 13:27:42'),(279,'2019-05-24 18:58:50','2019-05-24 18:58:50'),(280,'2019-05-24 22:34:06','2019-05-24 22:34:06'),(281,'2019-05-25 12:33:52','2019-05-25 12:33:52'),(282,'2019-05-25 16:08:11','2019-05-25 16:08:11'),(283,'2019-05-25 18:08:01','2019-06-14 10:55:05'),(284,'2019-05-25 23:14:57','2019-05-25 23:14:57'),(285,'2019-05-26 15:29:50','2019-05-26 15:29:50'),(286,'2019-05-26 16:59:10','2019-05-26 16:59:10'),(287,'2019-05-26 19:52:20','2019-05-26 19:52:20'),(288,'2019-05-27 08:49:25','2019-05-27 08:49:25'),(289,'2019-05-27 09:06:03','2019-05-27 09:06:03'),(290,'2019-05-27 10:42:23','2019-05-27 10:42:23'),(291,'2019-05-27 10:57:41','2019-05-27 10:57:41'),(292,'2019-05-27 11:15:17','2019-05-27 11:15:17'),(293,'2019-05-27 11:39:38','2019-05-27 11:39:38'),(294,'2019-05-27 11:41:34','2019-05-27 11:41:34'),(295,'2019-05-27 11:54:50','2019-05-27 11:54:50'),(296,'2019-05-27 22:33:50','2019-05-27 22:33:50'),(297,'2019-05-28 06:05:22','2019-05-28 06:05:22'),(298,'2019-05-28 08:35:44','2019-05-28 08:35:44'),(299,'2019-05-28 08:50:49','2019-05-28 08:50:50'),(300,'2019-05-28 11:36:40','2019-05-28 11:36:40'),(301,'2019-05-28 11:57:35','2019-05-28 11:57:35'),(302,'2019-05-28 14:26:37','2019-05-28 14:26:37'),(303,'2019-05-28 15:55:40','2019-05-28 15:55:40'),(304,'2019-05-28 16:33:35','2019-05-28 18:17:26'),(305,'2019-05-28 16:51:18','2019-05-28 16:51:18'),(306,'2019-05-28 22:02:23','2019-05-28 22:02:23'),(307,'2019-05-29 08:31:44','2019-05-29 08:31:44'),(308,'2019-05-29 08:54:15','2019-05-29 08:54:15'),(309,'2019-05-29 10:44:31','2019-06-20 16:13:06'),(310,'2019-05-29 13:28:09','2019-05-29 13:28:10'),(311,'2019-05-29 14:35:02','2019-05-30 16:02:06'),(312,'2019-05-29 15:28:48','2019-05-29 15:28:48'),(313,'2019-05-29 17:32:55','2019-05-29 17:32:55'),(314,'2019-05-29 19:32:13','2019-05-29 19:32:13'),(315,'2019-05-29 19:52:34','2019-05-29 19:52:34'),(316,'2019-05-29 22:31:15','2019-05-29 22:31:15'),(317,'2019-05-30 09:16:16','2019-05-30 09:16:16'),(318,'2019-05-30 10:08:22','2019-05-30 10:08:22'),(319,'2019-05-30 11:08:21','2019-05-30 11:08:21'),(320,'2019-05-30 11:32:43','2019-05-30 11:32:43'),(321,'2019-05-30 14:15:39','2019-05-30 14:15:39'),(322,'2019-05-30 19:28:12','2019-05-30 19:28:12'),(323,'2019-05-30 19:36:43','2019-05-30 19:36:43'),(324,'2019-05-30 20:09:40','2019-06-13 11:52:00'),(325,'2019-05-30 20:21:48','2019-05-30 20:21:48'),(326,'2019-05-30 20:54:23','2019-05-30 20:54:23'),(327,'2019-05-31 09:29:23','2019-05-31 09:29:23'),(328,'2019-05-31 10:20:26','2019-05-31 10:20:26'),(329,'2019-05-31 13:51:51','2019-05-31 13:51:51'),(330,'2019-06-01 08:00:28','2019-06-01 08:00:29'),(331,'2019-06-01 11:36:34','2019-06-01 11:36:34'),(332,'2019-06-02 11:33:04','2019-06-02 11:33:04'),(333,'2019-06-03 08:57:40','2019-06-03 08:57:40'),(334,'2019-06-03 09:02:32','2019-06-03 09:02:32'),(335,'2019-06-03 09:27:01','2019-06-03 09:27:01'),(336,'2019-06-03 09:31:14','2019-06-03 09:31:14'),(337,'2019-06-03 11:40:42','2019-06-03 11:40:42'),(338,'2019-06-03 11:45:09','2019-06-03 11:45:09'),(339,'2019-06-03 14:11:37','2019-06-03 14:11:37'),(340,'2019-06-03 14:24:28','2019-06-03 14:24:28'),(341,'2019-06-03 14:37:56','2019-06-03 14:37:56'),(342,'2019-06-03 14:42:34','2019-06-03 14:42:34'),(343,'2019-06-03 15:31:59','2019-06-03 15:31:59'),(344,'2019-06-03 16:47:00','2019-06-03 16:47:00'),(345,'2019-06-03 19:18:03','2019-06-03 19:18:03'),(346,'2019-06-03 20:38:05','2019-06-03 20:38:05'),(347,'2019-06-04 09:04:52','2019-06-04 09:04:52'),(348,'2019-06-04 10:34:04','2019-06-04 10:34:04'),(349,'2019-06-04 11:50:26','2019-06-04 11:50:26'),(350,'2019-06-04 12:21:46','2019-06-04 12:21:46'),(351,'2019-06-04 13:03:50','2019-10-26 11:59:19'),(352,'2019-06-04 18:56:36','2019-06-04 19:01:11'),(353,'2019-06-04 21:28:27','2019-06-04 21:28:27'),(354,'2019-06-05 08:56:08','2019-06-05 09:57:38'),(355,'2019-06-05 08:57:29','2019-06-06 08:36:38'),(356,'2019-06-05 08:58:37','2019-06-05 09:08:50'),(357,'2019-06-05 09:00:22','2019-06-05 09:10:37'),(358,'2019-06-05 09:01:43','2019-06-05 09:10:49'),(359,'2019-06-05 09:03:33','2019-06-05 09:56:34'),(360,'2019-06-05 09:53:44','2019-06-05 09:53:44'),(361,'2019-06-05 10:03:22','2019-06-05 13:17:23'),(362,'2019-06-05 10:19:13','2019-06-05 10:19:13'),(363,'2019-06-05 12:20:49','2019-06-05 12:20:49'),(364,'2019-06-05 12:23:58','2019-06-05 12:23:58'),(365,'2019-06-05 12:59:13','2019-06-05 12:59:13'),(366,'2019-06-05 13:51:11','2019-06-05 13:51:11'),(367,'2019-06-05 15:55:54','2019-06-05 15:55:55'),(368,'2019-06-05 17:53:42','2019-06-05 17:53:42'),(369,'2019-06-06 07:53:09','2019-06-06 08:37:06'),(370,'2019-06-06 07:55:09','2019-06-06 07:55:09'),(371,'2019-06-06 07:58:03','2019-06-06 07:58:03'),(372,'2019-06-06 07:58:37','2019-06-06 07:58:37'),(373,'2019-06-06 09:45:24','2019-06-06 09:45:24'),(374,'2019-06-06 10:12:47','2019-06-06 10:12:47'),(375,'2019-06-06 10:57:28','2019-06-06 10:57:28'),(376,'2019-06-06 12:47:21','2019-06-06 12:47:21'),(377,'2019-06-06 18:12:09','2019-06-06 18:12:09'),(378,'2019-06-06 20:22:01','2019-06-06 20:22:01'),(379,'2019-06-08 06:28:52','2019-06-08 06:28:52'),(380,'2019-06-08 09:59:59','2019-09-03 09:09:25'),(381,'2019-06-08 13:46:21','2019-06-08 13:46:22'),(382,'2019-06-08 16:10:05','2019-06-08 16:10:05'),(383,'2019-06-08 16:20:28','2019-06-08 16:20:28'),(384,'2019-06-08 16:41:01','2019-06-08 16:41:01'),(385,'2019-06-08 16:48:49','2019-06-08 16:48:49'),(386,'2019-06-08 19:17:30','2019-06-08 19:17:30'),(387,'2019-06-09 19:38:10','2019-08-23 16:48:53'),(388,'2019-06-10 10:05:25','2019-06-10 10:05:25'),(389,'2019-06-10 11:16:55','2019-06-10 11:16:55'),(390,'2019-06-10 13:33:21','2019-06-10 13:33:21'),(391,'2019-06-10 14:43:47','2019-06-10 14:43:47'),(392,'2019-06-10 16:40:47','2019-06-10 16:40:47'),(393,'2019-06-10 17:26:51','2019-06-10 17:26:51'),(394,'2019-06-11 00:24:08','2019-06-11 00:24:08'),(395,'2019-06-11 12:56:03','2019-06-11 12:56:03'),(396,'2019-06-11 18:43:43','2019-06-11 18:43:43'),(397,'2019-06-12 08:22:19','2019-06-12 08:22:19'),(398,'2019-06-12 09:18:00','2019-06-12 09:18:00'),(399,'2019-06-12 12:17:17','2019-06-12 12:17:17'),(400,'2019-06-12 13:44:59','2019-06-12 13:44:59'),(401,'2019-06-12 14:32:22','2019-06-12 14:32:22'),(402,'2019-06-12 15:54:46','2019-06-12 15:54:46'),(403,'2019-06-13 09:19:09','2019-06-13 09:19:09'),(404,'2019-06-13 12:04:23','2019-06-13 12:04:23'),(405,'2019-06-14 09:51:56','2019-06-14 09:51:56'),(406,'2019-06-14 19:34:56','2019-06-14 19:34:57'),(407,'2019-06-14 20:54:02','2019-06-14 20:54:03'),(408,'2019-06-15 10:55:04','2019-06-15 10:55:04'),(409,'2019-06-15 16:51:34','2019-09-04 12:47:38'),(410,'2019-06-17 10:03:14','2019-06-17 10:03:14'),(411,'2019-06-17 10:06:18','2019-09-24 11:30:57'),(412,'2019-06-17 11:16:25','2019-06-17 11:16:25'),(413,'2019-06-17 12:53:31','2019-06-17 12:53:31'),(414,'2019-06-17 15:11:23','2019-06-17 15:11:23'),(415,'2019-06-17 17:25:23','2019-06-17 17:25:23'),(416,'2019-06-17 17:27:34','2019-06-17 17:27:34'),(417,'2019-06-18 13:03:15','2019-06-18 13:03:15'),(418,'2019-06-18 13:43:38','2019-06-18 13:43:38'),(419,'2019-06-18 14:09:09','2019-06-18 14:09:09'),(420,'2019-06-18 14:41:37','2019-06-18 14:41:37'),(421,'2019-06-18 18:14:17','2019-06-18 18:14:18'),(422,'2019-06-18 18:42:47','2019-06-18 18:42:47'),(423,'2019-06-18 21:09:59','2019-06-18 21:09:59'),(424,'2019-06-19 15:23:44','2019-06-19 15:23:44'),(425,'2019-06-19 16:05:04','2019-06-19 16:05:04'),(426,'2019-06-20 00:00:33','2019-06-20 00:00:33'),(427,'2019-06-20 06:50:08','2019-06-20 06:50:08'),(428,'2019-06-20 10:58:58','2019-06-20 11:32:10'),(429,'2019-06-20 11:15:24','2019-06-20 11:15:25'),(430,'2019-06-20 17:24:20','2019-06-20 17:24:20'),(431,'2019-06-21 10:42:44','2019-06-21 10:42:44'),(432,'2019-06-21 14:09:14','2019-06-21 14:09:14'),(433,'2019-06-21 21:25:13','2019-06-21 21:25:13'),(434,'2019-06-22 16:08:36','2019-06-22 16:08:36'),(435,'2019-06-22 20:58:27','2019-06-22 20:58:27'),(436,'2019-06-23 10:13:26','2019-06-23 10:13:26'),(437,'2019-06-23 14:26:14','2019-06-23 14:26:14'),(438,'2019-06-23 19:35:45','2019-06-23 19:35:45'),(439,'2019-06-24 00:56:40','2019-06-24 00:56:40'),(440,'2019-06-24 07:50:33','2019-06-24 07:50:33'),(441,'2019-06-24 10:07:17','2019-06-24 10:07:17'),(442,'2019-06-24 12:01:26','2019-06-24 12:01:26'),(443,'2019-06-24 13:55:54','2019-06-24 13:55:54'),(444,'2019-06-24 18:51:45','2019-06-24 18:51:45'),(445,'2019-06-25 14:33:07','2019-06-25 14:33:07'),(446,'2019-06-25 16:27:32','2019-06-25 16:27:32'),(447,'2019-06-25 16:43:12','2019-06-25 16:43:12'),(448,'2019-06-25 16:55:01','2019-06-25 16:55:01'),(449,'2019-06-25 17:02:44','2019-06-25 17:02:44'),(450,'2019-06-26 08:04:59','2019-06-26 08:04:59'),(451,'2019-06-26 09:19:06','2019-06-26 09:19:06'),(452,'2019-06-26 09:19:50','2019-06-26 09:19:50'),(453,'2019-06-26 10:31:21','2019-06-26 10:31:21'),(454,'2019-06-26 12:59:24','2019-09-15 09:13:11'),(455,'2019-06-26 13:06:17','2019-06-26 13:06:18'),(456,'2019-06-26 19:35:37','2019-10-25 15:04:54'),(457,'2019-06-27 09:41:30','2019-06-27 09:41:30'),(458,'2019-06-27 11:46:34','2019-06-27 11:46:34'),(459,'2019-06-27 16:09:07','2019-06-27 16:09:07'),(460,'2019-06-27 19:52:04','2019-06-27 19:52:05'),(461,'2019-06-27 21:24:35','2019-06-27 21:24:36'),(462,'2019-06-27 21:57:49','2019-06-27 21:57:49'),(463,'2019-06-28 08:33:56','2019-06-28 08:33:56'),(464,'2019-06-28 10:42:44','2019-06-28 10:42:44'),(465,'2019-06-28 11:26:02','2019-06-28 11:26:02'),(466,'2019-06-28 16:08:53','2019-10-03 19:26:22'),(467,'2019-06-29 18:48:17','2019-06-29 18:48:17'),(468,'2019-06-29 22:17:09','2019-06-29 22:17:09'),(469,'2019-06-30 07:34:10','2019-06-30 07:34:10'),(470,'2019-06-30 19:24:49','2019-06-30 19:24:49'),(471,'2019-07-01 11:32:11','2019-07-01 11:32:11'),(472,'2019-07-01 11:37:26','2019-07-01 11:37:26'),(473,'2019-07-01 12:25:16','2019-07-01 12:25:16'),(474,'2019-07-01 12:44:20','2019-07-01 12:44:20'),(475,'2019-07-01 13:12:31','2019-07-01 13:12:31'),(476,'2019-07-01 14:43:36','2019-07-01 14:43:36'),(477,'2019-07-01 14:51:42','2019-07-01 14:51:42'),(478,'2019-07-01 16:12:54','2019-07-01 16:12:54'),(479,'2019-07-01 17:06:47','2019-07-01 17:06:47'),(480,'2019-07-01 18:12:17','2019-07-01 18:12:17'),(481,'2019-07-01 19:07:08','2019-07-01 19:07:08'),(482,'2019-07-02 00:11:07','2019-07-02 00:11:07'),(483,'2019-07-02 02:39:23','2019-07-02 02:39:23'),(484,'2019-07-02 08:45:24','2019-07-02 08:45:24'),(485,'2019-07-02 09:43:05','2019-07-02 09:43:05'),(486,'2019-07-02 10:10:35','2019-07-02 10:10:35'),(487,'2019-07-02 10:34:11','2019-07-02 10:34:11'),(488,'2019-07-02 13:32:12','2019-07-02 13:32:12'),(489,'2019-07-02 14:02:04','2019-07-02 14:02:04'),(490,'2019-07-02 14:16:50','2019-07-02 14:16:50'),(491,'2019-07-02 15:38:56','2019-07-02 15:38:56'),(492,'2019-07-02 16:50:48','2019-07-02 16:50:48'),(493,'2019-07-02 17:16:47','2019-07-02 17:16:47'),(494,'2019-07-02 17:35:03','2019-07-02 17:35:03'),(495,'2019-07-02 21:21:06','2019-07-02 21:21:06'),(496,'2019-07-02 23:22:09','2019-07-02 23:22:10'),(497,'2019-07-03 08:33:26','2019-09-21 22:03:09'),(498,'2019-07-03 10:58:28','2019-07-09 12:12:20'),(499,'2019-07-03 15:44:02','2019-07-03 15:44:02'),(500,'2019-07-04 10:28:46','2019-07-04 10:28:47'),(501,'2019-07-04 11:58:29','2019-07-04 11:58:29'),(502,'2019-07-04 16:01:49','2019-07-05 15:18:56'),(503,'2019-07-05 11:51:30','2019-07-05 11:51:31'),(504,'2019-07-05 11:56:11','2019-07-05 11:56:11'),(505,'2019-07-05 15:11:43','2019-07-05 15:11:43'),(506,'2019-07-05 15:22:34','2019-07-05 15:22:34'),(507,'2019-07-05 20:20:35','2019-07-05 20:20:35'),(508,'2019-07-06 08:05:29','2019-07-06 08:05:30'),(509,'2019-07-06 14:12:33','2019-07-06 14:12:33'),(510,'2019-07-06 14:28:48','2019-07-06 14:28:48'),(511,'2019-07-07 09:31:41','2019-07-07 09:31:41'),(512,'2019-07-07 20:40:51','2019-07-07 20:40:52'),(513,'2019-07-08 07:19:29','2019-07-08 07:19:29'),(514,'2019-07-08 09:27:14','2019-07-08 09:27:14'),(515,'2019-07-08 09:32:45','2019-07-08 09:36:21'),(516,'2019-07-08 09:42:08','2019-07-08 09:42:08'),(517,'2019-07-08 10:36:10','2019-07-08 10:36:10'),(518,'2019-07-08 11:42:06','2019-07-08 11:42:06'),(519,'2019-07-08 14:08:53','2019-07-08 14:08:53'),(520,'2019-07-08 15:14:11','2019-07-08 15:14:11'),(521,'2019-07-08 16:46:23','2019-07-08 16:46:23'),(522,'2019-07-08 21:29:34','2019-07-08 21:29:34'),(523,'2019-07-08 23:04:11','2019-07-08 23:04:11'),(524,'2019-07-09 10:00:35','2019-07-09 10:00:36'),(525,'2019-07-09 10:27:26','2019-07-09 10:27:26'),(526,'2019-07-09 11:16:08','2019-07-09 11:16:08'),(527,'2019-07-09 12:18:29','2019-07-09 12:18:30'),(528,'2019-07-09 12:23:14','2019-07-09 12:23:14'),(529,'2019-07-09 12:58:41','2019-07-09 12:58:42'),(530,'2019-07-09 15:18:55','2019-07-09 15:18:55'),(531,'2019-07-09 15:49:01','2019-07-09 15:49:01'),(532,'2019-07-09 16:31:10','2019-07-09 16:31:10'),(533,'2019-07-09 20:17:11','2019-07-09 20:17:11'),(534,'2019-07-09 21:22:01','2019-07-09 21:22:01'),(535,'2019-07-09 21:52:06','2019-07-09 21:52:06'),(536,'2019-07-09 23:07:16','2019-07-09 23:07:16'),(537,'2019-07-10 10:41:30','2019-07-10 10:41:30'),(538,'2019-07-10 10:46:25','2019-10-11 20:50:18'),(539,'2019-07-10 10:54:28','2019-07-10 10:54:28'),(540,'2019-07-10 11:06:13','2019-07-10 11:06:13'),(541,'2019-07-10 11:48:14','2019-07-10 11:48:14'),(542,'2019-07-10 13:43:16','2019-07-10 13:43:17'),(543,'2019-07-10 14:09:33','2019-07-10 14:09:33'),(544,'2019-07-10 15:40:34','2019-07-10 15:40:34'),(545,'2019-07-10 16:01:47','2019-07-10 16:01:47'),(546,'2019-07-10 19:14:13','2019-07-10 19:14:13'),(547,'2019-07-10 20:46:45','2019-07-10 20:46:45'),(548,'2019-07-11 00:25:47','2019-07-11 00:25:47'),(549,'2019-07-11 10:24:39','2019-07-11 10:24:40'),(550,'2019-07-11 10:48:32','2019-07-11 10:48:32'),(551,'2019-07-11 12:36:06','2019-07-11 12:36:06'),(552,'2019-07-11 14:24:28','2019-07-11 14:24:28'),(553,'2019-07-11 14:36:18','2019-07-11 14:36:19'),(554,'2019-07-11 15:03:51','2019-07-11 15:03:51'),(555,'2019-07-11 19:18:28','2019-07-31 08:23:44'),(556,'2019-07-11 20:04:33','2019-07-11 20:04:33'),(557,'2019-07-11 23:18:18','2019-07-11 23:18:18'),(558,'2019-07-12 09:07:16','2019-07-12 09:07:16'),(559,'2019-07-13 20:54:24','2019-07-13 20:54:24'),(560,'2019-07-13 23:35:36','2019-07-13 23:35:36'),(561,'2019-07-14 09:56:08','2019-07-14 09:56:08'),(562,'2019-07-14 18:09:32','2019-07-14 18:09:32'),(563,'2019-07-14 21:18:09','2019-07-14 21:18:09'),(564,'2019-07-15 08:49:51','2019-07-15 08:49:51'),(565,'2019-07-15 09:10:12','2019-08-28 09:37:45'),(566,'2019-07-15 10:23:28','2019-07-15 10:23:28'),(567,'2019-07-15 10:52:07','2019-07-15 10:52:08'),(568,'2019-07-15 12:14:36','2019-07-15 12:14:36'),(569,'2019-07-15 14:28:17','2019-07-15 14:28:17'),(570,'2019-07-15 15:08:54','2019-07-15 15:08:54'),(571,'2019-07-15 16:26:45','2019-07-15 16:26:45'),(572,'2019-07-15 16:49:24','2019-07-15 16:49:24'),(573,'2019-07-15 18:21:10','2019-07-15 18:21:10'),(574,'2019-07-16 11:40:34','2019-07-16 11:40:34'),(575,'2019-07-16 12:30:35','2019-07-16 12:30:35'),(576,'2019-07-16 13:20:23','2019-07-16 13:20:23'),(577,'2019-07-16 18:55:02','2019-07-16 18:55:02'),(578,'2019-07-17 10:27:03','2019-07-17 10:27:03'),(579,'2019-07-17 11:01:36','2019-07-17 11:01:36'),(580,'2019-07-17 11:05:54','2019-07-17 11:05:54'),(581,'2019-07-17 12:03:24','2019-07-17 12:03:24'),(582,'2019-07-17 12:27:32','2019-07-17 12:27:32'),(583,'2019-07-17 16:56:08','2019-07-17 16:56:08'),(584,'2019-07-17 19:09:10','2019-07-17 19:09:10'),(585,'2019-07-17 19:18:33','2019-07-17 19:18:33'),(586,'2019-07-18 07:40:21','2019-10-09 21:20:56'),(587,'2019-07-18 16:24:06','2019-07-18 16:24:06'),(588,'2019-07-19 00:20:42','2019-07-19 00:20:42'),(589,'2019-07-19 09:08:59','2019-07-19 09:08:59'),(590,'2019-07-19 11:01:51','2019-07-19 11:01:51'),(591,'2019-07-19 11:02:51','2019-07-19 11:02:52'),(592,'2019-07-19 22:02:02','2019-07-19 22:02:02'),(593,'2019-07-19 22:02:08','2019-09-10 08:28:25'),(594,'2019-07-19 22:36:24','2019-07-19 22:36:24'),(595,'2019-07-20 17:59:48','2019-07-20 17:59:48'),(596,'2019-07-22 11:05:46','2019-07-22 11:05:46'),(597,'2019-07-22 11:25:37','2019-07-22 11:25:37'),(598,'2019-07-22 14:27:37','2019-07-22 14:27:37'),(599,'2019-07-22 14:38:41','2019-07-22 14:38:41'),(600,'2019-07-22 17:30:57','2019-07-22 17:30:57'),(601,'2019-07-22 19:06:47','2019-07-22 19:06:47'),(602,'2019-07-22 19:12:59','2019-07-22 19:13:00'),(603,'2019-07-22 20:43:22','2019-07-22 20:43:22'),(604,'2019-07-22 23:09:30','2019-07-22 23:09:30'),(605,'2019-07-23 09:24:59','2019-07-23 09:24:59'),(606,'2019-07-23 11:05:55','2019-07-23 11:05:56'),(607,'2019-07-23 12:16:40','2019-07-23 12:16:40'),(608,'2019-07-23 13:37:02','2019-07-23 13:37:02'),(609,'2019-07-23 15:37:34','2019-07-23 15:37:35'),(610,'2019-07-23 16:01:42','2019-07-23 16:01:42'),(611,'2019-07-23 18:19:40','2019-09-13 10:57:24'),(612,'2019-07-24 09:46:07','2019-07-24 09:46:07'),(613,'2019-07-24 10:59:33','2019-07-24 10:59:33'),(614,'2019-07-24 17:31:09','2019-07-24 17:31:09'),(615,'2019-07-24 19:01:45','2019-07-24 19:01:45'),(616,'2019-07-24 19:51:59','2019-10-17 17:08:00'),(617,'2019-07-24 21:33:50','2019-07-24 21:33:50'),(618,'2019-07-24 23:00:15','2019-07-24 23:00:16'),(619,'2019-07-25 08:25:24','2019-07-25 08:25:25'),(620,'2019-07-25 12:24:05','2019-07-25 12:24:06'),(621,'2019-07-26 09:41:14','2019-07-26 09:41:14'),(622,'2019-07-26 12:30:16','2019-07-26 12:30:16'),(623,'2019-07-26 15:43:04','2019-07-26 15:43:04'),(624,'2019-07-26 21:49:28','2019-07-26 21:49:28'),(625,'2019-07-27 09:24:05','2019-07-27 09:24:05'),(626,'2019-07-27 12:30:02','2019-07-27 12:30:02'),(627,'2019-07-27 13:02:41','2019-07-27 13:02:41'),(628,'2019-07-27 14:07:19','2019-07-27 14:07:19'),(629,'2019-07-28 08:55:31','2019-07-28 08:55:31'),(630,'2019-07-28 14:29:45','2019-07-28 14:29:45'),(631,'2019-07-28 16:21:02','2019-07-28 16:21:02'),(632,'2019-07-29 08:07:30','2019-07-29 08:07:30'),(633,'2019-07-29 11:46:38','2019-07-29 11:46:38'),(634,'2019-07-29 13:40:44','2019-09-09 14:13:51'),(635,'2019-07-29 14:39:26','2019-07-29 14:39:26'),(636,'2019-07-29 23:27:08','2019-07-29 23:27:08'),(637,'2019-07-30 08:56:27','2019-07-30 08:56:27'),(638,'2019-07-30 11:22:44','2019-07-30 11:22:44'),(639,'2019-07-30 15:21:40','2019-07-30 15:21:41'),(640,'2019-07-31 09:17:33','2019-07-31 09:17:33'),(641,'2019-07-31 10:54:30','2019-07-31 10:54:30'),(642,'2019-07-31 12:23:54','2019-07-31 12:23:54'),(643,'2019-07-31 16:56:33','2019-07-31 16:56:33'),(644,'2019-07-31 17:23:25','2019-07-31 17:23:25'),(645,'2019-08-02 09:24:09','2019-08-02 09:24:09'),(646,'2019-08-02 14:41:58','2019-08-02 14:41:58'),(647,'2019-08-02 20:25:42','2019-08-02 20:25:42'),(648,'2019-08-03 01:39:50','2019-08-03 01:39:50'),(649,'2019-08-03 15:38:45','2019-08-03 15:38:45'),(650,'2019-08-04 10:26:45','2019-08-04 10:26:45'),(651,'2019-08-04 21:12:47','2019-08-04 21:12:47'),(652,'2019-08-05 09:20:42','2019-08-05 09:20:43'),(653,'2019-08-05 09:25:48','2019-08-05 09:25:48'),(654,'2019-08-05 13:20:53','2019-08-05 13:20:53'),(655,'2019-08-05 18:34:46','2019-08-05 18:34:46'),(656,'2019-08-05 18:40:03','2019-08-05 18:40:03'),(657,'2019-08-05 20:29:00','2019-08-05 20:29:00'),(658,'2019-08-05 22:11:37','2019-08-05 22:11:37'),(659,'2019-08-06 08:32:22','2019-08-06 08:32:22'),(660,'2019-08-06 10:59:06','2019-08-06 10:59:06'),(661,'2019-08-06 12:32:02','2019-08-06 12:32:02'),(662,'2019-08-06 13:07:12','2019-08-06 13:07:12'),(663,'2019-08-06 13:54:18','2019-08-06 13:54:18'),(664,'2019-08-06 17:20:08','2019-08-06 17:20:09'),(665,'2019-08-06 17:22:57','2019-08-06 17:22:57'),(666,'2019-08-06 21:50:14','2019-08-06 21:50:14'),(667,'2019-08-07 09:14:12','2019-09-28 19:59:31'),(668,'2019-08-07 10:16:09','2019-08-07 10:16:09'),(669,'2019-08-07 10:31:05','2019-08-07 10:31:05'),(670,'2019-08-07 11:30:38','2019-08-07 11:30:38'),(671,'2019-08-07 12:29:28','2019-08-07 12:29:28'),(672,'2019-08-07 14:57:47','2019-08-07 14:57:47'),(673,'2019-08-07 15:26:18','2019-08-07 15:26:18'),(674,'2019-08-08 10:11:51','2019-08-08 10:11:51'),(675,'2019-08-08 11:37:29','2019-08-08 11:37:29'),(676,'2019-08-08 12:54:33','2019-08-08 12:54:34'),(677,'2019-08-08 13:00:17','2019-08-08 13:00:18'),(678,'2019-08-08 15:07:25','2019-08-08 15:07:25'),(679,'2019-08-08 19:03:17','2019-08-08 19:03:18'),(680,'2019-08-08 21:41:00','2019-08-08 21:41:00'),(681,'2019-08-08 22:24:20','2019-08-08 22:24:20'),(682,'2019-08-09 03:30:35','2019-08-09 03:30:35'),(683,'2019-08-09 08:08:15','2019-08-09 08:08:16'),(684,'2019-08-09 08:26:27','2019-08-09 08:26:27'),(685,'2019-08-09 09:06:11','2019-08-09 09:06:11'),(686,'2019-08-09 09:14:32','2019-08-09 09:14:32'),(687,'2019-08-09 10:38:52','2019-08-09 10:38:52'),(688,'2019-08-09 17:58:50','2019-08-09 17:58:50'),(689,'2019-08-09 18:57:23','2019-08-09 18:57:23'),(690,'2019-08-10 09:36:33','2019-08-10 09:36:33'),(691,'2019-08-10 14:05:16','2019-08-10 14:05:16'),(692,'2019-08-10 22:29:05','2019-08-10 22:29:05'),(693,'2019-08-11 18:50:32','2019-08-11 18:50:32'),(694,'2019-08-12 10:31:59','2019-08-12 10:31:59'),(695,'2019-08-12 11:02:51','2019-08-12 11:02:51'),(696,'2019-08-12 11:41:14','2019-08-12 11:41:14'),(697,'2019-08-12 11:54:44','2019-08-12 11:54:44'),(698,'2019-08-12 13:19:53','2019-08-12 13:19:53'),(699,'2019-08-12 15:15:21','2019-08-12 15:15:22'),(700,'2019-08-13 19:27:41','2019-08-13 19:27:41'),(701,'2019-08-14 01:21:01','2019-08-14 01:21:01'),(702,'2019-08-14 10:14:21','2019-08-14 10:14:21'),(703,'2019-08-14 11:30:17','2019-08-14 11:30:17'),(704,'2019-08-14 14:37:32','2019-08-14 14:37:32'),(705,'2019-08-14 18:58:48','2019-08-14 18:58:48'),(706,'2019-08-15 10:23:14','2019-08-15 10:23:14'),(707,'2019-08-15 11:04:27','2019-08-15 11:04:27'),(708,'2019-08-16 07:45:35','2019-08-16 07:45:35'),(709,'2019-08-16 15:50:52','2019-08-16 15:50:52'),(710,'2019-08-16 16:12:17','2019-08-16 16:12:17'),(711,'2019-08-17 23:01:09','2019-08-17 23:01:09'),(712,'2019-08-18 18:07:00','2019-08-18 18:07:01'),(713,'2019-08-19 11:18:42','2019-08-19 11:18:42'),(714,'2019-08-19 16:26:38','2019-08-19 16:26:38'),(715,'2019-08-20 09:35:39','2019-08-20 09:35:39'),(716,'2019-08-20 21:58:02','2019-08-20 21:58:02'),(717,'2019-08-21 08:04:11','2019-08-21 08:04:11'),(718,'2019-08-21 08:43:23','2019-08-21 08:43:23'),(719,'2019-08-21 10:02:48','2019-08-21 10:02:48'),(720,'2019-08-21 12:13:58','2019-08-21 12:13:58'),(721,'2019-08-22 11:53:59','2019-08-22 11:53:59'),(722,'2019-08-22 12:02:09','2019-08-22 12:02:09'),(723,'2019-08-23 12:24:24','2019-08-23 12:24:24'),(724,'2019-08-23 12:27:59','2019-08-23 12:28:00'),(725,'2019-08-23 13:37:13','2019-08-23 13:37:13'),(726,'2019-08-23 15:23:34','2019-08-23 15:23:34'),(727,'2019-08-24 10:47:24','2019-08-24 10:47:24'),(728,'2019-08-25 09:03:43','2019-08-25 09:03:43'),(729,'2019-08-25 11:53:26','2019-08-25 11:53:26'),(730,'2019-08-25 12:59:13','2019-08-25 12:59:13'),(731,'2019-08-25 13:24:42','2019-08-25 13:24:42'),(732,'2019-08-25 14:16:19','2019-08-25 14:16:19'),(733,'2019-08-26 11:58:43','2019-08-26 11:58:44'),(734,'2019-08-26 15:00:40','2019-08-26 15:00:41'),(735,'2019-08-27 08:53:45','2019-08-27 08:53:45'),(736,'2019-08-27 09:05:51','2019-08-27 09:05:51'),(737,'2019-08-27 10:27:36','2019-08-27 10:27:36'),(738,'2019-08-27 17:25:17','2019-08-27 17:25:17'),(739,'2019-08-28 08:17:46','2019-08-28 08:17:46'),(740,'2019-08-28 10:42:17','2019-08-28 10:42:17'),(741,'2019-08-28 12:06:13','2019-08-28 12:06:13'),(742,'2019-08-28 12:12:40','2019-08-28 12:12:40'),(743,'2019-08-28 12:59:08','2019-08-28 12:59:08'),(744,'2019-08-28 15:50:37','2019-08-28 15:50:37'),(745,'2019-08-28 18:15:06','2019-08-28 18:15:06'),(746,'2019-08-29 15:39:06','2019-08-29 15:39:06'),(747,'2019-08-30 08:32:52','2019-08-30 08:32:52'),(748,'2019-08-30 10:07:16','2019-08-30 10:07:16'),(749,'2019-08-30 11:20:38','2019-08-30 11:20:38'),(750,'2019-09-02 08:31:55','2019-09-02 08:31:55'),(751,'2019-09-02 09:20:48','2019-09-02 09:20:48'),(752,'2019-09-02 16:21:20','2019-09-02 16:21:20'),(753,'2019-09-02 17:18:46','2019-09-02 17:18:46'),(754,'2019-09-02 17:36:50','2019-09-02 17:36:50'),(755,'2019-09-02 18:09:24','2019-09-02 18:09:24'),(756,'2019-09-02 22:35:52','2019-09-02 22:35:52'),(757,'2019-09-03 10:14:27','2019-09-03 10:14:28'),(758,'2019-09-03 13:25:59','2019-09-03 13:25:59'),(759,'2019-09-03 20:49:05','2019-09-03 20:49:05'),(760,'2019-09-04 09:40:25','2019-09-04 09:40:25'),(761,'2019-09-04 13:20:44','2019-09-04 13:20:45'),(762,'2019-09-04 13:37:06','2019-09-04 13:37:06'),(763,'2019-09-04 13:38:54','2019-09-04 13:38:54'),(764,'2019-09-04 13:51:59','2019-09-04 13:51:59'),(765,'2019-09-04 14:14:41','2019-09-04 14:14:41'),(766,'2019-09-05 09:14:29','2019-09-05 09:14:29'),(767,'2019-09-05 10:46:27','2019-09-05 10:46:27'),(768,'2019-09-05 10:58:40','2019-09-05 10:58:40'),(769,'2019-09-05 12:47:22','2019-09-05 12:47:22'),(770,'2019-09-05 15:23:39','2019-09-05 15:23:39'),(771,'2019-09-05 15:47:15','2019-09-05 15:47:15'),(772,'2019-09-05 19:40:19','2019-09-05 19:40:19'),(773,'2019-09-06 10:10:45','2019-09-06 10:10:46'),(774,'2019-09-06 11:18:51','2019-09-06 11:18:51'),(775,'2019-09-06 13:16:38','2019-09-06 13:16:38'),(776,'2019-09-06 13:26:05','2019-09-06 13:26:05'),(777,'2019-09-06 14:09:07','2019-09-06 14:09:07'),(778,'2019-09-06 16:12:18','2019-09-06 16:12:19'),(779,'2019-09-06 20:55:49','2019-09-06 20:55:49'),(780,'2019-09-07 09:20:05','2019-09-07 09:20:06'),(781,'2019-09-07 13:50:09','2019-09-07 13:50:09'),(782,'2019-09-07 21:33:23','2019-09-07 21:33:24'),(783,'2019-09-08 17:08:58','2019-09-08 17:08:59'),(784,'2019-09-08 18:37:37','2019-09-08 18:37:37'),(785,'2019-09-08 21:20:30','2019-09-08 21:20:30'),(786,'2019-09-09 10:03:41','2019-09-09 10:03:41'),(787,'2019-09-09 12:07:03','2019-09-09 12:07:03'),(788,'2019-09-09 18:09:20','2019-09-09 18:09:21'),(789,'2019-09-09 19:26:18','2019-09-09 19:26:19'),(790,'2019-09-10 10:40:08','2019-09-10 10:40:08'),(791,'2019-09-10 12:06:41','2019-09-23 12:03:36'),(792,'2019-09-10 12:20:57','2019-09-10 12:20:57'),(793,'2019-09-10 14:13:54','2019-09-10 14:13:54'),(794,'2019-09-10 14:57:39','2019-09-10 14:57:39'),(795,'2019-09-10 15:44:02','2019-09-10 15:44:02'),(796,'2019-09-10 15:48:00','2019-09-10 15:48:00'),(797,'2019-09-11 00:59:38','2019-09-11 00:59:38'),(798,'2019-09-11 09:05:21','2019-09-11 09:05:21'),(799,'2019-09-11 10:29:40','2019-09-11 10:29:40'),(800,'2019-09-11 13:29:13','2019-09-11 13:29:14'),(801,'2019-09-12 00:10:58','2019-09-12 00:10:58'),(802,'2019-09-12 08:59:47','2019-09-12 08:59:47'),(803,'2019-09-12 13:59:45','2019-09-12 13:59:45'),(804,'2019-09-12 14:16:31','2019-09-12 14:16:31'),(805,'2019-09-12 15:22:18','2019-09-12 15:22:18'),(806,'2019-09-12 22:11:16','2019-09-12 22:11:16'),(807,'2019-09-12 23:14:58','2019-09-12 23:14:58'),(808,'2019-09-13 09:46:29','2019-09-13 09:46:29'),(809,'2019-09-13 15:35:35','2019-09-13 15:35:36'),(810,'2019-09-13 15:43:47','2019-09-13 15:43:47'),(811,'2019-09-13 15:51:19','2019-09-13 15:51:19'),(812,'2019-09-13 20:48:01','2019-09-13 20:48:01'),(813,'2019-09-14 18:49:19','2019-09-14 18:49:19'),(814,'2019-09-15 09:58:03','2019-09-15 09:58:03'),(815,'2019-09-16 10:19:01','2019-09-16 10:19:01'),(816,'2019-09-16 12:38:20','2019-09-16 12:38:20'),(817,'2019-09-16 17:25:58','2019-09-16 17:25:58'),(818,'2019-09-16 19:28:38','2019-09-16 19:28:38'),(819,'2019-09-17 12:20:09','2019-09-17 12:20:09'),(820,'2019-09-17 14:10:20','2019-09-17 14:10:20'),(821,'2019-09-17 14:47:33','2019-09-17 14:47:33'),(822,'2019-09-17 16:57:55','2019-09-17 16:57:55'),(823,'2019-09-17 20:56:45','2019-09-17 20:56:45'),(824,'2019-09-18 08:43:38','2019-09-18 08:43:39'),(825,'2019-09-19 12:17:21','2019-09-19 12:17:21'),(826,'2019-09-19 20:27:15','2019-09-19 20:27:15'),(827,'2019-09-19 22:28:06','2019-09-19 22:28:06'),(828,'2019-09-20 12:16:21','2019-09-20 12:16:21'),(829,'2019-09-20 14:27:31','2019-09-20 14:27:32'),(830,'2019-09-20 16:00:41','2019-09-20 16:00:41'),(831,'2019-09-20 20:57:37','2019-10-23 20:53:59'),(832,'2019-09-21 11:21:14','2019-09-21 11:21:14'),(833,'2019-09-21 11:52:13','2019-09-21 11:52:13'),(834,'2019-09-21 15:59:51','2019-09-21 15:59:51'),(835,'2019-09-21 16:11:24','2019-09-21 16:11:25'),(836,'2019-09-21 21:14:45','2019-09-21 21:14:45'),(837,'2019-09-23 09:41:30','2019-09-23 09:41:30'),(838,'2019-09-23 09:57:12','2019-09-23 09:57:12'),(839,'2019-09-23 11:22:13','2019-09-23 11:22:13'),(840,'2019-09-23 11:24:13','2019-09-23 11:24:13'),(841,'2019-09-23 13:18:27','2019-09-23 13:18:27'),(842,'2019-09-23 14:26:59','2019-09-23 14:26:59'),(843,'2019-09-23 16:53:05','2019-09-23 16:53:06'),(844,'2019-09-23 17:15:28','2019-09-23 17:15:28'),(845,'2019-09-24 09:01:24','2019-09-24 09:01:24'),(846,'2019-09-24 13:53:47','2019-09-24 13:53:47'),(847,'2019-09-24 15:36:46','2019-09-24 15:36:47'),(848,'2019-09-24 16:23:53','2019-10-10 13:59:56'),(849,'2019-09-24 20:13:56','2019-09-24 20:13:56'),(850,'2019-09-25 08:42:05','2019-09-25 08:42:05'),(851,'2019-09-25 09:01:05','2019-09-25 09:01:05'),(852,'2019-09-25 11:43:01','2019-09-25 11:43:01'),(853,'2019-09-25 13:09:40','2019-09-25 13:09:40'),(854,'2019-09-25 14:12:18','2019-09-25 14:12:18'),(855,'2019-09-25 14:52:21','2019-09-25 14:52:21'),(856,'2019-09-25 15:04:26','2019-09-25 15:04:27'),(857,'2019-09-25 21:01:12','2019-09-25 21:01:12'),(858,'2019-09-25 23:17:24','2019-09-25 23:17:24'),(859,'2019-09-26 11:53:17','2019-09-26 11:53:17'),(860,'2019-09-26 12:19:30','2019-09-26 12:19:30'),(861,'2019-09-26 14:31:37','2019-09-26 14:31:37'),(862,'2019-09-26 21:31:32','2019-09-26 21:31:32'),(863,'2019-09-27 14:21:37','2019-09-27 14:21:37'),(864,'2019-09-27 15:52:29','2019-09-27 15:52:29'),(865,'2019-09-27 16:38:31','2019-09-27 16:38:31'),(866,'2019-09-29 21:06:30','2019-09-29 21:06:30'),(867,'2019-09-30 08:25:44','2019-09-30 08:25:44'),(868,'2019-09-30 10:34:16','2019-09-30 10:34:16'),(869,'2019-09-30 13:54:04','2019-09-30 13:54:04'),(870,'2019-09-30 15:55:04','2019-09-30 15:55:04'),(871,'2019-09-30 22:27:26','2019-09-30 22:27:26'),(872,'2019-10-01 10:18:42','2019-10-01 10:18:42'),(873,'2019-10-01 10:20:07','2019-10-01 10:20:07'),(874,'2019-10-01 13:24:16','2019-10-01 13:24:16'),(875,'2019-10-01 15:28:44','2019-10-01 15:28:44'),(876,'2019-10-01 19:37:33','2019-10-01 19:37:33'),(877,'2019-10-02 01:16:43','2019-10-02 01:16:44'),(878,'2019-10-02 12:33:48','2019-10-02 12:33:48'),(879,'2019-10-02 20:04:04','2019-10-02 20:04:05'),(880,'2019-10-02 23:18:44','2019-10-02 23:18:44'),(881,'2019-10-03 12:13:50','2019-10-03 12:13:50'),(882,'2019-10-03 12:29:42','2019-10-03 12:29:42'),(883,'2019-10-03 14:00:48','2019-10-03 14:00:48'),(884,'2019-10-03 20:15:43','2019-10-03 20:15:43'),(885,'2019-10-03 21:02:16','2019-10-03 21:02:16'),(886,'2019-10-04 00:44:31','2019-10-09 18:32:03'),(887,'2019-10-04 09:47:13','2019-10-04 09:47:13'),(888,'2019-10-04 13:25:58','2019-10-04 13:25:59'),(889,'2019-10-04 16:27:22','2019-10-04 16:27:22'),(890,'2019-10-05 14:34:10','2019-10-05 14:34:11'),(891,'2019-10-06 11:18:07','2019-10-06 11:18:07'),(892,'2019-10-07 13:27:16','2019-10-07 13:27:16'),(893,'2019-10-07 19:33:50','2019-10-07 19:33:51'),(894,'2019-10-07 21:40:33','2019-10-07 21:40:33'),(895,'2019-10-08 11:46:22','2019-10-08 11:46:22'),(896,'2019-10-08 12:03:53','2019-10-08 12:03:53'),(897,'2019-10-08 14:56:21','2019-10-08 14:56:21'),(898,'2019-10-08 16:06:24','2019-10-08 16:06:24'),(899,'2019-10-08 22:02:12','2019-10-08 22:02:12'),(900,'2019-10-09 10:17:02','2019-10-09 10:17:02'),(901,'2019-10-09 11:17:13','2019-10-09 11:17:14'),(902,'2019-10-09 11:20:51','2019-10-09 11:20:51'),(903,'2019-10-09 13:51:41','2019-10-09 13:51:41'),(904,'2019-10-09 14:22:17','2019-10-09 14:22:17'),(905,'2019-10-09 15:11:26','2019-10-09 15:11:26'),(906,'2019-10-09 15:52:21','2019-10-09 15:52:21'),(907,'2019-10-10 09:20:03','2019-10-10 09:20:03'),(908,'2019-10-10 13:32:37','2019-10-10 13:32:37'),(909,'2019-10-10 14:27:56','2019-10-10 14:27:56'),(910,'2019-10-10 14:53:43','2019-10-10 14:53:43'),(911,'2019-10-10 20:35:22','2019-10-10 20:35:22'),(912,'2019-10-11 07:22:14','2019-10-11 07:22:14'),(913,'2019-10-11 20:03:30','2019-10-11 20:03:30'),(914,'2019-10-12 13:11:31','2019-10-12 13:11:31'),(915,'2019-10-12 13:55:06','2019-10-12 13:55:06'),(916,'2019-10-13 18:31:36','2019-10-13 18:31:36'),(917,'2019-10-13 19:31:18','2019-10-13 19:31:19'),(918,'2019-10-13 22:22:38','2019-10-13 22:22:38'),(919,'2019-10-13 23:34:13','2019-10-13 23:34:13'),(920,'2019-10-14 09:16:56','2019-10-14 09:16:57'),(921,'2019-10-14 09:19:09','2019-10-14 09:19:09'),(922,'2019-10-14 14:26:18','2019-10-14 14:26:18'),(923,'2019-10-14 16:43:12','2019-10-14 16:43:12'),(924,'2019-10-14 17:03:32','2019-10-14 17:03:32'),(925,'2019-10-14 18:55:25','2019-10-14 18:55:25'),(926,'2019-10-14 23:25:04','2019-10-14 23:25:04'),(927,'2019-10-15 08:12:23','2019-10-15 08:12:23'),(928,'2019-10-15 12:06:52','2019-10-15 12:06:52'),(929,'2019-10-15 15:42:48','2019-10-15 15:42:48'),(930,'2019-10-15 21:48:19','2019-10-15 21:48:19'),(931,'2019-10-16 10:48:36','2019-10-16 10:48:36'),(932,'2019-10-16 12:55:02','2019-10-17 15:48:41'),(933,'2019-10-17 08:39:36','2019-10-17 08:39:36'),(934,'2019-10-17 11:49:22','2019-10-17 11:49:22'),(935,'2019-10-17 13:19:23','2019-10-17 13:19:23'),(936,'2019-10-17 13:29:49','2019-10-17 13:29:50'),(937,'2019-10-18 00:29:27','2019-10-18 00:29:27'),(938,'2019-10-18 09:18:04','2019-10-18 09:18:04'),(939,'2019-10-18 10:56:43','2019-10-18 10:56:44'),(940,'2019-10-18 11:14:54','2019-10-18 11:14:54'),(941,'2019-10-18 11:46:10','2019-10-18 11:46:10'),(942,'2019-10-18 13:45:24','2019-10-18 13:45:24'),(943,'2019-10-18 15:41:29','2019-10-18 15:41:29'),(944,'2019-10-18 17:18:41','2019-10-18 17:18:41'),(945,'2019-10-19 18:55:11','2019-10-19 18:55:11'),(946,'2019-10-19 19:18:59','2019-10-19 19:18:59'),(947,'2019-10-20 09:43:18','2019-10-20 09:43:18'),(948,'2019-10-20 10:22:58','2019-10-20 10:22:58'),(949,'2019-10-21 08:33:06','2019-10-21 08:33:06'),(950,'2019-10-21 15:40:20','2019-10-21 15:40:20'),(951,'2019-10-21 16:52:03','2019-10-21 16:52:03'),(952,'2019-10-22 18:36:01','2019-10-22 18:36:01'),(953,'2019-10-23 11:10:03','2019-10-23 11:10:03'),(954,'2019-10-27 18:54:15','2019-10-27 18:54:15'),(955,'2019-10-28 12:33:36','2019-10-28 12:33:36'),(956,'2019-10-29 14:37:09','2019-10-29 14:37:09'),(957,'2019-10-30 17:06:48','2019-10-30 17:06:48');
/*!40000 ALTER TABLE `spider__auth__user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__casserver__loginticket`
--

DROP TABLE IF EXISTS `spider__casserver__loginticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__casserver__loginticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `ticket` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consumed` datetime DEFAULT NULL,
  `client_hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__casserver__loginticket`
--

LOCK TABLES `spider__casserver__loginticket` WRITE;
/*!40000 ALTER TABLE `spider__casserver__loginticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__casserver__loginticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__casserver__proxygrantingticket`
--

DROP TABLE IF EXISTS `spider__casserver__proxygrantingticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__casserver__proxygrantingticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `ticket` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_ticket_id` int(11) DEFAULT NULL,
  `iou` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__casserver__proxygrantingticket`
--

LOCK TABLES `spider__casserver__proxygrantingticket` WRITE;
/*!40000 ALTER TABLE `spider__casserver__proxygrantingticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__casserver__proxygrantingticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__casserver__proxyticket`
--

DROP TABLE IF EXISTS `spider__casserver__proxyticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__casserver__proxyticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `ticket` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iou` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proxy_granting_ticket_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__casserver__proxyticket`
--

LOCK TABLES `spider__casserver__proxyticket` WRITE;
/*!40000 ALTER TABLE `spider__casserver__proxyticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__casserver__proxyticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__casserver__serviceticket`
--

DROP TABLE IF EXISTS `spider__casserver__serviceticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__casserver__serviceticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `ticket` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consumed` datetime DEFAULT NULL,
  `client_hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_granting_ticket_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__casserver__serviceticket`
--

LOCK TABLES `spider__casserver__serviceticket` WRITE;
/*!40000 ALTER TABLE `spider__casserver__serviceticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__casserver__serviceticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__casserver__ticket`
--

DROP TABLE IF EXISTS `spider__casserver__ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__casserver__ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__casserver__ticket`
--

LOCK TABLES `spider__casserver__ticket` WRITE;
/*!40000 ALTER TABLE `spider__casserver__ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__casserver__ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__casserver__ticketgrantingticket`
--

DROP TABLE IF EXISTS `spider__casserver__ticketgrantingticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__casserver__ticketgrantingticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `ticket` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_attributes` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__casserver__ticketgrantingticket`
--

LOCK TABLES `spider__casserver__ticketgrantingticket` WRITE;
/*!40000 ALTER TABLE `spider__casserver__ticketgrantingticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__casserver__ticketgrantingticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__files__basefile`
--

DROP TABLE IF EXISTS `spider__files__basefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__files__basefile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `sha1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uuid` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sha1_idx` (`sha1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__files__basefile`
--

LOCK TABLES `spider__files__basefile` WRITE;
/*!40000 ALTER TABLE `spider__files__basefile` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__files__basefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__files__basefile__tags`
--

DROP TABLE IF EXISTS `spider__files__basefile__tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__files__basefile__tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `base_file_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__files__basefile__tags`
--

LOCK TABLES `spider__files__basefile__tags` WRITE;
/*!40000 ALTER TABLE `spider__files__basefile__tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__files__basefile__tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__files__diskfile`
--

DROP TABLE IF EXISTS `spider__files__diskfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__files__diskfile` (
  `base_file_id` int(11) NOT NULL DEFAULT '0',
  `id_disk_file` int(11) DEFAULT NULL,
  PRIMARY KEY (`base_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__files__diskfile`
--

LOCK TABLES `spider__files__diskfile` WRITE;
/*!40000 ALTER TABLE `spider__files__diskfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__files__diskfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__files__license`
--

DROP TABLE IF EXISTS `spider__files__license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__files__license` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `holder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribution` tinyint(1) DEFAULT NULL,
  `non_commercial` tinyint(1) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__files__license`
--

LOCK TABLES `spider__files__license` WRITE;
/*!40000 ALTER TABLE `spider__files__license` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__files__license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__files__tag`
--

DROP TABLE IF EXISTS `spider__files__tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__files__tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__files__tag`
--

LOCK TABLES `spider__files__tag` WRITE;
/*!40000 ALTER TABLE `spider__files__tag` DISABLE KEYS */;
INSERT INTO `spider__files__tag` VALUES (1,'2019-09-16 14:10:38','2019-09-16 14:10:38','aa');
/*!40000 ALTER TABLE `spider__files__tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__images__image`
--

DROP TABLE IF EXISTS `spider__images__image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__images__image` (
  `spider_files_disk_file_id` int(11) NOT NULL DEFAULT '0',
  `id_image` int(11) DEFAULT NULL,
  `license_id` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`spider_files_disk_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__images__image`
--

LOCK TABLES `spider__images__image` WRITE;
/*!40000 ALTER TABLE `spider__images__image` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__images__image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__images__image__copies`
--

DROP TABLE IF EXISTS `spider__images__image__copies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__images__image__copies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `spider_images_image_id` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__images__image__copies`
--

LOCK TABLES `spider__images__image__copies` WRITE;
/*!40000 ALTER TABLE `spider__images__image__copies` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__images__image__copies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__images__image__tags`
--

DROP TABLE IF EXISTS `spider__images__image__tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__images__image__tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__images__image__tags`
--

LOCK TABLES `spider__images__image__tags` WRITE;
/*!40000 ALTER TABLE `spider__images__image__tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__images__image__tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__images__tag`
--

DROP TABLE IF EXISTS `spider__images__tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__images__tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__images__tag`
--

LOCK TABLES `spider__images__tag` WRITE;
/*!40000 ALTER TABLE `spider__images__tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__images__tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__messenger__email`
--

DROP TABLE IF EXISTS `spider__messenger__email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__messenger__email` (
  `message_id` int(11) NOT NULL DEFAULT '0',
  `id_email` int(11) DEFAULT NULL,
  `from_field` varchar(255) DEFAULT NULL,
  `to_field` varchar(255) DEFAULT NULL,
  `headers` text,
  `body` longtext,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__messenger__email`
--

LOCK TABLES `spider__messenger__email` WRITE;
/*!40000 ALTER TABLE `spider__messenger__email` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__messenger__email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__messenger__message`
--

DROP TABLE IF EXISTS `spider__messenger__message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__messenger__message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `ticket` varchar(36) DEFAULT NULL,
  `last_try` datetime DEFAULT NULL,
  `next_try` datetime DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `backend` varchar(255) DEFAULT NULL,
  `backend_id` varchar(255) DEFAULT NULL,
  `backend_response` varchar(255) DEFAULT NULL,
  `sent` datetime DEFAULT NULL,
  `status_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__messenger__message`
--

LOCK TABLES `spider__messenger__message` WRITE;
/*!40000 ALTER TABLE `spider__messenger__message` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__messenger__message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__messenger__sms`
--

DROP TABLE IF EXISTS `spider__messenger__sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__messenger__sms` (
  `message_id` int(11) NOT NULL DEFAULT '0',
  `id_sms` int(11) DEFAULT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__messenger__sms`
--

LOCK TABLES `spider__messenger__sms` WRITE;
/*!40000 ALTER TABLE `spider__messenger__sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__messenger__sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider__worker__job`
--

DROP TABLE IF EXISTS `spider__worker__job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider__worker__job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_created` datetime DEFAULT NULL,
  `obj_modified` datetime DEFAULT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `task` varchar(255) DEFAULT NULL,
  `status_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider__worker__job`
--

LOCK TABLES `spider__worker__job` WRITE;
/*!40000 ALTER TABLE `spider__worker__job` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider__worker__job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-30 17:43:47