-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2023 a las 17:18:38
-- Versión del servidor: 10.4.22-MariaDB-log
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `admbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacios`
--

CREATE TABLE `espacios` (
  `id_espacio` int(11) NOT NULL,
  `key_sede` int(11) NOT NULL,
  `key_ubicaciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `id_especialidad` int(11) NOT NULL,
  `especialidad` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_horario` int(11) NOT NULL,
  `key_materia` int(11) NOT NULL,
  `key_espacios` int(11) NOT NULL,
  `key_profesor` int(11) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL,
  `cod_materia` varchar(10) NOT NULL,
  `key_trayecto` int(11) NOT NULL,
  `key_maya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_profesor`
--

CREATE TABLE `materia_profesor` (
  `id_materia_profesor` int(11) NOT NULL,
  `key_profesor` int(11) NOT NULL,
  `key_materia` int(11) NOT NULL,
  `key_periodo_academico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maya_curricular`
--

CREATE TABLE `maya_curricular` (
  `id_maya` int(11) NOT NULL,
  `maya_curricular` varchar(100) NOT NULL,
  `fech_creacion` datetime NOT NULL DEFAULT current_timestamp(),
  `key_pnf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maya_curricular`
--

INSERT INTO `maya_curricular` (`id_maya`, `maya_curricular`, `fech_creacion`, `key_pnf`) VALUES
(1, '0', '2023-06-25 09:16:31', 1),
(2, '1', '2023-06-25 09:16:31', 1),
(3, '0', '2023-06-25 09:16:31', 2),
(4, '1', '2023-06-25 09:16:31', 2),
(5, '0', '2023-06-25 09:16:31', 3),
(6, '1', '2023-06-25 09:16:31', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo_academico`
--

CREATE TABLE `periodo_academico` (
  `id_periodo_academico` int(11) NOT NULL,
  `periodo_academico` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pnf`
--

CREATE TABLE `pnf` (
  `id_pnf` int(11) NOT NULL,
  `pnf` varchar(255) NOT NULL,
  `desc_pnf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pnf`
--

INSERT INTO `pnf` (`id_pnf`, `pnf`, `desc_pnf`) VALUES
(1, 'PNF Administración', 'Es un profesional que debe desempeñarse en tareas propias de la administración en el área contable y de costos industriales.'),
(2, 'PNF Agroalimentación', 'Es un profesional que debe desempeñarse en tareas propias de la Agroalimentación.'),
(3, 'PNF Contaduría Pública', 'Es un profesional que debe desempeñarse en tareas propias de la Contaduría Pública.'),
(4, 'PNF Electricidad', 'Es un profesional que debe desempeñarse en tareas propias de la Electricidad.'),
(5, 'PNF Electrónica', 'Es un profesional que debe desempeñarse en tareas propias de la Electrónica.'),
(6, 'PNF Informática', 'Es un profesional que debe desempeñarse en tareas propias de la Informática.'),
(7, 'PNF Instrumentación y Control', 'Es un profesional que debe desempeñarse en tareas propias de la Instrumentación y Control.'),
(8, 'PNF Mantenimiento', 'Es un profesional que debe desempeñarse en tareas propias del Mantenimiento.'),
(9, 'PNF Mecánica', 'Es un profesional que debe desempeñarse en tareas propias de la Mecánica.'),
(10, 'PNF Sistemas de Calidad y Ambiente', 'Es un profesional que debe desempeñarse en tareas propias de Sistemas de Calidad y Ambiente.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id_profesor` int(11) NOT NULL,
  `key_titulo` int(11) NOT NULL,
  `key_especialidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `id_sede` int(11) NOT NULL,
  `sede` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulo_grado`
--

CREATE TABLE `titulo_grado` (
  `id_titulo_grado` int(11) NOT NULL,
  `titulo_grado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trayecto`
--

CREATE TABLE `trayecto` (
  `id_trayecto` int(11) NOT NULL,
  `trayecto` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trayecto`
--

INSERT INTO `trayecto` (`id_trayecto`, `trayecto`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III'),
(4, 'IV'),
(5, 'V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicaciones`
--

CREATE TABLE `ubicaciones` (
  `id_ubicaciones` int(11) NOT NULL,
  `ubicaciones` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `key_sede` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `espacios`
--
ALTER TABLE `espacios`
  ADD PRIMARY KEY (`id_espacio`),
  ADD KEY `key_sede` (`key_sede`),
  ADD KEY `key_ubicaciones` (`key_ubicaciones`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`id_especialidad`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_horario`),
  ADD KEY `key_materia` (`key_materia`),
  ADD KEY `key_espacios` (`key_espacios`),
  ADD KEY `key_profesor` (`key_profesor`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `key_trayecto` (`key_trayecto`),
  ADD KEY `key_maya` (`key_maya`);

--
-- Indices de la tabla `materia_profesor`
--
ALTER TABLE `materia_profesor`
  ADD PRIMARY KEY (`id_materia_profesor`),
  ADD KEY `key_profesor` (`key_profesor`),
  ADD KEY `key_materia` (`key_materia`),
  ADD KEY `key_periodo_academico` (`key_periodo_academico`);

--
-- Indices de la tabla `maya_curricular`
--
ALTER TABLE `maya_curricular`
  ADD PRIMARY KEY (`id_maya`),
  ADD KEY `key_pnf` (`key_pnf`);

--
-- Indices de la tabla `periodo_academico`
--
ALTER TABLE `periodo_academico`
  ADD PRIMARY KEY (`id_periodo_academico`);

--
-- Indices de la tabla `pnf`
--
ALTER TABLE `pnf`
  ADD PRIMARY KEY (`id_pnf`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id_profesor`),
  ADD KEY `key_titulo` (`key_titulo`),
  ADD KEY `key_especialidad` (`key_especialidad`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`id_sede`);

--
-- Indices de la tabla `titulo_grado`
--
ALTER TABLE `titulo_grado`
  ADD PRIMARY KEY (`id_titulo_grado`);

--
-- Indices de la tabla `trayecto`
--
ALTER TABLE `trayecto`
  ADD PRIMARY KEY (`id_trayecto`);

--
-- Indices de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  ADD PRIMARY KEY (`id_ubicaciones`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `key_sede` (`key_sede`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `espacios`
--
ALTER TABLE `espacios`
  MODIFY `id_espacio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `id_especialidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materia_profesor`
--
ALTER TABLE `materia_profesor`
  MODIFY `id_materia_profesor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `maya_curricular`
--
ALTER TABLE `maya_curricular`
  MODIFY `id_maya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `periodo_academico`
--
ALTER TABLE `periodo_academico`
  MODIFY `id_periodo_academico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pnf`
--
ALTER TABLE `pnf`
  MODIFY `id_pnf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `titulo_grado`
--
ALTER TABLE `titulo_grado`
  MODIFY `id_titulo_grado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trayecto`
--
ALTER TABLE `trayecto`
  MODIFY `id_trayecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  MODIFY `id_ubicaciones` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `espacios`
--
ALTER TABLE `espacios`
  ADD CONSTRAINT `espacios_ibfk_1` FOREIGN KEY (`key_sede`) REFERENCES `sede` (`id_sede`),
  ADD CONSTRAINT `espacios_ibfk_2` FOREIGN KEY (`key_ubicaciones`) REFERENCES `ubicaciones` (`id_ubicaciones`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`key_materia`) REFERENCES `materias` (`id_materia`),
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`key_espacios`) REFERENCES `espacios` (`id_espacio`),
  ADD CONSTRAINT `horario_ibfk_3` FOREIGN KEY (`key_profesor`) REFERENCES `profesores` (`id_profesor`);

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`key_trayecto`) REFERENCES `trayecto` (`id_trayecto`),
  ADD CONSTRAINT `materias_ibfk_2` FOREIGN KEY (`key_maya`) REFERENCES `maya_curricular` (`id_maya`);

--
-- Filtros para la tabla `materia_profesor`
--
ALTER TABLE `materia_profesor`
  ADD CONSTRAINT `materia_profesor_ibfk_1` FOREIGN KEY (`key_profesor`) REFERENCES `profesores` (`id_profesor`),
  ADD CONSTRAINT `materia_profesor_ibfk_2` FOREIGN KEY (`key_materia`) REFERENCES `materias` (`id_materia`),
  ADD CONSTRAINT `materia_profesor_ibfk_3` FOREIGN KEY (`key_periodo_academico`) REFERENCES `periodo_academico` (`id_periodo_academico`);

--
-- Filtros para la tabla `maya_curricular`
--
ALTER TABLE `maya_curricular`
  ADD CONSTRAINT `maya_curricular_ibfk_1` FOREIGN KEY (`key_pnf`) REFERENCES `pnf` (`id_pnf`);

--
-- Filtros para la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD CONSTRAINT `profesores_ibfk_1` FOREIGN KEY (`key_titulo`) REFERENCES `titulo_grado` (`id_titulo_grado`),
  ADD CONSTRAINT `profesores_ibfk_2` FOREIGN KEY (`key_especialidad`) REFERENCES `especialidad` (`id_especialidad`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`key_sede`) REFERENCES `sede` (`id_sede`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
