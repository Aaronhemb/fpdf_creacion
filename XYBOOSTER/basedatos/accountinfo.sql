-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.2:3306
-- Tiempo de generación: 14-08-2023 a las 18:26:37
-- Versión del servidor: 5.5.8
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ocsweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accountinfo`
--

CREATE TABLE `accountinfo` (
  `HARDWARE_ID` int(11) NOT NULL,
  `TAG` varchar(255) DEFAULT 'NA',
  `fields_3` varchar(255) DEFAULT NULL,
  `fields_4` varchar(255) DEFAULT NULL,
  `fields_5` varchar(255) DEFAULT NULL,
  `fields_6` varchar(255) DEFAULT NULL,
  `fields_7` varchar(255) DEFAULT NULL,
  `fields_8` varchar(255) DEFAULT NULL,
  `fields_9` varchar(255) DEFAULT NULL,
  `fields_10` varchar(255) DEFAULT NULL,
  `fields_11` varchar(255) DEFAULT NULL,
  `fields_12` varchar(255) DEFAULT NULL,
  `fields_13` varchar(255) DEFAULT NULL,
  `fields_14` varchar(255) DEFAULT NULL,
  `fields_15` varchar(255) DEFAULT NULL,
  `fields_16` varchar(255) DEFAULT NULL,
  `fields_17` varchar(255) DEFAULT NULL,
  `fields_18` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `accountinfo`
--

INSERT INTO `accountinfo` (`HARDWARE_ID`, `TAG`, `fields_3`, `fields_4`, `fields_5`, `fields_6`, `fields_7`, `fields_8`, `fields_9`, `fields_10`, `fields_11`, `fields_12`, `fields_13`, `fields_14`, `fields_15`, `fields_16`, `fields_17`, `fields_18`) VALUES
(2, 'AARON HERNANDEZ MORALES', 'aaron.hernandez@xybooster.com', 'OFFICE 365', 'NEGRO', 'SI', 'LENOVO / ADLX65CCGU2A', 'SI MODELO XXXXXXXXX', 'NO', '1', 'PROLONGACION LA CARBONERA MZ3 LT50 COLONIA LA CARBONERA , ALCALDIA MAGDALENA CONTRERAS C.P. 10640', 'ENTREGADO', '1 495 396 677', 'NO', 'NO', ' UNICORN SERIES XYB, S.A.P.I. DE C.V. ', 'TECNOLOGIA', 'EQUIPO NUEVO'),
(3, 'AARON MORALES CASTELLANOS', 'aaron.morales@evolvedigital.mx', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO  	ADLX65CCGU2A', 'NO', 'SI', '9', 'CALLE CANALETA MZ 667 LT 16 COLONIA LOMAS DE TLATEOPULCO TLANEPANTLA DE BAZ MEXICO C.P. 54193', 'ENTREGADO', '1167415521', 'NO', 'SI', 'EVOLVE FINTECH', NULL, NULL),
(4, 'ALBERTO MAR HERNANDEZ', 'alberto.mar@evolvedigital.mx', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO	ADLX65CCGU2A', 'NO', 'SI', '7', 'PRIVADA CLAVALES 44, FRACCIONAMIENTO CARBAJAL ALMOLOYA DE JUAREZ, MEX C.P. 50940', 'ENTREGADO', '674631003', 'NO', 'SI', 'EVOLVE FINTECH', NULL, NULL),
(5, 'ANA RODRIGUEZ MANJARREZ', 'ana.rodriguez@evolvedigital.mx', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '6', 'CALLE GARGOLAS 155 JARDINES DEL SUR ALCALDIA XOCHIMILCO C.P. 16050', 'ENTREGADO', '', 'NO', 'SI', 'EVOLVE FINTECH', NULL, NULL),
(6, 'BERNAL GARCIA', 'guillermo.garcia@xybooster.com', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'si', '3', 'CALZADA DE LAS BOMBAS #878 EDIFICIO B1 DEP. 102 COLONIA CTM CHIMALHUACAN SECCION 9 ALCALDIA COYOACAN, CDMX C.P. 04489', 'PENDIENTE DE ENTREGAR', '1560114799', 'NO', 'NO', ' UNICORN SERIES XYB, S.A.P.I. DE C.V. ', NULL, NULL),
(7, 'CECILIA GARCIA SANCHEZ', 'cecilia.garcia@evolvedigital.mx', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '4', 'CALLE BOSQUE DE AZALEAS MZ6 LT 28 CS A FRACCIONAMIENTO REAL DEL BOSQUE, TULTITLAN, MEX. C.P. 54948', 'ENTREGADO', '1586839588', 'NO', 'SI', 'ICTINEO PLATAFORMA S.A DE C.V, S.F.P', NULL, NULL),
(8, 'DEYSI MELISA SANCHEZ VERGARA', 'deisy.sanchez@xybooster.com', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '17', '', 'PENDIENTE DE ENTREGAR', '1557680949', 'NO', 'SI', ' UNICORN SERIES XYB, S.A.P.I. DE C.V.  ', NULL, NULL),
(11, 'SALMA ALEJANDRA GUTIERREZ ALMAZAN', 'salma.gutierrez@evolvedigital.mx', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'si', '18', '', 'ENTREGADO', '1910328778', 'NO', 'SI', ' UNICORN SERIES XYB, S.A.P.I. DE C.V.  ', NULL, NULL),
(12, 'CESAR BUSTAMANTE GOMEZ', 'cesar.bustamante@evolvedigital.mx', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '8', '', 'ENTREGADO', '', 'NO', 'SI', 'EVOLVE FINTECH', NULL, NULL),
(13, 'FABIOLA MAYRA ELENA VAZQUEZ ALONSO', 'fabiola.vazquez@xybooster.com', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '11', '', 'ENTREGADO', '1109492259', 'SI', 'NO', 'ICTINEO PLATAFORMA S.A DE C.V, S.F.P', NULL, NULL),
(14, 'ANDREA ESPINOZA GONZALEZ', 'andrea.espinosa@xybooster.com', 'OFFICE 365', 'PLATA', 'NO', 'NO', 'NO', 'NO', '19', 'GUADALAJARA', 'ENTREGADO', '1443566440', 'NO', 'NO', ' UNICORN SERIES XYB, S.A.P.I. DE C.V. ', NULL, NULL),
(15, 'FERNANDO GUTIERREZ SARATE', 'fernando.gutierrez@xybooster.com', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '12', '', 'ENTREGADO', '1285208596', 'NO', 'NO', ' UNICORN SERIES XYB, S.A.P.I. DE C.V. ', NULL, NULL),
(16, 'IVONNE CASTANEDA ALPIZAR', 'ivonne.castaneda@xybooster.com', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '20', '', 'ENTREGADO', '', 'NO', 'NO', ' UNICORN SERIES XYB, S.A.P.I. DE C.V. ', NULL, NULL),
(17, 'KAREN DENISSE RODRIGUEZ HERNANDEZ', 'karen.rodriguez@evolvedigital.mx', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '5', '', 'ENTREGADO', '1462328607', 'NO', 'SI', 'ICTINEO PLATAFORMA S.A DE C.V, S.F.P', NULL, NULL),
(18, 'JAVIER KOYEE BAUTISTA DIAZ', 'javier.bautista@evolvedigital.mx', 'OFFICE 365', 'PLATA', 'PENDIENTE', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '21', '', 'PENDIENTE', '302 344 653', 'NO', 'NO', 'ICTINEO PLATAFORMA S.A DE C.V, S.F.P', NULL, NULL),
(19, ' LEONARDO CHAVEZ LARA', ' leonardo.chavez@xybooster.com', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '15', '', 'ENTREGADO', '', 'si', 'NO', 'ICTINEO PLATAFORMA S.A DE C.V, S.F.P', NULL, NULL),
(20, 'LIDIA ITZEL MEDINA MORALES', 'lidia.medina@evolvedigital.mx', 'OFFICE 365', 'PLATA', 'PENDIENTE', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '22', '', 'PENDIENTE', '656 866 595', 'NO', 'NO', 'ICTINEO PLATAFORMA S.A DE C.V, S.F.P', NULL, NULL),
(21, 'MOISES PEREA MARTINEZ', 'moises.perea@xybooster.com', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'BROBOTIX / 651305', 'SI', '13', '', 'ENTREGADO', '202897554', 'NO', 'SI', 'ICTINEO PLATAFORMA S.A DE C.V, S.F.P', NULL, NULL),
(22, 'PAULA ALEJANDRA CONTRARAS NAVA ', 'paula.contreras@evolvedigital.mx', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '10', '', 'ENTREGADO', '', 'NO', 'SI', 'EVOLVE FINTECH', NULL, NULL),
(23, ' PEDRO FEDERICO GAYTAN MONZALVO', ' pedro.gaytan@xybooster.com', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '16', '', 'ENTREGADO', '', 'NO', 'SI', ' UNICORN SERIES XYB, S.A.P.I. DE C.V.  ', NULL, NULL),
(24, 'SERGIO SANCHEZ ARANDA ', 'sergio.sanchez@evolvedigital.mx', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '2', '', 'ENTREGADO', '1707318723', 'NO', 'NO', 'ICTINEO PLATAFORMA S.A DE C.V, S.F.P', NULL, NULL),
(25, 'NESTOR  RAMON SANCHEZ RODRIGUEZ', 'nestor.sanchez@xybooster.com', 'OFFICE 365', 'PLATA', 'SI', 'LENOVO / ADLX65CCGU2A', 'NO', 'SI', '14', '', 'ENTREGADO', '1275851036', 'NO', 'NO', 'ICTINEO PLATAFORMA S.A DE C.V, S.F.P', NULL, NULL),
(31, 'PERLA XOCHITL GUERRERO REYES', 'perla.guerrero@xybooster.com', 'OFFICE 365', 'AZUL', 'SI', 'SI', 'NO', 'NO', '23', '', 'ENTREGADO', '1 088 810 967', 'NO', 'NO', ' UNICORN SERIES XYB, S.A.P.I. DE C.V.  ', '', NULL),
(32, 'ALEXIS ANTONIO RUIZ MINON', 'alexis.ruiz@evolvedigital.mx', 'OFFICE 365', 'PLATA', 'PENDIENTE', 'LENOVO / ADLX65CCGU2A', 'SI', 'SI', '24', 'C PERU MZ 259 LT 2986 COL SAN JOSE IXHUATEPEC 54180 TLANEPANTLA DE BAZ MEXICO', 'ENTREGADO', '1436408283', 'SI', 'NO', 'ICTINEO PLATAFORMA S.A DE C.V, S.F.P', 'COBRANZA', NULL),
(33, 'JOSE FERNANDO GONZALEZ ANIMAS', 'jose.animas@xybooster.com', 'OFFICE 365', 'PLATA', 'SI', 'SI', 'NO', 'NO', '25', 'GUERRERO 108 203 COLONIA BUENAVISTA 06350 CUAHTEMOC CIUDAD DE MEXICO', 'ENTREGADO', '1 163 263 069', 'NO', 'NO', ' UNICORN SERIES XYB, S.A.P.I. DE C.V.  ', '', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accountinfo`
--
ALTER TABLE `accountinfo`
  ADD PRIMARY KEY (`HARDWARE_ID`),
  ADD KEY `TAG` (`TAG`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
