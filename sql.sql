-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-03-2015 a las 01:57:35
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `inventario-computadoras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE IF NOT EXISTS `asignacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departamento_id` int(11) NOT NULL,
  `coordinacion_id` int(11) NOT NULL,
  `usuariopc_id` int(11) NOT NULL,
  `equipo_id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `asignacion`
--

INSERT INTO `asignacion` (`id`, `departamento_id`, `coordinacion_id`, `usuariopc_id`, `equipo_id`, `fecha`, `activo`) VALUES
(1, 1, 0, 1, 3, '2015-03-08 00:38:19', NULL),
(2, 1, 5, 1, 4, '2015-03-08 00:38:53', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases`
--

CREATE TABLE IF NOT EXISTS `cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `marca` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `modelo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `serial` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `cases`
--

INSERT INTO `cases` (`id`, `tipo`, `marca`, `modelo`, `serial`) VALUES
(1, 'a', 'a', 'd', 'd'),
(2, 'b', 'b', 'b', 'b'),
(3, 'c', 'c', 'c', 'c'),
(4, 'd', 'd', 'd', 'd'),
(5, 'e', 'e', 'e', 'e'),
(6, 'f', 'f', 'f', 'f');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinacion`
--

CREATE TABLE IF NOT EXISTS `coordinacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `departamento_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `coordinacion`
--

INSERT INTO `coordinacion` (`id`, `nombre`, `departamento_id`) VALUES
(1, 'Programacion', 1),
(2, 'NOMINA', 2),
(3, 'Soporte', 1),
(4, 'Soporte Tecnico', 1),
(5, 'Redes', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Tecnologia', 'area de tecnologia'),
(9, 'RRHH', 'RRHH');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discoduro`
--

CREATE TABLE IF NOT EXISTS `discoduro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capacidad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `marca` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `puerto` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `discoduro`
--

INSERT INTO `discoduro` (`id`, `capacidad`, `marca`, `puerto`) VALUES
(1, '500gb', 'Hitachi', 'Sata');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE IF NOT EXISTS `equipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `serial` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `biennacional` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `macaddress1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `macaddress2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `procesador_id` int(11) NOT NULL,
  `ram_id` int(11) NOT NULL,
  `discoduro_id` int(11) NOT NULL,
  `monitor_id` int(11) NOT NULL,
  `tarjetamadre_id` int(11) NOT NULL,
  `mouse_id` int(11) NOT NULL,
  `teclado_id` int(11) NOT NULL,
  `cdrom` tinyint(1) DEFAULT NULL,
  `cases_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `nombre`, `so`, `serial`, `biennacional`, `ip`, `macaddress1`, `macaddress2`, `procesador_id`, `ram_id`, `discoduro_id`, `monitor_id`, `tarjetamadre_id`, `mouse_id`, `teclado_id`, `cdrom`, `cases_id`) VALUES
(1, 'no aplica', 'linux mint 17', '11233211233', '123113', '172.16.60.50', '1231211r232', 'qw65e1q65we1', 7, 1, 1, 1, 1, 3, 1, 1, 5),
(2, 'no aplica', 'linux mint 17', '11233211233', '123113', '172.16.60.50', '1231211r232', 'qw65e1q65we1', 7, 1, 1, 1, 1, 3, 1, 1, 5),
(3, 'no aplica', 'linux mint 17', '11233211233', '123113', '172.16.60.50', '1231211r232', 'qw65e1q65we1', 7, 1, 1, 1, 1, 3, 1, 1, 5),
(4, 'no aplica', 'linux mint 17', '11233211233', '123113', '172.16.60.50', '1231211r232', 'qw65e1q65we1', 7, 1, 1, 1, 1, 3, 1, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitor`
--

CREATE TABLE IF NOT EXISTS `monitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `modelo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `serial` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `monitor`
--

INSERT INTO `monitor` (`id`, `marca`, `modelo`, `serial`) VALUES
(1, 'Lenovo', 'Asd12', 'asd190d12d1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mouse`
--

CREATE TABLE IF NOT EXISTS `mouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `serial` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `mouse`
--

INSERT INTO `mouse` (`id`, `marca`, `serial`) VALUES
(1, 'Genius', '12313212'),
(2, 'Microsoft', '123'),
(3, 'Genius', '123123123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesador`
--

CREATE TABLE IF NOT EXISTS `procesador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `velocidad` double NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `marca` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `procesador`
--

INSERT INTO `procesador` (`id`, `velocidad`, `nombre`, `marca`) VALUES
(4, 3, 'i7 hq', 'Intel'),
(5, 3, 'i5 mq', 'Intel'),
(6, 3.5, 'i7 hq turbo', 'Intel'),
(7, 3, 'Dual Core', 'intel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ram`
--

CREATE TABLE IF NOT EXISTS `ram` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ram`
--

INSERT INTO `ram` (`id`, `cantidad`, `tipo`) VALUES
(1, '4gb', 'ddr2'),
(2, '2gb', 'ddr2'),
(3, '4gb', 'ddr3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE IF NOT EXISTS `sesion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hora_salida` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `sesion`
--

INSERT INTO `sesion` (`id`, `user_id`, `fecha`, `hora_salida`) VALUES
(3, 1, '2015-02-15 18:57:19', '09:57:28'),
(4, 1, '2015-02-15 18:57:57', '09:58:06'),
(5, 1, '2015-02-17 05:46:59', NULL),
(6, 1, '2015-02-17 05:48:49', '21:13:31'),
(7, 1, '2015-02-17 06:13:33', '21:47:00'),
(8, 1, '2015-02-17 07:02:25', '22:02:43'),
(9, 1, '2015-02-17 07:03:09', NULL),
(10, 1, '2015-02-17 07:10:26', NULL),
(11, 1, '2015-03-06 22:22:30', '18:01:14'),
(12, 1, '2015-03-06 22:31:54', '18:01:58'),
(13, 1, '2015-03-06 22:31:59', NULL),
(14, 1, '2015-03-06 22:44:48', '18:15:20'),
(15, 1, '2015-03-06 22:45:23', '18:15:47'),
(16, 1, '2015-03-06 22:46:46', '18:16:50'),
(17, 1, '2015-03-06 22:46:57', '18:17:02'),
(18, 1, '2015-03-06 22:47:04', NULL),
(19, 1, '2015-03-06 22:48:26', '06:29:34'),
(20, 1, '2015-03-07 10:59:37', NULL),
(21, 1, '2015-03-07 15:06:26', NULL),
(22, 1, '2015-03-07 23:31:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetamadre`
--

CREATE TABLE IF NOT EXISTS `tarjetamadre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `serial` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tarjetamadre`
--

INSERT INTO `tarjetamadre` (`id`, `marca`, `serial`) VALUES
(1, 'Intel', '21121f12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teclado`
--

CREATE TABLE IF NOT EXISTS `teclado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `serial` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `teclado`
--

INSERT INTO `teclado` (`id`, `marca`, `serial`) VALUES
(1, 'Genius', '1232d12'),
(2, 'Microsoft', '122131');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `role`) VALUES
(1, 'jaimeirazabal1@gmail.com', '7d3ff5e583a1727c07bd911d427b514b', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariopc`
--

CREATE TABLE IF NOT EXISTS `usuariopc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departamento_id` int(11) NOT NULL,
  `coordinacion_id` int(11) NOT NULL,
  `nombremaquina` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombreusuario` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidousuario` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuariopc`
--

INSERT INTO `usuariopc` (`id`, `departamento_id`, `coordinacion_id`, `nombremaquina`, `nombreusuario`, `apellidousuario`) VALUES
(1, 1, 1, 'no aplica', 'Jaime', 'Irazabal'),
(2, 1, 1, 'no aplica', 'Kevin', 'Landaeta');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
