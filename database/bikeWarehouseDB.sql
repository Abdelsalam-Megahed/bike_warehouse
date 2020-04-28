-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2020 at 11:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bikes`
--

CREATE TABLE `bikes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model` enum('Curt Belt','Curt','Stout Green','Stout Grey','Stellar Red','Stellar Blue') COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frame_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Arrived','In transit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` enum('L','M','S') COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) NOT NULL,
  `length` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bikes`
--

INSERT INTO `bikes` (`id`, `model`, `color`, `l_number`, `frame_number`, `sku_code`, `status`, `size`, `weight`, `length`, `height`, `width`, `warehouse_id`, `created_at`, `updated_at`) VALUES
(1, 'Stout Green', 'Green', 'L-8818', 'FRA4607', 'SKU-A-ST-752', 'Arrived', 'S', 12.50, 1000, 2100, 2000, 1, '2020-04-20 09:42:24', '2020-04-20 09:42:24'),
(2, 'Stout Grey', 'Grey', 'L-9238', 'FRA2793', 'SKU-A-ST-752', 'Arrived', 'M', 12.50, 1050, 2200, 2000, 1, '2020-04-20 09:47:57', '2020-04-20 09:47:57'),
(3, 'Stellar Blue', 'Blue', 'L-5631', 'FRA9923', 'SKU-A-ST-752', 'Arrived', 'S', 12.50, 1050, 2200, 2000, 1, '2020-04-20 11:02:59', '2020-04-20 11:02:59'),
(4, 'Stellar Blue', 'Blue', 'L-8174', 'FRA2115', 'SKU-A-ST-752', 'Arrived', 'S', 11.50, 1050, 2100, 2000, 2, '2020-04-20 11:17:03', '2020-04-20 11:17:03'),
(5, 'Stellar Blue', 'Blue', 'L-2764', 'FRA4877', 'SKU-A-ST-752', 'Arrived', 'S', 11.50, 1050, 2100, 2000, 2, '2020-04-20 11:19:26', '2020-04-20 11:19:26'),
(6, 'Stellar Red', 'Red', 'L-2716', 'FRA7487', 'SKU-A-ST-752', 'Arrived', 'S', 11.50, 1050, 2100, 2000, 2, '2020-04-20 11:22:14', '2020-04-20 11:22:14'),
(7, 'Curt Belt', NULL, 'L-4778', 'FRA8998', 'SKU-A-CB-952', 'Arrived', 'L', 11.50, 1050, 2100, 2000, 1, '2020-04-21 04:20:28', '2020-04-21 04:20:28'),
(8, 'Stellar Blue', 'Blue', 'L-8462', 'FRA3292', 'SKU-A-CB-452', 'Arrived', 'L', 11.50, 1050, 2100, 2000, 1, '2020-04-21 05:22:57', '2020-04-21 05:22:57'),
(9, 'Curt Belt', NULL, 'L-9959', 'FRA1058', 'SKU-A-CB-452', 'Arrived', 'S', 10.50, 1050, 2100, 2000, 1, '2020-04-21 05:24:34', '2020-04-21 05:24:34'),
(10, 'Curt Belt', NULL, 'L-4459', 'FRA7974', 'SKU-A-CB-452', 'Arrived', 'L', 10.50, 1050, 2100, 2000, 1, '2020-04-21 05:25:52', '2020-04-21 05:25:52'),
(11, 'Stellar Red', 'Red', 'L-206', 'FRA5474', 'SKU-A-ST-452', 'Arrived', 'L', 12.50, 1250, 2300, 2000, 3, '2020-04-24 08:45:18', '2020-04-24 08:45:18'),
(12, 'Curt', NULL, 'L-8607', 'FRA8508', 'SKU-A-CT-452', 'In transit', 'M', 12.50, 1250, 2300, 2000, 3, '2020-04-24 10:26:27', '2020-04-24 10:26:27'),
(13, 'Curt', NULL, 'L-7817', 'FRA3775', 'SKU-A-CT-452', 'In transit', 'S', 10.50, 1050, 2200, 1900, 1, '2020-04-24 10:26:50', '2020-04-24 10:26:50'),
(14, 'Stellar Blue', 'Blue', 'L-4923', 'FRA7798', 'SKU-A-ST-452', 'In transit', 'S', 10.50, 1050, 2200, 1900, 3, '2020-04-26 04:45:34', '2020-04-26 04:45:34'),
(15, 'Stout Green', 'Green', 'L-7899', 'FRA1357', 'SKU-A-ST-452', 'In transit', 'S', 10.50, 1050, 2200, 1900, 3, '2020-04-26 13:04:59', '2020-04-26 13:04:59'),
(16, 'Stout Green', 'Green', 'L-6531', 'FRA6963', 'SKU-A-ST-452', 'In transit', 'S', 10.50, 1050, 2200, 1900, 2, '2020-04-26 13:05:15', '2020-04-26 13:05:15'),
(17, 'Stout Green', 'Green', 'L-6276', 'FRA8907', 'SKU-A-ST-452', 'Arrived', 'M', 12.50, 1150, 2200, 1900, 2, '2020-04-26 13:39:46', '2020-04-26 13:39:46'),
(18, 'Curt Belt', NULL, 'L-6874', 'FRA343', 'SKU-A-ST-452', 'Arrived', 'M', 12.50, 1150, 2200, 1900, 2, '2020-04-26 15:52:24', '2020-04-26 15:52:24'),
(19, 'Curt', NULL, 'L-6146', 'FRA7309', 'SKU-A-ST-452', 'Arrived', 'M', 12.50, 1150, 2200, 1900, 2, '2020-04-27 15:40:38', '2020-04-27 15:40:38'),
(20, 'Stellar Red', 'Red', 'L-1363', 'FRA6168', 'SKU-A-ST-452', 'Arrived', 'M', 12.50, 1150, 2200, 1900, 1, '2020-04-27 15:42:03', '2020-04-27 15:42:03'),
(21, 'Stout Green', 'Green', 'L-8687', 'FRA2905', 'SKU-A-ST-452', 'Arrived', 'L', 12.50, 1350, 2400, 1900, 1, '2020-04-27 15:42:41', '2020-04-27 15:42:41'),
(22, 'Stellar Red', 'Red', 'L-3450', 'FRA2795', 'SKU-A-ST-452', 'In transit', 'M', 12.50, 1150, 2200, 1900, 2, '2020-04-27 15:43:46', '2020-04-27 15:43:46'),
(25, 'Stout Grey', 'Grey', 'L-1933', 'FRA5207', 'SKU-A-ST-452', 'In transit', 'L', 12.50, 1150, 2200, 1900, 2, '2020-04-28 05:51:48', '2020-04-28 05:51:48'),
(26, 'Stout Grey', 'Grey', 'L-6785', 'FRA1012', 'SKU-A-ST-452', 'Arrived', 'L', 12.50, 1150, 2200, 1900, 2, '2020-04-28 05:53:19', '2020-04-28 06:02:31'),
(27, 'Stout Grey', 'Grey', 'L-9246', 'FRA585', 'SKU-A-ST-452', 'Arrived', 'M', 12.50, 1150, 2200, 1900, 1, '2020-04-28 06:04:13', '2020-04-28 06:09:43'),
(28, 'Stout Grey', 'Grey', 'L-1027', 'FRA527', 'SKU-A-ST-452', 'In transit', 'M', 12.50, 1150, 2200, 1900, 1, '2020-04-28 06:14:55', '2020-04-28 06:20:17'),
(29, 'Curt', NULL, 'L-3248', 'FRA3144', 'SKU-A-ST-452', 'In transit', 'M', 12.50, 1150, 2200, 1900, 1, '2020-04-28 06:27:26', '2020-04-28 06:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_count` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `product_name`, `product_count`, `created_at`, `updated_at`) VALUES
(1, 'Charger', 50, '2020-04-28 04:46:32', '2020-04-28 04:46:32'),
(2, 'Charger', 43, '2020-04-28 04:46:43', '2020-04-28 04:46:43'),
(3, 'Lock', 324, '2020-04-28 04:47:00', '2020-04-28 04:47:00'),
(4, 'Lock', 120, '2020-04-28 04:47:22', '2020-04-28 04:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(23, '2020_04_06_082912_create_orders_table', 2),
(26, '2020_04_09_082152_create_warehouse_extra_table', 2),
(27, '2020_04_09_121904_create_warehouse_extras_table', 2),
(64, '2014_10_12_000000_create_users_table', 3),
(65, '2019_08_19_000000_create_failed_jobs_table', 3),
(66, '2020_04_05_080733_create_warehouses_table', 3),
(67, '2020_04_06_131550_create_bikes_table', 3),
(68, '2020_04_07_082912_create_orders_table', 3),
(69, '2020_04_08_081556_create_extras_table', 3),
(70, '2020_04_09_130105_create_warehouse_extras_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bike_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `bike_id`, `created_at`, `updated_at`) VALUES
(1, 'AMP4734', 'Janna', 'Olha@gmail.com', '+204293007986', 'Viru 23, Tallinn, Estonia', 15, '2020-04-20 09:54:33', '2020-04-20 09:54:33'),
(2, 'AMP8729', 'Karim', 'Karim@gmail.com', '+204293007986', 'Tahrir 23, Cairo, EGYPT', 14, '2020-04-20 09:58:34', '2020-04-20 09:58:34'),
(3, 'AMP65514', 'Jack', 'JAck@gmail.com', '+204293007986', 'Taime 8, Tallinn, ESTONIA', 11, '2020-04-26 17:45:28', '2020-04-26 17:45:28'),
(4, 'AMP90064', 'Sophie', 'Sophie@gmail.com', '+37283765739', 'Laikma 20, Tallinn, ESTONIA', 12, '2020-04-28 05:08:32', '2020-04-28 05:08:32');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'TLN', '2020-04-20 09:41:50', '2020-04-20 09:41:50'),
(2, 'EXT', '2020-04-20 09:41:56', '2020-04-20 09:41:56'),
(3, 'CUSTOMER', '2020-04-20 09:42:00', '2020-04-20 09:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_extras`
--

CREATE TABLE `warehouse_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `extra_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse_extras`
--

INSERT INTO `warehouse_extras` (`id`, `extra_id`, `warehouse_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-04-28 04:48:15', '2020-04-28 04:48:15'),
(2, 2, 2, '2020-04-28 04:48:49', '2020-04-28 04:48:49'),
(3, 3, 1, '2020-04-28 04:48:57', '2020-04-28 04:48:57'),
(4, 4, 2, '2020-04-28 04:49:06', '2020-04-28 04:49:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bikes`
--
ALTER TABLE `bikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bikes_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_bike_id_foreign` (`bike_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `warehouses_name_unique` (`name`);

--
-- Indexes for table `warehouse_extras`
--
ALTER TABLE `warehouse_extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_extras_extra_id_foreign` (`extra_id`),
  ADD KEY `warehouse_extras_warehouse_id_foreign` (`warehouse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bikes`
--
ALTER TABLE `bikes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `warehouse_extras`
--
ALTER TABLE `warehouse_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bikes`
--
ALTER TABLE `bikes`
  ADD CONSTRAINT `bikes_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_bike_id_foreign` FOREIGN KEY (`bike_id`) REFERENCES `bikes` (`id`);

--
-- Constraints for table `warehouse_extras`
--
ALTER TABLE `warehouse_extras`
  ADD CONSTRAINT `warehouse_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`),
  ADD CONSTRAINT `warehouse_extras_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
