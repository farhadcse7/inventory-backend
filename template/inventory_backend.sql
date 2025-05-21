-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 10:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `code`, `file`, `created_at`, `updated_at`, `is_active`, `deleted_at`) VALUES
(1, 'Electronics', 'electronics', NULL, NULL, '2025-05-16 07:56:53', '2025-05-16 07:56:53', 1, NULL),
(3, 'Cosmatics', 'cosmatics', NULL, NULL, '2025-05-16 07:56:53', '2025-05-16 07:56:53', 1, NULL),
(5, 'Clearing Goods', 'clearing-goods', NULL, NULL, '2025-05-16 07:56:53', '2025-05-16 07:56:53', 1, NULL),
(6, 'Cloths', 'cloths', NULL, NULL, '2025-05-16 07:56:53', '2025-05-19 21:43:35', 1, NULL),
(7, 'Test Category u', 'test-category-u', '103', NULL, '2025-05-16 08:01:20', '2025-05-20 10:46:29', 1, NULL),
(9, 'Sharon Franks', 'sharon-franks', 'Quas consequatur of', NULL, '2025-05-19 23:43:33', '2025-05-19 23:43:33', 1, NULL),
(10, 'Aspen Witt', 'aspen-witt', 'Ea cupiditate volupt', NULL, '2025-05-19 23:43:50', '2025-05-19 23:43:50', 1, NULL),
(11, 'Kato Dejesus', 'kato-dejesus', 'Et vero voluptatem', NULL, '2025-05-19 23:46:55', '2025-05-19 23:46:55', 1, NULL),
(12, 'Shad Barr', 'shad-barr', 'Ducimus tempora eni', NULL, '2025-05-20 06:30:05', '2025-05-20 06:30:05', 1, NULL),
(13, 'Shad Barr', 'shad-barr', 'Ducimus tempora eni', NULL, '2025-05-20 06:30:06', '2025-05-20 06:30:06', 1, NULL),
(14, 'Clinton Britt', 'clinton-britt', 'Eu quia maxime ea vo', NULL, '2025-05-20 06:30:13', '2025-05-20 06:30:13', 1, NULL),
(15, 'Chastity Boyer', 'chastity-boyer', 'Voluptatem nihil a e', NULL, '2025-05-20 06:30:23', '2025-05-21 02:02:29', 1, NULL),
(16, 'Rowan Snyder', 'rowan-snyder', 'Porro quod reprehend', NULL, '2025-05-20 06:30:29', '2025-05-20 06:30:29', 1, NULL),
(17, 'Gail Bowen', 'gail-bowen', 'Ad voluptatum maxime', 'http://localhost:8000/storage/category/17.jpg', '2025-05-20 06:30:37', '2025-05-21 02:06:12', 1, NULL),
(18, 'Regina Lara', 'regina-lara', 'Ipsum ut assumenda p', 'http://localhost:8000/storage/category/18.jpg', '2025-05-20 07:45:05', '2025-05-21 02:02:18', 1, '2025-05-21 02:02:18'),
(19, 'Mohammad Singleton', 'mohammad-singleton', 'Maiores molestiae of', 'http://localhost:8000/storage/category/19.jpg', '2025-05-20 10:46:11', '2025-05-21 02:02:22', 1, '2025-05-21 02:02:22'),
(52, 'Amber Harrington', 'amber-harrington', 'Molestias enim est q', 'http://localhost:8000/storage/category/52.png', '2025-05-21 02:02:41', '2025-05-21 02:05:10', 1, '2025-05-21 02:05:10'),
(53, 'Belle Joyner', 'belle-joyner', 'Enim sunt ea perspi', 'http://localhost:8000/storage/category/53.jpg', '2025-05-21 02:03:02', '2025-05-21 02:04:41', 1, '2025-05-21 02:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_14_050711_create_personal_access_tokens_table', 1),
(5, '2025_05_15_234307_create_system_settings_table', 1),
(6, '2025_05_16_134829_create_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'farhad', 'e3d624f15e0f16caa8c7dbcb69843996f9753fb8b933d778fe354b8ca46184d7', '[\"*\"]', '2025-05-15 21:59:58', NULL, '2025-05-15 19:47:11', '2025-05-15 21:59:58'),
(2, 'App\\Models\\User', 1, 'farhad', 'ea7543ee4a6ae754daecfe85d697f1999c247654aa2328ff4261a6cf09b5749d', '[\"*\"]', '2025-05-16 08:02:42', NULL, '2025-05-16 07:59:29', '2025-05-16 08:02:42'),
(3, 'App\\Models\\User', 1, 'farhad', '4ef971a491e75a82271847603c79b79afc42ca9924ce3a11e7e4adaf882006e5', '[\"*\"]', '2025-05-20 22:22:55', NULL, '2025-05-19 19:50:51', '2025-05-20 22:22:55'),
(4, 'App\\Models\\User', 1, 'farhad', '6ad16f45273175fa902f82fe7db619807c5ba4c4f121011316b843aa56d51765', '[\"*\"]', '2025-05-20 22:27:12', NULL, '2025-05-20 22:22:37', '2025-05-20 22:27:12'),
(5, 'App\\Models\\User', 1, 'farhad', '51cef3401f2b5270c3715a5dccb8179ed62bb5563b898505b8c573c5f1e575ec', '[\"*\"]', '2025-05-21 00:20:10', NULL, '2025-05-20 23:00:31', '2025-05-21 00:20:10'),
(6, 'App\\Models\\User', 1, 'farhad', 'b91c9c62614495ce23ab742d69584b5dd8bab0999a600e201e21eacef037f163', '[\"*\"]', '2025-05-21 00:22:21', NULL, '2025-05-21 00:18:10', '2025-05-21 00:22:21'),
(7, 'App\\Models\\User', 1, 'farhad', '300be88320ab228b5f8fb3110707c010c1a9de7899237efdd429e365af42ed10', '[\"*\"]', '2025-05-21 01:51:56', NULL, '2025-05-21 00:21:56', '2025-05-21 01:51:56'),
(8, 'App\\Models\\User', 1, 'farhad', 'c9a22ef436cd4cdb774ff5be32ba08395bc92ea5b3f442ac668a842e271f3c50', '[\"*\"]', '2025-05-21 02:06:13', NULL, '2025-05-21 01:51:26', '2025-05-21 02:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2hGrFBKK8wvvtrr3JAyQzazq84fZ5u3zAiyQh32t', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidkZFU0NCSmlyUEs3VGxEN2VzcmFHNjF1WlhlY1JsYXBWTXNMZzlQbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747808286),
('2xsjPTuaxevHeTIdTLnfRTk1umntjDaC3NSwFH4l', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSzgxbTBTRUo1R2NYYldJR2lTT3Z5TjVhOXcyUjhDcHIwemRVYWN1TSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747801355),
('fb7VUwgzZMsHcga4drXac7BqsJek3lxoT6fblSxf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQU9uczN2ZGtBenRLNkZ0RmFrcExRd1JFbjlma3hTSFVjSk52QzVzUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747813884),
('k4x5oKJHCq2Qlwr9kgaXqWKORFgjaKzMDLtrOSfr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNXNtR2xUZWF3YnJZVTlDcGVzVE9lWldhMVJVclNlUm5hWnc4UG84VyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747808515),
('Q7K0883MDvqGgBg3GFTmoEcTlxdvxQRWjrRnB4Wp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUUJHV2NGNTAyWTBCaU1MSHB3QndPQkZzS0RiQnZKbWNoNlRJME1VVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747803629),
('RoI7t29PxRDVpGVYvmZFK6rtpVsxn2IZsyF4hwrt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHp6Qm5zWHNkVmFPTlJJSDJFTG9mMllvTDVHMWk0V1lyOWN5eW5QYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1747812092),
('yrnVaLS8R4l905VPeDZGjaZziegaeAEuA5vvbi2Y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnJBN0dleTNhWVU0WjJ3U0p3aHp2QTliWWlsYU04QjF0VjU2MFNoRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1747808634);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_logo` varchar(255) DEFAULT NULL,
  `site_favicon` varchar(255) DEFAULT NULL,
  `site_phone` varchar(255) DEFAULT NULL,
  `site_email` varchar(255) DEFAULT NULL,
  `site_facebook_link` varchar(255) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `site_name`, `site_logo`, `site_favicon`, `site_phone`, `site_email`, `site_facebook_link`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Inventory Shop -3', 'null', 'null', '12345678901', 'admin@inventory.com', 'inventory@facebook.com', 'POS, Inventory, Shopping', 'Its a mult product inventory shop', '2025-05-15 19:46:14', '2025-05-15 21:59:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `phone`, `email`, `nid`, `address`, `company_name`, `email_verified_at`, `password`, `remember_token`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'admin', '0123456789', 'admin@gmail.com', NULL, NULL, NULL, '2025-05-15 19:46:14', '$2y$12$41NTLA9Ft3tD9UkaY60cF.44s1zLs3ULQPaX59C7ZyZRyUktv7bfm', 'pKAVSoFLiS', 1, '2025-05-15 19:46:14', '2025-05-15 19:46:14', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nid_unique` (`nid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
