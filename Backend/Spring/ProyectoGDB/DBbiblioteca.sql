-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2022 a las 04:09:01
-- Versión del servidor: 8.0.26
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorialibro`
--

CREATE TABLE `categorialibro` (
  `id_CategoriaLibro` int NOT NULL,
  `CategoriaLibro` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `categorialibro`
--

INSERT INTO `categorialibro` (`id_CategoriaLibro`, `CategoriaLibro`) VALUES
(1, 'Técnico'),
(2, 'Historia'),
(3, 'Novela'),
(4, 'Esoterismo'),
(5, 'Cocina'),
(6, 'Historieta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `copia`
--

CREATE TABLE `copia` (
  `id_copia` int NOT NULL,
  `estado_copia` varchar(50) NOT NULL,
  `cantidad_copia` varchar(45) DEFAULT NULL,
  `ISBN` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `copia`
--

INSERT INTO `copia` (`id_copia`, `estado_copia`, `cantidad_copia`, `ISBN`) VALUES
(1, 'disponible', '3', '9780136083221');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formatolibro`
--

CREATE TABLE `formatolibro` (
  `id_FormatoLibro` int NOT NULL,
  `FormatoLibro` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `formatolibro`
--

INSERT INTO `formatolibro` (`id_FormatoLibro`, `FormatoLibro`) VALUES
(1, 'físico'),
(2, 'virtual'),
(3, 'audiolibro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `ISBN` varchar(20) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `editorial` varchar(100) DEFAULT NULL,
  `id_CategoriaLibro` int DEFAULT NULL,
  `id_FormatoLibro` int DEFAULT NULL,
  `imagen_libro` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`ISBN`, `titulo`, `autor`, `fecha_publicacion`, `editorial`, `id_CategoriaLibro`, `id_FormatoLibro`, `imagen_libro`) VALUES
('9780136083221', 'Clean Code', 'Robert C. Martin', '2004-03-01', 'Prentige Hall', 1, 2, NULL),
('9781548217853', 'Java para novatos', ' A. M. Vozmediano', '2009-09-01', 'Prentige Hall', 1, 2, NULL),
('9789879085264', 'El Eternauta', 'H.G.Oesterheld y Solano Lopez', '2004-04-01', 'DOEDYTORES', 5, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `nro_prestamo` int NOT NULL,
  `id_copia` int DEFAULT NULL,
  `fecha_prestamo` date NOT NULL,
  `tarifa_asociada` varchar(45) DEFAULT NULL,
  `fecha_devolucion` date NOT NULL,
  `fecha_renovacion` date DEFAULT NULL,
  `id_cliente` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `nro_reserva` int NOT NULL,
  `fecha_reserva` date NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_copia` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id_tipoUsuario` int NOT NULL,
  `tipoUsuario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id_tipoUsuario`, `tipoUsuario`) VALUES
(1, 'Cliente'),
(2, 'Bibliotecario'),
(3, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `DNI` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(10) NOT NULL,
  `telefono` int DEFAULT NULL,
  `domicilio` varchar(200) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_TipoUsuario` int DEFAULT NULL,
  `id_tipo_usuario` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`DNI`, `nombre`, `apellido`, `email`, `password`, `telefono`, `domicilio`, `fecha_nacimiento`, `id_TipoUsuario`, `id_tipo_usuario`) VALUES
(20222111, 'Mercedes', 'Diaz', 'mercedes@gmail.com', '12345678', 351515151, 'Mi casa 1588', '1978-02-15', 1, 1),
(26000111, 'Julia', 'Sanchez', 'juli@gmail.com', '12345678', 351312121, 'Calle Publica 1555', '1980-01-22', 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorialibro`
--
ALTER TABLE `categorialibro`
  ADD PRIMARY KEY (`id_CategoriaLibro`);

--
-- Indices de la tabla `copia`
--
ALTER TABLE `copia`
  ADD PRIMARY KEY (`id_copia`),
  ADD KEY `ISBN_idx` (`ISBN`);

--
-- Indices de la tabla `formatolibro`
--
ALTER TABLE `formatolibro`
  ADD PRIMARY KEY (`id_FormatoLibro`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `id_CategoriaLibro` (`id_CategoriaLibro`),
  ADD KEY `id_FormatoLibro` (`id_FormatoLibro`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`nro_prestamo`),
  ADD KEY `id_copia_idx` (`id_copia`),
  ADD KEY `id_cliente_idx` (`id_cliente`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`nro_reserva`),
  ADD KEY `id_cliente_idx` (`id_cliente`),
  ADD KEY `id_copia_reserva_idx` (`id_copia`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id_tipoUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`DNI`),
  ADD KEY `id_TipoUsuario` (`id_TipoUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorialibro`
--
ALTER TABLE `categorialibro`
  MODIFY `id_CategoriaLibro` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `copia`
--
ALTER TABLE `copia`
  MODIFY `id_copia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `formatolibro`
--
ALTER TABLE `formatolibro`
  MODIFY `id_FormatoLibro` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `nro_prestamo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `nro_reserva` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id_tipoUsuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `copia`
--
ALTER TABLE `copia`
  ADD CONSTRAINT `ISBN` FOREIGN KEY (`ISBN`) REFERENCES `libros` (`ISBN`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `id_CategoriaLibro` FOREIGN KEY (`id_CategoriaLibro`) REFERENCES `categorialibro` (`id_CategoriaLibro`),
  ADD CONSTRAINT `id_FormatoLibro` FOREIGN KEY (`id_FormatoLibro`) REFERENCES `formatolibro` (`id_FormatoLibro`);

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `id_copia` FOREIGN KEY (`id_copia`) REFERENCES `copia` (`id_copia`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `id_cliente_reserva` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `id_copia_reserva` FOREIGN KEY (`id_copia`) REFERENCES `copia` (`id_copia`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `id_TipoUsuario` FOREIGN KEY (`id_TipoUsuario`) REFERENCES `tipousuario` (`id_tipoUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
