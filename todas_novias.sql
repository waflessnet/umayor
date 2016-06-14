-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: todas_novias
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
-- Table structure for table `nov_cliente`
--

DROP TABLE IF EXISTS `nov_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido_p` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido_m` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(4000) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_domicilio` int(11) DEFAULT NULL,
  `dv` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_domicilio` (`id_domicilio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_cliente`
--

LOCK TABLES `nov_cliente` WRITE;
/*!40000 ALTER TABLE `nov_cliente` DISABLE KEYS */;
INSERT INTO `nov_cliente` VALUES (12690827,'Karim ','Torkar','','a20fc36f5bdc034bc6d7f2eee68bbd68',87979798,'karimtorkar@gmail.com',0,0),(12345687,'Betsabe ','Morales','l','95d47be0d380a7cd3bb5bbe78e8bed49',3098420,'taby_96@gmail.com',17,2),(13291164,'jessica','navarrete','m','8dba18f8cc05a591d580fbb837745207',81493589,'jf_nn@hotmail.com',16,9),(17032910,'Dyanne','Cortes','c','8766e0c1ce6065f60f180914e1e31c16',77875365,'dyanne',15,4),(16458987,'Constanza ','Miranda','Larraín','39815aafa9276ce10bac931c028aab0b',78571542,'patriciamiranda.larrain@gmail.com',18,2),(15452151,'Denisse','Larrain','m','9048892bafd23bc8596d42d4b5ac95e1',77856916,'denisse.larrain@gmail.com',19,8),(14194805,'Solange','Navarrete','a','4c67f872fb2d66c66b17743cfe7fe5b1',74792500,'solangenavarrete@gmail.com',20,0),(16839821,'Muriel','Contreras','L','c4853ac7802d99ea619dff02a55d8a42',68412074,'muriel.ucontreras@gmail.com',21,2),(12748393,'Solange','Saldía','N','7ae6091c75ab75ef66e5c1adf39c5b22',90432490,'ssaldia@gmail.com',22,9),(16876141,'Tamara','Miranda','m','018649291bba3e66076d39ddea1113e9',99,'tamara',23,4),(15949399,'Graciela','Gonzales','m','04518763e29985c20528907b34ce9654',77075343,'graciplum87@hotmail.com',24,2),(16373829,'Claudia','Muñoz','Badillo','fddfca8ba7c0c8ddd8f6ac11cb69b5a9',62748591,'claudiambadillo@gmail.com',25,9),(9917966,'Angelica','Navarrete','M','8c68de41cfd0d440c098cdaa7cd2b9da',4928304,'ines.navarrete@ypf.com',26,0),(5029175,'Gloria','Arnal','a','f0da4b7b195fbde589b8217f460425fb',98888246,'arnal.gloria@gmail.com',27,8),(13932977,'Mabel ','Gutierrez','a','32528cde4db975c83511e6bd845a9f4d',81581680,'gutierrez.mabel@gmail.com',28,5),(15821390,'Karina','Nogales','Collao','168751dab5fc1b662c21b43f13715b37',94490563,'karinogales@gmail.com',29,7),(21160236,'Sofía','Navarrete','L','06f52570c7109658830e6b9b2ac22a26',90997841,'patriciamiranda.larrain@gmail.com',30,8),(0,'steffany ','flores','z','29c3eea3f305d6b823f562ac4be35217',654,'stefanny.flores1@pesico.com',31,3),(16345786,'nataly','muñoz','c','ff2a77004127aa193be050bf39cc18e9',51030627,'munozc.natalia@gmail.com',32,1),(6363554,'Georgina','Collao','c','976d8772360728aeb5967e307094b894',92251152,'Georgina.collao@gmail.com',33,5),(17490986,'paulina','farias','zabala','aa94192dc1a5228c35cfebcd85710415',84672329,' paulinabelen.farias@gmail.com',34,5),(16144660,'Claudia','muñoz','Badillo','5a9ab616340d95c2d6c9e2189470fc84',62748591,'claudiambadillo@gmail.com',35,2),(17617401,'Cindy','Olivares','alcalde','483510395ec39ecf63472ca7d6884728',87162912,'cindy.olivares.a@gmail.com',36,3),(1,'test','test','test','c4ca4238a0b923820dcc509a6f75849b',88888888,'test@test.lo',37,9),(16532530,'test','testpTEST','TESTM','492ef6691239bb649689bd699020c9f6',88888888,'TEST@TEST.CL',38,3);
/*!40000 ALTER TABLE `nov_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_comentarios`
--

DROP TABLE IF EXISTS `nov_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_comentarios` (
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `lugar_publicacion` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `comentario1` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `comentario2` varchar(4000) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_comentario`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_comentarios`
--

LOCK TABLES `nov_comentarios` WRITE;
/*!40000 ALTER TABLE `nov_comentarios` DISABLE KEYS */;
INSERT INTO `nov_comentarios` VALUES (1,'matrimonios.cl','25/04/2014','Muy buen servicio, me facilitaron la vida al estar pendientes de mi vestido para que estuviera impecable','el día de mi matrimonio. Me asesoraron desde el momento en que me lo puse hasta el minuto en que entré a casarme, arreglándome la cola y asegurándose que se viera exactamente como yo quería. Definitivamente recomendable.','María Jesús Alguacil'),(2,'matrimonios.cl','25/04/2014','Sí o sí deben considerar hacer su vestido aquí. Son detallistas, delicadas, escuchan lo que uno quiere,','pueden cambiar, mejorar, crear diseños, ellas guían y son muy creativas a la hora de resolver dudas respecto al vestido. No son sólo excelentes diseñadoras sino que también un apoyo importante, simpáticas y acogedoras, confiar en ellas fue lo mejor que pude hacer y que me pasó. Mi vestido quedo tal como lo quise, hermoso, cómodo, de ensueño. Muchas gracias chicas! ','Marié Lisselotte'),(3,'matrimonios.cl','23/04/2014','En Todas Novias la atención fue personalizada y única, teniendo como intención siempre darme en el gusto!','Ellas fueron muy atentas y detallistas, siempre estando a mi lado.Yo tenía una idea sobre cómo quería mis vestidos (el del civil y el de la ceremonia religiosa) pero ellas me ayudaron a hacer esos vestidos realidad! Son las mejores!','Loreto Collao'),(5,'matrimonios.cl','19/06/2014','Mi vestido llegó del extranjero muy grande',' en el busto y la cintura. Mi preocupación más grande era no saber en manos de quién dejarlo para que lo ajustaran, pero encontré a Todas Novias en esta website el mismo día que lo recibí y les escribí. Un par de horas más tarde me respondieron solicitándome fotos, las envié y minutos después me dijeron que podían arreglarlo. Sentí mucha confianza desde el principio y aun sin conocer a Soledad y Daniela, tenía el presentimiento que todo saldría bien. Al día siguiente fui a Todas Novias y de inmediato se siente el profesionalismo, la dedicación y la simpatía de las chicas. Dos semanas después, tal y como se había acordado, fui a tallármelo y quedó perfecto. Daniela y Soledad son las mejores, no duden en llevar sus vestidos a Todas Novias, los dejaran en las mejores manos y lucirán bellas el día de su boda. Gracias chicas, hoy puedo decir que tengo el vestido que soñé.','Rebeca Lopez'),(6,'matrimonios.cl','30/10/2014','Excelente atención las recomiendo 100 %',' muy preocupadas y responsables con las fechas, plazos y fechas. \r\nHasta después de la entrega del vestido preocupadas por los detalles así que no duden en acudir a ellas, felicitaciones.','Daniela Molina'),(7,'matrimonios.cl','14/10/2014','Llevé mi vestido de novia a Sole de todas novias',' y debo decir que me arrepiento de no haber hecho mi vestido con ella. Un amor, la comodidad de escoger la hora y día que me acomode para ir a las pruebas es impagable, la calidad de su trabajo, el cariño y la dedicación excelente. Sólo elogios para Todas Novias. Agradecer a Soledad por todo, incluso por sus consejos extras.','Andrea Vergara'),(8,'matrimonios.cl','03/11/2014','Llegue a Todas Novias por un vestido que necesitaba ajustar,',' dado su tamaño, y me asesoró con respecto a todos los detalles necesario para que me quedará a la perfección. Todas Novias me entendió 100% lo que necesitaba y fue super flexible y atenta con mis solicitudes, cumpliendo todas las promesas de tiempo y forma. Excelente servicio y atención, por lo que ya lo he recomendado a todos mis contactos. En otras palabras, me veía preciosa en mi vestido simplemente.','Macarena Lonza'),(9,'matrimonios.cl','04/12/2014','Excelente la atención de todas novias,',' siempre es difícil confiar tu vestido a alguien que no conoces, pero la atención tan agradable y la información perfecta te hacen confiar al 100% en los servicios. Siempre están presentes para dar respuestas a tus dudas y si tienes que hacer ajustes a tus vestidos yo recomiendo todas novias. Excelente la calidad de su trabajo, y las asesorías entregadas.','Margarita Rojas'),(10,'matrimonios.cl','26/12/2014','Chicas lo mejor que me podría haber pasado',' fue conocer a estas dos chicas de Todas Novias. En precios 100% accesibles. Responsabilidad absoluta y detallistas a morir. Mi vestido yo lo mande hacer y me hicieron más o menos una talla 42. Las chicas me lo dejaron como nuevo y en dos tallas menos. De hecho me hicieron los ajustes y las terminaciones excelentes. En verdad las recomiendo al 100%. Un saludo para ellas que entendieron mucho mi situación.','Paulina Farias'),(11,'matrimonios.cl','22/12/2014','Excelente equipo de trabajo. Soledad muy profesional, ','muy detallista y preocupada porque uno quede contenta con el servicio. Su creatividad y calidad te da seguridad para confiarle algo tan preciado como tu vestido. Cumplió a la perfección cada acuerdo tomado y en especial las fechas. Nada más que decir que la recomiendo completamente.','Pia Rammsy'),(12,'matrimonios.cl','17/12/2014','Es lo mejor que me pudo pasar. ','Mi vestido llegó anchísimo en el busto y hicieron una maravilla casi como magia para arreglarlo. 100% calidad y calidez en su trato. Las chicas, Soledad y Daniela sin de lujo, te dan las indicaciones y te bajan el nivel de ansiedad, además te van mostrando y guiando paso a paso así que cualquier cambio se realiza con tu aprobación. Insisto un servicio de lujo y altamente recomendado.','Nelda Francisca Cerpa');
/*!40000 ALTER TABLE `nov_comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_contacto`
--

DROP TABLE IF EXISTS `nov_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_contacto` (
  `idContacto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `comentario` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `numerocel` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_contacto` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idContacto`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_contacto`
--

LOCK TABLES `nov_contacto` WRITE;
/*!40000 ALTER TABLE `nov_contacto` DISABLE KEYS */;
INSERT INTO `nov_contacto` VALUES (13,'s','solemich@gmail.com','xkl','3553','0000-00-00 00:00:00'),(14,'Nelda Francisca Cerpa','francisca.cerpa@gmail.com','Hola: compre un cupon de tu cupon...para arreglo de un vestido de novia que me llegó un poco largo y ancho en en busto  cómo hago para pedir hora...mi matrimonio es para 6 febrero pero me gustaría ajustarlo antes. Gracias','88283741','0000-00-00 00:00:00'),(15,'stefanny','stefanny.flores1@pepsico.com','Estimados si yo tengo en mente un diseño de vestidos ustedes lo pueden confeccionar?\'\nsaludos!','79864046','0000-00-00 00:00:00'),(16,'stefanny','stefanny.flores1@pepsico.com','Estimados si yo tengo en mente un diseño de vestidos ustedes lo pueden confeccionar?\'\nsaludos!','79864046','0000-00-00 00:00:00'),(17,'Ornella Villarroel','ornellavillarroel@gmail.com','Hola\nSi vi una imagen de un vestido por Internet ustedes lo pueden confeccionar?\nSaludos','64639137','0000-00-00 00:00:00'),(18,'Daniela Galvez','dani.kxts@gmail.com','Hola!, quisiera saber si tengo que sacar alguna hora para poder llevar mi vestido, ya que necesito hacerle algunas modificaciones.\n\nSaluda Atte.\n\nDaniela Gálvez','+56977932884','0000-00-00 00:00:00'),(19,'Barbara Soler','bsolerh@gmail.com','Hola! les cuento que me caso en Abril 2015 y estoy recién empezando a buscar vestido.\nEs matrimonio civil a medio día.\nMe interesa algo muy sencillo, medio hippie, quizás a crochet en tonos beige.\nLa verdad, de lo que he visto nada me ha gustado.\nQuería tomar una hora para explicarles lo que quiero y que me asesoren un poco, además que me cuenten los valores, porque estoy super perdida.\nGracias!','99350120','2014-11-18 12:19:51'),(20,'Caroline Mardones','caroline.ms89@gmail.com','Hola! Quisiera saber el costo por los ajustes de un vestido de novia. Lo compré en estados unidos, y de largo me queda perfecto, pero quisiera añadirle un botón o algo para sujetar la cola después de la ceremonia religiosa. \nAdemás de eso habría que ajustarlo un poco en la cintura, la parte de arriba me queda un poco suelta.\n\nMi matrimonio es el 28 de Marzo del próximo año ¿Con cuanta anticipación debería tener los primeros justes?\n\nGracias de antemano\nSaludos!!','88051829','2014-11-27 23:57:50'),(21,'Marlene Rojas','marlene.rojas.sch@gmail.com','Estimadas\n\nNecesito un vestido de fiesta para mi madre, algo sencillo sin lentejuelas ni brillos. Les agradecería informarme como puedo reservar una hora con ustedes.\n\nQuedo atenta a sus comentarios. Gracias.','76536597','2015-01-16 12:00:23'),(22,'Tamara Miranda Larrain','tamara.miranda@usach.cl','Estimadas: Junto con saludar, les escribo para agendar una hora para la primera prueba de mi vestido. Estare atenta a su respuesta.','900199936','2015-01-16 21:04:21'),(23,'lorena','lorena.recabal@hotmail.com','ola necesito saber si ustedes confeccionan o solo ajustan vestidos de novia ,lo otro atienden solo en santiago? yo soy de concepcion y me encataria que me asesoran sobre mi vestido de novia ','96762675','2015-01-20 14:16:17'),(24,'Karen Solis','karen.solis.p@gmail.com','Estimadas:\n\nVi ustedes compran vestidos de china y los arreglan. ¿ Cuanto podría llegar a costar este servicio? Tengo más o menos la idea de vestido que quiero, he visto varios en aliexpress pero necesito orientación \nMe caso en octubre 2015. ¿ Debo agendar o puedo ir directamente a su tienda?\n \nSaludos\nKaren Solis\n','85565199','2015-02-04 20:40:28'),(25,'catalina eitel jimenez','catalina.eitel@gmail.com','buenos días!\nme preguntaba si restauran vestidos de novia antiguo, quisiera usar el de mi madre pero esta un poco amarillo.\nademas quiero hacerle cambios.\n\nmuchas gracias\n\n','56982005766','2015-02-05 11:40:51'),(26,'Fernanda ','fernanda.daniel.riquelme@gmail.com','Hola! Hace un tiempo llame para pedir cotización y me dijeron que me enviarían un email, que por cierto jamás llego. Aún sigo esperándolo. ATTE, fernanda ','42091896','2015-02-10 05:17:17'),(27,'anabella chuliver','anabellachuliver@gmail.com','hola quisiera pedir cita para probarme algunos vestidos. no se cuando tienen disponibilidad.. muchas gracias','98962868','2015-03-06 21:55:14'),(28,'Melanie','melaniemg@gmail.com','Hola, quisiera saber si confeccionan vestidos de novia y aporro el rango de precios para esto. Tengo una idea de vestido pero estoy buscando quien me lo haga.\n\ngracias\n-- \n   Melanie ','77748602','2015-03-16 00:31:21'),(29,'Barbara Denecken','bdenecken@gmail.com','Hola, quisiera saber los valores aproximados de sus vestidos, además quisiera saber con cuánto tiempo de anticipación tengo que ver en concreto el tema de mi vestido.\n\nDe antemano, muchas gracias.','9916381','2015-03-16 16:31:32'),(30,'pamela','pamela.mellatorres@gmail.com','quisiera una hora para probarme vestidos cual es su horario?','66883432','2015-03-24 13:08:37'),(31,'Orietta Herrera','tita174@outlook.com','Estimadas:\n\nMe caso el 27 de junio, mi vestido de novia es usado y necesita ajuste, es posible agendar con ustedes para arreglo del mismo? me pueden recibir el 18 de abril o es demasiado tarde?\n\nAtentos saludos,\nOrietta\n','90758787','2015-04-03 01:13:48'),(32,'Thea','thea.jasper@gmail.com','Hola,\nNecesito alguíen quíen me podría ayudar con unos pequeños ajustes de mi vestido de novia.  \nPuedo agendar una hora? \n\nMil gracias!\nThea J\nthea.jasper@gmail.com','6599 8371','2015-04-09 13:56:29'),(33,'Lisette Tobar','lisette.tobar@gmail.com','Hola, me caso el 20 de febrero del otro año, estoy en la búsqueda del vestido, pero mi presupuesto es reducido, máximo $250.000.- Sé que ustedes diseñan vestidos, yo tengo una idea de lo que quiero, de hecho estoy viendo si es que quizás lo importo... pero en eso estoy...creen que es posible diseñar un vestido por ese precio? Quedo atenta a su respuesta. Muchas gracias.','76068692','2015-04-14 14:14:03');
/*!40000 ALTER TABLE `nov_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_domicilio`
--

DROP TABLE IF EXISTS `nov_domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_domicilio` (
  `id_domicilio` int(11) NOT NULL AUTO_INCREMENT,
  `domicilio` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `domicilio2` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `id_comuna` int(11) DEFAULT NULL,
  `id_region` int(11) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `villa` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id_domicilio`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_domicilio`
--

LOCK TABLES `nov_domicilio` WRITE;
/*!40000 ALTER TABLE `nov_domicilio` DISABLE KEYS */;
INSERT INTO `nov_domicilio` VALUES (0,'','','',NULL,NULL,NULL,NULL,12690827),(18,'q','30','w',NULL,NULL,NULL,NULL,16458987),(17,'o','9','o',NULL,NULL,NULL,NULL,12345687),(16,'j','j8','8',NULL,NULL,NULL,NULL,13291164),(15,'p','p','p',NULL,NULL,NULL,NULL,17032910),(19,'h','h','8',NULL,NULL,NULL,NULL,15452151),(20,'q','2','w',NULL,NULL,NULL,NULL,14194805),(21,'a','2','s',NULL,NULL,NULL,NULL,16839821),(22,'q','2','q',NULL,NULL,NULL,NULL,12748393),(23,'gg','7','jj',NULL,NULL,NULL,NULL,16876141),(24,'q','2','q',NULL,NULL,NULL,NULL,15949399),(25,'q','2','1',NULL,NULL,NULL,NULL,16373829),(26,'A','2','s',NULL,NULL,NULL,NULL,9917966),(27,'a','2','a',NULL,NULL,NULL,NULL,5029175),(28,'a','2','a',NULL,NULL,NULL,NULL,13932977),(29,'a','2','a',NULL,NULL,NULL,NULL,15821390),(30,'Q','2','Q',NULL,NULL,NULL,NULL,21160236),(31,'nnn','654','bbbb',NULL,NULL,NULL,NULL,0),(32,'nn','22','df',NULL,NULL,NULL,NULL,16345786),(33,'A','2','A',NULL,NULL,NULL,NULL,6363554),(34,'nn','78','hjh',NULL,NULL,NULL,NULL,17490986),(35,'hh','jj','h67',NULL,NULL,NULL,NULL,16144660),(36,'MM','88','77',NULL,NULL,NULL,NULL,17617401),(37,'default','default','default',NULL,NULL,NULL,NULL,1),(38,'default','default','default',NULL,NULL,NULL,NULL,16532530);
/*!40000 ALTER TABLE `nov_domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_factura_prov`
--

DROP TABLE IF EXISTS `nov_factura_prov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_factura_prov` (
  `id_factura_prov` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_add` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fecha add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nro_factura` int(11) NOT NULL,
  `rut` int(11) NOT NULL,
  `fecha_emision` date NOT NULL,
  `tipo_factura` int(11) NOT NULL,
  `neto` int(11) NOT NULL,
  `iva` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`id_factura_prov`),
  KEY `fk_id_proveedor` (`rut`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_factura_prov`
--

LOCK TABLES `nov_factura_prov` WRITE;
/*!40000 ALTER TABLE `nov_factura_prov` DISABLE KEYS */;
INSERT INTO `nov_factura_prov` VALUES (3,'144587820','2014-11-10 03:56:14',237,76370927,'2014-10-13',2,16000,3040,19040),(4,'144587820','2014-11-10 03:59:31',490032,84216700,'2014-10-21',2,5193,987,6180),(5,'144587820','2014-11-10 04:03:21',8311009,96671750,'2014-10-22',1,44882,8528,53410),(6,'144587820','2014-11-10 04:05:27',1304,76233613,'2014-10-21',1,58000,11020,69020),(7,'163036452','2014-11-10 04:13:51',1427960,60910000,'2014-10-20',1,8361,1589,9950),(8,'144587820','2014-11-11 22:47:10',273,76370927,'2014-11-10',2,14000,2660,16660),(9,'144587820','2014-12-03 01:40:01',108638,76164260,'2014-11-22',2,60190,11436,71626),(10,'144587820','2014-12-03 01:48:38',13634,11847181,'2014-11-22',1,24590,4672,29262),(11,'144587820','2014-12-05 19:11:38',3514,76903580,'2014-12-05',2,36975,8025,44000),(12,'144587820','2014-12-05 19:14:12',236750,85973300,'2014-12-05',2,3270,522,3270),(13,'144587820','2014-12-05 19:16:10',13971,5270947,'2014-12-05',2,268908,51092,320000),(14,'144587820','2014-12-05 19:18:17',6861,76008815,'2014-12-05',2,7798,1482,9280),(15,'144587820','2014-12-05 19:18:18',6861,76008815,'2014-12-05',2,7798,1482,9280);
/*!40000 ALTER TABLE `nov_factura_prov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_feria`
--

DROP TABLE IF EXISTS `nov_feria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_feria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inscripcion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nombre_novia` varchar(4000) COLLATE utf8_spanish_ci NOT NULL,
  `celular` varchar(4000) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(4000) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_matrimonio` varchar(4000) COLLATE utf8_spanish_ci NOT NULL,
  `obs` varchar(4000) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_feria`
--

LOCK TABLES `nov_feria` WRITE;
/*!40000 ALTER TABLE `nov_feria` DISABLE KEYS */;
INSERT INTO `nov_feria` VALUES (1,'2015-07-18 17:28:43','nombre','555','tedst@fal.com','2015-07-22','obs'),(2,'2015-07-18 17:30:55','tedt2','3241','test2@asd.com','2015-07-21','tetde'),(3,'2015-07-18 17:31:51','tedt2','3241','test2@asd.com','2015-07-21','tetde'),(4,'2015-07-18 17:33:36','test','test','test2@asd.com','2015-07-22','test');
/*!40000 ALTER TABLE `nov_feria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_gastos_fijos`
--

DROP TABLE IF EXISTS `nov_gastos_fijos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_gastos_fijos` (
  `id_gastos_fijos` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_gastos_fijos`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_gastos_fijos`
--

LOCK TABLES `nov_gastos_fijos` WRITE;
/*!40000 ALTER TABLE `nov_gastos_fijos` DISABLE KEYS */;
INSERT INTO `nov_gastos_fijos` VALUES (5,'arriendo','2016-01-25 01:43:00'),(4,'sueldo1','2016-01-25 01:43:24'),(6,'tedt','2016-02-01 02:08:14');
/*!40000 ALTER TABLE `nov_gastos_fijos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_gastos_fijos_mes`
--

DROP TABLE IF EXISTS `nov_gastos_fijos_mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_gastos_fijos_mes` (
  `id_nov_gastos_fijos_mes` int(11) NOT NULL AUTO_INCREMENT,
  `id_nov_gastos_fijos` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `fecha_gasto` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_nov_gastos_fijos_mes`),
  KEY `fk_id_gastos_fijos` (`id_nov_gastos_fijos`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_gastos_fijos_mes`
--

LOCK TABLES `nov_gastos_fijos_mes` WRITE;
/*!40000 ALTER TABLE `nov_gastos_fijos_mes` DISABLE KEYS */;
INSERT INTO `nov_gastos_fijos_mes` VALUES (2,4,300000,'2016-01-24 04:00:24'),(3,5,300000,'2016-01-18 04:00:24'),(4,6,34444,'2016-02-01 04:00:24');
/*!40000 ALTER TABLE `nov_gastos_fijos_mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_gastos_variables`
--

DROP TABLE IF EXISTS `nov_gastos_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_gastos_variables` (
  `id_nov_gastos_variables` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `monto` int(11) NOT NULL,
  `fecha_gasto` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_nov_gastos_variables`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_gastos_variables`
--

LOCK TABLES `nov_gastos_variables` WRITE;
/*!40000 ALTER TABLE `nov_gastos_variables` DISABLE KEYS */;
INSERT INTO `nov_gastos_variables` VALUES (1,'compra candado',20000,'2016-01-12 04:00:24'),(2,'0',200000,'2016-01-25 01:20:00'),(3,'tedt',44444,'2016-02-01 04:00:24');
/*!40000 ALTER TABLE `nov_gastos_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_info_pago`
--

DROP TABLE IF EXISTS `nov_info_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_info_pago` (
  `id_venta` int(11) NOT NULL,
  `tipo_venta` int(11) NOT NULL,
  `modelo` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `origen` int(11) NOT NULL,
  `color` int(11) NOT NULL,
  `tipo_pago` int(11) NOT NULL,
  `observacion_pago` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `abono` int(11) NOT NULL,
  `monto_total` int(11) NOT NULL,
  `boleta` int(11) NOT NULL,
  `id_info_pago` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_pago` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_info_pago`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_info_pago`
--

LOCK TABLES `nov_info_pago` WRITE;
/*!40000 ALTER TABLE `nov_info_pago` DISABLE KEYS */;
INSERT INTO `nov_info_pago` VALUES (1,1,'CE',1,1,4,'Cheque por el 50% numero 3406115 siguiente pago cuando llegue vestido',0,0,2,2,'2014-11-03 04:07:30'),(20,1,'lirio',2,1,2,'total pagado',370000,370000,5,24,'2014-11-25 20:17:19'),(22,6,'especial',1,1,2,'60%',35000,65000,6,25,'2014-11-25 20:42:44'),(21,2,'Confeccion Especial',2,3,2,'Pago de 60%',66000,110000,0,26,'2014-11-25 20:50:41'),(23,6,'',1,1,2,'pendiente 30.000',20000,50000,7,27,'2014-11-25 20:57:32'),(25,2,'Confeccion especial',2,3,2,'pago 60%',66000,110000,15,28,'2014-11-25 20:59:38'),(27,1,'Confeccion especial',2,1,2,'pago 60%',120000,200000,16,29,'2014-11-25 21:07:56'),(28,1,'Confeccion especial',2,1,2,'pago 50%',150000,300000,4,30,'2014-11-25 21:11:28'),(29,2,'Confeccion especial',2,3,2,'Abono 60%',60000,90000,8,31,'2014-11-25 21:19:16'),(30,2,'Confeccion especial',2,3,2,'pago 60%',54000,90000,17,32,'2014-11-25 21:26:02'),(31,2,'Confeccion especial',2,3,2,'pago 60%',54000,80000,18,33,'2014-11-25 21:29:52'),(33,6,'',1,1,1,'efectivo',50000,50000,7,34,'2014-11-28 23:05:51'),(34,1,'CE',1,1,2,'28-11-2014',160000,260000,20,35,'2014-11-28 23:18:15'),(35,1,'loreto',2,2,2,'',200000,400000,21,36,'2014-11-28 23:41:43'),(36,1,'',1,1,1,'',0,0,0,37,'2014-11-28 23:52:17'),(37,2,'ce',2,3,2,'560000',336000,560000,3,38,'2014-11-29 00:08:03'),(38,2,'ce',2,3,2,'60%',336000,560000,3,39,'2014-11-29 00:16:58'),(39,2,'ce',2,3,2,'60%',336000,560000,3,40,'2014-11-29 00:20:31'),(40,2,'ce',2,3,2,'60%',336000,560000,3,41,'2014-11-29 00:24:20'),(41,2,'ce',2,3,2,'60%',336000,560000,3,42,'2014-11-29 00:28:57'),(42,1,'ce',2,1,2,'60%',228000,380000,12,43,'2014-11-29 00:36:14'),(51,6,'default',0,0,3,'efectivo',100000,100000,987,44,'2016-01-15 21:51:29'),(52,7,'default',0,0,5,'todo ok',50000,50000,230,45,'2016-01-15 21:53:16'),(54,6,'default',0,0,6,'TEST',1000000,1000000,231,46,'2016-01-15 21:57:15');
/*!40000 ALTER TABLE `nov_info_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_log_login`
--

DROP TABLE IF EXISTS `nov_log_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_log_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rut` int(11) NOT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=343 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_log_login`
--

LOCK TABLES `nov_log_login` WRITE;
/*!40000 ALTER TABLE `nov_log_login` DISABLE KEYS */;
INSERT INTO `nov_log_login` VALUES (1,14458782,'2014-08-26 02:24:36'),(2,14458782,'2014-08-26 02:24:36'),(3,144587820,'2014-08-26 02:25:09'),(4,144587820,'2014-08-26 02:25:09'),(5,144587820,'2014-08-26 02:25:09'),(6,163036452,'2014-08-28 23:45:01'),(7,163036452,'2014-08-28 23:45:01'),(8,163036452,'2014-08-28 23:45:01'),(9,163036452,'2014-08-29 18:04:04'),(10,163036452,'2014-08-29 18:04:04'),(11,163036452,'2014-08-29 18:04:04'),(12,144587820,'2014-09-02 04:09:49'),(13,144587820,'2014-09-02 04:09:49'),(14,144587820,'2014-09-02 04:09:49'),(15,144587820,'2014-09-02 04:19:31'),(16,144587820,'2014-09-02 04:19:31'),(17,144587820,'2014-09-02 04:19:31'),(18,144587820,'2014-09-02 04:50:31'),(19,144587820,'2014-09-02 04:50:31'),(20,144587820,'2014-09-02 04:50:31'),(21,144587820,'2014-09-02 04:57:22'),(22,144587820,'2014-09-02 04:57:22'),(23,144587820,'2014-09-02 04:57:22'),(24,14458782,'2014-09-11 04:07:48'),(25,14458782,'2014-09-11 04:07:48'),(26,144587820,'2014-09-11 04:08:18'),(27,144587820,'2014-09-11 04:08:18'),(28,144587820,'2014-09-11 04:08:18'),(29,144587820,'2014-09-11 04:25:47'),(30,144587820,'2014-09-11 04:25:47'),(31,144587820,'2014-09-11 04:25:47'),(32,163036452,'2014-09-11 04:39:12'),(33,163036452,'2014-09-11 04:39:12'),(34,163036452,'2014-09-11 04:39:12'),(35,14458782,'2014-11-02 01:33:42'),(36,14458782,'2014-11-02 01:33:42'),(37,144587820,'2014-11-02 01:34:08'),(38,144587820,'2014-11-02 01:34:08'),(39,144587820,'2014-11-02 01:34:08'),(40,144587820,'2014-11-02 02:14:36'),(41,144587820,'2014-11-02 02:14:36'),(42,144587820,'2014-11-02 02:14:36'),(43,14458,'2014-11-02 02:21:31'),(44,144587820,'2014-11-02 02:21:50'),(45,144587820,'2014-11-02 02:21:50'),(46,144587820,'2014-11-02 02:21:50'),(47,144587820,'2014-11-02 02:26:00'),(48,144587820,'2014-11-02 02:26:00'),(49,144587820,'2014-11-02 02:26:00'),(50,144587820,'2014-11-02 02:27:47'),(51,144587820,'2014-11-02 02:27:47'),(52,144587820,'2014-11-02 02:27:47'),(53,144587820,'2014-11-02 02:28:07'),(54,144587820,'2014-11-02 02:28:07'),(55,144587820,'2014-11-02 02:28:07'),(56,144587820,'2014-11-02 02:31:13'),(57,144587820,'2014-11-02 02:31:13'),(58,144587820,'2014-11-02 02:31:13'),(59,144587820,'2014-11-03 03:35:20'),(60,144587820,'2014-11-03 03:35:20'),(61,144587820,'2014-11-03 03:35:20'),(62,161446602,'2014-11-03 03:55:07'),(63,161446602,'2014-11-03 03:55:07'),(64,161446602,'2014-11-03 03:55:07'),(65,161446602,'2014-11-03 04:03:34'),(66,161446602,'2014-11-03 04:03:34'),(67,161446602,'2014-11-03 04:03:34'),(68,161446602,'2014-11-03 04:07:35'),(69,161446602,'2014-11-03 04:07:35'),(70,161446602,'2014-11-03 04:07:35'),(71,144587820,'2014-11-05 04:12:54'),(72,144587820,'2014-11-05 04:12:54'),(73,144587820,'2014-11-05 04:12:54'),(74,161446602,'2014-11-06 19:40:25'),(75,161446602,'2014-11-06 19:40:25'),(76,161446602,'2014-11-06 19:40:25'),(77,161446602,'2014-11-07 02:24:45'),(78,161446602,'2014-11-07 02:24:45'),(79,161446602,'2014-11-07 02:24:45'),(80,16303645,'2014-11-07 02:24:58'),(81,163036452,'2014-11-07 02:25:08'),(82,163036452,'2014-11-07 02:25:08'),(83,163036452,'2014-11-07 02:25:08'),(84,163036452,'2014-11-07 02:27:33'),(85,163036452,'2014-11-07 02:27:33'),(86,163036452,'2014-11-07 02:27:33'),(87,163036452,'2014-11-07 02:31:56'),(88,163036452,'2014-11-07 02:31:56'),(89,163036452,'2014-11-07 02:31:56'),(90,144587820,'2014-11-07 02:46:20'),(91,144587820,'2014-11-07 02:46:20'),(92,144587820,'2014-11-07 02:46:20'),(93,144587820,'2014-11-07 02:52:22'),(94,144587820,'2014-11-07 02:52:22'),(95,144587820,'2014-11-07 02:52:22'),(96,163036452,'2014-11-07 02:56:18'),(97,163036452,'2014-11-07 02:56:18'),(98,163036452,'2014-11-07 02:56:18'),(99,144587820,'2014-11-10 03:53:05'),(100,144587820,'2014-11-10 03:53:05'),(101,144587820,'2014-11-10 03:53:05'),(102,163036452,'2014-11-10 04:09:17'),(103,163036452,'2014-11-10 04:09:17'),(104,163036452,'2014-11-10 04:09:17'),(105,144587820,'2014-11-10 04:14:16'),(106,144587820,'2014-11-10 04:14:16'),(107,144587820,'2014-11-10 04:14:16'),(108,144587820,'2014-11-11 22:43:51'),(109,144587820,'2014-11-11 22:43:51'),(110,144587820,'2014-11-11 22:43:51'),(111,161446602,'2014-11-14 02:31:37'),(112,161446602,'2014-11-14 02:31:37'),(113,161446602,'2014-11-14 02:31:37'),(114,163036452,'2014-11-14 02:58:20'),(115,163036452,'2014-11-14 02:58:20'),(116,163036452,'2014-11-14 02:58:20'),(117,144587820,'2014-11-14 05:17:20'),(118,144587820,'2014-11-14 05:17:20'),(119,144587820,'2014-11-14 05:17:20'),(120,163036452,'2014-11-19 17:07:26'),(121,163036452,'2014-11-19 17:07:26'),(122,163036452,'2014-11-19 17:07:26'),(123,161446602,'2014-11-25 19:37:05'),(124,163036452,'2014-11-25 19:37:13'),(125,163036452,'2014-11-25 19:37:13'),(126,163036452,'2014-11-25 19:37:13'),(127,161446602,'2014-11-25 19:37:24'),(128,161446602,'2014-11-25 19:37:24'),(129,161446602,'2014-11-25 19:37:24'),(130,163036452,'2014-11-25 20:53:53'),(131,163036452,'2014-11-25 20:53:53'),(132,163036452,'2014-11-25 20:53:53'),(133,163036452,'2014-11-25 20:55:31'),(134,163036452,'2014-11-25 20:55:31'),(135,163036452,'2014-11-25 20:55:31'),(136,16144,'2014-11-27 14:24:15'),(137,16144,'2014-11-27 14:24:30'),(138,161446602,'2014-11-27 14:24:46'),(139,161446602,'2014-11-27 14:24:46'),(140,161446602,'2014-11-27 14:24:46'),(141,161446602,'2014-11-28 22:53:40'),(142,161446602,'2014-11-28 22:53:40'),(143,161446602,'2014-11-28 22:53:40'),(144,144587820,'2014-12-03 01:17:59'),(145,144587820,'2014-12-03 01:17:59'),(146,144587820,'2014-12-03 01:17:59'),(147,144587820,'2014-12-03 01:40:11'),(148,144587820,'2014-12-03 01:40:11'),(149,144587820,'2014-12-03 01:40:11'),(150,144587820,'2014-12-05 19:09:13'),(151,144587820,'2014-12-05 19:09:13'),(152,144587820,'2014-12-05 19:09:13'),(153,144587820,'2014-12-05 19:11:44'),(154,144587820,'2014-12-05 19:11:44'),(155,144587820,'2014-12-05 19:11:44'),(156,144587820,'2014-12-05 19:14:16'),(157,144587820,'2014-12-05 19:14:16'),(158,144587820,'2014-12-05 19:14:16'),(159,144587820,'2014-12-05 19:16:20'),(160,144587820,'2014-12-05 19:16:20'),(161,144587820,'2014-12-05 19:16:20'),(162,16144,'2014-12-15 22:21:19'),(163,161446602,'2014-12-16 01:27:55'),(164,161446602,'2014-12-16 01:27:55'),(165,161446602,'2014-12-16 01:27:55'),(166,161446602,'2014-12-16 01:28:37'),(167,161446602,'2014-12-16 01:28:37'),(168,161446602,'2014-12-16 01:28:37'),(169,161446602,'2015-01-17 02:20:15'),(170,161446602,'2015-01-17 02:20:26'),(171,161446602,'2015-01-17 02:20:26'),(172,161446602,'2015-01-17 02:20:26'),(173,161446602,'2015-01-18 17:29:22'),(174,16144,'2015-01-18 17:29:40'),(175,161446602,'2015-01-18 17:30:47'),(176,161446602,'2015-01-18 17:30:47'),(177,161446602,'2015-01-18 17:30:47'),(178,161446602,'2015-01-18 17:33:16'),(179,161446602,'2015-01-18 17:33:16'),(180,161446602,'2015-01-18 17:33:16'),(181,161446602,'2015-01-19 15:39:45'),(182,161446602,'2015-01-19 15:39:45'),(183,161446602,'2015-01-19 15:39:45'),(184,161446602,'2015-01-20 14:22:00'),(185,161446602,'2015-01-20 14:22:00'),(186,161446602,'2015-01-20 14:22:00'),(187,161446602,'2015-01-20 14:22:46'),(188,161446602,'2015-01-20 14:22:46'),(189,161446602,'2015-01-20 14:22:46'),(190,161446602,'2015-01-20 14:23:06'),(191,161446602,'2015-01-20 14:23:06'),(192,161446602,'2015-01-20 14:23:06'),(193,144587820,'2015-07-18 15:02:49'),(194,144587820,'2015-07-18 15:02:50'),(195,144587820,'2015-07-18 15:02:50'),(196,144587820,'2015-07-18 15:04:58'),(197,144587820,'2015-07-18 15:04:58'),(198,144587820,'2015-07-18 15:04:58'),(199,144587820,'2015-07-18 15:05:43'),(200,144587820,'2015-07-18 15:05:43'),(201,144587820,'2015-07-18 15:05:43'),(202,144587820,'2015-07-18 17:30:27'),(203,144587820,'2015-07-18 17:30:27'),(204,144587820,'2015-07-18 17:30:27'),(205,144587820,'2015-07-18 17:33:18'),(206,144587820,'2015-07-18 17:33:18'),(207,144587820,'2015-07-18 17:33:18'),(208,144587820,'2015-07-18 17:43:16'),(209,144587820,'2015-07-18 17:43:16'),(210,144587820,'2015-07-18 17:43:16'),(211,144587820,'2016-01-15 17:04:41'),(212,144587820,'2016-01-15 17:04:41'),(213,144587820,'2016-01-15 17:04:41'),(214,144587820,'2016-01-15 17:07:33'),(215,144587820,'2016-01-15 17:07:33'),(216,144587820,'2016-01-15 17:07:33'),(217,144587820,'2016-01-15 17:10:22'),(218,144587820,'2016-01-15 17:10:22'),(219,144587820,'2016-01-15 17:10:22'),(220,144587820,'2016-01-15 17:14:00'),(221,144587820,'2016-01-15 17:14:00'),(222,144587820,'2016-01-15 17:14:00'),(223,144587820,'2016-01-15 17:15:11'),(224,144587820,'2016-01-15 17:15:11'),(225,144587820,'2016-01-15 17:15:11'),(226,144587820,'2016-01-15 18:10:27'),(227,144587820,'2016-01-15 18:10:27'),(228,144587820,'2016-01-15 18:10:27'),(229,144587820,'2016-01-15 22:06:25'),(230,144587820,'2016-01-15 22:06:25'),(231,144587820,'2016-01-15 22:06:25'),(232,144587820,'2016-01-15 22:13:15'),(233,144587820,'2016-01-15 22:13:15'),(234,144587820,'2016-01-15 22:13:15'),(235,144587820,'2016-01-15 22:13:31'),(236,144587820,'2016-01-15 22:13:31'),(237,144587820,'2016-01-15 22:13:31'),(238,144587820,'2016-01-15 22:13:39'),(239,144587820,'2016-01-15 22:13:39'),(240,144587820,'2016-01-15 22:13:39'),(241,144587820,'2016-01-15 22:13:48'),(242,144587820,'2016-01-15 22:13:48'),(243,144587820,'2016-01-15 22:13:48'),(244,144587820,'2016-01-15 22:14:04'),(245,144587820,'2016-01-15 22:14:04'),(246,144587820,'2016-01-15 22:14:04'),(247,144587820,'2016-01-15 22:14:11'),(248,144587820,'2016-01-15 22:14:11'),(249,144587820,'2016-01-15 22:14:11'),(250,144587820,'2016-01-15 22:14:15'),(251,144587820,'2016-01-15 22:14:15'),(252,144587820,'2016-01-15 22:14:15'),(253,144587820,'2016-01-15 22:19:10'),(254,144587820,'2016-01-15 22:19:10'),(255,144587820,'2016-01-15 22:19:10'),(256,163036452,'2016-01-15 22:19:40'),(257,163036452,'2016-01-15 22:19:46'),(258,144587820,'2016-01-15 22:19:48'),(259,144587820,'2016-01-15 22:19:48'),(260,144587820,'2016-01-15 22:19:48'),(261,144587820,'2016-01-15 22:24:58'),(262,144587820,'2016-01-15 22:24:58'),(263,144587820,'2016-01-15 22:24:58'),(264,144587820,'2016-01-15 22:25:28'),(265,144587820,'2016-01-15 22:25:28'),(266,144587820,'2016-01-15 22:25:28'),(267,144587820,'2016-01-15 22:28:34'),(268,144587820,'2016-01-15 22:28:34'),(269,144587820,'2016-01-15 22:28:34'),(270,144587820,'2016-01-15 22:28:40'),(271,144587820,'2016-01-15 22:28:40'),(272,144587820,'2016-01-15 22:28:40'),(273,144587820,'2016-01-15 22:47:03'),(274,144587820,'2016-01-15 22:47:03'),(275,144587820,'2016-01-15 22:47:03'),(276,144587820,'2016-01-16 14:36:30'),(277,144587820,'2016-01-16 14:36:30'),(278,144587820,'2016-01-16 14:36:30'),(279,144587820,'2016-01-18 01:54:25'),(280,144587820,'2016-01-18 01:54:25'),(281,144587820,'2016-01-18 01:54:25'),(282,175982132,'2016-01-18 03:20:29'),(283,144587820,'2016-01-18 03:22:47'),(284,144587820,'2016-01-18 03:22:47'),(285,144587820,'2016-01-18 03:22:47'),(286,144587820,'2016-01-18 03:23:17'),(287,144587820,'2016-01-18 03:23:17'),(288,144587820,'2016-01-18 03:23:17'),(289,144587820,'2016-01-18 03:24:04'),(290,144587820,'2016-01-18 03:24:04'),(291,144587820,'2016-01-18 03:24:04'),(292,144587820,'2016-01-18 03:25:53'),(293,144587820,'2016-01-18 03:25:53'),(294,144587820,'2016-01-18 03:25:53'),(295,144587820,'2016-01-18 03:26:23'),(296,144587820,'2016-01-18 03:26:23'),(297,144587820,'2016-01-18 03:26:23'),(298,144587820,'2016-01-19 02:22:39'),(299,144587820,'2016-01-19 02:22:39'),(300,144587820,'2016-01-19 02:22:39'),(301,144587820,'2016-01-19 02:37:43'),(302,144587820,'2016-01-19 02:37:47'),(303,144587820,'2016-01-19 02:37:47'),(304,144587820,'2016-01-19 02:37:47'),(305,144587820,'2016-01-24 19:23:46'),(306,144587820,'2016-01-24 19:23:48'),(307,144587820,'2016-01-24 19:23:50'),(308,144587820,'2016-01-24 19:24:14'),(309,144587820,'2016-01-24 19:24:19'),(310,144587820,'2016-01-24 19:24:19'),(311,144587820,'2016-01-24 19:24:19'),(312,144587820,'2016-01-24 19:24:46'),(313,144587820,'2016-01-24 19:24:46'),(314,144587820,'2016-01-24 19:24:46'),(315,144587820,'2016-01-24 22:27:44'),(316,144587820,'2016-01-24 22:27:44'),(317,144587820,'2016-01-24 22:27:44'),(318,144587820,'2016-02-01 02:06:17'),(319,144587820,'2016-02-01 02:06:18'),(320,144587820,'2016-02-01 02:06:18'),(321,144587820,'2016-03-12 12:55:51'),(322,144587820,'2016-03-12 12:55:51'),(323,144587820,'2016-03-12 12:55:51'),(324,0,'2016-06-06 22:40:54'),(325,144587820,'2016-06-06 22:41:11'),(326,144587820,'2016-06-06 22:41:11'),(327,144587820,'2016-06-06 22:41:11'),(328,144587820,'2016-06-06 22:41:24'),(329,144587820,'2016-06-06 22:41:24'),(330,144587820,'2016-06-06 22:41:24'),(331,144587820,'2016-06-07 03:02:52'),(332,144587820,'2016-06-07 03:02:52'),(333,144587820,'2016-06-07 03:02:52'),(334,144587820,'2016-06-07 03:03:26'),(335,144587820,'2016-06-07 03:03:26'),(336,144587820,'2016-06-07 03:03:26'),(337,144587820,'2016-06-07 03:39:40'),(338,144587820,'2016-06-07 03:39:40'),(339,144587820,'2016-06-07 03:39:40'),(340,144587820,'2016-06-07 21:55:05'),(341,144587820,'2016-06-07 21:55:06'),(342,144587820,'2016-06-07 21:55:06');
/*!40000 ALTER TABLE `nov_log_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_medidas`
--

DROP TABLE IF EXISTS `nov_medidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_medidas` (
  `id_medidas` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) NOT NULL,
  `fecha_medidas` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `busto` int(11) NOT NULL DEFAULT '0',
  `busto_alto` int(11) NOT NULL DEFAULT '0',
  `busto_bajo` int(11) NOT NULL DEFAULT '0',
  `cintura` int(11) NOT NULL DEFAULT '0',
  `cadera_alta` int(11) NOT NULL DEFAULT '0',
  `cadera_baja` int(11) NOT NULL DEFAULT '0',
  `hombro_a_busto` int(11) NOT NULL DEFAULT '0',
  `hombro_a_cintura` int(11) NOT NULL DEFAULT '0',
  `hombro_a_hombro` int(11) NOT NULL DEFAULT '0',
  `cuello_a_ruedo` int(11) NOT NULL DEFAULT '0',
  `contorno_de_hombro` int(11) NOT NULL DEFAULT '0',
  `observaciones_medidas` varchar(4000) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_medidas`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_medidas`
--

LOCK TABLES `nov_medidas` WRITE;
/*!40000 ALTER TABLE `nov_medidas` DISABLE KEYS */;
INSERT INTO `nov_medidas` VALUES (2,1,'2014-11-03 04:07:30',100,98,93,86,89,99,29,37,45,148,50,'Se adjunta boceto vestido. Confeccion especial'),(20,15,'2014-11-14 03:02:41',106,103,95,95,103,106,31,41,45,150,51,'Guiarse por bocetos'),(21,16,'2014-11-14 03:04:31',109,102,96,91,102,113,31,42,47,142,47,'Guiarse por bocetos'),(22,17,'2014-11-14 03:06:45',88,82,76,71,87,99,25,42,38,91,43,'Guiarse por bocetos'),(23,18,'2014-11-14 03:09:30',72,75,70,64,67,77,20,27,39,82,34,'Guiarse por bocetos'),(24,20,'2014-11-25 20:17:19',0,0,0,0,0,0,0,0,0,0,0,''),(25,22,'2014-11-25 20:42:44',0,0,0,0,0,0,0,0,0,0,0,''),(26,21,'2014-11-25 20:50:41',111,105,103,95,106,113,32,43,45,90,44,'Vestido especial tela tornasol'),(27,23,'2014-11-25 20:57:32',0,0,0,0,0,0,0,0,0,0,0,''),(28,25,'2014-11-25 20:59:38',111,105,103,95,106,113,32,43,45,90,44,'Confeccion especial tela tornasol'),(29,27,'2014-11-25 21:07:56',88,82,76,71,87,99,25,42,38,91,43,'eleccion encaje por novia'),(30,28,'2014-11-25 21:11:28',92,88,80,73,81,101,28,41,40,144,40,'Confecion especial Romano'),(31,29,'2014-11-25 21:19:16',112,100,100,98,100,113,36,49,46,145,51,'Confeccion especial tela verde petroleo'),(32,30,'2014-11-25 21:26:02',106,103,95,95,103,106,31,41,45,150,51,'ojo con hombro ya que pedimos mas cm'),(33,31,'2014-11-25 21:29:52',109,102,96,91,102,113,31,42,47,142,47,'Confeccion especial tela verde petroleo'),(34,33,'2014-11-28 23:05:51',0,0,0,0,0,0,0,0,0,0,0,''),(35,34,'2014-11-28 23:18:15',88,88,8,8,8,88,8,88,8,88,8,'8'),(36,35,'2014-11-28 23:41:43',93,86,79,74,90,104,28,42,43,148,44,'semi corazon'),(37,36,'2014-11-28 23:52:17',0,0,0,0,0,0,0,0,0,0,0,''),(38,37,'2014-11-29 00:08:03',96,94,86,84,98,105,27,37,43,145,43,'se adjunta boceto'),(39,38,'2014-11-29 00:16:58',98,93,82,76,90,105,27,40,44,154,43,'se adjunta boceto'),(40,39,'2014-11-29 00:20:31',84,85,78,72,82,89,23,33,38,134,40,'se adjunta boceto'),(41,40,'2014-11-29 00:24:20',105,100,92,86,91,101,28,39,46,148,46,'se adjunta boceto'),(42,41,'2014-11-29 00:28:57',105,100,92,91,102,105,29,43,45,140,50,'se adjunta boceto'),(43,42,'2014-11-29 00:36:14',116,113,105,96,104,112,32,47,44,155,51,'se adjunta boceto'),(44,51,'2016-01-15 21:51:29',0,0,0,0,0,0,0,0,0,0,0,''),(45,52,'2016-01-15 21:53:16',0,0,0,0,0,0,0,0,0,0,0,''),(46,54,'2016-01-15 21:57:15',0,0,0,0,0,0,0,0,0,0,0,'');
/*!40000 ALTER TABLE `nov_medidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_perfil`
--

DROP TABLE IF EXISTS `nov_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_perfil`
--

LOCK TABLES `nov_perfil` WRITE;
/*!40000 ALTER TABLE `nov_perfil` DISABLE KEYS */;
INSERT INTO `nov_perfil` VALUES (1,'ADMINISTRADOR'),(2,'VENDEDOR'),(3,'CLIENTE'),(4,'TALLER'),(5,'FUNDADOR');
/*!40000 ALTER TABLE `nov_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_personal`
--

DROP TABLE IF EXISTS `nov_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_personal` (
  `rut` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `nombre` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `apellidom` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `apellidop` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `numero` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `departamento` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `villa` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` int(11) NOT NULL,
  `region` int(11) NOT NULL,
  `comuna` int(11) NOT NULL,
  `email` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `celular` int(11) NOT NULL,
  `telefonoEmergencia` int(11) NOT NULL,
  `contacto_emergencia` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_inicio_contrato` date NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `password` varchar(4000) COLLATE utf8_spanish_ci NOT NULL,
  `habilitado` int(11) NOT NULL,
  `sueldo_bruto` int(11) NOT NULL,
  PRIMARY KEY (`rut`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_personal`
--

LOCK TABLES `nov_personal` WRITE;
/*!40000 ALTER TABLE `nov_personal` DISABLE KEYS */;
INSERT INTO `nov_personal` VALUES (144587820,5,'Roberto','Wulf','Olmos','Roman Diaz1','3052','12','',1,1,1,'roberto.olmos2@gmail.com',85730507,222222,'test2','2014-06-05','1981-11-29','202cb962ac59075b964b07152d234b70',1,333333),(163036452,5,'Soledad','Cerda','Cortez','Roman Diaz','305','12','providencia',1,13,13123,'solemich@gmail.com',69087726,69087726,'','2014-08-01','1986-08-27','202cb962ac59075b964b07152d234b70',0,333333),(161446602,2,'Natalia','Urbina','Urrejola','Monterrey','2801','','',0,0,0,'natalia_urt4@hotmail.com',64327471,0,'','2014-09-01','1985-06-02','202cb962ac59075b964b07152d234b70',0,333333);
/*!40000 ALTER TABLE `nov_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_producto`
--

DROP TABLE IF EXISTS `nov_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `sku` int(11) NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `habilitado` int(11) NOT NULL,
  `precio_normal` int(11) NOT NULL,
  `precio_oferta` int(11) NOT NULL,
  `color` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `talla` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fecha_actualizacion` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `precio_costo` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`,`sku`),
  KEY `sku` (`sku`),
  KEY `id_producto` (`id_producto`,`sku`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_producto`
--

LOCK TABLES `nov_producto` WRITE;
/*!40000 ALTER TABLE `nov_producto` DISABLE KEYS */;
INSERT INTO `nov_producto` VALUES (3,20141011,'N01',1,550000,440000,'2','2','2014-09-11 04:40:50','2014-09-11 04:40:50',300000),(4,20141012,'N02',1,650000,520000,'2','2','2014-09-11 04:41:43','2014-09-11 04:41:43',300000);
/*!40000 ALTER TABLE `nov_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_proveedor_descripcion`
--

DROP TABLE IF EXISTS `nov_proveedor_descripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_proveedor_descripcion` (
  `rut` int(11) NOT NULL,
  `dv` int(11) NOT NULL,
  `nombre_proveedor` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `giro` varchar(4000) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `numero` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccion2` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`rut`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_proveedor_descripcion`
--

LOCK TABLES `nov_proveedor_descripcion` WRITE;
/*!40000 ALTER TABLE `nov_proveedor_descripcion` DISABLE KEYS */;
INSERT INTO `nov_proveedor_descripcion` VALUES (5270947,4,'Oscar Enrique Cardenas Mercado','Compra y venta de máquinas de coser','rosas','1168','Santiago Centro','26956452','ococardenasm@gmail.com',''),(11847181,4,'Alvaro Facusse Soto','Importación y distribución de productos Textiles','davila baeza','1007','Independencia','227772910','ventasparentelas@hotmail.cl',''),(60910000,1,'Nic Chile','Corporación Educacional y Servicios   Profesionales','Miraflores ','222 ','Piso 14','29407700','info@nic.cl','www.nic.cl'),(76008815,3,'Avendaño y Patiño LTDA','Paqueteria y articulos de sastreria','rosas','1192','Santiago Centro','26727257','jesara1192@hotmail.com',''),(76164260,0,'Textil La Emiliana LTDA','Compra Venta de Géneros','Independencia','480','Independencia','27353018','',''),(76233613,8,'fabricacion de mobiliario','fabrica de percheros, muebles ventas de maniquies','paraguay','2016','san ramon','25263499','ventas@percherosmetalicos.cl','www.percherosmetalicos.cl'),(76370927,2,'Publigrafica Express ltda','Servicios de impresion, servicios fotocopias','avenida providencia','2169','local 71 providencia','23333289','publigraficaexpress@gmail.com',''),(76903580,0,'Agusto Montalva Hanisch EIRL','Comercializadora de prendas de vestir','Rosas','1166','','26985980','','cordoneriaqimon.cl'),(84216700,0,'Comercial halabi SPA','Paqueteria y similares','Rosas','1069-1071','Santiago Centro','26986522','comercialhalabi@hotmail.com','www.comercialhalabi.cl'),(85973300,0,'Comercial Suez Catan LTDA','Productos de paqueteria, cordoneria, bazar','rosas','1180','Santiago Centro','26873336','casasuez@hilos.cl',''),(96671750,5,'EASY S.A','Articulos para el hogar, materiasles de construccion, ferreteria','Avenida Andres Bello','2447','local 100 - Providencia','','','www.easy.cl');
/*!40000 ALTER TABLE `nov_proveedor_descripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_stock`
--

DROP TABLE IF EXISTS `nov_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_stock` (
  `id_stock` int(11) NOT NULL AUTO_INCREMENT,
  `id_local` int(11) NOT NULL,
  `sku` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id_stock`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_stock`
--

LOCK TABLES `nov_stock` WRITE;
/*!40000 ALTER TABLE `nov_stock` DISABLE KEYS */;
INSERT INTO `nov_stock` VALUES (1,100,20131012,0),(2,100,20131013,0),(3,100,20131014,0),(4,100,20131015,0),(5,100,20121011,0),(6,100,20121012,0),(7,100,20141011,0),(8,100,20141012,0);
/*!40000 ALTER TABLE `nov_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nov_venta`
--

DROP TABLE IF EXISTS `nov_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nov_venta` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo_venta` int(11) NOT NULL,
  `fecha_matrimonio` date NOT NULL,
  `fecha_primera_prueba` date NOT NULL,
  `estado` int(11) NOT NULL COMMENT 'estado de la venta',
  PRIMARY KEY (`id_venta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nov_venta`
--

LOCK TABLES `nov_venta` WRITE;
/*!40000 ALTER TABLE `nov_venta` DISABLE KEYS */;
INSERT INTO `nov_venta` VALUES (1,12690827,161446602,'2014-11-03 04:03:42',1,'2015-03-28','2014-12-15',0),(20,0,161446602,'2014-11-25 19:37:38',1,'2015-02-28','2015-01-05',0),(21,6363554,163036452,'2014-11-25 19:57:49',2,'0000-00-00','0000-00-00',0),(22,16345786,0,'2014-11-25 20:35:31',6,'2015-01-12','2014-12-10',0),(23,17490986,0,'2014-11-25 20:43:20',6,'2014-11-07','2014-11-20',0),(24,NULL,NULL,'2014-11-25 20:53:56',0,'0000-00-00','0000-00-00',0),(25,6363554,163036452,'2014-11-25 20:55:35',2,'2015-02-15','2014-12-20',0),(26,NULL,NULL,'2014-11-25 20:57:48',0,'0000-00-00','0000-00-00',0),(27,15821390,0,'2014-11-25 20:59:47',1,'2015-02-15','2014-12-20',0),(28,16839821,0,'2014-11-25 21:07:59',1,'2015-03-28','2015-01-05',0),(29,9917966,0,'2014-11-25 21:14:00',2,'2015-02-14','2014-12-20',0),(30,5029175,0,'2014-11-25 21:19:18',2,'2014-11-25','2014-11-25',0),(31,13932977,0,'2014-11-25 21:26:13',2,'2015-02-14','2014-12-20',0),(32,NULL,NULL,'2014-11-27 14:26:00',0,'0000-00-00','0000-00-00',0),(33,16144660,161446602,'2014-11-28 22:54:00',6,'2014-11-29','2014-11-27',0),(34,17617401,0,'2014-11-28 23:13:41',1,'2015-02-02','2015-01-02',0),(35,16144660,0,'2014-11-28 23:18:41',1,'2015-03-28','2014-12-24',0),(36,16876141,0,'2014-11-28 23:44:59',1,'2014-11-28','2014-11-28',0),(37,13291164,0,'2014-11-29 00:02:11',2,'2015-02-14','2014-12-20',0),(38,16144660,0,'2014-11-29 00:13:07',2,'2015-02-14','2014-12-20',0),(39,15452151,0,'2014-11-29 00:17:20',2,'2015-02-14','2014-12-20',0),(40,16144660,0,'2014-11-29 00:20:53',2,'2015-02-14','2014-12-20',0),(41,16144660,0,'2014-11-29 00:24:46',2,'2015-02-14','2014-12-20',0),(42,16144660,0,'2014-11-29 00:32:16',1,'2015-02-07','2014-12-25',0),(43,NULL,NULL,'2014-11-29 00:36:46',0,'0000-00-00','0000-00-00',0),(44,NULL,NULL,'2014-11-29 00:37:43',0,'0000-00-00','0000-00-00',0),(45,NULL,NULL,'2014-11-29 00:37:47',0,'0000-00-00','0000-00-00',0),(46,NULL,NULL,'2016-01-15 20:13:04',0,'0000-00-00','0000-00-00',0),(47,NULL,NULL,'2016-01-15 20:14:25',0,'0000-00-00','0000-00-00',0),(48,NULL,NULL,'2016-01-15 20:15:01',0,'0000-00-00','0000-00-00',0),(49,NULL,NULL,'2016-01-15 20:15:13',0,'0000-00-00','0000-00-00',0),(50,NULL,NULL,'2016-01-15 20:15:19',0,'0000-00-00','0000-00-00',0),(51,1,144587820,'2016-01-15 21:41:49',6,'2016-01-31','2016-01-29',1),(52,16532530,0,'2016-01-15 21:51:48',7,'2016-01-31','2016-01-22',1),(53,NULL,NULL,'2016-01-15 21:53:40',0,'0000-00-00','0000-00-00',0),(54,16532530,144587820,'2016-01-15 21:56:04',6,'2016-01-26','2016-01-22',1),(55,NULL,NULL,'2016-01-15 22:13:18',0,'0000-00-00','0000-00-00',0),(56,NULL,NULL,'2016-01-15 22:14:17',0,'0000-00-00','0000-00-00',0),(57,NULL,NULL,'2016-01-15 22:25:00',0,'0000-00-00','0000-00-00',0),(58,NULL,NULL,'2016-01-18 02:20:02',0,'0000-00-00','0000-00-00',0),(59,NULL,NULL,'2016-01-24 23:39:48',0,'0000-00-00','0000-00-00',0);
/*!40000 ALTER TABLE `nov_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'todas_novias'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-14 21:32:56
