-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2024 a las 21:35:07
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
-- Base de datos: `passport`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendas`
--

CREATE TABLE `agendas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `place_id` bigint(20) UNSIGNED NOT NULL,
  `stand_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `classifications`
--

CREATE TABLE `classifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `classifications`
--

INSERT INTO `classifications` (`id`, `name`) VALUES
(1, 'Moda Sostenible'),
(2, 'Proyectos ITO'),
(3, 'Gastronomía'),
(4, 'Construcción'),
(5, 'Biotecnología - Bioeconomía'),
(6, 'Agroindustria'),
(7, 'Otras'),
(8, 'Economía Popular');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterios`
--

CREATE TABLE `criterios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `criterios`
--

INSERT INTO `criterios` (`id`, `name`, `description`) VALUES
(1, '[Atencion]', '[Atencion de la persona encargada]'),
(2, 'calidad', 'calidad del producto'),
(4, 'Impacto Visual', 'De acuerdo'),
(5, 'ssss', 'asds'),
(6, 'fafgsg', 'drhfdajhdaryh'),
(7, 'sgdsdgsd', 'dfgsdghsdh'),
(8, 'fagsaeg', 'shdgs<dghsd<h'),
(9, 'Calificacion total', 'Califica el evento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluations`
--

CREATE TABLE `evaluations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rank` double NOT NULL,
  `feedback` text DEFAULT NULL,
  `criterio_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `stand_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluation_has_criterios`
--

CREATE TABLE `evaluation_has_criterios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `evaluation_id` bigint(20) UNSIGNED NOT NULL,
  `criterio_id` bigint(20) UNSIGNED NOT NULL,
  `rankCriterio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event`
--

CREATE TABLE `event` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `logo` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `description` text NOT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `tiktok` varchar(191) DEFAULT NULL,
  `web` varchar(191) DEFAULT NULL,
  `calification` double DEFAULT NULL,
  `start_date` varchar(191) NOT NULL,
  `end_date` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color_contenedor_3` text DEFAULT NULL,
  `color_contenedor_4` text DEFAULT NULL,
  `images1` text DEFAULT NULL,
  `images2` text DEFAULT NULL,
  `images3` text DEFAULT NULL,
  `images4` text DEFAULT NULL,
  `images5` text DEFAULT NULL,
  `images6` text DEFAULT NULL,
  `images7` text DEFAULT NULL,
  `images8` text DEFAULT NULL,
  `numero_imagenes` int(11) DEFAULT NULL,
  `color_contenedor_1` text DEFAULT NULL,
  `color_contenedor_2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `event`
--

INSERT INTO `event` (`id`, `name`, `logo`, `banner`, `description`, `facebook`, `instagram`, `tiktok`, `web`, `calification`, `start_date`, `end_date`, `user_id`, `created_at`, `updated_at`, `color_contenedor_3`, `color_contenedor_4`, `images1`, `images2`, `images3`, `images4`, `images5`, `images6`, `images7`, `images8`, `numero_imagenes`, `color_contenedor_1`, `color_contenedor_2`) VALUES
(112, 'Moda Fest', 'images/1716993514-Moda Fest-logo.jpg', 'images/1718891944-Moda Fest-banner.jpg', 'La cita más importante de los sectores de la industria de la confección, calzado, joyería, maquinaria e insumos en asociación con la Semana Internacional De La Moda, traen el evento más importante de la temporada a Santander.', 'https://www.facebook.com/eimimodafestcolombia', 'https://www.instagram.com/modafestcol/', 'https://www.tiktok.com/', 'https://modafestcolombia.com/', NULL, '2024-05-29', '2024-06-30', 108, '2024-05-29 19:38:34', '2024-06-20 18:59:04', '#000000', '#f5f5f5', 'images/imagen1-evento.jpg', 'images/1717081532-Moda Fest-image2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, '#518ebd', '#fcfcfc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `logo` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `description` text NOT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `tiktok` varchar(191) DEFAULT NULL,
  `web` varchar(191) DEFAULT NULL,
  `calification` double DEFAULT NULL,
  `start_date` varchar(191) NOT NULL,
  `end_date` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_criterio`
--

CREATE TABLE `event_criterio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `evento_id` bigint(20) UNSIGNED NOT NULL,
  `criterio_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `event_criterio`
--

INSERT INTO `event_criterio` (`id`, `evento_id`, `criterio_id`, `created_at`, `updated_at`) VALUES
(47, 112, 1, '2024-05-29 19:38:59', '2024-05-29 19:38:59'),
(48, 112, 4, '2024-05-29 19:40:54', '2024-05-29 19:40:54'),
(49, 112, 2, '2024-05-29 19:41:05', '2024-05-29 19:41:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NombreCompleto` varchar(191) DEFAULT NULL,
  `Apellidos` varchar(191) DEFAULT NULL,
  `Correo` varchar(191) DEFAULT NULL,
  `Telefono` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_09_17_202122_create_rols_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_11_16_151649_create_stands_table', 1),
(7, '2023_11_16_155551_create_classifications_table', 1),
(8, '2023_11_16_155814_create_criterios_table', 1),
(9, '2023_11_16_160039_create_evaluations_table', 1),
(10, '2023_11_16_161628_create_passports_table', 1),
(11, '2023_11_16_162302_create_schedules_table', 1),
(12, '2023_11_16_163319_create_stand_has_classifications_table', 1),
(13, '2023_11_17_173040_create_permission_tables', 1),
(14, '2023_11_17_213924_create_evaluation_has_criterios_table', 1),
(15, '2023_11_19_045450_create_places_table', 1),
(16, '2023_11_19_142313_create_agendas_table', 1),
(17, '2024_02_05_144229_create_event_table', 1),
(18, '2024_02_05_164936_create_events_table', 1),
(19, '2024_02_07_141637_add_fields_to_stand_table', 1),
(20, '2024_02_07_195432_horarioevento', 1),
(21, '2024_02_08_135302_create_table_place_event', 1),
(22, '2024_02_09_132840_create_invitados_table', 1),
(23, '2024_02_12_201600_imagenesstands', 1),
(24, '2024_02_13_073950_add_columns_to_stands', 2),
(25, '2024_02_13_080619_create_event__criterios_table', 3),
(26, '2024_02_13_095048_create__event__criterio', 4),
(27, '2024_02_20_195011_add_multieventos_to_users', 5),
(28, '2024_02_20_214136_add_multi_evento_to_users', 6),
(29, '2024_02_29_141223_add_camposevento', 7),
(30, '2024_03_01_162856_add_campos_event', 8),
(31, '2024_03_04_193544_create_table_logo', 9),
(32, '2024_03_05_150359_add_time_to_passport_table', 10),
(33, '2024_03_05_200504_add_fields_to_users', 11),
(34, '2024_03_13_154038_add_verificado_to_users', 12),
(35, '2024_05_24_191535_doscamposevento', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 32),
(2, 'App\\Models\\User', 39),
(2, 'App\\Models\\User', 41),
(2, 'App\\Models\\User', 42),
(2, 'App\\Models\\User', 43),
(2, 'App\\Models\\User', 44),
(2, 'App\\Models\\User', 46),
(2, 'App\\Models\\User', 48),
(2, 'App\\Models\\User', 49),
(2, 'App\\Models\\User', 50),
(2, 'App\\Models\\User', 51),
(2, 'App\\Models\\User', 53),
(2, 'App\\Models\\User', 54),
(2, 'App\\Models\\User', 57),
(2, 'App\\Models\\User', 58),
(2, 'App\\Models\\User', 59),
(2, 'App\\Models\\User', 60),
(2, 'App\\Models\\User', 61),
(2, 'App\\Models\\User', 64),
(2, 'App\\Models\\User', 66),
(2, 'App\\Models\\User', 78),
(2, 'App\\Models\\User', 79),
(2, 'App\\Models\\User', 80),
(2, 'App\\Models\\User', 81),
(2, 'App\\Models\\User', 82),
(2, 'App\\Models\\User', 95),
(2, 'App\\Models\\User', 96),
(2, 'App\\Models\\User', 101),
(2, 'App\\Models\\User', 102),
(2, 'App\\Models\\User', 103),
(2, 'App\\Models\\User', 117),
(2, 'App\\Models\\User', 118),
(2, 'App\\Models\\User', 119),
(2, 'App\\Models\\User', 121),
(2, 'App\\Models\\User', 122),
(2, 'App\\Models\\User', 123),
(2, 'App\\Models\\User', 124),
(2, 'App\\Models\\User', 129),
(2, 'App\\Models\\User', 132),
(2, 'App\\Models\\User', 133),
(2, 'App\\Models\\User', 139),
(2, 'App\\Models\\User', 142),
(2, 'App\\Models\\User', 144),
(2, 'App\\Models\\User', 148),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 62),
(3, 'App\\Models\\User', 65),
(3, 'App\\Models\\User', 77),
(3, 'App\\Models\\User', 87),
(3, 'App\\Models\\User', 89),
(3, 'App\\Models\\User', 90),
(3, 'App\\Models\\User', 91),
(3, 'App\\Models\\User', 92),
(3, 'App\\Models\\User', 93),
(3, 'App\\Models\\User', 97),
(3, 'App\\Models\\User', 98),
(3, 'App\\Models\\User', 99),
(3, 'App\\Models\\User', 100),
(3, 'App\\Models\\User', 105),
(3, 'App\\Models\\User', 120),
(3, 'App\\Models\\User', 125),
(3, 'App\\Models\\User', 126),
(3, 'App\\Models\\User', 134),
(3, 'App\\Models\\User', 143),
(3, 'App\\Models\\User', 145),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 27),
(4, 'App\\Models\\User', 28),
(4, 'App\\Models\\User', 29),
(4, 'App\\Models\\User', 34),
(4, 'App\\Models\\User', 35),
(4, 'App\\Models\\User', 36),
(4, 'App\\Models\\User', 37),
(4, 'App\\Models\\User', 38),
(4, 'App\\Models\\User', 76),
(4, 'App\\Models\\User', 83),
(4, 'App\\Models\\User', 84),
(4, 'App\\Models\\User', 85),
(4, 'App\\Models\\User', 86),
(4, 'App\\Models\\User', 88),
(4, 'App\\Models\\User', 94),
(4, 'App\\Models\\User', 104),
(4, 'App\\Models\\User', 106),
(4, 'App\\Models\\User', 107),
(4, 'App\\Models\\User', 108),
(4, 'App\\Models\\User', 109),
(4, 'App\\Models\\User', 110),
(4, 'App\\Models\\User', 111),
(4, 'App\\Models\\User', 112),
(4, 'App\\Models\\User', 113),
(4, 'App\\Models\\User', 114),
(4, 'App\\Models\\User', 115),
(4, 'App\\Models\\User', 116),
(4, 'App\\Models\\User', 127),
(4, 'App\\Models\\User', 128),
(4, 'App\\Models\\User', 130),
(4, 'App\\Models\\User', 131),
(4, 'App\\Models\\User', 146),
(4, 'App\\Models\\User', 147);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `passports`
--

CREATE TABLE `passports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `stand_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `passports`
--

INSERT INTO `passports` (`id`, `date`, `stand_id`, `user_id`, `time`) VALUES
(49, '2024-05-29', 113, 121, '15:19:43'),
(50, '2024-05-29', 113, 122, '16:13:01'),
(51, '2024-05-30', 114, 124, '13:48:49'),
(52, '2024-05-30', 114, 121, '14:03:02'),
(53, '2024-05-30', 113, 124, '14:38:59'),
(54, '2024-05-31', 114, 2, '21:16:05'),
(55, '2024-06-07', 113, 129, '15:57:27'),
(56, '2024-06-07', 114, 129, '16:15:43'),
(57, '2024-06-07', 113, 132, '19:35:59'),
(58, '2024-06-07', 114, 132, '19:38:26'),
(59, '2024-06-07', 113, 133, '20:23:29'),
(60, '2024-06-07', 114, 133, '21:05:01'),
(61, '2024-06-13', 113, 2, '19:03:36'),
(62, '2024-06-13', 115, 2, '19:04:15'),
(63, '2024-06-19', 117, 2, '20:58:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ballesteros@gmail.com', '$2y$10$.bgWcwcSuvcVSqKfotO4OOkTKQbI/isayWtKFPC.OfeAXVT23m7MS', '2024-03-12 01:33:11'),
('proyectoprueba780@gmail.com', '$2y$10$4chJ8sk1eIspTrJt9T5fneqxRegE0hG6HAU3DAx7jYV0eJah3SL4y', '2024-05-28 03:06:04'),
('pepir18686@avastu.com', '$2y$10$l82OFhYzIk9uEauQ8a7EtOLadvkC2CjhoZ/unVt12gvQW370cm6tG', '2024-05-28 21:20:21'),
('efraintuflow@gmail.com', '$2y$10$xJoHMhfNiJ909R5vH6CeieTLHHCuvwq6J/wsNBkPZ.pgcbyQt.b4G', '2024-05-29 20:26:54'),
('dabievjp@gmail.com', '$2y$10$5kfzUcMGOIKQdfh13RXUuuT6YktFNLPq/etFxeFQRJQtPk0TjZwFu', '2024-06-13 21:13:53'),
('alejandracmartinez94@gmail.com', '$2y$10$9Xa6ovwqOxSx0VJWJIyd3u8AkdeXwBcvonXHX.j1bcgdoHYibVjpa', '2024-06-14 03:28:56'),
('jpafbgh@gmail.com', '$2y$10$feOpDOAK0Yg1321cwiaMIuJPqtLFy1ckFm.DwX/fJiRzfWZ4LyU/2', '2024-06-21 03:28:52'),
('luisgarvito@gmail.com', '$2y$10$iUiQopgCZhZ9/evXA0ZK4O2.7hES4hs9AVwNkSY15QqJ.sKRnlcdq', '2024-06-22 00:12:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `address` text NOT NULL,
  `latitude` varchar(191) NOT NULL,
  `length` varchar(191) NOT NULL,
  `schedule_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `places`
--

INSERT INTO `places` (`id`, `name`, `email`, `address`, `latitude`, `length`, `schedule_id`) VALUES
(1, 'Neomundo', 'comercial@neomundo.co', 'calle 89 transversal oriental metropolitana-69', '7,092515', '-73,11789', 2),
(2, 'Cenfer', 'contacto@cenfer.com', 'Kilometro 6 vía Bucaramanga-Girón', '7.1095° N', '73.1219° O', 2),
(3, 'Hotel Holiday Inn Bucaramanga Cacique', 'reservas@holidaybga.com', 'Transversal Oriental Con Calle 93, Bucaramanga,', '7.1336° N', '73.1226° O', 1),
(5, 'Club Unión Bucaramanga', ':info@clubunionbucaramanga.com', 'Cl. 49 #32-20, Sotomayor, Bucaramanga', '7° 6\' 54\" N', '73° 6\' 41\" O', 1),
(6, 'Club Del Comercio de Bucaramanga', 'direcciongestionhumana@dubdelcomercio.com.co', 'Cra. 20 #35-55, Centro, Bucaramanga', '7° 7\' 12\" N', '73° 7\' 19\" O', 2),
(7, 'Estadio Alfonso López', 'contactenos@bucaramanga.gov.co', 'Cr 30 Cl 14 Bucaramanga', '7.1351° N', '73.1167° O', 2),
(9, 'Universidad Industrial de Santander (UIS)', 'atencionalciudadano@uis.edu.co', 'Carrera 27 Calle 9. Bucaramanga', '7.1257° N', '73.1185° O', 1),
(10, 'Centro Cultural del Oriente', 'centroculturaldeloriente@gmail.com.', 'Cra. 19 #31 - 73, Centro, Bucaramanga', '7° 7\' 20\" N', '73° 7\' 26\" O', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `place_event`
--

CREATE TABLE `place_event` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `place_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `place_event`
--

INSERT INTO `place_event` (`id`, `event_id`, `place_id`, `created_at`, `updated_at`) VALUES
(58, 112, 2, '2024-05-29 19:38:43', '2024-05-29 19:38:43'),
(59, 112, 1, '2024-05-29 19:38:49', '2024-05-29 19:38:49'),
(61, 112, 6, '2024-06-18 02:21:45', '2024-06-18 02:21:45'),
(63, 112, 9, '2024-06-24 19:43:41', '2024-06-24 19:43:41'),
(64, 112, 10, '2024-06-24 19:54:19', '2024-06-24 19:54:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'web', '2024-02-13 11:01:26', '2024-02-13 11:01:26'),
(2, 'Visitante', 'web', '2024-02-13 11:01:26', '2024-02-13 11:01:26'),
(3, 'Empresa', 'web', '2024-02-13 11:01:26', '2024-02-13 11:01:26'),
(4, 'Evento', 'web', '2024-02-13 11:01:26', '2024-02-13 11:01:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`id`, `name`) VALUES
(1, 'Administrador'),
(2, 'Visitante'),
(3, 'Empresa'),
(4, 'Evento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(191) NOT NULL,
  `hour_start` time NOT NULL,
  `hour_end` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `schedules`
--

INSERT INTO `schedules` (`id`, `day`, `hour_start`, `hour_end`) VALUES
(1, 'Horario Regular', '10:00:00', '20:00:00'),
(2, 'Horario Extendido', '10:00:00', '21:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stands`
--

CREATE TABLE `stands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `logo` text NOT NULL,
  `banner` text NOT NULL,
  `description` text NOT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `tiktok` varchar(191) DEFAULT NULL,
  `web` varchar(191) DEFAULT NULL,
  `calification` double NOT NULL,
  `qr_code` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `color_contenedor_1` text DEFAULT NULL,
  `color_contenedor_2` text DEFAULT NULL,
  `images1` text DEFAULT NULL,
  `images2` text DEFAULT NULL,
  `images3` text DEFAULT NULL,
  `images4` text DEFAULT NULL,
  `images5` text DEFAULT NULL,
  `images6` text DEFAULT NULL,
  `images7` text DEFAULT NULL,
  `images8` text DEFAULT NULL,
  `images9` text DEFAULT NULL,
  `images10` text DEFAULT NULL,
  `color_contenedor_3` text DEFAULT NULL,
  `color_contenedor_4` text DEFAULT NULL,
  `evento_id` bigint(20) UNSIGNED NOT NULL,
  `places_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `stands`
--

INSERT INTO `stands` (`id`, `name`, `logo`, `banner`, `description`, `facebook`, `instagram`, `tiktok`, `web`, `calification`, `qr_code`, `user_id`, `color_contenedor_1`, `color_contenedor_2`, `images1`, `images2`, `images3`, `images4`, `images5`, `images6`, `images7`, `images8`, `images9`, `images10`, `color_contenedor_3`, `color_contenedor_4`, `evento_id`, `places_id`) VALUES
(113, 'Moda Niños', 'images/Moda Niños-logo.png', 'images/Moda Niños-banner.jpg', 'En 1996 surgió el evento comercial de renombre internacional, la Exposición Internacional de Moda Infantil (EIMI) que rápidamente se estableció como uno de los principales eventos a nivel nacional e internacional en el sector En poco tiempo, alcanzó el tercer lugar a nivel mundial en moda infantil. En su versión número 24 los beneficios para los empresarios siguen creciendo. – Aumento de la visibilidad de las empresas, y unidades productivas participantes del sistema moda. – Posicionamiento de marca en el mercado nacional e internacional. – Incremento en las ventas de productos y servicios. – Generación de leads con nuevos compradores. – Acceso a nuevos mercados y oportunidades comerciales. – Formación y capacitación para fortalecer las competencias empresariales.', 'https://www.facebook.com/eimimodafestcolombia', 'https://www.instagram.com/eimi_colombia/', 'https://www.tiktok.com/login?lang=es&redirect_url=https%3A%2F%2Fwww.tiktok.com%2Fupload%3Flang%3Des', 'https://modafestcolombia.com/', 0, 'JDJ5JDEwJHU4VGhzMWJIWHZ3bGJrVmtEYVVRS2VLR2d1VzRqVDNUNHVkZnY5cGluTXkwcUlqZWZJVktX', 120, '#e65bc8', '#ffffff', 'images/1716995678-image1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#000000', '#ebebeb', 112, 1),
(114, 'calzado', 'images/calzado-logo.jpg', 'images/Propuesta 3.png', 'ChatGPT Los zapatos, esos compañeros de viaje en nuestro caminar diario, son más que simples piezas de calzado. Son una extensión de nuestra personalidad, una expresión de nuestro estilo, y a menudo, un reflejo de nuestra cultura y época. Desde los primeros días de la civilización humana, cuando nuestros ancestros envolvían sus pies en pieles y fibras vegetales para protegerse del áspero suelo, hasta los elaborados diseños contemporáneos que adornan pasarelas y escaparates, los zapatos han evolucionado de manera fascinante.', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.tiktok.com/', 'https://www.example.com/', 0, 'JDJ5JDEwJFdsL3NEclBkdC54Z2dwZVZGaFhNZmU3V042TkJMc09vdDc2QlNxNGlPOFNvMEZoaFN1NWtt', 120, '#9da3d2', '#000000', 'images/1717019305-image1.jpg', 'images/1717019305-image2.jpg', 'images/1717019305-image3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#95b4cb', '#000000', 112, 2),
(115, 'Ropa Adulto', 'images/Logo2.png', 'images/Ropa Adulto-banner.jpg', 'Evento para la la prueba de los stands en el index', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.tiktok.com/', 'https://www.example.com/', 0, 'JDJ5JDEwJFZka3gwQmd4N005LkY3RW9xM0VNSU9aMDRkZTBqSU05VTVRZ2FBSHF6Q1p5SWVsS3JXVmtl', 120, '#db9e9e', '#4b1111', 'images/1718116243-image1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#e6e6e6', '#000000', 112, 2),
(116, 'maria alejandra carreño martinez', 'images/maria alejandra carreño martinez-logo.png', 'images/maria alejandra carreño martinez-banner.jpg', 'FERIA DEL LIBRO', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.tiktok.com/', 'https://www.example.com/', 0, 'JDJ5JDEwJDZZd21FcnJPSmJycWxzVk1QUWY0cy5ZcGNtMTNiU2dISXhhNkloWHIwdU1OYndtYjNLbGlh', 120, '#cc2424', '#231f1f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#328f70', '#938080', 112, 2),
(117, 'STAND PRUEBA', 'images/STAND PRUEBA-logo.jpg', 'images/STAND PRUEBA-banner.webp', 'ESTA ES UNA PRUEBA PARA PROBAR LA ADAPTACION DE LAS IMAGENES', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.tiktok.com/', 'https://www.example.com/', 0, 'JDJ5JDEwJGYzY1I2a1dYek5aU3QvSTF4N3kvSy5CbmJITXczbUlmanNuMW5VTHBZRzRkT290SkNtZVBL', 120, '#d8fdf2', '#0b2e7f', 'images/1718830424-image1.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#b2e0f0', '#052070', 112, 1),
(118, 'prueba visitante e', 'images/prueba visitante e-logo.png', 'images/prueba visitante e-banner.png', 'Prueba de testeo', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.tiktok.com/', 'https://www.example.com/', 0, 'JDJ5JDEwJHdOYy96aGtjRUM0bTZPdC5McHFLeE9FcWgzVWZkREx0ZnhqNlFGZkk0QjJMUDhTL2szZ01P', 120, '#8369ab', '#000000', 'images/Captura de pantalla 2024-05-17 110954.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#ffffff', '#000000', 112, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stand_has_classifications`
--

CREATE TABLE `stand_has_classifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stand_id` bigint(20) UNSIGNED NOT NULL,
  `classification_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `stand_has_classifications`
--

INSERT INTO `stand_has_classifications` (`id`, `stand_id`, `classification_id`) VALUES
(38, 116, 2),
(39, 117, 7),
(41, 113, 2),
(42, 118, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_logo`
--

CREATE TABLE `table_logo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `table_logo`
--

INSERT INTO `table_logo` (`id`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'storage/images/-logo.jpg', '2024-03-05 02:42:45', '2024-03-05 02:42:45'),
(2, 'storage/images/-logo.jpg', '2024-03-05 02:44:45', '2024-03-05 02:44:45'),
(3, 'storage/images/-logo.jpg', '2024-03-05 02:49:24', '2024-03-05 02:49:24'),
(4, 'images/-logo.jpeg', '2024-03-14 22:27:46', '2024-03-14 22:27:46'),
(5, 'images/-logo.jpeg', '2024-03-14 22:27:46', '2024-03-14 22:27:46'),
(6, 'images/-logo.png', '2024-04-03 20:22:33', '2024-04-03 20:22:33'),
(7, 'images/-logo.png', '2024-04-03 20:25:02', '2024-04-03 20:25:02'),
(8, 'images/-logo.jpeg', '2024-04-03 20:25:47', '2024-04-03 20:25:47'),
(9, 'images/-logo.jpeg', '2024-04-03 20:34:57', '2024-04-03 20:34:57'),
(10, 'images/-logo.jpeg', '2024-04-04 00:52:04', '2024-04-04 00:52:04'),
(11, 'images/-logo.png', '2024-04-04 00:54:56', '2024-04-04 00:54:56'),
(12, 'images/-logo.png', '2024-05-16 01:32:36', '2024-05-16 01:32:36'),
(13, 'images/-logo.png', '2024-05-16 01:34:37', '2024-05-16 01:34:37'),
(14, 'images/-logo.png', '2024-05-17 21:36:27', '2024-05-17 21:36:27'),
(15, 'images/-logo.png', '2024-05-21 21:28:31', '2024-05-21 21:28:31'),
(16, 'images/-logo.png', '2024-06-22 00:36:33', '2024-06-22 00:36:33'),
(17, 'images/-logo.png', '2024-06-22 00:37:15', '2024-06-22 00:37:15'),
(18, 'images/-logo.png', '2024-06-22 00:38:22', '2024-06-22 00:38:22'),
(19, 'images/-logo.png', '2024-06-22 00:41:22', '2024-06-22 00:41:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `document` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `phone_number` varchar(191) DEFAULT NULL,
  `birthday` varchar(191) DEFAULT NULL,
  `genere` varchar(191) DEFAULT NULL,
  `rol_id` bigint(20) UNSIGNED NOT NULL,
  `auth_id` varchar(191) DEFAULT NULL,
  `auth_name` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `multi_evento` tinyint(1) NOT NULL DEFAULT 0,
  `age` int(11) DEFAULT NULL,
  `Empresa_verificada` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `document`, `address`, `phone_number`, `birthday`, `genere`, `rol_id`, `auth_id`, `auth_name`, `remember_token`, `multi_evento`, `age`, `Empresa_verificada`) VALUES
(1, 'Marly', 'admin@gmail.com', NULL, '$2y$10$tc.UuDoUvqTZ1cxbfprc.eJXO9O5oNAdpP6FkDYlP3EcF5jGGJSv2', '1234', 'calle 3', '3215678991', '2006-06-15', 'F', 1, NULL, NULL, NULL, 0, 18, 0),
(2, 'Andres ', 'andres@gmail.com', NULL, '$2y$10$HBihUEknNASxKqr1Vo91wu4qKhA4Fm6SoCeUKaEkWjCu4i7q8GQxq', '1079737600', 'calle 32', '3215678991', '2006-01-18', 'F', 2, NULL, NULL, NULL, 0, 18, 0),
(108, 'Semana Internacional de la moda', 'luisgarvito@gmail.com', NULL, '$2y$10$MD19kUP65.i/wi2HileznuLYdquseCqbCBhvdqiI1HMHV0OweWH6y', '1048665793', 'cra 34 # 34-78', '3132467913', '2024-05-29', 'F', 4, NULL, NULL, NULL, 1, 18, 0),
(120, 'moda', 'moda@gmail.com', NULL, '$2y$10$s2IobKuIKU1HuzGMeUgwXe40AsZv76WgC7NA6wvCeV0mLu6kz3FKK', '1032145879', 'calle 48 # 28', '30245846555', '2004-09-22', 'F', 3, NULL, NULL, NULL, 0, 18, 1),
(121, 'Prueba visitante', 'efraintuflow@gmail.com', NULL, '$2y$10$MHu2Bdd7HErFkh.ulTMkbeB4HJISLquIBbRKmHaPSRd9qJ/0wZVjW', '1048660187', 'Calle 14c', NULL, '2004-09-22', 'M', 2, NULL, NULL, NULL, 0, 22, 0),
(122, 'anderson molina', 'anderson@gmail.com', NULL, '$2y$10$gnNzaH2KXj7fJO3EQ7vK1eW42kzJfZ/ZMYBz0TxW4QEXzddJqw0ma', '111111', 'Calle 6#12-32', NULL, '2006-05-03', 'F', 2, NULL, NULL, NULL, 0, 22, 0),
(124, 'Diego Garcia', 'dabievjp@gmail.com', NULL, '$2y$10$8CjI5OSCh0a8aG6i6G3.ReiTWxJdgQna4oxdu51RoClprzCNMJ1Oq', '1045020254', 'Cl. 48 #28-40, Sotomayor, Bucaramanga, Santander', NULL, '2004-10-10', 'M', 2, NULL, NULL, NULL, 0, 19, 0),
(127, 'Emprende-mano', 'emprendemano@gmail.com', NULL, '$2y$10$PJp7eO9HWHUZht39YPcBmu1LRp79DWwLcZqM6Vev3YpsGwdwnQoz.', '10698746', NULL, '3242147074', NULL, NULL, 4, NULL, NULL, NULL, 1, NULL, 0),
(128, 'Pasarela colombia', 'pasarela12@gmail.com', NULL, '$2y$10$IdXF1TtXLunxMx5K94dzBe3gnK6mSEKBsIJaxxEtJSlcXqBG9Kq0y', '1057489965', NULL, '3212038832', NULL, NULL, 4, NULL, NULL, NULL, 1, NULL, 0),
(129, 'Nuevo visitante', 'Visitante45@gmail.com', NULL, '$2y$10$ZsrutYQACDQj8VHV57bum.bumNQ5naTST3vv7Qge5o599DFOD5Rh2', '1098545756', 'Calle 34 N # 45-45', NULL, '2006-06-01', 'M', 2, NULL, NULL, NULL, 0, 18, 0),
(130, 'EventosCaracoli', 'CaracoliEvent234@gmail.com', NULL, '$2y$10$jF6G19e14IVibd9BAB2kQ.KjgYL1nXLVnUlmIrSdRzq1gkrag8lRS', '1254754458', NULL, '2021952948', NULL, NULL, 4, NULL, NULL, NULL, 1, NULL, 0),
(132, 'Antonio rodriguez', 'Antonio@gmail.com', NULL, '$2y$10$jz4qoCjoc6xrHNzEsyWUzehvFUq1z4PMNb4VahUyxi392Hmjs49ui', '1058875556', 'cra 34 # 34-78', NULL, '2006-06-06', 'M', 2, NULL, NULL, NULL, 0, 18, 0),
(133, 'Roberto toto to toto to', 'Robertototototo@gmail.com', NULL, '$2y$10$ZGd6jRi1CYP2e0tr4HKeqeXTO2Z2wPoyQ/pvMFjwh663LVsgfpBoW', '1585484554', 'cra 34 # 34-78', NULL, '2006-06-06', 'M', 2, NULL, NULL, NULL, 0, 18, 0),
(134, 'hipinto', 'hipinto@gmail.com', NULL, '$2y$10$ArlODT.ZDVkqklbbh/skIOz9ljPKk99aAgMd7qpCBF9IBeC8RfiMK', '1234567891', 'Cra. 19 #36-20, Bolívar, Bucaramanga, Santander', NULL, '2004-01-14', 'M', 3, NULL, NULL, NULL, 0, 20, 1),
(139, 'maria alejandra carreño martinez', 'alejandracmartinez94@gmail.com', NULL, '$2y$10$xxioid7xjuVDaHvVj.lxtubMwbQ2/mruM/Q0clndZShxhECLejAFK', '1102374262', 'calle 3 # 48-26', NULL, '1994-06-09', 'F', 2, NULL, NULL, NULL, 0, 18, 0),
(142, 'Prueba Proyecto', 'proyectoprueba780@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '113471643418111993764', 'google', NULL, 0, NULL, 0),
(143, 'Jonathan David Sierra Pabon', 'jpafbgh@gmail.com', NULL, '$2y$10$0iweYaLMBCMBTXonGPOOBewSCwwKxl9VQhZgWOPyQR4Gz8ILMe5ji', '1099735600', 'Calle 2 N # 22 C-01', NULL, '2004-10-19', 'M', 3, NULL, NULL, NULL, 0, 19, 0),
(144, 'lussander S.A.S', 'Lussander@gmail.com', NULL, '$2y$10$oZcILhLAdUMwkBfa6ZH7huPKGzsNDYWY2qTp6JgNwck52ADAfX4Vi', '1005784596', 'cra 34 # 34-78', NULL, '2006-05-31', 'M', 2, NULL, NULL, NULL, 0, 18, 0),
(145, 'lussander S.A.S', 'lussander123@gmail.com', NULL, '$2y$10$WWw0aiB/RGgxC0NeU.c2.e/YgUQIx.kv7jN9ktCUdgX9YfXiOBqsS', '1004542487', 'cra 34 # 34-78', NULL, '2006-05-30', 'M', 3, NULL, NULL, NULL, 0, 18, 1),
(146, 'modafest', 'Modafest@gmail.com', NULL, '$2y$10$hILRzU9ZCIBY7UtVFB5UoeeCXvdUYraawJfbvnqhqQwEKgmHfDwme', '1048550276', NULL, '3239047212', NULL, NULL, 4, NULL, NULL, NULL, 0, NULL, 0),
(147, 'esteban', 'esteban@gmail.com', NULL, '$2y$10$fva5m/MgwAB/cUzDP6ziSesM3USDR5.i9KObNiMkG4lhpP69zy2na', '1223255236', 'Calle 1 #8-46', '3164151130', '2005-04-27', 'M', 4, NULL, NULL, NULL, 1, 18, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agendas_place_id_foreign` (`place_id`),
  ADD KEY `agendas_stand_id_foreign` (`stand_id`);

--
-- Indices de la tabla `classifications`
--
ALTER TABLE `classifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `criterios`
--
ALTER TABLE `criterios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluations_criterio_id_foreign` (`criterio_id`),
  ADD KEY `evaluations_user_id_foreign` (`user_id`),
  ADD KEY `evaluations_stand_id_foreign` (`stand_id`);

--
-- Indices de la tabla `evaluation_has_criterios`
--
ALTER TABLE `evaluation_has_criterios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluation_has_criterios_evaluation_id_foreign` (`evaluation_id`),
  ADD KEY `evaluation_has_criterios_criterio_id_foreign` (`criterio_id`);

--
-- Indices de la tabla `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `event_criterio`
--
ALTER TABLE `event_criterio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_criterio_evento_id_foreign` (`evento_id`),
  ADD KEY `event_criterio_criterio_id_foreign` (`criterio_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `passports`
--
ALTER TABLE `passports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `passports_stand_id_foreign` (`stand_id`),
  ADD KEY `passports_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `places_schedule_id_foreign` (`schedule_id`);

--
-- Indices de la tabla `place_event`
--
ALTER TABLE `place_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place_event_event_id_foreign` (`event_id`),
  ADD KEY `place_event_place_id_foreign` (`place_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `stands`
--
ALTER TABLE `stands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stands_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `stand_has_classifications`
--
ALTER TABLE `stand_has_classifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stand_has_classifications_stand_id_foreign` (`stand_id`),
  ADD KEY `stand_has_classifications_classification_id_foreign` (`classification_id`);

--
-- Indices de la tabla `table_logo`
--
ALTER TABLE `table_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_rol_id_foreign` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `classifications`
--
ALTER TABLE `classifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `criterios`
--
ALTER TABLE `criterios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `evaluation_has_criterios`
--
ALTER TABLE `evaluation_has_criterios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `event`
--
ALTER TABLE `event`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `event_criterio`
--
ALTER TABLE `event_criterio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `passports`
--
ALTER TABLE `passports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `place_event`
--
ALTER TABLE `place_event`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `stands`
--
ALTER TABLE `stands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `stand_has_classifications`
--
ALTER TABLE `stand_has_classifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `table_logo`
--
ALTER TABLE `table_logo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agendas`
--
ALTER TABLE `agendas`
  ADD CONSTRAINT `agendas_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  ADD CONSTRAINT `agendas_stand_id_foreign` FOREIGN KEY (`stand_id`) REFERENCES `stands` (`id`);

--
-- Filtros para la tabla `evaluations`
--
ALTER TABLE `evaluations`
  ADD CONSTRAINT `evaluations_criterio_id_foreign` FOREIGN KEY (`criterio_id`) REFERENCES `criterios` (`id`),
  ADD CONSTRAINT `evaluations_stand_id_foreign` FOREIGN KEY (`stand_id`) REFERENCES `stands` (`id`),
  ADD CONSTRAINT `evaluations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `evaluation_has_criterios`
--
ALTER TABLE `evaluation_has_criterios`
  ADD CONSTRAINT `evaluation_has_criterios_criterio_id_foreign` FOREIGN KEY (`criterio_id`) REFERENCES `criterios` (`id`),
  ADD CONSTRAINT `evaluation_has_criterios_evaluation_id_foreign` FOREIGN KEY (`evaluation_id`) REFERENCES `evaluations` (`id`);

--
-- Filtros para la tabla `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `event_criterio`
--
ALTER TABLE `event_criterio`
  ADD CONSTRAINT `event_criterio_criterio_id_foreign` FOREIGN KEY (`criterio_id`) REFERENCES `criterios` (`id`),
  ADD CONSTRAINT `event_criterio_evento_id_foreign` FOREIGN KEY (`evento_id`) REFERENCES `event` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `passports`
--
ALTER TABLE `passports`
  ADD CONSTRAINT `passports_stand_id_foreign` FOREIGN KEY (`stand_id`) REFERENCES `stands` (`id`),
  ADD CONSTRAINT `passports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`);

--
-- Filtros para la tabla `place_event`
--
ALTER TABLE `place_event`
  ADD CONSTRAINT `place_event_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  ADD CONSTRAINT `place_event_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `stands`
--
ALTER TABLE `stands`
  ADD CONSTRAINT `stands_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `stand_has_classifications`
--
ALTER TABLE `stand_has_classifications`
  ADD CONSTRAINT `stand_has_classifications_classification_id_foreign` FOREIGN KEY (`classification_id`) REFERENCES `classifications` (`id`),
  ADD CONSTRAINT `stand_has_classifications_stand_id_foreign` FOREIGN KEY (`stand_id`) REFERENCES `stands` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `rols` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
