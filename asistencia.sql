-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-03-2023 a las 22:42:11
-- Versión del servidor: 8.0.32
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fepsoft_5.min_n1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_list`
--

CREATE TABLE `admin_list` (
  `admin_id` int NOT NULL,
  `fullname` int NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `type` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `admin_list`
--

INSERT INTO `admin_list` (`admin_id`, `fullname`, `username`, `password`, `type`, `status`, `date_created`) VALUES
(1, 0, 'admin', '4b67deeb9aba04a5b54632ad19934f26', 1, 1, '2021-10-10 21:49:47'),
(2, 0, 'jusuario', '618ce4bf8c5940435d32a48618198a98', 2, 1, '2021-10-10 22:04:42'),
(3, 0, 'pusuario', '9193ae44bc5f731c47d3dc78cdeaf3b8', 2, 1, '2021-10-11 07:02:10'),
(4, 0, 'jadministrador', 'a482eaf4499c9685a393cc2b3f583023', 1, 1, '2021-10-11 07:04:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendance_list`
--

CREATE TABLE `attendance_list` (
  `attendance_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `device_type` text NOT NULL,
  `att_type` text NOT NULL,
  `ip` text NOT NULL,
  `location` text NOT NULL,
  `json_data` text NOT NULL,
  `imagen` text,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `attendance_list`
--

INSERT INTO `attendance_list` (`attendance_id`, `employee_id`, `device_type`, `att_type`, `ip`, `location`, `json_data`, `imagen`, `date_created`) VALUES
(1, 1, 'desktop', 'IN', '161.18.6.167', '3.2311,-76.4167', '{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2021-10-10 17:02:00'),
(2, 1, 'desktop', 'OUT', '161.18.6.167', '3.2311,-76.4167', '{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2021-10-10 17:08:00'),
(3, 1, 'desktop', 'IN', '161.18.6.167', '3.2311,-76.4167', '{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2021-10-10 20:22:00'),
(4, 1, 'desktop', 'L_IN', '161.18.6.167', '3.2311,-76.4167', '{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2021-10-10 20:58:00'),
(5, 1, 'desktop', 'OUT', '161.18.6.167', '3.2311,-76.4167', '{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2021-10-10 20:59:00'),
(6, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:49:00'),
(7, 1, 'desktop', 'L_IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:49:00'),
(8, 1, 'desktop', 'L_OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:49:00'),
(9, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:49:00'),
(10, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:49:00'),
(11, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:53:00'),
(12, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:53:00'),
(13, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:55:00'),
(14, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:58:00'),
(15, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:59:00'),
(16, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:59:00'),
(17, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:59:00'),
(18, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:00:00'),
(19, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:03:00'),
(20, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:04:00'),
(21, 1, 'desktop', '', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:04:00'),
(22, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:05:00'),
(23, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:05:00'),
(24, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:05:00'),
(25, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:05:00'),
(26, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:06:00'),
(27, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:06:00'),
(28, 1, 'desktop', 'L_OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:06:00'),
(29, 1, 'desktop', 'L_IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:07:00'),
(30, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:07:00'),
(31, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:09:00'),
(32, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:10:00'),
(33, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:10:00'),
(34, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:11:00'),
(35, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:12:00'),
(36, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:14:00'),
(37, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:14:00'),
(38, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:15:00'),
(39, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:15:00'),
(40, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:16:00'),
(41, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:18:00'),
(42, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:18:00'),
(43, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:19:00'),
(44, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:19:00'),
(45, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:20:00'),
(46, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:22:00'),
(47, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:23:00'),
(48, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:23:00'),
(49, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:23:00'),
(50, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:24:00'),
(51, 1, 'desktop', 'IN', '190.212.134.92', '12.1328,-86.2504', '{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 20:53:00'),
(52, 1, 'desktop', 'IN', '190.212.134.92', '12.1328,-86.2504', '{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-03-01 00:38:00'),
(53, 1, 'desktop', 'OUT', '190.212.134.92', '12.1328,-86.2504', '{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-03-01 00:38:00'),
(54, 1, 'desktop', 'IN', '190.212.134.92', '12.1328,-86.2504', '{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-03-01 00:39:00'),
(55, 1, 'desktop', 'IN', '190.212.134.92', '12.1328,-86.2504', '{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-03-01 03:12:00'),
(59, 1, 'desktop', 'L_IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', '', '2023-03-10 23:34:00'),
(60, 1, 'desktop', 'L_OUT', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', '', '2023-03-10 23:34:00'),
(61, 1, 'desktop', 'L_OUT', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', '', '2023-03-10 23:35:00'),
(62, 1, 'desktop', 'L_IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', '', '2023-03-10 23:35:00'),
(63, 1, 'desktop', 'L_OUT', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', '', '2023-03-11 00:20:00'),
(64, 1, 'desktop', 'L_OUT', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', '', '2023-03-11 00:27:00'),
(67, 1, 'desktop', 'IN', '', '', '', 'foto_640c24b5a799a.png', '2023-03-11 00:50:00'),
(68, 1, 'desktop', 'OUT', '', '', '', 'foto_640c24c244cfa.png', '2023-03-11 00:50:00'),
(69, 5, 'mobilde', 'IN', '', '', '', 'foto_640c25be94706.png', '2023-03-11 00:54:00'),
(72, 5, 'mobilde', 'IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640c972a3a5c4.png', '2023-03-11 08:58:00'),
(73, 5, 'desktop', 'IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640cc25f79463.png', '2023-03-11 12:03:00'),
(74, 5, 'desktop', 'OUT', '190.212.134.92', '12.1328,-86.2504', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640cde5fcef84.png', '2023-03-11 14:02:00'),
(75, 5, 'desktop', 'IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640ce34b2b5c8.png', '2023-03-11 14:23:00'),
(76, 2, 'desktop', 'IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640ce86d8ed09.png', '2023-03-11 14:45:00'),
(77, 2, 'desktop', 'OUT', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640ce8b9b5cbe.png', '2023-03-11 14:46:00'),
(78, 2, 'desktop', 'L_OUT', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', '', '2023-03-11 14:49:00'),
(79, 2, 'desktop', 'L_IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', '', '2023-03-11 14:49:00'),
(80, 5, 'desktop', 'IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640ceaa455d1a.png', '2023-03-11 14:55:00'),
(81, 5, 'desktop', 'IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640cf28e2a9fc.png', '2023-03-11 15:28:00'),
(82, 5, 'desktop', 'IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640cf31388e7a.png', '2023-03-11 15:30:00'),
(83, 5, 'desktop', 'IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640cf606a822e.png', '2023-03-11 15:43:00'),
(84, 5, 'desktop', 'IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640cf710f2024.png', '2023-03-11 15:48:00'),
(85, 5, 'desktop', 'IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640d00628f514.png', '2023-03-11 16:27:00'),
(86, 5, 'desktop', 'IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640d026d87854.png', '2023-03-11 16:36:00'),
(87, 5, 'mobilde', 'IN', '185.185.80.19', '51.2217,6.7762', '{\"ip\":\"185.185.80.19\",\"hostname\":\"red128.org\",\"city\":\"Düsseldorf\",\"region\":\"North Rhine-Westphalia\",\"country\":\"DE\",\"loc\":\"51.2217,6.7762\",\"org\":\"AS51167 Contabo GmbH\",\"postal\":\"40210\",\"timezone\":\"Europe/Berlin\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640d0b3fdc0ac.png', '2023-03-11 17:14:00'),
(89, 1, 'desktop', 'IN', '186.77.197.27', '12.6635,-87.1666', '{\"ip\":\"186.77.197.27\",\"city\":\"El Viejo\",\"region\":\"Chinandega\",\"country\":\"NI\",\"loc\":\"12.6635,-87.1666\",\"org\":\"AS14754 Telgua\",\"timezone\":\"America/Managua\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640e4c3364ac7.png', '2023-03-12 16:03:00'),
(90, 1, 'desktop', 'IN', '186.77.197.27', '12.6635,-87.1666', '{\"ip\":\"186.77.197.27\",\"city\":\"El Viejo\",\"region\":\"Chinandega\",\"country\":\"NI\",\"loc\":\"12.6635,-87.1666\",\"org\":\"AS14754 Telgua\",\"timezone\":\"America/Managua\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640e4c337d9c8.png', '2023-03-12 16:03:00'),
(91, 1, 'mobilde', 'IN', '190.143.252.126', '12.1328,-86.2504', '{\"ip\":\"190.143.252.126\",\"hostname\":\"host126-252-143-190tigobusiness.com.ni\",\"city\":\"Managua\",\"region\":\"Managua Department\",\"country\":\"NI\",\"loc\":\"12.1328,-86.2504\",\"org\":\"AS28036 Telefonia Celular de Nicaragua SA.\",\"timezone\":\"America/Managua\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640e722a87cea.png', '2023-03-12 18:45:00'),
(92, 1, 'desktop', 'IN', '190.143.252.126', '12.1328,-86.2504', '{\"ip\":\"190.143.252.126\",\"hostname\":\"host126-252-143-190tigobusiness.com.ni\",\"city\":\"Managua\",\"region\":\"Managua Department\",\"country\":\"NI\",\"loc\":\"12.1328,-86.2504\",\"org\":\"AS28036 Telefonia Celular de Nicaragua SA.\",\"timezone\":\"America/Managua\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_640e7353f01d1.png', '2023-03-12 18:50:00'),
(93, 1, 'desktop', 'L_OUT', '190.143.252.126', '12.1328,-86.2504', '{\"ip\":\"190.143.252.126\",\"hostname\":\"host126-252-143-190tigobusiness.com.ni\",\"city\":\"Managua\",\"region\":\"Managua Department\",\"country\":\"NI\",\"loc\":\"12.1328,-86.2504\",\"org\":\"AS28036 Telefonia Celular de Nicaragua SA.\",\"timezone\":\"America/Managua\",\"readme\":\"https://ipinfo.io/missingauth\"}', '', '2023-03-12 18:51:00'),
(94, 6, 'mobilde', 'IN', '2803:1800:5005:2fb6:174c:491c:dea3:61fc', '3.3761,-74.8015', '{\"ip\":\"2803:1800:5005:2fb6:174c:491c:dea3:61fc\",\"city\":\"Colombia\",\"region\":\"Huila\",\"country\":\"CO\",\"loc\":\"3.3761,-74.8015\",\"org\":\"AS27831 Colombia Móvil\",\"postal\":\"411080\",\"timezone\":\"America/Bogota\",\"readme\":\"https://ipinfo.io/missingauth\"}', 'foto_6410d5498ed76.png', '2023-03-14 14:12:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `department_list`
--

CREATE TABLE `department_list` (
  `department_id` int NOT NULL,
  `name` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `department_list`
--

INSERT INTO `department_list` (`department_id`, `name`, `status`, `date_created`) VALUES
(1, 'Tecnologías de La Información', 1, '2021-10-10 21:55:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_list`
--

CREATE TABLE `employee_list` (
  `employee_id` int NOT NULL,
  `department_id` int NOT NULL,
  `position_id` int NOT NULL,
  `employee_code` text NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `address` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `employee_list`
--

INSERT INTO `employee_list` (`employee_id`, `department_id`, `position_id`, `employee_code`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `email`, `password`, `address`, `status`, `date_created`) VALUES
(1, 1, 1, '121212E1', 'Juan', 'Andrés', 'Empleado', 'Male', '3062589471', 'jempleado@cweb.com', 'f186570fc58d1f94aaaa7cda7eafbb0d', 'Calle 34 N 21 43', 1, '2021-10-10 21:58:14'),
(2, 1, 1, '121212E2', 'Pablo', '', 'Empleado', 'Male', '3243452311', 'pempleado@cweb.com', 'f96233ca8a3fad46c8044f1369050faa', 'Calle 54 N 33 21', 1, '2021-10-11 06:59:21'),
(4, 1, 1, '12363656', 'Juan', '', 'Perez', 'Male', '11222', 'juan@perez', '57493b75c6830f3d545eaba3c9f6c3a0', 'Managua', 1, '2023-02-28 09:46:48'),
(5, 1, 1, '1', 'Freddy', '', 'Paniagua', 'Male', 'Freddy', 'fep@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Managua', 1, '2023-03-11 06:53:44'),
(6, 1, 1, '12121299', 'Usu', '', '', 'Male', '234', 'usu@cweb.com', '29478cb79e4258e7ea9d11bd08cba691', 'Carrea', 1, '2023-03-14 20:03:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `position_list`
--

CREATE TABLE `position_list` (
  `position_id` int NOT NULL,
  `name` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `position_list`
--

INSERT INTO `position_list` (`position_id`, `name`, `status`, `date_created`) VALUES
(1, 'Técnico de Soporte Nivel 1', 1, '2021-10-10 21:56:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_list`
--
ALTER TABLE `admin_list`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indices de la tabla `attendance_list`
--
ALTER TABLE `attendance_list`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indices de la tabla `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`department_id`);

--
-- Indices de la tabla `employee_list`
--
ALTER TABLE `employee_list`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indices de la tabla `position_list`
--
ALTER TABLE `position_list`
  ADD PRIMARY KEY (`position_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_list`
--
ALTER TABLE `admin_list`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `attendance_list`
--
ALTER TABLE `attendance_list`
  MODIFY `attendance_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `department_list`
--
ALTER TABLE `department_list`
  MODIFY `department_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `employee_list`
--
ALTER TABLE `employee_list`
  MODIFY `employee_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `position_list`
--
ALTER TABLE `position_list`
  MODIFY `position_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `attendance_list`
--
ALTER TABLE `attendance_list`
  ADD CONSTRAINT `attendance_list_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_list` (`employee_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `employee_list`
--
ALTER TABLE `employee_list`
  ADD CONSTRAINT `employee_list_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `position_list` (`position_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_list_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`department_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
