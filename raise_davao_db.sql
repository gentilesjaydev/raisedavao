-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql207.infinityfree.com
-- Generation Time: Mar 12, 2026 at 12:38 AM
-- Server version: 11.4.10-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_41369119_raise_davao_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_name` varchar(150) DEFAULT NULL,
  `activity_type` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `guest_name`, `activity_type`, `description`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 1, NULL, 'login', 'User logged into the system', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 02:21:07'),
(3, 1, NULL, 'submission_management', 'Deleted covenant submission ID 1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 02:29:04'),
(4, 1, NULL, 'submission_management', 'Deleted covenant submission ID 2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 02:29:06'),
(5, NULL, 'Kent Brian Navarro', 'covenant_signed', 'Guest \'Kent Brian Navarro\' signed the covenant for \'OTEN\'', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 02:33:41'),
(6, NULL, 'Kent Brian Navarro', 'covenant_signed', 'Guest \'Kent Brian Navarro\' signed the covenant for \'ASDS\'', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 02:34:21'),
(7, NULL, 'Mary Joy', 'covenant_signed', 'Guest \'Mary Joy\' signed the covenant for \'n/a\'', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 02:39:39'),
(8, NULL, 'Jang Ha-ri', 'covenant_signed', 'Guest \'Jang Ha-ri\' signed the covenant for \'asdasdas\'', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 02:40:38'),
(9, NULL, 'Vicky W McCoy', 'covenant_signed', 'Guest \'Vicky W McCoy\' signed the covenant for \'asdasdasd\'', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 02:49:34'),
(10, NULL, 'asdasd', 'covenant_signed', 'Guest \'asdasd\' signed the covenant for \'asdasdasd\'', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 02:50:25'),
(11, NULL, 'fbdbfdb', 'covenant_signed', 'Guest \'fbdbfdb\' signed the covenant for \'bdgfbs\'', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 02:50:56'),
(12, NULL, 'asdasdasdsadas', 'covenant_signed', 'Guest \'asdasdasdsadas\' signed the covenant for \'n/a\'', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 02:56:39'),
(13, 1, NULL, 'submission_management', 'Deleted covenant submission ID 4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 03:08:11'),
(14, NULL, 'Jobert Owen', 'covenant_signed', 'Guest \'Jobert Owen\' signed the covenant for \'asdsad\'', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 03:22:03'),
(15, 1, NULL, 'login', 'User logged into the system', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 03:30:33'),
(16, NULL, 'Jay Gentiles', 'covenant_signed', 'Guest \'Jay Gentiles\' signed the covenant for \'DNSC\'', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 03:48:55'),
(17, 1, NULL, 'submission_management', 'Deleted covenant submission ID 12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 04:00:19'),
(18, NULL, 'Jay Gentiles', 'covenant_signed', 'Guest \'Jay Gentiles\' signed the covenant for \'DNSC\'', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 04:00:57'),
(19, 1, NULL, 'login', 'User logged into the system', '124.217.112.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 04:16:45'),
(20, 1, NULL, 'profile_update', 'Updated profile details and password', '124.217.112.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 04:20:30'),
(21, 1, NULL, 'login', 'User logged into the system', '124.217.112.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 04:20:45'),
(22, 1, NULL, 'login', 'User logged into the system', '124.217.112.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 04:22:16'),
(23, 1, NULL, 'login', 'User logged into the system', '124.217.112.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 04:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `covenant_submissions`
--

CREATE TABLE `covenant_submissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `organization_name` varchar(255) NOT NULL,
  `institution_type` varchar(100) NOT NULL,
  `represented_by` varchar(255) NOT NULL,
  `position_title` varchar(255) NOT NULL,
  `email_address` varchar(150) NOT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `signature_file` varchar(255) NOT NULL,
  `pdf_file` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `signed_at` datetime DEFAULT current_timestamp(),
  `pos_top` float DEFAULT 0,
  `pos_left` float DEFAULT 0,
  `pos_rotation` float DEFAULT 0,
  `pos_scale` float DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `covenant_submissions`
--

INSERT INTO `covenant_submissions` (`id`, `user_id`, `organization_name`, `institution_type`, `represented_by`, `position_title`, `email_address`, `contact_number`, `signature_file`, `pdf_file`, `ip_address`, `signed_at`, `pos_top`, `pos_left`, `pos_rotation`, `pos_scale`) VALUES
(3, NULL, 'OTEN', 'Industry Partner', 'Kent Brian Navarro', 'DOG STYLE', 'fistaristo@gufum.com', '09567340309', 'sign_guest_1773282820_KentBrianNavarro.png', 'covenant_guest_1773282820_KentBrianNavarro.pdf', '::1', '2026-03-12 10:33:41', 65.1239, 5.60267, -0.289331, 0.943293),
(5, NULL, 'n/a', 'Higher Education Institution (HEI)', 'Mary Joy', 'dog style', 'fistaristo@gufum.com', '09567340309', 'sign_guest_1773283179_MaryJoy.png', 'covenant_guest_1773283179_MaryJoy.pdf', '::1', '2026-03-12 10:39:39', 67.826, 46.6633, -5.29261, 1.04124),
(6, NULL, 'asdasdas', 'Higher Education Institution (HEI)', 'Jang Ha-ri', 'asdasd', 'jellypenajhanrex@gmail.com', 'asdasd', 'sign_guest_1773283238_JangHa-ri.png', 'covenant_guest_1773283238_JangHa-ri.pdf', '::1', '2026-03-12 10:40:38', 14.2878, 40.9324, -9.76248, 1.02525),
(7, NULL, 'asdasdasd', 'Higher Education Institution (HEI)', 'Vicky W McCoy', 'asdasdas', 'jellypenajhanrex@gmail.com', 'dasdasd', 'sign_guest_1773283774_VickyWMcCoy.png', 'covenant_guest_1773283774_VickyWMcCoy.pdf', '::1', '2026-03-12 10:49:34', 61.038, 62.6014, 8.34298, 1.08617),
(8, NULL, 'asdasdasd', 'Others', 'asdasd', 'asdasda', 'fistaristo@gufum.com', 'dasdas', 'sign_guest_1773283825_asdasd.png', 'covenant_guest_1773283825_asdasd.pdf', '::1', '2026-03-12 10:50:25', 22.4543, 38.0509, 5.22784, 1.02536),
(9, NULL, 'bdgfbs', 'Industry Partner', 'fbdbfdb', 'bffdbadfb', 'jellypenajhanrex@gmail.com', 'fbdbfdbdf', 'sign_guest_1773283855_fbdbfdb.png', 'covenant_guest_1773283855_fbdbfdb.pdf', '::1', '2026-03-12 10:50:55', 71.6039, 5.49174, 0.0409557, 0.857228),
(10, NULL, 'n/a', 'Industry Partner', 'asdasdasdsadas', 'test', 'fistaristo@gufum.com', '09567340309', 'sign_guest_1773284198_asdasdasdsadas.png', 'covenant_guest_1773284198_asdasdasdsadas.pdf', '::1', '2026-03-12 10:56:38', 20.7853, 83.7935, -9.9502, 0.945314),
(11, NULL, 'asdsad', 'Industry Partner', 'Jobert Owen', 'asdsadasd', 'asdasdsad@gmail.com', 'asdsad', 'sign_guest_1773285723_JobertOwen.png', 'covenant_guest_1773285723_JobertOwen.pdf', '::1', '2026-03-12 11:22:03', 34.3606, 12.7381, 8.51549, 1.08699),
(13, NULL, 'DNSC', 'Industry Partner', 'Jay Gentiles', 'CEO', 'gentilesjay8426@gmail.com', '09567340309', 'sign_guest_1773288057_JayGentiles.png', 'covenant_guest_1773288057_JayGentiles.pdf', '::1', '2026-03-12 12:00:57', 40.3533, 56.6053, 7.17346, 0.954484);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signature_file` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `signature_file`, `role`, `status`, `created_at`) VALUES
(1, 'System Super Admin', 'raisedavao@gmail.com', '$2y$10$YEqGKI19r0wRShVxJldP4eOCsToRkTvLAa8.zpw9Sv/LwB1ukWYZ6', NULL, 'admin', 'active', '2026-03-11 09:13:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_ibfk_1` (`user_id`);

--
-- Indexes for table `covenant_submissions`
--
ALTER TABLE `covenant_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `covenant_submissions`
--
ALTER TABLE `covenant_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `covenant_submissions`
--
ALTER TABLE `covenant_submissions`
  ADD CONSTRAINT `covenant_submissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
