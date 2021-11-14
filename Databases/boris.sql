-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2021 a las 16:51:13
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `boris`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `ida` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`ida`, `nombre`, `apellido`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'wallace', 'groumit tothintut', 'wallaceQueso@gmail.com', '$2y$04$4310x/3fuRgTQv3QB.JasetODtXF6Sr2dqWg/5N0.Ii4weLO/RDfO', '2021-11-12 05:51:16', '2021-11-12 05:51:16'),
(2, 'Victor', 'Carbajal', 'Victor@gmail.com', '$2y$04$WzmFHWiOSb2s3CXGhirGUOWfJKyXAkSEyG6u4GSClSeoPpOTIVRlW', '2021-11-12 05:59:06', '2021-11-12 05:59:06'),
(3, 'Groumit', 'Wallace', 'Groumit@gmail.com', '$2y$04$vW0r0PR7nqXxxRG1wZ5lku50Ek4IvRVUkTB3Y9JbK5A1ZUFinD35a', '2021-11-12 06:24:21', '2021-11-12 06:24:21'),
(4, 'Antonio', 'Carbajal', 'luis2@gmail.com', '$2y$04$yT0RhyjDWYTEbR.7ePDBU.iLeIe5hPYIEbYZlcW3VpMjTKENvg.9K', '2021-11-14 12:40:14', '2021-11-14 12:40:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `idn` int(20) NOT NULL,
  `mensaje` varchar(150) NOT NULL,
  `estado` int(1) NOT NULL,
  `autor` varchar(300) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(20) NOT NULL,
  `id` int(11) NOT NULL,
  `nombreDep` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratingadmin`
--

CREATE TABLE `ratingadmin` (
  `idra` int(20) NOT NULL,
  `ida` int(11) NOT NULL,
  `valorExperiencia` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratingusuario`
--

CREATE TABLE `ratingusuario` (
  `idrc` int(20) NOT NULL,
  `id` int(11) NOT NULL,
  `valorExperiencia` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportesdep`
--

CREATE TABLE `reportesdep` (
  `id_reportesDep` int(20) NOT NULL,
  `id_departamento` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportesusuario`
--

CREATE TABLE `reportesusuario` (
  `id_reportesusuario` int(20) NOT NULL,
  `id` int(11) NOT NULL,
  `id_departamento` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`firstname`, `middlename`, `lastname`, `birthdate`, `username`, `password`) VALUES
('Luis Antonioo', 'Linares', 'Carbajal', '1999-08-29', 'Boris@gmail.com', '12345'),
('Mauricio', 'Sevilla', 'Britto', '1980-10-15', 'configuroweb', '1234abcd..'),
('Pedro', 'Roberto', 'Usuario', '2017-07-19', 'rusuario', '1234abcd..');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Antonio', 'Carbajal', 'tony@gmail.com', '$2y$04$09ieTebkp9.UlyVHADF8nuMEkuLUd.dzr1z6aZUpMHHidwdnZqeuG', '2021-10-30 11:34:18', '2021-10-30 11:34:18'),
(2, 'bryan', 'linares', 'bryan@gmail.com', '$2y$04$YivGejgK6yu4VV8SsLHfee1By5PYHqQiUZFh7pdAnrZQteLgtmWMe', '2021-10-30 11:45:07', '2021-10-30 11:45:07'),
(3, 'octavio', 'cardenas', 'psycologo@gmail.com', '$2y$04$a.09jqA2Hm.Mefsy4Wzjsea8mkN.9RazJnQA818POfDyfx9/UBCpq', '2021-11-11 05:17:10', '2021-11-11 05:17:10'),
(4, 'juan', 'Palestina', 'juanpalestina@gmail.com', '$2y$04$wjb4DigHloLdepQ5N6F0eeLXn6wSUDZgTUHvjXZG2cxDE3J4vRauK', '2021-11-12 03:10:32', '2021-11-12 03:10:32'),
(5, 'wallace', 'groumit tothintut', 'Wallace@gmail.com', '$2y$04$Iyx/PEXpcjzl1nJ5EmBgwetTfUHxlGRzF31vhj7TVIbZwhv/.mfym', '2021-11-12 03:24:43', '2021-11-12 03:24:43'),
(6, 'fernanda', 'Sanchez', 'fernanda@gmail.com', '$2y$04$94WsjXpK4m8Qi6jEDpMsyuuIidQps/f84VTiDAV7Pd.9eDUg2U4Ja', '2021-11-12 03:44:11', '2021-11-12 03:44:11'),
(7, 'Rodrigo', 'Linares', 'ro@gmail.com', '$2y$04$TGreWsUuuEOVaXFDyHw4Cexy.gy.oAFF64Gah.ivhFoh2AgZK5Fl2', '2021-11-12 05:06:10', '2021-11-12 05:06:10'),
(8, 'carmen', 'Rosas', 'carme@gmail.com', '$2y$04$07AxvuoPwnP.qAdNnf98euBHZ6FRC0X276MDrceePxbAuljjYYjsS', '2021-11-12 19:19:59', '2021-11-12 19:19:59'),
(9, 'victoria', 'Hernandez', 'viky@gmail.com', '$2y$04$wiEsGfMBubawltzP91uLX.2/GMoWO0nN/X6uya0cJ0HA1i9SxnT0W', '2021-11-12 19:23:06', '2021-11-12 19:23:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ida`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`idn`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `ratingadmin`
--
ALTER TABLE `ratingadmin`
  ADD PRIMARY KEY (`idra`),
  ADD KEY `ida` (`ida`);

--
-- Indices de la tabla `ratingusuario`
--
ALTER TABLE `ratingusuario`
  ADD PRIMARY KEY (`idrc`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `reportesdep`
--
ALTER TABLE `reportesdep`
  ADD PRIMARY KEY (`id_reportesDep`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `reportesusuario`
--
ALTER TABLE `reportesusuario`
  ADD PRIMARY KEY (`id_reportesusuario`),
  ADD KEY `id` (`id`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `ida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `idn` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ratingadmin`
--
ALTER TABLE `ratingadmin`
  MODIFY `idra` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ratingusuario`
--
ALTER TABLE `ratingusuario`
  MODIFY `idrc` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reportesdep`
--
ALTER TABLE `reportesdep`
  MODIFY `id_reportesDep` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reportesusuario`
--
ALTER TABLE `reportesusuario`
  MODIFY `id_reportesusuario` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `ratingadmin`
--
ALTER TABLE `ratingadmin`
  ADD CONSTRAINT `ratingadmin_ibfk_1` FOREIGN KEY (`ida`) REFERENCES `admin` (`ida`);

--
-- Filtros para la tabla `ratingusuario`
--
ALTER TABLE `ratingusuario`
  ADD CONSTRAINT `ratingusuario_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `reportesdep`
--
ALTER TABLE `reportesdep`
  ADD CONSTRAINT `reportesdep_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`);

--
-- Filtros para la tabla `reportesusuario`
--
ALTER TABLE `reportesusuario`
  ADD CONSTRAINT `reportesusuario_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `reportesusuario_ibfk_2` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
