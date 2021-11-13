-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2021 a las 20:10:53
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `casahogar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales`
--

CREATE TABLE `animales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `animales`
--

INSERT INTO `animales` (`id`, `nombre`, `edad`, `foto`, `descripcion`, `tipo`) VALUES
(1, 'prueba', 12, 'unafoto', 'asdasd', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `foto`, `precio`, `descripcion`, `tipo`) VALUES
(2, 'cuido', 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/cuido1.jpg?alt=media&token=005e82e2-ca8d-45b6-a59a-62858933217e', 25000, 'un cuido pelle', 0),
(3, 'gatsby', 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/cuido2.jpg?alt=media&token=effdf9fd-1caa-4ebf-bc44-44982dda57f0', 42000, 'cuido de gatos', 0),
(4, 'felix', 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/cuido3.jpg?alt=media&token=1a3c984f-7230-443d-90ab-263f7c0d110f', 25000, 'felix', 0),
(5, 'chunky', 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/cuido4.jpg?alt=media&token=9c9cdac8-712e-4922-99c8-da88397e4afa', 18000, 'cuido regular', 0),
(6, 'ringo', 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/cuido6.jpg?alt=media&token=56c9d1dd-c2e3-40c4-809d-db63925841ae', 12000, 'cuido pelle', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animales`
--
ALTER TABLE `animales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `animales`
--
ALTER TABLE `animales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
