-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sch_srv
-- ------------------------------------------------------
-- Server version	5.5.46-0+deb8u1

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
-- Table structure for table `rsv_acceso`
--

DROP TABLE IF EXISTS `rsv_acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsv_acceso` (
  `idacceso` int(11) NOT NULL AUTO_INCREMENT,
  `pantalla` varchar(100) NOT NULL,
  `menu` varchar(100) NOT NULL,
  PRIMARY KEY (`idacceso`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsv_acceso`
--

LOCK TABLES `rsv_acceso` WRITE;
/*!40000 ALTER TABLE `rsv_acceso` DISABLE KEYS */;
INSERT INTO `rsv_acceso` VALUES (1,'../index.php','menu principal'),(2,'../menuCli1.php','menuCli1'),(3,'../menu2Cli.php','menuCli2'),(4,'../menu3Cli.php','menuCli3'),(5,'../menuEmp1.php','menuEmp1'),(6,'../menuEmp2.php','menuEmp2'),(7,'../menuEmp3.php','menuEmp3'),(8,'../menuAdmin1.php','menuAdmin1'),(9,'../menuAdmin2.php','menuAdmin2');
/*!40000 ALTER TABLE `rsv_acceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsv_bloque_horario`
--

DROP TABLE IF EXISTS `rsv_bloque_horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsv_bloque_horario` (
  `idbloque_horario` int(11) NOT NULL AUTO_INCREMENT,
  `hora_fin` time NOT NULL,
  `hora_ini` time NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `estado` int(1) NOT NULL,
  PRIMARY KEY (`idbloque_horario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsv_bloque_horario`
--

LOCK TABLES `rsv_bloque_horario` WRITE;
/*!40000 ALTER TABLE `rsv_bloque_horario` DISABLE KEYS */;
INSERT INTO `rsv_bloque_horario` VALUES (1,'09:00:00','08:00:00','AM1',1),(2,'10:00:00','09:00:00','AM2',1),(3,'12:00:00','11:00:00','AM3',1),(4,'13:00:00','12:00:00','PM1',1),(5,'14:00:00','13:00:00','PM2',1),(6,'16:00:00','15:00:00','PM3',1),(7,'17:00:00','16:00:00','PM4',1);
/*!40000 ALTER TABLE `rsv_bloque_horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsv_cliente`
--

DROP TABLE IF EXISTS `rsv_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsv_cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `rut` int(10) NOT NULL,
  `dv` char(1) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `ape_pat` varchar(45) NOT NULL,
  `ape_mat` varchar(45) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `fecha_nac` date NOT NULL,
  `sexo` char(1) NOT NULL,
  `telefono` int(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsv_cliente`
--

LOCK TABLES `rsv_cliente` WRITE;
/*!40000 ALTER TABLE `rsv_cliente` DISABLE KEYS */;
INSERT INTO `rsv_cliente` VALUES (1,1,'k','Ncliente1','b','c','d','1969-12-31','M',2,'f@d.cl'),(2,2,'k','ab','b','b','b','0000-00-00','M',2,'b'),(3,3,'k','a','b','c','d','1988-11-09','M',2,'f@d.cl'),(4,4,'1','n','a','m','d','0000-00-00','F',1,'a@ac.cl'),(5,23000807,'	','	Maria	','	Lagos	','	Lopez	','	las vertientes	','0000-00-00','	',111111111,'	maria@gmail.com	'),(6,22728538,'	','	Juana	','	Marquez	','	Gonzalez	','	calle cinco	','0000-00-00','	',222222222,'	juana@gmail.com	'),(7,9088731,'	','	Roberta	','	Gomez	','	Ramos	','	pasje uno	','0000-00-00','	',333333333,'	roberta@gmail.com	'),(8,17841931,'	','	Teresa	','	Lopez	','	Llanos	','	santo domingo	','0000-00-00','	',444444444,'	lopez@gmail.com	');
/*!40000 ALTER TABLE `rsv_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsv_empleado`
--

DROP TABLE IF EXISTS `rsv_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsv_empleado` (
  `idempleado` int(11) NOT NULL AUTO_INCREMENT,
  `rut` int(10) NOT NULL,
  `dv` char(1) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `ape_pat` varchar(45) NOT NULL,
  `ape_mat` varchar(45) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `fecha_nac` date NOT NULL,
  `sexo` char(1) NOT NULL,
  `telefono` int(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `sueldo` int(7) DEFAULT NULL,
  PRIMARY KEY (`idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsv_empleado`
--

LOCK TABLES `rsv_empleado` WRITE;
/*!40000 ALTER TABLE `rsv_empleado` DISABLE KEYS */;
INSERT INTO `rsv_empleado` VALUES (1,14458782,'0','Roberto','Olmos','Wulf','roman diaz','1980-01-09','1',999999999,'roberto.olmos@gmail.com',333333),(2,16654843,'8','Marco','Zapata','Osorio','manuel montt','0000-00-00','1',111111111,'marco@gmail.com',320000),(3,23061198,'k','Julia','Monroe','Cespedes','los corrales','0000-00-00','2',222222222,'senorajulia@gmail.com',350000),(4,17572222,'k','Marta','Concha','Rojas','estados unidos','0000-00-00','2',333333333,'concharoja@gmail.com',400000),(5,11521782,'8','Patricia','Monte','Pacheco','las monjas','0000-00-00','2',444444444,'montemonja@gmail.com',300000);
/*!40000 ALTER TABLE `rsv_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsv_perfil`
--

DROP TABLE IF EXISTS `rsv_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsv_perfil` (
  `idperfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idperfil`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsv_perfil`
--

LOCK TABLES `rsv_perfil` WRITE;
/*!40000 ALTER TABLE `rsv_perfil` DISABLE KEYS */;
INSERT INTO `rsv_perfil` VALUES (1,'ADMINISTRADOR',''),(2,'VENDEDOR',''),(3,'CLIENTE',''),(4,'TALLER',''),(5,'FUNDADOR','');
/*!40000 ALTER TABLE `rsv_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsv_permiso`
--

DROP TABLE IF EXISTS `rsv_permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsv_permiso` (
  `idpermiso` int(11) NOT NULL AUTO_INCREMENT,
  `idperfil` int(11) NOT NULL,
  `idacceso` int(11) NOT NULL,
  PRIMARY KEY (`idpermiso`),
  KEY `fk_permiso_perfil1_idx` (`idperfil`),
  KEY `fk_permiso_acceso1_idx` (`idacceso`),
  CONSTRAINT `fk_permiso_acceso1` FOREIGN KEY (`idacceso`) REFERENCES `rsv_acceso` (`idacceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_permiso_perfil1` FOREIGN KEY (`idperfil`) REFERENCES `rsv_perfil` (`idperfil`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsv_permiso`
--

LOCK TABLES `rsv_permiso` WRITE;
/*!40000 ALTER TABLE `rsv_permiso` DISABLE KEYS */;
INSERT INTO `rsv_permiso` VALUES (1,3,1),(2,3,2),(3,3,3),(4,3,4),(5,2,1),(6,2,5),(7,2,6),(8,2,7),(9,1,1),(10,1,2),(11,1,3),(12,1,4),(13,1,5),(14,1,6),(15,1,7),(16,1,8),(17,1,9);
/*!40000 ALTER TABLE `rsv_permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsv_red_social`
--

DROP TABLE IF EXISTS `rsv_red_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsv_red_social` (
  `idred_social` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  `token_access` varchar(50) DEFAULT NULL,
  `token_access_secret` varchar(50) DEFAULT NULL,
  `access_level` varchar(45) DEFAULT NULL,
  `idusuario` int(11) NOT NULL,
  PRIMARY KEY (`idred_social`),
  KEY `fk_red_social_usuario1_idx` (`idusuario`),
  CONSTRAINT `fk_red_social_usuario1` FOREIGN KEY (`idusuario`) REFERENCES `rsv_usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsv_red_social`
--

LOCK TABLES `rsv_red_social` WRITE;
/*!40000 ALTER TABLE `rsv_red_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `rsv_red_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsv_reserva`
--

DROP TABLE IF EXISTS `rsv_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsv_reserva` (
  `idreserva` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) DEFAULT NULL,
  `idempleado` int(11) NOT NULL,
  `idbloque_horario` int(11) NOT NULL,
  `idtipo_solicitud` int(11) NOT NULL,
  `fecha_reserva` date NOT NULL,
  `es_confirmada` tinyint(1) NOT NULL,
  PRIMARY KEY (`idreserva`),
  KEY `fk_reserva_cliente_idx` (`idcliente`),
  KEY `fk_reserva_empleado1_idx` (`idempleado`),
  KEY `fk_reserva_bloque_horario1_idx` (`idbloque_horario`),
  KEY `fk_reserva_tipo_solicitud1_idx1` (`idtipo_solicitud`),
  CONSTRAINT `fk_reserva_bloque_horario1` FOREIGN KEY (`idbloque_horario`) REFERENCES `rsv_bloque_horario` (`idbloque_horario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_cliente` FOREIGN KEY (`idcliente`) REFERENCES `rsv_cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_empleado1` FOREIGN KEY (`idempleado`) REFERENCES `rsv_empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_tipo_solicitud1` FOREIGN KEY (`idtipo_solicitud`) REFERENCES `rsv_tipo_solicitud` (`idtipo_solicitud`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsv_reserva`
--

LOCK TABLES `rsv_reserva` WRITE;
/*!40000 ALTER TABLE `rsv_reserva` DISABLE KEYS */;
INSERT INTO `rsv_reserva` VALUES (1,1,1,1,1,'2016-06-01',0),(2,1,1,1,1,'2016-06-12',0),(3,1,2,1,1,'2016-06-12',0),(4,1,1,3,2,'2016-06-17',1),(5,1,1,1,1,'2016-06-14',0),(6,1,4,2,2,'0000-00-00',0),(7,1,1,4,1,'2016-06-14',0),(8,8,3,4,1,'2016-06-15',0),(9,5,1,1,2,'2016-06-14',0),(10,6,3,7,3,'2016-06-15',0);
/*!40000 ALTER TABLE `rsv_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsv_tipo_solicitud`
--

DROP TABLE IF EXISTS `rsv_tipo_solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsv_tipo_solicitud` (
  `idtipo_solicitud` int(11) NOT NULL,
  `nombre_solicitud` varchar(50) NOT NULL,
  `detalle` varchar(100) NOT NULL,
  PRIMARY KEY (`idtipo_solicitud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsv_tipo_solicitud`
--

LOCK TABLES `rsv_tipo_solicitud` WRITE;
/*!40000 ALTER TABLE `rsv_tipo_solicitud` DISABLE KEYS */;
INSERT INTO `rsv_tipo_solicitud` VALUES (1,'Vestidos','Venta de vestido de novias'),(2,'Ajuste','Ajustes de traje de novia'),(3,'Diseño','Diseño trajes de novias'),(4,'Compra accesorios','Compra de accesorios de novia');
/*!40000 ALTER TABLE `rsv_tipo_solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsv_usuario`
--

DROP TABLE IF EXISTS `rsv_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsv_usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idempleado` int(11) NOT NULL,
  `idperfil` int(11) NOT NULL,
  `password` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `fk_usuario_cliente1_idx` (`idcliente`),
  KEY `fk_usuario_empleado1_idx` (`idempleado`),
  KEY `fk_usuario_perfil1_idx` (`idperfil`),
  CONSTRAINT `fk_usuario_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `rsv_cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_empleado1` FOREIGN KEY (`idempleado`) REFERENCES `rsv_empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_perfil1` FOREIGN KEY (`idperfil`) REFERENCES `rsv_perfil` (`idperfil`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsv_usuario`
--

LOCK TABLES `rsv_usuario` WRITE;
/*!40000 ALTER TABLE `rsv_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `rsv_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sch_srv'
--
/*!50003 DROP PROCEDURE IF EXISTS `agendarHoraReservaCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `agendarHoraReservaCliente`(in in_idcliente int, in in_idreserva int)
BEGIN


 IF NOT EXISTS ( SELECT r.idreserva FROM rsv_reserva AS r WHERE r.idreserva = in_idreserva) THEN
  SELECT 'Esta reserva no existe!';
 ELSE
    UPDATE rsv_reserva SET id_cliente = in_idcliente WHERE idreserva = in_idreserva;
 END IF;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `anularReserva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `anularReserva`(in in_idreserva int)
BEGIN

 IF NOT EXISTS ( SELECT p.idreserva FROM rsv_reserva AS p WHERE p.idreserva = in_idreserva) THEN
	 SELECT 'Esta reserva no existe!';
  ELSE
     UPDATE rsv_reserva SET id_cliente = NULL WHERE idreserva = in_idreserva;
 END IF;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearBloqueHorario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `crearBloqueHorario`(IN in_codigo VARCHAR(10), IN in_estado INT, IN in_hora_ini TIME, IN in_hora_fin TIME)
BEGIN

insert into rsv_bloque_horario(hora_ini, hora_fin, codigo, estado)
	 values(in_hora_ini,in_hora_fin, in_codigo, in_estado);
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `crearCliente`(IN in_rut INT, IN in_dv VARCHAR(1), IN in_nombre VARCHAR(45), IN in_ape_pat VARCHAR(45), IN in_ape_mat VARCHAR(45), IN in_direccion VARCHAR(200), IN in_fecha_nac DATE, IN in_sexo CHAR(1), IN in_telefono INT, IN in_email VARCHAR(200))
BEGIN
 
 IF NOT EXISTS ( SELECT C.rut FROM rsv_cliente C WHERE C.rut = in_rut) THEN
	 insert into rsv_cliente(rut,dv,nombre,ape_pat,ape_mat,direccion,fecha_nac,sexo,telefono,email)
	 values(in_rut,in_dv,in_nombre,in_ape_pat,in_ape_mat,in_direccion,in_fecha_nac,in_sexo,in_telefono,in_email);
	 SELECT 'Guardado correctamente' as salida;
  ELSE
	 SELECT 'Este cliente ya existe!' as salida;
 END IF;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearEmpleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `crearEmpleado`(IN in_rut INT, IN in_dv VARCHAR(1), IN in_nombre VARCHAR(45), IN in_ape_pat VARCHAR(45), IN in_ape_mat VARCHAR(45), IN in_direccion VARCHAR(200), IN in_fecha_nac DATE, IN in_sexo CHAR(1), IN in_telefono INT, IN in_email VARCHAR(200))
BEGIN
 
 IF NOT EXISTS ( SELECT e.rut FROM rsv_empleado AS e WHERE e.rut = in_rut) THEN
	 insert into rsv_empleado(rut,dv,nombre,ape_pat,ape_mat,direccion,fecha_nac,sexo,telefono,email)
	 values(in_rut,in_dv,in_nombre,in_ape_pat,in_ape_mat,in_direccion,in_fecha_nac,in_sexo,in_telefono,in_email);
	 	 SELECT 'Guardado correctamente!' as salida;
  ELSE
	 SELECT 'Este empleado ya existe!' as salida;
 END IF;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearPerfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `crearPerfil`(in in_nombre varchar(45), in in_descripcion varchar(100))
BEGIN

 IF NOT EXISTS ( SELECT p.nombre FROM rsv_perfil AS p WHERE p.nombre = in_nombre) THEN
	 insert into rsv_perfil(nombre, descripcion)
	 values(in_nombre, in_descripcion);
  ELSE
     SELECT 'Este perfil ya existe!';
 END IF;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearReservaCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `crearReservaCliente`(IN in_cliente INT,in_empleado INT,in_bloque INT,IN in_tipo INT,in_fecha DATE)
BEGIN
	-- VERIFICAMOS QUE LOS DATOS EXISTAN
	IF EXISTS (SELECT c.idcliente FROM rsv_cliente c
	INNER JOIN rsv_empleado e ON (e.idempleado=in_empleado)
	INNER JOIN rsv_bloque_horario b ON (b.idbloque_horario = in_bloque)
	INNER JOIN rsv_tipo_solicitud s ON (s.idtipo_solicitud = in_tipo)
	WHERE (c.idcliente=in_cliente)
	LIMIT 1) THEN
	  /*VERIFICAMOS QUE LA SOLICITUD NO EXISTA */
	IF NOT EXISTS (SELECT r.idreserva FROM rsv_reserva r 
	  	where r.idcliente = in_cliente
	  	and r.idbloque_horario = in_bloque
	  	and r.fecha_reserva = in_fecha) THEN
	  INSERT INTO rsv_reserva(idcliente,idempleado,idbloque_horario,idtipo_solicitud,fecha_reserva,es_confirmada)
	  VALUES (in_cliente,in_empleado,in_bloque,in_tipo,in_fecha,FALSE);
	  
	  SELECT 'Reserva agendada con exito!' as salida;
	  	
	ELSE 
			SELECT 'Ya ha realizado esta solicitud con anterioridad' as salida;
	END IF;
	
	ELSE
	SELECT 'La solicitud enviada no es valida' as salida;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearReservaEmpleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `crearReservaEmpleado`(in in_idempleado int, in in_idbloque int, in in_idtiposolicitud int, in in_fecha date)
BEGIN


 IF NOT EXISTS ( SELECT e.idempleado FROM rsv_empleado AS e WHERE e.idempleado = in_idempleado) THEN
  SELECT 'Este empleado no existe!';
 ELSEIF NOT EXISTS ( SELECT b.idbloque_horario FROM rsv_idbloque_horario AS b WHERE b.idbloque_horaio = in_idbloque) THEN
  SELECT 'Este bloque no existe!';
 ELSE
	 insert into rsv_reserva(idempleado, idbloque_horario, idtipo_solicitud, fecha_reserva, es_confirmada)
	 values(in_idempleado, in_idbloque_horario, in_idtipo_solicitud, in_fecha, FALSE);
 END IF;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `crearSolicitud`(IN nombreSolicitud varchar(50),IN detalle varchar(50))
BEGIN
	DECLARE _error_rollback BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET _error_rollback = 1;
    START TRANSACTION;
		 INSERT INTO rsv_tipo_solicitud(idtipo_solicitud,nombre_solicitud,detalle)
	 	 VALUES(NULL,nombreSolicitud,detalle);
	 COMMIT;
	IF _error_rollback THEN
		SELECT '-1';
        ROLLBACK;
    ELSE
    	SELECT '0';
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarBloqueHorario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `eliminarBloqueHorario`(in in_bloque int)
BEGIN

 IF NOT EXISTS ( SELECT b.idbloque_horario FROM rsv_bloque_horario AS b WHERE b.idbloque_horario = in_bloque) THEN
	 SELECT 'Este bloque horaio no existe!';
  ELSE
     delete from rsv_bloque_horario where idbloque_horario = in_bloque; 
 END IF;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `eliminarCliente`(in in_id int)
BEGIN
 
 IF NOT EXISTS ( SELECT C.idcliente t FROM RSV_CLIENTE AS C WHERE C.idcliente = in_id) THEN
	 SELECT 'Este cliente no existe!';
  ELSE
     delete from rsv_cliente where idcliente = in_id;
 END IF;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarEmpleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `eliminarEmpleado`(in in_id int)
BEGIN
 
 IF NOT EXISTS ( SELECT e.idempleado e FROM rsv_empleado AS e WHERE e.idempleado = in_id) THEN
	 SELECT 'Este empleado no existe!';
  ELSE
     delete from rsv_empleado where idempleado = in_id;
 END IF;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarPerfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `eliminarPerfil`(in in_idperfil int)
BEGIN

 IF NOT EXISTS ( SELECT p.idperfil FROM rsv_perfil AS p WHERE p.idperfil = in_idperfil) THEN
	 SELECT 'Este perfil no existe!';
  ELSE
     delete from rsv_perfil where idperfil = in_idperfil;
 END IF;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarReserva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `eliminarReserva`(in in_idreserva int)
BEGIN

 IF NOT EXISTS ( SELECT p.idreserva FROM rsv_reserva AS p WHERE p.idreserva = in_idreserva) THEN
	 SELECT 'Esta reserva no existe!';
  ELSE
     delete from rsv_reserva where idreserva = in_idreserva;
 END IF;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `eliminarSolicitud`(IN idSoliciud INT)
BEGIN
	DECLARE _error_rollback BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET _error_rollback = 1;
    START TRANSACTION;
		 DELETE FROM rsv_tipo_solicitud WHERE idtipo_solicitud=idSolicitud; 
	 COMMIT;
	IF _error_rollback THEN
		SELECT '-1';
        ROLLBACK;
    ELSE
    	SELECT '0';
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `eliminarUsuario`(in in_idusuario int)
BEGIN
 IF NOT EXISTS ( SELECT u.idusuario FROM RSV_USUARIO AS u WHERE u.idusuario = in_idusuario) THEN
	 SELECT 'Este usuario no está registrado!';
  ELSE
     delete from rsv_usuario where idusuario = in_idusuario; 
 END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `isConfirmada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `isConfirmada`(IN cliente int)
BEGIN
	SELECT c.rut,c.nombre,a.fecha_reserva,d.hora_ini,d.hora_fin,d.estado,a.idtipo_solicitud 
	FROM rsv_reserva a
	INNER JOIN rsv_cliente b ON (b.idcliente=a.idcliente and b.idcliente=cliente)
	INNER JOIN rsv_bloque_horario d ON (a.idbloque_horario=d.idbloque_horario)
	INNER JOIN rsv_empleado c ON (a.idempleado=c.idempleado)
	WHERE 
	a.es_confirmada <> TRUE;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaPendientesConfirmacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `listaPendientesConfirmacion`()
BEGIN
	SELECT c.nombre,c.ape_pat, b.hora_ini,b.hora_fin from rsv_reserva a 
	INNER JOIN rsv_bloque_horario b ON (a.idbloque_horario = b.idbloque_horario)
	INNER JOIN rsv_cliente c on (c.idcliente = a.idcliente)
	where a.es_confirmada = true;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarBloqueHorario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `listarBloqueHorario`()
BEGIN
	select * from rsv_bloque_horario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarClientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`umayor`@`%` PROCEDURE `listarClientes`()
BEGIN
	SELECT * FROM rsv_cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarEmpledos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `listarEmpledos`()
BEGIN
	SELECT * FROM rsv_empleado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaReservasAtendidas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `listaReservasAtendidas`(IN fInicio DATETIME,IN fFin DATETIME)
BEGIN
	SELECT c.nombre,c.ape_pat, b.hora_ini,b.hora_fin from rsv_reserva a 
	INNER JOIN rsv_bloque_horario b ON (a.idbloque_horario = b.idbloque_horario)
	INNER JOIN rsv_cliente c on (c.idcliente = a.idcliente)
	WHERE 
	a.fecha_reserva BETWEEN fInicio AND fFin 
AND a.estado = true;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarReservas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `listarReservas`()
BEGIN
	SELECT c.nombre as nombre_cliente,e.nombre as nombre_empleado,r.fecha_reserva,r.es_confirmada,b.hora_ini,b.hora_fin,b.estado,b.codigo,t.nombre_solicitud FROM rsv_reserva r 
	INNER JOIN rsv_cliente c ON (r.idcliente =c.idcliente)
	INNER JOIN rsv_empleado e ON (e.idempleado=r.idempleado)
	INNER JOIN rsv_bloque_horario b ON (r.idbloque_horario = b.idbloque_horario)
	INNER JOIN rsv_tipo_solicitud t ON (r.idtipo_solicitud=t.idtipo_solicitud);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarReservasEmpleados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`umayor`@`%` PROCEDURE `listarReservasEmpleados`()
BEGIN
	select count(a.idreserva) as cantidad,b.nombre from rsv_reserva a
	inner join rsv_empleado b on( b.idempleado=a.idempleado)
	group by b.nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `listarSolicitud`(IN idSolicitud INTEGER)
BEGIN
	
    IF idSolicitud <1  THEN 
     SELECT * FROM rsv_tipo_solicitud;
    ELSE
     SELECT a.* FROM rsv_tipo_solicitud a where a.id_solicitud = idSolicitud;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaSolicitudesDemandadas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `listaSolicitudesDemandadas`()
BEGIN
	SELECT b.nombre_solicitud, count(a.idreserva) as cantidad FROM rsv_reserva a
	INNER JOIN rsv_tipo_solicitud b on (a.idtipo_solicitud=b.idtipo_solicitud)
	GROUP BY  count(a.idreserva),b.nombre_solicitud
	ORDER BY count(a.idreserva) desc
	LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `login`(IN in_rut INT,IN in_pass varchar(100),in in_tipo varchar(10))
BEGIN
	
	IF(in_tipo ='cliente') THEN
	
	 SELECT u.idusuario,u.idperfil,c.rut,c.nombre,c.sexo,c.email,ac.pantalla,ac.menu,per.nombre as nombrePerfil FROM rsv_usuario u
	 INNER JOIN rsv_cliente c on (c.rut =in_rut)
	 INNER JOIN rsv_permiso p on (u.idperfil=p.idperfil)
	 INNER JOIN rsv_perfil  per on (per.idperfil = p.idperfil)
	 INNER JOIN rsv_accesso ac on (ac.idacceso = p.idacceso)
	 where 
	 	u.idcliente = c.idcliente 
	 and u.password =MD5(in_pass);
	 
	ELSEIF (in_tipo ='empleado') THEN
	
	SELECT u.idusuario,u.idperfil,c.rut,c.nombre,c.sexo,c.email,ac.pantalla,ac.menu,per.nombre as nombrePerfil 
	FROM rsv_usuario u
	 INNER JOIN rsv_empleado c on (c.rut =in_rut)
	 INNER JOIN rsv_permiso p on (u.idperfil=p.idperfil)
	 INNER JOIN rsv_perfil  per on (per.idperfil = p.idperfil)
	 INNER JOIN rsv_accesso ac on (ac.idacceso = p.idacceso)
	 where 
	 	u.idcliente = c.idcliente 
	 and u.password =MD5(in_pass);
	 
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `promedioEdadClientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `promedioEdadClientes`()
BEGIN
	 SELECT SUM(TIMESTAMPDIFF(YEAR,b.fecha_nac, CURDATE()))/c.total as edad 
	 FROM  rsv_cliente b
	 INNER JOIN (SELECT COUNT(b.idcliente) as total FROM rsv_cliente b) c ON 1=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registroUsuarioCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `registroUsuarioCliente`(in in_idcliente int, in in_password varchar(45))
BEGIN
 
 IF NOT EXISTS ( SELECT u.idcliente FROM RSV_USUARIO AS u WHERE u.idcliente = in_idcliente) THEN
     insert into rsv_usuario(idcliente, password)
	 values(in_idcliente,in_password);
  ELSE
     SELECT 'Este usuario ya está registrado!';
 END IF;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `trabajadorMasProductivo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `trabajadorMasProductivo`()
BEGIN
	SELECT count(a.idreserva),b.nombre,b.ape_pat FROM rsv_reserva a
	INNER JOIN rsv_empleado b on (a.idempleado=b.idempleado)
	WHERE a.es_confirmada=true
	ORDER BY count(a.idreserva) DESC
	LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-14 21:31:53
