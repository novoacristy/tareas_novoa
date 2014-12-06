-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:8889
-- Tiempo de generación: 06-12-2014 a las 00:36:41
-- Versión del servidor: 5.5.38
-- Versión de PHP: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `enna`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
`id` int(11) unsigned NOT NULL,
  `img` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `img`, `titulo`) VALUES
(1, 'de_estilo.png', 'DE ESTILO'),
(2, 'edificios.png', 'EDIFICIOS'),
(3, 'fabricas.png', 'FÁBRICAS'),
(4, 'hacienda_mexicana.png', 'HACIENDA MEXICANA'),
(5, 'mex_mod_con.png', 'MEXICANO MODERNO CONTEMPORÁNEO'),
(6, 'mod_con.png', 'MODERNO CONTEMPORÁNEO'),
(7, 'oficinas.png', 'OFICINAS'),
(8, 'publico.png', 'TEMPLOS DE CULTO RELIGIOSO'),
(9, 'templos.png', 'USO PÚBLICO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_virtual`
--

CREATE TABLE `categoria_virtual` (
`id` int(11) unsigned NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT '',
  `titulo` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `categoria_virtual`
--

INSERT INTO `categoria_virtual` (`id`, `img`, `titulo`) VALUES
(1, 'V_1.png', 'MODERNO CONTEMPORANEO'),
(2, 'V_6.png', 'DE_ESTILO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
`id` int(11) NOT NULL,
  `nota` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nota`) VALUES
(1, 'AVISO DE CONFIDENCIALIDAD: Este correo electrónico, incluyendo en su caso, los archivos adjuntos al mismo, pueden contener información de carácter confidencial y/o privilegiada, y se envían a la atención única y exclusivamente de la persona y/o entidad a quien va dirigido. La copia, revisión, uso, revelación y/o distribución de dicha información confidencial sin la autorización por escrito de ENNA ARQUITECTOS  está prohibida. Si Usted no es el destinatario a quien se dirige el presente correo, favor de contactar al remitente respondiendo al presente correo y eliminar el correo original incluyendo sus archivos, así como cualesquiera copia del mismo. Mediante la recepción del presente correo Usted reconoce y acepta que en caso de incumplimiento de su parte y/o de sus representantes a los términos antes mencionados, ENNA ARQUITECTOS tendrá derecho a los daños y perjuicios que esto le cause.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivos`
--

CREATE TABLE `objetivos` (
`id` int(11) unsigned NOT NULL,
  `mision` text,
  `vision` text,
  `objetivo` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `objetivos`
--

INSERT INTO `objetivos` (`id`, `mision`, `vision`, `objetivo`) VALUES
(1, 'Somos un equipo creativo en donde estamos comprometidos con la mejora continua, que se basa en estrategias y planes de acción, dedicados a proveer soluciones con diseño a las necesidades espaciales del cliente, lo que nos permite contar con estándares, actualizados con los cambios constantes de la tecnología en la construcción. Buscamos preservar los medios naturales y nuestro entorno, por lo que compartimos con nuestros clientes diferentes sistemas de tratamientos y reciclaje para sus construcciones.', 'Ser líderes en la arquitectura, desarrollando todo nuestro potencial creativo, con honestidad, excelencia, trabajo en equipo, ser profesionistas responsables y comprometidos con nuestros clientes para obtener un proceso en armonía desde el proyecto hasta que el cliente sea usuario de nuestra obra, superar las expectativas de inicio (proyecto), con el resultado final (la obra).', 'Desempeño creativo, en armonía y en equipo, entrega a nuestro trabajo con amor y pasión, honestidad y responsabilidad, buscar siempre la excelencia, con una mejora continua, comprometidos en buscar las mejores obras a los mejores precios, respeto por nuestro entorno natural, buscar siempre resultados exitosos y acordes con nuestros objetivos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
`id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `img_min` varchar(255) NOT NULL,
  `img_max` varchar(255) NOT NULL,
  `descripcion` text,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `titulo`, `img_min`, `img_max`, `descripcion`, `categoria_id`) VALUES
(6, 'MODERNO CONTEMPORÁNEO', '1.jpg', '1.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(10, 'MODERNO CONTEMPORÁNEO', '2.jpg', '2.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(11, 'MODERNO CONTEMPORÁNEO', '3.jpg', '3.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(12, 'MODERNO CONTEMPORÁNEO', '4.jpg', '4.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(13, 'MODERNO CONTEMPORÁNEO', '5.jpg', '5.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(14, 'MODERNO CONTEMPORÁNEO', '6.jpg', '6.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(15, 'MODERNO CONTEMPORÁNEO', '7.jpg', '7.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(16, 'MODERNO CONTEMPORÁNEO', '8.jpg', '8.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(17, 'MODERNO CONTEMPORÁNEO', '9.jpg', '9.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(18, 'MODERNO CONTEMPORÁNEO', '10.jpg', '10.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(19, 'MODERNO CONTEMPORÁNEO', '11.jpg', '11.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(20, 'MODERNO CONTEMPORÁNEO', '12.jpg', '12.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(21, 'OFICINAS', 'ACCESO CORREGIDO.jpg', 'ACCESO CORREGIDO.jpg', NULL, 7),
(22, 'OFICINAS', 'Diapositiva1.JPG', 'Diapositiva1.JPG', NULL, 7),
(23, 'OFICINAS', 'Diapositiva2.JPG', 'Diapositiva2.JPG', NULL, 7),
(24, 'OFICINAS', 'IMAGEN LOBBY.JPG', 'IMAGEN LOBBY.JPG', NULL, 7),
(25, 'OFICINAS', 'JAGUAR_001.JPG', 'JAGUAR_001.JPG', NULL, 7),
(26, 'OFICINAS', 'JAGUAR_004.JPG', 'JAGUAR_004.JPG', NULL, 7),
(27, 'DE ESTILO', 'SEGUEDO.JPG', 'SEGUEDO.JPG', NULL, 1),
(28, 'EDIFICIOS', 'CAMP_001.JPG', 'CAMP_001.JPG', NULL, 2),
(29, 'EDIFICIOS', 'CEBADINAS_002.JPG', 'CEBADINAS_002.JPG', NULL, 2),
(30, 'EDIFICIOS', 'DEPARTAMENTOS_1_MODIFICADO.JPG', 'DEPARTAMENTOS_1_MODIFICADO.JPG', NULL, 2),
(31, 'EDIFICIOS', 'IMG_0025.JPG', 'IMG_0025.JPG', NULL, 2),
(32, 'EDIFICIOS', 'IMG_0028.JPG', 'IMG_0028.JPG', NULL, 2),
(33, 'EDIFICIOS', 'LOFTS_002_MODIFICADO.JPG', 'LOFTS_002_MODIFICADO.JPG', NULL, 2),
(34, 'FÁBRICAS', 'JAGUAR_003.JPG', 'JAGUAR_003.JPG', NULL, 3),
(35, 'FÁBRICAS', 'VISTA ANN O BRIAN.jpg', 'VISTA ANN O BRIAN.jpg', NULL, 3),
(36, 'HACIENDA MEXICANA', '100_4977.JPG', '100_4977.JPG', NULL, 4),
(37, 'HACIENDA MEXICANA', '100_4991.JPG', '100_4991.JPG', NULL, 4),
(38, 'HACIENDA MEXICANA', '100_4992.JPG', '100_4992.JPG', NULL, 4),
(39, 'HACIENDA MEXICANA', '100_4993.JPG', '100_4993.JPG', NULL, 4),
(40, 'HACIENDA MEXICANA', '100_4994.JPG', '100_4994.JPG', NULL, 4),
(41, 'HACIENDA MEXICANA', '100_4995.JPG', '100_4995.JPG', NULL, 4),
(42, 'MEXICO MODERNO CONTEMPORÁNEO', 'Imagen45.jpg', 'Imagen45.jpg', NULL, 5),
(43, 'MEXICO MODERNO CONTEMPORÁNEO', 'Imagen53.jpg', 'Imagen53.jpg', NULL, 5),
(44, 'MEXICO MODERNO CONTEMPORÁNEO', 'Imagen90.jpg', 'Imagen90.jpg', NULL, 5),
(45, 'MEXICO MODERNO CONTEMPORÁNEO', 'Imagen141.jpg', 'Imagen141.jpg', NULL, 5),
(46, 'MEXICO MODERNO CONTEMPORÁNEO', 'Perspectiva de Sala.3.JPG', 'Perspectiva de Sala.3.JPG', NULL, 5),
(47, 'MEXICO MODERNO CONTEMPORÁNEO', '252.jpg', '252.jpg', NULL, 5),
(48, 'TEMPLOS DE CULTO RELIGIOSO', 'A5.JPG', 'A5.JPG', NULL, 8),
(49, 'TEMPLOS DE CULTO RELIGIOSO', 'A6.JPG', 'A6.JPG', NULL, 8),
(50, 'TEMPLOS DE CULTO RELIGIOSO', 'A7.JPG', 'A7.JPG', NULL, 8),
(51, 'TEMPLOS DE CULTO RELIGIOSO', 'A8.JPG', 'A8.JPG', NULL, 8),
(52, 'TEMPLOS DE CULTO RELIGIOSO', 'A9.JPG', 'A9.JPG', NULL, 8),
(53, 'TEMPLOS DE CULTO RELIGIOSO', 'templo.jpg', 'templo.jpg', NULL, 8),
(54, 'USO PÚBLICO', 'ALBERCA_001.JPG', 'ALBERCA_001.JPG', NULL, 9),
(55, 'USO PÚBLICO', 'ALBERCA_002.JPG', 'ALBERCA_002.JPG', NULL, 9),
(56, 'USO PÚBLICO', 'ALBERCA_003.JPG', 'ALBERCA_003.JPG', NULL, 9),
(57, 'USO PÚBLICO', 'CABAÑA.JPG', 'CABAÑA.JPG', NULL, 9),
(58, 'USO PÚBLICO', 'ESCUELA NATACION 2.jpg', 'ESCUELA NATACION 2.jpg', NULL, 9),
(59, 'USO PÚBLICO', 'ESCUELA NATACION.jpg', 'ESCUELA NATACION.jpg', NULL, 9),
(60, 'DE ESTILO', 'SEGUEDO.JPG', 'SEGUEDO.JPG', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectosdos`
--

CREATE TABLE `proyectosdos` (
`id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `img_min` varchar(255) NOT NULL,
  `img_max` varchar(255) NOT NULL,
  `descripcion` text,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Volcado de datos para la tabla `proyectosdos`
--

INSERT INTO `proyectosdos` (`id`, `titulo`, `img_min`, `img_max`, `descripcion`, `categoria_id`) VALUES
(6, 'MODERNO CONTEMPORÁNEO', '1.jpg', '1.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(10, 'MODERNO CONTEMPORÁNEO', '2.jpg', '2.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(11, 'MODERNO CONTEMPORÁNEO', '3.jpg', '3.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(12, 'MODERNO CONTEMPORÁNEO', '4.jpg', '4.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(13, 'MODERNO CONTEMPORÁNEO', '5.jpg', '5.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(14, 'MODERNO CONTEMPORÁNEO', '6.jpg', '6.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(15, 'MODERNO CONTEMPORÁNEO', '7.jpg', '7.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(16, 'MODERNO CONTEMPORÁNEO', '8.jpg', '8.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(17, 'MODERNO CONTEMPORÁNEO', '9.jpg', '9.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(18, 'MODERNO CONTEMPORÁNEO', '10.jpg', '10.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(19, 'MODERNO CONTEMPORÁNEO', '11.jpg', '11.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(20, 'MODERNO CONTEMPORÁNEO', '12.jpg', '12.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 6),
(21, 'OFICINAS', 'ACCESO CORREGIDO.jpg', 'ACCESO CORREGIDO.jpg', NULL, 7),
(22, 'OFICINAS', 'Diapositiva1.JPG', 'Diapositiva1.JPG', NULL, 7),
(23, 'OFICINAS', 'Diapositiva2.JPG', 'Diapositiva2.JPG', NULL, 7),
(24, 'OFICINAS', 'IMAGEN LOBBY.JPG', 'IMAGEN LOBBY.JPG', NULL, 7),
(25, 'OFICINAS', 'JAGUAR_001.JPG', 'JAGUAR_001.JPG', NULL, 7),
(26, 'OFICINAS', 'JAGUAR_004.JPG', 'JAGUAR_004.JPG', NULL, 7),
(27, 'DE ESTILO', 'SEGUEDO.JPG', 'SEGUEDO.JPG', NULL, 1),
(28, 'EDIFICIOS', 'CAMP_001.JPG', 'CAMP_001.JPG', NULL, 2),
(29, 'EDIFICIOS', 'CEBADINAS_002.JPG', 'CEBADINAS_002.JPG', NULL, 2),
(30, 'EDIFICIOS', 'DEPARTAMENTOS_1_MODIFICADO.JPG', 'DEPARTAMENTOS_1_MODIFICADO.JPG', NULL, 2),
(31, 'EDIFICIOS', 'IMG_0025.JPG', 'IMG_0025.JPG', NULL, 2),
(32, 'EDIFICIOS', 'IMG_0028.JPG', 'IMG_0028.JPG', NULL, 2),
(33, 'EDIFICIOS', 'LOFTS_002_MODIFICADO.JPG', 'LOFTS_002_MODIFICADO.JPG', NULL, 2),
(34, 'FÁBRICAS', 'JAGUAR_003.JPG', 'JAGUAR_003.JPG', NULL, 3),
(35, 'FÁBRICAS', 'VISTA ANN O BRIAN.jpg', 'VISTA ANN O BRIAN.jpg', NULL, 3),
(36, 'HACIENDA MEXICANA', '100_4977.JPG', '100_4977.JPG', NULL, 4),
(37, 'HACIENDA MEXICANA', '100_4991.JPG', '100_4991.JPG', NULL, 4),
(38, 'HACIENDA MEXICANA', '100_4992.JPG', '100_4992.JPG', NULL, 4),
(39, 'HACIENDA MEXICANA', '100_4993.JPG', '100_4993.JPG', NULL, 4),
(40, 'HACIENDA MEXICANA', '100_4994.JPG', '100_4994.JPG', NULL, 4),
(41, 'HACIENDA MEXICANA', '100_4995.JPG', '100_4995.JPG', NULL, 4),
(42, 'MEXICO MODERNO CONTEMPORÁNEO', 'Imagen45.jpg', 'Imagen45.jpg', NULL, 5),
(43, 'MEXICO MODERNO CONTEMPORÁNEO', 'Imagen53.jpg', 'Imagen53.jpg', NULL, 5),
(44, 'MEXICO MODERNO CONTEMPORÁNEO', 'Imagen90.jpg', 'Imagen90.jpg', NULL, 5),
(45, 'MEXICO MODERNO CONTEMPORÁNEO', 'Imagen141.jpg', 'Imagen141.jpg', NULL, 5),
(46, 'MEXICO MODERNO CONTEMPORÁNEO', 'Perspectiva de Sala.3.JPG', 'Perspectiva de Sala.3.JPG', NULL, 5),
(47, 'MEXICO MODERNO CONTEMPORÁNEO', '252.jpg', '252.jpg', NULL, 5),
(48, 'TEMPLOS DE CULTO RELIGIOSO', 'A5.JPG', 'A5.JPG', NULL, 8),
(49, 'TEMPLOS DE CULTO RELIGIOSO', 'A6.JPG', 'A6.JPG', NULL, 8),
(50, 'TEMPLOS DE CULTO RELIGIOSO', 'A7.JPG', 'A7.JPG', NULL, 8),
(51, 'TEMPLOS DE CULTO RELIGIOSO', 'A8.JPG', 'A8.JPG', NULL, 8),
(52, 'TEMPLOS DE CULTO RELIGIOSO', 'A9.JPG', 'A9.JPG', NULL, 8),
(53, 'TEMPLOS DE CULTO RELIGIOSO', 'templo.jpg', 'templo.jpg', NULL, 8),
(54, 'USO PÚBLICO', 'ALBERCA_001.JPG', 'ALBERCA_001.JPG', NULL, 9),
(55, 'USO PÚBLICO', 'ALBERCA_002.JPG', 'ALBERCA_002.JPG', NULL, 9),
(56, 'USO PÚBLICO', 'ALBERCA_003.JPG', 'ALBERCA_003.JPG', NULL, 9),
(57, 'USO PÚBLICO', 'CABAÑA.JPG', 'CABAÑA.JPG', NULL, 9),
(58, 'USO PÚBLICO', 'ESCUELA NATACION 2.jpg', 'ESCUELA NATACION 2.jpg', NULL, 9),
(59, 'USO PÚBLICO', 'ESCUELA NATACION.jpg', 'ESCUELA NATACION.jpg', NULL, 9),
(60, 'DE ESTILO', 'SEGUEDO.JPG', 'SEGUEDO.JPG', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recorrido_virtual`
--

CREATE TABLE `recorrido_virtual` (
`id` int(11) unsigned NOT NULL,
  `titulo` varchar(255) NOT NULL DEFAULT '',
  `descripcion` text,
  `img_min` varchar(255) NOT NULL DEFAULT '',
  `video` varchar(255) NOT NULL DEFAULT '',
  `categoriavir_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `recorrido_virtual`
--

INSERT INTO `recorrido_virtual` (`id`, `titulo`, `descripcion`, `img_min`, `video`, `categoriavir_id`) VALUES
(1, 'Recorrido Virtual', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor.', 'V_1.JPG', 'V_1.JPG', 1),
(2, 'Recorrido Virtual', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor.', 'V_2.JPG', 'V_2.JPG', 1),
(3, 'Recorrido Virtual', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor.', 'V_3.JPG', 'V_3.JPG', 1),
(4, 'Recorrido Virtual', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor.', 'V_4.JPG', 'V_4.JPG', 2),
(5, 'Recorrido Virtual', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor.', 'V_5.JPG', 'V_5.JPG', 2),
(6, 'Recorrido Virtual', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor.', 'V_6.JPG', 'V_6.JPG', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recorrido_virtual2`
--

CREATE TABLE `recorrido_virtual2` (
`id` int(11) unsigned NOT NULL,
  `titulo` varchar(11) NOT NULL DEFAULT '',
  `descripcion` text,
  `img_min` varchar(11) NOT NULL DEFAULT '',
  `video` varchar(11) NOT NULL DEFAULT '',
  `categoriavir_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `recorrido_virtual2`
--

INSERT INTO `recorrido_virtual2` (`id`, `titulo`, `descripcion`, `img_min`, `video`, `categoriavir_id`) VALUES
(1, 'Recorrido V', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor.', 'V_1.JPG', 'V_1.JPG', 1),
(2, 'Recorrido V', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor.', 'V_2.JPG', 'V_2.JPG', 1),
(3, 'Recorrido V', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor.', 'V_3.JPG', 'V_3.JPG', 1),
(4, 'Recorrido V', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor.', 'V_4.JPG', 'V_4.JPG', 2),
(5, 'Recorrido V', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor.', 'V_5.JPG', 'V_5.JPG', 2),
(6, 'Recorrido V', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor.', 'V_6.JPG', 'V_6.JPG', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria_virtual`
--
ALTER TABLE `categoria_virtual`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `objetivos`
--
ALTER TABLE `objetivos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectosdos`
--
ALTER TABLE `proyectosdos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recorrido_virtual`
--
ALTER TABLE `recorrido_virtual`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recorrido_virtual2`
--
ALTER TABLE `recorrido_virtual2`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `categoria_virtual`
--
ALTER TABLE `categoria_virtual`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `objetivos`
--
ALTER TABLE `objetivos`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT de la tabla `proyectosdos`
--
ALTER TABLE `proyectosdos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT de la tabla `recorrido_virtual`
--
ALTER TABLE `recorrido_virtual`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `recorrido_virtual2`
--
ALTER TABLE `recorrido_virtual2`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;