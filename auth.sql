-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 17 2023 г., 18:36
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
(71, '1001М', 2),
(71, '1001муз', 2),
(71, '1002', 2),
(71, '1002кпд', 2),
(71, '1002Муск', 2),
(71, '1003', 2),
(18, '101М', 2),
(18, '103', 2),
(18, '104', 2),
(71, '1072', 5),
(71, '1073', 5),
(71, '1082', 4),
(71, '1083', 4),
(71, '1092', 3),
(71, '1093', 3),
(72, '1101', 2),
(72, '1101М', 2),
(72, '1101ПО', 2),
(72, '1102М', 2),
(72, '1103', 2),
(72, '1111', 1),
(72, '1111М', 1),
(72, '1111ПО', 1),
(72, '1112М', 1),
(72, '1113', 1),
(18, '111М', 1),
(18, '113', 1),
(18, '114', 1),
(72, '11701БЖ', 5),
(72, '11701Лр', 5),
(72, '11701ПО', 5),
(72, '11701ТП', 5),
(72, '11701Тр', 5),
(72, '1171', 5),
(72, '11801БЖ', 4),
(72, '11801Лр', 4),
(72, '11801ПО', 4),
(72, '11801ТП', 4),
(72, '11801Тр', 4),
(72, '1181', 4),
(72, '1183', 4),
(72, '11901Лр', 3),
(72, '11901ПО', 3),
(72, '11901Тр', 3),
(72, '1191', 3),
(72, '1193', 3),
(18, '173', 5),
(18, '174', 5),
(18, '183', 4),
(18, '184', 4),
(18, '193', 3),
(18, '194', 3),
(69, '201', 2),
(69, '201аИЯ', 2),
(69, '201ЛПиП', 2),
(69, '201М', 2),
(69, '202', 2),
(69, '202ЛПиП', 2),
(69, '202М', 2),
(69, '203', 2),
(69, '204', 2),
(69, '205М', 2),
(69, '206', 2),
(69, '207', 2),
(69, '208', 2),
(69, '209', 2),
(69, '211', 1),
(69, '211ЛПиП', 1),
(69, '211М', 1),
(69, '211оз', 1),
(69, '212', 1),
(69, '212ЛПиП', 1),
(69, '212М', 1),
(69, '213', 1),
(69, '213/1', 1),
(69, '214', 1),
(69, '217', 1),
(69, '219', 1),
(69, '2701аИЯ', 5),
(69, '2701ЛПиП', 5),
(69, '271', 5),
(69, '272', 5),
(69, '273', 5),
(69, '277', 5),
(69, '278', 5),
(69, '279', 5),
(69, '2801аИЯ', 4),
(69, '2801ЛПиП', 4),
(69, '2802ЛПиП', 4),
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
(69, '2901аИЯ', 3),
(69, '2901ЛПиП', 3),
(69, '2902ЛПиП', 3),
(69, '291', 3),
(69, '292', 3),
(69, '293', 3),
(69, '294', 3),
(69, '295', 3),
(69, '296', 3),
(57, '301', 2),
(57, '301ИО', 2),
(57, '301М', 2),
(57, '301РЯ', 2),
(57, '302', 2),
(57, '303', 2),
(57, '304', 2),
(57, '304М', 2),
(57, '309М', 2),
(57, '311', 1),
(57, '311ИО', 1),
(57, '311М', 1),
(57, '311РЯ', 1),
(57, '312', 1),
(57, '313', 1),
(57, '314', 1),
(57, '314М', 1),
(57, '319М', 1),
(57, '371', 5),
(57, '372', 5),
(57, '373', 5),
(57, '374', 5),
(57, '3801ИО', 4),
(57, '3801РЯ', 4),
(57, '381', 4),
(57, '382', 4),
(57, '383', 4),
(57, '384', 4),
(57, '3901ИО', 2),
(57, '3901ИО', 3),
(57, '3901РЯ', 3),
(57, '391', 3),
(57, '392', 3),
(57, '393', 3),
(57, '394', 3),
(4, '401', 2),
(4, '401М', 2),
(4, '402', 2),
(4, '403', 2),
(4, '404М', 2),
(4, '411', 1),
(4, '411М', 1),
(4, '412', 1),
(4, '413', 1),
(4, '414М', 1),
(4, '471', 5),
(4, '472', 5),
(4, '481', 4),
(4, '482', 4),
(4, '483', 4),
(4, '491', 3),
(4, '492', 3),
(4, '493', 3),
(25, '501', 2),
(25, '501М', 2),
(25, '501ФК', 2),
(25, '502', 2),
(25, '502ФК', 2),
(25, '503', 2),
(25, '503ФК', 2),
(25, '5101ФК', 1),
(25, '5102ФК', 1),
(25, '5103ФК', 1),
(25, '511', 1),
(25, '511М', 1),
(25, '512', 1),
(25, '513', 1),
(68, '51ЛОд', 4),
(25, '5701ФК', 5),
(25, '5702ФК', 5),
(25, '571', 5),
(25, '572', 5),
(25, '5801ФК', 4),
(25, '5802ФК', 4),
(25, '5803ФК', 4),
(25, '581', 4),
(25, '582', 4),
(25, '583', 4),
(25, '5901ФК', 3),
(25, '5902ФК', 3),
(25, '5903ФК', 3),
(25, '591', 3),
(25, '592', 3),
(25, '593', 3),
(71, '601', 2),
(71, '601ДО', 2),
(71, '601Мрд', 2),
(71, '601НО', 2),
(71, '602', 2),
(71, '602ДО', 2),
(71, '602НО', 2),
(71, '603ДО', 2),
(71, '61/3НО', 5),
(71, '611', 1),
(71, '611ДО', 1),
(71, '611М', 1),
(71, '611Мно', 1),
(71, '611Мрд', 1),
(71, '611НО', 1),
(71, '612', 1),
(71, '612ДО', 1),
(71, '612М', 1),
(71, '612НО', 1),
(71, '613', 1),
(71, '613М', 1),
(71, '613Миск', 1),
(68, '61ЛО', 5),
(68, '62ЛО', 4),
(68, '62ЛО', 5),
(68, '62ПСП', 5),
(71, '6701НО', 4),
(71, '6702ДО', 5),
(71, '6702НО', 5),
(71, '6703ДО', 5),
(71, '6703НО', 5),
(71, '6704ДО', 5),
(71, '6704НО', 5),
(71, '6705ДО', 5),
(71, '6705НО', 5),
(71, '6706ДО', 5),
(71, '6707ДО', 5),
(71, '671', 5),
(71, '672', 5),
(71, '6801ДО', 4),
(71, '6801НО', 4),
(71, '6802ДО', 4),
(71, '6802НО', 4),
(71, '6803ДО', 4),
(71, '6803НО', 4),
(71, '6804ДО', 4),
(71, '6804НО', 4),
(71, '6805ДО', 4),
(71, '6806ДО', 4),
(71, '681', 4),
(71, '682', 4),
(71, '6901ДО', 3),
(71, '6901Мно', 2),
(71, '6901Мно', 3),
(71, '6901НО', 3),
(71, '6902ДО', 3),
(71, '6902НО', 3),
(71, '6903ДО', 3),
(71, '6903НО', 3),
(71, '6904ДО', 3),
(71, '6904НО', 3),
(71, '6905ДО', 3),
(71, '6906ДО', 3),
(71, '691', 3),
(71, '692', 3),
(71, '692М', 2),
(57, '701', 2),
(72, '701м', 2),
(72, '701Мпо', 2),
(70, '701Мусо', 2),
(57, '701П', 2),
(72, '701э', 2),
(72, '706М', 2),
(70, '709М', 2),
(72, '7101Мпо', 1),
(70, '7101Мусо', 1),
(57, '7101П', 1),
(72, '711', 1),
(72, '716М', 1),
(70, '719М', 1),
(72, '7701м(ГМУ)', 5),
(57, '7701П', 5),
(72, '7701э(ФиК)', 5),
(57, '7702П', 5),
(72, '771', 5),
(72, '7801м(ГМУ)', 4),
(57, '7801П', 4),
(72, '7801э(ФиК)', 4),
(57, '7802П', 3),
(57, '7802П', 4),
(72, '781', 4),
(72, '784', 4),
(72, '785', 4),
(72, '7901м(ГМУ)', 3),
(72, '7901Мпо', 3),
(70, '7901Мусо', 3),
(57, '7901П', 3),
(72, '7901э(ФиК)', 3),
(72, '791', 3),
(72, '795', 3),
(68, '801', 2),
(68, '801ЛО', 2),
(68, '801М', 2),
(68, '801Мппио', 2),
(68, '801Мппо', 2),
(68, '801Мппп', 2),
(68, '801Мсдо', 2),
(68, '801ОФ', 2),
(68, '801ППО', 2),
(68, '801ПСП', 2),
(68, '801СПП', 2),
(68, '802', 2),
(68, '802ЛО', 2),
(68, '802Мсдо', 2),
(68, '802ППО', 2),
(68, '802ПСП', 2),
(68, '803', 2),
(68, '803ЛО', 2),
(68, '803М', 2),
(68, '805', 2),
(68, '805М', 2),
(68, '806М', 2),
(68, '8101ЛО', 1),
(68, '8101Мппио', 1),
(68, '8101Мппо', 1),
(68, '8101Мппп', 1),
(68, '8101Мсдо', 1),
(68, '8101ОФ', 1),
(68, '8101ППО', 1),
(68, '8101ПСП', 1),
(68, '8101СПП', 1),
(68, '8102ЛО', 1),
(68, '8102Мсдо', 1),
(68, '8102ПСП', 1),
(68, '8103ЛО', 1),
(68, '8103ПСП', 1),
(68, '811', 1),
(68, '811М', 1),
(68, '812', 1),
(68, '813', 1),
(68, '813М', 1),
(68, '813оз', 1),
(68, '815', 1),
(68, '815М', 1),
(68, '816М', 1),
(68, '8701ППО', 4),
(68, '8701ППО', 5),
(68, '8701СПП', 5),
(68, '8702ППО', 4),
(68, '8702ППО', 5),
(68, '8702СПП', 5),
(68, '8801ЛО', 4),
(68, '8801Мппо', 3),
(68, '8801ОФ', 4),
(68, '8801ППО', 4),
(68, '8801ПСП', 4),
(68, '8801СПП', 4),
(68, '8802ЛО', 3),
(68, '8802ЛО', 4),
(68, '8802ППО', 4),
(68, '8802ПСП', 4),
(68, '8803ЛО', 4),
(68, '881', 4),
(68, '882', 4),
(68, '883', 4),
(68, '885', 4),
(68, '8901ЛО', 3),
(68, '8901Мппио', 3),
(68, '8901Мппо', 3),
(68, '8901Мппп', 3),
(68, '8901ОФ', 3),
(68, '8901ППО', 3),
(68, '8901ПСП', 3),
(68, '8901СПП', 3),
(68, '8902ЛО', 3),
(68, '8902Мсдо', 3),
(68, '8902ППО', 3),
(68, '8902ПСП', 3),
(68, '8903ЛО', 3),
(68, '891', 3),
(68, '892', 3),
(68, '893', 3),
(68, '895', 3),
(68, '9701ЛО', 5),
(68, '9701Мппио', 3),
(68, '9701ОФ', 5),
(68, '9701ПСП', 5),
(68, '9702ЛО', 5),
(68, '9702ПСП', 5),
(68, '9703ЛО', 5),
(68, '9703ПСП', 5),
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
(9, '2023_03_21_144243_add_is_admin_to_users_table', 4),
(10, '2023_05_16_152547_migration_name', 5);

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
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `fio` text NOT NULL,
  `spec` text DEFAULT NULL,
  `adress` text DEFAULT NULL,
  `tel` tinytext DEFAULT NULL,
  `email` tinytext DEFAULT NULL,
  `spec_napravl` text DEFAULT NULL,
  `forma` varchar(20) DEFAULT NULL,
  `sroki` tinytext DEFAULT NULL,
  `facultet` text DEFAULT NULL,
  `kafedra` varchar(50) DEFAULT NULL,
  `rukov` varchar(50) DEFAULT NULL,
  `tema` varchar(100) DEFAULT NULL,
  `gruppa` int(10) DEFAULT NULL,
  `edecanat_id` int(15) DEFAULT NULL,
  `fac_id` int(10) DEFAULT NULL,
  `course` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `user_id`, `fio`, `spec`, `adress`, `tel`, `email`, `spec_napravl`, `forma`, `sroki`, `facultet`, `kafedra`, `rukov`, `tema`, `gruppa`, `edecanat_id`, `fac_id`, `course`) VALUES
(9932, 107657, 'Галкин Владимир Александрович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 54717, NULL, 3),
(9945, 107670, 'Родиков Кирилл Александрович', NULL, NULL, NULL, NULL, '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', 'Кафедра информатики', 'Стась А.Н.', NULL, 403, 55864, NULL, 3),
(12510, 112291, 'Картаков Максим Евгеньевич', NULL, NULL, NULL, NULL, '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57978, NULL, 3),
(12511, 112292, 'Максудов Усмон Максудович', NULL, NULL, NULL, NULL, '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', NULL, 'Шайдо Ю.А.', NULL, 403, 57926, NULL, 3),
(12512, 112293, 'Давыдов Антон Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57912, NULL, 3),
(12513, 112294, 'Чередова Анастасия Николаевна', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57920, NULL, 3),
(12514, 112295, 'Бахтин Алексей Константинович', NULL, NULL, NULL, 'bahtin685@gmail.com', '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57909, NULL, 3),
(12515, 112296, 'Конончик Станислав Евгеньевич', NULL, NULL, NULL, 'kononchiks@gmail.com', '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', 'ФМФ', NULL, NULL, 403, 57924, NULL, 3),
(12517, 112298, 'Шталина Екатерина Сергеевна', NULL, NULL, NULL, NULL, '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57928, NULL, 3),
(12518, 112299, 'Политыкин Владислав Вячеславович', NULL, NULL, NULL, NULL, '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57916, NULL, 3),
(12519, 112300, 'Кузин Дмитрий Николаевич', NULL, NULL, NULL, NULL, '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57925, NULL, 3),
(12520, 112301, 'Габелкова Лада Алексеевна', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57985, NULL, 3),
(12521, 112302, 'Бубневич Кирилл Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57910, NULL, 3),
(12522, 112303, 'Гаврилов Дмитрий Владимирович', NULL, NULL, NULL, NULL, '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57911, NULL, 3),
(12523, 112304, 'Батрацкий Данил Алексеевич', NULL, NULL, NULL, NULL, '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57908, NULL, 3),
(12524, 112305, 'Журавлева Дарья Валентиновна', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57913, NULL, 3),
(12525, 112306, 'Тунгусова Елизавета Алексеевна', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57919, NULL, 3),
(12527, 112308, 'Папка Яков Валерьевич', NULL, NULL, NULL, 'raydzy777@gmail.com', '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 58245, NULL, 3),
(12528, 112309, 'Полевечко Евгений Юрьевич', NULL, NULL, NULL, NULL, '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57927, NULL, 3),
(12530, 112311, 'Сальцова Полина Геннадьевна', NULL, NULL, NULL, NULL, '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57918, NULL, 3),
(12531, 112312, 'Ковтун Андрей Андреевич', NULL, NULL, NULL, NULL, '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57923, NULL, 3),
(12574, 112360, 'Радченко Данил', NULL, NULL, NULL, NULL, '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 57917, NULL, 3),
(12575, 112361, 'Лельков Алексей Борисович', NULL, NULL, NULL, 'marusalik@gmail.com', '09.03.02 Информационные системы и технологии', NULL, NULL, 'Физико-математический факультет', 'Физико-математический факультет', '', NULL, 403, 57914, NULL, 3),
(12800, 112593, 'Симон Семен Сергеевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 58157, NULL, 3),
(14247, 114072, 'Федотов Матвей Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Физико-математический факультет', NULL, NULL, NULL, 403, 60857, NULL, 3);

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
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `edecanat_id` (`edecanat_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
