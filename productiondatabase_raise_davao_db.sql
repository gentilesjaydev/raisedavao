-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql207.infinityfree.com
-- Generation Time: Mar 17, 2026 at 01:32 AM
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
(38, 1, NULL, 'login', 'User logged into the system', '109.111.197.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 01:09:42'),
(39, 1, NULL, 'login', 'User logged into the system', '175.158.236.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', '2026-03-17 01:14:17'),
(40, 1, NULL, 'login', 'User logged into the system', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/145.0.7632.108 Mobile/15E148 Safari/604.1', '2026-03-17 02:15:39'),
(41, 1, NULL, 'login', 'User logged into the system', '209.146.18.211', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 02:24:21'),
(42, NULL, 'Brian jacob balili', 'covenant_signed', 'Guest \'Brian jacob balili\' signed the covenant for \'Philippine college of technology\'', '175.176.83.3', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', '2026-03-17 03:30:13'),
(43, NULL, 'NIKKO GERALD EROY', 'covenant_signed', 'Guest \'NIKKO GERALD EROY\' signed the covenant for \'Mindanao Kokusai Daigaku\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '2026-03-17 03:30:14'),
(44, NULL, 'Abi Lesaca', 'covenant_signed', 'Guest \'Abi Lesaca\' signed the covenant for \'IBM Philippines\'', '112.211.3.133', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', '2026-03-17 03:30:41'),
(45, NULL, 'Melchor Jr A Alcoran', 'covenant_signed', 'Guest \'Melchor Jr A Alcoran\' signed the covenant for \'TAGUM CITY COLLEGE OF SCIENCE AND TECHNOLOGY FOUNDATION, INC\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', '2026-03-17 03:30:49'),
(46, NULL, 'Cloyd Cunanan', 'covenant_signed', 'Guest \'Cloyd Cunanan\' signed the covenant for \'Area 51 Information Technology Services\'', '175.158.236.29', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', '2026-03-17 03:30:54'),
(47, NULL, 'Ross Fievanni Inguillo', 'covenant_signed', 'Guest \'Ross Fievanni Inguillo\' signed the covenant for \'DOST Davao Region\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', '2026-03-17 03:30:55'),
(48, NULL, 'Janette Claro', 'covenant_signed', 'Guest \'Janette Claro\' signed the covenant for \'Jose Maria College Foundation Inc.\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '2026-03-17 03:30:55'),
(49, NULL, 'John Louis Mercaral', 'covenant_signed', 'Guest \'John Louis Mercaral\' signed the covenant for \'Legacy College of Compostela\'', '175.158.236.144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/145.0.7632.108 Mobile/15E148 Safari/604.1', '2026-03-17 03:31:08'),
(50, NULL, 'Chris Mark E. Coronado', 'covenant_signed', 'Guest \'Chris Mark E. Coronado\' signed the covenant for \'Northlink Techonological College\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 10; POCO X3 NFC Build/QKQ1.200512.002) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.6312.118 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.48.1-gn', '2026-03-17 03:31:13'),
(51, NULL, 'Felomino Alba', 'covenant_signed', 'Guest \'Felomino Alba\' signed the covenant for \'Davao del Sur State College\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '2026-03-17 03:31:18'),
(52, NULL, 'Sheila Marie Villarin', 'covenant_signed', 'Guest \'Sheila Marie Villarin\' signed the covenant for \'University of Mindanao-CCE\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '2026-03-17 03:31:23'),
(53, NULL, 'Kelly Ruth S. Marimon', 'covenant_signed', 'Guest \'Kelly Ruth S. Marimon\' signed the covenant for \'Asian International School of Aeronautics and Technology\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', '2026-03-17 03:31:24'),
(54, NULL, 'Kyle Dominic Pacatang', 'covenant_signed', 'Guest \'Kyle Dominic Pacatang\' signed the covenant for \'ACES Tagum College, Inc.\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '2026-03-17 03:31:24'),
(55, NULL, 'Joash Tubaga', 'covenant_signed', 'Guest \'Joash Tubaga\' signed the covenant for \'Coretech Group Inc\'', '110.54.158.153', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Mobile/15E148 Safari/604.1', '2026-03-17 03:31:28'),
(56, NULL, 'Dony C. Dongiapon', 'covenant_signed', 'Guest \'Dony C. Dongiapon\' signed the covenant for \'Davao Oriental State University\'', '110.54.158.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 03:31:33'),
(57, NULL, 'Karen Shane A. Priete', 'covenant_signed', 'Guest \'Karen Shane A. Priete\' signed the covenant for \'St. John Paul II College of Davao\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '2026-03-17 03:31:35'),
(58, NULL, 'Roberto A. Gumba Jr.', 'covenant_signed', 'Guest \'Roberto A. Gumba Jr.\' signed the covenant for \'DOST-DNSC BUGSAI TBI\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 12; DBY2-L09 Build/HUAWEIDBY2-L09; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/114.0.5735.196 Safari/537.36 [FB_IAB/FB4A;FBAV/534.0.0.53.103;]', '2026-03-17 03:31:36'),
(59, NULL, 'Oneil Victoriano', 'covenant_signed', 'Guest \'Oneil Victoriano\' signed the covenant for \'Ateneo de Davao University\'', '111.90.245.143', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '2026-03-17 03:31:37'),
(60, NULL, 'Lester Dave Pelias', 'covenant_signed', 'Guest \'Lester Dave Pelias\' signed the covenant for \'Lyceum Of The Philippines - Davao\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', '2026-03-17 03:31:43'),
(61, NULL, 'DEXTER C. HONORIO', 'covenant_signed', 'Guest \'DEXTER C. HONORIO\' signed the covenant for \'DOST-DNSC BUGSAI TBI\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', '2026-03-17 03:31:47'),
(62, NULL, 'Rod Albores', 'covenant_signed', 'Guest \'Rod Albores\' signed the covenant for \'Reverion Technologies Co\'', '131.226.113.72', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', '2026-03-17 03:31:54'),
(63, NULL, 'Rosy Biala', 'covenant_signed', 'Guest \'Rosy Biala\' signed the covenant for \'Assumption College Of Davao\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '2026-03-17 03:31:56'),
(64, NULL, 'Arwin B. Rañola', 'covenant_signed', 'Guest \'Arwin B. Rañola\' signed the covenant for \'South Philippine Adventiat College\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 12; vivo 1907) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36 VivoBrowser/15.6.0.0', '2026-03-17 03:31:57'),
(65, NULL, 'Chloe Mhae Regalado', 'covenant_signed', 'Guest \'Chloe Mhae Regalado\' signed the covenant for \'Aces Polytechnic College Inc.\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/145.0.7632.108 Mobile/15E148 Safari/604.1', '2026-03-17 03:31:58'),
(66, NULL, 'Benjie Pabroa', 'covenant_signed', 'Guest \'Benjie Pabroa\' signed the covenant for \'Cor Jesu College\'', '180.190.49.156', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', '2026-03-17 03:32:02'),
(67, NULL, 'Jeraline A. Astillo', 'covenant_signed', 'Guest \'Jeraline A. Astillo\' signed the covenant for \'Davao Vision College\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/411.0.879111500 Mobile/15E148 Safari/604.1', '2026-03-17 03:32:04'),
(68, NULL, 'Rey C. Sanchez', 'covenant_signed', 'Guest \'Rey C. Sanchez\' signed the covenant for \'TESDA XI\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '2026-03-17 03:32:10'),
(69, NULL, 'Cesar Tecson', 'covenant_signed', 'Guest \'Cesar Tecson\' signed the covenant for \'Cor Jesu College\'', '64.226.63.181', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '2026-03-17 03:32:13'),
(70, NULL, 'Jennifer L. Pido', 'covenant_signed', 'Guest \'Jennifer L. Pido\' signed the covenant for \'Brokenshire College, Inc.\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '2026-03-17 03:32:16'),
(71, NULL, 'Rodrigo S. Pangantihon Jr.', 'covenant_signed', 'Guest \'Rodrigo S. Pangantihon Jr.\' signed the covenant for \'CHED XI\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', '2026-03-17 03:32:19'),
(72, NULL, 'Owen Pilongo', 'covenant_signed', 'Guest \'Owen Pilongo\' signed the covenant for \'Holy cross of Davao College\'', '111.90.243.232', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '2026-03-17 03:32:33'),
(73, NULL, 'Hanna Mae Limpag', 'covenant_signed', 'Guest \'Hanna Mae Limpag\' signed the covenant for \'University of the Philippines Mindanao\'', '209.146.18.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 03:32:38'),
(74, NULL, 'Belinda Torres', 'covenant_signed', 'Guest \'Belinda Torres\' signed the covenant for \'ICT Davao\'', '111.90.244.61', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', '2026-03-17 03:32:39'),
(75, NULL, 'Editha L. Hebron, Ph.D.', 'covenant_signed', 'Guest \'Editha L. Hebron, Ph.D.\' signed the covenant for \'University of Southeastern Philippines, Tagum-Mabini.Campus\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '2026-03-17 03:32:47'),
(76, NULL, 'Ser Jamier Llego', 'covenant_signed', 'Guest \'Ser Jamier Llego\' signed the covenant for \'Davao Central College\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', '2026-03-17 03:33:01'),
(77, NULL, 'Daryl Ivan E. Hisola', 'covenant_signed', 'Guest \'Daryl Ivan E. Hisola\' signed the covenant for \'Cor Jesu College\'', '138.84.112.205', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '2026-03-17 03:33:02'),
(78, NULL, 'Genevieve Pilongo', 'covenant_signed', 'Guest \'Genevieve Pilongo\' signed the covenant for \'Mapua Malayan Colleges Mindanao\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '2026-03-17 03:33:09'),
(79, NULL, 'Marjohn B Robillo', 'covenant_signed', 'Guest \'Marjohn B Robillo\' signed the covenant for \'PropulseVA\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 [FBAN/FBIOS;FBAV/552.0.0.24.108;FBBV/903536508;FBDV/iPhone14,3;FBMD/iPhone;FBSN/iOS;FBSV/26.3.1;FBSS/3;FBCR/;FBID/phone;FBLC/en_US;FBOP/80]', '2026-03-17 03:33:16'),
(80, NULL, 'Cleofe L. Calo', 'covenant_signed', 'Guest \'Cleofe L. Calo\' signed the covenant for \'ST. MARY\'S COLLEGE OF TAGUM\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 15; ALI-NX1 Build/HONORALI-N21; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/145.0.7632.159 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/551.0.0.48.62;]', '2026-03-17 03:33:18'),
(81, NULL, 'Slash Fuertes', 'covenant_signed', 'Guest \'Slash Fuertes\' signed the covenant for \'Tagum City College of Science and Technology Foundation, INC\'', '175.158.236.170', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '2026-03-17 03:33:24'),
(82, NULL, 'Antonette Albarracin', 'covenant_signed', 'Guest \'Antonette Albarracin\' signed the covenant for \'SPAMAST\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Mobile/15E148 Safari/604.1', '2026-03-17 03:33:27'),
(83, NULL, 'Hannah Velez', 'covenant_signed', 'Guest \'Hannah Velez\' signed the covenant for \'DICT\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 14; SM-A055F Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/143.0.7499.115 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/551.0.0.48.62;]', '2026-03-17 03:33:32'),
(84, NULL, 'vanessa septimo', 'covenant_signed', 'Guest \'vanessa septimo\' signed the covenant for \'Mats College of Technology\'', '180.190.45.29', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '2026-03-17 03:33:42'),
(85, NULL, 'Aileen Bianca Ramboanga', 'covenant_signed', 'Guest \'Aileen Bianca Ramboanga\' signed the covenant for \'Wonderworks\'', '110.54.168.197', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/135.0.7049.83 Mobile/15E148 Safari/604.1', '2026-03-17 03:34:05'),
(86, NULL, 'Giovanna Fae Oguis', 'covenant_signed', 'Guest \'Giovanna Fae Oguis\' signed the covenant for \'University of the Philippines Mindanao\'', '110.54.207.231', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', '2026-03-17 03:34:12'),
(87, NULL, 'christopher villahermosa', 'covenant_signed', 'Guest \'christopher villahermosa\' signed the covenant for \'polytechnic college of davao del sur, inc.\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '2026-03-17 03:34:22'),
(88, NULL, 'ROANNE SABERON', 'covenant_signed', 'Guest \'ROANNE SABERON\' signed the covenant for \'St.Peter\'s College of Toril, Inc.\'', '175.158.236.236', 'Mozilla/5.0 (Linux; Android 10; SM-A115F Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/145.0.7632.159 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/551.0.0.48.62;]', '2026-03-17 03:34:33'),
(89, NULL, 'Kathryn Faith Espinosa', 'covenant_signed', 'Guest \'Kathryn Faith Espinosa\' signed the covenant for \'PSITE\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.2 Mobile/15E148 Safari/604.1', '2026-03-17 03:34:34'),
(90, NULL, 'Elizabeth Badilles', 'covenant_signed', 'Guest \'Elizabeth Badilles\' signed the covenant for \'DICT\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 14; SM-A055F Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/143.0.7499.115 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/551.0.0.48.62;]', '2026-03-17 03:34:57'),
(91, NULL, 'Jhon Bryan Cantil', 'covenant_signed', 'Guest \'Jhon Bryan Cantil\' signed the covenant for \'St. Mary\'s College of Bansalan, Inc.\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 [FBAN/FBIOS;FBAV/552.0.0.24.108;FBBV/903536508;FBDV/iPhone14,5;FBMD/iPhone;FBSN/iOS;FBSV/26.3.1;FBSS/3;FBCR/;FBID/phone;FBLC/en_US;FBOP/80]', '2026-03-17 03:36:27'),
(92, NULL, 'Ciemavil Alcain', 'covenant_signed', 'Guest \'Ciemavil Alcain\' signed the covenant for \'Cor Jesu College Inc.\'', '180.190.49.247', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '2026-03-17 03:37:08'),
(93, NULL, 'Jerome Dela Peña', 'covenant_signed', 'Guest \'Jerome Dela Peña\' signed the covenant for \'ASSUMPTION COLLEGE OF DAVAO\'', '209.146.18.211', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '2026-03-17 03:38:02'),
(94, NULL, 'Jennellie G. Gatmaitan', 'covenant_signed', 'Guest \'Jennellie G. Gatmaitan\' signed the covenant for \'SPAMAST\'', '209.146.18.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 [FBAN/FBIOS;FBAV/551.0.0.27.107;FBBV/897058033;FBDV/iPhone14,5;FBMD/iPhone;FBSN/iOS;FBSV/26.2;FBSS/3;FBCR/;FBID/phone;FBLC/en_US;FBOP/80]', '2026-03-17 03:39:16'),
(95, NULL, 'Ida G. Tudy', 'covenant_signed', 'Guest \'Ida G. Tudy\' signed the covenant for \'City College of Davao\'', '222.127.94.219', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '2026-03-17 03:42:10'),
(96, NULL, 'Francis Jade Solomon', 'covenant_signed', 'Guest \'Francis Jade Solomon\' signed the covenant for \'STI College Davao\'', '110.54.169.106', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '2026-03-17 03:42:13'),
(97, NULL, 'Jessiel Chris D. Hilot', 'covenant_signed', 'Guest \'Jessiel Chris D. Hilot\' signed the covenant for \'STI College Davao\'', '180.191.148.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 03:53:43'),
(98, 1, NULL, 'login', 'User logged into the system', '203.177.94.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 04:00:17');

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
(16, NULL, 'Philippine college of technology', 'Higher Education Institution (HEI)', 'Brian jacob balili', 'Vice president for administration', 'jacobbalilipct@gmail.com', '09399168031', 'sign_guest_1773718213_Brianjacobbalili.png', 'covenant_guest_1773718213_Brianjacobbalili.pdf', '175.176.83.3', '2026-03-17 11:30:13', 12.9013, 71.7705, -4.79399, 0.972696),
(17, NULL, 'Mindanao Kokusai Daigaku', 'Higher Education Institution (HEI)', 'NIKKO GERALD EROY', 'Program Coordinator', 'nikkogerald.eroy@gmail.com', '09567586311', 'sign_guest_1773718214_NIKKOGERALDEROY.png', 'covenant_guest_1773718214_NIKKOGERALDEROY.pdf', '209.146.18.211', '2026-03-17 11:30:14', 23.606, 31.9792, -6.41107, 0.875012),
(18, NULL, 'IBM Philippines', 'Industry Partner', 'Abi Lesaca', 'Corporate Social Responsibility', 'abi.lesaca@ibm.com', '', 'sign_guest_1773718241_AbiLesaca.png', 'covenant_guest_1773718241_AbiLesaca.pdf', '112.211.3.133', '2026-03-17 11:30:41', 12.0298, 70.8982, 0.805801, 0.975582),
(19, NULL, 'TAGUM CITY COLLEGE OF SCIENCE AND TECHNOLOGY FOUNDATION, INC', 'Higher Education Institution (HEI)', 'Melchor Jr A Alcoran', 'Faculty', 'melalcoran@gmail.com', '', 'sign_guest_1773718249_MelchorJrAAlcoran.png', 'covenant_guest_1773718249_MelchorJrAAlcoran.pdf', '209.146.18.211', '2026-03-17 11:30:49', 69.8093, 6.0943, -0.717219, 0.928498),
(20, NULL, 'Area 51 Information Technology Services', 'Industry Partner', 'Cloyd Cunanan', 'CRO', 'cunanan.cloyd@area-51.ph', '09177621021', 'sign_guest_1773718253_CloydCunanan.png', 'covenant_guest_1773718253_CloydCunanan.pdf', '175.158.236.29', '2026-03-17 11:30:54', 17.912, 76.9142, 3.14464, 1.12575),
(21, NULL, 'DOST Davao Region', 'Industry Partner', 'Ross Fievanni Inguillo', 'SRS II', 'rfainguillo@region11.dost.gov.ph', '0822271313', 'sign_guest_1773718255_RossFievanniInguillo.png', 'covenant_guest_1773718255_RossFievanniInguillo.pdf', '209.146.18.211', '2026-03-17 11:30:55', 13.7901, 25.2996, 1.96476, 1.13239),
(22, NULL, 'Jose Maria College Foundation Inc.', 'Higher Education Institution (HEI)', 'Janette Claro', 'Dean', 'janette.claro@jmc.edu.ph', '', 'sign_guest_1773718255_JanetteClaro.png', 'covenant_guest_1773718255_JanetteClaro.pdf', '209.146.18.211', '2026-03-17 11:30:55', 37.8416, 22.6562, 0.670442, 0.90438),
(23, NULL, 'Legacy College of Compostela', 'Higher Education Institution (HEI)', 'John Louis Mercaral', 'Program Heaf', 'mercaraljohnlouis@gmail.com', '', 'sign_guest_1773718268_JohnLouisMercaral.png', 'covenant_guest_1773718268_JohnLouisMercaral.pdf', '175.158.236.144', '2026-03-17 11:31:08', 28.0156, 70.6708, 5.87923, 0.933719),
(24, NULL, 'Northlink Techonological College', 'Higher Education Institution (HEI)', 'Chris Mark E. Coronado', 'Faculty', 'cmec137@gmail.com', '', 'sign_guest_1773718273_ChrisMarkECoronado.png', 'covenant_guest_1773718273_ChrisMarkECoronado.pdf', '209.146.18.211', '2026-03-17 11:31:13', 70.4092, 29.2887, -10.6187, 0.86859),
(25, NULL, 'Davao del Sur State College', 'Higher Education Institution (HEI)', 'Felomino Alba', 'Dean', 'felominoalba@dssc.edu.ph', '', 'sign_guest_1773718278_FelominoAlba.png', 'covenant_guest_1773718278_FelominoAlba.pdf', '209.146.18.211', '2026-03-17 11:31:18', 59.3126, 52.1103, 6.31406, 0.976582),
(26, NULL, 'University of Mindanao-CCE', 'Higher Education Institution (HEI)', 'Sheila Marie Villarin', 'Faculty Member', 'svillarin@umindanao.edu.ph', '', 'sign_guest_1773718283_SheilaMarieVillarin.png', 'covenant_guest_1773718283_SheilaMarieVillarin.pdf', '209.146.18.211', '2026-03-17 11:31:23', 21.3386, 27.4558, -6.17591, 0.975072),
(27, NULL, 'Asian International School of Aeronautics and Technology', 'Higher Education Institution (HEI)', 'Kelly Ruth S. Marimon', 'Program Head', 'kellyserenio@aisat.edu.ph', '09777645706', 'sign_guest_1773718283_KellyRuthSMarimon.png', 'covenant_guest_1773718283_KellyRuthSMarimon.pdf', '209.146.18.211', '2026-03-17 11:31:24', 31.6394, 10.6436, 3.48058, 0.894453),
(28, NULL, 'ACES Tagum College, Inc.', 'Higher Education Institution (HEI)', 'Kyle Dominic Pacatang', 'Program Coordinator', 'kyledominicp@gmail.com', '09910542736', 'sign_guest_1773718284_KyleDominicPacatang.png', 'covenant_guest_1773718284_KyleDominicPacatang.pdf', '209.146.18.211', '2026-03-17 11:31:24', 14.7574, 17.3924, 8.39899, 0.907344),
(29, NULL, 'Coretech Group Inc', 'Industry Partner', 'Joash Tubaga', 'President', 'joash@fixmymac.ph', '09052010200', 'sign_guest_1773718287_JoashTubaga.png', 'covenant_guest_1773718287_JoashTubaga.pdf', '110.54.158.153', '2026-03-17 11:31:28', 15.9106, 45.7009, -10.5913, 1.05285),
(30, NULL, 'Davao Oriental State University', 'Higher Education Institution (HEI)', 'Dony C. Dongiapon', 'Program Head', 'dony.dongiapon@dorsu.edu.ph', '09365826823', 'sign_guest_1773718293_DonyCDongiapon.png', 'covenant_guest_1773718293_DonyCDongiapon.pdf', '110.54.158.182', '2026-03-17 11:31:33', 26.4937, 68.5208, 9.94896, 1.003),
(31, NULL, 'St. John Paul II College of Davao', 'Higher Education Institution (HEI)', 'Karen Shane A. Priete', 'IT Program Head', 'ict.head@sjp2cd.edu.ph', '09662456713', 'sign_guest_1773718295_KarenShaneAPriete.png', 'covenant_guest_1773718295_KarenShaneAPriete.pdf', '209.146.18.211', '2026-03-17 11:31:35', 40.6398, 20.0217, 0.865904, 1.03997),
(32, NULL, 'DOST-DNSC BUGSAI TBI', 'Industry Partner', 'Roberto A. Gumba Jr.', 'TBI Manager', 'roberto.gumba@dnsc.edu.ph', '09294551959', 'sign_guest_1773718296_RobertoAGumbaJr.png', 'covenant_guest_1773718296_RobertoAGumbaJr.pdf', '209.146.18.211', '2026-03-17 11:31:36', 64.3937, 57.9236, 12.4954, 1.12917),
(33, NULL, 'Ateneo de Davao University', 'Higher Education Institution (HEI)', 'Oneil Victoriano', 'Asst Dean for Computer Studies Cluster', 'obvictoriano@addu.edu.ph', '', 'sign_guest_1773718296_OneilVictoriano.png', 'covenant_guest_1773718296_OneilVictoriano.pdf', '111.90.245.143', '2026-03-17 11:31:37', 65.3356, 76.2114, -7.94202, 0.897765),
(34, NULL, 'Lyceum Of The Philippines - Davao', 'Others', 'Lester Dave Pelias', 'Dean', 'lester.pelias@lpudavao.edu.ph', '', 'sign_guest_1773718303_LesterDavePelias.png', 'covenant_guest_1773718303_LesterDavePelias.pdf', '209.146.18.211', '2026-03-17 11:31:43', 76.8013, 21.9646, -0.97972, 1.07633),
(35, NULL, 'DOST-DNSC BUGSAI TBI', 'Industry Partner', 'DEXTER C. HONORIO', 'IT STAFF', 'dexter.honorio@dnsc.edu.ph', '09276187645', 'sign_guest_1773718307_DEXTERCHONORIO.png', 'covenant_guest_1773718307_DEXTERCHONORIO.pdf', '209.146.18.211', '2026-03-17 11:31:47', 52.4379, 19.0728, -3.12963, 0.922674),
(36, NULL, 'Reverion Technologies Co', 'Industry Partner', 'Rod Albores', 'CEO / Founder', 'rod@reveriontech.com', '09497073003', 'sign_guest_1773718314_RodAlbores.png', 'covenant_guest_1773718314_RodAlbores.pdf', '131.226.113.72', '2026-03-17 11:31:54', 79.0916, 53.3068, -3.16112, 0.902515),
(37, NULL, 'Assumption College Of Davao', 'Higher Education Institution (HEI)', 'Rosy Biala', 'BSIT Program Head', 'rmbiala@acdeducation.com', '', 'sign_guest_1773718315_RosyBiala.png', 'covenant_guest_1773718315_RosyBiala.pdf', '209.146.18.211', '2026-03-17 11:31:56', 65.4491, 27.7153, 7.24872, 1.13049),
(38, NULL, 'South Philippine Adventiat College', 'Higher Education Institution (HEI)', 'Arwin B. Rañola', 'Progtam Head', 'whinzspac@gmail.com', '', 'sign_guest_1773718317_ArwinBRaola.png', 'covenant_guest_1773718317_ArwinBRaola.pdf', '209.146.18.211', '2026-03-17 11:31:57', 42.3008, 65.8782, 3.00551, 1.01641),
(39, NULL, 'Aces Polytechnic College Inc.', 'Higher Education Institution (HEI)', 'Chloe Mhae Regalado', 'Program Coordinator', 'chloemhaer@gmail.com', '', 'sign_guest_1773718318_ChloeMhaeRegalado.png', 'covenant_guest_1773718318_ChloeMhaeRegalado.pdf', '209.146.18.211', '2026-03-17 11:31:58', 40.6081, 85.7281, -1.12252, 0.850622),
(40, NULL, 'Cor Jesu College', 'Higher Education Institution (HEI)', 'Benjie Pabroa', 'Program Head', 'benjiepabroa@g.cjc', '', 'sign_guest_1773718322_BenjiePabroa.png', 'covenant_guest_1773718322_BenjiePabroa.pdf', '180.190.49.156', '2026-03-17 11:32:02', 65.6617, 25.6198, 9.64722, 0.858773),
(41, NULL, 'Davao Vision College', 'Higher Education Institution (HEI)', 'Jeraline A. Astillo', 'IT Program Head', 'jastillo@dvci-edu.com', '09694324416', 'sign_guest_1773718324_JeralineAAstillo.png', 'covenant_guest_1773718324_JeralineAAstillo.pdf', '209.146.18.211', '2026-03-17 11:32:04', 33.4844, 47.9129, -6.36919, 1.07992),
(42, NULL, 'TESDA XI', 'Others', 'Rey C. Sanchez', 'IT Faculty', 'rcsanchez@tesda.gov.ph', '09305189181', 'sign_guest_1773718330_ReyCSanchez.png', 'covenant_guest_1773718330_ReyCSanchez.pdf', '209.146.18.211', '2026-03-17 11:32:10', 20.7877, 81.4143, 4.16214, 1.1123),
(43, NULL, 'Cor Jesu College', 'Higher Education Institution (HEI)', 'Cesar Tecson', 'Dean', 'cesartecson@g.cjc.edu.ph', '09082191651', 'sign_guest_1773718333_CesarTecson.png', 'covenant_guest_1773718333_CesarTecson.pdf', '64.226.63.181', '2026-03-17 11:32:13', 75.9436, 61.945, 4.40994, 0.974386),
(44, NULL, 'Brokenshire College, Inc.', 'Higher Education Institution (HEI)', 'Jennifer L. Pido', 'Program Coordinator', 'jpido@brokenshire.edu.ph', '09336166133', 'sign_guest_1773718336_JenniferLPido.png', 'covenant_guest_1773718336_JenniferLPido.pdf', '209.146.18.211', '2026-03-17 11:32:16', 52.3214, 80.4889, -3.3666, 1.10985),
(45, NULL, 'CHED XI', 'Others', 'Rodrigo S. Pangantihon Jr.', 'Education Supervisor II', 'rpangantihon@ched.gov.ph', '09334556611', 'sign_guest_1773718339_RodrigoSPangantihonJr.png', 'covenant_guest_1773718339_RodrigoSPangantihonJr.pdf', '209.146.18.211', '2026-03-17 11:32:19', 61.4864, 32.9615, 10.3862, 0.863268),
(46, NULL, 'Holy cross of Davao College', 'Higher Education Institution (HEI)', 'Owen Pilongo', 'Dean', 'opilongo@hcdc.edu.ph', '09176218734', 'sign_guest_1773718353_OwenPilongo.png', 'covenant_guest_1773718353_OwenPilongo.pdf', '111.90.243.232', '2026-03-17 11:32:33', 45.942, 49.9492, -10.7318, 1.13251),
(47, NULL, 'University of the Philippines Mindanao', 'Higher Education Institution (HEI)', 'Hanna Mae Limpag', 'BSCS Program Coordinator', 'hllimpag@up.edu.ph', '', 'sign_guest_1773718356_HannaMaeLimpag.png', 'covenant_guest_1773718356_HannaMaeLimpag.pdf', '209.146.18.211', '2026-03-17 11:32:38', 52.4465, 15.0921, 2.57879, 1.06344),
(48, NULL, 'ICT Davao', 'Industry Partner', 'Belinda Torres', 'President', 'btorres.ejobs@gmail.com', '09177015627', 'sign_guest_1773718359_BelindaTorres.png', 'covenant_guest_1773718359_BelindaTorres.pdf', '111.90.244.61', '2026-03-17 11:32:39', 24.253, 58.6696, -1.99469, 1.14376),
(49, NULL, 'University of Southeastern Philippines, Tagum-Mabini.Campus', 'Higher Education Institution (HEI)', 'Editha L. Hebron, Ph.D.', 'Program Head, BSIT', 'e.hebron@usep.edu.pj', '', 'sign_guest_1773718367_EdithaLHebronPhD.png', 'covenant_guest_1773718367_EdithaLHebronPhD.pdf', '209.146.18.211', '2026-03-17 11:32:47', 63.5642, 85.503, -6.91389, 0.966172),
(50, NULL, 'Davao Central College', 'Higher Education Institution (HEI)', 'Ser Jamier Llego', 'ITE Program Head', 'serjamierllego@gmail.com', '09998806475', 'sign_guest_1773718380_SerJamierLlego.png', 'covenant_guest_1773718380_SerJamierLlego.pdf', '209.146.18.211', '2026-03-17 11:33:01', 46.4383, 13.2789, -9.65117, 1.04768),
(51, NULL, 'Cor Jesu College', 'Higher Education Institution (HEI)', 'Daryl Ivan E. Hisola', 'Faculty/Practicum Coordinator', 'darylhisola@g.cjc.edu.ph', '', 'sign_guest_1773718382_DarylIvanEHisola.png', 'covenant_guest_1773718382_DarylIvanEHisola.pdf', '138.84.112.205', '2026-03-17 11:33:02', 43.7713, 39.538, -8.62465, 0.968641),
(52, NULL, 'Mapua Malayan Colleges Mindanao', 'Higher Education Institution (HEI)', 'Genevieve Pilongo', 'Program Chair', 'gapilongo@mcm.edu.ph', '', 'sign_guest_1773718389_GenevievePilongo.png', 'covenant_guest_1773718389_GenevievePilongo.pdf', '209.146.18.211', '2026-03-17 11:33:09', 51.3211, 29.7282, 2.06515, 1.11852),
(53, NULL, 'PropulseVA', 'Industry Partner', 'Marjohn B Robillo', 'Founder', 'hello@marjohnrobillo.com', '', 'sign_guest_1773718395_MarjohnBRobillo.png', 'covenant_guest_1773718395_MarjohnBRobillo.pdf', '209.146.18.211', '2026-03-17 11:33:16', 63.7617, 32.4359, -8.39826, 0.960935),
(54, NULL, 'ST. MARY\'S COLLEGE OF TAGUM', 'Higher Education Institution (HEI)', 'Cleofe L. Calo', 'Program head', 'cleofecalo29@gmail.com', '', 'sign_guest_1773718397_CleofeLCalo.png', 'covenant_guest_1773718397_CleofeLCalo.pdf', '209.146.18.211', '2026-03-17 11:33:18', 24.8633, 26.9691, 10.5241, 0.930265),
(55, NULL, 'Tagum City College of Science and Technology Foundation, INC', 'Higher Education Institution (HEI)', 'Slash Fuertes', 'Program Head', 'masterlost300@gmail.com', '', 'sign_guest_1773718404_SlashFuertes.png', 'covenant_guest_1773718404_SlashFuertes.pdf', '175.158.236.170', '2026-03-17 11:33:24', 76.6704, 60.3436, -5.74956, 0.876086),
(56, NULL, 'SPAMAST', 'Higher Education Institution (HEI)', 'Antonette Albarracin', 'program head', 'antonette.albarracin@spamast.edu.ph', '09485126009', 'sign_guest_1773718407_AntonetteAlbarracin.png', 'covenant_guest_1773718407_AntonetteAlbarracin.pdf', '209.146.18.211', '2026-03-17 11:33:27', 42.6183, 5.86014, 4.62488, 0.985268),
(57, NULL, 'DICT', 'Industry Partner', 'Hannah Velez', 'HR', 'hannah.velez@dict.gov.ph', '', 'sign_guest_1773718412_HannahVelez.png', 'covenant_guest_1773718412_HannahVelez.pdf', '209.146.18.211', '2026-03-17 11:33:32', 43.5999, 73.7958, -7.03549, 0.924169),
(58, NULL, 'Mats College of Technology', 'Higher Education Institution (HEI)', 'vanessa septimo', 'Program coordinator', 'yu.jecong@gmail.com', '09563693501', 'sign_guest_1773718422_vanessaseptimo.png', 'covenant_guest_1773718422_vanessaseptimo.pdf', '180.190.45.29', '2026-03-17 11:33:42', 42.8111, 60.5104, -6.19866, 1.09148),
(59, NULL, 'Wonderworks', 'Industry Partner', 'Aileen Bianca Ramboanga', 'Director', 'thewonderworksfilms@gmail.com', '', 'sign_guest_1773718444_AileenBiancaRamboanga.png', 'covenant_guest_1773718444_AileenBiancaRamboanga.pdf', '110.54.168.197', '2026-03-17 11:34:05', 18.2854, 78.3687, 11.8583, 1.10342),
(60, NULL, 'University of the Philippines Mindanao', 'Higher Education Institution (HEI)', 'Giovanna Fae Oguis', 'Department Chair', 'groguis@up.edu.ph', '', 'sign_guest_1773718452_GiovannaFaeOguis.png', 'covenant_guest_1773718452_GiovannaFaeOguis.pdf', '110.54.207.231', '2026-03-17 11:34:12', 12.6728, 59.8467, 12.0063, 1.06395),
(61, NULL, 'polytechnic college of davao del sur, inc.', 'Higher Education Institution (HEI)', 'christopher villahermosa', 'program coordinator', 'chrisvillahermosa@gmail.com', '09500834823', 'sign_guest_1773718462_christophervillahermosa.png', 'covenant_guest_1773718462_christophervillahermosa.pdf', '209.146.18.211', '2026-03-17 11:34:22', 13.6784, 32.8902, -5.21351, 0.966396),
(62, NULL, 'St.Peter\'s College of Toril, Inc.', 'Higher Education Institution (HEI)', 'ROANNE SABERON', 'Faculty Member', 'roannesaberon1977@gmail.com', '09854688485', 'sign_guest_1773718473_ROANNESABERON.png', 'covenant_guest_1773718473_ROANNESABERON.pdf', '175.158.236.236', '2026-03-17 11:34:33', 57.4714, 58.8717, -5.88017, 0.867637),
(63, NULL, 'PSITE', 'Higher Education Institution (HEI)', 'Kathryn Faith Espinosa', 'Treasurer', 'kathespinosa20@gmail.com', '', 'sign_guest_1773718473_KathrynFaithEspinosa.png', 'covenant_guest_1773718473_KathrynFaithEspinosa.pdf', '209.146.18.211', '2026-03-17 11:34:34', 36.6605, 8.40798, 1.73155, 0.92512),
(64, NULL, 'DICT', 'Industry Partner', 'Elizabeth Badilles', 'ITO I', 'elizabeth.badilles@dict.gov.ph', '', 'sign_guest_1773718496_ElizabethBadilles.png', 'covenant_guest_1773718496_ElizabethBadilles.pdf', '209.146.18.211', '2026-03-17 11:34:57', 80.263, 27.1139, 4.29738, 0.971384),
(65, NULL, 'St. Mary\'s College of Bansalan, Inc.', 'Higher Education Institution (HEI)', 'Jhon Bryan Cantil', 'Program Head', 'jhonbryancanyil@smcbi.edu.ph', '', 'sign_guest_1773718587_JhonBryanCantil.png', 'covenant_guest_1773718587_JhonBryanCantil.pdf', '209.146.18.211', '2026-03-17 11:36:27', 12.1896, 48.0684, -5.90212, 1.09475),
(66, NULL, 'Cor Jesu College Inc.', 'Higher Education Institution (HEI)', 'Ciemavil Alcain', 'Faculty', 'ciemavilalcain@g.cjc.edu.ph', '', 'sign_guest_1773718627_CiemavilAlcain.png', 'covenant_guest_1773718627_CiemavilAlcain.pdf', '180.190.49.247', '2026-03-17 11:37:08', 20.2425, 15.4806, -2.22825, 0.895366),
(67, NULL, 'ASSUMPTION COLLEGE OF DAVAO', 'Higher Education Institution (HEI)', 'Jerome Dela Peña', 'Faculty', 'Jerodp1999@gmail.com', '09275878357', 'sign_guest_1773718682_JeromeDelaPea.png', 'covenant_guest_1773718682_JeromeDelaPea.pdf', '209.146.18.211', '2026-03-17 11:38:02', 43.1264, 31.0597, -9.86062, 0.858686),
(68, NULL, 'SPAMAST', 'Higher Education Institution (HEI)', 'Jennellie G. Gatmaitan', 'Faculty', 'j.gatmaitan@spamast.edu.ph', '09544974085', 'sign_guest_1773718756_JennellieGGatmaitan.png', 'covenant_guest_1773718756_JennellieGGatmaitan.pdf', '209.146.18.211', '2026-03-17 11:39:16', 71.0789, 46.1384, -7.06993, 0.994136),
(69, NULL, 'City College of Davao', 'Higher Education Institution (HEI)', 'Ida G. Tudy', 'Program Head', 'i.tudy@ccd.edu.ph', '09326234262', 'sign_guest_1773718930_IdaGTudy.png', 'covenant_guest_1773718930_IdaGTudy.pdf', '222.127.94.219', '2026-03-17 11:42:10', 42.5655, 11.2126, 11.4411, 1.08236),
(70, NULL, 'STI College Davao', 'Higher Education Institution (HEI)', 'Francis Jade Solomon', 'Faculty', 'francisjadesolomon@gmail.com', '09560910476', 'sign_guest_1773718933_FrancisJadeSolomon.png', 'covenant_guest_1773718933_FrancisJadeSolomon.pdf', '110.54.169.106', '2026-03-17 11:42:13', 55.8049, 61.0381, -6.57343, 1.03045),
(71, NULL, 'STI College Davao', 'Higher Education Institution (HEI)', 'Jessiel Chris D. Hilot', 'IT Program Head', 'jessiel.hilot@davao.sti.edu', '09204861056', 'sign_guest_1773719623_JessielChrisDHilot.png', 'covenant_guest_1773719623_JessielChrisDHilot.pdf', '180.191.148.224', '2026-03-17 11:53:43', 73.8581, 39.3807, -7.22053, 1.07732);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `covenant_submissions`
--
ALTER TABLE `covenant_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

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
