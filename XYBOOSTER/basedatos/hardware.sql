-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.2:3306
-- Tiempo de generación: 14-08-2023 a las 18:26:59
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
-- Estructura de tabla para la tabla `hardware`
--

CREATE TABLE `hardware` (
  `ID` int(11) NOT NULL,
  `DEVICEID` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `WORKGROUP` varchar(255) DEFAULT NULL,
  `USERDOMAIN` varchar(255) DEFAULT NULL,
  `OSNAME` varchar(255) DEFAULT NULL,
  `OSVERSION` varchar(255) DEFAULT NULL,
  `OSCOMMENTS` varchar(255) DEFAULT NULL,
  `PROCESSORT` varchar(255) DEFAULT NULL,
  `PROCESSORS` int(11) DEFAULT '0',
  `PROCESSORN` smallint(6) DEFAULT NULL,
  `MEMORY` int(11) DEFAULT NULL,
  `SWAP` int(11) DEFAULT NULL,
  `IPADDR` varchar(255) DEFAULT NULL,
  `DNS` varchar(255) DEFAULT NULL,
  `DEFAULTGATEWAY` varchar(255) DEFAULT NULL,
  `ETIME` datetime DEFAULT NULL,
  `LASTDATE` datetime DEFAULT NULL,
  `LASTCOME` datetime DEFAULT NULL,
  `QUALITY` decimal(7,4) DEFAULT NULL,
  `FIDELITY` bigint(20) DEFAULT '1',
  `USERID` varchar(255) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `WINCOMPANY` varchar(255) DEFAULT NULL,
  `WINOWNER` varchar(255) DEFAULT NULL,
  `WINPRODID` varchar(255) DEFAULT NULL,
  `WINPRODKEY` varchar(255) DEFAULT NULL,
  `USERAGENT` varchar(50) DEFAULT NULL,
  `CHECKSUM` bigint(20) UNSIGNED DEFAULT '262143',
  `SSTATE` int(11) DEFAULT '0',
  `IPSRC` varchar(255) DEFAULT NULL,
  `UUID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hardware`
--

INSERT INTO `hardware` (`ID`, `DEVICEID`, `NAME`, `WORKGROUP`, `USERDOMAIN`, `OSNAME`, `OSVERSION`, `OSCOMMENTS`, `PROCESSORT`, `PROCESSORS`, `PROCESSORN`, `MEMORY`, `SWAP`, `IPADDR`, `DNS`, `DEFAULTGATEWAY`, `ETIME`, `LASTDATE`, `LASTCOME`, `QUALITY`, `FIDELITY`, `USERID`, `TYPE`, `DESCRIPTION`, `WINCOMPANY`, `WINOWNER`, `WINPRODID`, `WINPRODKEY`, `USERAGENT`, `CHECKSUM`, `SSTATE`, `IPSRC`, `UUID`) VALUES
(15, 'LAPTOP-0BC1KN6R-2023-08-01-12-18-21', 'LAPTOP-0BC1KN6R', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.246', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 13:24:23', '2023-08-08 13:24:23', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-54405-AAOEM', 'V44M3-24NV3-WQMTV-VPR62-XTPTB', 'OCS_local_6005', 524287, 0, '127.0.0.1', '471B9E15-6255-11ED-80F3-9C2DCDE4F7B2'),
(8, 'LAPTOP-0MH7GACP-2023-08-03-10-40-17', 'LAPTOP-0MH7GACP', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.251', '192.168.0.1', NULL, NULL, '2023-08-08 12:51:06', '2023-08-08 12:51:06', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-70711-AAOEM', 'YNQFY-4R7KJ-C9Y8H-TQ36C-6JGGB', 'OCS_local_6005', 524287, 0, '127.0.0.1', '471B9C8D-6255-11ED-80F3-9C2DCDE4F62B'),
(6, 'LAPTOP-1UBL794D-2023-08-01-12-36-51', 'LAPTOP-1UBL794D', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.100', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 12:36:16', '2023-08-08 12:36:16', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-55911-AAOEM', 'KNT6J-T73T8-H4XD3-XG8HX-H6DPM', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EBB69-6174-11ED-80F3-9C2DCDE28DBA'),
(17, 'LAPTOP-3AG20DJF-2023-07-31-17-22-18', 'LAPTOP-3AG20DJF', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.149', NULL, '192.168.0.1', NULL, '2023-08-08 13:48:11', '2023-08-08 13:48:11', NULL, 1, NULL, 0, NULL, NULL, 'xybooster2@outlook.es', '00342-43322-52700-AAOEM', 'JTN8Y-2QJGQ-YQ27T-7C4RD-4GDPM', 'OCS_local_6005', 524287, 0, '127.0.0.1', '471BA1B0-6255-11ED-80F3-9C2DCDE4FB4C'),
(33, 'LAPTOP-4115EMKR-2023-08-10-15-08-10', 'LAPTOP-4115EMKR', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, 'AMD Ryzen 3 7320U with Radeon Graphics [4 core(s) x86_64]', 2401, 1, 5877, 20213, '192.168.0.244', '192.168.0.1', '192.168.0.1', NULL, '2023-08-10 15:18:59', '2023-08-10 15:18:59', NULL, 1, 'Jose Gonzalez Animas', 0, NULL, NULL, 'evolve.fintech@hotmail.com', '00342-43316-53374-AAOEM', 'HNJ6Q-GWJ3H-RX7WR-G684Q-9D78Y', 'OCS_local_6005', 524287, 0, '127.0.0.1', 'F41666A8-4CF8-11ED-8C90-088FC3C56414'),
(31, 'LAPTOP-9K8H5QPL-2023-08-09-09-12-45', 'LAPTOP-9K8H5QPL', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2901, 1, 8192, 17052, '192.168.0.118', '192.168.0.1', '192.168.0.1', NULL, '2023-08-09 09:18:10', '2023-08-09 09:18:10', NULL, 1, 'Salma Gutierrez', 0, NULL, 'HP', 'evolve.fintech@hotmail.com', '00342-43195-67153-AAOEM', 'N3GTT-8KCT6-YTYR8-V9H3B-K77CM', 'OCS_local_6005', 524287, 0, '127.0.0.1', '33444335-3230-3733-5732-323732304435'),
(19, 'LAPTOP-A9HAQMRI-2023-08-03-09-38-08', 'LAPTOP-A9HAQMRI', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.209', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 13:51:55', '2023-08-08 13:51:55', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-55973-AAOEM', 'C3GXK-8NRGW-C3MRC-C2H3D-9D78Y', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EC8D3-6174-11ED-80F3-9C2DCDE29B24'),
(7, 'LAPTOP-CM1B71OC-2023-07-31-16-22-20', 'LAPTOP-CM1B71OC', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.20', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 12:47:48', '2023-08-08 12:47:48', NULL, 1, NULL, 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-64744-AAOEM', 'J2J46-N3XD8-63BB7-D69Y3-GF4JY', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EBBFE-6174-11ED-80F3-9C2DCDE28E4F'),
(12, 'LAPTOP-E73CLO53-2023-08-01-12-40-08', 'LAPTOP-E73CLO53', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.181', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 13:09:03', '2023-08-08 13:09:03', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-55968-AAOEM', 'B9GFM-2YNB3-2Y9C3-VTV9G-TJGGB', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EC8D7-6174-11ED-80F3-9C2DCDE29B28'),
(18, 'LAPTOP-ESF9LI0G-2023-08-01-11-24-53', 'LAPTOP-ESF9LI0G', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.98', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 13:50:21', '2023-08-08 13:50:21', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-70786-AAOEM', 'C9FM2-6N7G2-9VJY6-GKF3M-MY6GB', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EBC53-6174-11ED-80F3-9C2DCDE28EA4'),
(3, 'LAPTOP-F7HKROCL-2023-07-31-16-36-14', 'LAPTOP-F7HKROCL', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.26', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 11:49:27', '2023-08-08 11:49:27', NULL, 1, NULL, 0, NULL, NULL, 'xybooster3@outlook.es', '00342-43322-70853-AAOEM', '2239M-TWNGJ-W368P-8YP3W-VH7CM', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EBE99-6174-11ED-80F3-9C2DCDE290EA'),
(11, 'LAPTOP-G5V4DKS0-2023-08-01-10-16-58', 'LAPTOP-G5V4DKS0', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.253', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 13:00:52', '2023-08-08 13:00:52', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-61776-AAOEM', 'J69BP-NDKQH-PXYFR-D9XF9-WTYWY', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EBEF2-6174-11ED-80F3-9C2DCDE29143'),
(5, 'LAPTOP-GSE6BQO2-2023-08-01-10-29-41', 'LAPTOP-GSE6BQO2', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.88', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 12:21:04', '2023-08-08 12:21:04', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster4@outlook.es', '00342-43322-70763-AAOEM', 'GNP73-GKCTQ-83MVW-K2VCP-KW3PM', 'OCS_local_6005', 524287, 0, '127.0.0.1', '471BA05C-6255-11ED-80F3-9C2DCDE4F9F9'),
(21, 'LAPTOP-I105954O-2023-08-02-09-42-16', 'LAPTOP-I105954O', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.138', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 13:58:38', '2023-08-08 13:58:38', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-55972-AAOEM', 'JF4N4-HTMP9-RYBJF-RY2GD-3PFJY', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EC7B6-6174-11ED-80F3-9C2DCDE29A07'),
(22, 'LAPTOP-JFHVJLUJ-2023-08-01-12-39-56', 'LAPTOP-JFHVJLUJ', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.222', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 15:15:04', '2023-08-08 15:15:04', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-61923-AAOEM', 'Q39VX-N23Q7-XQBJQ-6V9R2-P9X2M', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EBCE3-6174-11ED-80F3-9C2DCDE28F34'),
(24, 'LAPTOP-JOG16EJB-2023-08-01-10-29-03', 'LAPTOP-JOG16EJB', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.15', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 15:23:33', '2023-08-08 15:23:33', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43321-67630-AAOEM', 'TDNRR-MFFQX-2B28M-HDQGX-8QK2M', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EBDD9-6174-11ED-80F3-9C2DCDE2902A'),
(2, 'LAPTOP-LBS6EJTE-2023-07-25-17-41-49', 'LAPTOP-LBS6EJTE', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, 'AMD Ryzen 3 5300U with Radeon Graphics [4 core(s) x86_64]', 2600, 1, 6006, 13082, '192.168.56.1', '192.168.0.1', '0.0.0.0', NULL, '2023-08-08 11:22:23', '2023-08-08 11:22:23', NULL, 1, 'Bryan Hernandez', 0, NULL, NULL, 'fernando.delacruz@ictineo.com', '00327-31100-21587-AAOEM', 'KYY9Q-7GNPD-6498X-GDWPD-9764C', 'OCS_local_6005', 262143, 0, '127.0.0.1', '3D4F734B-B3FC-4FED-8FEE-84A93888F5AD'),
(25, 'LAPTOP-NBKLQ3M7-2023-08-02-10-21-01', 'LAPTOP-NBKLQ3M7', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.137', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 15:28:02', '2023-08-08 15:28:02', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-67774-AAOEM', 'TVNTJ-3TCJD-89BXM-DMMJ2-9QBWY', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EC19A-6174-11ED-80F3-9C2DCDE293EB'),
(13, 'LAPTOP-NU3STMJ9-2023-08-02-11-05-52', 'LAPTOP-NU3STMJ9', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.62', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 13:13:53', '2023-08-08 13:13:53', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-67775-AAOEM', 'HXNFT-BBK36-TTDWT-96TRT-8TYWY', 'OCS_local_6005', 524287, 0, '127.0.0.1', '471B9D55-6255-11ED-80F3-9C2DCDE4F6F4'),
(4, 'LAPTOP-O6RBS2T1-2023-07-31-17-16-43', 'LAPTOP-O6RBS2T1', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.21', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 11:49:42', '2023-08-08 11:49:42', NULL, 1, NULL, 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-70859-AAOEM', '3N6W3-YV8RT-M7CF4-84MRR-MWRJY', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EBDA0-6174-11ED-80F3-9C2DCDE28FF1'),
(23, 'LAPTOP-PPMQOEOA-2023-08-03-10-05-48', 'LAPTOP-PPMQOEOA', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.149', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 15:17:38', '2023-08-08 15:17:38', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-67781-AAOEM', '3N3VW-Q8RYR-JYYGR-WB32T-RRHCM', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9ECA16-6174-11ED-80F3-9C2DCDE29C67'),
(32, 'LAPTOP-R40E4I01-2023-08-03-15-15-45', 'LAPTOP-R40E4I01', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.94', '192.168.0.1', '192.168.0.1', NULL, '2023-08-10 09:24:47', '2023-08-10 09:24:47', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-67821-AAOEM', 'VJ9QT-NFQ3J-Q2W9T-M78WB-G3BWY', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EC18A-6174-11ED-80F3-9C2DCDE293DB'),
(16, 'LAPTOP-U013GD1Q-2023-08-03-13-48-29', 'LAPTOP-U013GD1Q', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, 'Intel(R) Pentium(R) Silver N5030 CPU @ 1.10GHz [4 core(s) x86_64]', 1101, 1, 8192, 9736, '192.168.0.43', NULL, '192.168.0.1', NULL, '2023-08-08 13:34:23', '2023-08-08 13:34:23', NULL, 1, NULL, 0, NULL, 'HP', 'evolve.fintech@hotmail.com', '00342-43332-93775-AAOEM', 'N2VCM-DTC34-2WFMK-XD44B-43K2M', 'OCS_local_6005', 524287, 0, '127.0.0.1', '32444335-3135-5046-4353-535031354435'),
(20, 'LAPTOP-UJ2VSL9S-2023-08-08-12-30-35', 'LAPTOP-UJ2VSL9S', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz [2 core(s) x86_64]', 2995, 1, 8192, 9911, '192.168.0.36', '192.168.0.1', '192.168.0.1', NULL, '2023-08-08 13:58:12', '2023-08-08 13:58:12', NULL, 1, 'xyboo', 0, NULL, NULL, 'xybooster1@outlook.es', '00342-43322-61761-AAOEM', 'WVCXM-PNK8V-W4T4T-6FJPV-JQK2M', 'OCS_local_6005', 524287, 0, '127.0.0.1', '1C9EC829-6174-11ED-80F3-9C2DCDE29A7A'),
(14, 'LAPTOP-UO0O75DL-2023-08-03-15-39-15', 'LAPTOP-UO0O75DL', 'WORKGROUP', NULL, 'Microsoft Windows 11 Home Single Language', '10.0.22621', NULL, 'AMD Athlon Silver 3050U with Radeon Graphics [2 core(s) x86_64]', 2300, 1, 6020, 9348, '192.168.1.94', '8.8.8.8 / 8.8.4.4 / 1.1.1.1', '192.168.0.1', NULL, '2023-08-08 13:22:26', '2023-08-08 13:22:26', NULL, 1, 'Ictineo Plataforma', 0, NULL, NULL, 'pruebanumerouno17@hotmail.com', '00342-43258-28074-AAOEM', '9NQJQ-XMM9K-3T24W-H667Y-YWRJY', 'OCS_local_6005', 524287, 0, '127.0.0.1', '195AB042-7E85-11EC-80F1-88A4C271A046'),
(30, '_SYSTEMGROUP_', 'TECNOLOGIA2', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-08 16:37:57', NULL, NULL, 1, NULL, NULL, 'SISTEMAS', NULL, NULL, NULL, NULL, NULL, 262143, 0, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`DEVICEID`,`ID`),
  ADD KEY `NAME` (`NAME`),
  ADD KEY `CHECKSUM` (`CHECKSUM`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `WORKGROUP` (`WORKGROUP`),
  ADD KEY `OSNAME` (`OSNAME`),
  ADD KEY `MEMORY` (`MEMORY`),
  ADD KEY `DEVICEID` (`DEVICEID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hardware`
--
ALTER TABLE `hardware`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
