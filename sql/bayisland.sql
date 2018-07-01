/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : bayisland4

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 03/04/2018 22:19:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Tittle` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Url` varchar(255) DEFAULT NULL,
  `Icon` varchar(25) DEFAULT NULL,
  `MenuId` int(11) NOT NULL DEFAULT '0',
  `UserType` varchar(255) NOT NULL DEFAULT '0',
  `Order` int(5) NOT NULL DEFAULT '0',
  `LastUpdate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `System` int(1) DEFAULT NULL,
  `Status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_menu` VALUES (10, 'Settings', NULL, '', '#', 'fa-gear', 0, '0', 2, '2018-03-12 22:15:53', 1, 1);
INSERT INTO `admin_menu` VALUES (13, 'Users', NULL, '', 'users.php', 'fa-user', 111, '0', 4, '2018-03-19 15:14:53', 1, 1);
INSERT INTO `admin_menu` VALUES (42, 'Menu Manager', NULL, '', 'menu.php', 'fa-puzzle-piece', 111, '0', 3, '2018-03-19 15:14:33', 1, 1);
INSERT INTO `admin_menu` VALUES (45, 'Edit Profile', NULL, '', 'profile.php', '', 10, '0', 0, '2018-03-19 15:12:26', 1, 1);
INSERT INTO `admin_menu` VALUES (46, 'Logout', NULL, '', 'logout.php', 'fa-sign-out', 0, '0', 9, '2018-02-05 21:52:28', 1, 1);
INSERT INTO `admin_menu` VALUES (55, 'Privileges', NULL, '', 'privileges.php', 'fa-unlock', 111, '0', 3, '2018-03-19 15:14:46', 1, 1);
INSERT INTO `admin_menu` VALUES (58, 'Users Info', NULL, '', 'usersdetails.php', 'fa-users', 111, '0', 0, '2018-03-19 15:15:03', 1, 1);
INSERT INTO `admin_menu` VALUES (59, 'Users Type', NULL, '', 'userstype.php', 'fa-sitemap', 111, '0', 0, '2018-03-19 15:15:16', NULL, 1);
INSERT INTO `admin_menu` VALUES (110, 'Informes', NULL, '', '#', 'fa-bar-chart-o', 0, '0', 1, '2018-03-19 17:40:56', NULL, 1);
INSERT INTO `admin_menu` VALUES (111, 'Administrador', NULL, '', '#', 'fa-cubes', 0, '0', 3, '2018-03-12 22:15:37', NULL, 1);
INSERT INTO `admin_menu` VALUES (119, 'Clientes', NULL, '', 'reports_qacustomers.php', '', 110, '0', 0, '2018-04-03 09:34:40', NULL, 1);
INSERT INTO `admin_menu` VALUES (133, 'Icons', NULL, '', 'menu.php?action=icons', '', 111, '0', 0, '2018-03-19 15:32:50', NULL, 1);
INSERT INTO `admin_menu` VALUES (134, 'Home', NULL, '', 'index.php', 'fa-dashboard', 0, '0', 0, '2018-03-19 16:14:53', NULL, 1);
INSERT INTO `admin_menu` VALUES (145, 'QA', NULL, '', '#', 'fa-anchor', 0, '0', 1, '2018-04-03 09:08:30', NULL, 1);
INSERT INTO `admin_menu` VALUES (146, 'Citas', NULL, '', 'qa_appointments.php', '', 145, '0', 0, '2018-04-03 09:21:09', NULL, 1);
INSERT INTO `admin_menu` VALUES (147, 'Categorías', NULL, '', 'qa_category.php', '', 145, '0', 0, '2018-04-03 09:21:40', NULL, 1);
INSERT INTO `admin_menu` VALUES (148, 'Clase', NULL, '', 'qa_classes.php', '', 145, '0', 0, '2018-04-03 09:22:02', NULL, 1);
INSERT INTO `admin_menu` VALUES (149, 'Clientes', NULL, '', 'qa_customers.php', '', 145, '0', 0, '2018-04-03 09:22:18', NULL, 1);
INSERT INTO `admin_menu` VALUES (150, 'Usuarios', NULL, '', 'qa_users.php', '', 145, '0', 0, '2018-04-03 09:22:45', NULL, 1);
INSERT INTO `admin_menu` VALUES (151, 'Visitas', NULL, '', 'reports_qaappointments.php', '', 110, '0', 0, '2018-04-03 09:34:18', NULL, 1);
INSERT INTO `admin_menu` VALUES (152, 'Cronograma Semanal', NULL, '', 'reports_qaschedule.php', '', 110, '0', 0, '2018-04-03 11:17:33', NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for admin_privileges
-- ----------------------------
DROP TABLE IF EXISTS `admin_privileges`;
CREATE TABLE `admin_privileges` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `TypeId` int(11) NOT NULL,
  `MenuId` int(11) NOT NULL,
  `Add` int(1) NOT NULL DEFAULT '0',
  `Update` int(1) NOT NULL DEFAULT '0',
  `Delete` int(1) NOT NULL DEFAULT '0',
  `Grant` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`) USING BTREE,
  UNIQUE KEY `priv` (`TypeId`,`MenuId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_privileges
-- ----------------------------
BEGIN;
INSERT INTO `admin_privileges` VALUES (79, 1, 0, 1, 1, 1, 0);
INSERT INTO `admin_privileges` VALUES (80, 2, 145, 1, 1, 1, 0);
INSERT INTO `admin_privileges` VALUES (81, 3, 145, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (82, 2, 110, 1, 1, 1, 0);
INSERT INTO `admin_privileges` VALUES (83, 2, 119, 1, 1, 1, 0);
INSERT INTO `admin_privileges` VALUES (84, 2, 151, 1, 1, 1, 0);
INSERT INTO `admin_privileges` VALUES (85, 2, 147, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (86, 2, 146, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (88, 2, 148, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (89, 2, 149, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (90, 2, 150, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (91, 3, 146, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (93, 2, 46, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (94, 3, 46, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (95, 2, 134, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (96, 3, 134, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (97, 3, 149, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (98, 3, 110, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (99, 3, 119, 0, 0, 0, 0);
INSERT INTO `admin_privileges` VALUES (101, 3, 151, 0, 0, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for admin_resources
-- ----------------------------
DROP TABLE IF EXISTS `admin_resources`;
CREATE TABLE `admin_resources` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `MenuId` int(11) NOT NULL,
  `File` varchar(255) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Order` int(5) DEFAULT NULL,
  `Status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for admin_sites
-- ----------------------------
DROP TABLE IF EXISTS `admin_sites`;
CREATE TABLE `admin_sites` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ThemeId` varchar(100) NOT NULL,
  `MetaTittle` varchar(100) NOT NULL,
  `MetaDescription` varchar(255) DEFAULT NULL,
  `MetaKeywords` varchar(255) DEFAULT NULL,
  `BgColor` varchar(255) DEFAULT NULL,
  `BgImage` varchar(255) DEFAULT NULL,
  `LogoHeader` varchar(255) DEFAULT NULL,
  `LogoFooter` varchar(255) DEFAULT NULL,
  `Favicon` varchar(255) DEFAULT NULL,
  `Language` varchar(5) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Url` varchar(255) DEFAULT NULL,
  `Status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_sites
-- ----------------------------
BEGIN;
INSERT INTO `admin_sites` VALUES (1, '1', 'Administration', 'Admin Page', '', '', '', '', '', '', 'en', '', '', 'admin/', 1);
INSERT INTO `admin_sites` VALUES (2, '2', 'Survey', 'Landing Page', '', '', '', '', '', '', 'en', '', 'test@test.com', 'survey.php', 1);
COMMIT;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UsersIndex` int(11) DEFAULT NULL,
  `UserName` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `TypeId` int(5) NOT NULL DEFAULT '0',
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastSession` datetime DEFAULT NULL,
  `OwnerId` int(11) NOT NULL,
  `LastUpdate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Created` int(11) DEFAULT NULL,
  `Status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`,`UserName`) USING BTREE,
  UNIQUE KEY `UserName` (`UserName`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
BEGIN;
INSERT INTO `admin_users` VALUES (26, 1, 'admin', 'sk101080', 1, '2018-02-06 13:46:48', NULL, 0, '2018-02-06 17:22:23', NULL, 1);
INSERT INTO `admin_users` VALUES (28, 0, 'lbucardo', 'lbucardo123', 3, '2018-03-12 21:28:35', NULL, 29, '2018-03-13 05:41:14', NULL, 1);
INSERT INTO `admin_users` VALUES (29, 0, 'mfernandez', 'mfernandez123', 2, '2018-03-12 21:40:38', NULL, 26, '2018-03-12 21:40:38', NULL, 1);
INSERT INTO `admin_users` VALUES (32, 0, 'herbert', 'herbert123', 3, '2018-03-13 20:29:48', NULL, 29, '2018-03-13 20:29:48', NULL, 1);
INSERT INTO `admin_users` VALUES (37, 0, 'purena', 'purena123', 3, '2018-03-19 17:29:16', NULL, 29, '2018-03-19 17:29:16', NULL, 1);
INSERT INTO `admin_users` VALUES (38, 0, 'xbolanos', 'xbolanos123', 3, '2018-03-19 17:38:20', NULL, 29, '2018-03-19 17:38:20', NULL, 1);
INSERT INTO `admin_users` VALUES (39, 0, 'pjimenez', 'pjimenez123', 3, '2018-03-21 12:20:12', NULL, 29, '2018-03-21 12:20:12', NULL, 1);
INSERT INTO `admin_users` VALUES (40, 0, 'ihidalgo', 'ihidalgo123', 3, '2018-03-21 12:49:31', NULL, 29, '2018-03-21 12:49:31', NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for admin_usersdetails
-- ----------------------------
DROP TABLE IF EXISTS `admin_usersdetails`;
CREATE TABLE `admin_usersdetails` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Identification` int(11) DEFAULT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `MiddleName` varchar(25) NOT NULL,
  `Company` varchar(100) DEFAULT NULL,
  `Position` varchar(100) DEFAULT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Mobile` varchar(25) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Country` varchar(25) DEFAULT NULL,
  `State` varchar(25) DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Details` text,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Responsible` varchar(25) DEFAULT NULL,
  `CustomInfo1` varchar(255) DEFAULT NULL,
  `CustomInfo2` varchar(255) DEFAULT NULL,
  `CustomInfo3` varchar(255) DEFAULT NULL,
  `CustomInfo4` varchar(255) DEFAULT NULL,
  `CustomInfo5` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `SessionId` varchar(255) DEFAULT NULL,
  `Status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for admin_userstype
-- ----------------------------
DROP TABLE IF EXISTS `admin_userstype`;
CREATE TABLE `admin_userstype` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Admin` int(1) NOT NULL DEFAULT '0',
  `Level` int(5) NOT NULL DEFAULT '0',
  `Status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_userstype
-- ----------------------------
BEGIN;
INSERT INTO `admin_userstype` VALUES (1, 'Admin', 1, 1, 1);
INSERT INTO `admin_userstype` VALUES (2, 'Supervisor', 1, 2, 1);
INSERT INTO `admin_userstype` VALUES (3, 'Agente', 0, 3, 1);
COMMIT;

-- ----------------------------
-- Table structure for empresas
-- ----------------------------
DROP TABLE IF EXISTS `empresas`;
CREATE TABLE `empresas` (
  `EMPRESA` varchar(255) DEFAULT NULL,
  `CONTACTO` varchar(255) DEFAULT NULL,
  `CORREO` varchar(255) DEFAULT NULL,
  `TELEFONO` varchar(255) DEFAULT NULL,
  `CATEGORIA` varchar(255) DEFAULT NULL,
  `UBICACIÓN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of empresas
-- ----------------------------
BEGIN;
INSERT INTO `empresas` VALUES ('ABB SOCIEDAD ANONIMA', 'SILVIA CALVO', 'sylvia.calvo@pa.abb.com', '2288-5484', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('ACEROS ABONOS AGRO', 'ESTEBAN CAMPOS', 'evives@abonosagro.com', '22129367', 'A', 'Alajuela');
INSERT INTO `empresas` VALUES ('CORPORACION RAYO DE LUZ', 'FRANCELLA MORERA BOGANTES', 'fmorera@frangus.com', '22652626', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('DISTRIBUIDORA LARCE', 'ROBERTO LUIS ARCE HERNANDEZ', 'rarce@dilarce.com', '22211100', 'A', 'Cartago');
INSERT INTO `empresas` VALUES ('SERVICIOS SATELITALES HJ VEGA', 'JAVIER EDUARDO VEGA CHACON', 'inshjvega@gmail.com', '2218 1443', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('AGROQUIMICA INDUSTRIAL RIMAC', 'LUIS FERNANDO ALVARADO TORRES', 'falvarado@rimacsa.com', '25720774', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('TRANSPORTES DEL ATLANTICO CARIBEÑO', 'CARLOS ENRIQUE LOPEZ SOLANO', 'rhumanos@tracasa.com', '27687232', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('COOPEMADEREROS', 'ARACELLY VARGAS CALDERÓN', 'info@coopemadereros.com', '27714438', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('OBASHE (EXOTIC FLOWERS)', 'ANA LUCRECIA ARIAS OBALDIA', 'ana@delrioexoticflowers.com', '22652513', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('INVERSIONES CONVAL SA', 'LOU VANZKY GUTHRIE BENAVIDES', 'lguthrie@jsarquitectos.com', '85351579', 'A', 'Alajuela');
INSERT INTO `empresas` VALUES ('SEGURIDAD ORION', 'MICHAEL ALBERTO BALTODANO MARTINEZ Y ALEXANDER VARGAS CHAVEZ', 'michael.baltodano@seguridadorión.com', '40017958', 'A', 'Alajuela');
INSERT INTO `empresas` VALUES ('INVERSIONES SAMO DEL OESTE', 'LUIS FERNANDO MONTES ARIAS', 'gasolinerahnosmontes@ice.co.cr', '22826230', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('IMPORTACIONES DEA INC', 'JUAN DIEGO NARANJO CASTAÑO', 'asistenteadministrativa@multiplaycr.com', '22481656', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('POAS RENTA CARRO', 'MERCIADES CAMPOS MIRANDA', 'avillalobos@poasrentacar.com', '24426178', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('UNIVERSAL MUSIC DE COSTA RICA', 'HAROLD CHAVEZ SOTO', 'harold.chaves@umusic.com', '22812430', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('FAMOSO SOCIEDAD ANONIMA', 'WILLIAM GILBERTO MACHADO SOLANO', 'machadowill17@gmail.com', '25312282', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('ALIMENTOS PRO SALUD', 'JUAN ALEJANDRO MARÍN AZOFEIFA', 'eric.sanchez@prosalud.com', '2504-7676 ext 7685 Karen Montoya', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('GAROLY BRANDS', 'RODRIGO ENRIQUE SEGURA LEIVA', 'io@garoly,com', '22862471', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('IDEAR ELECTRONICA', 'REBECA CORELLA RODRIGUEZ', 'rcorellar@yahoo.com', '40334233', 'A', 'Cartago');
INSERT INTO `empresas` VALUES ('SERVISECURITY', 'RAUL EDUARDO PAZOS FIGUEROA', 'ellis.machoro@gmail.com​', '89689559', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('ARGUES LIMITADA', 'EDUARDO ARGUEDAS CHAVERRI', 'larpeche@arguescr.com', '25891315', 'A', 'Cartago');
INSERT INTO `empresas` VALUES ('TITZIAN SOCIEDAD ANÓNIMA', 'FABRIZIO FRANCISCO COTO COTO', 'fabriziocoto@titzian.com', '22237753', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('UNIVERSIDAD HISPANOAMERICANA', 'ANGEL MARIN ESPINOZA', 'ralvarado@uh.ac.cr', '22419090', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('AGENCIA DATSUN', 'SAMUEL ALZENMAN PINCHANSKI', 'veraguille@gmail.com', '25497035', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('ALIMENTOS PROSALUD', 'JUAN ALEJANDRO MARÍN AZOFEIFA', 'eric.sanchez@prosalud.com', '25047676', 'A', 'Puntarenas');
INSERT INTO `empresas` VALUES ('CORPORACION ONIX COSTA RICA', 'RAUL EMILIO ACOSTA ARIAS', 'jacosta@inix.co.cr', '22906649', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('SOLUCIONES NEAN', 'GLORIA MARINA MATA ALVAREZ', 'david.barahona@neansa.com', '22909959', 'A', 'Alajuela');
INSERT INTO `empresas` VALUES ('Agencia Aduanal y Consolidadora de Carga AIRM', 'America Rivera Mora', 'americarivera2009@hotmail.com', '8863 0915', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('FRAVICO PROMOCIONAL SOCIEDAD ANONIMA', 'FRANCISCO JAVIER RODRIGUEZ HURTADA', 'fjavier@fravicopromocional.com', '40323838', 'A', 'Puntarenas');
INSERT INTO `empresas` VALUES ('SIBO ENERGY SOCIEDAD ANONIMA', 'EDGAR ALBERTO UGALDE SOLEY', 'eugalde@siboenergy.com', '40001510', 'A', 'Alajuela');
INSERT INTO `empresas` VALUES ('YORLENI MARIA ROJAS ROJAS ( EMBUTIDOS VALENCIANO)', 'YORLENI MARIA ROJAS ROJAS', 'anacruz@valencianocrcr.com', '22683334', 'A', 'Alajuela');
INSERT INTO `empresas` VALUES ('FABRICA DE MALLA CICLON SOCIEDAD ANONIMA', 'DANIEL JOSUE SEGREDA JOHANNING', 'contabilidad@mallaciclon.com', '2239-6383', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('BIOTRATAR TECNOLOGÌAS DE AGUAS', 'LUIS DIEGO CHACON PEREZ', 'dchacon@biotratarcr.com', '84440740', 'A', 'San Jose');
INSERT INTO `empresas` VALUES ('DST CENTER', 'MAURICIO LEON', 'tallerrme@hotmail.com', '24304633', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('TOSTADORA EL DORADO', 'HERSEL OROZCO ALPIZAR.', 'alexanderacuna@cafedorado.com', '2247-7906', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('DEMSA', 'CARLOS ALBERTO MURILLO HERRERA.', 'gabriela.murillo@demsacr.com', '24422600', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('ELDICA', 'DIRK BAETHGE PETERS', 'eliza.alvarado@eldicacr.com', '22378563', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('MADERAS DE BOLLEN', 'ENRICO CARLO GIORDANO SESIA', 'karlasanchezcalderon@gmail.com', '22113904', 'B', 'Cartago');
INSERT INTO `empresas` VALUES ('ALMACEN FISCAL SANDAL', 'RICARDO ARQUEDAS SOLERA', 'cchacon@sandal.co.cr', '22639811', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('UNIHOSPI', 'ANICETO CAMPOS ESTRADA', 'acampos@iberoamerica.cr', '22386073', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('EMPAQUE BELEN', 'JUAN FRANCISCO GONZALEZ NAVARRO', 'jgonzalez@empaquesbelen.com', '24385119', 'B', 'Alajuela');
INSERT INTO `empresas` VALUES ('ROSALA SOCIEDAD ANONIMA / FERRETERIAS EL MAR', 'VICTOR JULIO NAVARRO ROJAS', 'julionavarro@ferreteriaelmarsanpedro.com', '223464 64', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('DISTRIBUIDORA HERMANOS FUENTES', 'DAVID ADONAY FUENTES FLORES', 'hermanosfuentes@hotmail.com', '25373610', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('PMI CAPITULO DE COSTA RICA', 'EDGAR CARLOS DE JESUS VAZQUEZ RETANA', 'asistente@pmicr.org', '2224-8883', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('OLD WEST SA', 'ERNESTO MOSTES GUILLÉN', 'oldwestgrillcr.gmail.com', '2282 9210', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('PROPIAUTO UNO DEL NORTE / SOLID CAR RENT', 'FRANCISCO JAVIER HERNANDEZ GONZALEZ', 'lmontalto@solidcarrental.com', '24426000', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('SUPER BATERIAS', 'OLMAN RICARDO CESPEDES ROJAS', 'esolera@superbaterias.com', '22195454', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('SISTEMA EMPRESARIAL PSE SA', 'SANDY BERMUDEZ AGUILAR', 'angeles.seguridad@hotmail.com', '22511993', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('MEDI KOSTAX SOCIEDAD ANONIMA', 'PRISCILLA MARIA ALFARO CRUZ', 'palfaro.cr@kxmedical.com', '22931696', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('TRACTOMOTRIZ', 'HERNAN ARTURO MONGE GAMEZ', 'malopez@tractomotriz.com', '25492522', 'B', 'Alajuela');
INSERT INTO `empresas` VALUES ('PAFRAVE', 'PABLO FRANCIS VEGA', 'pfrancis@pafrave.com', '22221356', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('AQUASERVICE', 'ERICK GERARDO PORRAS ARTAVIA', 'delanaciente@gmail.com', '24876878', 'B', 'Alajuela');
INSERT INTO `empresas` VALUES ('RODRIGO SALAS SALAZAR', 'RODRIGO SALAS SALAZAR', 'lizandra00@hotmail.com', '88115775', 'B', 'Alajuela');
INSERT INTO `empresas` VALUES ('PROVEERDE INTERNACIONAL', 'JILMA CECILIA RAMIREZ UMAÑA', 'viveros.proverde@gmail.com', '22825600', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('TROPIFOODS', 'EDGAR ANTONIO MEDINA LUMBI', 'emedinam@tropifoods.com', '22931789', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('DESACAFÉ', 'LUIS FERNANDO CASTILLO CARPIO', 'mcastillo@desacafe.com', '40103737', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('FRAVICO PROMOCIONAL', 'FRANCISCO JAVIER RODRIGUEZ HURTADA', 'fjavier@fravicopromocional.com', '40323838', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('PROVEEDOR INTEGRAL DE PRECIOS CENTROAMERICA', 'EDUARDO RODRIGUEZ DEL PASO', 'nzambrana@piplatam.cr', '22047005', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('TRANSPORTES JOKEVISION', 'JESUS MARIA QUESADA ARROYO', 'rquesada@cosrticavision.net', '40525678', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('VETERINARIAN DEVELOPMENT', 'PEDRO JULIO GOMEZ VILLAVICENCIO', 'drgomez@gmail.com', '26642424', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('FERREMETRO', 'JUAN CARLOS HERNANDEZ OSPINA', 'ferremetrocr@gmail.com', '22216604', 'B', 'Cartago');
INSERT INTO `empresas` VALUES ('AGENCIA DATSUN SOCIEDAD ANONIMA', 'MARIA VIRGINIA SALAS SALAS', 'alejandro.quiros@grupodanissa.com', '25497035', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('FOOD MONGERS SOCIEDAD DE RESPONSABILIDAD LIMITADA', 'ALVARO JOSE MONGE CAMPOS', 'contabilidad@foodmongers.cr', '87290131', 'B', 'San Jose');
INSERT INTO `empresas` VALUES ('IC TRAVELGLOBAL GROUP', 'CHRISTIAN CASTRO PERAZA', 'itsupport@icglobalgroup.com', '22047200', 'B', 'Alajuela');
INSERT INTO `empresas` VALUES ('TRAVEL ACE INTERNACIONAL', 'JUAN JOSE PORRAS JIMENEZ', 'jporras@travelacecr.com', '83803082', 'B', 'Alajuela');
INSERT INTO `empresas` VALUES ('SIKA PRODUCTOS PARA LA CONSTRUCCION', 'MARIO CUBILLO', 'soto.isel@cr.sika.com', '22933870', 'C', 'Cartago');
INSERT INTO `empresas` VALUES ('CIRCUITO CINCO SOCIEDAD ANONIMA', 'IGNACIO DEL RIO FABRES', 'laura.vasquez@circuitocinco.com', '22936923', 'C', 'Cartago');
INSERT INTO `empresas` VALUES ('DICOFERSA', 'FREDDY ADRIAN SCHELBERT MONTILLA.', 'dicofersa@gmail.com', '24303963', 'C', 'Cartago');
INSERT INTO `empresas` VALUES ('GEVISA ARTES PLASTICAS', 'GEVISA ARTES GRAFICAS', 'hdormond@grupogevisa.com', '22367043', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('PROVEDORA DE SEGURIDAD INDUSTRIAL HA PROSISA', 'HUGO GERARDO AVALOS BENAVIDES', 'lavalos@prosisa.co.cr', '25606064', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('NATURE LOVERS (SANITE)', 'RODOLFO CALDERON ARAYA', 'info@sanitecostarica.com', '22141975', 'C', 'Alajuela');
INSERT INTO `empresas` VALUES ('UPALA AGRICOLA SA', 'ALFREDO VOLIO PEREZ', 'gherrera@upalagricola.com', '24800100', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('ECOSEAL', 'JOSE EDUARDO BALTODANO CASTRO', 'jbaltodano@ecoseal.ws', '24878585', 'C', 'Alajuela');
INSERT INTO `empresas` VALUES ('SHALOM INTERNACIONAL SEA LA PAZ', 'ARCADIO ALEXANDER CHAVARRIA THOMAS', 'josueisrael2014@hotmail.com', '22 53 55 33', 'C', 'Alajuela');
INSERT INTO `empresas` VALUES ('SERVINYEC - FABODIESEL / INTERPLAZA', 'FABIAN GILBERTO BONILLA BONILLA', 'fabian.bonilla@fabodiesel.com', '22361960', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('DISTRIBUIDORA VARGAS PATIÑO', 'FREDDY ALBERTO VARGAS PATIÑO', 'fvargas@disvapacr.com', '22330795', 'C', 'Alajuela');
INSERT INTO `empresas` VALUES ('CLINICA DENTAL CARLOS SEVILLA MONTERO', 'CARLOS CEVILLA MONTERO', '-', '-', 'C', 'Alajuela');
INSERT INTO `empresas` VALUES ('TROPIFOODS', 'EDGAR ANTONIO MEDINA LUMBI', 'emedinam@tropifoods.com', '22931789', 'C', 'Alajuela');
INSERT INTO `empresas` VALUES ('VEN RESANSIL SA', 'OSCAR ALONSO HERNANDEZ VARGAS', 'j.vargas@resansil.com', '22037912', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('ASA SECURITY SA', 'GUSTAVO HERNANDEZ', 'ghernandez@asaseguridad.com', '60275244', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('ADA TRENDY SOCIEDAD ANONIMA', 'JONATHAN STWARD LEITON MORA', 'jleitonm@hotmail.com', '87290131', 'C', 'Cartago');
INSERT INTO `empresas` VALUES ('CORPORACION BIOMEDICA COBISA', 'MARIA MAYELA MADRIGAL MIRANDA', 'mmadrigal@cobisacr.com ​', '25912063', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('PORCINA CERHIMA LIMITADA', 'MELZHIAN DIAZ', 'crjsanchez@gmail.com', '24302022', 'C', 'Alajuela');
INSERT INTO `empresas` VALUES ('AUTORREPUESTOS ALFARO', 'ADOLFO ENRIQUE ALFARO CARVAJAL', 'aalfaro@ice.co.cr', '22588282', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('GRUPO PRO', 'KWAN KWOK CHING', 'k.kwok@grupoprocr.com', '22506554', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('ZMW VALVERDE ( FLAMIMGO )', 'WILSON GERARDO VALVERDE MOYA', 'administracion@hoteldepasoflamingo.com', '47009274', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('ARGUES', 'EDUARDO ARGUEDAS CHAVERRI', 'larpeche@arguescr.com', '25891317', 'C', 'Cartago');
INSERT INTO `empresas` VALUES ('ELECTROMECANICACR B. F.', 'LUIS DIEGO BUSTAMANTE FERNANDEZ', 'proyectos@electromecanicacr.com', '22733553', 'C', 'Alajuela');
INSERT INTO `empresas` VALUES ('HAPAG-LLOYD COSTA RICA', 'CHRISTIAN MATZEN BONILLA', 'christian.matzen@hlag.com', '25195940', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('COMPUTRADING COSTA RICA', 'IVO CAGNONE', 'ivo.cagnone@computrading.net', '83294761', 'C', 'Cartago');
INSERT INTO `empresas` VALUES ('UNIVERSAL MUSICA DE CENTROAMERICA', 'HAROLD CHAVEZ SOTO', 'harold.chaves@umusic.com', '88229085', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('APOTEX COSTA RICA', 'SERGIO JOSE SOLANO MONTENEGRO', 'lvargas@apotex.com', '22831929', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('MAYOREO EL RAFAELEÑO', 'RAFAEL ALVARO VARGAS LARA', 'rarce08@hotmail.es', '22629808', 'C', 'Cartago');
INSERT INTO `empresas` VALUES ('Distribuidora Rodriguez Villalobos S.A.', 'Wilson Alexis Rodriguez Arias', 'Wilson.ra@hotmail.com', '27185302', 'C', 'Cartago');
INSERT INTO `empresas` VALUES ('ALQUIVAM SOCIEDAD ANONIMA', 'MERCIADES CAMPOS MIRANDA', 'avillalobos@poasrentacar.com', '24426178', 'C', 'Cartago');
INSERT INTO `empresas` VALUES ('IMESA SISTEMAS SOCIEDAD ANONIMA', 'RODOLFO JIMENEZ SOLANO', 'ronald.barrantes@imesasistemas.com', '22727536', 'C', 'San Jose');
INSERT INTO `empresas` VALUES ('INTERSOL INTERMODAL SOLUTIONS LIMITADA', 'JUAN CARLOS HERNANDEZ MENA', 'jchernandez@icscostarica.com', NULL, 'C', 'Cartago');
INSERT INTO `empresas` VALUES ('COMPRAS DIRECTAS (JETBOX)', 'ROGER CAMPOS', 'roger.campos@jetbox.com', '25283715', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('CONECLI INTERNACIONAL', 'GUILLERMO GUTIERREZ GRANADOS', 'cmartinez@ecusjo.eculine.net', '22200009', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('DIMPACK', 'CARLOS ANTONIO VAZQUEZ DAY', 'carlos@dimpack.net', '2241-0294', 'D', 'Puntarenas');
INSERT INTO `empresas` VALUES ('CORPORACIÓN COMERCIAL SIGMA INTERNACIONAL', 'LUIS FERNANDO GUERRA SUAREZ', 'lmguerra@gruposigma.net', '22347474', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('RCV INTERMODAL LOGISTICA', 'RICARDO CHINCHILLA VARGAS', 'richiva@rcvint.com', '22330003', 'D', 'Alajuela');
INSERT INTO `empresas` VALUES ('SANTILLANA SA', 'LUIS ALONSO GONZALEZ VAZQUEZ', 'kramirez@santillana.com', '22204242', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('TITZIAN', 'FABRIZIO FRANCISCO COTO COTO', 'fabriziocoto@titzian.com', '2223-7753', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('INDUSTRIAL LUGUME', 'LUIS GUSTAVO MENDEZ PALMA', 'creditoycobro@lugume.com', '22861282', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('EL RAFAELEÑO', 'RAFAEL ALVARO VARGAS LARA', 'rarce08@hotmail.es', '22629808', 'D', 'Limon');
INSERT INTO `empresas` VALUES ('SOLUCIONES NEAN DE CR SA', 'GLORIA MARINA MATA ALVAREZ', 'david.barahona@neansa.com', '22909959', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('EDIFICADORA INDUSTRIAL', 'HECTOR LEE QUIROS', 'leecorp@leecorp.net', '22950225', 'D', 'Cartago');
INSERT INTO `empresas` VALUES ('GOYCASA', 'FRANKLIN CAMPOS CALDERON', 'csalazar@goycasa.com', '22450313', 'D', 'Cartago');
INSERT INTO `empresas` VALUES ('SYMGENTA', 'MARIO ARREA SIERMANN', 'julieta.alvarado@syngenta.com', '24314707', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('CONSTRUCTORA NAVARRO Y AVILES', 'SALVADOR ANTONIO AVILES MAYORGA', 'mariana.blanco@navarroyaviles.com', '22763235', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('SOCIEDAD GANADERA SAN AGUSTIN SA', 'MARIA DEL ROSARIO LACAYO GIL', 'e-mail: hsanagustinsa@gmail.com', '85526290', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('ACELUB', 'JAIME ROLANDO SALAZAR VEGA', 'vmontano@acelub.cr', '4100 8004', 'D', 'Alajuela');
INSERT INTO `empresas` VALUES ('FIBROCENTRO', 'ORLANDO ODIO ARIZA', 'oodio@fibrocentrocr.com', '22571717 ext 124', 'D', 'Cartago');
INSERT INTO `empresas` VALUES ('DATAFORMAS DE COSTA RICA', 'ALEJANDRO JOSE JIMENEZ RODRIGUEZ', 'e-mail: jonathan.madrigal@dataformas.com', '22165000', 'D', 'Puntarenas');
INSERT INTO `empresas` VALUES ('AQUAMETRIC', 'XAVIER MORICE RODRIGUEZ', 'xmorice@aquametric.net', '2430-3838', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('GALA SPORT', 'ALAN ALTER MONTVELISKY', 'logística@grupoa.co.cr', '40103737', 'D', 'Cartago');
INSERT INTO `empresas` VALUES ('ALMACEN FISCAL SANDAL', 'RICARDO ARQUEDAS SOLERA', 'cchacon@sandal.co.cr', '22639811', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('TECNO PACK SOCIEDAD ANONIMA', 'FELIX ABDIEL SOLIS', 'administracion@tecno-packcr.com', '24310710', 'D', 'Alajuela');
INSERT INTO `empresas` VALUES ('ALEXANDER ACUÑA BALDIZON', 'ALEXANDER ACUÑA BALDIZON', 'alexacunab@hotmail.com', '22477406', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('YARA COSTA RICA', 'BERNARDO MORSINK SCHAEFER', 'ronald.cubero@yara.com', '21050250', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('DISTRIBUIDORA RODRIGUEZ VILLALOBOS', 'Wilson Alexis Rodriguez Arias', 'wilson.ra@hotmail.com', '27185302', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('FULL COPY SOLUTIONS', 'CHRISTIAN GONZALEZ GONZALEZ', 'fullcopysol@gmail.com', '83478080', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('DISTRIBUIDORA DE EQUIPO ELECTROMECANICO YARILAIT', 'ALEXANDER LAITANO BENAVIDES', 'eliza@laitanoconsultores.com', '60462744', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('ASOCIACIÓN COSTA RICA PMI CHAPTER', 'EDGAR CARLOS DE JESUS VAZQUEZ RETANA', 'asistente@pmicr.org', '22248883', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('TRANSPORTES PROFESIONALES SU AMIGO SA', 'MARCOS ROBERTO MORA MORALES', 'transprosa@gmail.com', '22506190/ 83879112', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('DEPOSITO INTERNACIONAL DE CARGA ECATRANS SA', 'MARIA ENID SERRANO RODRIGUEZ', 'bcascante@ecatrans.com', '22656566', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('INTERTEC SOCIEDAD ANONIMA', 'MIGUEL ANTONIO HERNANDEZ MENDEZ', 'mhernandez@intertec.co.cr', '22217831', 'D', 'San Jose');
INSERT INTO `empresas` VALUES ('TRANSPORTES JOKEVISION SA', 'JESUS MARIA QUESADA ARROYO', 'rquesada@cosrticavision.net', '40525678', 'D', 'San Jose');
COMMIT;

-- ----------------------------
-- Table structure for qa_appointments
-- ----------------------------
DROP TABLE IF EXISTS `qa_appointments`;
CREATE TABLE `qa_appointments` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UsersId` int(11) NOT NULL,
  `CustomersId` int(11) NOT NULL,
  `DateSet` date NOT NULL,
  `TimeSet` time NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MP` varchar(5) DEFAULT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Contact` varchar(100) DEFAULT NULL,
  `Details` text,
  `Status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qa_appointments
-- ----------------------------
BEGIN;
INSERT INTO `qa_appointments` VALUES (25, 29, 177, '2018-03-29', '18:59:00', '2018-03-21 11:59:32', '2018-03-22 12:47:42', NULL, NULL, NULL, NULL, 'muy bien todo', 1);
INSERT INTO `qa_appointments` VALUES (26, 26, 182, '2018-03-21', '18:59:00', '2018-03-21 11:59:38', '2018-03-21 11:59:38', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `qa_appointments` VALUES (27, 26, 262, '2018-03-31', '18:59:00', '2018-03-21 11:59:50', '2018-03-21 11:59:50', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `qa_appointments` VALUES (28, 28, 340, '2018-03-22', '05:17:00', '2018-03-21 22:17:45', '2018-03-21 22:17:45', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `qa_appointments` VALUES (29, 28, 180, '2018-03-22', '05:47:00', '2018-03-21 22:48:04', '2018-03-21 22:48:04', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `qa_appointments` VALUES (30, 28, 184, '2018-03-22', '05:51:00', '2018-03-21 22:51:19', '2018-03-21 22:51:19', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `qa_appointments` VALUES (31, 28, 186, '2018-03-22', '05:53:00', '2018-03-21 22:53:33', '2018-03-21 22:53:33', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `qa_appointments` VALUES (32, 28, 181, '2018-03-22', '05:55:00', '2018-03-21 22:55:24', '2018-03-21 22:58:55', NULL, NULL, NULL, NULL, '3333', 1);
INSERT INTO `qa_appointments` VALUES (33, 28, 184, '2018-03-22', '06:36:00', '2018-03-21 23:38:35', '2018-03-21 23:38:35', NULL, NULL, NULL, NULL, 'ho', 1);
INSERT INTO `qa_appointments` VALUES (34, 28, 180, '2018-03-22', '18:33:00', '2018-03-22 11:34:03', '2018-03-22 11:34:03', NULL, NULL, NULL, NULL, '', 1);
INSERT INTO `qa_appointments` VALUES (35, 28, 181, '2018-03-22', '18:33:00', '2018-03-22 11:35:23', '2018-03-22 11:35:23', NULL, NULL, NULL, NULL, '', 1);
INSERT INTO `qa_appointments` VALUES (36, 28, 183, '2018-03-22', '18:46:00', '2018-03-22 11:46:46', '2018-03-22 11:46:46', NULL, NULL, NULL, NULL, 'pude realizar una venta de un apquete', 1);
COMMIT;

-- ----------------------------
-- Table structure for qa_category
-- ----------------------------
DROP TABLE IF EXISTS `qa_category`;
CREATE TABLE `qa_category` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qa_category
-- ----------------------------
BEGIN;
INSERT INTO `qa_category` VALUES (1, 'Tour and Travel', 1);
INSERT INTO `qa_category` VALUES (2, 'Mercadeo Corporativo', 1);
INSERT INTO `qa_category` VALUES (3, 'Venta Directa', 1);
COMMIT;

-- ----------------------------
-- Table structure for qa_classes
-- ----------------------------
DROP TABLE IF EXISTS `qa_classes`;
CREATE TABLE `qa_classes` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Period` int(11) NOT NULL DEFAULT '0',
  `Status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qa_classes
-- ----------------------------
BEGIN;
INSERT INTO `qa_classes` VALUES (2, 'Clase A', 15, 1);
INSERT INTO `qa_classes` VALUES (3, 'Clase B', 30, 1);
INSERT INTO `qa_classes` VALUES (4, 'Clase C', 45, 1);
INSERT INTO `qa_classes` VALUES (5, 'Clase D', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for qa_customers
-- ----------------------------
DROP TABLE IF EXISTS `qa_customers`;
CREATE TABLE `qa_customers` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CategoryId` int(11) NOT NULL,
  `UsersId` int(11) NOT NULL,
  `ClassesId` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Phone2` varchar(25) DEFAULT NULL,
  `Contact` varchar(50) DEFAULT NULL,
  `Mobile` varchar(25) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Country` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Details` text,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastVisit` datetime DEFAULT NULL,
  `LastUpdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qa_customers
-- ----------------------------
BEGIN;
INSERT INTO `qa_customers` VALUES (177, 2, 28, 2, 'ASOINSURANCE ', '22876000', '', 'Rocío Jímenez ', '', 'mjimeneze@insservicios.com', '', '', '', 'Curridabat ', '', '2018-03-19 17:39:28', NULL, '2018-03-22 12:47:53', 1);
INSERT INTO `qa_customers` VALUES (178, 2, 28, 2, 'UPINS', '2287600', NULL, 'Marvin Rodríguez ', NULL, 'promocionupins@ins-cr.com', '', '', '', 'San José', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (179, 2, 28, 2, 'ASULATINA', '22074274', NULL, 'Mónica Castillo Barquero', NULL, 'monica.castillo@ulatina.cr', '', '', '', 'San José', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (180, 2, 28, 2, 'BANCO BCT 2', '22128541', '', 'Melissa Segura ', '', 'melissasegura@corporacionbct.com', '', '', '', 'San José', 'test', '2018-03-19 17:39:28', NULL, '2018-03-21 22:48:41', 1);
INSERT INTO `qa_customers` VALUES (181, 2, 28, 2, 'CAPEINS', '2287600', '', 'Katia Campos ', '', 'capeins@ins-cr.com', '', '', '', 'San José', '', '2018-03-19 17:39:28', NULL, '2018-03-21 22:55:27', 1);
INSERT INTO `qa_customers` VALUES (182, 2, 28, 2, 'GOLLO', '24374996', NULL, 'Jonathan Madrigal ', NULL, 'golloviajes@unicomer.com', '', '', '', 'alajuela ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (183, 2, 28, 2, 'ASDECITI', '25379680', '', 'Sugey Arce Zeledón ', '', 'sarce@asdeciti.com', '', '', '', 'Heredia ', '', '2018-03-19 17:39:28', NULL, '2018-03-22 11:47:03', 1);
INSERT INTO `qa_customers` VALUES (184, 2, 28, 2, 'ANDE test', '22579898', '', 'Eugenia Diaz ', '', 'ediaz@ande.cr', '', '', '', 'San José', 'test', '2018-03-19 17:39:28', NULL, '2018-03-21 22:51:38', 1);
INSERT INTO `qa_customers` VALUES (185, 2, 28, 2, 'UNIVERSIDAD DE COSTA RICA ', '86470606', NULL, 'Danny Herrera ', NULL, 'd.herrera91@hotmail.com', '', '', '', 'San José', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (186, 2, 28, 2, 'UNED', '88775381', '', 'Jorge Luis Arce ', '', 'jorge.arce@gmail.com', '', '', '', 'San José', '', '2018-03-19 17:39:28', NULL, '2018-03-21 22:54:05', 1);
INSERT INTO `qa_customers` VALUES (187, 2, 28, 2, 'COLEGIO JULIO FONSECA ', '83958402', NULL, 'Rene Quiros ', NULL, 'perezquiros1609', '', '', '', 'uruca ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (188, 2, 28, 2, 'ASEBANPRO ', '21047230', NULL, 'Dayana Piedra ', NULL, 'dpiedra@bp-fi.cr', '', '', '', 'San José', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (189, 2, 28, 2, 'ASEMBIS ', '22855881', NULL, 'Hilda Sandí Sandoval ', NULL, 'hsandi@asembis.org', '', '', '', 'San José', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (190, 2, 28, 2, 'ASOECORR CORREOS DE CR', '2253-0473', NULL, 'Angel Mendoza', NULL, 'angelmendoza@asoecorr.com', '', '', '', 'Zapote', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (191, 2, 28, 2, 'ASOECORR', '22530473', NULL, 'Diana Chacón ', NULL, 'dianachacon@asoecorr.com', '', '', '', 'zapote', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (192, 2, 28, 2, 'LICEO CURRIDABAT ', '89902972', NULL, 'Maynor Abarca ', NULL, 'mabacor30@hotmail.com', '', '', '', 'Curridabat ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (193, 2, 28, 2, 'HERBALIFE ', '71092672', NULL, 'Jessica dachiardi', NULL, 'jessica23@clubnutricion.com', '', '', '', 'San José', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (194, 2, 28, 2, 'INS ', '2210-9064', NULL, 'Jefrey García', NULL, 'jefgarci@ins-cr.com', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (195, 2, 28, 2, 'CLÍNICA TORRE MERCEDES/ CONMED', '2295-6656 / 8843-8453', NULL, 'Dr. Alberto Oviedo', NULL, 'aoviedo@smartlipocr.com ', '', '', '', 'Sabana Edificio Torre Mercedes, Piso 1', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (196, 2, 28, 2, 'ASEGOSEP', '2227-4213', NULL, 'Carlos Bellavita', NULL, 'administracion@asegosep.com', '', '', '', 'San Jose detrás de Comercial del Sur', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (197, 2, 28, 2, 'ASOMATRA', '2205-0193', NULL, 'Carolina Vargas', NULL, 'cavargas@matra.co.cr', '', '', '', 'Santa Ana Lindora', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (198, 2, 28, 2, 'ASEANDE.', '2257-9898', NULL, 'Abelardo Alpízar', NULL, 'aalpizar@ande.cr ', '', '', '', 'San José Avenida 5, calle 0 y 2 Edificio de Ande.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (199, 2, 28, 2, 'COOPEUNA', '2560-5776', NULL, 'Shirley Leiton', NULL, 'sleiton@coopeuna.fi.cr', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (200, 2, 28, 2, 'ASOAMSA (AUTO MERCADO)', '2221-2970', NULL, 'Ma. José Chaves', NULL, 'mchaves@asoamsa.cr', '', '', '', 'San José.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (201, 2, 28, 2, 'INS ', '2210-9064', NULL, 'Jefrey García', NULL, 'jefgarci@ins-cr.com', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (202, 2, 28, 2, 'ASADEM (SUPERMERCADOS UNIDOS)', '2528-0700', NULL, 'Mariana Delgado', NULL, 'mariana.delgado@asadem.com', '', '', '', 'San Pedro, por Plaza Roosevelt', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (203, 2, 28, 2, 'CLINICA BIBLICA ', '22333740', NULL, 'Bernardina Rivera ', NULL, 'brivera@clinicabiblica.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (204, 2, 28, 2, 'ASEACORDE ', '22564901', NULL, 'Isayana Guadamuz ', NULL, 'jprado@acorde.or.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (205, 2, 28, 0, 'TEXTOS EDUCATIVOS ', '40550800', NULL, 'Ivannia Hidalgo', NULL, 'info@textoseducativos.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (206, 2, 28, 2, 'ASECOB (CHIQUITA).', '2713 3461', NULL, 'Lorena Jiménez', NULL, 'ljimenez@chiquita.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (207, 2, 28, 2, 'ASEFIMU', '2469 5464', NULL, 'Ivannia Vargas', NULL, 'asefimu14@gmail.com', '', '', '', 'PAVAS ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (208, 2, 28, 2, 'ASEFISA', '2283 7775', NULL, 'Froylan Rivera', NULL, 'frivera@asefisa.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (209, 2, 28, 2, 'ASEFVR Fundación Costa Rica- Canada', '2524-2578', NULL, 'Kendall Castro Bravo', NULL, 'asefvr@fundacioncostaricacanada.org', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (210, 2, 28, 2, 'ASEINCAE. ', '2437 2388', NULL, 'Jimmy Fonseca', NULL, 'aseincaecr@incae.edu', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (211, 2, 28, 2, 'ASEKRAFT', '2298 5103', NULL, 'Jorge Hernandez', NULL, 'jorge.hernandez@asekraft.com', '', '', '', 'SABANA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (212, 2, 28, 2, 'ASEMBIS', '2285-5881', NULL, 'Francisco González', NULL, 'fgonzalez@asembis.org', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (213, 2, 28, 2, 'ASESTANDARD', '2240 3304', NULL, 'Vianey Hernández', NULL, 'vianey.hernandez@fs.co.cr', '', '', '', 'URUCA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (214, 2, 28, 2, 'ASETEC.', '2591 6629', NULL, 'Sonia Brenes Hernandez', NULL, 'sbrenes@ietec.org', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (215, 2, 28, 2, 'ASEUNED.', '2527 2295', NULL, 'Rocio Garita', NULL, 'rgarita@aseuned.com', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (216, 2, 28, 2, 'ASOCOCA', '22993498', NULL, 'Sofia Carrera', NULL, 'scarreraalfaro@coca-cola.com', '', '', '', 'URUCA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (217, 2, 28, 2, 'ASTRACSA (RACSA) SAN JOSE', '2287 0261', NULL, 'Kenneth Amador', NULL, 'dcampos@racsa.co.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (218, 2, 28, 2, 'AUTOMERCADO', '2221-2970', NULL, 'Erlinda Tejos', NULL, 'etrejos@automercado.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (219, 2, 28, 2, 'MIGRACION.ASEMIGRA.', '2299 8157', NULL, 'Olga Vega', NULL, 'ovega@migracion.go.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (220, 2, 28, 2, 'UNIVERSIDAD INTERNACIONAL ', '22125500', NULL, 'Laura Sandi', NULL, 'recursoshumanos@uia.ac.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (221, 2, 28, 2, 'UNIVERSIDAD LATINA ', '22074274', NULL, 'Tatiana Ruiz ', NULL, 'tatiana ruiz@ulatina.cr', '', '', '', 'SAN PEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (222, 2, 28, 2, 'REPRETEL', '2299-7232', NULL, 'Kattia Vargas', NULL, 'asociacion@repretel.com', '', '', '', 'URUCA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (223, 2, 28, 2, 'ASEACORDE ', '22564901', NULL, 'Isayana Guadamuz ', NULL, 'jprado@acorde.or.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (224, 2, 28, 2, 'ASOCHI', '27133349', NULL, 'Jessica Durán Hernández ', NULL, 'jduran@chiquilla.com', '', '', '', 'LIMON ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (225, 2, 28, 2, 'ACEACISA ', '26634000', NULL, 'Carlos Ampie Carballo ', NULL, 'mrodriguez@aseacisa.co.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (226, 2, 28, 2, 'ASOARTHROCARE', '25082838', NULL, 'Maricela Salas Aguiar ', NULL, 'maricela.salas@asoarthocare.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (227, 2, 28, 2, 'ASESEMA', '22005210', NULL, 'Jorge Adan Martinez García ', NULL, 'kcharpe@supplychain.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (228, 2, 28, 2, 'ASEVENECIA ', '86545652', NULL, 'Francisco Cortes Espinoza ', NULL, 'francortez30@hotmail.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (229, 2, 28, 2, 'ASEBAXTER', '22117235', NULL, 'Alicia González Solano ', NULL, 'emorales@bp.fi.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (230, 2, 28, 2, 'ASEBAYER ', '25898770', NULL, 'Marcela Tórres Mora ', NULL, 'marcelatorres@bayer.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (231, 2, 28, 2, 'ASECATSA', '26678465', NULL, 'Yessenia Rodríguez Camacho', NULL, 'asecatsa@catsa.net', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (232, 2, 28, 2, 'ASECALOX', '88964576', NULL, 'Carlos Bermudez Esquivel ', NULL, 'asecalox@calox.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (233, 2, 28, 2, 'ASECODE ', '27717783', NULL, 'Maikol Valverde Angulo ', NULL, 'aseacode@yahoo.com', '', '', '', 'LIMON ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (234, 2, 28, 2, 'ASECONI', '22161500', NULL, 'Sonia Calderon Soto ', NULL, 'asecconi@conicit.go.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (235, 2, 28, 2, 'ASOLCNP', '87017896', NULL, 'Nelson Valverde Flores ', NULL, 'asolcnp@cnp.gr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (236, 2, 28, 2, 'ASECONI', '25195811', NULL, 'Jonathan Chaves Sandoval ', NULL, 'asecon@conare.ac.cr', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (237, 2, 28, 2, 'ASECDOTA', '85205305', NULL, 'Adrian Cordero ', NULL, 'acorde@coopedota.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (238, 2, 28, 2, 'ASECOOPESAIN', '22975949', NULL, 'Orlando Gómez Garita ', NULL, 'aseacoopesain@ice.co.cr', '', '', '', 'SAN  JOSE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (239, 2, 28, 2, 'ASADEM ', '25280700', NULL, 'Ana Virginia Bustamante ', NULL, 'lui.rodriguez@asadem.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (240, 2, 28, 2, 'ASOSEGUROS ', '22218829', NULL, 'Francisco Villaverde Sibaja ', NULL, 'fvillaverde@cssseguros.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (241, 2, 28, 2, 'ASODNN', '88369379', NULL, 'Douglas Calvo Sánchez ', NULL, 'dcalvossanchez@gmail.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (242, 2, 28, 2, 'ASOASETEC', '25914183', NULL, 'Beatriz Bonilla Brenes', NULL, 'bbonilla@itcr.ac.cr', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (243, 2, 28, 2, 'ASEEPA', '25881145', NULL, 'Enmanuel Mata Vargas ', NULL, 'oficredi@aseepa.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (244, 2, 28, 2, 'ASEFISHER', '22779210', NULL, 'Laura Solano Villalobos ', NULL, 'laura.solanothermofisher.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (245, 2, 28, 2, 'ASEGBM', '25044500', NULL, 'Rocío Zúñiga Chavarría ', NULL, 'asegbm@gbm.net', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (246, 2, 28, 2, 'ASOCONDAL ', '87126331', NULL, 'Jorge Sandi Fallas ', NULL, 'inforrhh@psser.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (247, 2, 28, 2, 'ASEHJUVI', '25322032', NULL, 'Martín Carvajal Ramírez ', NULL, 'asehjuvi@ice.co.cr', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (248, 2, 28, 2, 'REECO ', '22577074', NULL, 'Mónica Quiros ', NULL, 'mquiros@reecosa.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (249, 2, 28, 2, 'UNIVERSIDAD LATINA', '2277 8145', NULL, 'Tatiana Bustamante', NULL, 'mathiew.carrasco@ulatina.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (250, 2, 28, 2, 'COLEGIO LICEO SAN FRANCISCO CARTAGO ', '84489697', NULL, 'Tatiana Ortega ', NULL, 'tatiaanadepote@gmail.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (251, 2, 28, 3, 'PANI', '6050 3289', NULL, 'Johnattan Araya', NULL, 'jarayac@pani.go.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (252, 2, 28, 3, 'NOVACOMP', '2216 5802', NULL, 'Harold Alfaro', NULL, 'halfaro@crnova.com', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (253, 2, 28, 3, 'MOTO PARTES', '2258 6116', NULL, 'Jose Marote Lago', NULL, 'maroteortiz@ice.co.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (254, 2, 28, 3, 'MONTE ALTO SCHOOL.', '2262 3263', NULL, 'Cintia Zarate ', NULL, 'czarate@montealto.cr', '', '', '', 'BARBA DE HEREDIA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (255, 2, 28, 3, 'MINISTERIO DE ECONOMIA ', '2291 2089', NULL, 'Julio Rojas ', NULL, 'jrojas@meic.go.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (256, 2, 28, 3, 'HAVAS MAGMA STUDIOS', '2293 2492', NULL, 'Fernando Vargas', NULL, 'fernando.vargas@havasmagma.com', '', '', '', 'HEREDIA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (257, 2, 28, 3, 'GRUPO ZERMAT', '7015 9040', NULL, 'Gloriana Quirós', NULL, 'gloriana.quiros@grupozermat.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (258, 2, 28, 3, 'GRUPO TLA LOGISTICS.', '2549 1021', NULL, 'Amalia Chacon ', NULL, 'bricing.cr@grupotla.com', '', '', '', 'PAVAS ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (259, 2, 28, 3, 'GRUPO SARET', '2436 4000', NULL, 'Raquel Ruiz', NULL, 'raquelruiz@gruposaret.com', '', '', '', 'ALAJUELA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (260, 2, 28, 3, 'Grupo Montecristo (Hospital Metropolitano)', '2521-9595', NULL, 'Sonia Cuevas', NULL, 'info@grupomontecristo.com', '', '', '', 'GUADALUPE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (261, 2, 28, 3, 'GRUPO HUMBERTO ALVAREZ', '2284 9028', NULL, 'Wagner Loría', NULL, 'wloria@grupoha.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (262, 2, 28, 3, 'GRUPO CONSULTEPRO', '2520 0220', NULL, 'Diana Sandí', NULL, 'dsandi@grupoconsultepro.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (263, 2, 28, 3, 'FUPROVI.', '2247 0022', NULL, 'Carmen Gutierrez ', NULL, 'asofuprovi@fuprovi.org', '', '', '', 'MORAVIA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (264, 2, 28, 3, 'FUNDACION CENAT', '2519 5834', NULL, 'Favio Esquivel ', NULL, 'sesquivel.cenat@cenat.ac.cr', '', '', '', 'PAVAS ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (265, 2, 28, 3, 'FRUTA INTERNACIONAL', '8787 7603', NULL, 'Jose Guzman', NULL, 'jguzman@frutainternacional.com', '', '', '', 'HEREDIA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (266, 2, 28, 3, 'FONAFIFO', '2545 3515', NULL, 'Guiselle Rojas', NULL, 'gisellerojas@fonafifo.go.cr', '', '', '', 'SAN PEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (267, 2, 28, 3, 'FABRI-TECH', '2239 4463', NULL, 'Minor Sibaja', NULL, 'menchhofer@ice.co.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (268, 2, 28, 3, 'EXPORTADORA PMT.', '7013 3177', NULL, 'Mariana Herrera', NULL, 'mherrera@pmtcr.com', '', '', '', 'SANTA ANA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (269, 2, 28, 3, 'COOPESIBA', '2262 9050', NULL, 'Carlos Calvo', NULL, 'ccalvo@coopesiba.com', '', '', '', 'HEREDIA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (270, 2, 28, 3, 'COOPELESCA', '2401 4026', NULL, 'Heiner Chavez', NULL, 'asecoop@coopelesca.co.cr', '', '', '', 'ALAJUEA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (271, 2, 28, 3, 'COOPEBANACIO.BNCR.', '2212 2371', NULL, 'Cristian Tregueara ', NULL, 'ctreguea@bncr.fi.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (272, 2, 28, 3, 'CONSULTEX ABOGADOS', '2290 5100', NULL, 'Federico Torres', NULL, 'ftorres@consulex.cr', '', '', '', 'SABANA SUR ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (273, 2, 28, 3, 'COLEGIO SION.', '2241 4151', NULL, 'Sigur Ramos', NULL, 'director.sion@hotmail.com', '', '', '', 'MORAVIA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (274, 2, 28, 3, 'COLEGIO SEK.', '2272 5464', NULL, 'Rufino Guerrero ', NULL, 'sekcostarica@sekmail.com', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (275, 2, 28, 3, 'COLEGIO SAINT BENEDICT.', '2276 7639', NULL, 'Carolina Flores', NULL, 'info@saintbenedict.ed.cr', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (276, 2, 28, 3, 'COLEGIO CALASANZ.', '2283 1690', NULL, 'Federico Calcaneo', NULL, 'colegio@colegiocalasanz.com', '', '', '', 'MONTES DE OCA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (277, 2, 28, 3, 'CODISA', '2588 2424', NULL, 'Ronny Jimenez', NULL, 'rmjimenez@codisa.com', '', '', '', 'ESCAZU', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (278, 2, 28, 3, 'CLUB DE LEONES MORAVIA.', '22972678', NULL, 'Mario Vargas ', NULL, 'mvargas@coseal.coc.r', '', '', '', 'MORAVIA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (279, 2, 28, 3, 'CLINICA CATOLICA', '2246 3595', NULL, 'Gabriela Segura', NULL, 'gabysegu@gmail.com', '', '', '', 'GUADALUPE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (280, 2, 28, 3, 'CENTENARIO INT.', '2216 4200', NULL, 'Karina León', NULL, 'karina.leon@centenario.co.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (281, 2, 28, 3, 'CEMACO.', '40318030', NULL, 'Jaqueline Vargas ', NULL, 'jvargas@cemaco.co.cr', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (282, 2, 28, 3, 'CCOPELECHEROS', '2460 2928', NULL, 'Jose Alvarado', NULL, 'jalvarado@coopelecheros.com', '', '', '', 'ALAJUELA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (283, 2, 28, 3, 'CAFÉ DOTA.', '8536 5378', NULL, 'Evelyn Bonilla', NULL, 'asecdota04@gmail.com', '', '', '', 'MORAVIA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (284, 2, 28, 3, 'BANHVI.', '2527 7440', NULL, 'Ana Bonilla', NULL, 'anabonilla@banhvi.fi.cr', '', '', '', 'SAN PEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (285, 2, 28, 3, 'BANDECO', '2220-2535', NULL, 'Alberto Badilla ', NULL, 'abadilla.1@cr.freshdelmonte.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (286, 2, 28, 3, 'BANCO POPULAR Y DESARROLLO COMUNAL.', '2211 7232', NULL, 'Elsy Morales', NULL, 'auvargas@bp.fi.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (287, 2, 28, 3, 'NOVACOMP', '2216 5802', NULL, 'Harold Alfaro', NULL, 'halfaro@crnova.com', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (288, 2, 28, 4, 'MARIAN BAKER.', '2273 0024', NULL, 'Linda Niehaus', NULL, 'lniehaus@mbs.ed.cr', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (289, 2, 28, 4, 'MANZATE', '2276 9631', NULL, 'Sonia cabrera', NULL, 'scabrera@manzate.co.cr', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (290, 2, 28, 4, 'JET BOX. ', '25283737', NULL, 'Gabriela Apuy', NULL, 'gabriela.apuy@jetbox.com', '', '', '', 'HEREDIA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (291, 2, 28, 4, 'INTERTEC', '22217831', NULL, 'Maritza Arce', NULL, 'marce@intertec.co.cr', '', '', '', 'HEREDIA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (292, 2, 28, 4, 'INTERFRUTD.', '2509 9000', NULL, 'Geovanni González', NULL, 'asofrumusa@interfrutd.com', '', '', '', 'DESAMPARADOS ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (293, 2, 28, 4, 'INDUSTRIAS ALTAMIRA', '2239 1082', NULL, 'Gaudin Alvarado', NULL, 'mercadeo@altamira.com', '', '', '', 'ALAJUELA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (294, 2, 28, 4, 'HOSPITAL DE PURISCAL', '2505 4285', NULL, 'Juliana Jiménez', NULL, 'jcjimene@ccss.sa.cr', '', '', '', 'PURISCAL ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (295, 2, 28, 4, 'HOSPITAL DE ALAJUELA', '8832 1015', NULL, 'Lizbeth Ruiz Rojas', NULL, 'lruizr@ccss.sa.cr', '', '', '', 'ALAJUELA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (296, 2, 28, 4, 'HOLOGIC', '2436 2789', NULL, 'Xinia Jiménez', NULL, 'xinia.jimenez@hologic.com', '', '', '', 'ALAJUELA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (297, 2, 28, 4, 'EVERTEC.', '2211 4532', NULL, 'Johana Olmedo', NULL, 'jolmedo@evertecinc.com', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (298, 2, 28, 4, 'ESCUELA TROPICO HUMEDO (EARTH).', '2713 0000', NULL, 'Sirleny Zuñiga ', NULL, 'szuniga@earth.ac.cr', '', '', '', 'LIMON ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (299, 2, 28, 4, 'ESCUELA SOCIAL JUAN XXIII.', '2272 0311', NULL, 'Mariela Hernandez', NULL, 'mhernandez@escuelasocialjuanxiii.com', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (300, 2, 28, 4, 'DICHTER & NEIRA', '2234 9575', NULL, 'Daniela Gudino', NULL, 'dgudino@dichter-neira.com', '', '', '', 'SAN PEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (301, 2, 28, 4, 'DIARIO EXTRA.', '2547 9300', NULL, 'Victor Pana ', NULL, 'panavic1@gmail.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (302, 2, 28, 4, 'DAC.', '2494 9800', NULL, 'Diana Céspedes', NULL, 'asedagrocr@gmail.com', '', '', '', 'ALAJUELA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (303, 2, 28, 4, 'CREATIVE KIDS.', '8346 6430', NULL, 'Cindy Blen Alpizar', NULL, 'infocreativekids@gmail.com', '', '', '', 'RIVERA DE BELEN ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (304, 2, 28, 4, 'COSTA RICA TENNIS CLUB', '22321228', NULL, 'Francisco Córdoba', NULL, 'info@crtennis.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (305, 2, 28, 4, 'CORRUGADOS ALTA VISTA', '2716 8024', NULL, 'Esteban Villagra', NULL, 'esteban.villagra@corrugadosaltavista.com', '', '', '', 'LIMON ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (306, 2, 28, 4, 'BANCO LAFISE', '22462000', NULL, 'Maylin Cedeño ', NULL, 'mcedend@lafise.com', '', '', '', 'SAN PEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (307, 2, 28, 4, 'BALTIMORE SPICE (ASEBAS)', '8822 5487', NULL, 'Michael Moreira', NULL, 'mmoreira@baltimorespice.net', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (308, 2, 28, 4, 'ASOVIDA', '2523 5249', NULL, 'Laurens Mena', NULL, 'laurens.mena@vidaplena.fi.cr', '', '', '', 'TIBAS ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (309, 2, 28, 4, 'ASOMESA', '2241 4012', NULL, 'Karol Nuñez', NULL, 'karol.nunez@quarzo.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (310, 2, 28, 4, 'ASOLUCAS', '2239 5922', NULL, 'Carlos Jiménez', NULL, 'cjimenez@lucasingenieros.com', '', '', '', 'SAN PEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (311, 2, 28, 4, 'ASOFLORIDA', '2437 6716', NULL, 'Lorena Murillo Carvajal', NULL, 'lorena.murillo.carvajal@fifco.com', '', '', '', 'DESAMPARADOS ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (312, 2, 28, 4, 'ASOCOPRICOSE', '25281011', NULL, 'Yendry Prado', NULL, 'asocopricose@pricose.com', '', '', '', 'GUADALUPE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (313, 2, 28, 4, 'ASOATD.', '2219 3671', NULL, 'Aurelio Vargas', NULL, 'asoatd@grupoatdcr.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (314, 2, 28, 4, 'ASEVOLCANO.', '2429 2402', NULL, 'Diana Céspedes', NULL, 'dcespedes@volcanocorp.com', '', '', '', 'SAN PEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (315, 2, 28, 4, 'ASECISA. EATON', '2247 7600', NULL, 'Luis Diaz', NULL, 'luisadiaz@eaton.com', '', '', '', 'MORAVIA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (316, 2, 28, 4, 'ARESEP.', '2506 3399', NULL, 'Maria Fernanda Sanchez', NULL, 'asar@aresep.go.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (317, 2, 28, 4, 'AMNET CABLE', '2290 9179', NULL, 'Carlos Morgan Peraza', NULL, 'carlos.morgan@tigo.co.cr', '', '', '', 'SAN PEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (318, 2, 28, 4, 'AMADITA SCHOOL.', '2229 3462', NULL, 'Grettel Mora', NULL, 'gmora@amadita.ed.cr', '', '', '', 'CORONADO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (319, 2, 28, 4, 'ALMACENES EL COLONO (ASTRACOA)', '2713 1000', NULL, 'Raquel Prieto', NULL, 'astracoa@grupocolono.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (320, 2, 28, 4, 'CLINICA BIBLICA ', '22333740', NULL, 'Bernardina Rivera ', NULL, 'brivera@clinicabiblica.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (321, 2, 28, 4, 'TEXTOS EDUCATIVOS ', '40550800', NULL, 'Ivannia Hidalgo', NULL, 'info@textoseducativos.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (322, 2, 28, 4, 'COOPESIPE', '22575226', NULL, 'Raul Duarte ', NULL, 'rauldua@gmail.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (323, 2, 28, 4, 'AGRICOLAS DE CIA. BANANERA ATLANTICA', '22565687', NULL, 'Marco Zamora', NULL, 'mfernandez@chiquita.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (324, 2, 28, 5, 'Asecond / Condefa', '2539-8181', NULL, 'Luis Diego Perez', NULL, 'dperez@farmaciascondefa.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (325, 2, 28, 5, 'Corobici Asoc Emp', '2232-8122', NULL, 'Elizandro Morales', NULL, 'asehocor@corobicicp.co.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (326, 2, 28, 5, 'Asegsa (Asociación Grupo Sama)', '2296-7070', NULL, 'Cesar Oconitrillo', NULL, 'coconitrillo@sama.co.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (327, 2, 28, 5, 'Asoc. Farmanova', '2519-4339', NULL, 'Diego Azofeifa', NULL, 'diego_azofeifa@gficr.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (328, 2, 28, 5, 'Asoc. Heinz', '25499885', NULL, 'Claudia Bermudez', NULL, 'claudia.bermudez@cr.hjheinz.com ', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (329, 2, 28, 5, 'Asemaersk', '2543-5100 etx. 5166', NULL, 'José Torres', NULL, 'jose.torres@maersk.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (330, 2, 28, 5, 'AseAmway', '2582-6681', NULL, 'Marcela Miranda / Gabriela', NULL, 'aseamway@amway.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (331, 2, 28, 5, 'ASEPANAC / Asoc. Panasonic', '2509-2563', NULL, 'Yahaira Porras', NULL, 'porras.yajaira@cr.panasonic.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (332, 2, 28, 5, 'Asoc. Grupo Holcim', '2205-2956', NULL, 'Martha Ibarra', NULL, 'martha.ibarra@holcim.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (333, 2, 28, 5, 'Aseepa (EPA Ferreteria Asociacióm)', '2588-1145', NULL, 'Carolina Arias', NULL, 'gestor@aseepa.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (334, 2, 28, 5, 'Aseatlas', '2261-7195', NULL, 'Mónica Urra', NULL, 'monica.urra@asemabe.co.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (335, 2, 28, 5, 'Aseconsa', '2298-4907', NULL, 'Silvia Pérez', NULL, 'aseconsa@ice.co.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (336, 2, 28, 5, 'Asefruta (Fruta Internacional)', '2239-9696', NULL, 'Cristina Alfaro', NULL, 'calfaro@frutainternacional.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (337, 2, 28, 5, 'Asenovartis - Asenestle', '2209-6675', NULL, 'Jackeline', NULL, 'asociacion.solidaristaasode@pa.nestle.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (338, 2, 28, 5, 'Asoc Carnes Zamora (Asezamo)', '2509-2346', NULL, 'Sheyla Sevilla', NULL, 'asezamo@carneszamora.co.cr', '', '', '', 'CARTAGO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (339, 2, 28, 5, 'ASEGRUPO HOLCIM', '88015953', NULL, 'Ana Mejia Madriz ', NULL, 'ana.mejia@holcim.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (340, 2, 28, 5, 'ASEIMAS ', '22248927', NULL, 'Patricia Obando Monge ', NULL, 'pobando@imas.go.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (341, 2, 28, 5, 'ASOLAICA ', '22846086', NULL, 'Eugenia Chinchilla Arguedas ', NULL, 'echinchilaqlaica.co.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (342, 2, 28, 5, 'LOGEM SRL', '22924184', NULL, 'Ileana Madrigal Abarca ', NULL, 'logemsrl@gmail.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (343, 2, 28, 5, 'ASOMERVA ', '70170624', NULL, 'Adriana Vega Aguilar ', NULL, 'asemerva@mvalores.fi.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (344, 2, 28, 5, 'ASEMONDELEZ', '25886543', NULL, 'Jorge hernández ', NULL, 'jorge.hernandez@asemondelez.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (345, 2, 28, 5, 'ASEMUNA ', '26577500', NULL, 'Franklin Guerrero', NULL, 'fguerrero@qnandayure.go.cr', '', '', '', 'AGUAS ZARCAS ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (346, 2, 28, 5, 'UNIVERSIDAD FIDELITAS.Psicologia.', '2206 8600', NULL, 'Giancarlo Vargas', NULL, 'gvargas@ufidelitas.ac.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (347, 1, 37, 2, 'Gray Line', '2220-2126', NULL, 'Sharon Sagot ', NULL, 'ssagot@graylinecostarica.travel', '', '', '', 'LA URUCA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (348, 1, 37, 2, 'Hotel Oceano ', '2643-0420', NULL, 'Franklin Vargas ', NULL, 'tourdesk@hoteloceano.com ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (349, 1, 37, 2, 'CPI', '2645-5441 ', NULL, 'Arelys Brenes', NULL, 'cpi-edu.com ', '', '', '', 'MONTEVERDE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (350, 1, 37, 2, 'Avante ', '8838 7896', NULL, 'Jefferson Espinosa', NULL, 'girasavante@gmail.com', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (351, 1, 37, 2, 'Green Tours Jaco ', '8342 9673', NULL, 'Miguel Angel Arias ', NULL, 'miguelsportfishingandtours@gmail.com ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (352, 1, 37, 2, 'One Day Tours', '8961-9090', NULL, 'Luis Sanchez Alvarez ', NULL, 'toursonedaycr@gmail.com', '', '', '', 'ALAJUELITA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (353, 1, 37, 2, 'Sueños Hoteleros', '2282-8700', NULL, 'Ana Yancy Nuñez', NULL, 'corporativo1@suenoshoteleros.com, ventas@suenoshoteleros.com; info@suenoshoteleros.com ', '', '', '', 'SANTA ANA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (354, 1, 37, 2, 'Isla Tortuga ', '2253 5340', NULL, 'Fabiola Arroyo ', NULL, 'isla.tortuga.cr@gmail.com; ventas01@islatortugacr.com', '', '', '', 'SAN PEDRO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (355, 1, 37, 2, 'Costa Rica Groups ', '2237-4403', NULL, 'Ronny Sanchez ', NULL, 'sales1@costaricagrups.com ', '', '', '', 'HEREDIA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (356, 1, 37, 2, 'Wahoo Sport Fishing ', '8867 3476', NULL, 'German Méndez', NULL, 'phoenixsportfishing@gmail.com ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (357, 1, 37, 2, 'Room 2 Board ', '2643-4949', NULL, 'Carolina Barrientos ', NULL, 'carolinaroom2board@gmail.com ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (358, 1, 37, 2, 'AXR', '2643-3130', NULL, 'Ada & Enrique', NULL, 'axr.jaco@gmail.com ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (359, 1, 37, 2, 'Services Expeditions', '8839-0515', NULL, 'Matthew Cook', NULL, 'matt@serviceexpeditions.net', '', '', '', 'SAN PEDRO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (360, 1, 37, 2, 'Global Travel ', '2441-5000', NULL, 'Marisol ', NULL, 'marisol@globaltravel.com', '', '', '', 'Alajuela ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (361, 1, 37, 2, 'Destiny travel ', '2227-2662', NULL, 'Daniel Sandoval ', NULL, 'arturo19582012@hotmail.com', '', '', '', 'SAN FRANCISCO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (362, 1, 37, 2, 'Excrusiones gay ', '6283 3051', NULL, 'Rolando Montero ', NULL, 'ramontero@excursionesgaycr.com', '', '', '', 'SABANA SUR ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (363, 1, 37, 2, 'Tip Tours', '2258-0701', NULL, 'Luis   ', NULL, 'tiptours.info@gmail.com', '', '', '', 'SAN JOSE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (364, 1, 37, 2, 'Breathtaking CR ', '2296-3378', NULL, 'Diego Moreira ', NULL, 'info@btcrtravel.com; diegoo@btcrtravel.com; cecheverria@btcrtravel.com ', '', '', '', 'PAVAS', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (365, 1, 37, 2, 'Zona Ticket ', '8810-1500', NULL, 'Jairo Gutierrez', NULL, 'jgutierrez@zoinaticketcr.com; ', '', '', '', 'DESAMPARADOS', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (366, 1, 37, 2, 'Todo Travel ', '2225-0101', NULL, 'Roxana Sandoval ', NULL, 'rsandoval@todotravel.cr', '', '', '', 'GUADALUPE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (367, 1, 37, 2, 'Best Of Costa Rica', '2290-1302', NULL, 'Sergio Hidalgo ', NULL, 'sergio@bestcostaricadmc.com; edgar@bestcostaricadmc.com ', '', '', '', 'LA URUCA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (368, 1, 37, 2, 'Hotel Puerto Azul ', '2661-5552', NULL, 'KENNETH RODRÍGUEZ', NULL, 'recepcion@hotelclubpuertoazul.com', '', '', '', 'PUNTARENAS', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (369, 1, 37, 2, 'Hotel Tioga ', '2661-0127', NULL, 'Don Victor , Grace & Kelly', NULL, 'reservas@hoteltioga.com ', '', '', '', 'PUNTARENAS', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (370, 1, 37, 2, 'Hotel Yadrán ', '2661-2662', NULL, 'María ', NULL, 'reservas@hotelyadrancr.com', '', '', '', 'PUNTARENAS', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (371, 1, 37, 2, 'Vemsa', '4200-3996', NULL, 'Franciney Quesada ', NULL, 'francy.quesada@vemsa.travel', '', '', '', 'PASEO COLON', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (372, 1, 37, 2, 'Hotel Arenal Green', '2479-8585 ', NULL, 'German  ', NULL, 'reservas@arenalgreen.com', '', '', '', 'LA FORTUNA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (373, 1, 37, 2, 'Anywhere', '2479-8811 ', NULL, 'Pablo Brenes', NULL, 'pablo@anywherecostarica.com', '', '', '', 'LA FORTUNA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (374, 1, 37, 2, 'Jacamar', '2479-9767', NULL, 'Randall Quiros', NULL, 'randall@arenaltours.com', '', '', '', 'LA FORTUNA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (375, 1, 37, 2, 'Hotel Monteverde Country Lodge ', '2645-7175', NULL, 'YORLENY VEGA', NULL, 'info@monteverdecountrylodge.com', '', '', '', 'MONTEVERDE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (376, 1, 37, 2, 'Quality Transfers', '2645-6263', NULL, 'Miguel  Picado ', NULL, 'info@qualitytransferscr.com', '', '', '', 'MONTEVERDE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (377, 1, 37, 2, 'Go Green ', '2258-7878', NULL, 'Harry Melgar & Andrés Moyeda', NULL, 'hmelgar@gogreen.crtouroperator.com', '', '', '', 'SAN JOSE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (378, 1, 37, 2, 'Eco Trip ', '4700-8417', NULL, 'MANUEL SEGURA', NULL, 'info@ecotrip.cr', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (379, 1, 37, 2, 'Conexpress', '2221-0155', NULL, 'CINDY ALVARADO', NULL, 'cindyalvarado@conexpres.com', '', '', '', 'SAN JOSE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (380, 1, 37, 2, 'Hotel Bait Patua', '8718-6347', NULL, 'Josyth ', NULL, 'no tiene ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (381, 1, 37, 2, 'Hotel Punta Leona - Cristine Vetter , chango y recepcionistas', '8302-4413', NULL, 'Luis guillerç', NULL, 'info@changoexperiences.com; recepcion@hotelpuntaleona.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (382, 1, 37, 2, 'Swiss Travel ', '2282-4898', NULL, 'Evelyn Roldan ', NULL, 'evelyn.roldan@swisstravelcr.com', '', '', '', 'SANTA ANA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (383, 1, 37, 2, 'STV MONTEVERDE ', '8305-5847', NULL, 'Grethel', NULL, 'astv@cpi-edu.com', '', '', '', 'MONTEVERDE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (384, 1, 37, 2, 'ASECCSS', '2222-4703', NULL, 'GABRIELA ', NULL, 'servicioalsocio2@a-v.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (385, 1, 37, 2, 'PROMOTORA DE CR', '6047-3812', NULL, 'JAMES JIMENEZ ', NULL, 'mercadeo@promotora.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (386, 1, 37, 2, 'COSTA RICA UNICA ', '8321-3141', NULL, 'Ligia ugarte ', NULL, 'direccióncomercial@costaricaunica.com', '', '', '', 'SAN PEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (387, 1, 37, 2, 'Travel Excellent ', '2523-9100', NULL, 'Marco Zarate ', NULL, 'marco@travelexcellence.com', '', '', '', 'PASEO COLON ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (388, 1, 37, 2, 'Pura Vida Transfers', '8402-6420', NULL, 'Pablo Vargas ', NULL, 'info@puravidatransfers.com ', '', '', '', 'PARRITA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (389, 1, 37, 2, 'Grupo Safari', '2224-0200', NULL, 'Gina Castillo ', NULL, 'operaciones1@safaricr.com', '', '', '', 'SAN PEDRO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (390, 1, 37, 2, 'Transportes Calderón ', '8658-6515', NULL, 'Daniel ', NULL, 'dcalderon@grupotransportescalderon.com', '', '', '', 'ALAJUELA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (391, 1, 37, 2, 'Vic Tours ', '8723-3008', NULL, 'VICTOR MORA', NULL, 'info@victourscostarica.com', '', '', '', 'BIJAGUAL', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (392, 1, 37, 2, 'Condor verde', '2588-1964', NULL, 'ALBERTO CARVAJAL', NULL, 'a.carvajal@condorverdetravel.com ', '', '', '', 'ESCAZU', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (393, 1, 37, 2, 'ADOBE ', '2542-4814', NULL, 'Lizzy Madrigal & Douglas ', NULL, 'lmadrigal@adobecar.com & rortega@adobecar.com ', '', '', '', 'BARRIO CUBA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (394, 1, 37, 2, 'Lost Beach', '4001-5226', NULL, 'Darling Y Willy Alfaro ', NULL, 'darling@lostbeachvacations.com; wylly@lostbeachvacations.com ', '', '', '', 'JACO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (395, 1, 37, 3, 'Hermosa Bungalows', NULL, NULL, 'RYAN ROLLER', NULL, 'rroller@gmail.com', '', '', '', 'HERMOSA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (396, 1, 37, 3, 'Hotel Tramonto', '2643-0303', NULL, 'Cindy Diaz ', NULL, 'reservations@hoteltramonto.com', '', '', '', 'HERMOSA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (397, 1, 37, 3, 'Meridianos ', '2248-2828', NULL, 'Jose Montoya ', NULL, 'reservaciones2@agenciameridianos.com', '', '', '', 'SAN JOSE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (398, 1, 37, 3, 'Jaco Tour Desk ', '8893-4975', NULL, 'Gabriela ', NULL, 'jacotourdesk1@gmail.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (399, 1, 37, 3, 'Travelia', '2547-2700', NULL, 'Henrry Sanchez ', NULL, 'henry.sanchez@traveliaservices.com', '', '', '', 'PASEO COLON', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (400, 1, 37, 3, 'Panacos', '2442-2121', NULL, 'KENNETH RODRÍGUEZ', NULL, 'krodriguez@viajespanacos.com', '', '', '', 'ALAJUELA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (401, 1, 37, 3, 'Hotel Copacabana', '2643-3131', NULL, 'RAQUEL CEDEÑO', NULL, 'recepcioncopacabana@hotmail.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (402, 1, 37, 3, 'Leonel Carbonel ', '8335-5009', NULL, 'Leo', NULL, 'leoncarbo@gmail.com', '', '', '', 'SAN FRANCISCO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (403, 1, 37, 3, 'Natural Expert', '2591-9727', NULL, 'Veronica', NULL, 'veronica@naturaletravel.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (404, 1, 37, 3, 'Costa Rica Biodiversity', '8328-1893', NULL, 'Alejandro Hernandez', NULL, 'ahernandez@crbiodiversitytvl.com', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (405, 1, 37, 3, 'Grandes Sueños', '2432 4072', NULL, 'Daniela Rodríguez', NULL, 'daniela@gsviajes.com', '', '', '', 'ALAJUELA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (406, 1, 37, 3, 'Iriria Tour', '8514-5536', NULL, 'ANDRES BRENES', NULL, 'iririatourscostarica@gmail.com', '', '', '', 'TURRIALBA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (407, 1, 37, 3, 'Brazos Abiertos', '2285-2290', NULL, 'GEORLENY ', NULL, 'grivera@brazosabiertoscr.com', '', '', '', 'GUADALUPE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (408, 1, 37, 3, 'Miki Travel ', '2291-4455', NULL, 'EVELYN VARGAS', NULL, 'evargas@mikitravel.net', '', '', '', 'SABANA NORTE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (409, 1, 37, 3, 'Valeri Varela - Kiwi Tours', '8319-2689', NULL, 'Valery', NULL, 'varelavaleri@gmail.com', '', '', '', 'SANTA ANA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (410, 1, 37, 3, 'Jaco Transfers', '8831 0200', NULL, 'Efarith Herrera', NULL, 'info@jacotransfers.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (411, 1, 37, 3, 'Jaco VIP', '2643-6560 ', NULL, 'Angela ', NULL, 'reservationsjacovip@gmail.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (412, 1, 37, 3, 'Hotel Playa Bejuco ', '2779-2000', NULL, 'Mildred', NULL, 'info@hotelplayabejuco.com; gerencia@hotelplayabejuco.com', '', '', '', 'PARRITA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (413, 1, 37, 3, 'Todo Travel ', '2225-0101', NULL, 'Roxana Sandoval ', NULL, 'rsandoval@todotravel.cr', '', '', '', 'GUADALUPE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (414, 1, 37, 3, 'Costa Rica D Tours', '8741-2607', NULL, 'DIEGO OVARES', NULL, 'costaricadtours@gmail.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (415, 1, 37, 3, 'Sweet Home Sweet', '2637-8700', NULL, 'ADRIANA SANCHO', NULL, 'adriana@sweethomecr.com', '', '', '', 'HERRADURA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (416, 1, 37, 3, 'Day Star ', '2630-9800', NULL, 'Rebeca ', NULL, 'info@daystarcr.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (417, 1, 37, 3, 'Hotel Alamar', '2661-4343', NULL, 'recepcion ', NULL, 'info@alamarcr.com', '', '', '', 'PUNTARENAS', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (418, 1, 37, 3, 'Intertour', '2295-9166', NULL, 'Laura Calvo ', NULL, 'lcalvoqu@credomatic.com', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (419, 1, 37, 3, 'felipe tours', '2223-8885 / 8385-8577', NULL, 'Felipe Salas ', NULL, 'felipetours@yahoo.com ', '', '', '', 'SAN JOSE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (420, 1, 37, 3, 'Scala Tours ', '2253 2444', NULL, 'KAROL BARQUERO', NULL, 'scalatours@ice.co.cr', '', '', '', 'SANPEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (421, 1, 37, 3, 'Eco Vida', '2779-4437', NULL, 'ALEJANDRA', NULL, 'office@ecovidaproperties.com', '', '', '', 'PARRITA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (422, 1, 37, 3, 'MUZO', '8722-7124', NULL, 'JAVIER SOLIS ', NULL, 'jsolis@muzutours.com', '', '', '', 'SAN PEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (423, 1, 37, 3, 'Hotel Poseidón ', '2643-1642', NULL, 'recepcion ', NULL, 'info@hotel-poseidon.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (424, 1, 37, 3, 'Costa Rica Treusures ', '2280-7457', NULL, 'Sonia ', NULL, 'info@costaricantreasures.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (425, 1, 37, 3, 'Casa Orquideas', '2283-0095', NULL, 'ERNESTO QUESADA', NULL, 'boutiquehotelcasaorquideas@gmail.com', '', '', '', 'SAN PEDRO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (426, 1, 37, 3, 'Vacasa ', '8695-7985', NULL, 'Karina Jiménez', NULL, 'karina.jimenez@vacasa.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (427, 1, 37, 3, 'Excursiones Sol, Arena ', '8970-7135', NULL, 'Berny Pacheco ', NULL, 'antonio-pacheco@hotmail.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (428, 1, 37, 3, 'Nexus ', '2663-7887', NULL, 'Gabriela ', NULL, 'GPaniagua@nexustours.com', '', '', '', 'GUANACASTE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (429, 1, 37, 3, 'Special Tours ', '2226 3247', NULL, 'GINNETHE', NULL, 'info@specialtourscostarica.com ', '', '', '', 'SAN FRANCISCO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (430, 1, 37, 3, 'Arena Dorada ', '8395-3250', NULL, 'Nasly Puello ', NULL, 'arenadorada@gmail.com', '', '', '', 'HEREDIA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (431, 1, 37, 3, 'Hotel Pangea ', '8544-1968', NULL, 'DIEGO VENEGAS', NULL, 'pangeatourscr@gmail.com', '', '', '', 'SAN JOSE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (432, 1, 37, 3, 'Apartotel La Sabana', '2220-2422', NULL, 'CHRISTIAN CALDERÓN', NULL, 'recepcion@apartotel-lasabana.com', '', '', '', 'SABANA NORTE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (433, 1, 37, 3, 'CC Travel ', '2222-6974', NULL, 'Carolina Avendaño ', NULL, 'cctravelmercadeo@gmail.com', '', '', '', 'BARRIO MEXICO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (434, 1, 37, 3, 'GAUDYS HOTEL ', '2248-0086', NULL, 'ANDRES  ', NULL, 'gaudysbackpacker@gmail.com', '', '', '', 'PASEO COLON ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (435, 1, 37, 3, 'Viajes Rosand', '2256-9429', NULL, 'Diego ', NULL, ' servicioalcliente@viajesrosand.com; grupos@viajesrosand.com; d.vargas@viajesrosand.com; sac3@viajesrosand.com; ', '', '', '', 'PASEO COLON', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (436, 1, 37, 3, 'Travel Gogusa ', '6258-9839/2201-5380', NULL, 'Eugenia Fanny - Dueña ', NULL, 'ventas@viajesgogusa.com', '', '', '', 'CARTAGO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (437, 1, 37, 3, 'Destination Costa Rica', '2528-9898', NULL, 'Adolfo Hernandez ', NULL, 'Adolfo Hernandez ', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (438, 1, 37, 3, 'Under the sun ', '22890404', NULL, 'Andres & Melida ', NULL, 'melida@adventuresunderthesun.com; info@adventuresunderthesun.com>; ', '', '', '', 'ESCAZU ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (439, 1, 37, 3, 'TICA TOUR ', '8416-9532', NULL, 'Karina Zeledón ', NULL, 'ventas@tica-tour.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (440, 1, 37, 3, 'HOTEL IBIZA ', '8492-3203', NULL, 'HUGO JACQ', NULL, 'hugojacq@net-c.com', '', '', '', 'JACO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (441, 1, 37, 3, 'DESTINOS SANDOVAL ', '8332-7008', NULL, 'WENDY ', NULL, 'destinostsandoval@hotmail.com ', '', '', '', 'BARRIO MEXICO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (442, 1, 37, 3, 'BCD Travel ', '2562-7555 ', NULL, 'María José Miranda Mora.', NULL, 'leisure.msccr@bcdtravel.com', '', '', '', 'HEREDIA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (443, 1, 37, 3, 'Leiva Tours', '4080-0175 / 8380-8558', NULL, 'Carlos Leiva ', NULL, 'mercadeo@leivatours.com', '', '', '', 'GUADALUPE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (444, 1, 37, 3, 'Ecole Travel ', '2234-1669', NULL, 'Adriana Padilla', NULL, 'adriana@ecoletravel.com', '', '', '', 'SAN PEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (445, 1, 37, 3, 'Ecoscape ', '8491-3023', NULL, 'Alfredo Vargas ', NULL, 'ecoscapetours@gmail.com', '', '', '', '', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (446, 1, 37, 3, 'Hotel Parque del Lago ', '2547 2000', NULL, 'Gustavo ', NULL, 'recepcion@hotelparquedellago.com ', '', '', '', 'PASEO COLON ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (447, 1, 37, 3, 'Transportes Hidalgo ', '2275 5553', NULL, 'Evelyn ', NULL, 'info@transportesturisticoshidalgo.com', '', '', '', 'DESAMPARADOS', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (448, 1, 37, 4, 'Costa Rica Sun Tours', '2296-7757', NULL, 'Alex / Marcela Gerente de Producto / Silvia (Geren', NULL, 'info@crsuntours.com; producto@crsuntours.com; msuarez@crsuntours.com ', '', '', '', 'LA URUCA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (449, 1, 37, 4, 'Hotel  Boutique Jade ', '2224-2455', NULL, 'Recepcionistas; Carolina', NULL, 'info@hotelboutiquejade.com; recepcion@hotelboutiquejade.com', '', '', '', 'SAN PEDRO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (450, 1, 37, 4, 'Hotel Bouganvillia', '2244-1414', NULL, 'Maritza ', NULL, 'info@hb.co.cr; recepcion@hb.co.cr; servicio.cliente@hb.co.cr', '', '', '', 'HEREDIA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (451, 1, 37, 4, 'Mayorista Akallia', '2226-4497 /8922-4878', NULL, 'Fabiola Cruz Sanchez ', NULL, 'akalliamayorista@racsa.co.cr', '', '', '', 'SAN FRANCISCO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (452, 1, 37, 4, 'Orientours', '2234-2828 / 2283-7395', NULL, 'Randall Serrano', NULL, 'rserrano@gsar.com; fchien@gsar.vom', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (453, 1, 37, 4, 'Aguas Profundas ', '8308-9791 / 2635-5037', NULL, 'Dayanna Ernest Mondol ', NULL, 'dayana.ernest@aguasprofundascr.com; info@aguasprofundascr.com ', '', '', '', 'PASEO COLON', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (454, 1, 37, 4, 'Costa Sol Rafting ', '2296-1183- 2296-1184 / 61', NULL, 'Jaohan Ballestero ', NULL, 'info@costasolrafting.com; alexisjohan@gmail.com ', '', '', '', 'LA URUCA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (455, 1, 37, 4, 'Hotel Vista Los Vocanes ', '2265-4246', NULL, 'Carlos ', NULL, 'Carlos Granados <sales@residencias-volcanes.com>', '', '', '', 'LA FORTUNA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (456, 1, 37, 4, 'INTERCAMBIOS ESTUDIANTILES ', '2270-3382 / 8348-1581', NULL, 'Francisco Javier Artavia Fernandez', NULL, 'info@intercambiosestudiantiles.net', '', '', '', 'DESAMPARADOS', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (457, 1, 37, 4, 'Eco Terra Costa Rica', '2479-8333 / 8414-3627', NULL, 'Manuel Emilio Morera ', NULL, 'sales@ecoterracostarica.com; sales2@ecoterracostarica.com; product@ecoterracostarica.com ', '', '', '', 'LA FORTUNA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (458, 1, 37, 4, 'Club del Cielo ', '2643-5392', NULL, 'Nancy', NULL, 'clubdelcielo@racsa.co.cr; info@clubdelcielo.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (459, 1, 37, 4, 'Condominios Monte Carlo', '2643-2917', NULL, 'Fany G y Cristian ', NULL, 'info@jacomontecarlo.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (460, 1, 37, 4, 'Hotel Doce Lunas ', '2643-2195 / 8856-4242', NULL, 'Brian Sam, Carmen ', NULL, 'brian@docelunas.com; carla@docelunas.com ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (461, 1, 37, 4, 'Hotel Paraiso Carlisa ', '2778-1320 / 2778-1323', NULL, 'Carlos, Taty', NULL, 'info@hotelparaisocarlisa.com ', '', '', '', 'PARRITA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (462, 1, 37, 4, 'Hotel Canciones del Mar ', '2643-3273', NULL, 'recepcion ', NULL, 'reservations@cancionesdelmar.,com; info@cancionesdelmar.com ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (463, 1, 37, 4, 'Costa Rica Dreams Makers', '2643-1450 /  cel: 8856-46', NULL, 'Stephanie Gazo ', NULL, 'info@costaricadreammakers.com; stephanie@costaricadreammakers.com; ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (464, 1, 37, 4, 'Costa Rica Gurus', '8329-2304', NULL, NULL, NULL, 'info@costaricagurus.com ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (465, 1, 37, 4, 'CRT Team Guanacaste', '2654-4585', NULL, 'Carlos Alvarado', NULL, 'galvarado@crttem.com', '', '', '', 'GUANACASTE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (466, 1, 37, 4, 'Catours  ', '8703-7522', NULL, 'Francis Taylor', NULL, 'ftaylor@catours.net', '', '', '', 'GUANACASTE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (467, 1, 37, 4, 'Costa Rica Unique Transfer and Tours', '2670-1207 / 8705-5785', NULL, 'Luis Guillermo ', NULL, 'info@crunique.com ', '', '', '', 'GUANACASTE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (468, 1, 37, 4, 'Universidad de Georgia ', '8518-6129', NULL, 'Daniel ', NULL, 'ugacrtourism@gmail.com', '', '', '', 'MONTEVERDE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (469, 1, 37, 4, 'Cámara de Turismo de Monteverde', '2645-45-45', NULL, 'Dinia', NULL, 'camaramtv@gmail.com', '', '', '', 'MONTEVERDE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (470, 1, 37, 4, 'Apartotel Tairona', '22 34 01 46 ', NULL, 'Olga Beatriz', NULL, 'gerente@taironainn.com', '', '', '', 'SAN PEDRO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (471, 1, 37, 4, 'Vía Tropical ', '2228-6959  ', NULL, 'Alexandre', NULL, 'reservations@tropicalpass.com', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (472, 1, 37, 4, 'Pacific Trade Wings', '2694-0400', NULL, 'Hugo Barrientos', NULL, 'info@pacifictradewinds.com', '', '', '', 'NUEVO ARENAL', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (473, 1, 37, 4, 'Vacation Planner', '8896 7291', NULL, NULL, NULL, 'crvacationplanner@gmail.com', '', '', '', 'HERRADURA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (474, 1, 37, 4, 'Transoto ', '8442-9064', NULL, 'Irma Soto', NULL, 'por whars app', '', '', '', 'HERMOSA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (475, 1, 37, 4, 'Vesa ACTUA División Guanacaste', '2289-0303', NULL, 'William Villavicencio ', NULL, 'william.villavicencio@vesatours.com', '', '', '', 'ESCAZU', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (476, 1, 37, 4, 'Mediterraneo ', '4700-0300 ', NULL, 'Yendry ', NULL, 'yendry@mediterraneocostarica.com', '', '', '', 'ESCAZU', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (477, 1, 37, 4, 'Waterfall Tours', '2643 1834', NULL, NULL, NULL, 'info@costaricawaterfalltours.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (478, 1, 37, 4, 'Cerro Lodge', '2427 9910 / 8448-0119', NULL, NULL, NULL, 'info@hotelcerrolodge.com', '', '', '', 'TARCOLES', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (479, 1, 37, 4, 'Hotel Courtyard Marriot', '22083000', NULL, NULL, NULL, 'cy.sjocy.frontdesk.share@courtyard.com', '', '', '', 'ESCAZU', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (480, 1, 37, 4, 'Excursiones Leda', '2537 4949', NULL, 'Kevin, doña Leda', NULL, 'excursiones.leda@hotmail.com ', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (481, 1, 37, 4, 'Viajes Oro Verde', '2237-8943 ', NULL, 'Patricia', NULL, 'ventas@visitacostarica.com', '', '', '', 'HEREDIA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (482, 1, 37, 4, 'Marta Ramírez', '8378-3245', NULL, 'Martha Ramirez ', NULL, 'martav8@hotmail.com ', '', '', '', 'San José ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (483, 1, 37, 4, 'Costa rica Holiday Rentals ', '2643-6011', NULL, 'Ana & Maricela', NULL, 'ana@costaricaholidayrentals.com; maricela@costaricaholidayrentals.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (484, 1, 37, 4, 'Condominios Monaco', '2643-3487', NULL, 'Vinyela , Ingrid ', NULL, 'monacojaco@gmail.com ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (485, 1, 37, 4, 'Hotel Jaco Laguna ', '2643-3362', NULL, 'Maír Fernanda Trejos ', NULL, 'jacolaguna@gmail.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (486, 1, 37, 4, 'Neofauna', '8416-2084', NULL, 'Randall Valverde', NULL, 'neofaunacr1@gmail.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (487, 1, 37, 4, 'Finca Luna Nueva', '2468-4006', NULL, 'Ernesto Sánchez', NULL, 'info@fincalunanuevalodge.com', '', '', '', 'LA FORTUNA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (488, 1, 37, 4, 'Costa Rica Tours Adventures', '2643-5720', NULL, 'WENDY GUERRERO', NULL, 'wendy@adventuretourscostarica.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (489, 1, 37, 4, 'Hotel Pochote', '2643-3236', NULL, 'MANFRED', NULL, 'pochote@racsa.co.cr', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (490, 1, 37, 4, 'Tukan Tours', '2643-3046', NULL, 'Jerry Cordero ', NULL, 'info@tukancostarica.com ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (491, 1, 37, 4, 'Condominios MonteCarlo', '2643-2917', NULL, 'CRISTHIAN ', NULL, 'info@jacomontecarlo.com ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (492, 1, 37, 4, 'Excrusiones gay ', '4034-0428', NULL, 'Rolando Montero ', NULL, 'ramontero@excursionesgaycr.com', '', '', '', 'SAN PEDRO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (493, 1, 37, 4, 'Laguna Azul Real State ', '2643-1273', NULL, 'Kevin Walters', NULL, 'kevin@lagunaazulrealestate.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (494, 1, 37, 4, 'Costa Rica Adventure Trails ', '8819-9050', NULL, 'DAVID BRENES', NULL, 'costaricaadventuretrails@gmail.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (495, 1, 37, 4, 'Giras Surá', '2291-3020', NULL, 'Ingrid', NULL, 'logisticasura@gmail.com', '', '', '', 'PAVAS', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (496, 1, 37, 4, 'Cuchi Transfer', '2643-3457', NULL, 'Luis Guillén ', NULL, 'cuchitransfer@hotmail.com ', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (497, 1, 37, 4, 'Transportes Ruiz', '8850-4032', NULL, 'Roylan Ruiz', NULL, 'trans_ruiz@hotmail.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (498, 1, 37, 4, 'Hotel South Beach ', '2643-3419', NULL, 'David Cedeño', NULL, 'reservations@hotelsouthbeachjaco.com', '', '', '', 'JACO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (499, 1, 37, 4, 'Consultora de Viajes Pacheco ', '2271-1024 / 2223-5193', NULL, 'Andres P', NULL, 'info@pcvtravel.com', '', '', '', 'CURRIDABAT', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (500, 1, 37, 4, 'HRG Real State ', '2637 8484', NULL, 'Luis ', NULL, 'vacation@hrgcr.com', '', '', '', 'HERRADURA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (501, 1, 37, 5, 'T&T Turrialba ', '8308-6188', NULL, 'Pablo Cespedes', NULL, 'jpcv09@yahoo.es', '', '', '', 'TURRIALBA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (502, 1, 37, 5, 'POINT TRAVEL ', '2221-5372 / 2221-5369', NULL, 'recepcion ', NULL, 'info@pointravelcr.com', '', '', '', 'BARRIO LUJAN ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (503, 1, 37, 5, 'OLYMPUS', '40353630', NULL, 'Edwin Sánchez ', NULL, 'esanchez@olympus-tours.com', '', '', '', 'GUANACASTE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (504, 1, 37, 5, 'VERTH COSTA RICA ', '7272 3230 ', NULL, 'Tatiana Montano ', NULL, 'mercadeo@vert-costa-rica.fr', '', '', '', 'ALAJUELA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (505, 1, 37, 5, 'BEACH PUNTARENAS', '8414-4888', NULL, 'Tony ', NULL, 'gerencia@hotelbeachpuntarenas.com ', '', '', '', 'PUNTARENAS ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (506, 1, 37, 5, 'Hotel Las Brisas ', '2661-4040', NULL, 'Yendry ', NULL, 'info@lasbrisashotelcr.com', '', '', '', 'PUNTARENAS ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (507, 1, 37, 5, 'Hotel Alamar', '2661-4343 ', NULL, 'Recepcion ', NULL, 'info@alamarcr.com>', '', '', '', 'PUNTARENAS ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (508, 1, 37, 5, 'Horizontes', '4052-5850', NULL, 'Angelina Castro ', NULL, 'acastro@horizontes.com', '', '', '', 'Paseo Colón ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (509, 1, 37, 5, 'CLOUD FORESTE ', '2645-5088', NULL, 'Wilberth Parajeles', NULL, 'gerencia@cloudforestlodge.com', '', '', '', 'MONTEVERDE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (510, 1, 37, 5, 'HERTZ ', NULL, NULL, 'Greivin Solis ', NULL, 'greivin@hertzcr.com', '', '', '', 'PASO COLON ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (511, 1, 37, 5, 'WITROPA TRAVEL ', '8332-1378', NULL, 'willem ', NULL, 'info@witropa.com ', '', '', '', 'CIUDAD COLON ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (512, 1, 37, 5, 'DOVER TE LLEVA', '8666 8666', NULL, 'Gregory ', NULL, 'dovertelleva@gmail.com', '', '', '', 'GUAPILES', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (513, 1, 37, 5, 'CARTAGO TRAVEL ', '8972-7619', NULL, 'Doña Marìa ', NULL, 'ecalvo@cartagotravel.com', '', '', '', 'CARTAGO', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (514, 1, 37, 5, 'PASAPORTE UNIVERSAL ', '2551-3000', NULL, 'Sandra Calvo ', NULL, 'info@pasaporteuniversal.com', '', '', '', 'CARTAGO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (515, 1, 37, 5, 'UNIQUE ADVENTURES', '2240-7212', NULL, 'LOANA ', NULL, 'info@uniquecr.com ', '', '', '', 'ZAPOTE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (516, 1, 37, 5, 'ALOVA TOURS ', '8813-8991', NULL, 'German Rosales', NULL, 'info@alovatours.com', '', '', '', 'PUNTARENAS ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (517, 1, 37, 5, 'JM Guanacaste Travel ', '8390 8042', NULL, NULL, NULL, 'jmguanacastetravel@gmail.com.', '', '', '', 'Guanacaste ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (518, 1, 37, 5, 'JM Costarican Travel ', '8616-2529', NULL, 'Maybel ', NULL, ' jm.costaricantravel@gmail.com', '', '', '', 'Desamparados ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (519, 1, 37, 5, 'Heba Tours ', '85339689', NULL, 'Marcela ', NULL, NULL, '', '', '', 'Guapiles', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (520, 1, 37, 5, 'COSTA RICA ONE TOURS', '4081.2242  ', NULL, 'JAIME MACKLENZIE ', NULL, 'jmck@costaricaonetour.com', '', '', '', 'SABANA SUR ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (521, 1, 37, 5, 'Brisas del Valle ', ' 8391 8743', NULL, 'Don Roble ', NULL, 'brisasdelvalle@hotmail.es', '', '', '', 'Cartago ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (522, 1, 37, 5, 'Hermosa Beach House ', '2643-7178', NULL, 'Suisy ', NULL, 'info@hbhcr.com ', '', '', '', 'HERMOSA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (523, 1, 37, 5, 'Canciones del Mar ', '2643-3273', NULL, 'recepción ', NULL, 'reservations@cancionesdelmar.com ', '', '', '', 'JACO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (524, 1, 37, 5, 'Hotel Fuego del Sol ', '2643-7171', NULL, 'Yuliana - Gerente ', NULL, 'info@fuegodelsolhotel.com ', '', '', '', 'HERMOSA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (525, 1, 37, 5, 'Tortugas del Mar ', '2643-7132', NULL, 'Nora Gonzalez ', NULL, 'info@tortugadelmar.net, contact@tortugadelmar.net ', '', '', '', 'HERMOSA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (526, 1, 37, 5, 'Hotel Sandpiper Inn ', '2643-7042', NULL, 'Yorlen ', NULL, 'greg@sandpipercostarica.com ', '', '', '', 'HERMOSA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (527, 1, 37, 5, 'Hotel Marea Brava ', '2643 7111', NULL, 'Recepcionista', NULL, 'info@mareabravacostarica.com', '', '', '', 'HERMOSA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (528, 1, 37, 5, 'Catours ', '4010-1004', NULL, 'Grettel López ', NULL, 'operations@catours.net ', '', '', '', 'GUANACASTE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (529, 1, 37, 5, 'CRT Team ', '2654-4585', NULL, 'Carlos Alvarado ', NULL, 'galvarado@crtteam.com ', '', '', '', 'GUANACASTE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (530, 1, 37, 5, 'Agencia de Viajes  Organización Internacional ONU ', '2212-5303 2212-5344', NULL, 'Adrian Villablo', NULL, 'avillalobos@iom.int', '', '', '', 'SABANA ESTE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (531, 1, 37, 5, 'Tropical Swiss ', '8860363', NULL, 'Sthephane ', NULL, 'Info@swisstropical.ch', '', '', '', 'ESCAZU ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (532, 1, 37, 5, 'NAMU ', '4031-7700', NULL, 'Adriana Morales ', NULL, 'adrianamorales@giduesouth.com ', '', '', '', 'SABANA OESTE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (533, 1, 37, 5, 'BCD Travel Corporation ', '2562-7600', NULL, 'Andrés E. Vega ', NULL, ' anacelina.vargas@bcdtravel.com;  kattia.umana@bcdtravel.com', '', '', '', 'ULTRA PARK ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (534, 1, 37, 5, 'Tica Tour ', '8416-9532', NULL, 'Karina Zeledon ', NULL, 'ventas@tica-tour.com', '', '', '', 'SAN JOSE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (535, 1, 37, 5, 'sinwa tour ', '2645-6975', NULL, 'Sindy ', NULL, 'sinwatourdreams@gmail.com', '', '', '', 'MONTEVERDE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (536, 1, 37, 5, 'GECKO TRAIL ', '2756-8159', NULL, 'Megan ', NULL, 'reserve@geckotrail.com', '', '', '', 'PUERTO VIEJO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (537, 1, 37, 5, 'Viajes Fantasy ', '63 83 60 09', NULL, 'Kathya Sibaja ', NULL, 'reservaciones@viajesfantasycr.com', '', '', '', 'SAN JOSE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (538, 1, 37, 5, 'Kal Travel Costa Rica ', '6015-3465', NULL, 'Pablo Gomez ', NULL, 'pablo.gomez@kaltravelcr.com', '', '', '', 'WEB ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (539, 1, 37, 5, 'Tica Bus Tours ', '2296 9788', NULL, 'Maussenkh Quintero', NULL, 'mquintero@ticabuscr.onmicrosoft.com', '', '', '', 'URUCA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (540, 1, 37, 5, 'Giras Educativas ', '7145-4982', NULL, 'Angie Quiròs ', NULL, 'amanitadmi@gmail.com', '', '', '', 'WEB ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (541, 1, 37, 5, 'Maple Tours ', '8505-8856', NULL, 'CARLOS ARCE', NULL, 'mapletour2003@yahoo.com', '', '', '', 'WEB ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (542, 1, 37, 5, 'Tico Word Travel ', '85442513', NULL, 'Carlos Jimènez', NULL, 'cjimenez@ticoworldtravel.com', '', '', '', 'WEB ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (543, 1, 37, 5, 'Top Costa Rica Extranet ', '8819 0276', NULL, 'Deyvis ', NULL, 'deyvis.brenes@top.cr', '', '', '', 'WEB ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (544, 1, 37, 5, 'MyM Visit Costa Rica ', '8972 8569/87864827', NULL, 'Janned Mayorga', NULL, 'mymvisitacostarica@hotmail.com', '', '', '', 'WEB ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (545, 1, 37, 5, 'Muzu ', '2722-7184', NULL, 'Stephanie ', NULL, 'shernandezag@gmail.com; jsolis@muzutours.com', '', '', '', 'SAN PEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (546, 1, 37, 5, 'ADVENTURE UNDER THE SUN ', '22890404', NULL, 'Andrès', NULL, 'info@adventuresunderthesun.com', '', '', '', 'ESCAZU ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (547, 1, 37, 5, 'TICOS A PATA ', '8841 8076', NULL, 'Recepcion ', NULL, 'info@ticosapata.com', '', '', '', 'MORAVIA ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (548, 1, 37, 5, 'AGENCIA DE VIAJES MLSG ', '8372 5780', NULL, NULL, NULL, 'mariasa@hotmail.com', '', '', '', 'ESCAZU', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (549, 1, 37, 5, 'INSIDE ', '7297 0820', NULL, 'DIEGO VARGAS ', NULL, 'info@insidetourscr.com', '', '', '', 'SAN PEDRO ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (550, 1, 37, 5, 'PURA VIDA TRIPS ', '2479-9046', NULL, 'JIMMY ', NULL, '; travel@puravidatrips.com', '', '', '', 'SAN CARLOS ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (551, 1, 37, 5, 'MI VIAJE COSTA RICA ', '83602419', NULL, 'DANIEL ', NULL, 'info@mivioajecostarica.com ', '', '', '', 'SAN CARLOS', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (552, 1, 37, 5, 'Chonte Travel ', '7295 4038', NULL, 'BRYAN Y HERMANO ', NULL, 'chonetetravel@gmail.com', '', '', '', 'Heredia ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (553, 1, 37, 5, 'Toño Travel ', '7177 5804', NULL, 'Antonio ', NULL, 'tonotravelinfo@gmail.com', '', '', '', 'Heredia ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (554, 1, 37, 5, 'Educatours ', '2475 6622', NULL, 'Lic. Arturo / Francisco ', NULL, 'touroperadora@iacsa.cr', '', '', '', 'San Carlos ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (555, 1, 37, 5, 'GRUPO TRANSPORTE VINDAS', '8860-4242/ 62115353 / 727', NULL, 'DIEGO VINDAS', NULL, 'grupotransporte@gmail.com ', '', '', '', 'web ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (556, 1, 37, 5, 'MILENIAL TRAVEL ', '2290 3090', NULL, 'KATHIA ', NULL, 'ventas@milenialtravel.com', '', '', '', 'SABANA SUR ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (557, 2, 38, 2, 'ACOT', '2280-1025', NULL, 'Merlyn Fernandez', NULL, 'info@acot.co.cr', '', '', '', 'Zapote', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (558, 2, 38, 2, 'ANEJUD', '2222-7200', NULL, 'Norman Rodrìguez', NULL, 'nanejud@gmail.com ', '', '', '', 'San Jose centro', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (559, 2, 38, 2, 'ASDEMAC (Mc DONALD^S)', '2248-0621', NULL, 'Ariela Soto', NULL, 'ariela.soto@asdemac.net', '', '', '', 'Paseo Colon', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (560, 2, 38, 2, 'ASEALUMA', '2242=2995', NULL, 'Andres Padilla', NULL, 'apadilla@aluma.com', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (561, 2, 38, 2, 'ASEBIMBO', '2562-2245', NULL, 'Ana Yansi Brenes', NULL, 'ana.brenes@grupobimbo.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (562, 2, 38, 2, 'ASECARGILL - PIPASA', '4032-3280', NULL, 'Henry Chaves /Katherine Hernàndez', NULL, 'hchaves@asecargill.com ', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (563, 2, 38, 2, 'ASECONCENTRIX ', '2519-6787', NULL, 'Lineth Morales', NULL, 'lineth.morales@concentrix.com', '', '', '', 'Pavas y Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (564, 2, 38, 2, 'ASECOTRES', '2242-9657', NULL, 'Francella Salazar', NULL, 'asecotres@3r.cr', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (565, 2, 38, 2, 'ASECRUC', '2253-3106', NULL, 'Gustavo Arauz', NULL, ' info@asecruc.com', '', '', '', 'Zapote, 100 metros Norte de Casa Presidencial', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (566, 2, 38, 2, 'ASEDAVIVIENDA', '2287-1000 Ext 4846', NULL, 'Cinti Moya Pecou', NULL, 'cinty.moya@davivienda.cr', '', '', '', 'San Jose centro', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (567, 2, 38, 2, 'ASEGA GRIFFTITH', '2277-7230', NULL, 'Mayela Rodriguez', NULL, 'asega@griffithlaboratories.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (568, 2, 38, 2, 'ASEGESSA (PERIMERCADOS)', '2241-7655', NULL, 'Nathalia Valverde', NULL, 'servicioalclienteasegessa@gesacr.com', '', '', '', 'Guadalupe', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (569, 2, 38, 2, 'ASEIMPROSA', '2233=0143', NULL, 'Jhonny Flores', NULL, 'info@aseimprosa.com', '', '', '', 'Sabana', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (570, 2, 38, 2, 'ASEMAC.', '2290-7049', NULL, 'Luisa Solano / Rosa Fallas', NULL, 'lsolano@asemac.co.cr', '', '', '', 'La Uruca, en edificio de Aviación Civil.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (571, 2, 38, 2, 'ASEMINA.', '2291-3000', NULL, 'Don Jorge Calderòn', NULL, 'jcalderon@asemina.com ', '', '', '', 'La Uruca, instalaciones del INA frente al Parque de Diversiones.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (572, 2, 38, 2, 'ASEMONDELEZ', '2298-5103', NULL, 'Jorge Hernandez', NULL, 'jorge.hernandez@mondelez.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (573, 2, 38, 2, 'ASEMTACO', '2298-3568', NULL, 'Roberth Delgado', NULL, 'roberth.delgado@asemtaco.co.cr', '', '', '', 'Heredia, Rivera de Belén, frente a la FIRESTONE.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (574, 2, 38, 2, 'ASEPBS.', '2506-3169', NULL, 'Mario Sánchez', NULL, 'mario.sanchez@grouppbs.com ', '', '', '', 'Escazú, Autopista Próspero Fernández, del peaje 600m. Oeste, calle pararela, a mano derecha. Contigu', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (575, 2, 38, 2, 'ASEPG (Procter and Gamble)', '2204-9790', NULL, 'Noren Alfaro', NULL, 'nalfaro@asepg.com', '', '', '', 'Santa Ana Forum 1', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (576, 2, 38, 2, 'ASEPRISMAR', '4702-8117', NULL, 'Maricel Jimènez', NULL, 'marisel.jimenez@aseprismar.com', '', '', '', 'Zapote, detrás de Prismart, oficinas de la asociación.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (577, 2, 38, 2, 'ASEREY (Pollos Rey)', '2439-1212', NULL, 'Jose Miguel Jimènez', NULL, 'promotor@aserey.net', '', '', '', 'Alajuela Coyol', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (578, 2, 38, 2, 'ASESAVA', '2284-8946', NULL, 'Don Alvaro Soto', NULL, 'asesava@savacr.com ', '', '', '', 'La Uruca, en instalaciones de la HONDA', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (579, 2, 38, 2, 'ASESYL / Asoc. de Empleados de Sylvania', '2210-7674 / 2210-7676', NULL, 'Heidy Mora', NULL, 'heidy.mora@havells-sylvania.com ', '', '', '', 'Pavas, 100 metros al sur de la Embajada de U.S.A', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (580, 2, 38, 2, 'ASETERRA', '4030-7002', NULL, 'Ernesto Retana / Francis Vasquez', NULL, 'eretana@hulteccr.com', '', '', '', 'Escazu Guachipelin', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (581, 2, 38, 2, 'ASETRABAJO.', '2223-5450', NULL, 'Vanessa Calderon', NULL, 'vanessa.calderon.asetrabajo@gmail.com', '', '', '', 'San José, Bª Tournon, Edificio del Ministerio de Trabajo.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (582, 2, 38, 2, 'ASOAGRO', '2212-9585 /84', NULL, 'Sebastian Hernàndez', NULL, 'shernandezb@abonosagro.com', '', '', '', 'Tibàs Colima', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (583, 2, 38, 2, 'ASOAMAZON', '2562-9032', NULL, 'Leidy Lòpez', NULL, 'leidy@amazon.com', '', '', '', 'Heredia Lagunilla', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (584, 2, 38, 2, 'ASOC. SOLIDARISTA DE SERVIDORES JUDICIALES (ASOSEJUD)', '2221-6819 ', NULL, 'Stephani Rugama', NULL, 'auxiliar@asosejud.org ', '', '', '', 'San José Bª Gonzalez Lahmann, 50 mts sur de casa Matute Gomez', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (585, 2, 38, 2, 'ASOCEAM (UCIMED)', '2296-3944', NULL, 'Silvia Fernàndez', NULL, 'asoceam@ucimed.com', '', '', '', 'Sabana', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (586, 2, 38, 2, 'ASOCIACION CONTRALORIA', '2501-8751', NULL, 'Geisy Vindas Quiròs', NULL, 'geisy.vindas@cgr.go.cr', '', '', '', 'Sabana en edif. Contralorìa', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (587, 2, 38, 2, 'ASOCORPD', '2248-3582', NULL, 'Alberto Ramìrez', NULL, 'administracion@asocorpd.org', '', '', '', 'Sabana Centro Colòn', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (588, 2, 38, 2, 'ASOELS (Laboratorios Stein)', '2537-4747', NULL, 'Ana Godinez', NULL, 'agodinez@labstein.com', '', '', '', 'Cartago, La Lima', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (589, 2, 38, 2, 'ASOERES', '2221-9754', NULL, 'Marianela Alpizar', NULL, 'malpizar@qsr.bz', '', '', '', 'Paseo Colòn', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (590, 2, 38, 2, 'ASOHP', '2509-9625', NULL, 'Yojhan Cubero', NULL, 'yojhan.cubero@hp.com', '', '', '', 'HEREDIA-AMERICA FREE ZONE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (591, 2, 38, 2, 'ASOHTRAUMA', '4035-6568', NULL, 'Dr. Carlos Rios', NULL, 'carlosrios@asohtrauma.com', '', '', '', 'La Uruca detrás de Hosp Mexico', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (592, 2, 38, 2, 'ASOMECO', '2519-7185', NULL, 'Elizabeth Zùñiga', NULL, 'elizabeth.zuniga@constructorameco.com ', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (593, 2, 38, 2, 'ASONOVA (NOVAPARK)', '2438-9203', NULL, 'Gerardo Ramìrez', NULL, 'gramirez@asonovacr.com ', '', '', '', 'Alajuela Coyol Novapark', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (594, 2, 38, 2, 'ASOPLYCEM', '2591-1292', NULL, 'Marvin Porras', NULL, 'gerencia@asoplycem.com', '', '', '', 'Cartago, Paraiso', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (595, 2, 38, 2, 'ASOTELETECH.', '2507-5803', NULL, 'Lourdes Sancho', NULL, 'asoteletech02@teletech.com ', '', '', '', 'Guadalupe Calle Blancos, zona franca este, 150 norte de la antigua Durman Esquivel.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (596, 2, 38, 2, 'ASOUNA', '2277-3030', NULL, 'Marìa de los Angeles Santamarìa', NULL, 'asouna@una.cr', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (597, 2, 38, 2, 'CANATUR', '2234-6222', NULL, 'Melba Lewis', NULL, 'mlewis@canatur.org ', '', '', '', 'Zapote, de la Universidad Veritas, 200 metros al Este', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (598, 2, 38, 2, 'Colegio Cirujanos Dentistas', '2256-3100', NULL, 'Dr. Miguel Aguilar', NULL, 'maguilar@colegiodentistas.org ', '', '', '', 'San José Barrio La California, 150 Sur De La Bomba Primavera', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (599, 2, 38, 2, 'COLEGIO PROF PSICÒLOGOS DE C.R.', '2271-3101 Ext 115', NULL, 'Marco Ramìrez', NULL, 'proyeccioninstitucional@psicologiacr.com', '', '', '', 'Tres Rìos', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (600, 2, 38, 2, 'COLYPRO', '2539-9717', NULL, 'Gabriel Davila / Candy Araya Calvo', NULL, 'gdavila@colypro.com caraya@colypro.com', '', '', '', 'San Jose detrás de Funerarias del Recuerdo', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (601, 2, 38, 2, 'COOPEBANPO', '2212-5425', NULL, 'Jackeline Murillo', NULL, 'jmurillo@coopebanpo.fi.cr', '', '', '', 'Paseo Colòn', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (602, 2, 38, 2, 'COOPECOBANA ', '2212-2801', NULL, 'Mauricio Gòmez', NULL, 'mgomezal@bncr.fi.cr', '', '', '', 'San Josè centro', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (603, 2, 38, 2, 'Coopefyl R.L', '2242-2809', NULL, 'Ivan Gamboa Gonzalez', NULL, 'igamboa@coopefyl.fi.cr ', '', '', '', 'Sabana Norte, Del parqueo del ICE 125 Metros Oeste y 125 Norte', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (604, 2, 38, 2, 'GOLLO', '2437-4996', NULL, 'Jonathan Madrigal Venegas', NULL, 'gollo_viajes@unicomer.com', '', '', '', 'Alajuela', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (605, 2, 38, 2, 'MAR VIVA', '2290-3647', NULL, 'Xiomara Cambronero', NULL, 'xiomara.cambronero@marviva.net', '', '', '', 'Rohrmoser', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (606, 2, 38, 2, 'TEK EXPERTS', '6057-2662', NULL, 'Jose Tenorio', NULL, 'jose.tenorio@tek-experts.com', '', '', '', 'San Pedro', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (607, 2, 38, 3, 'ANIC', '2255-0167', NULL, 'Rebeca Vargas', NULL, 'promo1@sindicatoanic.com', '', '', '', 'San Jose centro', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (608, 2, 38, 3, 'ASAMTEC', '2440-9833', NULL, 'Shirley Castro', NULL, 'shirley.castro@asamtec.co.cr', '', '', '', 'Alajuela Coyol', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (609, 2, 38, 3, 'ASDEICE', '2221-2364', NULL, 'Jonathan Giutta', NULL, 'comunicacion@asdeice.org ', '', '', '', 'Paseo Colón de Torre Mercedes, 300 Norte y 75 Este, mano izquierda.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (610, 2, 38, 3, 'ASDEPSA /ASOPOZUELO', '2299-1363', NULL, 'Laura Mora / Miguel ', NULL, 'lmora@pozuelo.cr / mfvillalobos@pozuelo.cr', '', '', '', 'La Uruca en Pozuelo', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (611, 2, 38, 3, 'ASEBOSTON (BOSTON Scientific)', '2436-8892', NULL, 'Marisol Chaves', NULL, 'marisol.chavesperez@bsci.com', '', '', '', 'Alajuela Coyol', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (612, 2, 38, 3, 'ASECATOLICA.', '2246-3589', NULL, 'Doña Nidia', NULL, 'asecatolica@hospitallacatolica.com ', '', '', '', 'Guadalupe Hospital la Católica San Antonio de Guadalupe', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (613, 2, 38, 3, 'ASECONVERGYS', '2508-2103', NULL, 'Marisol Acosta', NULL, 'asociacion@convergys.com', '', '', '', 'HEREDIA-AMERICA FREE ZONE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (614, 2, 38, 3, 'ASEDP Dos Pinos', '2437=5135', NULL, 'Sugey Reyes', NULL, 'sreyes@asedp.cr', '', '', '', 'AlajuelaCoyol', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (615, 2, 38, 3, 'ASEFIRE', '2209=7495', NULL, 'Patricia Fuentes', NULL, 'fuentespatricia@la-bridgestone.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (616, 2, 38, 3, 'ASEGQ GRUPO Q', '2255-3526', NULL, 'Nubia Monge', NULL, 'nubia.monge@aseg-q.com', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (617, 2, 38, 3, 'ASEHNN.', '2248-0760', NULL, 'Gerardina Vìquez', NULL, 'asociacion@hnn.sa.cr / gviquezb@hnn.sa.cr', '', '', '', 'Paseo Colón Hospital Nacional de Niños, segundo piso.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (618, 2, 38, 3, 'ASEHOLCIM', '2550-8200', NULL, 'Ana Mejia', NULL, 'ana.mejia@holcim.com', '', '', '', 'Cartago Agua Caliente', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (619, 2, 38, 3, 'ASEIBM', '2509-6916', NULL, 'Josef Daniel Ibarra', NULL, 'aseibmtr@cr.ibm.com', '', '', '', 'Heredia America Free Zone', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (620, 2, 38, 3, 'ASEMUCAP', '2550-8584', NULL, 'Lourdes Sancho Zuñiga', NULL, 'msancho@mucap.fi.cr', '', '', '', 'Cartago', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (621, 2, 38, 3, 'ASENESTLE', '2590=2826', NULL, 'Ana Leon', NULL, 'ana.leon@cr.nestle.com', '', '', '', 'Cartago', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (622, 2, 38, 3, 'ASESUPERIOR ', '2010-5380', NULL, 'Danny Gòmez Torres', NULL, 'dgomez@Agrosuperior.com', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (623, 2, 38, 3, 'ASETRANS (TRANSMERQUIM)', '2537-0010', NULL, 'Sharon Sànchez', NULL, 'ssanchez@gtm.net ', '', '', '', 'Cartago, Ochomogo en instalaciones de TRANSMERQUIM', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (624, 2, 38, 3, 'ASOBANCOSTA', '2542-4203', NULL, 'Julio Cesar Rodrìguez', NULL, 'jrodriguez@asobancosta.com', '', '', '', 'San Josè centro', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (625, 2, 38, 3, 'ASOBONA (Bolsa Nacional de Valores)', '2204-4715', NULL, 'Maria Teresa Torres', NULL, 'mtorres@bolsacr.com', '', '', '', 'Santa Ana, Forum 1', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (626, 2, 38, 3, 'ASOCOGA / (AVON)', '2228-5857', NULL, 'Herberth Camacho', NULL, 'herberth.camacho@avon.cr ', '', '', '', 'ESCAZU, 1 KM AL SUR DEL LICEO DE ESCAZU', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (627, 2, 38, 3, 'ASOCUESTAMORAS', '2520-6172', NULL, 'Diego Alonso Zùñiga', NULL, 'asocm@cuestamoras.com', '', '', '', 'Santa Ana Forum', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (628, 2, 38, 3, 'ASODEGRA', '2259-5555 ext 1999', NULL, 'Yesenia  Araya', NULL, 'asociacion@lasgravilias.com', '', '', '', 'DESAMPARADOS-PORVENIR', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (629, 2, 38, 3, 'ASODEMASA', '2543=1430', NULL, 'Marvin Rodriguez', NULL, 'mrodriguez@demasa.com', '', '', '', 'Pavas.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (630, 2, 38, 3, 'ASOERES', '2221-9754', NULL, 'Marianela Alpizar', NULL, 'malpizar@qsr.bz', '', '', '', 'Paseo Colòn', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (631, 2, 38, 3, 'ASOICT', '2299-5800 Ext 5957', NULL, 'Ivaniia Chacòn', NULL, 'asoict.ac@tigomail.cr', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (632, 2, 38, 3, 'ASOPELON', '2282-1314 Ext 210', NULL, 'Odil Arroyo', NULL, 'asopelon@grupopelon.com', '', '', '', 'Santa Ana Lindora', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (633, 2, 38, 3, 'ASOPLASMO (PLASTICOS MODERNOS)', '2293-4010', NULL, 'Alvaro Barrantes', NULL, 'asoplasmo@plasticos-modernos.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (634, 2, 38, 3, 'ASOREN', '2202=0795', NULL, '2202=0795', NULL, 'jgarciar@rnp.go.cr', '', '', '', 'Zapote Registro Nacional', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (635, 2, 38, 3, 'ASORICOH', '2210-9318 / 8720-7540', NULL, 'Jimmy Gamboa', NULL, 'jimmy.gamboa@ricoh-la.com', '', '', '', 'Heredia América Free Zone', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (636, 2, 38, 3, 'ASOROCHE', '2298-1613', NULL, 'Juan Carlos Alfaro', NULL, 'asorocheservicios@gmail.com', '', '', '', 'Escazu', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (637, 2, 38, 3, 'ASOSIEMENS', '2287-5211', NULL, 'William Chacon', NULL, 'william.chacon@asosiemens.co.cr', '', '', '', 'La Uruca después de Sava', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (638, 2, 38, 3, 'ASOTELETICA', '2210-1316', NULL, 'Aura Araya', NULL, 'a.araya@teletica.com', '', '', '', 'Sabana', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (639, 2, 38, 3, 'ASOTERADYNE', '2509-3000', NULL, 'Patricia Castro', NULL, 'asoter@notes.teradyne.com', '', '', '', 'HEREDIA-AMERICA FREE ZONE', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (640, 2, 38, 3, 'BANANERA TÁMESIS S.A.', '2253-0087 / 2253-0132 ', NULL, 'Don Rafael Muñoz', NULL, 'rmunoz@grupocalinda.com ', '', '', '', 'San Pedro de Montes de Oca, de la entrada al parqueo del Mall San Pedro, 150m al oeste. Edificio Alv', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (641, 2, 38, 3, 'Colegio Prof. En Ciencias Economicas ', '2253-0214', NULL, 'Jorge Sánchez', NULL, 'servicioalcolegiado@cpcecr.com ', '', '', '', 'Costado Sur Oeste Del Monumento A La Bandera', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (642, 2, 38, 3, 'COOPEAYA', '2258-8444', NULL, 'Stefany Perry', NULL, 'sperry@coopeaya.fi.cr', '', '', '', 'San Josè.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (643, 2, 38, 3, 'COOPECAJA', '2542-1000', NULL, 'Tatiana Bravo', NULL, 'tbravo@coopecaja.fi.cr', '', '', '', 'San José centro', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (644, 2, 38, 3, 'COOPECO', '2210-0300 Ext 0312', NULL, 'Miguel Blanco', NULL, 'mblanco@coopecorl.com', '', '', '', 'Sabana', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (645, 2, 38, 3, 'ESCUELA DE FUTBOL WANCHOPE', '8450-3443', NULL, 'Carlos Wanchope', NULL, 'carloswanchopecr@gmail.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (646, 2, 38, 3, 'Ingeniería PCR', '2241-1220 / 2241-1904', NULL, 'Heiner Sandoval', NULL, 'hsandoval@ingenieriapcr.com ', '', '', '', 'Heredia, Santo Domingo carretera a Limón, de la entrada a Parasito, 100 metros Oeste y 100 Sur, casa', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (647, 2, 38, 3, 'INSEPRO.', '2235-7434', NULL, 'Orlando Madrigal', NULL, 'omadrigal@groupinsepro.co.cr ', '', '', '', 'Guadalupe Calle Blancos, de la esquina noroeste de la plaza , tercera entrada a mano derecha, 50 nor', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (648, 2, 38, 3, 'MICE CENTROAMERICA', '7014=3690', NULL, 'Leonel Bonilla', NULL, 'leonel@micecentroamerica.com', '', '', '', 'Cartago', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (649, 2, 38, 4, 'ANTTEC', '2223-6884 / 2257-2797 / 2', NULL, 'Dayana Villalobos', NULL, 'dvillalobos@anttec.org ', '', '', '', 'San José Bº Lujan Calle 21, de Casa Matute Gomez, 300 mts Sur, frente al Patronato casa azul con bla', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (650, 2, 38, 4, 'ASEABSA ', '2212-9167', NULL, 'Kristel Avila', NULL, 'kavila@freshdelmonte.com', '', '', '', 'San Josè', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (651, 2, 38, 4, 'ASECLOROX', '2216=5607', NULL, 'Lourdes Castillo', NULL, 'aseclorox@clorox.com', '', '', '', 'Curridabat', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (652, 2, 38, 4, 'ASEDEMASA', '2543=1430', NULL, 'Susy Quiros', NULL, 'squirosp@demasa.com', '', '', '', 'Pavas', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (653, 2, 38, 4, 'ASEHOLOGIC', '2436=2611', NULL, 'Francine Salazar Julio Rodrìguez', NULL, 'Francine.Salazar@hologic.com', '', '', '', 'Alajuela Coyol', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (654, 2, 38, 4, 'ASEHOSPIRA', '2209-5000 EXT 2014', NULL, 'Victor Barboza', NULL, 'asehospira@hospira.com v.barboza@hospira.com', '', '', '', 'Alajuela Coyol', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (655, 2, 38, 4, 'ASEIMO (Importadora Monge)', '2440-9085', NULL, 'Magaly Segura', NULL, 'msegura@aseimocr.net', '', '', '', 'Alajuela', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (656, 2, 38, 4, 'ASEOESTE', '2506-1003', NULL, 'Yesennia Aguilar', NULL, 'yesennia.aguilar@westernunion.com aseoeste@westernunion.com', '', '', '', 'Santa Ana Lindora Forum 2', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (657, 2, 38, 4, 'ASEPANDUIT', '2495-6424', NULL, 'Bernal Corrales', NULL, 'cr-bcm@panduit.com', '', '', '', 'Grecia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (658, 2, 38, 4, 'ASEPPSA (POPULAR PENSIONES)', '2010-0407', NULL, 'Katherine o Jesús', NULL, 'aseppsa@bp.fi.cr / kmonge@bp.fi.cr', '', '', '', 'San José centro frente al Correo en san José, edificio Club Unión, 2do piso', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (659, 2, 38, 4, 'ASETACA', '2242-1197 /2220-0930', NULL, 'Carolina Blanco', NULL, 'ablanco@asetaca.co.cr', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (660, 2, 38, 4, 'ASETELEPERFORMANCE ', '2204-4533', NULL, 'Cristy Garbanzo', NULL, 'cristy.garbanzog@teleperformance.com', '', '', '', 'Santa Ana', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (661, 2, 38, 4, 'ASETRACTACO', '2220-2222 / 8720-2780', NULL, 'Freddy Balnco', NULL, 'fblanco@tractaco.com', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (662, 2, 38, 4, 'ASETT', '2226-4142', NULL, 'Isaac Sánchez /Eduardo Gutiérrez', NULL, 'asett@grupotent.com / isanchez@grupotent.com / egutierrez@grupotent.com', '', '', '', 'San Francisco de Dos Rios, 200 norte, 150 este y 50 norte de la Escuela República Dominicana.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (663, 2, 38, 4, 'ASEUNED', '2234=2840', NULL, 'William Aguilar', NULL, 'w.aguilar@aseuned.com', '', '', '', 'San Pedro', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (664, 2, 38, 4, 'ASEVENTION', '2239-5645', NULL, 'Marco Blanco', NULL, 'asemedt@ventionmedical.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (665, 2, 38, 4, 'ASEVISIÒN', '2236-8801', NULL, 'Catalina Rizzo', NULL, 'crizzo@cablevision.co.cr', '', '', '', 'Curridabat', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (666, 2, 38, 4, 'ASFUJUPEMA (Junta de Pensiones del Magisterio)', '2221-2521', NULL, 'Luz Elena Romero', NULL, 'lromero@pensiones.co.cr', '', '', '', 'san José centro frente a Casa Matute', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (667, 2, 38, 4, 'ASOAMERICA', '2509-9905', NULL, 'Jorleny Calvo', NULL, 'jcalvo@amco.co.cr', '', '', '', 'Heredia America Free Zone', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (668, 2, 38, 4, 'ASOBACEN ', '2243-4288', NULL, 'Verònica Castro', NULL, 'castrouv@bccr.fi.cr', '', '', '', 'San Josè', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (669, 2, 38, 4, 'ASOC PARQUE DIVERSIONES', '2242=9200', NULL, 'Andrea Lopez', NULL, 'info@asepadi.com', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (670, 2, 38, 4, 'ASOCOVI (MEDTRONIC)', '2436-5919', NULL, 'Laura Medrano', NULL, 'laura.medrano@asocovi.com', '', '', '', 'Alajuela Coyol', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (671, 2, 38, 4, 'ASODELL', '2239-6279', NULL, 'Patricia Alvarado', NULL, 'Patricia_Alvarado@DellTeam.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (672, 2, 38, 4, 'ASOFLORIDA ICE AND FARM', '2437-6666 /6710', NULL, 'Lorena Murillo', NULL, 'lorena.murillo.carvajal.fifco.com', '', '', '', 'Alajuela Rìo Segundo', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (673, 2, 38, 4, 'ASOGLAXO', '2206-6287', NULL, 'Flor Quiroz / Don Ricardo', NULL, 'info@asegsk.com / fquiroz@asegsk@gmail.com', '', '', '', 'Sabanilla', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (674, 2, 38, 4, 'ASOLION', '2209-8200', NULL, 'Jose o Pablo', NULL, 'asolion@resourses-cr.com ', '', '', '', 'Heredia 700 metros este del mall Real Cariari edificio Eurocenter 2da etapa 3er piso', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (675, 2, 38, 4, 'ASOSYKES', '2298-2222', NULL, 'Olga Sanchez', NULL, 'olga.c.sanchez@sykes.com', '', '', '', 'Hatillo', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (676, 2, 38, 4, 'ASOTOTAL', '2279-7777', NULL, NULL, NULL, 'asototalcr@gmail.com', '', '', '', 'Tres Rìos', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (677, 2, 38, 4, 'BUFETE MUÑOZ & ASOCIADOS', '2226<1902', NULL, 'Susana Rojas', NULL, 'rojassu1@gmail.com', '', '', '', 'Barrio Naciones Unidas', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (678, 2, 38, 4, 'COGNIZANT', '4056-3098', NULL, 'Karla Rodrìguez', NULL, 'karla.rodriguez@cognizant.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (679, 2, 38, 4, 'DELI IMPORT (EMBAJADA DE BELGICA)', '2289-5058', NULL, 'Karla Chavarria', NULL, 'adm@deliimportsa.com', '', '', '', 'Escazu', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (680, 2, 38, 4, 'DISTRIBUIDORA ALTERNATIVA', '2223-0808', NULL, 'Vanessa Zùñiga', NULL, 'vzuniga@distribuidoralaternativa.com', '', '', '', 'Escazù', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (681, 2, 38, 4, 'GRUPO NUMAR ', '2284-1191', NULL, 'Jessenia Espinoza', NULL, 'jespinoza@numar.net', '', '', '', 'Barrio Cuba', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (682, 2, 38, 4, 'ICAP', '2234-1011', NULL, 'Ricardo Salas', NULL, 'contabilidad@icap.ac.cr', '', '', '', 'San Josè', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (683, 2, 38, 4, 'MOOG MEDICAL', '2429-1509', NULL, 'Karen Vargas ', NULL, 'administracion@asemoog.onmicrosoft.com', '', '', '', 'Alajuela Coyol', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (684, 2, 38, 4, 'SENSORMATIC.', '2289-3838', NULL, 'Cindy Moreno', NULL, 'cmoreno.sensor@sensormatic.co.cr', '', '', '', 'Escazú Urbanización Trejos Montealegre, 900 Oeste Tony Romas', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (685, 2, 38, 4, 'TICA BUS', '2296-9788 Ext 617', NULL, 'Esteban Secaida', NULL, 'esecaida@ticabus.com', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (686, 2, 38, 4, 'UNIVERSIDAD VERITAS Y ESCUELA MEDICINA Y VETERINARIA ', '2229-7971 / 8353-8184', NULL, 'Juan Esteban Varela', NULL, 'jvarela@veterinariaveritas.ac.cr', '', '', '', 'San Rafael de Coronado', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (687, 2, 38, 4, 'UTUR', '2258-6290', NULL, 'Ramòn Madrigal', NULL, 'rectoria@utur.ac.cr', '', '', '', 'Paseo Colòn', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (688, 2, 38, 5, 'ACOJUD', '2295-4074', NULL, 'Mar÷a Fernanda Arce', NULL, 'info@acojud.org', '', '', '', 'San Josè.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (689, 2, 38, 5, 'ASADEM (SUPERMERCADOS UNIDOS)', '2528-0700', NULL, 'Mariana Delgado', NULL, 'mariana.delgado@asadem.com', '', '', '', 'San Pedro, por Plaza Rossevelt', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (690, 2, 38, 5, 'ASDECEFA', '2519-0322', NULL, 'Roger Guadamuz', NULL, 'rguadamu@cefa.co.cr', '', '', '', 'Pavas', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (691, 2, 38, 5, 'ASEALIGN', '2209-1300', NULL, 'Milady Barquero', NULL, 'mbarquero@aligntech.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (692, 2, 38, 5, 'ASEBAYER', '2589-8770', NULL, 'Edgar Corrales / Jennifer', NULL, 'edgar.corrales@bayer.com', '', '', '', 'Escazu', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (693, 2, 38, 5, 'ASEBOSTON ', '2436-8916', NULL, 'Marisol Chaves', NULL, 'marisol.chavesperez@bsci.com', '', '', '', 'Alajuela', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (694, 2, 38, 5, 'ASECUBO', '2222-6924/25', NULL, 'Ronny Bonilla', NULL, 'asecubo@bomberos.go.cr', '', '', '', 'Pavas', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (695, 2, 38, 5, 'ASEFEMSA', '2247=2099 Ext 2996', NULL, 'Sofia Chinchilla', NULL, 'tcr.sofia.chinchilla@kof.com.mx', '', '', '', 'Calle Blancos', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (696, 2, 38, 5, 'ASEFISA', '2283-7775', NULL, 'Froylan Rivera', NULL, 'frivera@asefisa.com', '', '', '', 'San Pedro', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (697, 2, 38, 5, 'ASEFORD', '2523-5016', NULL, 'Jorge Suazo', NULL, 'jsuazo@automotriz.co.cr  / asedecap@tractomotriz.co.cr', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (698, 2, 38, 5, 'ASEFYL', '2256-5070', NULL, 'Marco Cervantes', NULL, 'mcervantes@asefyl.cr ', '', '', '', 'Sabana', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (699, 2, 38, 5, 'ASEGOLLO', '2437-4878', NULL, 'Oscar Soto', NULL, 'osoto@masgallo.com', '', '', '', 'Alajuela', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (700, 2, 38, 5, 'ASEGRUM', '2437=0201', NULL, 'Yamileth Rocha', NULL, 'asegrum@grupomutualalajuela.com', '', '', '', 'Alajuela', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (701, 2, 38, 5, 'ASEGSA (GUTIS)', '2549-8353', NULL, 'Marielos Herrera', NULL, 'asegsa@gutis.com', '', '', '', 'Pavas', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (702, 2, 38, 5, 'ASEHEINZ', '2549-9885', NULL, 'Claudia Bermùdez', NULL, 'claudia.bermudez@crhj.heinz.com', '', '', '', 'Pavas Rincón Grande', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (703, 2, 38, 5, 'ASEMOPT', '2523-2959 / 25232970', NULL, 'Gerardo Bolaños', NULL, 'consulta01@asemopt.com', '', '', '', 'San Josè.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (704, 2, 38, 5, 'ASESTANDARTD (Formularios Standard)', '2240-0043', NULL, 'Vianney Hernández', NULL, 'vianeyh@fs.co.cr', '', '', '', 'Guadalupe', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (705, 2, 38, 5, 'ASETEL (TELECABLE)', '4080-4000', NULL, 'Priscilla Sedo', NULL, 'priscila.sedo@telecablecr.com', '', '', '', 'Curridabat', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (706, 2, 38, 5, 'ASHOS (HOSPITAL CIMA)', '2208-8310', NULL, 'Ericka Obando', NULL, 'eobando@ashos.net', '', '', '', 'Escazù, Torre Mèdica 2 Tercer Piso Ofic. 310.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (707, 2, 38, 5, 'ASOBRITT', '2277-1646', NULL, 'Eddie Sandi', NULL, 'esandi@britt.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (708, 2, 38, 5, 'Asoc Kimberly Clark', '2298-1100', NULL, 'Karol Villalobos', NULL, 'karol.villalobos@kcc.com', '', '', '', 'Cartago  ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (709, 2, 38, 5, 'ASOC PROFESIONALES ENFERMERIA', '2280-9957', NULL, 'Rodrigo López', NULL, 'anpecr@ice.co.cr', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (710, 2, 38, 5, 'ASOC. CENTRAL DE MANGUERAS', '2256-1111', NULL, 'Katherine Fallas P', NULL, 'asecenman@centraldemangueras.com', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (711, 2, 38, 5, 'ASOC. CULTURAL DE INTERCAMBIO DE CR (ACI)', '2280-0898 / 2224-8052 / M', NULL, 'Mauricio', NULL, NULL, '', '', '', 'San Pedro, 200 metros al Oeste de Taco Bell', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (712, 2, 38, 5, 'ASOCALOX', '2248-0506', NULL, 'Carlos Bermùdez', NULL, 'asecalox@calox.com', '', '', '', 'Sabanilla', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (713, 2, 38, 5, 'ASOCATHAY', '2527-7707', NULL, 'Javier Solano', NULL, 'jsolano@bancocathay.com', '', '', '', 'Cartago', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (714, 2, 38, 5, 'Asociación de empleados de Pfizer', '22089581', NULL, 'Angelica Valverde', NULL, 'angelica.valverde@pfizer.com ', '', '', '', 'Escazú meridiano 7mo piso', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (715, 2, 38, 5, 'ASOCONSTRUPLAZA', '2588-8819', NULL, 'Elena Duran', NULL, 'eduran@construplaza.co.cr', '', '', '', 'Escazú ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (716, 2, 38, 5, 'ASOENCO Envases Comeca', '2282-0888   ', NULL, 'Maria Eugenia', NULL, 'mcordoba@envasescomeca.com', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (717, 2, 38, 5, 'ASOEXTRALUM', '2277-1958', NULL, 'Ana Zúñiga', NULL, 'anazu@extralum.co.cr', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (718, 2, 38, 5, 'ASOHPE', '2432-2291', NULL, 'Kimberly Andrade', NULL, 'kimberly.andrade@hpe.com', '', '', '', 'AFZ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (719, 2, 38, 5, 'ASOIREX', '2278-0512', NULL, 'Eduardo Valverde', NULL, 'eduardo.valverde@irexmail.net', '', '', '', 'Curridabat', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (720, 2, 38, 5, 'ASOITS (ITS Info Com)', '2211-0500', NULL, 'Merlyn Rodrìguez', NULL, 'mrodriguez02@itsinfocom.com', '', '', '', 'Rohrmoser', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (721, 2, 38, 5, 'ASOKIM ', '2298-3337', NULL, 'Gregory Quesada', NULL, 'gregory.quesada@kkc.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (722, 2, 38, 5, 'ASOMULTIPLAZA', '2201-5962', NULL, 'Laura Rivera', NULL, 'laura.rivera@gruporoble.com', '', '', '', 'Escazù', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (723, 2, 38, 5, 'ASOPC Productos de Concreto', '2587-1400', NULL, 'Ana Yansi Arias', NULL, 'yanci.arias@pc.cr', '', '', '', 'Cartago', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (724, 2, 38, 5, 'ASOROAG', '2231-3555', NULL, 'Jessica Espinoza', NULL, 'asoroag@acerosroag.com', '', '', '', 'La Uruca', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (725, 2, 38, 5, 'ASOVASCULAR', '2484-2279', NULL, 'Dayana Paniagua', NULL, 'tienda@asoabbott.co', '', '', '', 'Alajuela Zona Franca Coyol', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (726, 2, 38, 5, 'ASOVERITAS', '2246-4815', NULL, 'Julissa Badilla', NULL, 'aso@veritas.cr', '', '', '', 'Zapote', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (727, 2, 38, 5, 'ASOVIGUI', '2244-5075', NULL, 'Randall Salas', NULL, 'rsalas@vigui.com', '', '', '', 'Tres Ríos', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (728, 2, 38, 5, 'COLEGIO FEDERADO DE ING Y ARQ', '2202-3900', NULL, 'Katherine Tencio ext:3969', NULL, 'ktencio@cfia.cr', '', '', '', 'Curridabat', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (729, 2, 38, 5, 'COOPEMEP RL', '2295-0600', NULL, 'Andrea Solano Umaña', NULL, 'asolano@coopemep.com', '', '', '', 'San Josè.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (730, 2, 38, 5, 'COOPENAE R.L ', '2257-9060', NULL, 'Patricia Sánchez', NULL, 'grodriguez@coopenae.fi.cr', '', '', '', 'San Josè.', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (731, 2, 38, 5, 'COOPETRANSFUCO (Coop. Estándar Fruit)', '2223-7962  ', NULL, 'Marco Antonio Vargas Arroyo', NULL, 'Marcos.Vargas@dole.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (732, 2, 38, 5, 'DY COSTA TEX S.A.', '2261-2620', NULL, 'Romel Pereira', NULL, 'gerencia@chinaaki.com', '', '', '', 'Heredia', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (733, 2, 38, 5, 'GRUPO SECURE', '2257=1515', NULL, 'Wilfred Molina', NULL, 'gerenciath@securecostarica.com', '', '', '', 'Sabana Sur', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (734, 2, 38, 5, 'ASOCIACION SOLIDARISTA DE SCOTIABANK', '2220-3011', NULL, 'Jorge Josue Castro Montero ', NULL, 'jorge.castro@scotiabank.com', '', '', '', 'SABANA NORTE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (735, 2, 38, 5, 'ASENACSA (GRUPO NACION).', '2247 4865', NULL, 'Amelia Torres', NULL, 'atorres@nacion.com', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (736, 2, 38, 5, 'ASEJPS', '2522 2298', NULL, 'Maria Elena Sanchez', NULL, 'msanchezh@jps.go.cr', '', '', '', 'SAN JOSE ', NULL, '2018-03-19 17:39:28', NULL, '2018-03-19 17:39:28', 1);
INSERT INTO `qa_customers` VALUES (1333, 1, 40, 2, 'Barcelo San Jose Palacio', '2220-2034', NULL, 'Xinia Orozco', NULL, 'sanjose.touts@barcelo.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1334, 1, 40, 2, 'Cerro Travel   Agencia de Vajes', '8912-0391', NULL, 'Jorge Torres / Alejandra  G', NULL, 'cerrotravel@gmail.com', '', '', '', 'Cart', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1335, 1, 40, 2, 'Costa Rica Azul Travel ', '22621-8889', NULL, 'Randall Araya', NULL, 'randall-araya@azultravelcr.com', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1336, 1, 40, 2, 'Costa Rica Vision ( Clubes .Com )', '4052-5678', NULL, 'Don Mario Jimenez', NULL, 'mjimenez@costaricavision.com', '', '', '', 'S-J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1337, 1, 40, 2, 'Destinos T.V.( Escazu )', '2289-0707', '2228-9083', 'dauñymn Quiros', NULL, 'krodriguez@destinostv.com', '', '', '', 'S-J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1338, 1, 40, 2, 'Excursiones Arley ( Puriscal)', '8829-9091', '2416-3069', 'Don Arley', NULL, 'todo por telefono', '', '', '', '', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1339, 1, 40, 2, 'Expediciones Tropicales', '2257-4171', '2257-4124', 'Juan Luis Zamora', NULL, 'reservas@expedicionestropicales.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1340, 1, 40, 2, 'Faytur   Alajuela)', '2443-4171', NULL, 'Diana', NULL, 'veronica@faytur.com', '', '', '', 'AlaJ', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1341, 1, 40, 2, 'Green Creation Costa Rica', '2257-4393', '2248-1813', 'Adriana H', NULL, 'info@greencostarica.com   ', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1342, 1, 40, 2, 'Green Creation Costa Rica', '2257-4393', NULL, 'Adriana Huelmo', NULL, 'info@greencostarica.com   ', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1343, 1, 40, 2, 'Hotel Luisina ', '2203-5060', NULL, 'Randall Serrano Castillo', NULL, 'recepcion@hotelluisiana.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1344, 1, 40, 2, 'Hotelbeds', '2296-9861-', NULL, 'Cristiam Murillo', NULL, 'cmurillo@destinatioservices.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1345, 1, 40, 2, 'M y.J travel Service', '2253-7600', '8820-9166', 'Marlene Gayle', NULL, 'marlene.gayle@myjtravelservices.com>', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1346, 1, 40, 2, 'Paniagua Booking', '  8987-1339 /            ', NULL, 'Allan Paniagua Elizondo', NULL, 'paniaguaelizondo@yahoo.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1347, 1, 40, 2, 'Times Square', '2522-6900', NULL, 'Stephanie Gomez', NULL, 'sgomez@tsta.cr.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1348, 1, 40, 2, 'Viajes Colon ', '2547-2525', NULL, 'Maricela Brenes', NULL, 'maricela.brenes@viajescolon,com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1349, 1, 40, 2, 'Viajes Diana Garzon', '2256-4647', NULL, 'Diana Garzon', NULL, 'diana.garzon@viajesdianagarzon.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1350, 1, 40, 2, 'Costa Rica Nature Escape', '2257-8064', '2257-8065', 'Frank Brenes ', NULL, 'info@crnature.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1351, 1, 40, 2, 'Destinos Viajes', '2221-1414', NULL, 'Wendy', NULL, 'reservas2@destinosviajes.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1352, 1, 40, 2, 'Natura Tours C,R ', '8948-8929', NULL, 'Yesica del Toro', NULL, 'Jessica del Toro', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1353, 1, 40, 2, 'Costa Rica Mia', '4082-0765', NULL, 'Juliana', NULL, 'juliana.bastos@crmia.com] ', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1354, 1, 40, 2, 'Discovery Travel  ( Sabana Sur )', '2201-5682', '2290-5947-6242', 'Jose Vega', NULL, 'jvega@discoverycr.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1355, 1, 40, 2, 'Azteca Tours', '8680-0214', NULL, 'Thelma Linares', NULL, 'aztecatours@gmail.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1356, 1, 40, 2, 'Marbella Tours', '2227-0101', '2227-0101', 'Ana -Angel', NULL, 'operaciones@marbellatours.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1357, 1, 40, 2, 'Corporacion Tam', '2527-9720', '2293-5529', 'Kevin -Ronald', NULL, 'Info@tamtravel.com', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1358, 1, 40, 2, 'Corporacion Tam', '2527-9720', NULL, 'Ronald Ramos', NULL, 'sales@tamtravel.com', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1359, 1, 40, 3, 'Conversa ( Santa Ana )', '2203-2078', NULL, 'Maria Jimenez', NULL, 'mjimenez@conversa.com', '', '', '', 'S-J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1360, 1, 40, 3, 'Go Tours ( Santa Ana )', '2282-6096', '8854-9654', 'Flavio-Vladimir', NULL, 'travel@gotourscostarica.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1361, 1, 40, 3, 'Instituto I.C.L.C', '8380-2218', NULL, 'Sonia Rojas ', NULL, 'info@iclc.ws', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1362, 1, 40, 3, 'Isla Bonita Tours', '2221-2834', '2257-0505', 'Stephanie Villalobos C', NULL, 'islabonitatours@ice.co.cr', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1363, 1, 40, 3, 'Marbella Tours', '2227-0101', '2227-0101', 'Ana -Angel', NULL, 'operaciones@marbellatours.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1364, 1, 40, 3, 'Multiviajes', '2253-5222', '22531906', 'Juan Carlos - Michael', NULL, 'comercial@multiviajes.cr.com ', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1365, 1, 40, 3, 'Pavitur', '8422.0472', '2560-7272', 'Minor Soto', NULL, 'msoto@pavitur.com', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1366, 1, 40, 3, 'Tico Travel Adventures (Sleep Inn )', '2521-6500', '8908-8355', 'Daniel -Andres-Fernando', NULL, 'info@ticotraveladventure.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1367, 1, 40, 3, 'Tico Viajero Expresso', '2253-5355', '2253-5355', '  Luis Gonzalez', NULL, 'lgonzalez@ticoviajeroexpresso.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1368, 1, 40, 3, 'Viajes C.H.P      San Jose ', '2222-7090', '2269-4748', 'Vanessa Morales', NULL, 'viajeschp@hotmail.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1369, 1, 40, 3, 'Viajes Kymbo', '2256-6171', NULL, 'Adonias Cordero', NULL, 'adonias.cordero@viajeskymbo.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1370, 1, 40, 3, 'Viajes y Descuentos', '8351-1588', NULL, 'Mayela Solis', NULL, 'operaciones@viajesydescuentoscostarica.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1371, 1, 40, 3, 'Ecotur  ( Desafios )', '2262-3424', NULL, 'Yuliana Marin', NULL, 'operations@ecotours.cr', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1372, 1, 40, 3, 'Caymo Tours', '8712-4237', NULL, 'Luis Carlos Calderon', NULL, 'lcalderon@caymotours.com', '', '', '', 'S-J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1373, 1, 40, 3, ' Bereeth Viajes S.A', '6064-8888', '7256-2558', 'Carolina Montero ', NULL, 'monterocarolina86@gmail.com]', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1374, 1, 40, 3, 'Academia Tica ( Coronado )', '2229-0013', NULL, 'Dannia ', NULL, 'oficina.atcoro@gmail.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1375, 1, 40, 3, 'Agencia de Viajes Excalibur ( Grecia )', '2444-5454', NULL, 'Edgar Bolaños', NULL, 'edgar@viajesexcalibur.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1376, 1, 40, 3, 'Agencia de viajes Pure Nature  (', '2293-3998', '2293-5954', 'Ericka Serrano Carmona', NULL, 'esrrano@purenaturecr.com', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1377, 1, 40, 3, 'Atlantic Tours  ( Guapiles )', '2710-1303', '2710-2297', 'Pamela Borbon ', NULL, 'pborbon@atlantictourscr.com', '', '', '', 'Limon', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1378, 1, 40, 3, 'Banco Promerica', '2505-7000', NULL, 'Gabriela Torres', NULL, 'gtorres@promerica.fi.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1379, 1, 40, 3, 'Bella Aventura', '2236-5226', '2236-5009', 'Veronika-Esteban', NULL, 'info@bella-aventura.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1380, 1, 40, 3, 'Best Travel ', '2248-0909', NULL, 'Rodolfo Brenes', NULL, 'rodolfo.brenes@bestviajes.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1381, 1, 40, 3, 'Bravo Travel', '2260-9098', NULL, 'Don Marco Bravo', NULL, 'bravotravel@racsa.co.cr', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1382, 1, 40, 3, 'C.J Tours  ( Ageco )', '8663-9722', NULL, 'Jetty Jenkins', NULL, 'tourandtravecj@gmail.coml', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1383, 1, 40, 3, 'C.R.Tour and Travel', '4700-7206', '8352-3675', 'Luis Berrios', NULL, 'info@costaricatour.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1384, 1, 40, 3, 'C.R.Viajes Mayorista', '4701-5555', '4701-4996', 'Juan Pablo Orias', NULL, 'reservaciones1@crviajes.net', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1385, 1, 40, 3, 'Connection World C R', '2239-1919', NULL, 'Jessica Rodriguez', NULL, 'connectionworldcr@gmail.com', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1386, 1, 40, 3, 'Costa Rica Verde', '2442-5093', '8302-3101', 'Cesar Molina ', NULL, 'costaricaverde@racsa.co.cr] ', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1387, 1, 40, 3, 'Dream Fly  Travel', '2553-1552', '8832-7475', 'Monica Solano', NULL, 'monica@dreamflytravel.com', '', '', '', 'Cart', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1388, 1, 40, 3, 'Dream Travels  )', '2253-5610', NULL, 'Priscila Hernandez', NULL, 'phernadez@dreamtravelscr.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1389, 1, 40, 3, 'Ecotur  ( Desafios )', '2262-3424', NULL, 'Yuliana Marin', NULL, 'operations@ecotours.cr', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1390, 1, 40, 3, 'Excursiones Rugo', '8771-6112', '7270-3004', 'Jason Ruiz', NULL, 'excursionesrugo@gmail.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1391, 1, 40, 3, 'Green  World Adventure ( Cartago )', '2552-3269', NULL, 'Diego Rivera', NULL, 'diego@gwacr.com', '', '', '', 'Cart', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1392, 1, 40, 3, 'Green Stone Adventure', '2223-4060', NULL, 'Jaime Umaña', NULL, ' reservations@greenstone.co.cr', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1393, 1, 40, 3, 'Grupo Cedrela', '2286-5216 ext 104', '2286-5216 ext 1', 'Doña Rocio', NULL, ' cedrela@ecoturismo.co.cr', '', '', '', 'S-J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1394, 1, 40, 3, 'Viajes Batsu', '2463-1022', '8540-2512', 'Katerine Blanco', NULL, 'viajesbatsu@gmail.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1395, 1, 40, 3, 'Jei Vacaciones  ( Guapiles )', '8842-8535', NULL, 'Jeimy Gonzalez Alfaro', NULL, 'reservas@jeivacaciones.com', '', '', '', 'Limon', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1396, 1, 40, 3, 'JR  Tours  ( Transtours J.R )', '2226-9932', '8883-3251', 'David Solis', NULL, 'jrtourscr@gmail.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1397, 1, 40, 3, 'Localista Travel', '2291-4242', NULL, 'Elizabeth Solis ', NULL, 'elizabeth@localistatravel.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1398, 1, 40, 3, 'Marvi Tours', '2214-2828', NULL, 'Karina Mora', NULL, 'kmora@marvitours.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1399, 1, 40, 3, 'Marvin{s Tours  ( Heredia-Magisterio)', '8814-6757', NULL, 'Marvin Ramirez', NULL, 'marvinant@costarricense.cr] ', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1400, 1, 40, 3, 'Mega Travel ( Grupo Comercial GMT S A )', '2458-0303', '2458-0202', 'Mariana Gamboa', NULL, 'reservaciones@megatravelcr.com', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1401, 1, 40, 3, 'Multiviajes  ( Tibas )', '2241-0093', NULL, 'Juan Carlos Gonzalez', NULL, 'comercial@multiviajes.cr.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1402, 1, 40, 3, 'Oporturismo', '7122-2196', NULL, 'Tony Rivera', NULL, 'tojarior@hotmail.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1403, 1, 40, 3, 'Saint Germain Tours', '2290-5442', NULL, 'Yorleny Valverde ', NULL, 'yorleny@saintgermaintours.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1404, 1, 40, 3, 'Sherpa Tours ( Ala juela )', '2430-2510', '2431-3064', 'Ana Sibaja', NULL, 'ana.sibaja@sherpa-tours.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1405, 1, 40, 3, 'Sivetur  ( Paseo Colon )', '2255-6565', '2256-3180', 'Marvin Barrantes', NULL, 'reservas6@sivetur.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1406, 1, 40, 3, 'Tiquicia Expeditions', '2281-3433', NULL, 'Andrea Arias ', NULL, 'info@tiquiciaexpedition.com  ', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1407, 1, 40, 3, 'Upssa Travel', '2258-7575', '2258-7535', 'Emanuel -Ricardo', NULL, 'emontenegro@upssatravel.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1408, 1, 40, 3, 'Viajemos con Santa  ( Coronado )', '8349-3756', NULL, 'Eduardo Santanaria', NULL, 'viajemosconsanta@gmail.com>', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1409, 1, 40, 3, 'Viajes Alrededor del Mundo', '5019-4447', '2248-4248', 'Leonidas Guerra ', NULL, 'viamundo360@racsa.co.cr', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1410, 1, 40, 3, 'Viajes Caribe  ( Santo Domingo )', '2244-2611', NULL, 'Ricardo Jimenez', NULL, 'pncaribe@racsa.co.cr', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1411, 1, 40, 3, 'Viajes Exclusivos', '8609-4750', NULL, 'Leda Murillo', NULL, 'viajesexclusivoscr@gmail.com', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1412, 1, 40, 3, 'Viajes Magallanes', '2440-0055', NULL, 'Viviana Rodriguez', NULL, 'vrodriguez@viajesmagallanes.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1413, 1, 40, 3, 'Viajes Elitur', '2430-1428', NULL, 'Elizabeth ', NULL, 'eliventas@excursioneselitourcr.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1414, 1, 40, 3, 'Besatur', '8622-421', NULL, 'Cristiam Benavides', NULL, 'infobesatourcr@gmail.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1415, 1, 40, 3, 'Jose Domingues', '8521-1668', NULL, 'independiente', NULL, 'jos9dominguez@gmail.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1416, 1, 40, 3, 'I.AT.Incentives', '8625-0330', NULL, 'Mauricio Cespedes', NULL, 'mcespedes@iatincentives.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1417, 1, 40, 3, 'Intertravel Costa Rica', '2278-7155', '2278-7156', 'Kattia Sibaja', NULL, 'reservaciones@intertravelcr-com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1418, 1, 40, 4, 'Adventure Center Educations', '2438-7549', NULL, 'Francini', NULL, 'aecstudentshouse@yahoo.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1419, 1, 40, 4, 'Ahorro vital', '2257-9595', NULL, 'Karen  Hidalgo', NULL, 'khidalgo@ahorrovital.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1420, 1, 40, 4, 'Ara Tours', '2232-0400', '2232-0363', 'Juan Jose Guerrero', NULL, 'juanjose@aratours.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1421, 1, 40, 4, 'Arenal Destinations', '6121-0814', '6073-8851', 'Fabio E Molina', NULL, 'info@arenaldestinations.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1422, 1, 40, 4, 'Asesores de  Viajes', '6011-7606', NULL, 'Jovanela Hernandez', NULL, 'turismoasesoresdeviajes@hotmail.com', '', '', '', 'S-J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1423, 1, 40, 4, 'B.S.V.World Wide Travel', '6020-2039', NULL, 'Peggy Tam  ( Ag nueva )', NULL, 'peggytam@bsvworldwidwtravel.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1424, 1, 40, 4, 'Best Costa Rican Tours', '2241-4181', '8301-2772', 'Kattia Chacon', NULL, 'bestcostaricantours@gmail.com]', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1425, 1, 40, 4, 'C.R.T.Viajes', '2454-4747', NULL, 'Lisbeth Mora', NULL, 'lmoracrt@ice.co.cr', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1426, 1, 40, 4, 'C.W.K.G ( Agencia Incae )', '2433-4727', NULL, 'Efrain Vega', NULL, 'agenciaviajscr@incae-edu', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1427, 1, 40, 4, 'Cabet Tours', '8845-2045', NULL, 'Maria Araujo', NULL, 'cabettravel@yahoo.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1428, 1, 40, 4, 'Carima Travel', '8708-3262', NULL, 'Hellen Vega', NULL, 'carimatravel@gmail.com', '', '', '', 'Limon', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1429, 1, 40, 4, 'Castillo Mágico', '2241-6798', '2236-7892', 'Don Gustavo Castillo ', NULL, 'info@viajescastillomagico.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1430, 1, 40, 4, 'Celajes Turisticos', '2228-9192', NULL, 'Don Ricardo', NULL, 'rcelajes@gmail.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1431, 1, 40, 4, 'Costa Rica Go Travel', '4030-4757', '8631-6005', 'Frankiln Muñoz', NULL, 'costaricagotravel@gmail.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1432, 1, 40, 4, 'Costa Rica Welcome', '8787-1894', NULL, 'Jose Alvarez', NULL, 'ticostravel@aol.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1433, 1, 40, 4, 'E.K Travel ', '7004-0033', '8814-0333', 'Eduardo Vega', NULL, 'eduardo.vega@ektravelcr.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1434, 1, 40, 4, 'Edmoro Tours', '2556-0992', NULL, 'Fiorella  Araya', NULL, 'edmorotours@gmail,com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1435, 1, 40, 4, 'Euroamerica', '2211-1414', '4800-1414', 'Meliisa Sandi', NULL, 'reservas@euroamericascr.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1436, 1, 40, 4, 'Eventur', '2290-6162', '2290-6203', 'Marianella Arce / ', NULL, 'reserve@eventourcr.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1437, 1, 40, 4, 'Excursiones Rugo', '8771-6112', '7270-3004', 'Jason Ruiz', NULL, 'excursionesrugo@gmail.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1438, 1, 40, 4, 'Global Events DC.M', '2290-0731', NULL, 'Kattia Calderon', NULL, 'kcalderon@globaleventsdmc.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1439, 1, 40, 4, 'Global Tourism System', '2296-0750', '8849-7339', 'Jacqueline Salazar', NULL, 'agencia@globaltourismsys.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1440, 1, 40, 4, 'Greco Travel', '2444-1312', NULL, 'Roy Hidalgo', NULL, 'roy@grecotravelcr.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1441, 1, 40, 4, 'Green Natural Travel', '8835-1826', NULL, 'Lucia', NULL, 'lucia@naturalescapetravel', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1442, 1, 40, 4, 'Grupo Eco Green ', '2226-9069', NULL, 'Johanna Murillo', NULL, 'jmurillo@grupoecogreen.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1443, 1, 40, 4, 'I.V.I.D.M.C.Travel', '2288-4318', NULL, 'David Jhonson', NULL, 'djhonson@ividmc.travel', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1444, 1, 40, 4, 'Maravillas Tropicales', '2574-3970', NULL, 'Geovanny Chaves', NULL, 'maravillastropicales@gmail.com', '', '', '', 'Cart', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1445, 1, 40, 4, 'New World C.R.(Quality)', '2256-5383', '2256-5200', 'Maria Jose  Dlegado', NULL, 'mjdelgado@newquacorp.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1446, 1, 40, 4, 'Servicios Turisticos Framay', '2595-5595', '8819-0846', 'Venessa Marin--  Mayra V', NULL, 'serviciosturisticosframay@gmail.com]', '', '', '', 'Cart', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1447, 1, 40, 4, 'Terratur', '2235-2032', '8329-4185', 'Gilberto Hernandez', NULL, 'terraturcr@gmail.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1448, 1, 40, 4, 'The Real Deal Tours Costa Rica', '4000-1886', NULL, 'Amanda  ( Agencia nueva )', NULL, 'info@thecostaricatoursite.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1449, 1, 40, 4, 'Tico Tours', '8347-6262', NULL, 'Fabio Solano', NULL, '[afupheredia@gmail.com]', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1450, 1, 40, 4, 'Tico World Travel  ( nueva )', '4081-6843', '8544-2513', 'Carlos Jimenez', NULL, 'cjimenez@ticoworldtravael.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1451, 1, 40, 4, 'Tour Ilse', '2282-9076', '8864-9321', 'Ise Guillen', NULL, 'ilsegui@hotmail.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1452, 1, 40, 4, 'Tour Paradise', '2221-9108', NULL, 'William Mora', NULL, 'william@toursparadise.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1453, 1, 40, 4, 'Travelling Around Costa Rica', '8446-9159', '8830-2039', 'Gabriela Hernandez G', NULL, 'gabriela@travellingaroundcostarica.cr', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1454, 1, 40, 4, 'Turismo Cali', '2556-2672', '8938-2300', 'Don Carlos Quesada', NULL, 'info@turismocalicr.com', '', '', '', 'Cart', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1455, 1, 40, 4, 'Turvisa', '2233-3366', NULL, 'Luis Cabrera', NULL, 'virsatours@hotmail.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1456, 1, 40, 4, 'Univiajes  ( Cartago )', '2551-6987', NULL, 'Marisol Alavrez', NULL, 'univiajescr@gmail.com', '', '', '', 'Cart', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1457, 1, 40, 4, 'Unlimited Travel', '2235*0015', NULL, 'Alexei Salas Barquero', NULL, '[unlimitedtravel.cr@outlook.com]', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1458, 1, 40, 4, 'Vesa Tours Costa Rica', '2289-0303', NULL, 'William Villavicencio', NULL, 'william.villavicencio@vesatours.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1459, 1, 40, 4, 'Viajes Alfa', '2221+6705', '2221-6750', 'Max Alfaro', NULL, 'viajesalfa@yahoo.com', '', '', '', 'S,J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1460, 1, 40, 4, 'Viajes Batsu', '2463-1022', '8540-2512', 'Katerine Blanco', NULL, 'viajesbatsu@gmail.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1461, 1, 40, 4, 'Viajes Nidia', '2244-8034', NULL, 'Nidia', NULL, 'viajesnidia@gmail.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1462, 1, 40, 4, 'Vision Global', '2221-5678', '4052-5678', 'Rocio Quesada', NULL, 'rquesada@turismovision.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1463, 1, 40, 4, 'Vision Sport  Travel', '8394-1402', NULL, 'Alberto  Coll ', NULL, 'acoll@visionsportstravel.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1464, 1, 40, 4, 'Excursiones Rugo', '8477-1772', '7270-3004', 'Jason Ruiz', NULL, 'excursionesrugo@gmail.com', '', '', '', 'S-J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1465, 1, 40, 4, 'Facitur', '2256-2353', NULL, 'Andrea Arias', NULL, 'andrea.arias@facitur.com', '', '', '', 'S-J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1466, 1, 40, 4, 'Greco Travel ', '2444-1312', NULL, 'Roy Hidalgo', NULL, 'roy@grecotravelcr.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1467, 1, 40, 4, 'Humminbid Travel C.R', '2430-0339', 'nueva', 'Jessica Avila Monge', NULL, 'javila@hummingbirdtravelcr.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1468, 1, 40, 4, 'Kabek Tours', '2272-5456', NULL, 'Karol Agüero', NULL, 'karol.aguero@kabektours.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1469, 1, 40, 4, 'Mundo Viajes', '2241-1425', NULL, 'Julio Hidalgo', NULL, 'julio@mundoviajescr.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1470, 1, 40, 4, 'Tico Tours & Adventure  ( Zapote )', '2280-0400', '2280-8859', 'Stephanie', NULL, 'scarvajal@ticotour.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1471, 1, 40, 4, 'Viajes Nana', '2256-1556', '8384-3334', 'Porfirio Gonzalez', NULL, 'director@viajesnana.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1472, 1, 40, 5, 'C.TS. Mayorista ', '2524-0513', NULL, 'Angel Sequeira', NULL, 'asequeira@ctscr.com]', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1473, 1, 40, 5, 'Cocolimon', '2248-4850', NULL, 'Karla Quiros', NULL, 'contacto@cocolimon.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1474, 1, 40, 5, 'Costa Rica D.M.C', '2438-7700', NULL, 'Gabriela Esquivel', NULL, 'gabrielae@costaricadmc.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1475, 1, 40, 5, 'Costa Rica Online Travel', '4010-1155', NULL, 'Adrian Bolaños', NULL, 'abolanos@costaricaonlinetravel.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1476, 1, 40, 5, 'Costa Rica Open Tours', '8839-9877', '8727-6879', 'Roy Ramirez', NULL, 'reservaciones@costaricaopentours.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1477, 1, 40, 5, 'Fauna Luxury Hostel', '2289-2050', NULL, 'Cristiam Quesada', NULL, 'info@faunahostel.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1478, 1, 40, 5, 'Hotel El Rodeo', '2293-3909', NULL, 'Dayliana  Soto', NULL, 'info@elrodeohotel.com]', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1479, 1, 40, 5, 'Iberoviajes Costa Rica', '2261-5977', '2261-5983', 'Andres Alonso Angulo', NULL, 'andres@iberoviajes.co.cr', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1480, 1, 40, 5, 'J.D.Travel  Tours', '4081-0389', NULL, 'David Villalobos', NULL, 'ventas@jdtravelcr.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1481, 1, 40, 5, 'Mi  Viaje Costa Rica', '8626-8092', '8360-2419', 'Sidney Arroyo', NULL, 'info@miviajecostarica.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1482, 1, 40, 5, 'Natura Tours C,R ', '8948-8929', NULL, 'Yesica del Toro', NULL, 'Jessica del Toro', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1483, 1, 40, 5, 'Opciones Turisticas', '2591-0813', NULL, 'Silvia Brenes', NULL, 'silviaopturisticas@gmail.com', '', '', '', 'Cart', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1484, 1, 40, 5, 'Roberto Ribas ', NULL, NULL, 'independiente', NULL, 'ribas.roberto@gmail.com', '', '', '', 'Cart', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1485, 1, 40, 5, 'Super Nova ', '7111-6616', 'por correo', 'Rolando', NULL, NULL, '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1486, 1, 40, 5, 'Tree Tops Travel', '2241-6533', NULL, 'Jose Acuña M', NULL, 'jose@treetopstravel.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1487, 1, 40, 5, 'Turistik Tours', '4701-4602', NULL, 'Homer', NULL, 'condestino@touristik.cr', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1488, 1, 40, 5, 'Viaje Facil ', '2244-5701', 'nueva', 'Adriana Villalobos Delgado', NULL, 'adriana.villalobos@viajesfacilcr.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1489, 1, 40, 5, 'Viajes a tu Medida', '4030-1551', '8827-8421', 'Jesus Ureña', NULL, 'juena@viajesatumedidacr.com', '', '', '', 'Cart', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1490, 1, 40, 5, 'Intercultura ', '2260-8480', NULL, 'Adelita', NULL, '[adelita@interculturacostarica.com]', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1491, 1, 40, 5, 'C,R,S Tours', '2290-6570', NULL, 'Carolina Cruz', NULL, 'central@crstours.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1492, 1, 40, 5, 'Global Events', '2290-0731', NULL, 'Kattia Calderon', NULL, 'kcalderon@globaleventsce.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1493, 1, 40, 5, 'Elemento Natural', '8326-3727', NULL, 'Robeto Lizano', NULL, 'robertolizano@elementonatural-com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1494, 1, 40, 5, 'Hotel Novo', '22-330320', NULL, 'Mariela ', NULL, 'info@hotelnovo.net', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1495, 1, 40, 5, 'Komotur  :                ', '2265-3233', 'por correo', 'Marcela Molina', NULL, NULL, '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1496, 1, 40, 5, 'Sueña 360.                ', '7006-7690', 'POR CORREO', 'Raquel', NULL, NULL, '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1497, 1, 40, 5, 'Hotel Balmoral', '2222-2522', NULL, 'Marianella Rodriguez', NULL, 'mrodriguez@balmoralcr.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1498, 1, 40, 5, 'Cooprena 8 Turismo Rural ', '2290-8646', NULL, NULL, NULL, 'info@turismoruralcr.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1499, 1, 40, 5, 'Creo Trvael', '2289-6158', NULL, 'Paola Castro', NULL, 'info@creotravel.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1500, 1, 40, 5, 'Global Travel Solutions', '2261-1045', NULL, NULL, NULL, 'info@globaltravelsolutioncr.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1501, 1, 40, 5, 'Ivan Tours', '6396-8586', NULL, 'Xiomara Espinoza', NULL, 'info@ivantours.com', '', '', '', 'S-J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1502, 1, 40, 5, 'Activa Viajes', '2296-7690', '8849-5631', 'Karolyn Mairena ', NULL, 'info@activaviajescr.com', '', '', '', 'S J.', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1503, 1, 40, 5, 'Best Costa Rican Tours', '2241-4181', 'nueva', 'Kattia Chacon', NULL, 'info@bestcostAricantours.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1504, 1, 40, 5, 'Connection Travel Marketimf', '2430-7062', 'nueva', 'karla Campos', NULL, 'karla@mkconnectioncr.com', '', '', '', 'Alaj', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1505, 1, 40, 5, 'Mmomentum  C.R', '4700-2707', 'nueva', 'Mariela Rojas', NULL, 'mrojas@mmomentum.co', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1506, 1, 40, 5, 'Saint Germain Tours', '2290-5442', NULL, 'Yorleny ', NULL, 'yorleny@saintgermaintours.com', '', '', '', 'S.J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1507, 1, 40, 5, 'Sunny Land Tours  ( Heredia )', '2296-9948', '2268-7960', 'Andrea Villalobos', NULL, 'andreatec@sunnylandtours.com', '', '', '', 'Hered', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1508, 1, 40, 5, 'Ivan Tours', '6396-8586', NULL, 'Xiomara Espinoza', NULL, 'info@ivantours.com', '', '', '', 'S-J', NULL, '2018-03-21 13:08:15', NULL, '2018-03-21 13:08:15', 1);
INSERT INTO `qa_customers` VALUES (1509, 2, 39, 2, 'ABB SOCIEDAD ANONIMA', '2288-5484', NULL, 'SILVIA CALVO', NULL, 'sylvia.calvo@pa.abb.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1510, 2, 39, 2, 'ACEROS ABONOS AGRO', '22129367', NULL, 'ESTEBAN CAMPOS', NULL, 'evives@abonosagro.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1511, 2, 39, 2, 'CORPORACION RAYO DE LUZ', '22652626', NULL, 'FRANCELLA MORERA BOGANTES', NULL, 'fmorera@frangus.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1512, 2, 39, 2, 'DISTRIBUIDORA LARCE', '22211100', NULL, 'ROBERTO LUIS ARCE HERNANDEZ', NULL, 'rarce@dilarce.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1513, 2, 39, 2, 'SERVICIOS SATELITALES HJ VEGA', '2218 1443', NULL, 'JAVIER EDUARDO VEGA CHACON', NULL, 'inshjvega@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1514, 2, 39, 2, 'AGROQUIMICA INDUSTRIAL RIMAC', '25720774', NULL, 'LUIS FERNANDO ALVARADO TORRES', NULL, 'falvarado@rimacsa.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1515, 2, 39, 2, 'TRANSPORTES DEL ATLANTICO CARIBEÑO', '27687232', NULL, 'CARLOS ENRIQUE LOPEZ SOLANO', NULL, 'rhumanos@tracasa.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1516, 2, 39, 2, 'COOPEMADEREROS', '27714438', NULL, 'ARACELLY VARGAS CALDERÓN', NULL, 'info@coopemadereros.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1517, 2, 39, 2, 'OBASHE (EXOTIC FLOWERS)', '22652513', NULL, 'ANA LUCRECIA ARIAS OBALDIA', NULL, 'ana@delrioexoticflowers.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1518, 2, 39, 2, 'INVERSIONES CONVAL SA', '85351579', NULL, 'LOU VANZKY GUTHRIE BENAVIDES', NULL, 'lguthrie@jsarquitectos.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1519, 2, 39, 2, 'SEGURIDAD ORION', '40017958', NULL, 'MICHAEL ALBERTO BALTODANO MARTINEZ Y ALEXANDER VAR', NULL, 'michael.baltodano@seguridadorión.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1520, 2, 39, 2, 'INVERSIONES SAMO DEL OESTE', '22826230', NULL, 'LUIS FERNANDO MONTES ARIAS', NULL, 'gasolinerahnosmontes@ice.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1521, 2, 39, 2, 'IMPORTACIONES DEA INC', '22481656', NULL, 'JUAN DIEGO NARANJO CASTAÑO', NULL, 'asistenteadministrativa@multiplaycr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1522, 2, 39, 2, 'POAS RENTA CARRO', '24426178', NULL, 'MERCIADES CAMPOS MIRANDA', NULL, 'avillalobos@poasrentacar.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1523, 2, 39, 2, 'UNIVERSAL MUSIC DE COSTA RICA', '22812430', NULL, 'HAROLD CHAVEZ SOTO', NULL, 'harold.chaves@umusic.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1524, 2, 39, 2, 'FAMOSO SOCIEDAD ANONIMA', '25312282', NULL, 'WILLIAM GILBERTO MACHADO SOLANO', NULL, 'machadowill17@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1525, 2, 39, 2, 'ALIMENTOS PRO SALUD', '2504-7676 ext 7685 Karen ', NULL, 'JUAN ALEJANDRO MARÍN AZOFEIFA', NULL, 'eric.sanchez@prosalud.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1526, 2, 39, 2, 'GAROLY BRANDS', '22862471', NULL, 'RODRIGO ENRIQUE SEGURA LEIVA', NULL, 'io@garoly,com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1527, 2, 39, 2, 'IDEAR ELECTRONICA', '40334233', NULL, 'REBECA CORELLA RODRIGUEZ', NULL, 'rcorellar@yahoo.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1528, 2, 39, 2, 'SERVISECURITY', '89689559', NULL, 'RAUL EDUARDO PAZOS FIGUEROA', NULL, 'ellis.machoro@gmail.com​', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1529, 2, 39, 2, 'ARGUES LIMITADA', '25891315', NULL, 'EDUARDO ARGUEDAS CHAVERRI', NULL, 'larpeche@arguescr.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1530, 2, 39, 2, 'TITZIAN SOCIEDAD ANÓNIMA', '22237753', NULL, 'FABRIZIO FRANCISCO COTO COTO', NULL, 'fabriziocoto@titzian.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1531, 2, 39, 2, 'UNIVERSIDAD HISPANOAMERICANA', '22419090', NULL, 'ANGEL MARIN ESPINOZA', NULL, 'ralvarado@uh.ac.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1532, 2, 39, 2, 'AGENCIA DATSUN', '25497035', NULL, 'SAMUEL ALZENMAN PINCHANSKI', NULL, 'veraguille@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1533, 2, 39, 2, 'ALIMENTOS PROSALUD', '25047676', NULL, 'JUAN ALEJANDRO MARÍN AZOFEIFA', NULL, 'eric.sanchez@prosalud.com', '', '', '', 'Puntarenas', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1534, 2, 39, 2, 'CORPORACION ONIX COSTA RICA', '22906649', NULL, 'RAUL EMILIO ACOSTA ARIAS', NULL, 'jacosta@inix.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1535, 2, 39, 2, 'SOLUCIONES NEAN', '22909959', NULL, 'GLORIA MARINA MATA ALVAREZ', NULL, 'david.barahona@neansa.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1536, 2, 39, 2, 'Agencia Aduanal y Consolidadora de Carga AIRM', '8863 0915', NULL, 'America Rivera Mora', NULL, 'americarivera2009@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1537, 2, 39, 2, 'FRAVICO PROMOCIONAL SOCIEDAD ANONIMA', '40323838', NULL, 'FRANCISCO JAVIER RODRIGUEZ HURTADA', NULL, 'fjavier@fravicopromocional.com', '', '', '', 'Puntarenas', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1538, 2, 39, 2, 'SIBO ENERGY SOCIEDAD ANONIMA', '40001510', NULL, 'EDGAR ALBERTO UGALDE SOLEY', NULL, 'eugalde@siboenergy.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1539, 2, 39, 2, 'YORLENI MARIA ROJAS ROJAS ( EMBUTIDOS VALENCIANO)', '22683334', NULL, 'YORLENI MARIA ROJAS ROJAS', NULL, 'anacruz@valencianocrcr.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1540, 2, 39, 2, 'FABRICA DE MALLA CICLON SOCIEDAD ANONIMA', '2239-6383', NULL, 'DANIEL JOSUE SEGREDA JOHANNING', NULL, 'contabilidad@mallaciclon.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1541, 2, 39, 2, 'BIOTRATAR TECNOLOGÌAS DE AGUAS', '84440740', NULL, 'LUIS DIEGO CHACON PEREZ', NULL, 'dchacon@biotratarcr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1542, 2, 39, 3, 'DST CENTER', '24304633', NULL, 'MAURICIO LEON', NULL, 'tallerrme@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1543, 2, 39, 3, 'TOSTADORA EL DORADO', '2247-7906', NULL, 'HERSEL OROZCO ALPIZAR.', NULL, 'alexanderacuna@cafedorado.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1544, 2, 39, 3, 'DEMSA', '24422600', NULL, 'CARLOS ALBERTO MURILLO HERRERA.', NULL, 'gabriela.murillo@demsacr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1545, 2, 39, 3, 'ELDICA', '22378563', NULL, 'DIRK BAETHGE PETERS', NULL, 'eliza.alvarado@eldicacr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1546, 2, 39, 3, 'MADERAS DE BOLLEN', '22113904', NULL, 'ENRICO CARLO GIORDANO SESIA', NULL, 'karlasanchezcalderon@gmail.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1547, 2, 39, 3, 'ALMACEN FISCAL SANDAL', '22639811', NULL, 'RICARDO ARQUEDAS SOLERA', NULL, 'cchacon@sandal.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1548, 2, 39, 3, 'UNIHOSPI', '22386073', NULL, 'ANICETO CAMPOS ESTRADA', NULL, 'acampos@iberoamerica.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1549, 2, 39, 3, 'EMPAQUE BELEN', '24385119', NULL, 'JUAN FRANCISCO GONZALEZ NAVARRO', NULL, 'jgonzalez@empaquesbelen.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1550, 2, 39, 3, 'ROSALA SOCIEDAD ANONIMA / FERRETERIAS EL MAR', '223464 64', NULL, 'VICTOR JULIO NAVARRO ROJAS', NULL, 'julionavarro@ferreteriaelmarsanpedro.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1551, 2, 39, 3, 'DISTRIBUIDORA HERMANOS FUENTES', '25373610', NULL, 'DAVID ADONAY FUENTES FLORES', NULL, 'hermanosfuentes@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1552, 2, 39, 3, 'PMI CAPITULO DE COSTA RICA', '2224-8883', NULL, 'EDGAR CARLOS DE JESUS VAZQUEZ RETANA', NULL, 'asistente@pmicr.org', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1553, 2, 39, 3, 'OLD WEST SA', '2282 9210', NULL, 'ERNESTO MOSTES GUILLÉN', NULL, 'oldwestgrillcr.gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1554, 2, 39, 3, 'PROPIAUTO UNO DEL NORTE / SOLID CAR RENT', '24426000', NULL, 'FRANCISCO JAVIER HERNANDEZ GONZALEZ', NULL, 'lmontalto@solidcarrental.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1555, 2, 39, 3, 'SUPER BATERIAS', '22195454', NULL, 'OLMAN RICARDO CESPEDES ROJAS', NULL, 'esolera@superbaterias.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1556, 2, 39, 3, 'SISTEMA EMPRESARIAL PSE SA', '22511993', NULL, 'SANDY BERMUDEZ AGUILAR', NULL, 'angeles.seguridad@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1557, 2, 39, 3, 'MEDI KOSTAX SOCIEDAD ANONIMA', '22931696', NULL, 'PRISCILLA MARIA ALFARO CRUZ', NULL, 'palfaro.cr@kxmedical.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1558, 2, 39, 3, 'TRACTOMOTRIZ', '25492522', NULL, 'HERNAN ARTURO MONGE GAMEZ', NULL, 'malopez@tractomotriz.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1559, 2, 39, 3, 'PAFRAVE', '22221356', NULL, 'PABLO FRANCIS VEGA', NULL, 'pfrancis@pafrave.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1560, 2, 39, 3, 'AQUASERVICE', '24876878', NULL, 'ERICK GERARDO PORRAS ARTAVIA', NULL, 'delanaciente@gmail.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1561, 2, 39, 3, 'RODRIGO SALAS SALAZAR', '88115775', NULL, 'RODRIGO SALAS SALAZAR', NULL, 'lizandra00@hotmail.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1562, 2, 39, 3, 'PROVEERDE INTERNACIONAL', '22825600', NULL, 'JILMA CECILIA RAMIREZ UMAÑA', NULL, 'viveros.proverde@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1563, 2, 39, 3, 'TROPIFOODS', '22931789', NULL, 'EDGAR ANTONIO MEDINA LUMBI', NULL, 'emedinam@tropifoods.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1564, 2, 39, 3, 'DESACAFÉ', '40103737', NULL, 'LUIS FERNANDO CASTILLO CARPIO', NULL, 'mcastillo@desacafe.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1565, 2, 39, 3, 'FRAVICO PROMOCIONAL', '40323838', NULL, 'FRANCISCO JAVIER RODRIGUEZ HURTADA', NULL, 'fjavier@fravicopromocional.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1566, 2, 39, 3, 'PROVEEDOR INTEGRAL DE PRECIOS CENTROAMERICA', '22047005', NULL, 'EDUARDO RODRIGUEZ DEL PASO', NULL, 'nzambrana@piplatam.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1567, 2, 39, 3, 'TRANSPORTES JOKEVISION', '40525678', NULL, 'JESUS MARIA QUESADA ARROYO', NULL, 'rquesada@cosrticavision.net', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1568, 2, 39, 3, 'VETERINARIAN DEVELOPMENT', '26642424', NULL, 'PEDRO JULIO GOMEZ VILLAVICENCIO', NULL, 'drgomez@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1569, 2, 39, 3, 'FERREMETRO', '22216604', NULL, 'JUAN CARLOS HERNANDEZ OSPINA', NULL, 'ferremetrocr@gmail.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1570, 2, 39, 3, 'AGENCIA DATSUN SOCIEDAD ANONIMA', '25497035', NULL, 'MARIA VIRGINIA SALAS SALAS', NULL, 'alejandro.quiros@grupodanissa.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1571, 2, 39, 3, 'FOOD MONGERS SOCIEDAD DE RESPONSABILIDAD LIMITADA', '87290131', NULL, 'ALVARO JOSE MONGE CAMPOS', NULL, 'contabilidad@foodmongers.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1572, 2, 39, 3, 'IC TRAVELGLOBAL GROUP', '22047200', NULL, 'CHRISTIAN CASTRO PERAZA', NULL, 'itsupport@icglobalgroup.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1573, 2, 39, 3, 'TRAVEL ACE INTERNACIONAL', '83803082', NULL, 'JUAN JOSE PORRAS JIMENEZ', NULL, 'jporras@travelacecr.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1574, 2, 39, 4, 'SIKA PRODUCTOS PARA LA CONSTRUCCION', '22933870', NULL, 'MARIO CUBILLO', NULL, 'soto.isel@cr.sika.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1575, 2, 39, 4, 'CIRCUITO CINCO SOCIEDAD ANONIMA', '22936923', NULL, 'IGNACIO DEL RIO FABRES', NULL, 'laura.vasquez@circuitocinco.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1576, 2, 39, 4, 'DICOFERSA', '24303963', NULL, 'FREDDY ADRIAN SCHELBERT MONTILLA.', NULL, 'dicofersa@gmail.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1577, 2, 39, 4, 'GEVISA ARTES PLASTICAS', '22367043', NULL, 'GEVISA ARTES GRAFICAS', NULL, 'hdormond@grupogevisa.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1578, 2, 39, 4, 'PROVEDORA DE SEGURIDAD INDUSTRIAL HA PROSISA', '25606064', NULL, 'HUGO GERARDO AVALOS BENAVIDES', NULL, 'lavalos@prosisa.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1579, 2, 39, 4, 'NATURE LOVERS (SANITE)', '22141975', NULL, 'RODOLFO CALDERON ARAYA', NULL, 'info@sanitecostarica.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1580, 2, 39, 4, 'UPALA AGRICOLA SA', '24800100', NULL, 'ALFREDO VOLIO PEREZ', NULL, 'gherrera@upalagricola.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1581, 2, 39, 4, 'ECOSEAL', '24878585', NULL, 'JOSE EDUARDO BALTODANO CASTRO', NULL, 'jbaltodano@ecoseal.ws', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1582, 2, 39, 4, 'SHALOM INTERNACIONAL SEA LA PAZ', '22 53 55 33', NULL, 'ARCADIO ALEXANDER CHAVARRIA THOMAS', NULL, 'josueisrael2014@hotmail.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1583, 2, 39, 4, 'SERVINYEC - FABODIESEL / INTERPLAZA', '22361960', NULL, 'FABIAN GILBERTO BONILLA BONILLA', NULL, 'fabian.bonilla@fabodiesel.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1584, 2, 39, 4, 'DISTRIBUIDORA VARGAS PATIÑO', '22330795', NULL, 'FREDDY ALBERTO VARGAS PATIÑO', NULL, 'fvargas@disvapacr.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1585, 2, 39, 4, 'CLINICA DENTAL CARLOS SEVILLA MONTERO', '-', NULL, 'CARLOS CEVILLA MONTERO', NULL, '-', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1586, 2, 39, 4, 'TROPIFOODS', '22931789', NULL, 'EDGAR ANTONIO MEDINA LUMBI', NULL, 'emedinam@tropifoods.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1587, 2, 39, 4, 'VEN RESANSIL SA', '22037912', NULL, 'OSCAR ALONSO HERNANDEZ VARGAS', NULL, 'j.vargas@resansil.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1588, 2, 39, 4, 'ASA SECURITY SA', '60275244', NULL, 'GUSTAVO HERNANDEZ', NULL, 'ghernandez@asaseguridad.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1589, 2, 39, 4, 'ADA TRENDY SOCIEDAD ANONIMA', '87290131', NULL, 'JONATHAN STWARD LEITON MORA', NULL, 'jleitonm@hotmail.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1590, 2, 39, 4, 'CORPORACION BIOMEDICA COBISA', '25912063', NULL, 'MARIA MAYELA MADRIGAL MIRANDA', NULL, 'mmadrigal@cobisacr.com ​', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1591, 2, 39, 4, 'PORCINA CERHIMA LIMITADA', '24302022', NULL, 'MELZHIAN DIAZ', NULL, 'crjsanchez@gmail.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1592, 2, 39, 4, 'AUTORREPUESTOS ALFARO', '22588282', NULL, 'ADOLFO ENRIQUE ALFARO CARVAJAL', NULL, 'aalfaro@ice.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1593, 2, 39, 4, 'GRUPO PRO', '22506554', NULL, 'KWAN KWOK CHING', NULL, 'k.kwok@grupoprocr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1594, 2, 39, 4, 'ZMW VALVERDE ( FLAMIMGO )', '47009274', NULL, 'WILSON GERARDO VALVERDE MOYA', NULL, 'administracion@hoteldepasoflamingo.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1595, 2, 39, 4, 'ARGUES', '25891317', NULL, 'EDUARDO ARGUEDAS CHAVERRI', NULL, 'larpeche@arguescr.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1596, 2, 39, 4, 'ELECTROMECANICACR B. F.', '22733553', NULL, 'LUIS DIEGO BUSTAMANTE FERNANDEZ', NULL, 'proyectos@electromecanicacr.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1597, 2, 39, 4, 'HAPAG-LLOYD COSTA RICA', '25195940', NULL, 'CHRISTIAN MATZEN BONILLA', NULL, 'christian.matzen@hlag.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1598, 2, 39, 4, 'COMPUTRADING COSTA RICA', '83294761', NULL, 'IVO CAGNONE', NULL, 'ivo.cagnone@computrading.net', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1599, 2, 39, 4, 'UNIVERSAL MUSICA DE CENTROAMERICA', '88229085', NULL, 'HAROLD CHAVEZ SOTO', NULL, 'harold.chaves@umusic.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1600, 2, 39, 4, 'APOTEX COSTA RICA', '22831929', NULL, 'SERGIO JOSE SOLANO MONTENEGRO', NULL, 'lvargas@apotex.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1601, 2, 39, 4, 'MAYOREO EL RAFAELEÑO', '22629808', NULL, 'RAFAEL ALVARO VARGAS LARA', NULL, 'rarce08@hotmail.es', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1602, 2, 39, 4, 'Distribuidora Rodriguez Villalobos S.A.', '27185302', NULL, 'Wilson Alexis Rodriguez Arias', NULL, 'Wilson.ra@hotmail.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1603, 2, 39, 4, 'ALQUIVAM SOCIEDAD ANONIMA', '24426178', NULL, 'MERCIADES CAMPOS MIRANDA', NULL, 'avillalobos@poasrentacar.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1604, 2, 39, 4, 'IMESA SISTEMAS SOCIEDAD ANONIMA', '22727536', NULL, 'RODOLFO JIMENEZ SOLANO', NULL, 'ronald.barrantes@imesasistemas.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1605, 2, 39, 4, 'INTERSOL INTERMODAL SOLUTIONS LIMITADA', NULL, NULL, 'JUAN CARLOS HERNANDEZ MENA', NULL, 'jchernandez@icscostarica.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1606, 2, 39, 5, 'COMPRAS DIRECTAS (JETBOX)', '25283715', NULL, 'ROGER CAMPOS', NULL, 'roger.campos@jetbox.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1607, 2, 39, 5, 'CONECLI INTERNACIONAL', '22200009', NULL, 'GUILLERMO GUTIERREZ GRANADOS', NULL, 'cmartinez@ecusjo.eculine.net', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1608, 2, 39, 5, 'DIMPACK', '2241-0294', NULL, 'CARLOS ANTONIO VAZQUEZ DAY', NULL, 'carlos@dimpack.net', '', '', '', 'Puntarenas', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1609, 2, 39, 5, 'CORPORACIÓN COMERCIAL SIGMA INTERNACIONAL', '22347474', NULL, 'LUIS FERNANDO GUERRA SUAREZ', NULL, 'lmguerra@gruposigma.net', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1610, 2, 39, 5, 'RCV INTERMODAL LOGISTICA', '22330003', NULL, 'RICARDO CHINCHILLA VARGAS', NULL, 'richiva@rcvint.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1611, 2, 39, 5, 'SANTILLANA SA', '22204242', NULL, 'LUIS ALONSO GONZALEZ VAZQUEZ', NULL, 'kramirez@santillana.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1612, 2, 39, 5, 'TITZIAN', '2223-7753', NULL, 'FABRIZIO FRANCISCO COTO COTO', NULL, 'fabriziocoto@titzian.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1613, 2, 39, 5, 'INDUSTRIAL LUGUME', '22861282', NULL, 'LUIS GUSTAVO MENDEZ PALMA', NULL, 'creditoycobro@lugume.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1614, 2, 39, 5, 'EL RAFAELEÑO', '22629808', NULL, 'RAFAEL ALVARO VARGAS LARA', NULL, 'rarce08@hotmail.es', '', '', '', 'Limon', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1615, 2, 39, 5, 'SOLUCIONES NEAN DE CR SA', '22909959', NULL, 'GLORIA MARINA MATA ALVAREZ', NULL, 'david.barahona@neansa.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1616, 2, 39, 5, 'EDIFICADORA INDUSTRIAL', '22950225', NULL, 'HECTOR LEE QUIROS', NULL, 'leecorp@leecorp.net', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1617, 2, 39, 5, 'GOYCASA', '22450313', NULL, 'FRANKLIN CAMPOS CALDERON', NULL, 'csalazar@goycasa.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1618, 2, 39, 5, 'SYMGENTA', '24314707', NULL, 'MARIO ARREA SIERMANN', NULL, 'julieta.alvarado@syngenta.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1619, 2, 39, 5, 'CONSTRUCTORA NAVARRO Y AVILES', '22763235', NULL, 'SALVADOR ANTONIO AVILES MAYORGA', NULL, 'mariana.blanco@navarroyaviles.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1620, 2, 39, 5, 'SOCIEDAD GANADERA SAN AGUSTIN SA', '85526290', NULL, 'MARIA DEL ROSARIO LACAYO GIL', NULL, 'e-mail: hsanagustinsa@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1621, 2, 39, 5, 'ACELUB', '4100 8004', NULL, 'JAIME ROLANDO SALAZAR VEGA', NULL, 'vmontano@acelub.cr', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1622, 2, 39, 5, 'FIBROCENTRO', '22571717 ext 124', NULL, 'ORLANDO ODIO ARIZA', NULL, 'oodio@fibrocentrocr.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1623, 2, 39, 5, 'DATAFORMAS DE COSTA RICA', '22165000', NULL, 'ALEJANDRO JOSE JIMENEZ RODRIGUEZ', NULL, 'e-mail: jonathan.madrigal@dataformas.com', '', '', '', 'Puntarenas', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1624, 2, 39, 5, 'AQUAMETRIC', '2430-3838', NULL, 'XAVIER MORICE RODRIGUEZ', NULL, 'xmorice@aquametric.net', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1625, 2, 39, 5, 'GALA SPORT', '40103737', NULL, 'ALAN ALTER MONTVELISKY', NULL, 'logística@grupoa.co.cr', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1626, 2, 39, 5, 'ALMACEN FISCAL SANDAL', '22639811', NULL, 'RICARDO ARQUEDAS SOLERA', NULL, 'cchacon@sandal.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1627, 2, 39, 5, 'TECNO PACK SOCIEDAD ANONIMA', '24310710', NULL, 'FELIX ABDIEL SOLIS', NULL, 'administracion@tecno-packcr.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1628, 2, 39, 5, 'ALEXANDER ACUÑA BALDIZON', '22477406', NULL, 'ALEXANDER ACUÑA BALDIZON', NULL, 'alexacunab@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1629, 2, 39, 5, 'YARA COSTA RICA', '21050250', NULL, 'BERNARDO MORSINK SCHAEFER', NULL, 'ronald.cubero@yara.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1630, 2, 39, 5, 'DISTRIBUIDORA RODRIGUEZ VILLALOBOS', '27185302', NULL, 'Wilson Alexis Rodriguez Arias', NULL, 'wilson.ra@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1631, 2, 39, 5, 'FULL COPY SOLUTIONS', '83478080', NULL, 'CHRISTIAN GONZALEZ GONZALEZ', NULL, 'fullcopysol@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1632, 2, 39, 5, 'DISTRIBUIDORA DE EQUIPO ELECTROMECANICO YARILAIT', '60462744', NULL, 'ALEXANDER LAITANO BENAVIDES', NULL, 'eliza@laitanoconsultores.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1633, 2, 39, 5, 'ASOCIACIÓN COSTA RICA PMI CHAPTER', '22248883', NULL, 'EDGAR CARLOS DE JESUS VAZQUEZ RETANA', NULL, 'asistente@pmicr.org', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1634, 2, 39, 5, 'TRANSPORTES PROFESIONALES SU AMIGO SA', '22506190/ 83879112', NULL, 'MARCOS ROBERTO MORA MORALES', NULL, 'transprosa@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1635, 2, 39, 5, 'DEPOSITO INTERNACIONAL DE CARGA ECATRANS SA', '22656566', NULL, 'MARIA ENID SERRANO RODRIGUEZ', NULL, 'bcascante@ecatrans.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1636, 2, 39, 5, 'INTERTEC SOCIEDAD ANONIMA', '22217831', NULL, 'MIGUEL ANTONIO HERNANDEZ MENDEZ', NULL, 'mhernandez@intertec.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1637, 2, 39, 5, 'TRANSPORTES JOKEVISION SA', '40525678', NULL, 'JESUS MARIA QUESADA ARROYO', NULL, 'rquesada@cosrticavision.net', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 14:10:00', 1);
INSERT INTO `qa_customers` VALUES (1638, 1, 39, 2, 'Cinco Ceibas', '8878-0222 ', NULL, 'Henk Morelisse', NULL, 'info@cincoceibas.com', '', '', '', '', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1639, 1, 39, 2, 'Costa Rica Travel in Advance', '8372-2413', NULL, 'Jose Obando ', NULL, 'crtravelinadvance@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1640, 1, 39, 2, 'Ecogetaways Travel Designs Costa Rica ', '2015-2016 / 8863-6218 /  ', NULL, 'Giuliana Malavassi, Silvia ', NULL, 'gmalavassi@ecogetawayscr.com; info@ecogetawayscr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1641, 1, 39, 2, 'Emotion Guarentee ', '8317-6593 2444-8622 2444-', NULL, 'Gady ', NULL, 'info@emotionguaranteed.com; wryzamoram@gmail.com; zamar2000sa@yahho.com ', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1642, 1, 39, 2, 'Green Trails Costa Rica', '2292-1371 / 8871-2176', NULL, 'Jorge Madriz', NULL, 'tours@greentrailcostarica.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1643, 1, 39, 2, 'Hostel Bekuo', '2234-1091', NULL, 'Samuel', NULL, 'info@hostelbekuo.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1644, 1, 39, 2, 'Hotel Ara Macao Inn', '2233-2742 / 2257-6228', NULL, 'David', NULL, 'aramacoinn.cr@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1645, 1, 39, 2, 'Hotel Casa Cambranes ', '2253-8858; 8381-4693 (Car', NULL, 'Shirani Morales Garro', NULL, 'reservas@hotelcasacambranes.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1646, 1, 39, 2, 'Hotel Maragato ', '2222-7313 / 22227737', NULL, 'Tomas; Richard', NULL, 'tours@hotelmaragato.com; info@hotelmaragato.com; paulomaragatotorres@gmail.com; hotelmaragato@gmail.com  ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1647, 1, 39, 2, 'Hotel Talamanca', '8652-6876 / 8652-6876', NULL, 'Gregorio Alvarez / Claudia Rodríguez / Ulises', NULL, 'hoteltalamanca@ice.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1648, 1, 39, 2, 'Karla Rivas (Freelance)', '8384-0869', NULL, 'Ronald Rivera / Katia Contreras ', NULL, 'karla.23@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1649, 1, 39, 2, 'Pamaca', 'Maríangeles Pacheco', NULL, 'Aura María Ferrey, katthya Mora Gerente ', NULL, 'pamaca55@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1650, 1, 39, 2, 'Total Express', '2453-6240', NULL, NULL, NULL, 'alexandermora@totalexpresscr.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1651, 1, 39, 2, 'Viajes Vivar', '2221-8170', NULL, 'José Diego', NULL, NULL, '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1652, 1, 39, 2, '123 Costa Rica Travel ', '2233-8068', NULL, 'Jaime Colmenares', NULL, 'jaime@123costaricatravel.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1653, 1, 39, 2, 'Agencia de Viajes El Viajero ', '2258-4023 / 7108-4285', NULL, 'Gustavo Moreno  /  Selina Mo ', NULL, 'agenciaelviajero@gmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1654, 1, 39, 2, 'Caminatas Chino (chinix) ', '8393 1846', NULL, 'Chino Solís ', NULL, 'turismorural@caminataschinosolis.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1655, 1, 39, 2, 'CR HAPPY ADVENTURES ', '8850-5461', NULL, 'Elena Moreira Umarzon ', NULL, 'crhappyadventures@gmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1656, 1, 39, 2, 'Hostel Aldea', '2233-6365', NULL, 'Marylin', NULL, 'hola@aldeahostelcostarica.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1657, 1, 39, 2, 'Hostel Vangogh ', '8399-3879', NULL, 'David Molina ', NULL, 'hostelvangogh@hotmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1658, 1, 39, 2, 'Hotel Kekoldi', '2248-0804', NULL, 'David', NULL, 'reservation@kekoldi.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1659, 1, 39, 2, 'Hotel Puerta del Sol ', '2293-8109 / 8381-4873', NULL, 'Doña Ana ', NULL, 'anamaría@bbpuertadelsol.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1660, 1, 39, 2, 'Hotel The Rock', '2232-9864 / 2231-0397', NULL, 'Carlos Solis ', NULL, 'therockbnb@gmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1661, 1, 39, 2, 'Instituto de Idiomas Wizard', '2222-6080', NULL, 'Ana Loyo ', NULL, 'ana.loyo@wizardcostarica.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1662, 1, 39, 2, 'Ventas de Viajes Casa Canadá ', '2257-6646 / 2221-2053', NULL, NULL, NULL, 'travel@casacanada.net ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1663, 1, 39, 2, 'Multiviajes ', NULL, NULL, NULL, NULL, 'comercial@multiviajes-cr.com; ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1664, 1, 39, 2, 'Cr <Adventure', '8664-6119', NULL, 'Meylin Nuñez Segura ', NULL, 'info@adventuretravelcr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1665, 1, 39, 2, 'Hotel Casa Leon ', '2221-1651 / 8843-8633', NULL, 'Patrick Lehner ', NULL, 'casa_leon_sa@hotmail.com ', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1666, 1, 39, 2, 'Costa Rica Travel Management ', '2260-0900', NULL, 'Lucia ', NULL, NULL, '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1667, 1, 39, 2, 'Ronnie Tours', '2219-4547', NULL, 'Ronald Gonzalez', NULL, 'mekir@conexion.cr', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1668, 1, 39, 2, 'Corporación Hy askalón ', '8340-1234', NULL, 'Natalia Delgado ', NULL, NULL, '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1669, 1, 39, 2, 'Alvi Travel', '2228-6475', NULL, NULL, NULL, 'alvitravel@ice.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1670, 1, 39, 2, 'Apartotel Bamboo', '2440-4835', NULL, 'Oscar Oconor A', NULL, 'info@bambooaparthotel.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1671, 1, 39, 2, 'Agencia de Viajes Ascomi .S.A.', '2256-8061', NULL, 'Victor Bonilla', NULL, 'ascomi068@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1672, 1, 39, 2, 'Armotours', '2257-0202', NULL, 'Asesora de Viajes', NULL, 'reservas@armotours.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1673, 1, 39, 2, 'Avianca Tour', '8395-9033', NULL, 'Jorge', NULL, 'aniva_taca@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1674, 1, 39, 2, 'Bella Costa Rica Travel', NULL, NULL, 'Andres', NULL, 'reservations@bellacostaricatravel.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1675, 1, 39, 2, 'Buen Paso Travel', '2283-8281', NULL, 'Iguana Dorada', NULL, 'sandrabuenpaso@racsa.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1676, 1, 39, 2, 'Costa Rica Explorer', '8644-3705', NULL, 'Gloria Herrera', NULL, 'miguelexplore@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1677, 1, 39, 2, 'Costa Rica Amazilia Travel', '2430-4834', NULL, 'Kattia Solano', NULL, 'amora@amaziliatravel.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1678, 1, 39, 2, 'Costa Rica a su Alcance', '2296-7249', NULL, 'Andrea', NULL, 'viajescrasualcance@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1679, 1, 39, 2, 'Costa Rica Tours and Party', '2237-7192', NULL, 'Andrea Gonzalez', NULL, 'toursandparty@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1680, 1, 39, 2, 'Curre Agencia de Viajes Costa Rica', '2234-6716', NULL, 'Shanna Zigan', NULL, 'currecr@gmail.com.', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1681, 1, 39, 2, 'Calle 20 Hotel Boutique', '2222-8936', NULL, 'Claudia Fernandez', NULL, 'info@hotelcalle20.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1682, 1, 39, 2, 'Costa Rica Guest House', '2223-7034', NULL, 'Maria Araujo', NULL, 'costaricaguesthouse@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1683, 1, 39, 2, 'Dollar Rent a Car', '2257-0671', NULL, 'Pamela   ', NULL, 'ana lorean@dailytourstravelcr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1684, 1, 39, 2, 'Easa Almendares .S.A', '2256-5458', NULL, 'Maria del Mar Ulloa', NULL, 'tatiana@easacr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1685, 1, 39, 2, 'Fama Viajes', '2292-4273', NULL, 'Eloy Alfaro', NULL, 'vaguilera72@amnet.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1686, 1, 39, 2, 'Guana Tour', '8421-7720', NULL, 'Osvaldo Soto', NULL, 'guanatour76@hotmail.com', '', '', '', 'Guanacaste', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1687, 1, 39, 2, 'Hostel San Jose ( Toruma)', '2234-8186', NULL, 'Angie Sibaja B', NULL, NULL, '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1688, 1, 39, 2, 'Hotel Boutique Luz de Luna', '2225-4919', NULL, 'Andres', NULL, 'christian.soto@luzdelunahotelboutique.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1689, 1, 39, 2, 'Hotel Luz de Luna', '2225-4919', NULL, 'Gerencia de Operaciones', NULL, 'reservaciones@luzdelunahotelboutique.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1690, 1, 39, 2, 'Idearte Eventos', '2253-2903', NULL, 'Carolina  Chaverri', NULL, 'idearte_eventos@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1691, 1, 39, 2, 'Iris Tours   ( 8392-3695 )', '2234-4747', NULL, 'Ana Patricia Quesda', NULL, 'a.mauricio123@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1692, 1, 39, 2, 'K M Tours', '2253-4243', NULL, 'Martha Arguedas', NULL, 'jmrodriguez@kmtourscr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1693, 1, 39, 2, 'M,P , Travel  ( Moravia )', NULL, NULL, 'Alex Mauricio Arias Sanchez', NULL, 'mbadillacr@yahoo.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1694, 1, 39, 2, 'Neotropical Paradise', '4081-1114', NULL, 'Joselyn ', NULL, 'info@neotropicalparadise.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1695, 1, 39, 2, 'Panorama Travel', '2283-0122', NULL, 'Mario Alvarez', NULL, NULL, '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1696, 1, 39, 2, 'Pura Vida Costa Rica Travel', '2436-4830', NULL, 'Ricardo', NULL, 'info@puravidacostaricatravel.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1697, 1, 39, 2, 'Romofa Tours', '8310-2205', NULL, 'Marcela Gonzalez', NULL, 'romofatours@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1698, 1, 39, 2, 'Sakura Tourist', '2272-8745', NULL, 'Fernado  Perez G', NULL, 'info@sakuracostarica.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1699, 1, 39, 2, 'Tamandu Travel', '2431-0806', NULL, 'Michael Lee', NULL, 'tamandutravelcr@gmail.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1700, 1, 39, 2, 'Toyota Rent a Card', '2106-3462', NULL, 'Wainer Ocampo', NULL, 'aperez@toyotarent.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1701, 1, 39, 2, 'Universidad Latina', '2562-5210', NULL, 'Sandra Rios', NULL, 'william.calvo@ulatina.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1702, 1, 39, 2, 'Viva  Services', '2291-2444', NULL, 'Adina Perez', NULL, 'Monika.Schmid@aaa-net.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1703, 1, 39, 2, 'Your Travel Experience ', '2524-1347', NULL, 'karina gonzalez', NULL, 'ldelgado@yourtravelexperience ', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1704, 1, 39, 2, 'Green Line', '8416-4638', NULL, 'Josue', NULL, NULL, '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1705, 1, 39, 2, 'Transnet', '7059-1598', NULL, 'Aurelio', NULL, 'info@ecotrip.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1706, 1, 39, 2, 'Viajes a tiempo', '8443-7763', NULL, 'Martha', NULL, NULL, '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1707, 1, 39, 2, '506 Costa Rica Tours ', '2265-4250', NULL, 'Gabriela Ramirez & Lic. German ', NULL, '506costaricatours@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1708, 1, 39, 2, 'Excursiones Paradise ', '6181-0395', NULL, 'Minor Alvarado', NULL, 'excursionesparadise@gmail.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1709, 1, 39, 2, 'Hotel Centroamericano ', '2221-3362', NULL, 'Luis Jiménez / Shanka Syar ', NULL, 'ghcentroamericano@ice.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1710, 1, 39, 2, 'RYU Turismo ', '8365-7341 / 2234-5185', NULL, 'Marianela Gamboa', NULL, 'jorge.romero@ryucr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1711, 1, 39, 2, 'Arnoldo Campabadal ', '8517-7075', NULL, 'Arnoldo Campabadal ', NULL, 'arcampabadal@gmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1712, 1, 39, 2, 'Hotel Dunn Inn ', '2222-3232', NULL, 'Marco', NULL, 'reservdunn@tacsa.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1713, 1, 39, 2, 'RESOTUR de Costa Rica ', '8782-8000 / 6112-7474', NULL, 'Diego ', NULL, 'resoturcr@gmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1714, 1, 39, 2, 'Viajeros del Norte - Costa Rica Tesoro Natural ', '7044-6254 / 2540-0977 / 2', NULL, 'Dayan Acosta Valverde / Alfonso Rubio Quirós ', NULL, 'mercadeo@viajerosdelnorte.cr; ventas@tesoronatural.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1715, 1, 39, 2, 'Academia Columbus', '2244-6827', NULL, 'Gabriela Gonzalez', NULL, 'academicocr@academia-columbus.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1716, 1, 39, 2, 'Asuaire ( Uruca-)', NULL, NULL, 'Jose', NULL, 'mrodriguez@asuaire.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1717, 1, 39, 2, 'Colinas del Poas', '2296-7074', NULL, 'Felipe Barrantes', NULL, 'administracion@colinasdelpoas.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1718, 1, 39, 2, 'Costa Rica Nettai S.A.', '2662-1175', NULL, 'Juan Carlos Troyo', NULL, 'costaricanettai@gmail.com', '', '', '', 'Puntarenas', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1719, 1, 39, 2, 'Golden Tours', '8718-1974', NULL, 'Josue Fariña', NULL, 'goldentourscr@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1720, 1, 39, 2, 'Hotel Quinta Avenida', '2248-4715', NULL, 'Romy', NULL, 'hotelquintaavenida@hotmail,com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1721, 1, 39, 2, 'Mi Lora Tours  ( Residencial Los Arcos ,Hered)', '2239-5062', NULL, 'Jose Miguel Rodriguez', NULL, 'miloratours.cr@gmail.com', '', '', '', 'Heredia', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1722, 1, 39, 2, 'Rustic Pathways', '2283-2844', NULL, 'Andre', NULL, 'wainer@rusticpathways.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1723, 1, 39, 2, 'Viajes El Gabo', '6001-3570', NULL, 'Mariela Arrieta O', NULL, 'viajeselgabo@yahoo.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1724, 1, 39, 3, 'Acuarela Tours', '25371942 / 8534-0248 / 40', NULL, 'Aracelly Garita Quesada - Gerente ', NULL, 'info@acuarelacr.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1725, 1, 39, 3, 'Costa Rica  Beds Hotels Group ', '2297-5854', NULL, 'Luis Villavicencio; Rosaura; ', NULL, 'ventasnatural@racsa.co.cr; ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1726, 1, 39, 3, 'Creative Wets', '2537-0003', NULL, 'Rosaura Navarro', NULL, 'info@creativewets.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1727, 1, 39, 3, 'EcoTeach Operations Manager', '2560-4548 / 8834-1954', NULL, 'Carlos Pika', NULL, 'pika@ecoteach.com', '', '', '', 'Heredia', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1728, 1, 39, 3, 'Enjoy 506', '2253-8958', NULL, 'Ana', NULL, 'info@enjoy506.com; cmontero@enjoy506,com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1729, 1, 39, 3, 'Exotur', '8384-7403', NULL, 'Fabrizzio Fiorentini', NULL, 'nella@exotur.com; exotur@yahoo.com; info@exotur.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1730, 1, 39, 3, 'Green Tropical Tours (Coach Costa Rica)', '2229-4192', NULL, NULL, NULL, 'information@greentropical.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1731, 1, 39, 3, 'Hostel Casa Los Yoses', '2234-5486', NULL, 'Juan Gabriel', NULL, 'info@casayoses.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1732, 1, 39, 3, 'Hotel Calle 20', '2222-8936', NULL, 'Steven', NULL, 'info@hotelcalle20.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1733, 1, 39, 3, 'Hotel Casa Kibikibi', '2224-1686 / 8867-9819', NULL, 'Efrain', NULL, 'info@casakibikibi.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1734, 1, 39, 3, 'Hotel La Cuesta', '2256-7946', NULL, 'Caro', NULL, 'hotellacuesta@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1735, 1, 39, 3, 'Hotel Santo Tomas & Restaurante Oasis', '2255-0448', NULL, 'Manfred; kim Ampre ', NULL, 'info@hotelsantotomas.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1736, 1, 39, 3, 'Hotel Costa Rica Tennis Club ', '2232-1266 / 2232-12228 ex', NULL, 'Margot Aida Rada Dueña ', NULL, 'recepcion@crtennisclub.com; directorhotel@crtennis.com; reservaciones@crtennis.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1737, 1, 39, 3, 'Languaje Institute Logos', '2258-7021 / 8374-9729 / 7', NULL, 'Mario Front Torres', NULL, 'ronaldrr@hotmail.com; info@spanishlogos.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1738, 1, 39, 3, 'Planetario ', '2255-4244 / 8710-5736 / 2', NULL, 'Rosberly Fernández ', NULL, 'auraplanetario@racsa.co.cr; auraferrey@hotmail.com; kmoraplanetario@racsa.co.cr; kmora2804@hotmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1739, 1, 39, 3, 'Servicios Multiculturales (Semvo)', '8703-1209 / 2292-0679', NULL, 'Estela', NULL, 'info@semvo.org; mgamboagamboa@yahoo.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1740, 1, 39, 3, 'Viajes Boganun ', NULL, NULL, 'María Fernanda Garita', NULL, 'viajesboganun@hotmail.com; carritur-sa@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1741, 1, 39, 3, 'Wild Rider', '2258-4604', NULL, NULL, NULL, 'info@wild-rider.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1742, 1, 39, 3, 'AC Viajes CR ', '8395-9033', NULL, 'Ana Valverde Araya', NULL, 'acviajescr@gmail.com; aniva_taca@hotmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1743, 1, 39, 3, 'Getways Adventures ', '2223-8070', NULL, 'Leslie Wilson ', NULL, 'lwilson@getawaycompany.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1744, 1, 39, 3, 'ASAF VERO TOURS COSTA RICA', '25880481 - CEL: (506) 838', NULL, 'Verónica Granado', NULL, 'info@verocostarica.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1745, 1, 39, 3, 'COSTA RICA BUREAU', '2296-7074', NULL, 'Marcela Aguila, Arturo Napoles ', NULL, 'info@costaricabureau.com; marcela@costaricabureau.com; arturo@rainforesttours.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1746, 1, 39, 3, 'EcoTravel Costa Rica', '2260-5765', NULL, 'Tatiana ', NULL, 'reservas@ecotravel-cr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1747, 1, 39, 3, 'Hostel Loundge In And Basic ', '2234-2998', NULL, 'Oriana Serrano ', NULL, 'paula.guirdi@gmail.com; reservations@inandbasic.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1748, 1, 39, 3, 'Hotel Aranjuez', '2256-1825', NULL, 'José Vindas ', NULL, 'info@hotelaranjuez.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1749, 1, 39, 3, 'Hotel El Guarumo ', '2257-9905', NULL, 'Andres   ', NULL, NULL, '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1750, 1, 39, 3, 'Hotel Palm House Inn ', '2223-9063', NULL, 'Leonard ', NULL, 'manager@thepalmhouseinn.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1751, 1, 39, 3, 'Hotel Rincón de San José', '2221-9706', NULL, 'Rebeca ', NULL, 'info@hotelrincondesanjose.com; soporte@hotelrincondesanjose.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1752, 1, 39, 3, 'Hotel Vista Los Vocanes ', '2265-4246', NULL, 'James Badd ', NULL, 'jbabb@residencias-volcanes.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1753, 1, 39, 3, 'Kathia Céspedes ', '6158-1781', NULL, 'Kathia Céspedes ', NULL, 'jm.soluciones@aol.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1754, 1, 39, 3, 'Rickys Tours ', '8314-8167 / 22308749', NULL, 'Claudio Chacón ', NULL, 'rruiz1970@hotmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1755, 1, 39, 3, 'Viajes Mar y Plata ', '22860405  / 2277-4622 / 8', NULL, 'Ana', NULL, 'maryplata@racsa.co.cr; damamaryplaya@gmail.com; reservas1@yahoo.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1756, 1, 39, 3, 'Sports & Travel Costa Rica ', '8677-3834 / 87180303', NULL, 'Felipe Peérez & Lucas Wihinston ', NULL, 'fperez@sportsandtravelcr.com; info@sportsandtravelcr.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1757, 1, 39, 3, 'Extreme Tours Costa Rica ', '2442-2838', NULL, 'Marvin ', NULL, 'info@extremetourscostarica.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1758, 1, 39, 3, 'Mas que Ofertas ', '6291-6678 / 2258-4023', NULL, 'Gustavo Moreno Gerente ', NULL, 'emkpresas@masqofertas@com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1759, 1, 39, 3, 'Hotel Brilla Sol ', '2442-5129 / 2430-5878 / ', NULL, 'Luis Y Flor - Dueños ', NULL, 'info@hotelbrillasol.com; florelo@racsa.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1760, 1, 39, 3, 'BELL HOME ', '2225-4752', NULL, 'Marcela ', NULL, 'homestay@ice.co.cr', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1761, 1, 39, 3, 'Destinos Esquivel ', '2410-46-47', NULL, 'Gabriela Esquivel y Adrián Fallas ', NULL, 'info@destinosezquivel.com ', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1762, 1, 39, 3, 'Ana Isabel Valverde Araya', '8395-9033', NULL, 'Ana Isabel', NULL, 'anivataca@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1763, 1, 39, 3, 'Apartotel Casa Reflejos ( Escazu )', '2288-3630', NULL, 'Alfonso Umaña', NULL, 'cs@casareflejos.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1764, 1, 39, 3, 'Agencia de Viajes Paraiso LM.SA', '2261-2092', NULL, 'Doña Gabriela', NULL, 'paradisetourslm@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1765, 1, 39, 3, 'Apartotel Obelisko', '2239-6696', NULL, 'Vicky Quiors Henchoz', NULL, 'info@apartotelobelisko.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1766, 1, 39, 3, 'Apart Prado Inn', '2257-0116', NULL, 'Lisa-Jose', NULL, 'oscar@pradoinn.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1767, 1, 39, 3, 'Asociacion de Residentes de Costa Rica', '2233-8068', NULL, 'Jhonny Orozco.', NULL, 'csolano@arcr.net', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1768, 1, 39, 3, 'Asesores de  Viajes', '6011-7606', NULL, 'Ana Isabel Valverde', NULL, 'turismoasesoresdeviajes@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1769, 1, 39, 3, 'Asetaca   ( Uruca )', '2220-0930', NULL, 'Maria del Mar', NULL, 'ablanco@asetaca.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1770, 1, 39, 3, 'Buone Vacanze Travel CR', NULL, NULL, 'Maria Brenes Arce', NULL, 'buoIinformativone@vacanzetravelcr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1771, 1, 39, 3, 'Costa Rica Outdoors', '2231-0306', NULL, 'Sandra', NULL, 'reservations@costaricaoutdoors.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1772, 1, 39, 3, 'Costa Rica 4 All', '2220-2909', NULL, 'Don Miguel', NULL, 'mvalverde@cr4all.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1773, 1, 39, 3, 'Costa Rica Go Travel', '4030-4757', NULL, 'Alejandro Mora', NULL, 'costaricagotravel@gmail.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1774, 1, 39, 3, 'Costa Rica Essence', '2441-1119', NULL, 'Yendry', NULL, 'rosygarcia@costaricaessence.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1775, 1, 39, 3, 'Costa Rica B.T.D Best Travel Designer( Andrea )', '8347-2680', NULL, 'Laura Piedra', NULL, 'tarifas@costaricabtd.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1776, 1, 39, 3, 'Costa Rica Travel Management', '2238-4758', NULL, 'Rebeca Gonzalez', NULL, 'shirley@costaricatravelmanagement.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1777, 1, 39, 3, 'Costa Rica Honey Mooners', '2479-1350', NULL, 'Natalia Zuñiga', NULL, 'sales@costaricahoneymooners.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1778, 1, 39, 3, 'Costa Rica Expeditions', NULL, NULL, 'Diego Perez Fiatt', NULL, 'bdiaz@costaricaexpeditions.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1779, 1, 39, 3, 'Costa Rica Trip Guide', '8373-6088', NULL, 'Sachiro Kawakubo', NULL, 'francinne@transportationincostarica.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1780, 1, 39, 3, 'Central American Tours', '2291-2161', NULL, 'Fabiola  ', NULL, 'ptaylor@catours.net', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1781, 1, 39, 3, 'Destino Tropical', '2479-8589', NULL, 'Donald Calderon', NULL, 'info@decoraldestinos.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1782, 1, 39, 3, 'Fabrica de Carretas Eloy Alfaro', '2454-4131', NULL, 'Tatiana Mora', NULL, 'carretaseloyalfaro@gmail.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1783, 1, 39, 3, 'Global Travel Solutions', '2261-1045', NULL, 'Warner Araya', NULL, 'golbaltravelcr@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1784, 1, 39, 3, 'Golden Travel Int', '8613-3969', NULL, 'Bernar Gutierrez Campos', NULL, 'goldentravelint@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1785, 1, 39, 3, 'Hostal  Casa 69', '2256-8849', NULL, 'Angie Sibaja B', NULL, NULL, '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1786, 1, 39, 3, 'Hostel Stolas', '2225-5185', NULL, 'Oscar Mora', NULL, 'info@stolascr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1787, 1, 39, 3, 'Hotel Calle 20', '2222-8936', NULL, 'Ricardo', NULL, 'gerencia@hotelcalle20.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1788, 1, 39, 3, 'Hotel Maragato', '2222-7313', NULL, 'Christian Soto Jimenez', NULL, 'gerencia@hotelmaragato.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1789, 1, 39, 3, 'Hotel Santo Tomas', '2255-0448', NULL, 'Andrey', NULL, 'info@hotelsantotomas.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1790, 1, 39, 3, 'Iguana Dorada', '8906-6000', NULL, 'Arnoldo  ', NULL, 'iguanadorada.cr@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1791, 1, 39, 3, 'Jones Travel And Tours', '786-260-9865', NULL, 'Ericka Mora Camacho', NULL, 'jonestravelandtours@outlook.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1792, 1, 39, 3, 'Karlid Viajes', '2444-5657', NULL, 'Berny', NULL, 'ventas@karlidviajes.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1793, 1, 39, 3, 'Mario Expeditions', '7013-5676', NULL, 'Sandra Ojeda Jones', NULL, 'marioexpeditions@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1794, 1, 39, 3, 'Mundirama  Travel Agency', '2296-1672', NULL, 'Maynor Quesada Araya', NULL, 'rpicado@mundiramacr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1795, 1, 39, 3, 'o2adventures C.R.', '2494-5456', NULL, 'Maureen Badilla', NULL, 'o2adventurescr@gmail.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1796, 1, 39, 3, 'Profi Mercadeo', '2222-0704', NULL, 'Kenneth Miller Miller', NULL, 'ventas@profimercadeo.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1797, 1, 39, 3, 'Real-aventura', '6020-9991', NULL, 'Carmen Lidia Azofeifa', NULL, 'real-aventura@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1798, 1, 39, 3, 'Round Trip Costa Rica', '2256-6265', NULL, 'Daniela Cedeño', NULL, 'michael@roundtripcostarica.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1799, 1, 39, 3, 'S.T.R Travel Internacional', NULL, NULL, 'Sandra Saborio', NULL, 'viajes.str.internacional@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1800, 1, 39, 3, 'Servicios en Turismo A.I.Tours C.R.', NULL, NULL, 'Felipe', NULL, 'aitourscostarica@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1801, 1, 39, 3, 'Tierra Verde Adventures', '2249-2354', NULL, 'Zeiddy Cruz', NULL, 'emilia.calvo@tierra-verde.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1802, 1, 39, 3, 'Tropical Tours Costa Rica ( Tour deportivos)', '2524-2551', NULL, 'Ana Morales', NULL, 'carlos@toursdeportivos.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1803, 1, 39, 3, 'Viajeros del Sur  ( Curridabat )', '2280-8888', NULL, 'Andres Carmona D', NULL, 'asfallas@hotmail.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1804, 1, 39, 3, 'Viajes Estrellas de Mar y Mas', '2236-8610', NULL, 'Emilia Calvo', NULL, 'viajesestrellasdemar@outlook.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1805, 1, 39, 3, 'Viva Tambor', '8704-0820', NULL, 'Carlos Vargas Mata', NULL, 'administrativo@vivatambor.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1806, 1, 39, 3, 'Libly Viajes', '6292-6116', NULL, 'Libly', NULL, NULL, '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1807, 1, 39, 3, 'Mishka Costa Rica', '8605-4932', NULL, 'Andres', NULL, NULL, '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1808, 1, 39, 3, 'Best Destiantion', '8386-0633', NULL, 'Bismarck', NULL, 'bestdestination@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1809, 1, 39, 3, 'Gr Tourscr', '8871-2176', NULL, 'Lic Luis Delgado.', NULL, 'grttourscr@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1810, 1, 39, 4, 'Agencia Paraíso ', '2461-0683 / 2283-1313', NULL, 'Rebeca Delgado; Carolina', NULL, 'rdelgado@elparaiso.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1811, 1, 39, 4, 'Costa Rica Convention Bureau (Agencia Travel Boreau)', '2221-3753', NULL, 'Pablo Solano Tony ', NULL, 'info@costaricacvb.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1812, 1, 39, 4, 'Easa Travel', '2256-5458; 2256-7830', NULL, 'Esteban Obando', NULL, 'info@easacr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1813, 1, 39, 4, 'Ecotour', '8656-9584', NULL, 'Alejandro Inés', NULL, 'info@ecotur.co', '', '', '', '', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1814, 1, 39, 4, 'Excursiones Gabriel ', '8828-9090', NULL, 'Gabriel ', NULL, 'excursionesgabriel@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1815, 1, 39, 4, 'Experience Travel ', '8504-9966 / 5707-8379', NULL, 'Guiselle Montes ', NULL, 'info@experiencetravelcr.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1816, 1, 39, 4, 'Hellen Travel', '2552-5245', NULL, 'Hellen', NULL, 'ventas@hellentravel.com; info@hellentravel.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1817, 1, 39, 4, 'Hotel Ambassador', '2221-8155 / 2221-8205 / 2', NULL, 'Alma ', NULL, 'info@hotelambassador.co.cr; ventas@hotelambassador.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1818, 1, 39, 4, 'Hotel Casa 69', '2256-8879', NULL, 'Marla', NULL, 'casa69@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1819, 1, 39, 4, 'Hotel Castillo', '2221-5141', NULL, 'Maxio, Gerado Mejer,  ', NULL, 'info@hotelcastillo.biz; hotelcastillo@racsa.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1820, 1, 39, 4, 'Hotel La Riviera', '2293-0909; 2293-2582', NULL, 'Paulo / Luis ', NULL, 'info@larivierahotel.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1821, 1, 39, 4, 'Hotel Sports Men´s Lodge', '2221-2533', NULL, 'Karina  ', NULL, 'reservations@sportsmenscr.com; info@sportsmenscr.com; ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1822, 1, 39, 4, 'Hotel Trianon', '2257-0746 / 8365-6584', NULL, 'Karla ', NULL, 'trianoinhac@hotmail.com; elizaperez281@gmail.com; trianon@costaricarangements.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1823, 1, 39, 4, 'Orion Travel Service', '2286-0923', NULL, '2453-5892', NULL, 'info@oriontravelservice.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1824, 1, 39, 4, 'Rosberly Tours', '8840-8583', NULL, 'Jorge Romero ', NULL, 'rmacha_91@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1825, 1, 39, 4, 'Servicios Turístics Zona Púrpura', '2215-2660', NULL, 'Alexander Mora Matamoros', NULL, 'eskeso@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1826, 1, 39, 4, 'Viajes Sunsing Pérez ', '2515-0521 / 8804-2130', NULL, NULL, NULL, 'viajes-sunsing@ice.co.cr', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1827, 1, 39, 4, 'Kerlyn Lara Cuadra', '6009-6034', NULL, 'Kerlyn Lara', NULL, 'kalc17@hotmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1828, 1, 39, 4, 'ACTUAR/ Asociación Costarricense de Turismo Rural Comunitario ', '2248-9470 ', NULL, NULL, NULL, 'info@actuarcostarica.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1829, 1, 39, 4, 'Air Panama ', '2222-0433/ 8392-4359', NULL, 'Paula Salas / Pamela Bogantes /  Andrea Phillips ', NULL, 'estacioncostarica@airpanama.com; air.panamacr@gmail.com; airpanama@gmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1830, 1, 39, 4, 'Atp viajes ', '8372-1668', NULL, 'Francisco Cubero ', NULL, 'fcuberom@yahoo.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1831, 1, 39, 4, 'Costa Rica Natura ', '8320-8224', NULL, 'Yahaira Rojas ', NULL, 'info@costaricanatura.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1832, 1, 39, 4, 'Ekonomy Costa Rica Tours ', '6127-8888 / 2222-0777', NULL, 'Juan ', NULL, 'ekonomytourcr@gmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1833, 1, 39, 4, 'Hostel Relax ', '4033-6607', NULL, 'Mike ', NULL, 'contact@relaxhostelcr.com; relaxhostelcr@gmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1834, 1, 39, 4, 'Hotel Doña Inés ', '2222-7443/ 2222-7553', NULL, 'Esteban Leitón ', NULL, 'hoteldonaines@racsa.co.cr ; info@hoteldonaines.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1835, 1, 39, 4, 'Hotel Fleur del Lyz ', '2223-1206 ', NULL, 'recepción  ', NULL, 'reservaciones@hotelfleurdelys.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1836, 1, 39, 4, 'Hotel Posada del Museo', '2258-1087', NULL, 'Carolina ', NULL, 'posadadelmuseo@racsa.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1837, 1, 39, 4, 'Hotel Rosa del Paseo ', '2257-3225 / 2257-3258 ', NULL, 'Fernando y Fermina ', NULL, 'hotel@rosadelpaseo.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1838, 1, 39, 4, 'imágenes Tropcales ', '2258-4838 / 2258-3858', NULL, 'Frank Cheziere ', NULL, 'info@imagenes-tropicales.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1839, 1, 39, 4, 'MonkeyTower Fantastic / Alemanes ', '8844 8654', NULL, 'Jessica / Virtual ', NULL, 'reservations@monkeytower.com; jessica@monkeytower.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1840, 1, 39, 4, 'TRANSPORTES MAYSA ', NULL, NULL, 'María Jose Castañeda ', NULL, 'mcastaneda@transportesmaysa.net ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1841, 1, 39, 4, 'Viajes Simon', '7057-1557 / 8846-2615', NULL, 'Yansy Monestel Orozco ', NULL, 'ventas@viajessimon.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1842, 1, 39, 4, 'Costa Rica Rural ', '2260-3970 / 8395-7597', NULL, 'Sandra Fonseca ', NULL, 'sfonseca@costaricarural.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1843, 1, 39, 4, 'Muzo Viajes ', '8727-7184', NULL, 'Javier Solis ', NULL, 'shernandezag@gmail.com; jsolis@muzutours.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1844, 1, 39, 4, 'Cambronero Tours ', '83486111', NULL, 'Luis Cambronero ', NULL, 'cambronerotours@hotmail.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1845, 1, 39, 4, 'Hotel Aeropuerto ', '2433-7333', NULL, 'Recepcionista ', NULL, 'info@hotelaeropuerto.co.cr', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1846, 1, 39, 4, 'Berakah Travel ', '8519-2804', NULL, 'FAINER ROJAS ', NULL, '\'berakahtravelcr@gmail.com\'', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1847, 1, 39, 4, 'Tico World ', '8544-2513 ', NULL, 'Carlos Jiménez ', NULL, 'jaqueline@ticowordtravel.com; cjimenez@ticoworldtravel.com ', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1848, 1, 39, 4, 'Arenal Destinations', '6121-0814', NULL, 'Fabio E Molina', NULL, 'info@arenaldestinations.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1849, 1, 39, 4, 'Apartotel Don Francisco  ( Escazu )', '2288-2272', NULL, 'Juan Luis H', NULL, 'cservices@hoteldonfrancisco.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1850, 1, 39, 4, 'Agencia Sol y Luna', '8881-0889', NULL, 'Lloyd Martinez F', NULL, 'agencia.solyluna@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1851, 1, 39, 4, 'Ave del Sol Travel', ' 4702-5960 ', NULL, 'Andrea', NULL, 'info@avedelsoltravel.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1852, 1, 39, 4, 'Ana Isabel Valverde Araya', '8395-9033', NULL, 'Don Javier Prado', NULL, 'acviajescr@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1853, 1, 39, 4, 'Aventuras de la Naturaleza', '2777-0973', NULL, 'Cindy Solano', NULL, 'manquepos@hotmail.com', '', '', '', 'Puntarenas', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1854, 1, 39, 4, 'Apartotel La Perla', '2232-6153', NULL, 'Jovanela Hernandez', NULL, 'mrodriguez@asuaire.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1855, 1, 39, 4, 'Boundlless Costa Rica', NULL, NULL, 'Carolina', NULL, 'reservations@boundlesscostarica.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1856, 1, 39, 4, 'Biocense and Cult Tours C,Rica', 'Luis Pages', NULL, 'Josue   ', NULL, 'iguanadorada.cr@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1857, 1, 39, 4, 'C.R.Viajes Mayorista', '4701-5555', NULL, 'Emilce Cordero', NULL, 'reservaciones1@invercreditservicescr.net', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1858, 1, 39, 4, 'Costa Rica mi Paraiso', '6239-0448', NULL, 'Marcela Valverde', NULL, 'info@costaricamiparaiso.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1859, 1, 39, 4, 'Costa Rica l Travelers ', '6053-4235', NULL, 'Frankiln Muñoz', NULL, 'infocostaricatravelers@gmail.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1860, 1, 39, 4, 'C.R-B.T.D Travel-Honey Moons ( Sabana S)', '2231-6043', NULL, 'Rosy Garcia', NULL, 'reserve@costaricabtd.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1861, 1, 39, 4, 'Costa Rica Exotic Travel', '6012-8419', NULL, 'Costa Rica Honey moons ', NULL, 'crexotictravel@gmailcom', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1862, 1, 39, 4, 'Costa Rica Tropical Travel S.A.', '2560-6753', NULL, 'Shirley Castillo V', NULL, 'crtropicaltravel@gmail.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1863, 1, 39, 4, 'Consultoria en Turismo ( Rohrm )', '2203-8323', NULL, 'Mauren Araya C', NULL, 'cayita@racsa.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1864, 1, 39, 4, 'Costa Rica Here and Now', '2274-3654', NULL, 'Bernal Diaz', NULL, 'info@costaricahereandnow.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1865, 1, 39, 4, 'Cabet  Travel', '8845-2045', NULL, 'Francinne', NULL, 'cabettrabel@yahoo.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1866, 1, 39, 4, 'Centroamerica Tropical Ag', '2239-6641', NULL, 'Pamela Taylor', NULL, 'info@centroamericatropical.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1867, 1, 39, 4, 'Decoral Destinos', '2552-4575', NULL, 'Karla Picado', NULL, 'info@discovercrtravel.com', '', '', '', 'Cartago', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1868, 1, 39, 4, 'Frida Travel', '8380-4116', NULL, 'Mirian Villalobos', NULL, 'fridatravel@ice.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1869, 1, 39, 4, 'Green Pet Foundation', '8669-3872', NULL, 'Vinicio Aguilera', NULL, 'bergutie07@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1870, 1, 39, 4, 'Grupo Condotropic del Pacifico', '2226-4594', NULL, 'Jose Luis Fernandez', NULL, 'reservaciones@condotropic.net', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1871, 1, 39, 4, 'Hostel 1110', '2221-9412', NULL, 'Valiant Sunsing', NULL, NULL, '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1872, 1, 39, 4, 'Hotel Aranjuez', '2256-1825', NULL, 'Lourdes', NULL, 'info@hotelaranjuez.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1873, 1, 39, 4, 'Hotel Hemingway', '2257-8630', NULL, 'Felipe', NULL, 'TheHemingwayInn@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1874, 1, 39, 4, 'Hotel Posada El Museo', '2258-1027', NULL, 'Guillermo', NULL, 'posadadel museo@racsa.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1875, 1, 39, 4, 'I S Volunteers .Org', '2282-3436', NULL, 'Luis -Paulo', NULL, 'anapatricia.quesada@isvolunteers.org', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1876, 1, 39, 4, 'IIDP Camino Travel', '2234-2530ext- 1703', NULL, 'Astrid', NULL, 'iidp@caminotravel.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1877, 1, 39, 4, 'Jorge Gamboa V', '8307-4180', NULL, 'Luis Pajes', NULL, 'jogamboa77@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1878, 1, 39, 4, 'La Agencia ', '2221-1265', NULL, 'Alex Mauricio Arias Sanchez', NULL, 'david@laagenciadeviajescr.com>', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1879, 1, 39, 4, 'Mario maraios', '2441-9182', NULL, 'Consultor de Viajes', NULL, 'mario@maraios.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1880, 1, 39, 4, 'Municipalidad de San Jose.', '88901020', NULL, 'David Espinoza', NULL, 'cazofeifa@msj.go.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1881, 1, 39, 4, 'Oferta Vacaciones ( Viajeros del Sur )', '2224-2477', NULL, 'Mario Villalobos', NULL, 'info@ofertavacaciones.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1882, 1, 39, 4, 'Proyecciones Turisticas .', '2294-2270', NULL, 'Daily Patricia Mora Badilla', NULL, 'sandra.saborio@proyeccionesturisticas.net', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1883, 1, 39, 4, 'Recorriendo Costa Rica', '8556-8552', NULL, 'Katherine Zuñiga Hidalgo', NULL, 'recorriendocostarica@gmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1884, 1, 39, 4, 'Rusitic  Pathways', NULL, NULL, 'Guillermo', NULL, 'Ricardo Romero <ricardo@rusticpathways.com>', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1885, 1, 39, 4, 'S.T.V.Transportes', '2645-5441', NULL, 'Lucrecia Soto', NULL, 'info@gocostaricatour.com', '', '', '', 'Puntarenas', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1886, 1, 39, 4, 'Suvia Reps  ( Sabana Sur )', '2296-7031', NULL, 'Katherine Mora', NULL, 'fromero@supervia.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1887, 1, 39, 4, 'Tours deportivos', '2234-6491', NULL, 'Ricardo', NULL, 'info@toursdesportivos.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1888, 1, 39, 4, 'Tucaya Costa Rica ', '2234-1639', NULL, 'Alejandro Arce Z', NULL, 'cindy@tucaya.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1889, 1, 39, 4, 'Viajes Ecologicos Costa Rica', '8835-9916', NULL, 'Ginette  Romero', NULL, 'crviajesecologicos@ice.co.cr', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1890, 1, 39, 4, 'Villas C.R ', '6057-2131', NULL, 'Carlos Vargas', NULL, 'villascr@yahoo.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1891, 1, 39, 4, 'W.C.R.Tours', '4081-2591', NULL, 'Cindy Moreira', NULL, 'info.wcrtourstravel@gamil.com', '', '', '', 'Alajuela', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1892, 1, 39, 4, 'Cinthy Bermudez', '8488-5294', NULL, 'Cinthy', NULL, NULL, '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1893, 1, 39, 4, 'Sylvina Tours', '8830-3092', NULL, 'Silvina', NULL, 'sretana00@hotmail.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1894, 1, 39, 4, 'Costa Rica Tours Service', '8586-9820', NULL, 'Pablo  ', NULL, 'melvin@costaricatourservice.com', '', '', '', 'San Jose', NULL, '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1895, 2, 39, 2, 'ASEGRIMAR', '24632951', NULL, 'YeisonZamora', NULL, 'dama.salas67@hotmail.com', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1896, 2, 39, 2, 'ASDECOOPA', '24530426', NULL, 'Angel', NULL, 'yorleny.rodriguez@gmail.com', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1897, 2, 39, 2, 'ASEFANAL', '24943944', NULL, 'Miriam Espinoza', NULL, 'asefanal@fanal.co.cr', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1898, 2, 39, 2, 'ASEIQA', '24755960', NULL, 'Michael Orozco', NULL, 'nsandoval@qazul.com', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1899, 2, 39, 2, 'SAMTEC', '24409833', NULL, 'Alvaro Esquivel', NULL, 'alvaro.esquivel@asamtec,co,cr', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1900, 2, 39, 2, 'ASESONDEL', '24309880', NULL, 'Allen Arce', NULL, 'creditocobra@sandelsa.com', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1901, 2, 39, 2, 'ASOCASOL', '25367136', NULL, 'Yuli Briceño', NULL, 'asocasol@caminosdelsol.net', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1902, 2, 39, 2, 'ASEAGROTICO', '25738989', NULL, 'Fabricio Rivera', NULL, 'rviquez@agrotico.net', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1903, 2, 39, 2, 'ASOSAUTER', '22837234', NULL, 'Diannye Salas', NULL, 'chidalgo@sauter.co.cr', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1904, 2, 39, 2, 'ASEMU', '22784623', NULL, 'Alvaro Guzman', NULL, 'asemuasemu@gmail.com', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1905, 2, 39, 2, 'ASOVYMISA', '25373000', NULL, 'Lidieth Badilla', NULL, 'evelyn.villalobos@vymisa.com', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1906, 2, 39, 2, 'ASOCOONAPROSAL', '26780106', NULL, 'Oscar Vargas', NULL, 'ovargas@coonaprosal.cr', '', '', '', 'GUANACASTE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1907, 2, 39, 2, 'ASEIT', '26740066', NULL, 'Milton Barrantes', NULL, 'asociaciontaboga@gmail.com', '', '', '', 'GUANACASTE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1908, 2, 39, 2, 'ASEAIMI', '22398181', NULL, 'Maria Castro', NULL, 'aseaimi@aimi.cr', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1909, 2, 39, 2, 'ASOARTHROCARE', '25082838', NULL, 'Maricela Salas', NULL, 'nancy.cruz@arthrocare.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1910, 2, 39, 2, 'ASODELL', '22396279', NULL, 'Patricia Alvarado', NULL, 'cesar.2893@hotmail.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1911, 2, 39, 2, 'ASOEXA', '25093852', NULL, 'Diego Salazar', NULL, 'diego.salazar@softland.cr', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1912, 2, 39, 2, 'ASOALMOSI', '22934001', NULL, 'Yadira Delgado', NULL, 'fvanegas@almosi.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1913, 2, 39, 2, 'ASEIBM', '25096379', NULL, 'Paubla Varela', NULL, 'pvarela@cr.ibm.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1914, 2, 39, 2, 'ASEMAYCA', '22090505', NULL, 'Andrea Alpizar', NULL, 'asemayca@mayca.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1915, 2, 39, 2, 'ASENUTRI', '22628582', NULL, 'Ricardo Oviedo', NULL, 'cristina.molina@grupontq.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1916, 2, 39, 2, 'ASPRO', '22602770', NULL, 'Luis Garbanzo', NULL, 'jhernandez@promaderas.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1917, 2, 39, 2, 'ASESTRONG', '25895050', NULL, 'Carlos Solano', NULL, 'gtoruno@sica.co.cr', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1918, 2, 39, 2, 'ASEVOLCASA', '22616666', NULL, 'Melissa Barquero', NULL, 'asevolca@volcafe.co.cr', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1919, 2, 39, 2, 'ASOSERCA', '27971609', NULL, 'Gabriela Gonzalez', NULL, 'ggonzalez@egini.com', '', '', '', 'LIMÓN', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1920, 2, 39, 2, 'ASOAM', '22058954', NULL, 'Karla Montero', NULL, 'susan.jimenez@arcelormittal.com', '', '', '', 'PUNTARENAS', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1921, 2, 39, 2, 'ADEPSA', '27301242', NULL, 'Patricia Mora', NULL, 'adepsa@ice.co.cr', '', '', '', 'PUNTARENAS', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1922, 2, 39, 2, 'ASOROAG', '22313555', NULL, 'Carolina Jimenez', NULL, 'mherrera@acerosroag.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1923, 2, 39, 2, 'ASEVIACO', '22238286', NULL, 'Gerald Williams', NULL, 'gerald.williams@colon.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1924, 2, 39, 2, 'ASOALFIDEPA', '25870653', NULL, 'Maureen Alvarez', NULL, 'asoalfidepa@alpiste.co.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1925, 2, 39, 2, 'ASEAGECO', '22530855', NULL, 'Ana Calderon', NULL, 'acaldero@ageco.org', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1926, 2, 39, 2, 'ASOATD', '22193671', NULL, 'Gabriel Bermudez', NULL, 'asoatd31@gmail.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1927, 2, 39, 2, 'ASECUBO', '22213970', NULL, 'Johana Sandi', NULL, 'asecubo@bomberos.go.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1928, 2, 39, 2, 'ASOECGUS', '27710237', NULL, 'Arturo Montero', NULL, 'rsolis@acgus.org', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1929, 2, 39, 2, 'ASOCAPREDE', '20103600', NULL, 'Victoria Zuñiga', NULL, 'xinia.rodriguez@caprede.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1930, 2, 39, 2, 'ASECCCON', '22077570', NULL, 'Dayana Mora', NULL, 'asecccon@centrocultural.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1931, 2, 39, 2, 'ASECOLIJIRO', '22171000', NULL, 'Alex Villalobos', NULL, 'reparaciones@jiron.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1932, 2, 39, 2, 'ASECOMER', '22968282', NULL, 'Sergio Mendez', NULL, 'asecomer@comerseguros.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1933, 2, 39, 2, 'ASEORBE', '25454699', NULL, 'Diana Avendaño', NULL, 'servicioaseorbe@corporacionob.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1934, 2, 39, 2, 'ASECK', '25202700', NULL, 'Información a info@keibel.co.cr Asociacion', NULL, 'ajimenez@keibel.co.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1935, 2, 39, 2, 'ASECOOPEMEP', '22950651', NULL, 'David Madrigal', NULL, 'asecoopemep@coopemep.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1936, 2, 39, 2, 'ASOFUM', '22221346', NULL, 'Nidia Flores', NULL, 'asofum@hotmail.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1937, 2, 39, 2, 'ASECOUNTRY', '22085006', NULL, 'Aisel Mesen', NULL, 'hmesen@country.co.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1938, 2, 39, 2, 'ASEDESTINOS', '25289898', NULL, 'Karen Valenciano', NULL, 'jaraya@destinationcr.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1939, 2, 39, 2, 'ASEDIMARPA', '22707883', NULL, 'Lilliam Padilla', NULL, 'lilliam.padilla@dimarpa.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1940, 2, 39, 2, 'ASEECORI', '22330812', NULL, 'Marianela Camacho', NULL, 'aseecori@gmail.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1941, 2, 39, 2, 'ASOENEL', '22014505', NULL, 'Roger Quesada', NULL, 'luis.vargas@enel.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1942, 2, 39, 2, 'ASOSEAM', '22963944', NULL, 'DR.ANDRES VESALIO GUZMAN', NULL, 'asoseam@ucimed.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1943, 2, 39, 2, 'ASODEFA', '25479721', NULL, 'Karen Caldera', NULL, 'asodefa@farmagro.co.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1944, 2, 39, 2, 'ASEFLOTEC', '22215559', NULL, 'Silvia Naranjo', NULL, 'ventas2@grupoflotec.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1945, 2, 39, 2, 'ASEFVR', '22078411', NULL, 'Kendall Castro', NULL, 'asefvr@fundacioncostaricacan-ada.org', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1946, 2, 39, 2, 'ASONUMAR', '22841466', NULL, 'Diego Montero', NULL, 'dmontero@numar.net', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1947, 2, 39, 2, 'ASEGRUPSA', '25491106', NULL, 'Freddy Araya', NULL, 'administrador@asegrupsa.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1948, 2, 39, 2, 'ASOINGELECTRA', '22864050', NULL, 'Jeffrey Valerin', NULL, 'mmadrigal@ingelectra.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1949, 2, 39, 2, 'ASOKYRSA', '22230111', NULL, 'Michael Gamboa', NULL, 'cbarrantes@kr.co.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1950, 2, 39, 2, 'ASELACOMET', '40601046', NULL, 'Manuel Mora', NULL, 'computeclye@yahoo.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1951, 2, 39, 2, 'ASENTC', '22413040', NULL, 'Karen Chavarria', NULL, 'jsegura@nutricare.co.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1952, 2, 39, 2, 'ASOBROA', '22571290', NULL, 'Rocio Padilla', NULL, 'rpadilla@ollerabogados.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1953, 2, 39, 2, 'ASEPAYLESS', '22893897', NULL, 'Fabiana Fernandez', NULL, 'asepayless@hotmail.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1954, 2, 39, 2, 'ASOPWC', '22241555', NULL, 'Giovanni Marin', NULL, 'asopwc@gmail.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1955, 2, 39, 2, 'ASEQUISA', '22569385', NULL, 'William Barquero', NULL, 'asequisa@yahoo.es', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1956, 2, 39, 2, 'ASESCH', '22109414', NULL, 'Gilma Portillo', NULL, 'gilma.portillo@schneider-electric.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1957, 2, 39, 2, 'ASOVMA', '22268911', NULL, 'Chavarria Vargas', NULL, 'asociacion@vma.co.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1958, 2, 39, 2, 'ASOLEX', '22801370', NULL, 'Katia Fallas ', NULL, 'jd_asolex@masterlex.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1959, 2, 39, 2, 'ASESWTS', '22824898', NULL, 'Danilo Ureña', NULL, 'danilo.urena@swisstravelcr.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1960, 2, 39, 2, 'ASOTECHDATACR', '25075200', NULL, 'Fernanda Martinez', NULL, 'asociaciontechdatacr@techdata.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1961, 2, 39, 2, 'ASEOESTE', '25061004', NULL, 'Yesenia', NULL, 'yesennia.aguilar@wester-nunion.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1962, 2, 39, 2, 'ASEWAK', '22530610', NULL, 'Maricela Arias', NULL, 'm.arias@asewack.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1963, 2, 39, 3, 'ASECOOPROLE', '24010519', NULL, 'Silvia Rodriguez', NULL, 'srodriguez@asecooprole.com', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1964, 2, 39, 3, 'ASOECO Y AFINES', '24500138', NULL, 'Gabriel Melendez', NULL, 'asoeco@coopronaranjorl.com', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1965, 2, 39, 3, 'ASOFRUNO', '24436462', NULL, 'Karina Diaz', NULL, 'karol.nunez@fruno.com', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1966, 2, 39, 3, 'ASOLEF', '22391414', NULL, 'Emma Segura', NULL, 'mariano.jimenez@olefinas.com', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1967, 2, 39, 3, 'ASESIGA', '24404845', NULL, 'Katherine Bolaños', NULL, 'mcordoba@asesiga.com', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1968, 2, 39, 3, 'ASOSKY', '24794108', NULL, 'Yanairi', NULL, 'ingresos@skytrek.com', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1969, 2, 39, 3, 'ASOCATIE', '25582021', NULL, 'Viviana Vargas', NULL, 'asocatie@catie.ac.cr', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1970, 2, 39, 3, 'ASESANGIL', '25510539', NULL, 'Grettel Cordoba', NULL, 'sangilsa@ice.co.cr', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1971, 2, 39, 3, 'ASEKANI', '25370102', NULL, 'Angela Coto', NULL, 'acoto@kani.cr', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1972, 2, 39, 3, 'ASESMO', '22810825', NULL, 'Jessy Duarte', NULL, 'jduarte@oftalmejia.com', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1973, 2, 39, 3, 'ASECATSA', '26678465', NULL, 'Maikel Marchena', NULL, 'asecatsa@catsa.net', '', '', '', 'GUANACASTE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1974, 2, 39, 3, 'ASEPILA', '26599130', NULL, 'Norman', NULL, 'coopepilangosta@yahoo.es', '', '', '', 'GUANACASTE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1975, 2, 39, 3, 'ASEGRAND', '26908011', NULL, 'Juan Fernando Perez', NULL, 'jperez@cr.occidentalhotels.com', '', '', '', 'GUANACASTE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1976, 2, 39, 3, 'ASEALPLA', '22639787', NULL, 'Nilse Cordero', NULL, 'asealpla.2012@gmail.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1977, 2, 39, 3, 'ASOEALFA', '25894141', NULL, 'Daniel Delgado', NULL, 'jortiz@grupoaseal.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1978, 2, 39, 3, 'ASOCHEM', '22395454', NULL, 'Hazel Ramirez', NULL, 'hramirez@chemsol.net', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1979, 2, 39, 3, 'ASOFRESH', '22607949', NULL, 'Luisa Morales', NULL, 'salpizar@freshgarden.co.cr', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1980, 2, 39, 3, 'ASEHELLMANN', '25092818', NULL, 'Jimmy Fonseca', NULL, 'jcardoza@cr.hellmann.net', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1981, 2, 39, 3, 'ASOQUIGO', '22394044', NULL, 'Gabriela Gonzalez', NULL, 'ggonzalez@impquigo.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1982, 2, 39, 3, 'ASERAPIDOSH', '22609798', NULL, 'Eddy Vargas', NULL, 'rapidosheredianos@gmail.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1983, 2, 39, 3, 'ASEPLE', '22371024', NULL, 'Grettel Apu', NULL, 'recepcion@grupoleandro.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1984, 2, 39, 3, 'ASOROCHE', '22981613', NULL, 'Carlos Alfaro', NULL, 'asorocheservicios@gmail.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1985, 2, 39, 3, 'ASESYSDE', '22932864', NULL, 'Andrea Ramirez', NULL, 'aramirez@sysde.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1986, 2, 39, 3, 'ASOMETRO', '22395000', NULL, 'Raquel Ramirez', NULL, 'mvargas@metrofz.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1987, 2, 39, 3, 'ASEABOPAC', '22051063', NULL, 'Esteban Mendez', NULL, 'oscar.ramirez@aseabopac.com', '', '', '', 'PUNTARENAS', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1988, 2, 39, 3, 'ASECOPRO', '27733051', NULL, 'Guillermo Briones', NULL, 'lmurillo@cooprosanvito.com', '', '', '', 'PUNTARENAS', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1989, 2, 39, 3, 'ASOFERTICA', '26640828', NULL, 'Bryan Abraham', NULL, 'asofertica@hotmail.com', '', '', '', 'PUNTARENAS', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1990, 2, 39, 3, 'ASOPREGO', '24409990', NULL, 'German Miranda ext 108', NULL, 'kperez@europcar.co.cr.', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1991, 2, 39, 3, 'ASEMAURO', '25496000', NULL, 'Oscar Leon', NULL, 'jorge.segura@almacenmauro.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1992, 2, 39, 3, 'ASOARA', '22320400', NULL, 'Jose Guerrero', NULL, 'asoara1@aratours.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1993, 2, 39, 3, 'ASEASPROSE', '25866000', NULL, 'Grettel Villagra', NULL, 'gvillagra@asprose.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1994, 2, 39, 3, 'ASOBAVARIAN', '25475143', NULL, 'Katherine Narvaez', NULL, 'asobavarian@grupobmw.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1995, 2, 39, 3, 'ASECALL', '40004000', NULL, 'Felipe Quiros', NULL, 'mcamacho@callmyway.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1996, 2, 39, 3, 'ASECADIN', '22025600', NULL, 'Aura Cortes', NULL, 'kaguilar@cicr.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1997, 2, 39, 3, 'ASECOLO', '22582807', NULL, 'Mariela Chaves', NULL, 'asecolo@casinoclubcolonial.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1998, 2, 39, 3, 'ASOCINDE', '22012877', NULL, 'Silvia Campos', NULL, 'azuniga@cinde.org', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (1999, 2, 39, 3, 'ASDECA', '22531947', NULL, 'Francini Cubero', NULL, 'sedesregionales@abogados.or.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2000, 2, 39, 3, 'ASECNE', '22102886', NULL, 'Betzaida Muñoz', NULL, 'asecne@cne.go.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2001, 2, 39, 3, 'ASOCONAPAM', '22238283', NULL, 'Gerald Murillo', NULL, 'hpicado@conapam.go.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2002, 2, 39, 3, 'ASOPROY', '25431600', NULL, 'Marta Vega', NULL, 'onavarro@proycon.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2003, 2, 39, 3, 'ASECOOPESAIN R.L.', '22975949', NULL, 'Orlando Gomez', NULL, 'asecoopesain@ice.co.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2004, 2, 39, 3, 'ASECONARROZ', '22551313', NULL, 'Roger Umaña', NULL, 'aseconarroz@conarroz.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2005, 2, 39, 3, 'ASECOA', '22538160', NULL, 'Milady Aguilar', NULL, 'juan.gonzalez@cr.gt.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2006, 2, 39, 3, 'ASEDMA', '22164000', NULL, 'Ligia Quesada', NULL, 'asociacionasedma@gmail.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2007, 2, 39, 3, 'ASEDUASA', '22855000', NULL, 'Junta Directiva', NULL, 'aseduasa@universal.co.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2008, 2, 39, 3, 'ASEKSTROM', '22480227', NULL, 'Carlos Calderon', NULL, 'paulac@ekstromcostarica.com;', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2009, 2, 39, 3, 'ASOENCO', '25202707', NULL, 'Maria Cordoba', NULL, 'mcordoba@envasescomeca.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2010, 2, 39, 3, 'ASEVERTEC', '22114532', NULL, 'Silvia Bolaños dar una propuesta para el dia del p', NULL, 'jolmedo@evertecinc.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2011, 2, 39, 3, 'ASEFCCSA', '22427544', NULL, 'Bernardita Garcia', NULL, 'asefccsa@gmail.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2012, 2, 39, 3, 'ASEAFS', '22340909', NULL, 'Itza Rojas', NULL, 'oscar.calderon@afs.org', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2013, 2, 39, 3, 'ASOFUPROVI', '22470022', NULL, 'Carmen Gutierrez', NULL, 'asofuprovi@fuprovi.org', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2014, 2, 39, 3, 'ASOCATHAY', '25277777', NULL, 'Dayana Navarro', NULL, 'jsolano@bancocathay.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2015, 2, 39, 3, 'ASODITA', '22562211', NULL, 'Deiber Abarca', NULL, 'ventas1@ditaires.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2016, 2, 39, 3, 'ASOICAFE', '22437839', NULL, 'Marianela Saborio', NULL, 'asoicafe@icafe.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2017, 2, 39, 3, 'ASEKIN', '25432833', NULL, 'Jose Alfredo', NULL, 'asekin@kineret.co.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2018, 2, 39, 3, 'ASOLUTECH', '22421800', NULL, 'Carlo Barrientos', NULL, 'adriana.font@alcatel-lucent.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2019, 2, 39, 3, 'ASOE', '25079869', NULL, 'Damaris Valerio ', NULL, 'jalfarocpa@gmail.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2020, 2, 39, 3, 'ASOMNILIFE', '25209014', NULL, 'Jesica Mora', NULL, 'claudia.montenegro@omnilife.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2021, 2, 39, 3, 'ASOPINMSA', '22880101', NULL, 'Monica Ramirez', NULL, 'asopinmsa@portafolio.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2022, 2, 39, 3, 'ASEPRA', '22850505', NULL, 'Isabel Vargas', NULL, 'ventas@proursa.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2023, 2, 39, 3, 'ASORE', '22335733', NULL, 'Angelica Esteves', NULL, 'angelica@reenfriocr.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2024, 2, 39, 3, 'ASOSERACSA', '22796994', NULL, 'Antonio Araya', NULL, 'r.rojas5@costarricense.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2025, 2, 39, 3, 'ASEAMWAY', '25826681', NULL, 'Marcela Miranda', NULL, 'aseamway@amway.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2026, 2, 39, 3, 'ASESONDA', '22249596', NULL, 'Allan Cordero', NULL, 'asesonda@cr.sonda.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2027, 2, 39, 3, 'ASETIHA', '22964343', NULL, 'Mauricio Alvarado', NULL, 'varaya@cetransa.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2028, 2, 39, 3, 'ASETT', '22264142', NULL, 'Mercedes Quiros', NULL, 'asett@grupotent.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2029, 2, 39, 3, 'A.S.V.A', '22213750', NULL, 'Michael Arias', NULL, 'maureenh@vetimsa.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2030, 2, 39, 3, 'ASEVERTIGO', '40002300', NULL, 'Carlos Jimenez', NULL, 'daniel.sandi@vertigo.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2031, 2, 39, 4, 'ASECOOP', '24465141', NULL, 'Ivonne Lopez', NULL, 'asecoop@coopeatenas.com', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2032, 2, 39, 4, 'ASOSIMA', '24420000', NULL, 'Karla Selva', NULL, 'kselva@sierramadre.co.cr', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2033, 2, 39, 4, 'ASOAGALSA', NULL, NULL, 'Alex Loria', NULL, 'nmaltes@hotmail.com', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2034, 2, 39, 4, 'ASEPRAXAIR', '24828663', NULL, 'Priscilla Alegria', NULL, 'asepraxair@ice.co.cr', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2035, 2, 39, 4, 'ASESOLERA', '24402528', NULL, 'Jackeline', NULL, 'solera@racsa.co.cr', '', '', '', 'ALAJUELA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2036, 2, 39, 4, 'ASEBANCREDITO', '25500660', NULL, 'Francisco Martinez', NULL, 'asebancredito@ice.co.cr', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2037, 2, 39, 4, 'ASOCESQUI', '22797985', NULL, 'Daniel Navarro', NULL, 'jimenez@grupoxilo.com', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2038, 2, 39, 4, 'ASEF', '25735648', NULL, 'Nelson Masis', NULL, 'fasefflorentina@gmail.com', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2039, 2, 39, 4, 'ASOMA', '25903042', NULL, 'Eduardo Piedra', NULL, 'asoma@macoricr.com', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2040, 2, 39, 4, 'ASEVIC', '25503343', NULL, 'Carlos Gomez Duran', NULL, 'lgomez@grupovical.com', '', '', '', 'CARTAGO', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2041, 2, 39, 4, 'ASECEMEX', '26780437', NULL, 'Arellys Gomez', NULL, 'asecemp@cemex.com', '', '', '', 'GUANACASTE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2042, 2, 39, 4, 'ASEGIP', '26655506', NULL, 'Sandra Zapata', NULL, 'sandra.zapata@asegip.com', '', '', '', 'GUANACASTE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2043, 2, 39, 4, 'ASOMODAL', '22394449', NULL, 'Jonathan Gutierrez', NULL, 'asomodal@multimodal.co.cr', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2044, 2, 39, 4, 'ASOAMERICA', '25099905', NULL, 'Daniela Rojas', NULL, 'jcalvo@amco.co.cr', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2045, 2, 39, 4, 'ASOSEGUROS', '22618829', NULL, 'Natalia Nuñez', NULL, 'gmorales@cssseguros.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2046, 2, 39, 4, 'ASODOMUN', '22934961', NULL, 'Marlon Perez', NULL, 'maperez@grupopazos.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2047, 2, 39, 4, 'ASEFRUTA', '22399696', NULL, 'Irene Vega', NULL, 'calfaro@frutainternacional.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2048, 2, 39, 4, 'ASOAECOS', NULL, NULL, 'Pablo Mora', NULL, 'pablo.mora@amefird.co.cr', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2049, 2, 39, 4, 'ASOPAT', '22392111', NULL, 'Max Salas', NULL, 'moreno@lospatitos.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2050, 2, 39, 4, 'ASEMUBE', '25870175', NULL, 'Steven Cordero', NULL, 'asemube@belen.go.cr', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2051, 2, 39, 4, 'ASEPSA', '22089581', NULL, 'Angelica Valverde', NULL, 'martin.fernandez@pfizer.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2052, 2, 39, 4, 'ASO506', '22399506', NULL, 'Jeremy Murillo', NULL, 'lgabelman@soluciones506.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2053, 2, 39, 4, 'ASETRIBU', '22097809', NULL, 'Katherine Carranza ', NULL, 'adriana.moguera@tribuddb.com', '', '', '', 'HEREDIA', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2054, 2, 39, 4, 'ASOATLAN', '27658563', NULL, 'Lopez Madrigal', NULL, 'asoatlan@gmail.com', '', '', '', 'LIMÓN', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2055, 2, 39, 4, 'ASEALUNASA', '26355525', NULL, 'Francisco Elizondo', NULL, 'asealunasa@alunasa.com', '', '', '', 'PUNTARENAS', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2056, 2, 39, 4, 'ASOTRAINCOP', '26349100', NULL, 'Tatiana Betancourt', NULL, 'tbetancourt@incop.go.cr', '', '', '', 'PUNTARENAS', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2057, 2, 39, 4, 'ASETRIQUINT', '22098989', NULL, 'Amanda Montero', NULL, 'asetriquint@tqs.com', '', '', '', 'PUNTARENAS', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2058, 2, 39, 4, 'ASECAZ', '22908909', NULL, 'Mario', NULL, 'mario.duran@cieloazulcr.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2059, 2, 39, 4, 'ASDEROL', '22565050', NULL, 'Andres', NULL, 'heredia@grupoleiton.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2060, 2, 39, 4, 'ASEARTICA', '22579211', NULL, 'Monica Alpizar', NULL, 'diego@artica.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2061, 2, 39, 4, 'ASEASSA', '25032773', NULL, 'Angie Elizondo', NULL, 'gumana@assanet.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2062, 2, 39, 4, 'ASEBY', '22552066', NULL, 'Junta Directiva', NULL, 'aseby@yamuni.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2063, 2, 39, 4, 'ASOCAMARACO', '22210005', NULL, 'Karol Fallas', NULL, 'lpiedra@camara-comercio.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2064, 2, 39, 4, 'ASCAP', '22595296', NULL, 'Shirley', NULL, 'ascap@lapiedad.co.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2065, 2, 39, 4, 'ASECENMAN', '22561111', NULL, 'Andrea Alvarez', NULL, 'asecenman@centraldemangueras.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2066, 2, 39, 4, 'ASOLUCEMA', '25820404', NULL, 'Eduardo Araya', NULL, 'asaborio@lucema.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2067, 2, 39, 4, 'A.S.E.C.F.', NULL, NULL, 'Guiselle Soto', NULL, 'asecf@cfia.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2068, 2, 39, 4, 'ASEPAN', NULL, NULL, 'Greivin Padilla', NULL, 'asepan@musmanni.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2069, 2, 39, 4, 'ASOCEVA', '20101000', NULL, 'Eugenia Barrantes', NULL, 'ebarrantes@evacr.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2070, 2, 39, 4, 'ASECOTA', '25466098', NULL, 'Krysia Robles', NULL, 'ycalderon@coopetarrazu.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2071, 2, 39, 4, 'ASECOFLO', '25238010', NULL, 'Geovanni Hernandez', NULL, 'asecoflo@autorepuestoscr.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2072, 2, 39, 4, 'ASECOND', '25398181', NULL, 'Jonathan Portuguez', NULL, 'jportuguez@farmaciascondefa.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2073, 2, 39, 4, 'ASODENTCO', '22553352', NULL, 'Diego Guillen', NULL, 'asodentco@outlook.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2074, 2, 39, 4, 'ASOARSA', '22854224', NULL, 'Laura Brenes', NULL, 'asoarsa@disarsa.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2075, 2, 39, 4, 'ASEDIF', '25196900', NULL, 'Carolina Madriz', NULL, 'jrhumanos@edificaronline.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2076, 2, 39, 4, 'ASEMEC', '22514100', NULL, 'Cristian Arguedas', NULL, 'npadilla@elmecsa.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2077, 2, 39, 4, 'ASODEQUI', '22221098', NULL, 'Dayra Solano', NULL, 'grettel.sevilla@equitron.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2078, 2, 39, 4, 'ASEXPMT', '22494858', NULL, 'Jeison Corrales', NULL, 'asociacion@pmtcr.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2079, 2, 39, 4, 'ASEFERBO', '22223737', NULL, 'Alfredo Echaverria', NULL, 'edwin@restaurantemacsuri.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2080, 2, 39, 4, 'ASEFOD', '25276286', NULL, 'Jennifer Sanabria', NULL, 'mauren.venegas@fod.ac.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2081, 2, 39, 4, 'ASEGBM', '25044500', NULL, 'Carolina Araya', NULL, 'asegbm@gbm.net', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2082, 2, 39, 4, 'ASOGFI', '25196222', NULL, 'Rafael Cerdas', NULL, 'flor_villalobos@gficr.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2083, 2, 39, 4, 'ASEIUNA', '40565656', NULL, 'Adriana Villegas', NULL, 'aseiuna@nuecesindustriales.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2084, 2, 39, 4, 'ASFUJUPEMA', '22846440', NULL, 'Elena Romero', NULL, 'lromero@pensiones.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2085, 2, 39, 4, 'ASELA', '22214092', NULL, 'Rossy Monge', NULL, 'gerardolobo@grupoancla.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2086, 2, 39, 4, 'ASOEMULTI', '22204124', NULL, 'Gerardo Romero', NULL, 'gromero@multiseguroscr.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2087, 2, 39, 4, 'ASOFINASE', '22235922', NULL, 'Roberto Jimenez', NULL, 'rjimenez@ofinase.go.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2088, 2, 39, 4, 'ASEOGILVY', '25885200', NULL, 'Paola Bocanegra ', NULL, 'jose.castro@ogilvy.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2089, 2, 39, 4, 'ASOEPRENAC', '22720979', NULL, 'Jeremy Molina', NULL, 'gbrenes@prenac.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2090, 2, 39, 4, 'ASEPUMOSA', '25197886', NULL, 'Jose Quesada', NULL, 'asepumosa@purdymo.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2091, 2, 39, 4, 'ASOSEEMKO', '22353317', NULL, 'Andres', NULL, 'subgerencia@seemko.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2092, 2, 39, 4, 'ASEMS', '22911324', NULL, 'Rigoberto Perez', NULL, 'rperez@sercansa.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2093, 2, 39, 4, 'ASOSASA', '22334111', NULL, 'Jonathan Gutierrez', NULL, 'gurena@sistemasanaliticos.net', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2094, 2, 39, 4, 'ASDESUP', '22909050', NULL, 'Ana Lucrecia', NULL, 'asdesup@supapelcr.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2095, 2, 39, 4, 'ASETECA', '22344400', NULL, 'Paola Bonilla', NULL, 'monserrat.alvarado@tecapro.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2096, 2, 39, 4, 'ASETIPS', '25432140', NULL, 'Luis Corrales', NULL, 'asetips@tipscr.com', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2097, 2, 39, 4, 'ASOVIVICON', '22582990', NULL, 'Carlos', NULL, 'asovivicon@vivicon.co.cr', '', '', '', 'SAN JOSE', 'ASOCIACIONES', '2018-03-21 13:39:32', NULL, '2018-03-21 13:39:32', 1);
INSERT INTO `qa_customers` VALUES (2098, 2, 39, 5, 'XOLOTLAN TRAVEL', '4082-9550', '4082-9560', 'JOSE HERNANDEZ', '', 'jherrera@xolotlanmayorista.com', '', '', '', 'TRES RIOS', 'Solicitud de MFERNANDEZ el 19 de marzo', '2018-03-21 13:53:57', NULL, '2018-03-21 15:49:50', 2);
INSERT INTO `qa_customers` VALUES (2099, 2, 28, 4, 'test', '', '', '', '', '', '', '', '', '', '', '2018-03-21 23:36:28', NULL, '2018-03-21 23:36:28', 2);
INSERT INTO `qa_customers` VALUES (2100, 1, 37, 3, 'Hotel Tortuga prueba', '88213456', '22345678', 'Maria', '', 'maria@hotmail.com', '', '', '', 'heredia', '', '2018-03-22 12:15:41', NULL, '2018-03-22 12:15:41', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
