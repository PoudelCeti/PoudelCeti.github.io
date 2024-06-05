-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2024 a las 02:49:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripción` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `Nombre`, `Descripción`) VALUES
(1, 'Peso Pluma', 'Nacido y criado en Guadalajara, México, Peso Pluma está allanando el camino para la próxima generación de artistas mexicanos. El joven prometedor se ha hecho un nombre por su estilo y autenticidad incomparables. Inspirándose en una variedad de géneros musicales que incluyen el regional mexicano y el'),
(2, 'Junior H', 'Junior H es uno de los líderes del movimiento corridos tumbados (también conocido como \"trap corridos\") del siglo XXI y aparece regularmente en las listas de reproducción más importantes del género United States Viral 50, Exitos USA, Mexico Viral 50, Corridos Perrones y muchos más. más. Es un distin'),
(4, 'Avicii', 'Con sus canciones melódicas y letras inspiradoras, el productor sueco Avicii fue uno de los artistas definitorios del pop moderno. Las pistas que cambian de género cautivaron al público de todo el mundo y son ampliamente consideradas la banda sonora de una generación. Nacido en 1989 en Estocolmo, Ti'),
(5, 'Ariel Camacho y Los Plebes Del Rancho', 'JOSÉ ARIEL CAMACHO BARRAZA, mejor conocido como Ariel Camacho, un joven cantautor, nació el 8 de julio de 1991 en Guasave, Sinaloa, México. Una leyenda de la música campirana, quien falleció el miércoles 25 de febrero del 2015, a la edad de 22 años. Desde muy pequeño le gustaba cantar, demostrando s'),
(6, 'The Beatles', 'Los Beatles grabaron juntos durante poco más de siete años. Entre octubre de 1962 y mayo de 1970, lanzaron trece álbumes y varias pistas publicadas en sencillos independientes. El catálogo creado en ese corto período ha vendido más que el de cualquier otro grupo en la historia y su éxito comercial c'),
(7, 'Jung Kook', 'Jung Kook (Jeon, Jeongguk) es un cantante, compositor y miembro de los íconos del pop del siglo XXI, BTS. Haciendo honor a la reputación universal del grupo, Jung Kook es conocido como un \"todoterreno\" por su versatilidad en la voz, el rap y la interpretación. Además de los trabajos grupales de BTS,'),
(8, 'Katy Perry', 'En sus 12 años con Capitol, Katy ha acumulado 50 mil millones de reproducciones acumuladas junto con ventas mundiales de más de 47,5 millones de álbumes ajustados y 135 millones de pistas. Con los sencillos “Roar”, “Firework” y “Dark Horse” superando cada uno el umbral de los 10 millones, incluidas '),
(9, 'Sade', 'Desde su debut con el éxito Top Ten del Reino Unido \"Your Love Is King\" (1984), Sade ha seguido siendo, durante las cuatro décadas siguientes de actividad intermitente, astutos sintetistas del jazz clásico, el R&B de vanguardia y el pop maduro. Aunque son más conocidos por sus baladas elegantemente '),
(10, 'Plan B', 'Plan B es un dúo de música urbana compuesto por los primos Orlando Valle (Chencho) y Edwin Vázquez (Maldy).Comenzaron su carrera en el año 2000 con el sencillo titulado “Plan B” , el cual los bautizo como nombre oficial del duo. En el 2010, el también conocido “Dúo del Sex” se unió al sello disquero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `Artista_id` int(11) NOT NULL,
  `Canción_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Genero_id` int(11) NOT NULL,
  `Duración` time NOT NULL,
  `Fecha` date NOT NULL,
  `Activo` tinyint(1) NOT NULL,
  `Foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `Usuarios_id` int(11) NOT NULL,
  `Canción_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `Nombre`) VALUES
(1, 'Corridos Tumbados'),
(2, 'Banda'),
(3, 'Rock'),
(4, 'K-Pop'),
(5, 'Electronica'),
(6, 'Pop'),
(7, 'Soul'),
(8, 'Reggaeton');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `Descripción` varchar(100) NOT NULL,
  `Precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `Descripción`, `Precio`) VALUES
(1, 'Free', 0),
(2, 'Individual', 0),
(3, 'Familiar', 0),
(4, 'Duo', 0),
(6, 'Estudiante', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Duración` time NOT NULL,
  `Total_canciones` int(11) NOT NULL,
  `Descripción` varchar(200) NOT NULL,
  `Publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `Playlist_id` int(11) NOT NULL,
  `Canción_id` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(150) NOT NULL,
  `Membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `Nombre`, `Correo`, `Membresia_id`) VALUES
(1, 'Ángel Santiago Pou Mápula', 'angelsantiagopou@gmail.com', 2),
(2, 'Ekain Israel Cervera Rodriguez', 'masturbin69@gmail.com', 1),
(3, 'Andrea Salas Beltran', 'locajojos@gmail.com', 3),
(4, 'Marco Antonio Guerrero Valle', 'lethalcompany@gmail.com', 6),
(5, 'Marco Uriel Aguiluz Ibarra', 'ganadordemilbatallas@gmail.com', 4),
(6, 'Diego Ángel Chávez Guerra', 'niñodelbalon@gmail.com', 1),
(7, 'Larissa Benjarano Félix', 'larissa34@gmail.com', 4),
(8, 'Jaime Fernando Hernandez Mendoza ', 'jaimemendoza@gmail.com', 2),
(9, 'Juan Fernando Gastelum Quintero ', 'goldowarzone@gmail.com', 1),
(10, 'Alejandro Aguilar de la Herran ', 'aguilarherran@gmail.com', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `INDEX` (`Artista_id`),
  ADD KEY `INDEX1` (`Canción_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `INDEX` (`Genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `INDEX` (`Usuarios_id`),
  ADD KEY `INDEX1` (`Canción_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `INDEX` (`Usuario_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `INDEX` (`Playlist_id`),
  ADD KEY `INDEX1` (`Canción_id`),
  ADD KEY `INDEX2` (`Usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `INDEX` (`Membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`Artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`Canción_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`Genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`Usuarios_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`Canción_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`Usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`Playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`Canción_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`Usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
