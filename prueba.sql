-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-06-2024 a las 16:22:09
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `PK_CIUDAD` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `TX_CIUDAD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NU_CODIGO` bigint(20) UNSIGNED NOT NULL,
  `BL_ESTADO` tinyint(1) NOT NULL DEFAULT '1',
  `FK_PAIS` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`PK_CIUDAD`, `created_at`, `updated_at`, `deleted_at`, `TX_CIUDAD`, `NU_CODIGO`, `BL_ESTADO`, `FK_PAIS`) VALUES
(1, '2024-06-08 22:12:55', '2024-06-08 22:12:55', NULL, 'Zipaquirá', 3665542, 1, 3),
(2, '2024-06-08 22:13:26', '2024-06-08 22:13:26', NULL, 'Zarzal', 3665559, 1, 3),
(3, '2024-06-08 22:13:44', '2024-06-08 22:13:44', NULL, 'Yumbo', 3665657, 1, 3),
(4, '2024-06-08 22:14:20', '2024-06-08 22:14:20', NULL, 'Departamento del Valle del Cauca', 3666313, 1, 3),
(5, '2024-06-08 22:15:00', '2024-06-08 22:15:00', NULL, 'Kawasakichō', 6415253, 1, 7),
(6, '2024-06-08 22:15:18', '2024-06-08 22:15:18', NULL, 'Asahi', 6416230, 1, 7),
(7, '2024-06-08 22:15:33', '2024-06-08 22:15:33', NULL, 'Tsumuura', 6418686, 1, 7),
(8, '2024-06-08 22:15:50', '2024-06-08 22:15:50', NULL, 'Mihama', 6419747, 1, 7),
(9, '2024-06-08 22:16:17', '2024-06-08 22:16:17', NULL, 'Breighton', 6453268, 1, 6),
(10, '2024-06-08 22:18:25', '2024-06-08 22:18:25', NULL, 'Watford District', 7290569, 1, 6),
(11, '2024-06-08 22:19:50', '2024-06-08 22:19:50', NULL, 'Wolverhampton', 2633691, 1, 6),
(12, '2024-06-08 22:21:06', '2024-06-08 22:21:06', NULL, 'Westerham', 2634434, 1, 6),
(13, '2024-06-08 22:21:26', '2024-06-08 22:21:26', NULL, 'Manchester', 2643123, 1, 6),
(14, '2024-06-08 22:22:01', '2024-06-08 22:22:01', NULL, 'Queenstown', 6204696, 1, 5),
(15, '2024-06-08 22:22:20', '2024-06-08 22:22:20', NULL, 'Twizel', 6209526, 1, 5),
(16, '2024-06-08 22:22:31', '2024-06-08 22:22:31', NULL, 'Riccarton', 6220351, 1, 5),
(17, '2024-06-08 22:22:43', '2024-06-08 22:22:43', NULL, 'Waitara', 6223705, 1, 5),
(18, '2024-06-08 22:23:51', '2024-06-08 22:23:51', NULL, 'Region Hovedstaden', 6418538, 1, 4),
(19, '2024-06-08 22:24:05', '2024-06-08 22:24:05', NULL, 'North Denmark Region', 6418540, 1, 4),
(20, '2024-06-08 22:25:03', '2024-06-08 22:25:03', NULL, 'Mariagerfjord Kommune', 6543930, 1, 4),
(21, '2024-06-08 22:25:28', '2024-06-08 22:25:28', NULL, 'San Juan De Los Platanos', 6618821, 1, 8),
(22, '2024-06-08 22:25:42', '2024-06-08 22:25:42', NULL, 'Huapinol', 6690612, 1, 8),
(23, '2024-06-08 22:25:54', '2024-06-08 22:25:54', NULL, 'Aguascalientes', 6942835, 1, 8),
(24, '2024-06-08 22:26:25', '2024-06-08 22:26:25', NULL, 'Acapulco de Juárez', 3533462, 1, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `PK_HISTORIAL` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `CIUDADDESTINO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CONVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HUMEDAD` bigint(20) UNSIGNED NOT NULL,
  `IPCONSULTA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LATITUD` decimal(10,7) NOT NULL,
  `LONGITUD` decimal(10,7) NOT NULL,
  `MONEDAREPRESENTACION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NOMBREMONEDA` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NOMBREPC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PAISDESTINO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ORIGEN` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRECIO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRESUPUESTO` bigint(20) UNSIGNED NOT NULL,
  `TEMPERATURA` decimal(10,7) NOT NULL,
  `TEMPERATURAMAXIMA` decimal(10,7) NOT NULL,
  `TEMPERATURAMINIMA` decimal(10,7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`PK_HISTORIAL`, `created_at`, `updated_at`, `deleted_at`, `CIUDADDESTINO`, `CONVERSION`, `HUMEDAD`, `IPCONSULTA`, `LATITUD`, `LONGITUD`, `MONEDAREPRESENTACION`, `NOMBREMONEDA`, `NOMBREPC`, `PAISDESTINO`, `ORIGEN`, `PRECIO`, `PRESUPUESTO`, `TEMPERATURA`, `TEMPERATURAMAXIMA`, `TEMPERATURAMINIMA`) VALUES
(4, '2024-06-09 03:40:55', '2024-06-09 03:40:55', NULL, 'Wolverhampton', '907.1747', 75, '127.0.0.1', '52.5855000', '-2.1230000', 'GBP', 'Pound sterling', 'DESKTOP-E74F6U6', 'Inglaterra', 'COP', '0.0002', 4550000, '281.3800000', '282.4800000', '280.3800000'),
(5, '2024-06-09 03:41:10', '2024-06-09 03:41:10', NULL, 'Wolverhampton', '3864872.8224', 75, '127.0.0.1', '52.5855000', '-2.1230000', 'GBP', 'Pound sterling', 'DESKTOP-E74F6U6', 'Inglaterra', 'EUR', '0.8494', 4550000, '281.3800000', '282.4800000', '280.3800000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_06_08_162439_create_paises_table', 1),
(3, '2024_06_08_162445_create_ciudades_table', 1),
(4, '2024_06_08_220414_create_historial_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `PK_PAIS` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `TX_NOMBRE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TX_CODIGO` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TX_CODIGO_MONEDA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `BL_ESTADO` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`created_at`, `updated_at`, `PK_PAIS`, `deleted_at`, `TX_NOMBRE`, `TX_CODIGO`, `TX_CODIGO_MONEDA`, `BL_ESTADO`) VALUES
('2024-06-08 22:04:24', '2024-06-08 22:04:24', 3, NULL, 'Colombia', 'CO', 'COP', 0),
('2024-06-08 22:04:46', '2024-06-08 22:04:46', 4, NULL, 'Dinamarca', 'DK', 'DKK', 1),
('2024-06-08 22:04:58', '2024-06-08 22:04:58', 5, NULL, 'India', 'NZ', 'INR', 1),
('2024-06-08 22:05:10', '2024-06-08 22:05:10', 6, NULL, 'Inglaterra', 'GB', 'GBP', 1),
('2024-06-08 22:05:26', '2024-06-08 22:05:26', 7, NULL, 'Japón', 'JP', 'JPY', 1),
('2024-06-08 22:05:41', '2024-06-08 22:05:41', 8, NULL, 'México', 'MX', 'MXN', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`PK_CIUDAD`),
  ADD KEY `ciudades_fk_pais_foreign` (`FK_PAIS`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`PK_HISTORIAL`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`PK_PAIS`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `PK_CIUDAD` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `PK_HISTORIAL` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `PK_PAIS` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_fk_pais_foreign` FOREIGN KEY (`FK_PAIS`) REFERENCES `paises` (`PK_PAIS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
