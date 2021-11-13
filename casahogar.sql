-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2021 a las 16:17:31
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(6, 'Bojack Horseman', 7, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/blackhorse.jpg?alt=media&token=9fc0fa0d-d4d7-40bb-b9ff-73801040d74f', 'El Caballo de horsin Arround', 3),
(7, 'Kota', 1, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/doby.jpg?alt=media&token=db9b38c6-0956-4008-8fb1-0f0f46497e45', 'Hermosa perra', 1),
(8, 'Caballo Afeminado', 4, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/bwhorse.jpg?alt=media&token=6a44e688-dcee-4f0c-96a5-bf68b6d4606f', 'Espectacular Animal', 3),
(9, 'Camaleon', 1, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/camaleon.jpg?alt=media&token=a987a5ea-7323-411d-900b-069907503344', 'Un Camaleon ', 4),
(10, 'Gato Bebe', 1, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/cat.jpg?alt=media&token=32fc771b-fc82-4c45-b808-c90a3a04b31b', 'gato de 1 mes', 2),
(11, 'Conejillo de indias', 1, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/cui.jpg?alt=media&token=014e049d-1f9e-4197-b371-6166525f5823', 'un cui', 5),
(12, 'Gata Espectacular', 1, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/gato.jpg?alt=media&token=b4be18fb-c64b-4821-86d9-31bc96c37968', 'una gata de 1 año', 2),
(13, 'Calvo', 9, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/gatofeo.jpg?alt=media&token=cd6d5d2f-d7bf-45ac-8c20-61aaf4ee2ce3', 'Bold cat', 2),
(14, 'Iguana', 1, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/iguana.jpg?alt=media&token=ea688523-9da8-4db2-ae8b-f5e897a10f78', 'Quiero 1', 4),
(15, 'Mapache', 2, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/mapache.jpg?alt=media&token=26c4a78f-93f9-490b-afb2-4ad0581196fe', 'un mapache', 5),
(16, 'Paso Fino', 2, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/pasofinohose.jpg?alt=media&token=99978ab6-13d6-477b-b893-c293b52ea44e', 'caballo DPM', 3),
(17, 'Morgan', 2, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/pitbull.jpg?alt=media&token=e3beb0ad-8c42-4ea6-aa03-28a88dd3b8d0', 'Mi pitbull', 1),
(18, 'Emiliano', 9, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/schanuzer.jpg?alt=media&token=7fd872cf-24e6-4175-8e02-1be61ce059f8', 'Mi schnauza!', 1),
(19, 'Blu Snake', 2, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/snake.jpg?alt=media&token=ce899b2e-364e-4105-ab52-8839d9011abd', 'Run', 4),
(20, 'Ardilla', 1, 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/squirll.jpg?alt=media&token=36d1cc64-7666-4186-972e-6ae57423e198', 'Ardilla Asesina', 5);

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
(3, 'gatsby rojo', 'https://firebasestorage.googleapis.com/v0/b/picscasahogar.appspot.com/o/cuido2.jpg?alt=media&token=effdf9fd-1caa-4ebf-bc44-44982dda57f0', 1000, 'asdasdasd', 0),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
