-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.2:3306
-- Tiempo de generación: 14-08-2023 a las 18:26:45
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
-- Estructura de tabla para la tabla `bios`
--

CREATE TABLE `bios` (
  `HARDWARE_ID` int(11) NOT NULL,
  `SMANUFACTURER` varchar(255) DEFAULT NULL,
  `SMODEL` varchar(255) DEFAULT NULL,
  `SSN` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `BMANUFACTURER` varchar(255) DEFAULT NULL,
  `BVERSION` varchar(255) DEFAULT NULL,
  `BDATE` varchar(255) DEFAULT NULL,
  `ASSETTAG` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bios`
--

INSERT INTO `bios` (`HARDWARE_ID`, `SMANUFACTURER`, `SMODEL`, `SSN`, `TYPE`, `BMANUFACTURER`, `BVERSION`, `BDATE`, `ASSETTAG`) VALUES
(2, 'LENOVO', '82KT', 'PF3DQZJR', 'Notebook', 'LENOVO', 'GLCN46WW', '29/04/2022', 'No Asset Tag'),
(3, 'LENOVO', '81X7', 'PF43TJJ7', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(4, 'LENOVO', '81X7', 'PF43TJJM', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(5, 'LENOVO', '81X7', 'PF43TRXN', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(6, 'LENOVO', '81X7', 'PF43X1HW', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(7, 'LENOVO', '81X7', 'PF43WRJ0', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(8, 'LENOVO', '81X7', 'PF43XPED', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(11, 'LENOVO', '81X7', 'PF43XA2E', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(12, 'LENOVO', '81X7', 'PF43R6VT', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(13, 'LENOVO', '81X7', 'PF43W7W1', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(14, 'LENOVO', '81W1', 'PF3M0661', 'Notebook', 'LENOVO', 'E8CN31WW', '11/11/2021', 'No Asset Tag'),
(15, 'LENOVO', '81X7', 'PF43TG30', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(16, 'HP', 'HP Laptop 14-dq0xxx', '5CD251FPCS', 'Notebook', 'AMI', 'F.26', '14/06/2022', ''),
(17, 'LENOVO', '81X7', 'PF43TLR6', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(18, 'LENOVO', '81X7', 'PF43VR21', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(19, 'LENOVO', '81X7', 'PF43R4MV', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(20, 'LENOVO', '81X7', 'PF43X8NS', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(21, 'LENOVO', '81X7', 'PF43R29W', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(22, 'LENOVO', '81X7', 'PF43TJAM', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(23, 'LENOVO', '81X7', 'PF43WZD5', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(24, 'LENOVO', '81X7', 'PF43QMM7', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(25, 'LENOVO', '81X7', 'PF43WX3G', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(31, 'HP', 'HP Laptop 14-dq2xxx', '5CD30237W2', 'Notebook', 'AMI', 'F.26', '18/10/2022', ''),
(32, 'LENOVO', '81X7', 'PF43RWQE', 'Notebook', 'LENOVO', 'GCCN30WW', '05/08/2022', 'NO Asset Tag'),
(33, 'LENOVO', '82VG', 'MP2C9XTX', 'Notebook', 'LENOVO', 'KSCN21WW', '07/09/2022', 'NO Asset Tag');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bios`
--
ALTER TABLE `bios`
  ADD PRIMARY KEY (`HARDWARE_ID`),
  ADD KEY `SSN` (`SSN`),
  ADD KEY `ASSETTAG` (`ASSETTAG`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
