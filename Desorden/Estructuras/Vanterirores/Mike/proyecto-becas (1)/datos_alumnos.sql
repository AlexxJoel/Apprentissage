-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2020 a las 16:44:08
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datos alumnos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `no_control` int(14) NOT NULL,
  `semestre` int(1) NOT NULL,
  `grupo` char(1) NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  `turno` char(10) NOT NULL,
  `curp_alumno` char(18) NOT NULL,
  `apellido_paterno` char(25) NOT NULL,
  `apellido_materno` char(25) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha_nacimiento` int(10) NOT NULL,
  `telefono_celular` int(15) NOT NULL,
  `tlefono_casa` int(15) NOT NULL,
  `correo_electronico` varchar(40) NOT NULL,
  `entidad` varchar(40) NOT NULL,
  `municipio` varchar(40) NOT NULL,
  `localidad` varchar(40) NOT NULL,
  `tipo_asentamiento` char(50) NOT NULL,
  `nombre_asentamiento` varchar(50) NOT NULL,
  `codigo_postal` int(5) NOT NULL,
  `tipo_vialidad` varchar(20) NOT NULL,
  `nombre_vialidad` varchar(30) NOT NULL,
  `numero_exterior` int(10) NOT NULL,
  `numero_interior` int(10) NOT NULL,
  `descripcion_ubicacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`no_control`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
