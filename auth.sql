-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 22 2023 г., 17:20
-- Версия сервера: 10.4.18-MariaDB
-- Версия PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `auth`
--

-- --------------------------------------------------------

--
-- Структура таблицы `faculties`
--

CREATE TABLE `faculties` (
  `fak_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `faculties`
--

INSERT INTO `faculties` (`fak_id`, `name`, `IMS`) VALUES
(4, 'Физико-математический факультет', 'ФМФ'),
(18, 'Биолого-химический факультет', 'БХФ'),
(25, 'Факультет физической культуры и спорта', 'ФФКиС'),
(57, 'Историко-филологический факультет', 'ИФФ'),
(68, 'Факультет психологии и специального образования', 'ФПСО'),
(69, 'Институт иностранных языков и международного сотрудничества', 'ИИЯМС'),
(70, 'Институт развития педагогического образования', 'ИРПО'),
(71, 'Институт детства и артпедагогики', 'ИДиА'),
(72, 'Технолого-экономический факультет', 'ТЭФ');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `fak_id` int(11) NOT NULL,
  `gruppa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`fak_id`, `gruppa`, `course`) VALUES
(71, '1001', 2),
(71, '1001', 2),
(71, '1001', 2),
(71, '1002', 2),
(71, '1002', 2),
(71, '1002', 2),
(71, '1003', 2),
(18, '101', 2),
(18, '103', 2),
(18, '104', 2),
(71, '1072', 5),
(71, '1073', 5),
(71, '1082', 4),
(71, '1083', 4),
(71, '1092', 3),
(71, '1093', 3),
(72, '1101', 2),
(72, '1101', 2),
(72, '1101', 2),
(72, '1102', 2),
(72, '1103', 2),
(72, '1111', 1),
(72, '1111', 1),
(72, '1111', 1),
(72, '1112', 1),
(72, '1113', 1),
(18, '111', 1),
(18, '113', 1),
(18, '114', 1),
(72, '11701', 5),
(72, '11701', 5),
(72, '11701', 5),
(72, '11701', 5),
(72, '11701', 5),
(72, '1171', 5),
(72, '11801', 4),
(72, '11801', 4),
(72, '11801', 4),
(72, '11801', 4),
(72, '11801', 4),
(72, '1181', 4),
(72, '1183', 4),
(72, '11901', 3),
(72, '11901', 3),
(72, '11901', 3),
(72, '1191', 3),
(72, '1193', 3),
(18, '173', 5),
(18, '174', 5),
(18, '183', 4),
(18, '184', 4),
(18, '193', 3),
(18, '194', 3),
(69, '201', 2),
(69, '201', 2),
(69, '201', 2),
(69, '201', 2),
(69, '202', 2),
(69, '202', 2),
(69, '202', 2),
(69, '203', 2),
(69, '204', 2),
(69, '205', 2),
(69, '206', 2),
(69, '207', 2),
(69, '208', 2),
(69, '209', 2),
(69, '211', 1),
(69, '211', 1),
(69, '211', 1),
(69, '211', 1),
(69, '212', 1),
(69, '212', 1),
(69, '212', 1),
(69, '213', 1),
(69, '213', 1),
(69, '214', 1),
(69, '217', 1),
(69, '219', 1),
(69, '2701', 5),
(69, '2701', 5),
(69, '271', 5),
(69, '272', 5),
(69, '273', 5),
(69, '277', 5),
(69, '278', 5),
(69, '279', 5),
(69, '2801', 4),
(69, '2801', 4),
(69, '2802', 4),
(69, '281', 4),
(69, '282', 4),
(69, '283', 4),
(69, '284', 4),
(69, '285', 4),
(69, '286', 4),
(69, '287', 4),
(69, '288', 4),
(69, '289', 4),
(69, '290', 3),
(69, '2901', 3),
(69, '2901', 3),
(69, '2902', 3),
(69, '291', 3),
(69, '292', 3),
(69, '293', 3),
(69, '294', 3),
(69, '295', 3),
(69, '296', 3),
(57, '301', 2),
(57, '301', 2),
(57, '301', 2),
(57, '301', 2),
(57, '302', 2),
(57, '303', 2),
(57, '304', 2),
(57, '304', 2),
(57, '309', 2),
(57, '311', 1),
(57, '311', 1),
(57, '311', 1),
(57, '311', 1),
(57, '312', 1),
(57, '313', 1),
(57, '314', 1),
(57, '314', 1),
(57, '319', 1),
(57, '371', 5),
(57, '372', 5),
(57, '373', 5),
(57, '374', 5),
(57, '3801', 4),
(57, '3801', 4),
(57, '381', 4),
(57, '382', 4),
(57, '383', 4),
(57, '384', 4),
(57, '3901', 2),
(57, '3901', 3),
(57, '3901', 3),
(57, '391', 3),
(57, '392', 3),
(57, '393', 3),
(57, '394', 3),
(4, '401', 2),
(4, '401', 2),
(4, '402', 2),
(4, '403', 2),
(4, '404', 2),
(4, '411', 1),
(4, '411', 1),
(4, '412', 1),
(4, '413', 1),
(4, '414', 1),
(4, '471', 5),
(4, '472', 5),
(4, '481', 4),
(4, '482', 4),
(4, '483', 4),
(4, '491', 3),
(4, '492', 3),
(4, '493', 3),
(25, '501', 2),
(25, '501', 2),
(25, '501', 2),
(25, '502', 2),
(25, '502', 2),
(25, '503', 2),
(25, '503', 2),
(25, '5101', 1),
(25, '5102', 1),
(25, '5103', 1),
(25, '511', 1),
(25, '511', 1),
(25, '512', 1),
(25, '513', 1),
(68, '51', 4),
(25, '5701', 5),
(25, '5702', 5),
(25, '571', 5),
(25, '572', 5),
(25, '5801', 4),
(25, '5802', 4),
(25, '5803', 4),
(25, '581', 4),
(25, '582', 4),
(25, '583', 4),
(25, '5901', 3),
(25, '5902', 3),
(25, '5903', 3),
(25, '591', 3),
(25, '592', 3),
(25, '593', 3),
(71, '601', 2),
(71, '601', 2),
(71, '601', 2),
(71, '601', 2),
(71, '602', 2),
(71, '602', 2),
(71, '602', 2),
(71, '603', 2),
(71, '61', 5),
(71, '611', 1),
(71, '611', 1),
(71, '611', 1),
(71, '611', 1),
(71, '611', 1),
(71, '611', 1),
(71, '612', 1),
(71, '612', 1),
(71, '612', 1),
(71, '612', 1),
(71, '613', 1),
(71, '613', 1),
(71, '613', 1),
(68, '61', 5),
(68, '62', 4),
(68, '62', 5),
(68, '62', 5),
(71, '6701', 4),
(71, '6702', 5),
(71, '6702', 5),
(71, '6703', 5),
(71, '6703', 5),
(71, '6704', 5),
(71, '6704', 5),
(71, '6705', 5),
(71, '6705', 5),
(71, '6706', 5),
(71, '6707', 5),
(71, '671', 5),
(71, '672', 5),
(71, '6801', 4),
(71, '6801', 4),
(71, '6802', 4),
(71, '6802', 4),
(71, '6803', 4),
(71, '6803', 4),
(71, '6804', 4),
(71, '6804', 4),
(71, '6805', 4),
(71, '6806', 4),
(71, '681', 4),
(71, '682', 4),
(71, '6901', 3),
(71, '6901', 2),
(71, '6901', 3),
(71, '6901', 3),
(71, '6902', 3),
(71, '6902', 3),
(71, '6903', 3),
(71, '6903', 3),
(71, '6904', 3),
(71, '6904', 3),
(71, '6905', 3),
(71, '6906', 3),
(71, '691', 3),
(71, '692', 3),
(71, '692', 2),
(57, '701', 2),
(72, '701', 2),
(72, '701', 2),
(70, '701', 2),
(57, '701', 2),
(72, '701', 2),
(72, '706', 2),
(70, '709', 2),
(72, '7101', 1),
(70, '7101', 1),
(57, '7101', 1),
(72, '711', 1),
(72, '716', 1),
(70, '719', 1),
(72, '7701', 5),
(57, '7701', 5),
(72, '7701', 5),
(57, '7702', 5),
(72, '771', 5),
(72, '7801', 4),
(57, '7801', 4),
(72, '7801', 4),
(57, '7802', 3),
(57, '7802', 4),
(72, '781', 4),
(72, '784', 4),
(72, '785', 4),
(72, '7901', 3),
(72, '7901', 3),
(70, '7901', 3),
(57, '7901', 3),
(72, '7901', 3),
(72, '791', 3),
(72, '795', 3),
(68, '801', 2),
(68, '801', 2),
(68, '801', 2),
(68, '801', 2),
(68, '801', 2),
(68, '801', 2),
(68, '801', 2),
(68, '801', 2),
(68, '801', 2),
(68, '801', 2),
(68, '801', 2),
(68, '802', 2),
(68, '802', 2),
(68, '802', 2),
(68, '802', 2),
(68, '802', 2),
(68, '803', 2),
(68, '803', 2),
(68, '803', 2),
(68, '805', 2),
(68, '805', 2),
(68, '806', 2),
(68, '8101', 1),
(68, '8101', 1),
(68, '8101', 1),
(68, '8101', 1),
(68, '8101', 1),
(68, '8101', 1),
(68, '8101', 1),
(68, '8101', 1),
(68, '8101', 1),
(68, '8102', 1),
(68, '8102', 1),
(68, '8102', 1),
(68, '8103', 1),
(68, '8103', 1),
(68, '811', 1),
(68, '811', 1),
(68, '812', 1),
(68, '813', 1),
(68, '813', 1),
(68, '813', 1),
(68, '815', 1),
(68, '815', 1),
(68, '816', 1),
(68, '8701', 4),
(68, '8701', 5),
(68, '8701', 5),
(68, '8702', 4),
(68, '8702', 5),
(68, '8702', 5),
(68, '8801', 4),
(68, '8801', 3),
(68, '8801', 4),
(68, '8801', 4),
(68, '8801', 4),
(68, '8801', 4),
(68, '8802', 3),
(68, '8802', 4),
(68, '8802', 4),
(68, '8802', 4),
(68, '8803', 4),
(68, '881', 4),
(68, '882', 4),
(68, '883', 4),
(68, '885', 4),
(68, '8901', 3),
(68, '8901', 3),
(68, '8901', 3),
(68, '8901', 3),
(68, '8901', 3),
(68, '8901', 3),
(68, '8901', 3),
(68, '8901', 3),
(68, '8902', 3),
(68, '8902', 3),
(68, '8902', 3),
(68, '8902', 3),
(68, '8903', 3),
(68, '891', 3),
(68, '892', 3),
(68, '893', 3),
(68, '895', 3),
(68, '9701', 5),
(68, '9701', 3),
(68, '9701', 5),
(68, '9701', 5),
(68, '9702', 5),
(68, '9702', 5),
(68, '9703', 5),
(68, '9703', 5),
(68, '975', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_20_131116_create_permission_tables', 1),
(6, '2023_03_21_120405_create_faculties_table', 2),
(7, '2023_03_21_120405_create_faculties_tables', 3),
(8, '2023_03_21_130136_create_groups_table', 3),
(9, '2023_03_21_144243_add_is_admin_to_users_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-03-20 06:38:39', '2023-03-20 06:38:39'),
(2, 'student', 'web', '2023-03-21 06:30:56', '2023-03-21 06:30:56');

-- --------------------------------------------------------

--
-- Структура таблицы `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'admin', 'qwe@qwe', NULL, '$2y$10$gllMjEmK22OhFroL3IQWNeyvNnAvEnPDuYBz/2mo8PXaGqICnoAIm', NULL, '2023-03-20 06:38:39', '2023-03-20 06:38:39', 0),
(2, 'student', 'qwe@qwe1', NULL, '$2y$10$sRSYnyRSNE.JgPxyytAUROruTXuyXLGUF3kuASFbEHmS0lqvbRxcu', NULL, '2023-03-21 06:30:56', '2023-03-21 06:30:56', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`fak_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Индексы таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
