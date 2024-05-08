-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2024 a las 02:05:49
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_juegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `precio` float NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id`, `nombre`, `categoria`, `precio`, `fecha`) VALUES
(1, 'Minecraft', 'Sandbox', 29.99, '2011-11-18'),
(2, 'Grand Theft Auto V', 'Aventura', 29.99, '2013-09-17'),
(3, 'Tetris', 'Puzzle', 4.99, '1984-06-06'),
(4, 'Wii Sports', 'Deportes', 19.99, '2006-11-19'),
(5, 'PUBG', 'Battle Royale', 29.99, '2017-12-20'),
(6, 'Super Mario Bros', 'Acción', 9.99, '1985-09-13'),
(7, 'Mario Kart 8 Deluxe', 'Carreras', 59.99, '2017-04-28'),
(8, 'Red Dead Redemption 2', 'Aventura', 59.99, '2018-10-26'),
(9, 'Pokemon Primera Generacion', 'Rol', 29.99, '1996-02-27'),
(10, 'Terraria', 'Sandbox', 14.99, '2011-05-16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD CONSTRAINT `juegos_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
