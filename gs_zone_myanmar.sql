-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 03:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gs_zone_myanmar`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `photo`, `link`, `type`, `created_at`, `updated_at`) VALUES
(2, '6296cc1dafd52_photo.jpg', 'https://www.google.com/', 3, '2022-05-31 19:47:01', '2022-05-31 19:47:01'),
(3, '62984051c32d1_photo.png', 'https://www.google.com/', 1, '2022-06-01 22:15:06', '2022-06-01 22:15:06'),
(4, '6298406372b1a_photo.png', 'https://www.google.com/', 2, '2022-06-01 22:15:24', '2022-06-01 22:15:24'),
(5, '629840770d3a2_photo.jpg', 'https://www.google.com/', 3, '2022-06-01 22:15:43', '2022-06-01 22:15:43'),
(6, '62984085bfc0a_photo.jpg', 'https://www.google.com/', 3, '2022-06-01 22:15:58', '2022-06-01 22:15:58'),
(7, '6298409824405_photo.png', 'https://www.google.com/', 2, '2022-06-01 22:16:16', '2022-06-01 22:16:16'),
(8, '629883efc0ff6_photo.jpg', 'https://www.google.com/', 2, '2022-06-02 03:03:35', '2022-06-02 03:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Racing', '2021-01-08 05:53:18', '2021-01-08 05:54:15'),
(2, 'Action', '2021-01-08 05:53:56', '2021-01-08 05:53:56'),
(3, 'Casual', '2021-01-08 06:49:52', '2021-01-08 06:49:52'),
(4, 'Educational', '2021-01-08 06:50:01', '2021-01-08 06:50:01'),
(5, 'Arcade', '2021-01-08 06:50:11', '2021-01-08 06:50:11'),
(6, 'Simulation', '2021-01-08 06:50:20', '2021-01-08 06:50:20'),
(7, 'Strategy', '2021-01-08 06:50:30', '2021-01-08 06:50:30'),
(8, 'Sports', '2021-01-08 06:50:37', '2021-01-08 06:50:37'),
(9, 'Adventure', '2021-01-08 06:50:47', '2021-01-08 06:50:47'),
(10, '18 +', '2021-01-08 06:51:12', '2021-01-08 06:51:12'),
(11, 'Fighting', '2021-01-10 09:01:42', '2021-01-10 09:01:42'),
(12, 'PPSSPP', '2021-01-11 15:47:14', '2021-01-11 15:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 25, 'hello', '2021-01-12 15:13:14', '2021-01-12 15:13:14'),
(2, 25, 'tesiting', '2021-01-12 15:13:24', '2021-01-12 15:13:24'),
(3, 25, 'i am aung htet chon', '2021-01-12 15:16:38', '2021-01-12 15:16:38'),
(5, 35, 'ကျေးဇူးအများကြီးတင်ပါတယ်ဗျ ဂိမ်းတင်ပေးလို့', '2021-01-12 15:49:49', '2021-01-12 15:49:49'),
(6, 35, 'ကျေးဇူးအများကြီးတင်ပါတယ်ဗျ ဂိမ်းတင်ပေးလို့', '2021-01-12 15:50:17', '2021-01-12 15:50:17'),
(7, 28, 'ကျေးဇူးအများကြီးတင်ပါတယ်ဗျ ဂိမ်းတင်ပေးလို့', '2021-01-12 15:50:32', '2021-01-12 15:50:32'),
(9, 30, 'hello', '2021-01-12 17:07:28', '2021-01-12 17:07:28'),
(10, 29, 'summer time', '2021-01-12 17:07:43', '2021-01-12 17:07:43'),
(11, 24, 'hey', '2021-01-13 08:00:16', '2021-01-13 08:00:16'),
(12, 26, 'fds', '2021-01-13 11:03:11', '2021-01-13 11:03:11'),
(13, 32, 'hye', '2021-01-18 00:45:15', '2021-01-18 00:45:15'),
(14, 32, 'hi', '2021-01-18 00:47:57', '2021-01-18 00:47:57'),
(15, 33, 'l,,,olommo', '2021-03-17 02:40:45', '2021-03-17 02:40:45'),
(16, 29, 'Hi', '2021-04-21 23:02:17', '2021-04-21 23:02:17'),
(17, 26, 'hh', '2021-05-02 02:27:46', '2021-05-02 02:27:46'),
(18, 24, 'jjj', '2021-05-04 22:09:15', '2021-05-04 22:09:15'),
(19, 33, 'knj', '2021-08-25 05:59:22', '2021-08-25 05:59:22'),
(20, 46, 'hi', '2021-12-13 02:29:31', '2021-12-13 02:29:31'),
(21, 32, 'lee', '2022-05-24 21:40:46', '2022-05-24 21:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_01_08_114239_create_categories_table', 1),
(4, '2021_01_08_114322_create_posts_table', 1),
(5, '2021_01_08_114418_create_comments_table', 1),
(6, '2021_01_08_114446_create_request_apps_table', 1),
(7, '2021_01_08_114507_create_ratings_table', 1),
(8, '2021_01_08_131618_create_photos_table', 2),
(9, '2021_01_09_224206_create_suggests_table', 3),
(11, '2021_01_10_191259_create_traffic_table', 4),
(12, '2015_03_07_311070_create_tracker_paths_table', 5),
(13, '2015_03_07_311071_create_tracker_queries_table', 5),
(14, '2015_03_07_311072_create_tracker_queries_arguments_table', 5),
(15, '2015_03_07_311073_create_tracker_routes_table', 5),
(16, '2015_03_07_311074_create_tracker_routes_paths_table', 5),
(17, '2015_03_07_311075_create_tracker_route_path_parameters_table', 5),
(18, '2015_03_07_311076_create_tracker_agents_table', 5),
(19, '2015_03_07_311077_create_tracker_cookies_table', 5),
(20, '2015_03_07_311078_create_tracker_devices_table', 5),
(21, '2015_03_07_311079_create_tracker_domains_table', 5),
(22, '2015_03_07_311080_create_tracker_referers_table', 5),
(23, '2015_03_07_311081_create_tracker_geoip_table', 5),
(24, '2015_03_07_311082_create_tracker_sessions_table', 5),
(25, '2015_03_07_311083_create_tracker_errors_table', 5),
(26, '2015_03_07_311084_create_tracker_system_classes_table', 5),
(27, '2015_03_07_311085_create_tracker_log_table', 5),
(28, '2015_03_07_311086_create_tracker_events_table', 5),
(29, '2015_03_07_311087_create_tracker_events_log_table', 5),
(30, '2015_03_07_311088_create_tracker_sql_queries_table', 5),
(31, '2015_03_07_311089_create_tracker_sql_query_bindings_table', 5),
(32, '2015_03_07_311090_create_tracker_sql_query_bindings_parameters_table', 5),
(33, '2015_03_07_311091_create_tracker_sql_queries_log_table', 5),
(34, '2015_03_07_311092_create_tracker_connections_table', 5),
(35, '2015_03_07_311093_create_tracker_tables_relations', 5),
(36, '2015_03_13_311094_create_tracker_referer_search_term_table', 5),
(37, '2015_03_13_311095_add_tracker_referer_columns', 5),
(38, '2015_11_23_311096_add_tracker_referer_column_to_log', 5),
(39, '2015_11_23_311097_create_tracker_languages_table', 5),
(40, '2015_11_23_311098_add_language_id_column_to_sessions', 5),
(41, '2015_11_23_311099_add_tracker_language_foreign_key_to_sessions', 5),
(42, '2015_11_23_311100_add_nullable_to_tracker_error', 5),
(43, '2017_01_31_311101_fix_agent_name', 5),
(44, '2017_06_20_311102_add_agent_name_hash', 5),
(45, '2017_12_13_150000_fix_query_arguments', 5),
(46, '2021_01_11_201623_create_viewers_table', 6),
(47, '2016_06_01_000001_create_oauth_auth_codes_table', 7),
(48, '2016_06_01_000002_create_oauth_access_tokens_table', 7),
(49, '2016_06_01_000003_create_oauth_refresh_tokens_table', 7),
(50, '2016_06_01_000004_create_oauth_clients_table', 7),
(51, '2016_06_01_000005_create_oauth_personal_access_clients_table', 7),
(52, '2021_01_12_223115_create_games_table', 7),
(53, '2021_03_17_090534_create_software_table', 7),
(54, '2014_10_12_000000_create_users_table', 8),
(56, '2022_05_31_093610_create_ads_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'iRgwnFTrFTdsiC9QFg0P11UurpgR4Uc1ThjVLuVx', 'http://localhost', 1, 0, 0, '2022-05-15 17:07:28', '2022-05-15 17:07:28'),
(2, NULL, 'Laravel Password Grant Client', 'xRXmZa7IGGRxVpNbU5DPuKaCYSRevosP1sV5mQPv', 'http://localhost', 0, 1, 0, '2022-05-15 17:07:28', '2022-05-15 17:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-05-15 17:07:28', '2022-05-15 17:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `post_id`, `name`, `created_at`, `updated_at`) VALUES
(88, 35, '5ffc90180cd84_post.png', '2021-01-11 11:21:20', '2021-01-11 11:21:20'),
(89, 35, '5ffc901837f6b_post.png', '2021-01-11 11:21:20', '2021-01-11 11:21:20'),
(90, 35, '5ffc9018503e1_post.jpg', '2021-01-11 11:21:20', '2021-01-11 11:21:20'),
(91, 34, '5ffc9039e8231_post.png', '2021-01-11 11:21:54', '2021-01-11 11:21:54'),
(92, 34, '5ffc903a13802_post.jpg', '2021-01-11 11:21:54', '2021-01-11 11:21:54'),
(93, 33, '5ffc905f58222_post.jpg', '2021-01-11 11:22:31', '2021-01-11 11:22:31'),
(94, 33, '5ffc905f656d3_post.jpg', '2021-01-11 11:22:31', '2021-01-11 11:22:31'),
(95, 33, '5ffc905f6cd3e_post.jpg', '2021-01-11 11:22:31', '2021-01-11 11:22:31'),
(96, 33, '5ffc905f73d80_post.jpg', '2021-01-11 11:22:31', '2021-01-11 11:22:31'),
(97, 32, '5ffc9118168a3_post.jpg', '2021-01-11 11:25:36', '2021-01-11 11:25:36'),
(98, 32, '5ffc9118229e8_post.jpg', '2021-01-11 11:25:36', '2021-01-11 11:25:36'),
(99, 32, '5ffc91182a2a2_post.jpg', '2021-01-11 11:25:36', '2021-01-11 11:25:36'),
(100, 32, '5ffc911831c99_post.jpg', '2021-01-11 11:25:36', '2021-01-11 11:25:36'),
(101, 32, '5ffc911839cf5_post.jpg', '2021-01-11 11:25:36', '2021-01-11 11:25:36'),
(103, 31, '5ffc914d7f1d0_post.jpg', '2021-01-11 11:26:29', '2021-01-11 11:26:29'),
(104, 31, '5ffc914d8b512_post.jpg', '2021-01-11 11:26:29', '2021-01-11 11:26:29'),
(105, 31, '5ffc914d9801d_post.png', '2021-01-11 11:26:29', '2021-01-11 11:26:29'),
(106, 31, '5ffc914dab6b1_post.png', '2021-01-11 11:26:29', '2021-01-11 11:26:29'),
(107, 30, '5ffc919639699_post.jpg', '2021-01-11 11:27:42', '2021-01-11 11:27:42'),
(108, 30, '5ffc9196493b4_post.jpg', '2021-01-11 11:27:42', '2021-01-11 11:27:42'),
(109, 30, '5ffc919651d37_post.jpg', '2021-01-11 11:27:42', '2021-01-11 11:27:42'),
(110, 29, '5ffc91cd0c48d_post.jpg', '2021-01-11 11:28:37', '2021-01-11 11:28:37'),
(111, 29, '5ffc91cd23c70_post.jpg', '2021-01-11 11:28:37', '2021-01-11 11:28:37'),
(112, 29, '5ffc91cd37ff7_post.jpg', '2021-01-11 11:28:37', '2021-01-11 11:28:37'),
(113, 29, '5ffc91cd4c0b4_post.jpg', '2021-01-11 11:28:37', '2021-01-11 11:28:37'),
(114, 28, '5ffc922d014d7_post.jpg', '2021-01-11 11:30:13', '2021-01-11 11:30:13'),
(115, 28, '5ffc922d11c9e_post.jpg', '2021-01-11 11:30:13', '2021-01-11 11:30:13'),
(116, 28, '5ffc922d1c1a9_post.jpg', '2021-01-11 11:30:13', '2021-01-11 11:30:13'),
(117, 28, '5ffc922d267f5_post.jpg', '2021-01-11 11:30:13', '2021-01-11 11:30:13'),
(118, 27, '5ffc926380e46_post.jpg', '2021-01-11 11:31:07', '2021-01-11 11:31:07'),
(119, 27, '5ffc9263bcddf_post.jpg', '2021-01-11 11:31:07', '2021-01-11 11:31:07'),
(120, 27, '5ffc9263ee1ec_post.jpg', '2021-01-11 11:31:08', '2021-01-11 11:31:08'),
(121, 27, '5ffc92642f5c4_post.jpg', '2021-01-11 11:31:08', '2021-01-11 11:31:08'),
(122, 27, '5ffc92646389a_post.jpg', '2021-01-11 11:31:08', '2021-01-11 11:31:08'),
(123, 27, '5ffc926495c2b_post.jpg', '2021-01-11 11:31:08', '2021-01-11 11:31:08'),
(124, 26, '5ffc929dacd7c_post.jpg', '2021-01-11 11:32:05', '2021-01-11 11:32:05'),
(125, 26, '5ffc929dbe0df_post.jpg', '2021-01-11 11:32:05', '2021-01-11 11:32:05'),
(126, 26, '5ffc929dc65d1_post.jpg', '2021-01-11 11:32:05', '2021-01-11 11:32:05'),
(127, 26, '5ffc929dcf6b2_post.jpg', '2021-01-11 11:32:05', '2021-01-11 11:32:05'),
(128, 26, '5ffc929dd81fd_post.jpg', '2021-01-11 11:32:05', '2021-01-11 11:32:05'),
(129, 25, '5ffc92cf29108_post.jpg', '2021-01-11 11:32:55', '2021-01-11 11:32:55'),
(130, 25, '5ffc92cf3c374_post.jpg', '2021-01-11 11:32:55', '2021-01-11 11:32:55'),
(131, 25, '5ffc92cf4465c_post.jpg', '2021-01-11 11:32:55', '2021-01-11 11:32:55'),
(132, 25, '5ffc92cf4d3ed_post.jpg', '2021-01-11 11:32:55', '2021-01-11 11:32:55'),
(133, 25, '5ffc92cf55149_post.jpg', '2021-01-11 11:32:55', '2021-01-11 11:32:55'),
(134, 24, '5ffc92fbaa314_post.jpg', '2021-01-11 11:33:39', '2021-01-11 11:33:39'),
(135, 24, '5ffc92fbe0f3a_post.jpg', '2021-01-11 11:33:40', '2021-01-11 11:33:40'),
(136, 24, '5ffc92fc21bee_post.jpg', '2021-01-11 11:33:40', '2021-01-11 11:33:40'),
(137, 23, '5ffc94212bec1_post.jpg', '2021-01-11 11:38:33', '2021-01-11 11:38:33'),
(138, 23, '5ffc94213929d_post.jpg', '2021-01-11 11:38:33', '2021-01-11 11:38:33'),
(139, 23, '5ffc9421422b7_post.jpg', '2021-01-11 11:38:33', '2021-01-11 11:38:33'),
(140, 23, '5ffc94214adfd_post.jpg', '2021-01-11 11:38:33', '2021-01-11 11:38:33'),
(141, 22, '5ffc9452266f4_post.jpg', '2021-01-11 11:39:22', '2021-01-11 11:39:22'),
(142, 22, '5ffc94523be7c_post.jpg', '2021-01-11 11:39:22', '2021-01-11 11:39:22'),
(143, 22, '5ffc94528a48a_post.jpg', '2021-01-11 11:39:22', '2021-01-11 11:39:22'),
(144, 22, '5ffc9452a60d0_post.jpg', '2021-01-11 11:39:22', '2021-01-11 11:39:22'),
(145, 21, '5ffc949cee9c4_post.jpg', '2021-01-11 11:40:37', '2021-01-11 11:40:37'),
(146, 21, '5ffc949d15deb_post.jpg', '2021-01-11 11:40:37', '2021-01-11 11:40:37'),
(147, 21, '5ffc949d2c8d4_post.jpg', '2021-01-11 11:40:37', '2021-01-11 11:40:37'),
(148, 21, '5ffc949d453d6_post.jpg', '2021-01-11 11:40:37', '2021-01-11 11:40:37'),
(150, 37, '628dd01ead5b9_post.jpg', '2022-05-25 00:13:42', '2022-05-25 00:13:42'),
(151, 37, '628dd01eb8a6b_post.jpg', '2022-05-25 00:13:42', '2022-05-25 00:13:42'),
(152, 37, '628dd01ec428f_post.jpg', '2022-05-25 00:13:42', '2022-05-25 00:13:42'),
(153, 38, '628dd035d7903_post.jpg', '2022-05-25 00:14:06', '2022-05-25 00:14:06'),
(154, 38, '628dd036044ea_post.jpg', '2022-05-25 00:14:06', '2022-05-25 00:14:06'),
(155, 38, '628dd036222f9_post.jpg', '2022-05-25 00:14:06', '2022-05-25 00:14:06'),
(156, 40, '628dd076d1bba_post.jpg', '2022-05-25 00:15:11', '2022-05-25 00:15:11'),
(157, 40, '628dd077054c4_post.jpg', '2022-05-25 00:15:11', '2022-05-25 00:15:11'),
(158, 40, '628dd07737ae5_post.jpg', '2022-05-25 00:15:11', '2022-05-25 00:15:11'),
(159, 41, '628dd087e9c77_post.jpg', '2022-05-25 00:15:28', '2022-05-25 00:15:28'),
(160, 41, '628dd0882fe5c_post.jpg', '2022-05-25 00:15:28', '2022-05-25 00:15:28'),
(161, 41, '628dd088587c0_post.jpg', '2022-05-25 00:15:28', '2022-05-25 00:15:28'),
(162, 42, '628dd09cad297_post.jpg', '2022-05-25 00:15:48', '2022-05-25 00:15:48'),
(163, 42, '628dd09cccf0a_post.jpg', '2022-05-25 00:15:49', '2022-05-25 00:15:49'),
(164, 42, '628dd09d0985c_post.jpg', '2022-05-25 00:15:49', '2022-05-25 00:15:49'),
(165, 43, '628dd0b52e0e2_post.jpg', '2022-05-25 00:16:13', '2022-05-25 00:16:13'),
(166, 43, '628dd0b5680e6_post.jpg', '2022-05-25 00:16:13', '2022-05-25 00:16:13'),
(167, 43, '628dd0b595cb1_post.jpg', '2022-05-25 00:16:13', '2022-05-25 00:16:13'),
(168, 44, '628dd0cacdd50_post.jpg', '2022-05-25 00:16:35', '2022-05-25 00:16:35'),
(169, 44, '628dd0cb2d876_post.jpg', '2022-05-25 00:16:35', '2022-05-25 00:16:35'),
(170, 44, '628dd0cb648e2_post.png', '2022-05-25 00:16:35', '2022-05-25 00:16:35'),
(171, 45, '628dd0e2a5d99_post.jpg', '2022-05-25 00:16:58', '2022-05-25 00:16:58'),
(172, 45, '628dd0e2ce78a_post.jpg', '2022-05-25 00:16:58', '2022-05-25 00:16:58'),
(173, 45, '628dd0e300e03_post.jpg', '2022-05-25 00:16:59', '2022-05-25 00:16:59'),
(174, 46, '628dd0f551f42_post.jpg', '2022-05-25 00:17:17', '2022-05-25 00:17:17'),
(175, 46, '628dd0f5891a0_post.jpg', '2022-05-25 00:17:17', '2022-05-25 00:17:17'),
(176, 46, '628dd0f5a7ae3_post.jpg', '2022-05-25 00:17:17', '2022-05-25 00:17:17'),
(177, 46, '628dd0f5cbabe_post.jpg', '2022-05-25 00:17:17', '2022-05-25 00:17:17'),
(178, 60, '628dd22264d64_post.jpg', '2022-05-25 00:22:18', '2022-05-25 00:22:18'),
(179, 60, '628dd222e67e5_post.jpg', '2022-05-25 00:22:19', '2022-05-25 00:22:19'),
(180, 59, '628dd2868f5d3_post.jpg', '2022-05-25 00:23:59', '2022-05-25 00:23:59'),
(181, 59, '628dd28705ae7_post.jpg', '2022-05-25 00:23:59', '2022-05-25 00:23:59'),
(182, 59, '628dd2874c593_post.jpg', '2022-05-25 00:23:59', '2022-05-25 00:23:59'),
(183, 59, '628dd287c3a11_post.jpg', '2022-05-25 00:24:00', '2022-05-25 00:24:00'),
(184, 58, '628dd29a4fc9f_post.jpg', '2022-05-25 00:24:18', '2022-05-25 00:24:18'),
(185, 58, '628dd29abf969_post.jpg', '2022-05-25 00:24:19', '2022-05-25 00:24:19'),
(186, 58, '628dd29b3f838_post.jpg', '2022-05-25 00:24:19', '2022-05-25 00:24:19'),
(187, 57, '628dd2c80e034_post.jpg', '2022-05-25 00:25:04', '2022-05-25 00:25:04'),
(188, 57, '628dd2c8405c6_post.jpg', '2022-05-25 00:25:04', '2022-05-25 00:25:04'),
(189, 57, '628dd2c881aa8_post.jpg', '2022-05-25 00:25:04', '2022-05-25 00:25:04'),
(190, 57, '628dd2c8b1055_post.jpg', '2022-05-25 00:25:05', '2022-05-25 00:25:05'),
(191, 57, '628dd2c9130b7_post.jpg', '2022-05-25 00:25:05', '2022-05-25 00:25:05'),
(192, 56, '628dd2fa0c663_post.jpg', '2022-05-25 00:25:54', '2022-05-25 00:25:54'),
(193, 56, '628dd2fa35fc8_post.jpg', '2022-05-25 00:25:54', '2022-05-25 00:25:54'),
(194, 56, '628dd2fa4ff43_post.jpg', '2022-05-25 00:25:54', '2022-05-25 00:25:54'),
(195, 56, '628dd2fa749c0_post.jpg', '2022-05-25 00:25:54', '2022-05-25 00:25:54'),
(196, 55, '628dd3124ffb5_post.jpg', '2022-05-25 00:26:18', '2022-05-25 00:26:18'),
(197, 55, '628dd31281967_post.jpg', '2022-05-25 00:26:18', '2022-05-25 00:26:18'),
(198, 55, '628dd3129f7b2_post.jpg', '2022-05-25 00:26:18', '2022-05-25 00:26:18'),
(199, 55, '628dd312c4182_post.jpg', '2022-05-25 00:26:19', '2022-05-25 00:26:19'),
(200, 54, '628dd6e0a08c1_post.jpg', '2022-05-25 00:42:32', '2022-05-25 00:42:32'),
(201, 54, '628dd6e0c165e_post.jpg', '2022-05-25 00:42:32', '2022-05-25 00:42:32'),
(202, 54, '628dd6e0e7fff_post.jpg', '2022-05-25 00:42:33', '2022-05-25 00:42:33'),
(203, 54, '628dd6e111d9b_post.jpg', '2022-05-25 00:42:33', '2022-05-25 00:42:33'),
(204, 53, '628dd709e4509_post.jpg', '2022-05-25 00:43:14', '2022-05-25 00:43:14'),
(205, 53, '628dd70a11a97_post.jpg', '2022-05-25 00:43:14', '2022-05-25 00:43:14'),
(206, 53, '628dd70a4d963_post.jpg', '2022-05-25 00:43:14', '2022-05-25 00:43:14'),
(207, 53, '628dd70a7267c_post.jpg', '2022-05-25 00:43:14', '2022-05-25 00:43:14'),
(208, 53, '628dd70aa0993_post.jpg', '2022-05-25 00:43:14', '2022-05-25 00:43:14'),
(209, 53, '628dd70acf43a_post.jpg', '2022-05-25 00:43:15', '2022-05-25 00:43:15'),
(210, 68, '628dd7cc1eafc_post.jpg', '2022-05-25 00:46:28', '2022-05-25 00:46:28'),
(211, 68, '628dd7cc3611b_post.jpg', '2022-05-25 00:46:28', '2022-05-25 00:46:28'),
(212, 68, '628dd7cc547fa_post.jpg', '2022-05-25 00:46:28', '2022-05-25 00:46:28'),
(213, 68, '628dd7cc85e04_post.jpg', '2022-05-25 00:46:28', '2022-05-25 00:46:28'),
(214, 67, '628dd84d848f4_post.jpg', '2022-05-25 00:48:37', '2022-05-25 00:48:37'),
(215, 67, '628dd84da559e_post.jpg', '2022-05-25 00:48:38', '2022-05-25 00:48:38'),
(216, 67, '628dd84e18b37_post.jpg', '2022-05-25 00:48:38', '2022-05-25 00:48:38'),
(217, 67, '628dd84e36320_post.jpg', '2022-05-25 00:48:38', '2022-05-25 00:48:38'),
(218, 66, '628dd867cbd24_post.jpg', '2022-05-25 00:49:04', '2022-05-25 00:49:04'),
(219, 66, '628dd868102c0_post.jpg', '2022-05-25 00:49:04', '2022-05-25 00:49:04'),
(220, 66, '628dd8687e53c_post.jpg', '2022-05-25 00:49:04', '2022-05-25 00:49:04'),
(221, 66, '628dd868cceb9_post.jpg', '2022-05-25 00:49:05', '2022-05-25 00:49:05'),
(222, 66, '628dd8691b0ca_post.jpg', '2022-05-25 00:49:05', '2022-05-25 00:49:05'),
(223, 65, '628dd8806cc2d_post.jpg', '2022-05-25 00:49:28', '2022-05-25 00:49:28'),
(224, 65, '628dd880b3f05_post.jpg', '2022-05-25 00:49:28', '2022-05-25 00:49:28'),
(225, 65, '628dd880dce79_post.jpg', '2022-05-25 00:49:29', '2022-05-25 00:49:29'),
(226, 65, '628dd88116f5d_post.jpg', '2022-05-25 00:49:29', '2022-05-25 00:49:29'),
(227, 64, '628dd91f96a60_post.jpg', '2022-05-25 00:52:07', '2022-05-25 00:52:07'),
(228, 64, '628dd91fba31c_post.jpg', '2022-05-25 00:52:07', '2022-05-25 00:52:07'),
(229, 64, '628dd91fdc5c2_post.jpg', '2022-05-25 00:52:07', '2022-05-25 00:52:07'),
(230, 64, '628dd91ff1bc8_post.jpg', '2022-05-25 00:52:08', '2022-05-25 00:52:08'),
(231, 63, '628ddab6b8001_post.jpg', '2022-05-25 00:58:54', '2022-05-25 00:58:54'),
(232, 63, '628ddab6e5aea_post.jpg', '2022-05-25 00:58:55', '2022-05-25 00:58:55'),
(233, 63, '628ddab72067f_post.jpg', '2022-05-25 00:58:55', '2022-05-25 00:58:55'),
(234, 63, '628ddab744b99_post.jpg', '2022-05-25 00:58:55', '2022-05-25 00:58:55'),
(235, 63, '628ddab7775f8_post.jpg', '2022-05-25 00:58:55', '2022-05-25 00:58:55'),
(236, 63, '628ddab7cb460_post.jpg', '2022-05-25 00:58:56', '2022-05-25 00:58:56'),
(237, 62, '628ddacc155c5_post.jpg', '2022-05-25 00:59:16', '2022-05-25 00:59:16'),
(238, 62, '628ddacc415f5_post.jpg', '2022-05-25 00:59:16', '2022-05-25 00:59:16'),
(239, 62, '628ddacca8301_post.jpg', '2022-05-25 00:59:16', '2022-05-25 00:59:16'),
(240, 62, '628ddacceeb10_post.jpg', '2022-05-25 00:59:17', '2022-05-25 00:59:17'),
(241, 61, '628ddadb49fe2_post.jpg', '2022-05-25 00:59:31', '2022-05-25 00:59:31'),
(242, 61, '628ddadb8ec3b_post.jpg', '2022-05-25 00:59:31', '2022-05-25 00:59:31'),
(243, 61, '628ddadbc5503_post.jpg', '2022-05-25 00:59:32', '2022-05-25 00:59:32'),
(244, 61, '628ddadc4f87f_post.jpg', '2022-05-25 00:59:32', '2022-05-25 00:59:32'),
(245, 76, '628de9a290f08_post.jpg', '2022-05-25 02:02:34', '2022-05-25 02:02:34'),
(246, 76, '628de9a2ca1fa_post.jpg', '2022-05-25 02:02:35', '2022-05-25 02:02:35'),
(247, 76, '628de9a33f9b2_post.jpg', '2022-05-25 02:02:35', '2022-05-25 02:02:35'),
(248, 76, '628de9a38f05d_post.jpg', '2022-05-25 02:02:36', '2022-05-25 02:02:36'),
(249, 75, '628deb56b30f8_post.jpg', '2022-05-25 02:09:50', '2022-05-25 02:09:50'),
(250, 75, '628deb56e19c1_post.jpg', '2022-05-25 02:09:51', '2022-05-25 02:09:51'),
(251, 75, '628deb5753afe_post.jpg', '2022-05-25 02:09:51', '2022-05-25 02:09:51'),
(252, 75, '628deb57ac726_post.jpg', '2022-05-25 02:09:52', '2022-05-25 02:09:52'),
(253, 75, '628deb580700f_post.jpg', '2022-05-25 02:09:52', '2022-05-25 02:09:52'),
(254, 74, '628deb6a2dffe_post.jpg', '2022-05-25 02:10:10', '2022-05-25 02:10:10'),
(255, 74, '628deb6aa76ae_post.jpg', '2022-05-25 02:10:11', '2022-05-25 02:10:11'),
(256, 74, '628deb6b12b0c_post.jpg', '2022-05-25 02:10:11', '2022-05-25 02:10:11'),
(257, 74, '628deb6b67600_post.jpg', '2022-05-25 02:10:11', '2022-05-25 02:10:11'),
(258, 74, '628deb6bba6a4_post.jpg', '2022-05-25 02:10:12', '2022-05-25 02:10:12'),
(259, 73, '628deb7b34112_post.jpg', '2022-05-25 02:10:27', '2022-05-25 02:10:27'),
(260, 73, '628deb7b94df0_post.jpg', '2022-05-25 02:10:27', '2022-05-25 02:10:27'),
(261, 73, '628deb7bcb836_post.jpg', '2022-05-25 02:10:28', '2022-05-25 02:10:28'),
(262, 72, '628deb8d2b785_post.jpg', '2022-05-25 02:10:45', '2022-05-25 02:10:45'),
(263, 72, '628deb8d9661a_post.jpg', '2022-05-25 02:10:45', '2022-05-25 02:10:45'),
(264, 72, '628deb8ddf0fe_post.jpg', '2022-05-25 02:10:46', '2022-05-25 02:10:46'),
(265, 71, '628deb9eed524_post.jpg', '2022-05-25 02:11:03', '2022-05-25 02:11:03'),
(266, 71, '628deb9f2fe72_post.jpg', '2022-05-25 02:11:03', '2022-05-25 02:11:03'),
(267, 71, '628deb9f7cbb0_post.jpg', '2022-05-25 02:11:03', '2022-05-25 02:11:03'),
(268, 70, '628debb507c16_post.jpg', '2022-05-25 02:11:25', '2022-05-25 02:11:25'),
(269, 70, '628debb558288_post.jpg', '2022-05-25 02:11:25', '2022-05-25 02:11:25'),
(270, 70, '628debb581f9d_post.jpg', '2022-05-25 02:11:26', '2022-05-25 02:11:26'),
(271, 69, '628debc78807c_post.jpg', '2022-05-25 02:11:43', '2022-05-25 02:11:43'),
(272, 69, '628debc7ce6d4_post.jpg', '2022-05-25 02:11:44', '2022-05-25 02:11:44'),
(273, 69, '628debc83240d_post.jpg', '2022-05-25 02:11:44', '2022-05-25 02:11:44'),
(274, 69, '628debc892719_post.jpg', '2022-05-25 02:11:44', '2022-05-25 02:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `updated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `developer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link3` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `logo`, `type`, `category_id`, `updated`, `size`, `version`, `requirement`, `developer`, `description`, `features`, `video`, `link1`, `link2`, `link3`, `created_at`, `updated_at`) VALUES
(21, 'Sengoku Basara 2 Android', '5ffc967884eea_logo.jpg', 'Offline (PPSSPP)', 11, 'Jan 08, 2021', '4.08Gb,8.07Mb', '2.34', 'Snapdragon 660+', 'AUgyc', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://www.mediafire.com/file/oxb1y05jh2txh5v/BASARA_2.rar/file', NULL, 'https://www.mediafire.com/file/bjgu190w7vgr9ch/Dolphin_5.0-10000-mmj.apk/file', '2021-01-08 09:12:50', '2021-01-11 11:48:32'),
(22, 'Def Jam Fighter - Story Mode Android', '5ffc945fcf51e_logo.jpg', 'Offline (PSSPP)', 2, 'Jan,10, 2021', '941.2MB', '4.3', 'Snapdragon 660 & Up', 'GameCube', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.mediafire.com%2Fdownload%2Fbjgu190w7vgr9ch%3Ffbclid%3DIwAR15H1aQoYf52eGzWP22LT-KbvwiAWa507ZLMCXxVelDKNqC29ow5UhCuOc&h=AT0LbS25jUGYohG9dAS1ouheSQ5x6lxRPH5h3veDOoHMOX9h7Mw0ukkvwzqY_5MsdfwH_TrpCPPou9Sw7Y0zN1M_AUUYBF2B48adlebLmkRFiibZTf_wxRvSAgfKQLhLhNL-&__tn__=R]-R&c[0]=AT388-21O2_xnLyPD_6uPMVTEQmRplYU8JMHDI0dThNEavLVNKPygA4a39UQJ1G8w4Mjn03W_gTi4WXwizxOR7HHOQeuioDODmjboBef4bUrOOguFkgPq31MJXX1A3iSPsFmeosr23FG0CT6V6mjuEdzwQk5lzHD56MtVWNOEMnndQ', 'https://l.facebook.com/l.php?u=https%3A%2F%2Froms-download.com%2Froms%2Fgamecube%2Fdef-jam-fight-for-ny-usa%3Ffbclid%3DIwAR3R6NH7xPPxB-UkLREogEcmaJ1RXUoncNLF73rCaMTCkJSLjq6GOYkEfA0&h=AT2gYCHQqfhNx3HisE0Ef9tMP5iaopF_7-n1N1n53-n-TENECEXkkT-NFBFw7Fief5TgzxjdY2g8MQHJtQTesxNiF_sUHM8hWg5n60XvV8QnAUi6l1hjVEUEYHXgql-3Bh1G&__tn__=R]-R&c[0]=AT388-21O2_xnLyPD_6uPMVTEQmRplYU8JMHDI0dThNEavLVNKPygA4a39UQJ1G8w4Mjn03W_gTi4WXwizxOR7HHOQeuioDODmjboBef4bUrOOguFkgPq31MJXX1A3iSPsFmeosr23FG0CT6V6mjuEdzwQk5lzHD56MtVWNOEMnndQ', NULL, '2021-01-09 20:58:53', '2021-01-11 11:39:35'),
(23, 'Code Asylum (Android Offline)', '5ffc942a8386c_logo.jpg', 'Offline', 9, 'Jan,10, 2021', '686.5 Mb', '3.6', 'Android 7.0+', 'ASZ Studio', 'Lorem ipsum dolor sit amet, consectetur adipisicingt. cusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://dc445.4sync.com/download/Ms_65yKr/cocodeasylumCodeAsylum_mod_35_.apk?dsid=L9kgF_2Y.9d7f35e901f9a4511b693fd95ddf3cff&sbsr=70be77633ae8cc290736d0b0335302eba66&bip=MjAzLjgxLjkxLjE5OA&lgfp=40', NULL, NULL, '2021-01-09 21:11:43', '2021-01-11 11:38:42'),
(24, 'Devil May Cry 3: Dante\'s Awakening', '5ffc93f58c3a4_logo.jpg', 'Offline (PSSPP)', 3, 'Jan 08, 2021', '2.9Gb', '3.0', 'Android 7.0+', 'Capcom', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://m.apkpure.com/ps2-emulator-damonps2-ppsspp-ps2-psp-ps2-emua/com.damonplay.damonps2.free/download?from=details', 'https://coolrom.com.au/roms/ps2/41830/Devil_May_Cry_3_-_Dante%27s_Awakening_-_Special_Edition.php?fbclid=IwAR1aLPONqZoab_oAPZbRTs1A49_RYFK0ElwwwoV_POWgAi5pxFfmRdivO-A', NULL, '2021-01-09 21:38:40', '2021-01-11 11:37:49'),
(25, 'Marsus:Survive on Mars Android Offline', '5ffc92d9b76bf_logo.png', 'Offline', 7, 'Jan 08, 2021', '68.5 Mb', '1.0', 'Android 4.1+', 'Asif Azad', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/3N1U3LwD#3hSbqCgt3RRTmsSCY7trF7SexbjVQ3vuet2IUsErJKk', NULL, NULL, '2021-01-10 03:46:58', '2021-01-11 11:33:05'),
(26, 'Fifa 14 Mod Apk', '5ffc92a5b834f_logo.png', 'Offline', 6, 'Jan 08, 2021', '15Mb,75Mb,916.65Mb (Apk,Obb,Data)', '14.1.02', 'Android 6.0+', 'ELECTRONIC ARTS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://www.mediafire.com/file/1asurdq9h7bm0us/APK_FIFA_21.apk/file?fbclid=IwAR1VtslRy4A_N_F68ihvN18hIJ1EOv7w3dr9Shh1uyCmMVoOEhYS7_s8MTg', 'https://www.mediafire.com/file/weseh9kmjr84lu8/DATA_FIFA_21_V3_MEMPHISD2002.zip/file?fbclid=IwAR09zo01ejKsA-oCxPb8CWoP9lXd85-3ZLkVvB1-h513E2oGWBjE1uJ-nCI', 'http://www.mediafire.com/file/hsjpjgn7qs0qzoe/Memphis2002FIFA21OBB_V3.zip/file?fbclid=IwAR2WNdThFSscf3ofxfsbwJhVFiEj4LE4H-yw_SnzBdYA0A0u7a2kEHWpnvc', '2021-01-10 04:04:50', '2021-01-11 11:32:13'),
(27, 'FIFA 21 Mod PES 21 Best Graphics Offline', '5ffc926bc5d66_logo.png', 'Offline (Football)', 5, 'Jan 08, 2021', '54Mb,686Mb,38.86Mb (Apk,Obb,Data)', '2.34', 'Android 5.0+', 'GameCube', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?\r\n', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'http://www.mediafire.com/file/5hy08aea9mvwop0/FIFA+2021+Mod+PES+21_www.apkasw.com.apk/file', 'http://www.mediafire.com/file/juja04bwc7kkdgt/Fifa+Mod+21+_obb_www.apkasw.com.rar/file', 'http://www.mediafire.com/file/bipn31ero1w6dk8/FIFA+21+Mod_DATA_www.apkasw.com.rar/file', '2021-01-10 04:21:44', '2021-01-11 11:31:15'),
(28, 'Milfy City MOD APK 2021 18+', '5ffc92375ba48_logo.jpg', 'Offline (18+)', 10, 'Jan 08, 2021', '784.1 Mb', '0.6', '4.4 and up', 'ICSTOR Website – Patreon', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/PJBznCBa#srmbSN-ydBEKOG55pwXNVK8UxhyQxcyt9nKVdcZhOBI', NULL, NULL, '2021-01-10 05:57:14', '2021-01-11 11:30:23'),
(29, 'Summertime Saga', '5ffc91d8a7fe1_logo.jpg', 'Offline (18+)', 4, 'Jan 08, 2021', '751 Mb', 'v0.20.7', 'Android 4.1+', 'ADV', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/C49GHRxR#eaLJR-x9ypwrhfEIB52SaWpcbveSa45TbutQvIZa3bE', NULL, NULL, '2021-01-10 06:11:41', '2021-01-11 11:28:48'),
(30, 'Lost Life 18+ Apk', '5ffc91a167471_logo.jpg', 'Offline (18+)', 3, 'Jan 08, 2021', '82 Mb', '1.1.9', '4.0 +', 'Shikestu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/OJ9VHIrJ#x6uJ8JOVarVpombLajffxUMBTjAyXeeWcmVwCjYUC_c', NULL, NULL, '2021-01-10 06:12:04', '2021-01-11 11:27:53'),
(31, 'Taffy Tales Apk 18+ Uncensored', '5ffc91597349e_logo.jpg', 'Offline (18+ Uncensored)', 6, 'Jan 08, 2021', '586 Mb', '0.22', 'Android 6.0+', 'ADV', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://nopy.to/Nbz2Veb2/Taffy_Tales_0.22.0b.apk', NULL, NULL, '2021-01-10 08:27:21', '2022-06-02 01:45:47'),
(32, 'Among Us Mod Apk [Unlimited money]', '5ffc91250d8df_logo.png', 'Online Multiplayer', 2, 'Jan 08, 2021', '64.1 Mb', '2020.11.17', 'Android 4.1+', 'Innersloth LLC', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/sYvKjZKunyo', 'https://mega.nz/file/eU0mzCKT#feHQlAxZglfzp4QwIGUEieW6PEerGxpm6-3gTeWeGkw', NULL, NULL, '2021-01-10 09:00:32', '2021-01-12 17:54:59'),
(33, 'GTA San Andreas Download (MOD APK + OBB)', '5ffc906a1b040_logo.jpg', 'Offline Open World', 7, '2020/05/09', '15.2 MB + 1.8 GB', 'v2.00', '7.0 and up', 'Rockstar Games', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://dl.apkdone.com/s/3TTNtYG8mGXzJNt/download', 'https://dl.apkdone.com/s/3FodWGtK9EwiqXb/download', 'https://mega.nz/file/fUESUbwY#No9bogaRxrEVZ9s0MjmQlgFLqGu8JGMILoGNQ2QoFFg', '2021-01-10 09:20:02', '2021-01-11 11:22:42'),
(34, 'Dating My Daughter MOD APK ( Chapter 1)', '5ffc9042a4beb_logo.jpg', 'Offline (18+)', 10, 'Jan 09, 2021', '1.93Gb', '0.14.5', 'Android 5.0+', 'MrDots Games', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/bxBjgZbC#1D1qwP-bmSZx4tJOrGTkmnTXd-cA6O5U6T_PGNck9fY', NULL, NULL, '2021-01-11 09:24:29', '2021-01-11 11:22:02'),
(35, 'Dating My Daughter MOD APK ( Chapter 2)', '5ffc902321fa3_logo.png', 'Offline (18+)', 10, 'Jan,10, 2021', '1.03 Gb', '0.2.1.5', 'Android 6.0+', 'MrDots Games', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/xGonRSZC#ZMEwIT3IiXCt348TprDInb7iiBIyxa2IzIkX2motd8Q', NULL, NULL, '2021-01-11 09:35:17', '2021-01-11 11:21:31'),
(37, 'Sengoku Basara 2 Android', '5ffc967884eea_logo.jpg', 'Offline (PPSSPP)', 11, 'Jan 08, 2021', '4.08Gb,8.07Mb', '2.34', 'Snapdragon 660+', 'AUgyc', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://www.mediafire.com/file/oxb1y05jh2txh5v/BASARA_2.rar/file', NULL, 'https://www.mediafire.com/file/bjgu190w7vgr9ch/Dolphin_5.0-10000-mmj.apk/file', '2021-01-08 09:12:50', '2021-01-11 11:48:32'),
(38, 'Def Jam Fighter - Story Mode Android', '5ffc945fcf51e_logo.jpg', 'Offline (PSSPP)', 2, 'Jan,10, 2021', '941.2MB', '4.3', 'Snapdragon 660 & Up', 'GameCube', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.mediafire.com%2Fdownload%2Fbjgu190w7vgr9ch%3Ffbclid%3DIwAR15H1aQoYf52eGzWP22LT-KbvwiAWa507ZLMCXxVelDKNqC29ow5UhCuOc&h=AT0LbS25jUGYohG9dAS1ouheSQ5x6lxRPH5h3veDOoHMOX9h7Mw0ukkvwzqY_5MsdfwH_TrpCPPou9Sw7Y0zN1M_AUUYBF2B48adlebLmkRFiibZTf_wxRvSAgfKQLhLhNL-&__tn__=R]-R&c[0]=AT388-21O2_xnLyPD_6uPMVTEQmRplYU8JMHDI0dThNEavLVNKPygA4a39UQJ1G8w4Mjn03W_gTi4WXwizxOR7HHOQeuioDODmjboBef4bUrOOguFkgPq31MJXX1A3iSPsFmeosr23FG0CT6V6mjuEdzwQk5lzHD56MtVWNOEMnndQ', 'https://l.facebook.com/l.php?u=https%3A%2F%2Froms-download.com%2Froms%2Fgamecube%2Fdef-jam-fight-for-ny-usa%3Ffbclid%3DIwAR3R6NH7xPPxB-UkLREogEcmaJ1RXUoncNLF73rCaMTCkJSLjq6GOYkEfA0&h=AT2gYCHQqfhNx3HisE0Ef9tMP5iaopF_7-n1N1n53-n-TENECEXkkT-NFBFw7Fief5TgzxjdY2g8MQHJtQTesxNiF_sUHM8hWg5n60XvV8QnAUi6l1hjVEUEYHXgql-3Bh1G&__tn__=R]-R&c[0]=AT388-21O2_xnLyPD_6uPMVTEQmRplYU8JMHDI0dThNEavLVNKPygA4a39UQJ1G8w4Mjn03W_gTi4WXwizxOR7HHOQeuioDODmjboBef4bUrOOguFkgPq31MJXX1A3iSPsFmeosr23FG0CT6V6mjuEdzwQk5lzHD56MtVWNOEMnndQ', NULL, '2021-01-09 20:58:53', '2021-01-11 11:39:35'),
(39, 'Code Asylum (Android Offline)', '5ffc942a8386c_logo.jpg', 'Offline', 9, 'Jan,10, 2021', '686.5 Mb', '3.6', 'Android 7.0+', 'ASZ Studio', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://dc445.4sync.com/download/Ms_65yKr/cocodeasylumCodeAsylum_mod_35_.apk?dsid=L9kgF_2Y.9d7f35e901f9a4511b693fd95ddf3cff&sbsr=70be77633ae8cc290736d0b0335302eba66&bip=MjAzLjgxLjkxLjE5OA&lgfp=40', NULL, NULL, '2021-01-09 21:11:43', '2021-01-11 11:38:42'),
(40, 'Devil May Cry 3: Dante\'s Awakening', '5ffc93f58c3a4_logo.jpg', 'Offline (PSSPP)', 2, 'Jan 08, 2021', '2.9Gb', '3.0', 'Android 7.0+', 'Capcom', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://m.apkpure.com/ps2-emulator-damonps2-ppsspp-ps2-psp-ps2-emua/com.damonplay.damonps2.free/download?from=details', 'https://coolrom.com.au/roms/ps2/41830/Devil_May_Cry_3_-_Dante%27s_Awakening_-_Special_Edition.php?fbclid=IwAR1aLPONqZoab_oAPZbRTs1A49_RYFK0ElwwwoV_POWgAi5pxFfmRdivO-A', NULL, '2021-01-09 21:38:40', '2021-01-11 11:37:49'),
(41, 'Marsus:Survive on Mars Android Offline', '5ffc92d9b76bf_logo.png', 'Offline', 9, 'Jan 08, 2021', '68.5 Mb', '1.0', 'Android 4.1+', 'Asif Azad', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/3N1U3LwD#3hSbqCgt3RRTmsSCY7trF7SexbjVQ3vuet2IUsErJKk', NULL, NULL, '2021-01-10 03:46:58', '2021-01-11 11:33:05'),
(42, 'Fifa 14 Mod Apk', '5ffc92a5b834f_logo.png', 'Offline', 8, 'Jan 08, 2021', '15Mb,75Mb,916.65Mb (Apk,Obb,Data)', '14.1.02', 'Android 6.0+', 'ELECTRONIC ARTS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://www.mediafire.com/file/1asurdq9h7bm0us/APK_FIFA_21.apk/file?fbclid=IwAR1VtslRy4A_N_F68ihvN18hIJ1EOv7w3dr9Shh1uyCmMVoOEhYS7_s8MTg', 'https://www.mediafire.com/file/weseh9kmjr84lu8/DATA_FIFA_21_V3_MEMPHISD2002.zip/file?fbclid=IwAR09zo01ejKsA-oCxPb8CWoP9lXd85-3ZLkVvB1-h513E2oGWBjE1uJ-nCI', 'http://www.mediafire.com/file/hsjpjgn7qs0qzoe/Memphis2002FIFA21OBB_V3.zip/file?fbclid=IwAR2WNdThFSscf3ofxfsbwJhVFiEj4LE4H-yw_SnzBdYA0A0u7a2kEHWpnvc', '2021-01-10 04:04:50', '2021-01-11 11:32:13'),
(43, 'FIFA 21 Mod PES 21 Best Graphics Offline', '5ffc926bc5d66_logo.png', 'Offline (Football)', 8, 'Jan 08, 2021', '54Mb,686Mb,38.86Mb (Apk,Obb,Data)', '2.34', 'Android 5.0+', 'GameCube', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'http://www.mediafire.com/file/5hy08aea9mvwop0/FIFA+2021+Mod+PES+21_www.apkasw.com.apk/file', 'http://www.mediafire.com/file/juja04bwc7kkdgt/Fifa+Mod+21+_obb_www.apkasw.com.rar/file', 'http://www.mediafire.com/file/bipn31ero1w6dk8/FIFA+21+Mod_DATA_www.apkasw.com.rar/file', '2021-01-10 04:21:44', '2021-01-11 11:31:15'),
(44, 'Milfy City MOD APK 2021 18+', '5ffc92375ba48_logo.jpg', 'Offline (18+)', 10, 'Jan 08, 2021', '784.1 Mb', '0.6', '4.4 and up', 'ICSTOR Website – Patreon', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/PJBznCBa#srmbSN-ydBEKOG55pwXNVK8UxhyQxcyt9nKVdcZhOBI', NULL, NULL, '2021-01-10 05:57:14', '2021-01-11 11:30:23'),
(45, 'Sengoku Basara 2 Android', '5ffc967884eea_logo.jpg', 'Offline (PPSSPP)', 11, 'Jan 08, 2021', '4.08Gb,8.07Mb', '2.34', 'Snapdragon 660+', 'AUgyc', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://www.mediafire.com/file/oxb1y05jh2txh5v/BASARA_2.rar/file', NULL, 'https://www.mediafire.com/file/bjgu190w7vgr9ch/Dolphin_5.0-10000-mmj.apk/file', '2021-01-08 09:12:50', '2021-01-11 11:48:32'),
(46, 'Def Jam Fighter - Story Mode Android', '5ffc945fcf51e_logo.jpg', 'Offline (PSSPP)', 2, 'Jan,10, 2021', '941.2MB', '4.3', 'Snapdragon 660 & Up', 'GameCube', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.mediafire.com%2Fdownload%2Fbjgu190w7vgr9ch%3Ffbclid%3DIwAR15H1aQoYf52eGzWP22LT-KbvwiAWa507ZLMCXxVelDKNqC29ow5UhCuOc&h=AT0LbS25jUGYohG9dAS1ouheSQ5x6lxRPH5h3veDOoHMOX9h7Mw0ukkvwzqY_5MsdfwH_TrpCPPou9Sw7Y0zN1M_AUUYBF2B48adlebLmkRFiibZTf_wxRvSAgfKQLhLhNL-&__tn__=R]-R&c[0]=AT388-21O2_xnLyPD_6uPMVTEQmRplYU8JMHDI0dThNEavLVNKPygA4a39UQJ1G8w4Mjn03W_gTi4WXwizxOR7HHOQeuioDODmjboBef4bUrOOguFkgPq31MJXX1A3iSPsFmeosr23FG0CT6V6mjuEdzwQk5lzHD56MtVWNOEMnndQ', 'https://l.facebook.com/l.php?u=https%3A%2F%2Froms-download.com%2Froms%2Fgamecube%2Fdef-jam-fight-for-ny-usa%3Ffbclid%3DIwAR3R6NH7xPPxB-UkLREogEcmaJ1RXUoncNLF73rCaMTCkJSLjq6GOYkEfA0&h=AT2gYCHQqfhNx3HisE0Ef9tMP5iaopF_7-n1N1n53-n-TENECEXkkT-NFBFw7Fief5TgzxjdY2g8MQHJtQTesxNiF_sUHM8hWg5n60XvV8QnAUi6l1hjVEUEYHXgql-3Bh1G&__tn__=R]-R&c[0]=AT388-21O2_xnLyPD_6uPMVTEQmRplYU8JMHDI0dThNEavLVNKPygA4a39UQJ1G8w4Mjn03W_gTi4WXwizxOR7HHOQeuioDODmjboBef4bUrOOguFkgPq31MJXX1A3iSPsFmeosr23FG0CT6V6mjuEdzwQk5lzHD56MtVWNOEMnndQ', NULL, '2021-01-09 20:58:53', '2021-01-11 11:39:35'),
(53, 'Sengoku Basara 2 Android', '5ffc967884eea_logo.jpg', 'Offline (PPSSPP)', 11, 'Jan 08, 2021', '4.08Gb,8.07Mb', '2.34', 'Snapdragon 660+', 'AUgyc', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://www.mediafire.com/file/oxb1y05jh2txh5v/BASARA_2.rar/file', NULL, 'https://www.mediafire.com/file/bjgu190w7vgr9ch/Dolphin_5.0-10000-mmj.apk/file', '2021-01-08 09:12:50', '2021-01-11 11:48:32'),
(54, 'Def Jam Fighter - Story Mode Android', '5ffc945fcf51e_logo.jpg', 'Offline (PSSPP)', 2, 'Jan,10, 2021', '941.2MB', '4.3', 'Snapdragon 660 & Up', 'GameCube', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.mediafire.com%2Fdownload%2Fbjgu190w7vgr9ch%3Ffbclid%3DIwAR15H1aQoYf52eGzWP22LT-KbvwiAWa507ZLMCXxVelDKNqC29ow5UhCuOc&h=AT0LbS25jUGYohG9dAS1ouheSQ5x6lxRPH5h3veDOoHMOX9h7Mw0ukkvwzqY_5MsdfwH_TrpCPPou9Sw7Y0zN1M_AUUYBF2B48adlebLmkRFiibZTf_wxRvSAgfKQLhLhNL-&__tn__=R]-R&c[0]=AT388-21O2_xnLyPD_6uPMVTEQmRplYU8JMHDI0dThNEavLVNKPygA4a39UQJ1G8w4Mjn03W_gTi4WXwizxOR7HHOQeuioDODmjboBef4bUrOOguFkgPq31MJXX1A3iSPsFmeosr23FG0CT6V6mjuEdzwQk5lzHD56MtVWNOEMnndQ', 'https://l.facebook.com/l.php?u=https%3A%2F%2Froms-download.com%2Froms%2Fgamecube%2Fdef-jam-fight-for-ny-usa%3Ffbclid%3DIwAR3R6NH7xPPxB-UkLREogEcmaJ1RXUoncNLF73rCaMTCkJSLjq6GOYkEfA0&h=AT2gYCHQqfhNx3HisE0Ef9tMP5iaopF_7-n1N1n53-n-TENECEXkkT-NFBFw7Fief5TgzxjdY2g8MQHJtQTesxNiF_sUHM8hWg5n60XvV8QnAUi6l1hjVEUEYHXgql-3Bh1G&__tn__=R]-R&c[0]=AT388-21O2_xnLyPD_6uPMVTEQmRplYU8JMHDI0dThNEavLVNKPygA4a39UQJ1G8w4Mjn03W_gTi4WXwizxOR7HHOQeuioDODmjboBef4bUrOOguFkgPq31MJXX1A3iSPsFmeosr23FG0CT6V6mjuEdzwQk5lzHD56MtVWNOEMnndQ', NULL, '2021-01-09 20:58:53', '2021-01-11 11:39:35'),
(55, 'Code Asylum (Android Offline)', '5ffc942a8386c_logo.jpg', 'Offline', 9, 'Jan,10, 2021', '686.5 Mb', '3.6', 'Android 7.0+', 'ASZ Studio', 'Lorem ipsum dolor sit amet, consectetur adipisicingt. cusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://dc445.4sync.com/download/Ms_65yKr/cocodeasylumCodeAsylum_mod_35_.apk?dsid=L9kgF_2Y.9d7f35e901f9a4511b693fd95ddf3cff&sbsr=70be77633ae8cc290736d0b0335302eba66&bip=MjAzLjgxLjkxLjE5OA&lgfp=40', NULL, NULL, '2021-01-09 21:11:43', '2021-01-11 11:38:42'),
(56, 'Devil May Cry 3: Dante\'s Awakening', '5ffc93f58c3a4_logo.jpg', 'Offline (PSSPP)', 2, 'Jan 08, 2021', '2.9Gb', '3.0', 'Android 7.0+', 'Capcom', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://m.apkpure.com/ps2-emulator-damonps2-ppsspp-ps2-psp-ps2-emua/com.damonplay.damonps2.free/download?from=details', 'https://coolrom.com.au/roms/ps2/41830/Devil_May_Cry_3_-_Dante%27s_Awakening_-_Special_Edition.php?fbclid=IwAR1aLPONqZoab_oAPZbRTs1A49_RYFK0ElwwwoV_POWgAi5pxFfmRdivO-A', NULL, '2021-01-09 21:38:40', '2021-01-11 11:37:49'),
(57, 'Marsus:Survive on Mars Android Offline', '5ffc92d9b76bf_logo.png', 'Offline', 9, 'Jan 08, 2021', '68.5 Mb', '1.0', 'Android 4.1+', 'Asif Azad', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/3N1U3LwD#3hSbqCgt3RRTmsSCY7trF7SexbjVQ3vuet2IUsErJKk', NULL, NULL, '2021-01-10 03:46:58', '2021-01-11 11:33:05'),
(58, 'Fifa 14 Mod Apk', '5ffc92a5b834f_logo.png', 'Offline', 8, 'Jan 08, 2021', '15Mb,75Mb,916.65Mb (Apk,Obb,Data)', '14.1.02', 'Android 6.0+', 'ELECTRONIC ARTS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://www.mediafire.com/file/1asurdq9h7bm0us/APK_FIFA_21.apk/file?fbclid=IwAR1VtslRy4A_N_F68ihvN18hIJ1EOv7w3dr9Shh1uyCmMVoOEhYS7_s8MTg', 'https://www.mediafire.com/file/weseh9kmjr84lu8/DATA_FIFA_21_V3_MEMPHISD2002.zip/file?fbclid=IwAR09zo01ejKsA-oCxPb8CWoP9lXd85-3ZLkVvB1-h513E2oGWBjE1uJ-nCI', 'http://www.mediafire.com/file/hsjpjgn7qs0qzoe/Memphis2002FIFA21OBB_V3.zip/file?fbclid=IwAR2WNdThFSscf3ofxfsbwJhVFiEj4LE4H-yw_SnzBdYA0A0u7a2kEHWpnvc', '2021-01-10 04:04:50', '2021-01-11 11:32:13'),
(59, 'FIFA 21 Mod PES 21 Best Graphics Offline', '5ffc926bc5d66_logo.png', 'Offline (Football)', 8, 'Jan 08, 2021', '54Mb,686Mb,38.86Mb (Apk,Obb,Data)', '2.34', 'Android 5.0+', 'GameCube', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?\r\n', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'http://www.mediafire.com/file/5hy08aea9mvwop0/FIFA+2021+Mod+PES+21_www.apkasw.com.apk/file', 'http://www.mediafire.com/file/juja04bwc7kkdgt/Fifa+Mod+21+_obb_www.apkasw.com.rar/file', 'http://www.mediafire.com/file/bipn31ero1w6dk8/FIFA+21+Mod_DATA_www.apkasw.com.rar/file', '2021-01-10 04:21:44', '2021-01-11 11:31:15'),
(60, 'Milfy City MOD APK 2021 18+', '5ffc92375ba48_logo.jpg', 'Offline (18+)', 10, 'Jan 08, 2021', '784.1 Mb', '0.6', '4.4 and up', 'ICSTOR Website – Patreon', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/PJBznCBa#srmbSN-ydBEKOG55pwXNVK8UxhyQxcyt9nKVdcZhOBI', NULL, NULL, '2021-01-10 05:57:14', '2021-01-11 11:30:23'),
(61, 'Sengoku Basara 2 Android', '5ffc967884eea_logo.jpg', 'Offline (PPSSPP)', 11, 'Jan 08, 2021', '4.08Gb,8.07Mb', '2.34', 'Snapdragon 660+', 'AUgyc', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://www.mediafire.com/file/oxb1y05jh2txh5v/BASARA_2.rar/file', NULL, 'https://www.mediafire.com/file/bjgu190w7vgr9ch/Dolphin_5.0-10000-mmj.apk/file', '2021-01-08 09:12:50', '2021-01-11 11:48:32'),
(62, 'Def Jam Fighter - Story Mode Android', '5ffc945fcf51e_logo.jpg', 'Offline (PSSPP)', 2, 'Jan,10, 2021', '941.2MB', '4.3', 'Snapdragon 660 & Up', 'GameCube', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.mediafire.com%2Fdownload%2Fbjgu190w7vgr9ch%3Ffbclid%3DIwAR15H1aQoYf52eGzWP22LT-KbvwiAWa507ZLMCXxVelDKNqC29ow5UhCuOc&h=AT0LbS25jUGYohG9dAS1ouheSQ5x6lxRPH5h3veDOoHMOX9h7Mw0ukkvwzqY_5MsdfwH_TrpCPPou9Sw7Y0zN1M_AUUYBF2B48adlebLmkRFiibZTf_wxRvSAgfKQLhLhNL-&__tn__=R]-R&c[0]=AT388-21O2_xnLyPD_6uPMVTEQmRplYU8JMHDI0dThNEavLVNKPygA4a39UQJ1G8w4Mjn03W_gTi4WXwizxOR7HHOQeuioDODmjboBef4bUrOOguFkgPq31MJXX1A3iSPsFmeosr23FG0CT6V6mjuEdzwQk5lzHD56MtVWNOEMnndQ', 'https://l.facebook.com/l.php?u=https%3A%2F%2Froms-download.com%2Froms%2Fgamecube%2Fdef-jam-fight-for-ny-usa%3Ffbclid%3DIwAR3R6NH7xPPxB-UkLREogEcmaJ1RXUoncNLF73rCaMTCkJSLjq6GOYkEfA0&h=AT2gYCHQqfhNx3HisE0Ef9tMP5iaopF_7-n1N1n53-n-TENECEXkkT-NFBFw7Fief5TgzxjdY2g8MQHJtQTesxNiF_sUHM8hWg5n60XvV8QnAUi6l1hjVEUEYHXgql-3Bh1G&__tn__=R]-R&c[0]=AT388-21O2_xnLyPD_6uPMVTEQmRplYU8JMHDI0dThNEavLVNKPygA4a39UQJ1G8w4Mjn03W_gTi4WXwizxOR7HHOQeuioDODmjboBef4bUrOOguFkgPq31MJXX1A3iSPsFmeosr23FG0CT6V6mjuEdzwQk5lzHD56MtVWNOEMnndQ', NULL, '2021-01-09 20:58:53', '2021-01-11 11:39:35'),
(63, 'Code Asylum (Android Offline)', '5ffc942a8386c_logo.jpg', 'Offline', 9, 'Jan,10, 2021', '686.5 Mb', '3.6', 'Android 7.0+', 'ASZ Studio', 'Lorem ipsum dolor sit amet, consectetur adipisicingt. cusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://dc445.4sync.com/download/Ms_65yKr/cocodeasylumCodeAsylum_mod_35_.apk?dsid=L9kgF_2Y.9d7f35e901f9a4511b693fd95ddf3cff&sbsr=70be77633ae8cc290736d0b0335302eba66&bip=MjAzLjgxLjkxLjE5OA&lgfp=40', NULL, NULL, '2021-01-09 21:11:43', '2021-01-11 11:38:42'),
(64, 'Devil May Cry 3: Dante\'s Awakening', '5ffc93f58c3a4_logo.jpg', 'Offline (PSSPP)', 12, 'Jan 08, 2021', '2.9Gb', '3.0', 'Android 7.0+', 'Capcom', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://m.apkpure.com/ps2-emulator-damonps2-ppsspp-ps2-psp-ps2-emua/com.damonplay.damonps2.free/download?from=details', 'https://coolrom.com.au/roms/ps2/41830/Devil_May_Cry_3_-_Dante%27s_Awakening_-_Special_Edition.php?fbclid=IwAR1aLPONqZoab_oAPZbRTs1A49_RYFK0ElwwwoV_POWgAi5pxFfmRdivO-A', NULL, '2021-01-09 21:38:40', '2022-05-25 00:52:18'),
(65, 'Marsus:Survive on Mars Android Offline', '5ffc92d9b76bf_logo.png', 'Offline', 9, 'Jan 08, 2021', '68.5 Mb', '1.0', 'Android 4.1+', 'Asif Azad', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/3N1U3LwD#3hSbqCgt3RRTmsSCY7trF7SexbjVQ3vuet2IUsErJKk', NULL, NULL, '2021-01-10 03:46:58', '2021-01-11 11:33:05'),
(66, 'Fifa 14 Mod Apk', '5ffc92a5b834f_logo.png', 'Offline', 8, 'Jan 08, 2021', '15Mb,75Mb,916.65Mb (Apk,Obb,Data)', '14.1.02', 'Android 6.0+', 'ELECTRONIC ARTS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://www.mediafire.com/file/1asurdq9h7bm0us/APK_FIFA_21.apk/file?fbclid=IwAR1VtslRy4A_N_F68ihvN18hIJ1EOv7w3dr9Shh1uyCmMVoOEhYS7_s8MTg', 'https://www.mediafire.com/file/weseh9kmjr84lu8/DATA_FIFA_21_V3_MEMPHISD2002.zip/file?fbclid=IwAR09zo01ejKsA-oCxPb8CWoP9lXd85-3ZLkVvB1-h513E2oGWBjE1uJ-nCI', 'http://www.mediafire.com/file/hsjpjgn7qs0qzoe/Memphis2002FIFA21OBB_V3.zip/file?fbclid=IwAR2WNdThFSscf3ofxfsbwJhVFiEj4LE4H-yw_SnzBdYA0A0u7a2kEHWpnvc', '2021-01-10 04:04:50', '2021-01-11 11:32:13'),
(67, 'FIFA 21 Mod PES 21 Best Graphics Offline', '5ffc926bc5d66_logo.png', 'Offline (Football)', 8, 'Jan 08, 2021', '54Mb,686Mb,38.86Mb (Apk,Obb,Data)', '2.34', 'Android 5.0+', 'GameCube', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?\r\n', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'http://www.mediafire.com/file/5hy08aea9mvwop0/FIFA+2021+Mod+PES+21_www.apkasw.com.apk/file', 'http://www.mediafire.com/file/juja04bwc7kkdgt/Fifa+Mod+21+_obb_www.apkasw.com.rar/file', 'http://www.mediafire.com/file/bipn31ero1w6dk8/FIFA+21+Mod_DATA_www.apkasw.com.rar/file', '2021-01-10 04:21:44', '2021-01-11 11:31:15'),
(68, 'Milfy City MOD APK 2021 18+', '5ffc92375ba48_logo.jpg', 'Offline (18+)', 10, 'Jan 08, 2021', '784.1 Mb', '0.6', '4.4 and up', 'ICSTOR Website – Patreon', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/PJBznCBa#srmbSN-ydBEKOG55pwXNVK8UxhyQxcyt9nKVdcZhOBI', NULL, NULL, '2021-01-10 05:57:14', '2021-01-11 11:30:23'),
(69, 'Sengoku Basara 2 Android', '5ffc967884eea_logo.jpg', 'Offline (PPSSPP)', 11, 'Jan 08, 2021', '4.08Gb,8.07Mb', '2.34', 'Snapdragon 660+', 'AUgyc', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://www.mediafire.com/file/oxb1y05jh2txh5v/BASARA_2.rar/file', NULL, 'https://www.mediafire.com/file/bjgu190w7vgr9ch/Dolphin_5.0-10000-mmj.apk/file', '2021-01-08 09:12:50', '2021-01-11 11:48:32'),
(70, 'Def Jam Fighter - Story Mode Android', '5ffc945fcf51e_logo.jpg', 'Offline (PSSPP)', 2, 'Jan,10, 2021', '941.2MB', '4.3', 'Snapdragon 660 & Up', 'GameCube', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.mediafire.com%2Fdownload%2Fbjgu190w7vgr9ch%3Ffbclid%3DIwAR15H1aQoYf52eGzWP22LT-KbvwiAWa507ZLMCXxVelDKNqC29ow5UhCuOc&h=AT0LbS25jUGYohG9dAS1ouheSQ5x6lxRPH5h3veDOoHMOX9h7Mw0ukkvwzqY_5MsdfwH_TrpCPPou9Sw7Y0zN1M_AUUYBF2B48adlebLmkRFiibZTf_wxRvSAgfKQLhLhNL-&__tn__=R]-R&c[0]=AT388-21O2_xnLyPD_6uPMVTEQmRplYU8JMHDI0dThNEavLVNKPygA4a39UQJ1G8w4Mjn03W_gTi4WXwizxOR7HHOQeuioDODmjboBef4bUrOOguFkgPq31MJXX1A3iSPsFmeosr23FG0CT6V6mjuEdzwQk5lzHD56MtVWNOEMnndQ', 'https://l.facebook.com/l.php?u=https%3A%2F%2Froms-download.com%2Froms%2Fgamecube%2Fdef-jam-fight-for-ny-usa%3Ffbclid%3DIwAR3R6NH7xPPxB-UkLREogEcmaJ1RXUoncNLF73rCaMTCkJSLjq6GOYkEfA0&h=AT2gYCHQqfhNx3HisE0Ef9tMP5iaopF_7-n1N1n53-n-TENECEXkkT-NFBFw7Fief5TgzxjdY2g8MQHJtQTesxNiF_sUHM8hWg5n60XvV8QnAUi6l1hjVEUEYHXgql-3Bh1G&__tn__=R]-R&c[0]=AT388-21O2_xnLyPD_6uPMVTEQmRplYU8JMHDI0dThNEavLVNKPygA4a39UQJ1G8w4Mjn03W_gTi4WXwizxOR7HHOQeuioDODmjboBef4bUrOOguFkgPq31MJXX1A3iSPsFmeosr23FG0CT6V6mjuEdzwQk5lzHD56MtVWNOEMnndQ', NULL, '2021-01-09 20:58:53', '2021-01-11 11:39:35'),
(71, 'Code Asylum (Android Offline)', '5ffc942a8386c_logo.jpg', 'Offline', 9, 'Jan,10, 2021', '686.5 Mb', '3.6', 'Android 7.0+', 'ASZ Studio', 'Lorem ipsum dolor sit amet, consectetur adipisicingt. cusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://dc445.4sync.com/download/Ms_65yKr/cocodeasylumCodeAsylum_mod_35_.apk?dsid=L9kgF_2Y.9d7f35e901f9a4511b693fd95ddf3cff&sbsr=70be77633ae8cc290736d0b0335302eba66&bip=MjAzLjgxLjkxLjE5OA&lgfp=40', NULL, NULL, '2021-01-09 21:11:43', '2021-01-11 11:38:42'),
(72, 'Devil May Cry 3: Dante\'s Awakening', '5ffc93f58c3a4_logo.jpg', 'Offline (PSSPP)', 3, 'Jan 08, 2021', '2.9Gb', '3.0', 'Android 7.0+', 'Capcom', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://m.apkpure.com/ps2-emulator-damonps2-ppsspp-ps2-psp-ps2-emua/com.damonplay.damonps2.free/download?from=details', 'https://coolrom.com.au/roms/ps2/41830/Devil_May_Cry_3_-_Dante%27s_Awakening_-_Special_Edition.php?fbclid=IwAR1aLPONqZoab_oAPZbRTs1A49_RYFK0ElwwwoV_POWgAi5pxFfmRdivO-A', NULL, '2021-01-09 21:38:40', '2021-01-11 11:37:49'),
(73, 'Marsus:Survive on Mars Android Offline', '5ffc92d9b76bf_logo.png', 'Offline', 7, 'Jan 08, 2021', '68.5 Mb', '1.0', 'Android 4.1+', 'Asif Azad', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/3N1U3LwD#3hSbqCgt3RRTmsSCY7trF7SexbjVQ3vuet2IUsErJKk', NULL, NULL, '2021-01-10 03:46:58', '2021-01-11 11:33:05'),
(74, 'Fifa 14 Mod Apk', '5ffc92a5b834f_logo.png', 'Offline', 6, 'Jan 08, 2021', '15Mb,75Mb,916.65Mb (Apk,Obb,Data)', '14.1.02', 'Android 6.0+', 'ELECTRONIC ARTS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://www.mediafire.com/file/1asurdq9h7bm0us/APK_FIFA_21.apk/file?fbclid=IwAR1VtslRy4A_N_F68ihvN18hIJ1EOv7w3dr9Shh1uyCmMVoOEhYS7_s8MTg', 'https://www.mediafire.com/file/weseh9kmjr84lu8/DATA_FIFA_21_V3_MEMPHISD2002.zip/file?fbclid=IwAR09zo01ejKsA-oCxPb8CWoP9lXd85-3ZLkVvB1-h513E2oGWBjE1uJ-nCI', 'http://www.mediafire.com/file/hsjpjgn7qs0qzoe/Memphis2002FIFA21OBB_V3.zip/file?fbclid=IwAR2WNdThFSscf3ofxfsbwJhVFiEj4LE4H-yw_SnzBdYA0A0u7a2kEHWpnvc', '2021-01-10 04:04:50', '2021-01-11 11:32:13'),
(75, 'FIFA 21 Mod PES 21 Best Graphics Offline', '5ffc926bc5d66_logo.png', 'Offline (Football)', 5, 'Jan 08, 2021', '54Mb,686Mb,38.86Mb', '2.34', 'Android 5.0+', 'GameCube', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'http://www.mediafire.com/file/5hy08aea9mvwop0/FIFA+2021+Mod+PES+21_www.apkasw.com.apk/file', 'http://www.mediafire.com/file/juja04bwc7kkdgt/Fifa+Mod+21+_obb_www.apkasw.com.rar/file', 'http://www.mediafire.com/file/bipn31ero1w6dk8/FIFA+21+Mod_DATA_www.apkasw.com.rar/file', '2021-01-10 04:21:44', '2022-06-01 11:14:03');
INSERT INTO `posts` (`id`, `name`, `logo`, `type`, `category_id`, `updated`, `size`, `version`, `requirement`, `developer`, `description`, `features`, `video`, `link1`, `link2`, `link3`, `created_at`, `updated_at`) VALUES
(76, 'Milfy City MOD APK 2021 18+', '6297a2904a269_logo.jpg', 'Offline (18+)', 10, 'Jan 08, 2021', '784.1 Mb', '0.6', '4.4 and up', 'ICSTOR Website – Patreon', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit. Accusamus consectetur, est eveniet hic maxime officia ut? Aperiam asperiores commodi excepturi id labore obcaecati, omnis perferendis placeat. Excepturi fugit nemo voluptates?', 'https://www.youtube.com/embed/Q3kwxakRoJA', 'https://mega.nz/file/PJBznCBa#srmbSN-ydBEKOG55pwXNVK8UxhyQxcyt9nKVdcZhOBI', NULL, NULL, '2021-01-10 05:57:14', '2022-06-01 11:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `post_id`, `rating`, `created_at`, `updated_at`) VALUES
(13, 25, 3, '2021-01-10 10:59:23', '2021-01-10 10:59:23'),
(14, 25, 5, '2021-01-10 10:59:32', '2021-01-10 10:59:32'),
(16, 31, 3, '2021-01-10 16:29:30', '2021-01-10 16:29:30'),
(20, 27, 5, '2021-01-12 16:39:07', '2021-01-12 16:39:07'),
(21, 33, 5, '2021-01-12 16:39:20', '2021-01-12 16:39:20'),
(22, 33, 5, '2021-01-12 16:50:32', '2021-01-12 16:50:32'),
(24, 33, 5, '2021-01-12 16:59:18', '2021-01-12 16:59:18'),
(25, 33, 5, '2021-01-12 16:59:25', '2021-01-12 16:59:25'),
(26, 33, 5, '2021-01-12 16:59:54', '2021-01-12 16:59:54'),
(27, 33, 5, '2021-01-12 17:00:02', '2021-01-12 17:00:02'),
(28, 29, 5, '2021-01-12 17:01:00', '2021-01-12 17:01:00'),
(29, 34, 3, '2021-01-23 00:45:04', '2021-01-23 00:45:04'),
(30, 24, 5, '2021-01-23 01:42:45', '2021-01-23 01:42:45'),
(31, 32, 5, '2021-01-23 01:42:53', '2021-01-23 01:42:53'),
(32, 35, 4, '2021-04-19 07:19:24', '2021-04-19 07:19:24'),
(33, 28, 5, '2021-04-21 23:10:45', '2021-04-21 23:10:45'),
(34, 26, 5, '2021-05-02 02:27:31', '2021-05-02 02:27:31'),
(35, 37, 5, '2021-07-29 04:02:27', '2021-07-29 04:02:27'),
(36, 31, 5, '2021-08-25 05:48:28', '2021-08-25 05:48:28'),
(37, 31, 1, '2021-08-25 05:48:36', '2021-08-25 05:48:36'),
(38, 45, 3, '2021-12-13 02:31:04', '2021-12-13 02:31:04'),
(39, 34, 5, '2021-12-13 02:31:22', '2021-12-13 02:31:22'),
(40, 30, 2, '2022-05-12 21:57:24', '2022-05-12 21:57:24'),
(41, 30, 5, '2022-05-12 21:57:39', '2022-05-12 21:57:39'),
(42, 29, 1, '2022-05-17 03:56:41', '2022-05-17 03:56:41'),
(43, 29, 1, '2022-05-17 03:56:46', '2022-05-17 03:56:46'),
(44, 46, 3, '2022-05-17 09:46:22', '2022-05-17 09:46:22'),
(45, 72, 4, '2022-06-02 18:26:23', '2022-06-02 18:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `request_apps`
--

CREATE TABLE `request_apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `playstore_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

CREATE TABLE `software` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suggests`
--

CREATE TABLE `suggests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suggests`
--

INSERT INTO `suggests` (`id`, `name`, `description`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(3, 'Aung Htet Chon', 'dsfsdfdsd', '09771172147', 'admin@kyalphyu.com', '2021-01-11 15:24:53', '2021-01-11 15:24:53'),
(5, 'fdg', 'fdsg', 'sdfg', 'dsgf@gmail.com', '2021-01-12 16:33:07', '2021-01-12 16:33:07'),
(6, 'Aung Htet Chon', 'dsaf', '09771172147', 'admin@gmail.com', '2021-01-23 01:26:20', '2021-01-23 01:26:20'),
(7, 'Aung Htet Chon', 'dsafsdf', '09771172147', 'admin@gmail.com', '2021-01-23 01:27:07', '2021-01-23 01:27:07'),
(8, 'Aung Htet Chon', 'dsafsdfdsf', '09771172147', 'admin@gmail.com', '2021-01-23 01:27:33', '2021-01-23 01:27:33'),
(9, 'dgfdf', 'dfgfdfdgfdfd', '09771172148d', 'tone@gmail.com', '2021-04-21 23:15:44', '2021-04-21 23:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `traffic`
--

CREATE TABLE `traffic` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'asdf', 'admin@gmail.com', NULL, '$2y$10$rG54ZW6wOUovRG3zFvdDYeNSNAOjcTNJXaYcGCndLZaQUUY1oPVQC', NULL, NULL, '2022-05-16 21:45:02', '2022-05-16 21:45:02'),
(2, 'Aung Htet Chon', 'ahc@gmail.com', NULL, '$2y$10$kW3fu1rfPRHMMBZsLLFbFeMbnssN.i/0TIb17q3HmUV/YcTrEO9Pi', NULL, NULL, '2022-05-25 00:07:40', '2022-05-25 00:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `viewers`
--

CREATE TABLE `viewers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `current` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `viewers`
--

INSERT INTO `viewers` (`id`, `post_id`, `current`, `created_at`, `updated_at`) VALUES
(1, 34, '2021-01-11', '2021-01-11 13:54:20', '2021-01-11 13:54:20'),
(2, 29, '2021-01-11', '2021-01-11 14:36:15', '2021-01-11 14:36:15'),
(3, 29, '2021-01-11', '2021-01-11 14:36:22', '2021-01-11 14:36:22'),
(4, 29, '2021-01-11', '2021-01-11 14:38:04', '2021-01-11 14:38:04'),
(5, 29, '2021-01-11', '2021-01-11 14:39:04', '2021-01-11 14:39:04'),
(6, 29, '2021-01-11', '2021-01-11 14:39:37', '2021-01-11 14:39:37'),
(7, 27, '2021-01-11', '2021-01-11 14:40:24', '2021-01-11 14:40:24'),
(8, 24, '2021-01-11', '2021-01-11 14:40:51', '2021-01-11 14:40:51'),
(9, 34, '2021-01-11', '2021-01-11 14:45:55', '2021-01-11 14:45:55'),
(10, 34, '2021-01-11', '2021-01-11 14:46:08', '2021-01-11 14:46:08'),
(11, 34, '2021-01-11', '2021-01-11 14:46:49', '2021-01-11 14:46:49'),
(12, 34, '2021-01-11', '2021-01-11 14:47:40', '2021-01-11 14:47:40'),
(13, 33, '2021-01-11', '2021-01-11 14:50:39', '2021-01-11 14:50:39'),
(14, 24, '2021-01-11', '2021-01-11 15:06:05', '2021-01-11 15:06:05'),
(15, 33, '2021-01-11', '2021-01-11 15:14:18', '2021-01-11 15:14:18'),
(16, 33, '2021-01-11', '2021-01-11 15:15:19', '2021-01-11 15:15:19'),
(17, 33, '2021-01-11', '2021-01-11 15:15:33', '2021-01-11 15:15:33'),
(18, 33, '2021-01-11', '2021-01-11 15:16:27', '2021-01-11 15:16:27'),
(19, 33, '2021-01-11', '2021-01-11 15:16:58', '2021-01-11 15:16:58'),
(20, 33, '2021-01-11', '2021-01-11 15:17:12', '2021-01-11 15:17:12'),
(21, 33, '2021-01-11', '2021-01-11 15:17:31', '2021-01-11 15:17:31'),
(22, 33, '2021-01-11', '2021-01-11 15:18:21', '2021-01-11 15:18:21'),
(23, 33, '2021-01-11', '2021-01-11 15:19:12', '2021-01-11 15:19:12'),
(24, 34, '2021-01-11', '2021-01-11 15:19:28', '2021-01-11 15:19:28'),
(25, 34, '2021-01-11', '2021-01-11 15:20:27', '2021-01-11 15:20:27'),
(26, 34, '2021-01-11', '2021-01-11 15:20:59', '2021-01-11 15:20:59'),
(27, 34, '2021-01-11', '2021-01-11 15:21:35', '2021-01-11 15:21:35'),
(28, 34, '2021-01-11', '2021-01-11 15:22:08', '2021-01-11 15:22:08'),
(29, 34, '2021-01-11', '2021-01-11 15:22:46', '2021-01-11 15:22:46'),
(30, 34, '2021-01-11', '2021-01-11 15:23:14', '2021-01-11 15:23:14'),
(31, 34, '2021-01-11', '2021-01-11 15:23:30', '2021-01-11 15:23:30'),
(32, 34, '2021-01-11', '2021-01-11 15:23:48', '2021-01-11 15:23:48'),
(33, 29, '2021-01-11', '2021-01-11 15:23:55', '2021-01-11 15:23:55'),
(34, 32, '2021-01-12', '2021-01-11 18:10:01', '2021-01-11 18:10:01'),
(35, 32, '2021-01-12', '2021-01-11 18:12:37', '2021-01-11 18:12:37'),
(36, 32, '2021-01-12', '2021-01-11 18:13:21', '2021-01-11 18:13:21'),
(37, 32, '2021-01-12', '2021-01-11 18:13:33', '2021-01-11 18:13:33'),
(38, 34, '2021-01-12', '2021-01-11 18:14:33', '2021-01-11 18:14:33'),
(39, 35, '2021-01-12', '2021-01-11 18:14:41', '2021-01-11 18:14:41'),
(40, 32, '2021-01-12', '2021-01-11 18:14:49', '2021-01-11 18:14:49'),
(41, 32, '2021-01-12', '2021-01-11 18:14:54', '2021-01-11 18:14:54'),
(42, 32, '2021-01-12', '2021-01-11 18:16:33', '2021-01-11 18:16:33'),
(43, 32, '2021-01-12', '2021-01-11 18:16:58', '2021-01-11 18:16:58'),
(44, 32, '2021-01-12', '2021-01-11 18:17:51', '2021-01-11 18:17:51'),
(45, 32, '2021-01-12', '2021-01-11 18:18:48', '2021-01-11 18:18:48'),
(46, 32, '2021-01-12', '2021-01-11 18:19:47', '2021-01-11 18:19:47'),
(47, 32, '2021-01-12', '2021-01-11 18:20:06', '2021-01-11 18:20:06'),
(48, 32, '2021-01-12', '2021-01-11 18:20:21', '2021-01-11 18:20:21'),
(49, 32, '2021-01-12', '2021-01-11 18:20:38', '2021-01-11 18:20:38'),
(50, 32, '2021-01-12', '2021-01-11 18:22:59', '2021-01-11 18:22:59'),
(51, 32, '2021-01-12', '2021-01-11 18:23:41', '2021-01-11 18:23:41'),
(52, 32, '2021-01-12', '2021-01-11 18:24:18', '2021-01-11 18:24:18'),
(53, 32, '2021-01-12', '2021-01-11 18:24:32', '2021-01-11 18:24:32'),
(54, 32, '2021-01-12', '2021-01-11 18:26:18', '2021-01-11 18:26:18'),
(55, 32, '2021-01-12', '2021-01-11 18:26:44', '2021-01-11 18:26:44'),
(56, 32, '2021-01-12', '2021-01-11 18:27:15', '2021-01-11 18:27:15'),
(57, 32, '2021-01-12', '2021-01-11 18:27:36', '2021-01-11 18:27:36'),
(58, 32, '2021-01-12', '2021-01-11 18:27:52', '2021-01-11 18:27:52'),
(59, 32, '2021-01-12', '2021-01-11 18:28:02', '2021-01-11 18:28:02'),
(60, 32, '2021-01-12', '2021-01-11 18:28:25', '2021-01-11 18:28:25'),
(61, 32, '2021-01-12', '2021-01-11 18:29:15', '2021-01-11 18:29:15'),
(62, 32, '2021-01-12', '2021-01-11 18:30:47', '2021-01-11 18:30:47'),
(63, 32, '2021-01-12', '2021-01-11 18:32:43', '2021-01-11 18:32:43'),
(64, 32, '2021-01-12', '2021-01-11 18:33:38', '2021-01-11 18:33:38'),
(65, 32, '2021-01-12', '2021-01-11 18:35:16', '2021-01-11 18:35:16'),
(66, 32, '2021-01-12', '2021-01-11 18:36:01', '2021-01-11 18:36:01'),
(67, 32, '2021-01-12', '2021-01-11 18:36:19', '2021-01-11 18:36:19'),
(68, 32, '2021-01-12', '2021-01-11 18:36:30', '2021-01-11 18:36:30'),
(69, 32, '2021-01-12', '2021-01-11 18:37:02', '2021-01-11 18:37:02'),
(70, 32, '2021-01-12', '2021-01-11 18:37:47', '2021-01-11 18:37:47'),
(71, 32, '2021-01-12', '2021-01-11 18:39:07', '2021-01-11 18:39:07'),
(72, 32, '2021-01-12', '2021-01-11 18:39:59', '2021-01-11 18:39:59'),
(73, 32, '2021-01-12', '2021-01-11 18:40:33', '2021-01-11 18:40:33'),
(74, 32, '2021-01-12', '2021-01-11 18:40:50', '2021-01-11 18:40:50'),
(75, 32, '2021-01-12', '2021-01-11 18:41:18', '2021-01-11 18:41:18'),
(76, 32, '2021-01-12', '2021-01-11 18:41:54', '2021-01-11 18:41:54'),
(77, 32, '2021-01-12', '2021-01-11 18:42:07', '2021-01-11 18:42:07'),
(78, 32, '2021-01-12', '2021-01-11 18:43:27', '2021-01-11 18:43:27'),
(79, 33, '2021-01-12', '2021-01-11 18:45:00', '2021-01-11 18:45:00'),
(80, 33, '2021-01-12', '2021-01-11 18:45:04', '2021-01-11 18:45:04'),
(81, 34, '2021-01-12', '2021-01-12 14:34:48', '2021-01-12 14:34:48'),
(82, 34, '2021-01-12', '2021-01-12 14:38:47', '2021-01-12 14:38:47'),
(83, 34, '2021-01-12', '2021-01-12 14:39:13', '2021-01-12 14:39:13'),
(84, 34, '2021-01-12', '2021-01-12 14:40:39', '2021-01-12 14:40:39'),
(85, 34, '2021-01-12', '2021-01-12 14:40:53', '2021-01-12 14:40:53'),
(86, 34, '2021-01-12', '2021-01-12 14:41:38', '2021-01-12 14:41:38'),
(87, 34, '2021-01-12', '2021-01-12 14:41:50', '2021-01-12 14:41:50'),
(88, 34, '2021-01-12', '2021-01-12 14:42:13', '2021-01-12 14:42:13'),
(89, 34, '2021-01-12', '2021-01-12 14:42:53', '2021-01-12 14:42:53'),
(90, 34, '2021-01-12', '2021-01-12 14:44:33', '2021-01-12 14:44:33'),
(91, 34, '2021-01-12', '2021-01-12 14:45:21', '2021-01-12 14:45:21'),
(92, 34, '2021-01-12', '2021-01-12 14:46:01', '2021-01-12 14:46:01'),
(93, 34, '2021-01-12', '2021-01-12 14:47:41', '2021-01-12 14:47:41'),
(94, 34, '2021-01-12', '2021-01-12 14:48:15', '2021-01-12 14:48:15'),
(95, 34, '2021-01-12', '2021-01-12 14:48:42', '2021-01-12 14:48:42'),
(96, 34, '2021-01-12', '2021-01-12 14:49:02', '2021-01-12 14:49:02'),
(97, 34, '2021-01-12', '2021-01-12 14:49:33', '2021-01-12 14:49:33'),
(98, 34, '2021-01-12', '2021-01-12 14:50:05', '2021-01-12 14:50:05'),
(99, 34, '2021-01-12', '2021-01-12 14:50:22', '2021-01-12 14:50:22'),
(100, 34, '2021-01-12', '2021-01-12 14:50:35', '2021-01-12 14:50:35'),
(101, 34, '2021-01-12', '2021-01-12 14:51:00', '2021-01-12 14:51:00'),
(102, 34, '2021-01-12', '2021-01-12 14:51:37', '2021-01-12 14:51:37'),
(103, 34, '2021-01-12', '2021-01-12 14:51:54', '2021-01-12 14:51:54'),
(104, 34, '2021-01-12', '2021-01-12 14:52:59', '2021-01-12 14:52:59'),
(105, 34, '2021-01-12', '2021-01-12 14:53:17', '2021-01-12 14:53:17'),
(106, 34, '2021-01-12', '2021-01-12 14:53:32', '2021-01-12 14:53:32'),
(107, 34, '2021-01-12', '2021-01-12 14:53:48', '2021-01-12 14:53:48'),
(108, 34, '2021-01-12', '2021-01-12 14:54:34', '2021-01-12 14:54:34'),
(109, 34, '2021-01-12', '2021-01-12 14:54:49', '2021-01-12 14:54:49'),
(110, 34, '2021-01-12', '2021-01-12 14:55:12', '2021-01-12 14:55:12'),
(111, 34, '2021-01-12', '2021-01-12 14:55:26', '2021-01-12 14:55:26'),
(112, 34, '2021-01-12', '2021-01-12 14:55:58', '2021-01-12 14:55:58'),
(113, 34, '2021-01-12', '2021-01-12 14:56:58', '2021-01-12 14:56:58'),
(114, 34, '2021-01-12', '2021-01-12 14:57:03', '2021-01-12 14:57:03'),
(115, 34, '2021-01-12', '2021-01-12 14:57:46', '2021-01-12 14:57:46'),
(116, 34, '2021-01-12', '2021-01-12 14:57:55', '2021-01-12 14:57:55'),
(117, 34, '2021-01-12', '2021-01-12 14:58:25', '2021-01-12 14:58:25'),
(118, 34, '2021-01-12', '2021-01-12 15:00:51', '2021-01-12 15:00:51'),
(119, 34, '2021-01-12', '2021-01-12 15:02:40', '2021-01-12 15:02:40'),
(120, 34, '2021-01-12', '2021-01-12 15:03:15', '2021-01-12 15:03:15'),
(121, 34, '2021-01-12', '2021-01-12 15:03:53', '2021-01-12 15:03:53'),
(122, 34, '2021-01-12', '2021-01-12 15:05:16', '2021-01-12 15:05:16'),
(123, 34, '2021-01-12', '2021-01-12 15:05:34', '2021-01-12 15:05:34'),
(124, 25, '2021-01-12', '2021-01-12 15:12:07', '2021-01-12 15:12:07'),
(125, 25, '2021-01-12', '2021-01-12 15:12:24', '2021-01-12 15:12:24'),
(126, 25, '2021-01-12', '2021-01-12 15:13:14', '2021-01-12 15:13:14'),
(127, 25, '2021-01-12', '2021-01-12 15:13:24', '2021-01-12 15:13:24'),
(128, 25, '2021-01-12', '2021-01-12 15:15:13', '2021-01-12 15:15:13'),
(129, 25, '2021-01-12', '2021-01-12 15:15:30', '2021-01-12 15:15:30'),
(130, 25, '2021-01-12', '2021-01-12 15:16:27', '2021-01-12 15:16:27'),
(131, 25, '2021-01-12', '2021-01-12 15:16:38', '2021-01-12 15:16:38'),
(132, 25, '2021-01-12', '2021-01-12 15:17:00', '2021-01-12 15:17:00'),
(133, 25, '2021-01-12', '2021-01-12 15:49:18', '2021-01-12 15:49:18'),
(134, 35, '2021-01-12', '2021-01-12 15:49:25', '2021-01-12 15:49:25'),
(135, 35, '2021-01-12', '2021-01-12 15:49:49', '2021-01-12 15:49:49'),
(136, 31, '2021-01-12', '2021-01-12 15:49:53', '2021-01-12 15:49:53'),
(137, 30, '2021-01-12', '2021-01-12 15:50:00', '2021-01-12 15:50:00'),
(138, 35, '2021-01-12', '2021-01-12 15:50:10', '2021-01-12 15:50:10'),
(139, 35, '2021-01-12', '2021-01-12 15:50:17', '2021-01-12 15:50:17'),
(140, 28, '2021-01-12', '2021-01-12 15:50:26', '2021-01-12 15:50:26'),
(141, 28, '2021-01-12', '2021-01-12 15:50:32', '2021-01-12 15:50:32'),
(142, 28, '2021-01-12', '2021-01-12 15:51:20', '2021-01-12 15:51:20'),
(143, 31, '2021-01-12', '2021-01-12 15:51:25', '2021-01-12 15:51:25'),
(144, 31, '2021-01-12', '2021-01-12 15:51:42', '2021-01-12 15:51:42'),
(145, 31, '2021-01-12', '2021-01-12 16:20:02', '2021-01-12 16:20:02'),
(146, 27, '2021-01-12', '2021-01-12 16:39:00', '2021-01-12 16:39:00'),
(147, 27, '2021-01-12', '2021-01-12 16:39:07', '2021-01-12 16:39:07'),
(148, 33, '2021-01-12', '2021-01-12 16:49:55', '2021-01-12 16:49:55'),
(149, 29, '2021-01-12', '2021-01-12 17:06:58', '2021-01-12 17:06:58'),
(150, 30, '2021-01-12', '2021-01-12 17:07:15', '2021-01-12 17:07:15'),
(151, 30, '2021-01-12', '2021-01-12 17:07:29', '2021-01-12 17:07:29'),
(152, 29, '2021-01-12', '2021-01-12 17:07:35', '2021-01-12 17:07:35'),
(153, 29, '2021-01-12', '2021-01-12 17:07:43', '2021-01-12 17:07:43'),
(154, 32, '2021-01-13', '2021-01-12 17:30:55', '2021-01-12 17:30:55'),
(155, 32, '2021-01-13', '2021-01-12 17:50:44', '2021-01-12 17:50:44'),
(156, 24, '2021-01-13', '2021-01-13 08:00:08', '2021-01-13 08:00:08'),
(157, 24, '2021-01-13', '2021-01-13 08:00:17', '2021-01-13 08:00:17'),
(158, 25, '2021-01-13', '2021-01-13 10:28:42', '2021-01-13 10:28:42'),
(159, 25, '2021-01-13', '2021-01-13 10:31:07', '2021-01-13 10:31:07'),
(160, 25, '2021-01-13', '2021-01-13 10:37:00', '2021-01-13 10:37:00'),
(161, 26, '2021-01-13', '2021-01-13 10:58:04', '2021-01-13 10:58:04'),
(162, 26, '2021-01-13', '2021-01-13 10:59:08', '2021-01-13 10:59:08'),
(163, 26, '2021-01-13', '2021-01-13 11:00:16', '2021-01-13 11:00:16'),
(164, 26, '2021-01-13', '2021-01-13 11:00:31', '2021-01-13 11:00:31'),
(165, 26, '2021-01-13', '2021-01-13 11:00:45', '2021-01-13 11:00:45'),
(166, 26, '2021-01-13', '2021-01-13 11:02:05', '2021-01-13 11:02:05'),
(167, 26, '2021-01-13', '2021-01-13 11:02:50', '2021-01-13 11:02:50'),
(168, 26, '2021-01-13', '2021-01-13 11:03:11', '2021-01-13 11:03:11'),
(169, 28, '2021-01-13', '2021-01-13 11:47:05', '2021-01-13 11:47:05'),
(170, 26, '2021-01-14', '2021-01-13 18:17:12', '2021-01-13 18:17:12'),
(171, 26, '2021-01-14', '2021-01-13 18:35:21', '2021-01-13 18:35:21'),
(172, 26, '2021-01-14', '2021-01-13 18:36:11', '2021-01-13 18:36:11'),
(173, 26, '2021-01-14', '2021-01-13 18:38:04', '2021-01-13 18:38:04'),
(174, 31, '2021-01-14', '2021-01-13 18:58:08', '2021-01-13 18:58:08'),
(175, 34, '2021-01-14', '2021-01-13 19:11:50', '2021-01-13 19:11:50'),
(176, 35, '2021-01-14', '2021-01-13 21:18:23', '2021-01-13 21:18:23'),
(177, 40, '2021-01-14', '2021-01-13 21:18:27', '2021-01-13 21:18:27'),
(178, 35, '2021-01-14', '2021-01-13 21:20:03', '2021-01-13 21:20:03'),
(179, 35, '2021-01-14', '2021-01-14 13:10:04', '2021-01-14 13:10:04'),
(180, 35, '2021-01-14', '2021-01-14 13:11:02', '2021-01-14 13:11:02'),
(181, 35, '2021-01-14', '2021-01-14 13:19:55', '2021-01-14 13:19:55'),
(182, 35, '2021-01-14', '2021-01-14 13:19:59', '2021-01-14 13:19:59'),
(183, 35, '2021-01-14', '2021-01-14 13:20:44', '2021-01-14 13:20:44'),
(184, 35, '2021-01-14', '2021-01-14 13:31:08', '2021-01-14 13:31:08'),
(185, 35, '2021-01-14', '2021-01-14 13:31:11', '2021-01-14 13:31:11'),
(186, 35, '2021-01-14', '2021-01-14 14:11:00', '2021-01-14 14:11:00'),
(187, 33, '2021-01-14', '2021-01-14 14:13:18', '2021-01-14 14:13:18'),
(188, 33, '2021-01-14', '2021-01-14 14:35:43', '2021-01-14 14:35:43'),
(189, 28, '2021-01-14', '2021-01-14 15:34:51', '2021-01-14 15:34:51'),
(190, 32, '2021-01-18', '2021-01-18 00:45:06', '2021-01-18 00:45:06'),
(191, 32, '2021-01-18', '2021-01-18 00:45:15', '2021-01-18 00:45:15'),
(192, 32, '2021-01-18', '2021-01-18 00:45:48', '2021-01-18 00:45:48'),
(193, 32, '2021-01-18', '2021-01-18 00:46:03', '2021-01-18 00:46:03'),
(194, 32, '2021-01-18', '2021-01-18 00:46:56', '2021-01-18 00:46:56'),
(195, 32, '2021-01-18', '2021-01-18 00:47:10', '2021-01-18 00:47:10'),
(196, 32, '2021-01-18', '2021-01-18 00:47:38', '2021-01-18 00:47:38'),
(197, 32, '2021-01-18', '2021-01-18 00:47:57', '2021-01-18 00:47:57'),
(198, 32, '2021-01-18', '2021-01-18 00:48:46', '2021-01-18 00:48:46'),
(199, 32, '2021-01-18', '2021-01-18 00:49:46', '2021-01-18 00:49:46'),
(200, 32, '2021-01-18', '2021-01-18 01:18:21', '2021-01-18 01:18:21'),
(201, 32, '2021-01-18', '2021-01-18 01:18:49', '2021-01-18 01:18:49'),
(202, 29, '2021-01-18', '2021-01-18 01:20:24', '2021-01-18 01:20:24'),
(203, 29, '2021-01-18', '2021-01-18 01:21:29', '2021-01-18 01:21:29'),
(204, 29, '2021-01-18', '2021-01-18 01:22:01', '2021-01-18 01:22:01'),
(205, 30, '2021-01-18', '2021-01-18 01:25:48', '2021-01-18 01:25:48'),
(206, 25, '2021-01-18', '2021-01-18 01:28:36', '2021-01-18 01:28:36'),
(207, 34, '2021-01-18', '2021-01-18 01:29:34', '2021-01-18 01:29:34'),
(208, 35, '2021-01-23', '2021-01-22 23:59:36', '2021-01-22 23:59:36'),
(209, 35, '2021-01-23', '2021-01-23 00:01:07', '2021-01-23 00:01:07'),
(210, 32, '2021-01-23', '2021-01-23 00:08:03', '2021-01-23 00:08:03'),
(211, 32, '2021-01-23', '2021-01-23 00:16:06', '2021-01-23 00:16:06'),
(212, 32, '2021-01-23', '2021-01-23 00:16:35', '2021-01-23 00:16:35'),
(213, 24, '2021-01-23', '2021-01-23 00:20:10', '2021-01-23 00:20:10'),
(214, 24, '2021-01-23', '2021-01-23 00:23:57', '2021-01-23 00:23:57'),
(215, 24, '2021-01-23', '2021-01-23 00:26:21', '2021-01-23 00:26:21'),
(216, 24, '2021-01-23', '2021-01-23 00:26:37', '2021-01-23 00:26:37'),
(217, 24, '2021-01-23', '2021-01-23 00:27:06', '2021-01-23 00:27:06'),
(218, 24, '2021-01-23', '2021-01-23 00:27:31', '2021-01-23 00:27:31'),
(219, 24, '2021-01-23', '2021-01-23 00:27:48', '2021-01-23 00:27:48'),
(220, 24, '2021-01-23', '2021-01-23 00:28:01', '2021-01-23 00:28:01'),
(221, 24, '2021-01-23', '2021-01-23 00:28:09', '2021-01-23 00:28:09'),
(222, 24, '2021-01-23', '2021-01-23 00:28:33', '2021-01-23 00:28:33'),
(223, 24, '2021-01-23', '2021-01-23 00:28:47', '2021-01-23 00:28:47'),
(224, 24, '2021-01-23', '2021-01-23 00:29:06', '2021-01-23 00:29:06'),
(225, 24, '2021-01-23', '2021-01-23 00:29:32', '2021-01-23 00:29:32'),
(226, 33, '2021-01-23', '2021-01-23 00:42:28', '2021-01-23 00:42:28'),
(227, 33, '2021-01-23', '2021-01-23 00:43:27', '2021-01-23 00:43:27'),
(228, 33, '2021-01-23', '2021-01-23 01:35:34', '2021-01-23 01:35:34'),
(229, 33, '2021-01-23', '2021-01-23 01:36:06', '2021-01-23 01:36:06'),
(230, 33, '2021-01-23', '2021-01-23 01:37:30', '2021-01-23 01:37:30'),
(231, 33, '2021-01-23', '2021-01-23 01:37:50', '2021-01-23 01:37:50'),
(232, 33, '2021-01-23', '2021-01-23 01:38:48', '2021-01-23 01:38:48'),
(233, 33, '2021-01-23', '2021-01-23 01:39:21', '2021-01-23 01:39:21'),
(234, 33, '2021-01-23', '2021-01-23 01:40:29', '2021-01-23 01:40:29'),
(235, 32, '2021-01-23', '2021-01-23 01:43:36', '2021-01-23 01:43:36'),
(236, 32, '2021-01-23', '2021-01-23 01:44:40', '2021-01-23 01:44:40'),
(237, 32, '2021-01-23', '2021-01-23 01:45:49', '2021-01-23 01:45:49'),
(238, 32, '2021-01-23', '2021-01-23 01:48:14', '2021-01-23 01:48:14'),
(239, 25, '2021-01-23', '2021-01-23 01:49:16', '2021-01-23 01:49:16'),
(240, 26, '2021-01-23', '2021-01-23 01:54:58', '2021-01-23 01:54:58'),
(241, 26, '2021-01-23', '2021-01-23 01:57:27', '2021-01-23 01:57:27'),
(242, 26, '2021-01-23', '2021-01-23 01:57:54', '2021-01-23 01:57:54'),
(243, 27, '2021-01-23', '2021-01-23 01:58:00', '2021-01-23 01:58:00'),
(244, 27, '2021-01-23', '2021-01-23 01:58:09', '2021-01-23 01:58:09'),
(245, 27, '2021-01-23', '2021-01-23 01:58:23', '2021-01-23 01:58:23'),
(246, 27, '2021-01-23', '2021-01-23 01:58:29', '2021-01-23 01:58:29'),
(247, 27, '2021-01-23', '2021-01-23 01:58:34', '2021-01-23 01:58:34'),
(248, 22, '2021-01-23', '2021-01-23 02:00:29', '2021-01-23 02:00:29'),
(249, 23, '2021-01-23', '2021-01-23 02:00:51', '2021-01-23 02:00:51'),
(250, 34, '2021-01-23', '2021-01-23 02:02:01', '2021-01-23 02:02:01'),
(251, 30, '2021-01-23', '2021-01-23 02:04:28', '2021-01-23 02:04:28'),
(252, 29, '2021-01-23', '2021-01-23 02:05:40', '2021-01-23 02:05:40'),
(253, 29, '2021-01-23', '2021-01-23 02:06:25', '2021-01-23 02:06:25'),
(254, 29, '2021-01-23', '2021-01-23 02:07:03', '2021-01-23 02:07:03'),
(255, 33, '2021-01-23', '2021-01-23 02:28:25', '2021-01-23 02:28:25'),
(256, 30, '2021-01-27', '2021-01-27 00:09:15', '2021-01-27 00:09:15'),
(257, 32, '2021-01-27', '2021-01-27 00:18:21', '2021-01-27 00:18:21'),
(258, 22, '2021-01-27', '2021-01-27 00:21:52', '2021-01-27 00:21:52'),
(259, 26, '2021-01-27', '2021-01-27 00:23:17', '2021-01-27 00:23:17'),
(260, 31, '2021-01-27', '2021-01-27 00:25:23', '2021-01-27 00:25:23'),
(261, 28, '2021-01-27', '2021-01-27 00:27:28', '2021-01-27 00:27:28'),
(262, 34, '2021-01-27', '2021-01-27 00:28:12', '2021-01-27 00:28:12'),
(263, 33, '2021-01-27', '2021-01-27 00:38:23', '2021-01-27 00:38:23'),
(264, 33, '2021-01-27', '2021-01-27 00:45:22', '2021-01-27 00:45:22'),
(265, 33, '2021-01-27', '2021-01-27 00:50:09', '2021-01-27 00:50:09'),
(266, 33, '2021-01-27', '2021-01-27 00:50:28', '2021-01-27 00:50:28'),
(267, 22, '2021-02-17', '2021-02-17 02:19:34', '2021-02-17 02:19:34'),
(268, 22, '2021-02-17', '2021-02-17 02:21:13', '2021-02-17 02:21:13'),
(269, 22, '2021-02-17', '2021-02-17 02:22:25', '2021-02-17 02:22:25'),
(270, 22, '2021-02-17', '2021-02-17 02:23:44', '2021-02-17 02:23:44'),
(271, 22, '2021-02-17', '2021-02-17 02:24:33', '2021-02-17 02:24:33'),
(272, 22, '2021-02-17', '2021-02-17 02:26:05', '2021-02-17 02:26:05'),
(273, 22, '2021-02-17', '2021-02-17 02:26:43', '2021-02-17 02:26:43'),
(274, 22, '2021-02-17', '2021-02-17 02:27:07', '2021-02-17 02:27:07'),
(275, 22, '2021-02-17', '2021-02-17 02:29:50', '2021-02-17 02:29:50'),
(276, 24, '2021-02-17', '2021-02-17 02:30:15', '2021-02-17 02:30:15'),
(277, 24, '2021-02-17', '2021-02-17 02:31:25', '2021-02-17 02:31:25'),
(278, 24, '2021-02-17', '2021-02-17 02:31:56', '2021-02-17 02:31:56'),
(279, 32, '2021-02-17', '2021-02-17 02:35:07', '2021-02-17 02:35:07'),
(280, 32, '2021-02-17', '2021-02-17 02:36:51', '2021-02-17 02:36:51'),
(281, 32, '2021-02-17', '2021-02-17 02:37:28', '2021-02-17 02:37:28'),
(282, 32, '2021-02-17', '2021-02-17 02:38:08', '2021-02-17 02:38:08'),
(283, 32, '2021-02-17', '2021-02-17 02:38:39', '2021-02-17 02:38:39'),
(284, 32, '2021-02-17', '2021-02-17 02:39:37', '2021-02-17 02:39:37'),
(285, 32, '2021-02-17', '2021-02-17 02:40:29', '2021-02-17 02:40:29'),
(286, 32, '2021-02-17', '2021-02-17 02:40:51', '2021-02-17 02:40:51'),
(287, 32, '2021-02-17', '2021-02-17 02:42:00', '2021-02-17 02:42:00'),
(288, 32, '2021-02-17', '2021-02-17 02:55:59', '2021-02-17 02:55:59'),
(289, 32, '2021-02-17', '2021-02-17 02:56:13', '2021-02-17 02:56:13'),
(290, 29, '2021-02-18', '2021-02-18 07:08:56', '2021-02-18 07:08:56'),
(291, 29, '2021-02-18', '2021-02-18 07:15:51', '2021-02-18 07:15:51'),
(292, 29, '2021-02-18', '2021-02-18 07:17:48', '2021-02-18 07:17:48'),
(293, 29, '2021-02-18', '2021-02-18 07:18:26', '2021-02-18 07:18:26'),
(294, 29, '2021-02-18', '2021-02-18 07:19:31', '2021-02-18 07:19:31'),
(295, 29, '2021-02-18', '2021-02-18 07:19:54', '2021-02-18 07:19:54'),
(296, 29, '2021-02-18', '2021-02-18 07:20:16', '2021-02-18 07:20:16'),
(297, 29, '2021-02-18', '2021-02-18 07:24:20', '2021-02-18 07:24:20'),
(298, 29, '2021-02-18', '2021-02-18 07:24:46', '2021-02-18 07:24:46'),
(299, 29, '2021-02-18', '2021-02-18 07:25:03', '2021-02-18 07:25:03'),
(300, 29, '2021-02-18', '2021-02-18 07:26:13', '2021-02-18 07:26:13'),
(301, 33, '2021-02-18', '2021-02-18 07:39:16', '2021-02-18 07:39:16'),
(302, 32, '2021-02-18', '2021-02-18 07:48:35', '2021-02-18 07:48:35'),
(303, 32, '2021-02-18', '2021-02-18 07:49:44', '2021-02-18 07:49:44'),
(304, 24, '2021-02-18', '2021-02-18 07:50:14', '2021-02-18 07:50:14'),
(305, 24, '2021-02-18', '2021-02-18 07:50:46', '2021-02-18 07:50:46'),
(306, 33, '2021-02-18', '2021-02-18 07:51:09', '2021-02-18 07:51:09'),
(307, 33, '2021-02-18', '2021-02-18 07:51:20', '2021-02-18 07:51:20'),
(308, 34, '2021-02-18', '2021-02-18 07:51:36', '2021-02-18 07:51:36'),
(309, 34, '2021-02-18', '2021-02-18 07:52:11', '2021-02-18 07:52:11'),
(310, 34, '2021-02-18', '2021-02-18 07:52:48', '2021-02-18 07:52:48'),
(311, 34, '2021-02-18', '2021-02-18 07:53:19', '2021-02-18 07:53:19'),
(312, 34, '2021-02-18', '2021-02-18 07:53:37', '2021-02-18 07:53:37'),
(313, 29, '2021-02-18', '2021-02-18 07:53:47', '2021-02-18 07:53:47'),
(314, 29, '2021-02-18', '2021-02-18 07:54:15', '2021-02-18 07:54:15'),
(315, 29, '2021-02-18', '2021-02-18 07:54:35', '2021-02-18 07:54:35'),
(316, 29, '2021-02-18', '2021-02-18 07:55:57', '2021-02-18 07:55:57'),
(317, 29, '2021-02-18', '2021-02-18 07:56:51', '2021-02-18 07:56:51'),
(318, 29, '2021-02-18', '2021-02-18 07:58:22', '2021-02-18 07:58:22'),
(319, 29, '2021-02-18', '2021-02-18 07:58:39', '2021-02-18 07:58:39'),
(320, 29, '2021-02-18', '2021-02-18 07:58:44', '2021-02-18 07:58:44'),
(321, 29, '2021-02-18', '2021-02-18 07:58:57', '2021-02-18 07:58:57'),
(322, 29, '2021-02-18', '2021-02-18 07:59:25', '2021-02-18 07:59:25'),
(323, 29, '2021-02-18', '2021-02-18 07:59:33', '2021-02-18 07:59:33'),
(324, 29, '2021-02-18', '2021-02-18 07:59:50', '2021-02-18 07:59:50'),
(325, 29, '2021-02-18', '2021-02-18 08:00:05', '2021-02-18 08:00:05'),
(326, 29, '2021-02-18', '2021-02-18 08:00:12', '2021-02-18 08:00:12'),
(327, 21, '2021-02-18', '2021-02-18 08:05:08', '2021-02-18 08:05:08'),
(328, 25, '2021-02-18', '2021-02-18 08:08:34', '2021-02-18 08:08:34'),
(329, 25, '2021-02-18', '2021-02-18 08:14:44', '2021-02-18 08:14:44'),
(330, 25, '2021-02-18', '2021-02-18 08:32:01', '2021-02-18 08:32:01'),
(331, 25, '2021-02-18', '2021-02-18 08:33:47', '2021-02-18 08:33:47'),
(332, 25, '2021-02-18', '2021-02-18 08:34:16', '2021-02-18 08:34:16'),
(333, 25, '2021-02-18', '2021-02-18 08:34:53', '2021-02-18 08:34:53'),
(334, 25, '2021-02-18', '2021-02-18 08:35:16', '2021-02-18 08:35:16'),
(335, 25, '2021-02-18', '2021-02-18 08:36:15', '2021-02-18 08:36:15'),
(336, 25, '2021-02-18', '2021-02-18 08:37:38', '2021-02-18 08:37:38'),
(337, 25, '2021-02-18', '2021-02-18 08:38:26', '2021-02-18 08:38:26'),
(338, 25, '2021-02-18', '2021-02-18 08:38:36', '2021-02-18 08:38:36'),
(339, 25, '2021-02-18', '2021-02-18 08:39:06', '2021-02-18 08:39:06'),
(340, 25, '2021-02-18', '2021-02-18 08:39:18', '2021-02-18 08:39:18'),
(341, 25, '2021-02-18', '2021-02-18 08:39:46', '2021-02-18 08:39:46'),
(342, 25, '2021-02-18', '2021-02-18 08:39:57', '2021-02-18 08:39:57'),
(343, 25, '2021-02-18', '2021-02-18 08:40:07', '2021-02-18 08:40:07'),
(344, 25, '2021-02-18', '2021-02-18 08:40:14', '2021-02-18 08:40:14'),
(345, 33, '2021-03-17', '2021-03-17 02:40:37', '2021-03-17 02:40:37'),
(346, 33, '2021-03-17', '2021-03-17 02:40:45', '2021-03-17 02:40:45'),
(347, 24, '2021-03-17', '2021-03-17 02:42:09', '2021-03-17 02:42:09'),
(348, 27, '2021-03-17', '2021-03-17 02:42:36', '2021-03-17 02:42:36'),
(349, 27, '2021-03-17', '2021-03-17 02:43:22', '2021-03-17 02:43:22'),
(350, 27, '2021-03-17', '2021-03-17 02:43:50', '2021-03-17 02:43:50'),
(351, 27, '2021-03-17', '2021-03-17 02:43:57', '2021-03-17 02:43:57'),
(352, 22, '2021-03-22', '2021-03-21 21:32:25', '2021-03-21 21:32:25'),
(353, 22, '2021-03-22', '2021-03-21 21:33:13', '2021-03-21 21:33:13'),
(354, 22, '2021-03-22', '2021-03-21 21:34:01', '2021-03-21 21:34:01'),
(355, 22, '2021-03-22', '2021-03-21 21:34:25', '2021-03-21 21:34:25'),
(356, 30, '2021-03-22', '2021-03-21 21:37:42', '2021-03-21 21:37:42'),
(357, 34, '2021-04-14', '2021-04-13 20:23:30', '2021-04-13 20:23:30'),
(358, 34, '2021-04-14', '2021-04-13 20:24:38', '2021-04-13 20:24:38'),
(359, 34, '2021-04-19', '2021-04-19 07:13:39', '2021-04-19 07:13:39'),
(360, 31, '2021-04-19', '2021-04-19 07:19:37', '2021-04-19 07:19:37'),
(361, 34, '2021-04-19', '2021-04-19 07:22:06', '2021-04-19 07:22:06'),
(362, 34, '2021-04-19', '2021-04-19 07:22:29', '2021-04-19 07:22:29'),
(363, 34, '2021-04-19', '2021-04-19 07:22:44', '2021-04-19 07:22:44'),
(364, 21, '2021-04-19', '2021-04-19 07:23:26', '2021-04-19 07:23:26'),
(365, 21, '2021-04-19', '2021-04-19 07:23:36', '2021-04-19 07:23:36'),
(366, 24, '2021-04-19', '2021-04-19 07:23:41', '2021-04-19 07:23:41'),
(367, 22, '2021-04-19', '2021-04-19 07:24:41', '2021-04-19 07:24:41'),
(368, 22, '2021-04-19', '2021-04-19 07:25:44', '2021-04-19 07:25:44'),
(369, 22, '2021-04-19', '2021-04-19 07:26:16', '2021-04-19 07:26:16'),
(370, 22, '2021-04-19', '2021-04-19 07:27:32', '2021-04-19 07:27:32'),
(371, 22, '2021-04-19', '2021-04-19 07:27:51', '2021-04-19 07:27:51'),
(372, 22, '2021-04-19', '2021-04-19 07:28:03', '2021-04-19 07:28:03'),
(373, 33, '2021-04-19', '2021-04-19 07:28:09', '2021-04-19 07:28:09'),
(374, 30, '2021-04-19', '2021-04-19 07:32:09', '2021-04-19 07:32:09'),
(375, 31, '2021-04-19', '2021-04-19 07:33:57', '2021-04-19 07:33:57'),
(376, 28, '2021-04-19', '2021-04-19 07:38:33', '2021-04-19 07:38:33'),
(377, 29, '2021-04-19', '2021-04-19 07:38:46', '2021-04-19 07:38:46'),
(378, 34, '2021-04-19', '2021-04-19 07:38:53', '2021-04-19 07:38:53'),
(379, 34, '2021-04-19', '2021-04-19 07:38:58', '2021-04-19 07:38:58'),
(380, 28, '2021-04-19', '2021-04-19 07:45:15', '2021-04-19 07:45:15'),
(381, 27, '2021-04-19', '2021-04-19 07:46:52', '2021-04-19 07:46:52'),
(382, 27, '2021-04-19', '2021-04-19 07:53:50', '2021-04-19 07:53:50'),
(383, 24, '2021-04-22', '2021-04-21 22:58:53', '2021-04-21 22:58:53'),
(384, 24, '2021-04-22', '2021-04-21 22:59:22', '2021-04-21 22:59:22'),
(385, 33, '2021-04-22', '2021-04-21 23:01:42', '2021-04-21 23:01:42'),
(386, 29, '2021-04-22', '2021-04-21 23:01:56', '2021-04-21 23:01:56'),
(387, 29, '2021-04-22', '2021-04-21 23:02:18', '2021-04-21 23:02:18'),
(388, 27, '2021-04-22', '2021-04-21 23:07:18', '2021-04-21 23:07:18'),
(389, 27, '2021-05-02', '2021-05-02 02:25:31', '2021-05-02 02:25:31'),
(390, 26, '2021-05-02', '2021-05-02 02:27:13', '2021-05-02 02:27:13'),
(391, 26, '2021-05-02', '2021-05-02 02:27:23', '2021-05-02 02:27:23'),
(392, 26, '2021-05-02', '2021-05-02 02:27:32', '2021-05-02 02:27:32'),
(393, 26, '2021-05-02', '2021-05-02 02:27:46', '2021-05-02 02:27:46'),
(394, 31, '2021-05-05', '2021-05-04 22:08:42', '2021-05-04 22:08:42'),
(395, 24, '2021-05-05', '2021-05-04 22:09:06', '2021-05-04 22:09:06'),
(396, 24, '2021-05-05', '2021-05-04 22:09:16', '2021-05-04 22:09:16'),
(397, 26, '2021-05-05', '2021-05-04 22:10:23', '2021-05-04 22:10:23'),
(398, 26, '2021-05-05', '2021-05-04 22:11:08', '2021-05-04 22:11:08'),
(399, 35, '2021-05-05', '2021-05-04 22:11:50', '2021-05-04 22:11:50'),
(400, 35, '2021-05-05', '2021-05-04 22:12:23', '2021-05-04 22:12:23'),
(401, 26, '2021-05-21', '2021-05-21 00:10:32', '2021-05-21 00:10:32'),
(402, 27, '2021-05-21', '2021-05-21 00:10:41', '2021-05-21 00:10:41'),
(403, 26, '2021-05-21', '2021-05-21 00:10:49', '2021-05-21 00:10:49'),
(404, 27, '2021-05-21', '2021-05-21 00:10:53', '2021-05-21 00:10:53'),
(405, 21, '2021-05-21', '2021-05-21 00:11:01', '2021-05-21 00:11:01'),
(406, 21, '2021-05-21', '2021-05-21 00:12:54', '2021-05-21 00:12:54'),
(407, 21, '2021-05-21', '2021-05-21 00:14:11', '2021-05-21 00:14:11'),
(408, 21, '2021-05-21', '2021-05-21 00:15:58', '2021-05-21 00:15:58'),
(409, 21, '2021-05-21', '2021-05-21 00:16:12', '2021-05-21 00:16:12'),
(410, 21, '2021-05-21', '2021-05-21 00:19:50', '2021-05-21 00:19:50'),
(411, 21, '2021-05-21', '2021-05-21 00:20:45', '2021-05-21 00:20:45'),
(412, 21, '2021-05-21', '2021-05-21 00:21:06', '2021-05-21 00:21:06'),
(413, 21, '2021-05-21', '2021-05-21 00:21:44', '2021-05-21 00:21:44'),
(414, 21, '2021-05-21', '2021-05-21 00:23:51', '2021-05-21 00:23:51'),
(415, 21, '2021-05-21', '2021-05-21 00:24:12', '2021-05-21 00:24:12'),
(416, 21, '2021-05-21', '2021-05-21 00:24:37', '2021-05-21 00:24:37'),
(417, 21, '2021-05-21', '2021-05-21 00:25:13', '2021-05-21 00:25:13'),
(418, 33, '2021-05-21', '2021-05-21 00:31:22', '2021-05-21 00:31:22'),
(419, 33, '2021-05-21', '2021-05-21 00:31:37', '2021-05-21 00:31:37'),
(420, 35, '2021-05-21', '2021-05-21 00:31:53', '2021-05-21 00:31:53'),
(421, 35, '2021-05-21', '2021-05-21 00:32:41', '2021-05-21 00:32:41'),
(422, 35, '2021-05-21', '2021-05-21 00:32:47', '2021-05-21 00:32:47'),
(423, 29, '2021-05-21', '2021-05-21 00:40:08', '2021-05-21 00:40:08'),
(424, 29, '2021-05-21', '2021-05-21 00:41:43', '2021-05-21 00:41:43'),
(425, 29, '2021-05-21', '2021-05-21 00:41:57', '2021-05-21 00:41:57'),
(426, 29, '2021-05-21', '2021-05-21 00:46:00', '2021-05-21 00:46:00'),
(427, 29, '2021-05-21', '2021-05-21 00:46:13', '2021-05-21 00:46:13'),
(428, 29, '2021-05-21', '2021-05-21 00:46:16', '2021-05-21 00:46:16'),
(429, 29, '2021-05-21', '2021-05-21 00:46:35', '2021-05-21 00:46:35'),
(430, 29, '2021-05-21', '2021-05-21 00:46:54', '2021-05-21 00:46:54'),
(431, 29, '2021-05-21', '2021-05-21 00:47:13', '2021-05-21 00:47:13'),
(432, 29, '2021-05-21', '2021-05-21 00:51:35', '2021-05-21 00:51:35'),
(433, 29, '2021-05-21', '2021-05-21 00:51:49', '2021-05-21 00:51:49'),
(434, 29, '2021-05-21', '2021-05-21 00:51:57', '2021-05-21 00:51:57'),
(435, 29, '2021-05-21', '2021-05-21 00:52:13', '2021-05-21 00:52:13'),
(436, 29, '2021-05-21', '2021-05-21 00:53:18', '2021-05-21 00:53:18'),
(437, 29, '2021-05-21', '2021-05-21 00:54:26', '2021-05-21 00:54:26'),
(438, 29, '2021-05-21', '2021-05-21 00:57:15', '2021-05-21 00:57:15'),
(439, 30, '2021-06-04', '2021-06-04 03:30:16', '2021-06-04 03:30:16'),
(440, 30, '2021-06-04', '2021-06-04 03:39:20', '2021-06-04 03:39:20'),
(441, 30, '2021-06-04', '2021-06-04 03:40:39', '2021-06-04 03:40:39'),
(442, 49, '2021-06-17', '2021-06-16 21:46:40', '2021-06-16 21:46:40'),
(443, 49, '2021-06-17', '2021-06-16 21:52:33', '2021-06-16 21:52:33'),
(444, 49, '2021-06-17', '2021-06-16 21:55:15', '2021-06-16 21:55:15'),
(445, 49, '2021-06-17', '2021-06-16 21:56:12', '2021-06-16 21:56:12'),
(446, 49, '2021-06-17', '2021-06-16 21:57:35', '2021-06-16 21:57:35'),
(447, 49, '2021-06-17', '2021-06-16 21:58:08', '2021-06-16 21:58:08'),
(448, 49, '2021-06-17', '2021-06-16 21:59:15', '2021-06-16 21:59:15'),
(449, 49, '2021-06-17', '2021-06-16 21:59:53', '2021-06-16 21:59:53'),
(450, 49, '2021-06-17', '2021-06-16 22:00:25', '2021-06-16 22:00:25'),
(451, 49, '2021-06-17', '2021-06-16 22:01:57', '2021-06-16 22:01:57'),
(452, 49, '2021-06-17', '2021-06-16 22:02:11', '2021-06-16 22:02:11'),
(453, 49, '2021-06-17', '2021-06-16 22:02:59', '2021-06-16 22:02:59'),
(454, 49, '2021-06-17', '2021-06-16 22:03:08', '2021-06-16 22:03:08'),
(455, 49, '2021-06-17', '2021-06-16 22:03:23', '2021-06-16 22:03:23'),
(456, 49, '2021-06-17', '2021-06-16 22:04:16', '2021-06-16 22:04:16'),
(457, 49, '2021-06-17', '2021-06-16 22:04:35', '2021-06-16 22:04:35'),
(458, 49, '2021-06-17', '2021-06-16 22:05:32', '2021-06-16 22:05:32'),
(459, 49, '2021-06-17', '2021-06-16 22:06:10', '2021-06-16 22:06:10'),
(460, 49, '2021-06-17', '2021-06-16 22:06:28', '2021-06-16 22:06:28'),
(461, 49, '2021-06-17', '2021-06-16 22:07:12', '2021-06-16 22:07:12'),
(462, 49, '2021-06-17', '2021-06-16 22:08:00', '2021-06-16 22:08:00'),
(463, 49, '2021-06-17', '2021-06-16 22:08:21', '2021-06-16 22:08:21'),
(464, 49, '2021-06-17', '2021-06-16 22:09:34', '2021-06-16 22:09:34'),
(465, 49, '2021-06-17', '2021-06-16 22:10:08', '2021-06-16 22:10:08'),
(466, 49, '2021-06-17', '2021-06-16 22:12:01', '2021-06-16 22:12:01'),
(467, 49, '2021-06-17', '2021-06-16 22:12:53', '2021-06-16 22:12:53'),
(468, 49, '2021-06-17', '2021-06-16 22:13:05', '2021-06-16 22:13:05'),
(469, 34, '2021-06-19', '2021-06-19 05:34:04', '2021-06-19 05:34:04'),
(470, 21, '2021-07-29', '2021-07-29 04:01:56', '2021-07-29 04:01:56'),
(471, 37, '2021-07-29', '2021-07-29 04:02:16', '2021-07-29 04:02:16'),
(472, 37, '2021-07-29', '2021-07-29 04:02:27', '2021-07-29 04:02:27'),
(473, 34, '2021-08-06', '2021-08-05 20:56:16', '2021-08-05 20:56:16'),
(474, 29, '2021-08-06', '2021-08-05 20:57:14', '2021-08-05 20:57:14'),
(475, 29, '2021-08-06', '2021-08-05 20:59:56', '2021-08-05 20:59:56'),
(476, 33, '2021-08-06', '2021-08-05 21:03:59', '2021-08-05 21:03:59'),
(477, 33, '2021-08-06', '2021-08-05 21:06:09', '2021-08-05 21:06:09'),
(478, 33, '2021-08-06', '2021-08-05 21:06:24', '2021-08-05 21:06:24'),
(479, 33, '2021-08-06', '2021-08-05 21:17:10', '2021-08-05 21:17:10'),
(480, 32, '2021-08-19', '2021-08-19 09:03:21', '2021-08-19 09:03:21'),
(481, 28, '2021-08-19', '2021-08-19 09:12:23', '2021-08-19 09:12:23'),
(482, 28, '2021-08-25', '2021-08-25 04:22:15', '2021-08-25 04:22:15'),
(483, 28, '2021-08-25', '2021-08-25 04:23:12', '2021-08-25 04:23:12'),
(484, 28, '2021-08-25', '2021-08-25 04:23:39', '2021-08-25 04:23:39'),
(485, 28, '2021-08-25', '2021-08-25 04:25:09', '2021-08-25 04:25:09'),
(486, 28, '2021-08-25', '2021-08-25 04:37:16', '2021-08-25 04:37:16'),
(487, 27, '2021-08-25', '2021-08-25 04:44:37', '2021-08-25 04:44:37'),
(488, 28, '2021-08-25', '2021-08-25 04:45:07', '2021-08-25 04:45:07'),
(489, 35, '2021-08-25', '2021-08-25 04:45:29', '2021-08-25 04:45:29'),
(490, 35, '2021-08-25', '2021-08-25 04:47:24', '2021-08-25 04:47:24'),
(491, 35, '2021-08-25', '2021-08-25 04:47:26', '2021-08-25 04:47:26'),
(492, 35, '2021-08-25', '2021-08-25 04:48:01', '2021-08-25 04:48:01'),
(493, 35, '2021-08-25', '2021-08-25 04:48:59', '2021-08-25 04:48:59'),
(494, 35, '2021-08-25', '2021-08-25 04:52:40', '2021-08-25 04:52:40'),
(495, 35, '2021-08-25', '2021-08-25 04:52:45', '2021-08-25 04:52:45'),
(496, 35, '2021-08-25', '2021-08-25 04:54:37', '2021-08-25 04:54:37'),
(497, 35, '2021-08-25', '2021-08-25 05:01:08', '2021-08-25 05:01:08'),
(498, 35, '2021-08-25', '2021-08-25 05:02:11', '2021-08-25 05:02:11'),
(499, 35, '2021-08-25', '2021-08-25 05:02:44', '2021-08-25 05:02:44'),
(500, 35, '2021-08-25', '2021-08-25 05:03:00', '2021-08-25 05:03:00'),
(501, 30, '2021-08-25', '2021-08-25 05:32:02', '2021-08-25 05:32:02'),
(502, 30, '2021-08-25', '2021-08-25 05:33:25', '2021-08-25 05:33:25'),
(503, 30, '2021-08-25', '2021-08-25 05:34:13', '2021-08-25 05:34:13'),
(504, 30, '2021-08-25', '2021-08-25 05:34:26', '2021-08-25 05:34:26'),
(505, 30, '2021-08-25', '2021-08-25 05:34:42', '2021-08-25 05:34:42'),
(506, 30, '2021-08-25', '2021-08-25 05:34:59', '2021-08-25 05:34:59'),
(507, 30, '2021-08-25', '2021-08-25 05:35:19', '2021-08-25 05:35:19'),
(508, 30, '2021-08-25', '2021-08-25 05:35:33', '2021-08-25 05:35:33'),
(509, 30, '2021-08-25', '2021-08-25 05:36:23', '2021-08-25 05:36:23'),
(510, 30, '2021-08-25', '2021-08-25 05:36:38', '2021-08-25 05:36:38'),
(511, 31, '2021-08-25', '2021-08-25 05:37:06', '2021-08-25 05:37:06'),
(512, 31, '2021-08-25', '2021-08-25 05:47:49', '2021-08-25 05:47:49'),
(513, 31, '2021-08-25', '2021-08-25 05:48:28', '2021-08-25 05:48:28'),
(514, 31, '2021-08-25', '2021-08-25 05:48:36', '2021-08-25 05:48:36'),
(515, 30, '2021-08-25', '2021-08-25 05:48:42', '2021-08-25 05:48:42'),
(516, 33, '2021-08-25', '2021-08-25 05:59:12', '2021-08-25 05:59:12'),
(517, 33, '2021-08-25', '2021-08-25 05:59:22', '2021-08-25 05:59:22'),
(518, 33, '2021-08-25', '2021-08-25 06:02:20', '2021-08-25 06:02:20'),
(519, 27, '2021-12-13', '2021-12-13 02:26:59', '2021-12-13 02:26:59'),
(520, 46, '2021-12-13', '2021-12-13 02:28:52', '2021-12-13 02:28:52'),
(521, 46, '2021-12-13', '2021-12-13 02:29:31', '2021-12-13 02:29:31'),
(522, 33, '2021-12-13', '2021-12-13 02:29:41', '2021-12-13 02:29:41'),
(523, 33, '2021-12-13', '2021-12-13 02:30:05', '2021-12-13 02:30:05'),
(524, 33, '2021-12-13', '2021-12-13 02:30:38', '2021-12-13 02:30:38'),
(525, 45, '2021-12-26', '2021-12-26 00:24:33', '2021-12-26 00:24:33'),
(526, 29, '2021-12-26', '2021-12-26 00:24:44', '2021-12-26 00:24:44'),
(527, 47, '2022-01-04', '2022-01-04 08:05:10', '2022-01-04 08:05:10'),
(528, 47, '2022-01-04', '2022-01-04 08:05:10', '2022-01-04 08:05:10'),
(529, 33, '2022-01-04', '2022-01-04 08:06:24', '2022-01-04 08:06:24'),
(530, 48, '2022-01-04', '2022-01-04 08:07:18', '2022-01-04 08:07:18'),
(531, 23, '2022-01-04', '2022-01-04 08:09:26', '2022-01-04 08:09:26'),
(532, 22, '2022-01-04', '2022-01-04 08:17:00', '2022-01-04 08:17:00'),
(533, 50, '2022-01-04', '2022-01-04 08:18:34', '2022-01-04 08:18:34'),
(534, 52, '2022-01-04', '2022-01-04 08:26:26', '2022-01-04 08:26:26'),
(535, 34, '2022-01-04', '2022-01-04 08:26:33', '2022-01-04 08:26:33'),
(536, 30, '2022-01-04', '2022-01-04 08:26:40', '2022-01-04 08:26:40'),
(537, 35, '2022-01-04', '2022-01-04 08:26:47', '2022-01-04 08:26:47'),
(538, 29, '2022-01-04', '2022-01-04 08:26:50', '2022-01-04 08:26:50'),
(539, 30, '2022-05-13', '2022-05-12 21:02:40', '2022-05-12 21:02:40'),
(540, 31, '2022-05-13', '2022-05-12 21:05:18', '2022-05-12 21:05:18'),
(541, 34, '2022-05-13', '2022-05-12 21:06:22', '2022-05-12 21:06:22'),
(542, 45, '2022-05-13', '2022-05-12 21:30:45', '2022-05-12 21:30:45'),
(543, 45, '2022-05-13', '2022-05-12 21:30:49', '2022-05-12 21:30:49'),
(544, 45, '2022-05-13', '2022-05-12 21:30:54', '2022-05-12 21:30:54'),
(545, 32, '2022-05-13', '2022-05-12 21:31:10', '2022-05-12 21:31:10'),
(546, 34, '2022-05-13', '2022-05-12 21:55:18', '2022-05-12 21:55:18'),
(547, 34, '2022-05-13', '2022-05-12 21:56:08', '2022-05-12 21:56:08'),
(548, 29, '2022-05-13', '2022-05-12 22:02:02', '2022-05-12 22:02:02'),
(549, 23, '2022-05-13', '2022-05-12 22:11:30', '2022-05-12 22:11:30'),
(550, 23, '2022-05-13', '2022-05-12 22:12:13', '2022-05-12 22:12:13'),
(551, 26, '2022-05-15', '2022-05-15 00:10:29', '2022-05-15 00:10:29'),
(552, 25, '2022-05-15', '2022-05-15 00:36:19', '2022-05-15 00:36:19'),
(553, 23, '2022-05-15', '2022-05-15 00:36:25', '2022-05-15 00:36:25'),
(554, 40, '2022-05-15', '2022-05-15 02:40:05', '2022-05-15 02:40:05'),
(555, 33, '2022-05-15', '2022-05-15 02:40:21', '2022-05-15 02:40:21'),
(556, 29, '2022-05-16', '2022-05-16 07:04:59', '2022-05-16 07:04:59'),
(557, 29, '2022-05-17', '2022-05-16 22:12:34', '2022-05-16 22:12:34'),
(558, 42, '2022-05-17', '2022-05-17 03:37:02', '2022-05-17 03:37:02'),
(559, 29, '2022-05-17', '2022-05-17 03:37:26', '2022-05-17 03:37:26'),
(560, 35, '2022-05-17', '2022-05-17 03:54:30', '2022-05-17 03:54:30'),
(561, 34, '2022-05-17', '2022-05-17 03:54:57', '2022-05-17 03:54:57'),
(562, 31, '2022-05-17', '2022-05-17 03:55:00', '2022-05-17 03:55:00'),
(563, 29, '2022-05-17', '2022-05-17 03:55:28', '2022-05-17 03:55:28'),
(564, 29, '2022-05-17', '2022-05-17 03:56:41', '2022-05-17 03:56:41'),
(565, 29, '2022-05-17', '2022-05-17 03:56:46', '2022-05-17 03:56:46'),
(566, 24, '2022-05-17', '2022-05-17 09:45:41', '2022-05-17 09:45:41'),
(567, 24, '2022-05-17', '2022-05-17 09:45:44', '2022-05-17 09:45:44'),
(568, 22, '2022-05-17', '2022-05-17 09:46:05', '2022-05-17 09:46:05'),
(569, 22, '2022-05-17', '2022-05-17 09:46:10', '2022-05-17 09:46:10'),
(570, 46, '2022-05-17', '2022-05-17 09:46:13', '2022-05-17 09:46:13'),
(571, 46, '2022-05-17', '2022-05-17 09:46:22', '2022-05-17 09:46:22'),
(572, 46, '2022-05-17', '2022-05-17 09:47:48', '2022-05-17 09:47:48'),
(573, 32, '2022-05-25', '2022-05-24 21:40:32', '2022-05-24 21:40:32'),
(574, 32, '2022-05-25', '2022-05-24 21:40:47', '2022-05-24 21:40:47'),
(575, 33, '2022-05-25', '2022-05-24 22:14:12', '2022-05-24 22:14:12'),
(576, 33, '2022-05-25', '2022-05-24 22:32:58', '2022-05-24 22:32:58'),
(577, 57, '2022-05-25', '2022-05-25 01:49:39', '2022-05-25 01:49:39'),
(578, 46, '2022-05-25', '2022-05-25 01:50:41', '2022-05-25 01:50:41'),
(579, 57, '2022-05-25', '2022-05-25 01:51:28', '2022-05-25 01:51:28'),
(580, 46, '2022-05-25', '2022-05-25 05:31:08', '2022-05-25 05:31:08'),
(581, 38, '2022-05-26', '2022-05-25 18:58:05', '2022-05-25 18:58:05'),
(582, 68, '2022-05-26', '2022-05-25 19:01:37', '2022-05-25 19:01:37'),
(583, 68, '2022-05-26', '2022-05-25 19:02:51', '2022-05-25 19:02:51'),
(584, 68, '2022-05-26', '2022-05-25 19:03:10', '2022-05-25 19:03:10'),
(585, 68, '2022-05-26', '2022-05-25 19:03:21', '2022-05-25 19:03:21'),
(586, 64, '2022-06-02', '2022-06-02 17:06:38', '2022-06-02 17:06:38'),
(587, 64, '2022-06-02', '2022-06-02 17:08:13', '2022-06-02 17:08:13'),
(588, 64, '2022-06-02', '2022-06-02 17:08:41', '2022-06-02 17:08:41'),
(589, 64, '2022-06-02', '2022-06-02 17:12:29', '2022-06-02 17:12:29'),
(590, 64, '2022-06-02', '2022-06-02 17:13:01', '2022-06-02 17:13:01'),
(591, 64, '2022-06-02', '2022-06-02 17:13:31', '2022-06-02 17:13:31'),
(592, 64, '2022-06-02', '2022-06-02 17:14:22', '2022-06-02 17:14:22'),
(593, 64, '2022-06-02', '2022-06-02 17:14:42', '2022-06-02 17:14:42'),
(594, 30, '2022-06-03', '2022-06-02 17:48:32', '2022-06-02 17:48:32'),
(595, 72, '2022-06-03', '2022-06-02 17:48:36', '2022-06-02 17:48:36'),
(596, 72, '2022-06-03', '2022-06-02 18:13:26', '2022-06-02 18:13:26'),
(597, 72, '2022-06-03', '2022-06-02 18:14:16', '2022-06-02 18:14:16'),
(598, 72, '2022-06-03', '2022-06-02 18:14:51', '2022-06-02 18:14:51'),
(599, 72, '2022-06-03', '2022-06-02 18:15:49', '2022-06-02 18:15:49'),
(600, 72, '2022-06-03', '2022-06-02 18:16:46', '2022-06-02 18:16:46'),
(601, 72, '2022-06-03', '2022-06-02 18:18:15', '2022-06-02 18:18:15'),
(602, 72, '2022-06-03', '2022-06-02 18:19:59', '2022-06-02 18:19:59'),
(603, 72, '2022-06-03', '2022-06-02 18:20:34', '2022-06-02 18:20:34'),
(604, 72, '2022-06-03', '2022-06-02 18:24:17', '2022-06-02 18:24:17'),
(605, 72, '2022-06-03', '2022-06-02 18:24:21', '2022-06-02 18:24:21'),
(606, 72, '2022-06-03', '2022-06-02 18:24:58', '2022-06-02 18:24:58'),
(607, 72, '2022-06-03', '2022-06-02 18:25:40', '2022-06-02 18:25:40'),
(608, 72, '2022-06-03', '2022-06-02 18:25:47', '2022-06-02 18:25:47'),
(609, 72, '2022-06-03', '2022-06-02 18:26:23', '2022-06-02 18:26:23'),
(610, 72, '2022-06-03', '2022-06-02 18:33:39', '2022-06-02 18:33:39'),
(611, 72, '2022-06-03', '2022-06-02 18:44:50', '2022-06-02 18:44:50'),
(612, 72, '2022-06-03', '2022-06-02 18:46:43', '2022-06-02 18:46:43'),
(613, 30, '2022-06-03', '2022-06-02 18:47:47', '2022-06-02 18:47:47'),
(614, 30, '2022-06-03', '2022-06-02 18:48:05', '2022-06-02 18:48:05'),
(615, 30, '2022-06-03', '2022-06-02 18:48:40', '2022-06-02 18:48:40'),
(616, 30, '2022-06-03', '2022-06-02 18:49:01', '2022-06-02 18:49:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_apps`
--
ALTER TABLE `request_apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggests`
--
ALTER TABLE `suggests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traffic`
--
ALTER TABLE `traffic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `viewers`
--
ALTER TABLE `viewers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `request_apps`
--
ALTER TABLE `request_apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suggests`
--
ALTER TABLE `suggests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `traffic`
--
ALTER TABLE `traffic`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `viewers`
--
ALTER TABLE `viewers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=617;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
