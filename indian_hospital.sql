-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2022 at 03:57 PM
-- Server version: 8.0.31-0ubuntu0.20.04.1
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indian_hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `advances`
--

CREATE TABLE `advances` (
  `id` int UNSIGNED NOT NULL,
  `ip_id` int UNSIGNED DEFAULT NULL,
  `pt_id` int UNSIGNED DEFAULT NULL,
  `advance_no` int DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `pay_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_pay_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_expiry` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advances`
--

INSERT INTO `advances` (`id`, `ip_id`, `pt_id`, `advance_no`, `amount`, `pay_type`, `other_pay_type`, `card_no`, `card_type`, `card_expiry`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 5, 53, 1, '310', 'Others', 'CMS CREDIT', '12345', 'Credit Card', '', 1, '2021-02-15 15:19:46', '2021-02-16 17:15:44'),
(5, 5, 53, 2, '190', 'Others', 'Google Pay', '', '', '', 1, '2021-02-16 17:15:06', '2021-02-16 17:15:20'),
(6, 7, 55, 1, '1000', 'Others', 'Google Pay', '', '', '', 1, '2021-02-26 17:20:54', '2021-02-26 17:20:54'),
(7, 7, 55, 2, '500', 'Cash', '', '', '', '', 1, '2021-04-01 14:04:22', '2021-04-01 14:04:22'),
(8, 8, 64, 1, '200', 'Cash', '', '', '', '', 1, '2021-04-01 15:19:50', '2021-04-01 15:20:15'),
(9, 12, 79, 1, '4', 'Cash', '', '', '', '', 1, '2022-10-20 14:02:15', '2022-10-20 14:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int UNSIGNED NOT NULL,
  `pt_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `doctor_id` int UNSIGNED DEFAULT NULL,
  `appointment_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `pt_id`, `name`, `contact_no`, `doctor_id`, `appointment_at`, `created_at`, `updated_at`) VALUES
(2, 51, 'Demo', '4533', 7, '2021-01-18 12:00:00', '2021-01-18 12:01:07', '2021-01-18 12:01:07'),
(3, 51, 'Demo', '4533', 7, '2021-01-18 12:30:00', '2021-01-18 12:13:59', '2021-01-18 12:13:59'),
(4, 51, 'Demo', '4533', 7, '2021-01-25 16:15:00', '2021-01-18 12:51:16', '2021-01-18 12:51:16'),
(5, 50, 'Namita Ram', '+91 304 6616590', 7, '2021-02-22 15:21:00', '2021-02-11 12:11:13', '2021-02-11 12:11:13'),
(6, 62, 'Mr.Demo1223', '3443635349', 7, '2021-03-15 11:10:00', '2021-03-02 10:42:35', '2021-03-02 10:42:35'),
(7, 62, 'Mr.Demo1223', '3443635349', 7, '2021-04-05 15:30:00', '2021-04-01 13:07:46', '2021-04-01 13:07:46'),
(8, 64, 'Mr.Syed Ameen', '9894600472', 7, '2021-04-05 11:00:00', '2021-04-01 14:06:14', '2021-04-01 14:06:14'),
(9, 65, 'Mr.Demo', '3453554543', 7, '2021-04-26 16:05:00', '2021-04-07 16:44:40', '2021-04-07 16:44:40'),
(10, 85, 'Mr.ssss', '5575757856', 7, '2021-09-27 15:15:00', '2021-09-24 13:25:22', '2021-09-24 13:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `card_types`
--

CREATE TABLE `card_types` (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card_types`
--

INSERT INTO `card_types` (`name`) VALUES
('Master Card'),
('Credit Card');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`name`) VALUES
('Fever'),
('Excessive Mucus'),
('Head Ache'),
('Stomach Pain'),
('Nausia');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`name`) VALUES
('Physio'),
('Scan'),
('General'),
('Cardio'),
('XRay'),
('IV FLUIDS'),
('IV FLUID'),
('REVIEW'),
('BP');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `specialization` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `qualification` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `age`, `gender`, `contact_no`, `email_address`, `address`, `specialization`, `qualification`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hassan Suresh Philip', '57', 'Female', '008 23041239', 'shanda@basak.co.in', '31, Rajesh Society, Bandra Nashik - 417392', '', '', 'Active', '2020-11-20 10:47:33', '2020-11-20 10:47:33'),
(2, 'Aayushman Raj Arora', '55', 'Male', '0297 1795836', 'nshroff@hotmail.com', '16, AmirPur, Bikaner - 582662', '', '', 'InActive', '2020-11-20 10:47:33', '2020-11-20 10:47:33'),
(3, 'Sohail Prasad Varty', '41', 'Male', '0732 8260143', 'narayan.abhinav@ray.org', '73, Prabhat Nagar, Jammu - 161998', '', '', 'Active', '2020-11-20 10:47:33', '2020-11-20 10:47:33'),
(4, 'Kamini Iqbal Guha', '34', 'Male', '+91 25 85280157', 'umajumdar@yahoo.co.in', '29, Monin Nagar, Gangtok - 234417', '', '', 'Active', '2020-11-20 10:47:33', '2020-11-20 10:47:33'),
(5, 'Namita Dixit', '36', 'Female', '042 27611759', 'grover.ruchi@hotmail.com', '18, Cyber City, Alwar - 476678', '', '', 'InActive', '2020-11-20 10:47:33', '2020-11-20 10:47:33'),
(6, 'Avantika Kale', '22', 'Female', '043 91034315', 'shashank88@mehrotra.com', '89, Nagma Villas, Malad Hyderabad - 537079', '', '', 'InActive', '2020-11-20 10:47:34', '2020-11-20 10:47:34'),
(7, 'Aarushi Bhatt', '47', 'Female', '0600 2118928', 'yash.hans@hotmail.com', '27, Gayatri Heights, SavitaGunj Raipur - 408816', 'DENTAL SURGERY', '', 'Active', '2020-11-20 10:47:34', '2021-01-14 17:48:57'),
(8, 'Dipti Padmanabhan', '45', 'Female', '+91 330 0517473', 'yogi.diya@yahoo.co.in', '17, Rehman Apartments, Bandra Udaipur - 362816', '', '', 'InActive', '2020-11-20 10:47:34', '2020-11-20 10:47:34'),
(9, 'Sunita Ramesh', '24', 'Female', '0641 6604906', 'hetan23@yahoo.com', '19, Vimala Apartments, Churchgate Udaipur - 360726', '', '', 'InActive', '2020-11-20 10:47:34', '2020-11-20 10:47:34'),
(10, 'Nawab Lal Bains', '38', 'Male', '+91 93 57403171', 'nbiyani@hotmail.com', '89, Anjana Chowk, Dehra Dun - 383298', '', '', 'InActive', '2020-11-20 10:47:34', '2020-11-20 10:47:34'),
(11, 'Taahid Prasad Devan', '22', 'Male', '093 28917066', 'mini.sampath@yahoo.com', '70, Kajal Villas, Nilima Nagar Hyderabad - 200510', '', '', 'InActive', '2020-11-20 10:47:34', '2020-11-20 10:47:34'),
(12, 'Chitranjan Lal Vohra', '35', 'Female', '+91 24 72489800', 'gbora@chokshi.com', '81, Alex Heights, Marathahalli Darjeeling - 151287', '', '', 'InActive', '2020-11-20 10:47:34', '2020-11-20 10:47:34'),
(13, 'Jaswant Hemendra Lall', '55', 'Female', '+91 211 1507468', 'kamini.parmer@parsa.net', '38, Vikrant Heights, Kormangala Raipur - 308677', '', '', 'Active', '2020-11-20 10:47:34', '2020-11-20 10:47:34'),
(14, 'Mona Parekh', '36', 'Female', '+91 60 78215317', 'oak.labeen@hotmail.com', '69, Amolika Heights, Arjun Chowk Meerut - 388110', '', '', 'InActive', '2020-11-20 10:47:34', '2020-11-20 10:47:34'),
(16, 'Mowgli Rampersad', '21', 'Female', '084 94511396', 'emran.harjo@yahoo.com', '99, Bhaagyasree Society, Deepesh Chowk Jabalpur - 533843', '', '', 'InActive', '2020-11-20 10:47:34', '2020-11-20 10:47:34'),
(17, 'Daanish Toor', '42', 'Male', '+91 660 1985668', 'yamini.mani@hotmail.com', '29, Mini Society, Chinchwad Kanpur - 550062', '', '', 'Active', '2020-11-20 10:47:34', '2020-11-20 10:47:34'),
(18, 'Bishnu Rao Khalsa', '36', 'Female', '+91 016 9861138', 'varun72@hotmail.com', '76, Malad, Gurgaon - 352917', '', '', 'InActive', '2020-11-20 10:47:35', '2020-11-20 10:47:35'),
(19, 'Jiya Vikrant Khare', '48', 'Female', '0815 7184897', 'kalyani.kabra@rediffmail.com', '17, SumitGarh, Kanpur - 352162', '', '', 'Active', '2020-11-20 10:47:35', '2020-11-20 10:47:35'),
(20, 'Binita Suresh', '26', 'Male', '062 06474942', 'veena29@yahoo.co.in', '71, Abhinav Heights, KrishnaPur Kota - 447194', '', '', 'InActive', '2020-11-20 10:47:35', '2020-11-20 10:47:35'),
(21, 'Aatif Chandra Batra', '57', 'Male', '066 54083026', 'tarun.patla@yohannan.com', '68, Riya Nagar, Panaji - 344505', '', '', 'InActive', '2020-11-20 10:47:35', '2020-11-20 10:47:35'),
(22, 'Jiya Ram Sethi', '33', 'Male', '0860 9318169', 'sai13@yahoo.com', '14, Naina Society, Yerwada Jabalpur - 372105', '', '', 'InActive', '2020-11-20 10:47:35', '2020-11-20 10:47:35'),
(23, 'Yasmin Lal', '53', 'Male', '0311 4287624', 'aarushi85@raghavan.in', '75, Vaishali Nagar, Jabalpur - 516635', '', '', 'InActive', '2020-11-20 10:47:35', '2020-11-20 10:47:35'),
(24, 'Nishtha Kulkarni', '42', 'Female', '002 90917978', 'pradhan.jasmin@rediffmail.com', '59, Aruna Heights, Biren Chowk Ratlam - 544875', '', '', 'InActive', '2020-11-20 10:47:35', '2020-11-20 10:47:35'),
(25, 'Fakaruddin Mathew', '55', 'Female', '+91 141 8738460', 'bhaagyasree.mohabir@hotmail.com', '26, Preshita Villas, RajendraPur Hisar - 331987', '', '', 'Active', '2020-11-20 10:47:35', '2020-11-20 10:47:35'),
(26, 'Manish Giaan Mohan', '35', 'Male', '+91 482 1723666', 'ddutta@choudhary.in', '73, Uday Villas, Naresh Nagar Noida - 478380', '', '', 'Active', '2020-11-20 10:47:35', '2020-11-20 10:47:35'),
(27, 'Zaad Hanuman Pardeshi', '30', 'Male', '+91 009 7755541', 'nrandhawa@yahoo.co.in', '83, Omar Apartments, Goregaon Pondicherry - 419868', '', '', 'Active', '2020-11-20 10:47:35', '2020-11-20 10:47:35'),
(28, 'Aslam Gara', '52', 'Female', '+91 760 4725845', 'sharad.batta@yahoo.com', '15, Zahir Apartments, Dadar Bengaluru - 509956', '', '', 'InActive', '2020-11-20 10:47:35', '2020-11-20 10:47:35'),
(29, 'Naresh Nawab Ratta', '53', 'Male', '+91 752 7350040', 'shanti.raghavan@pall.com', '33, Nandini Nagar, Hyderabad - 464350', '', '', 'InActive', '2020-11-20 10:47:35', '2020-11-20 10:47:35'),
(30, 'Kasturi Brock Doshi', '40', 'Female', '0198 7566306', 'nilima21@gmail.com', '10, Saurabh Heights, RatanGunj Bhopal - 122693', '', '', 'Active', '2020-11-20 10:47:35', '2020-11-20 10:47:35'),
(32, 'Tufail Sharif', '35', 'Male', '9894600472', 'abbasi@abbasi.com', 'Chennai, India', 'DENTAL SURGERY', 'MBBS', 'Active', NULL, '2021-04-01 11:45:10'),
(33, 'Demo 5', '', 'Male', '', '', '', 'general', '', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_timings`
--

CREATE TABLE `doctor_timings` (
  `doctor_id` int UNSIGNED NOT NULL,
  `day` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start` time DEFAULT NULL,
  `end` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_timings`
--

INSERT INTO `doctor_timings` (`doctor_id`, `day`, `start`, `end`) VALUES
(7, 'Monday', '15:00:00', '17:00:00'),
(7, 'Monday', '10:00:00', '13:00:00'),
(7, 'Monday', '14:00:00', '15:00:00'),
(32, 'Monday', '17:30:00', '21:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int UNSIGNED NOT NULL,
  `department` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `op_cost` decimal(10,2) DEFAULT NULL,
  `ip_cost` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `department`, `category`, `name`, `op_cost`, `ip_cost`, `created_at`, `updated_at`) VALUES
(2, 'General', 'Consultation', 'Dr Tamil selvan', '100.00', '100.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(4, 'General', 'Consultation', 'Dr Praveen Kumar', '100.00', '100.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(6, 'Ortho', 'Consultation', 'Dr Vinoth', '200.00', '200.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(7, 'General', 'consultation', 'Dr.Sheshadheri', '100.00', '100.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(8, 'IV FLUID', 'DAYCARE', 'IV FLUIDS', '200.00', '200.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(9, 'DRESSING', 'DRESSING', 'DRESSING', '100.00', '100.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(10, 'INJ', 'INJECTION', 'INJECTION', '20.00', '20.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(12, 'NEBULIZER', '', 'NEBULIZATION', '50.00', '50.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(13, 'ECG', '', 'ECG', '150.00', '150.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(14, 'Ortho', 'I&D', 'I&D', '200.00', '200.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(17, 'X RAY', 'RIGHT FEMUR AP LAT', 'RIGHT FEMUR AP LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(18, 'X RAY', 'ANKLE  JOINT AP LAT', 'ANKLE', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(19, 'Ortho', 'IFT', 'IFT', '100.00', '100.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(20, 'X RAY', 'X RAY', 'CHEST  PA', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(21, 'X RAY', 'X - RAY', 'SHOULDER LEFT AP -AXIAL', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(22, 'X RAY', 'ABDOMEN ERECT', 'ABDOMEN ERECT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(23, 'X RAY', 'ABDOMEN SPINE', 'ABDOMEN SPINE', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(24, 'X RAY', 'X- RAY', 'BARIUM SWALLOW', '1500.00', '1500.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(25, 'X RAY', 'X - RAY', 'BOTH  CALCANEUM LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(26, 'X RAY', 'X - RAY', 'CERVICAL SPINE AP/LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(27, 'X RAY', 'X - RAY', 'CHEST AP /PA', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(28, 'X RAY', 'X - RAY', 'COCCYX AP/ LAT', '800.00', '800.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(29, 'X RAY', 'X - RAY', 'DORSAL SPINE AP/LAT', '500.00', '500.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(30, 'X RAY', 'X - RAY', 'ELBOW AP/LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(31, 'X RAY', 'X - RAY', 'FEMUR AP /LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(32, 'X RAY', 'X - RAY', 'FINGER AP/LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(33, 'X RAY', 'X  - RAY', 'FOOT AP/OBLIQUE', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(34, 'X RAY', 'X - RAY', 'FOREARM AP/LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(35, 'X RAY', 'X - RAY', 'HAND AP/OBLIQUE', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(36, 'X RAY', 'X - RAY', 'HIP JOINT AP/LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(37, 'X RAY', 'X - RAY', 'KNEE AP/LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(38, 'X RAY', 'X - RAY', 'KUB', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(39, 'X RAY', 'X - RAY', 'LUMBAR SPINE AP/LAT', '500.00', '500.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(41, 'X RAY', 'X - RAY', 'KNEE AP/LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(42, 'X RAY', 'X -RAY', 'KUB', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(43, 'X RAY', 'X -RAY', 'LUMBAR SPINE AP/LAT', '500.00', '500.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(44, 'X RAY', 'X -RAY', 'LEG AP/LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(45, 'X RAY', 'X RAY', 'NASAL BONE AP/LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(46, 'X RAY', 'X RAY ', 'NECK AP /LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(47, 'X RAY', 'X RAY', 'PARA NASAL SINUS', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(48, 'X RAY', 'X RAY', 'PELVIC AP /LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(49, 'X RAY', 'X RAY', 'SHOULDER AP ONLY', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(50, 'X RAY', 'X RAY', 'SKULL AP LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(51, 'X RAY', 'X RAY', 'WRIST AP/LAT', '400.00', '400.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(52, 'X RAY', 'X RAY', 'DENTAL X RAY', '200.00', '200.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(53, 'REVIEW', '', 'REVIEW', '0.00', '0.00', '2021-01-15 11:18:29', '2021-01-15 11:18:29'),
(56, 'BP', '', 'checkUp', '0.00', '0.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_tests`
--

CREATE TABLE `group_tests` (
  `id` int NOT NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` decimal(10,2) DEFAULT NULL,
  `test_fields` json DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_tests`
--

INSERT INTO `group_tests` (`id`, `category`, `name`, `fees`, `test_fields`, `created_at`, `updated_at`) VALUES
(1, 'HEMATOLOGY', 'CBC', '400.00', '[[590, \"\"], [591, \"\"], [491, \"\"], [593, \"\"], [594, \"\"], [595, \"\"], [596, \"\"], [597, \"\"], [598, \"Differential Count\"], [599, \"\"], [600, \"\"], [601, \"\"]]', '2020-11-12 16:44:39', '2020-12-19 17:43:03'),
(2, 'BIOCHEMISTRY', 'LIVER FUNCTION TEST', '500.00', '[[644, \"\"], [645, \"\"], [646, \"\"]]', '2020-11-12 16:44:39', '2021-02-26 11:24:25'),
(4, 'BIOCHEMISTRY', 'Demo', '0.00', '[[443, \"\"]]', '2021-02-04 15:14:34', '2021-02-04 15:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_categories`
--

CREATE TABLE `insurance_categories` (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insurance_categories`
--

INSERT INTO `insurance_categories` (`name`) VALUES
('CMS'),
('Health Insurance');

-- --------------------------------------------------------

--
-- Table structure for table `ip_admissions`
--

CREATE TABLE `ip_admissions` (
  `id` int UNSIGNED NOT NULL,
  `year` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ip_no` int UNSIGNED DEFAULT NULL,
  `pt_id` int UNSIGNED DEFAULT NULL,
  `fees` decimal(10,2) DEFAULT NULL,
  `advance` decimal(10,2) DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `diagnosis` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `consultant` int UNSIGNED DEFAULT NULL,
  `referrer` int UNSIGNED DEFAULT NULL,
  `rel_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rel_contact_no` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rel_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rel_address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ins_cat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ins_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ins_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ip_admissions`
--

INSERT INTO `ip_admissions` (`id`, `year`, `ip_no`, `pt_id`, `fees`, `advance`, `type`, `diagnosis`, `department`, `consultant`, `referrer`, `rel_name`, `rel_contact_no`, `rel_type`, `rel_address`, `ins_cat`, `ins_id`, `ins_name`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, '2020-2021', 3, 46, '0.00', '100.00', 'RT', '', 'RADIATION ONCOLOGIST', 19, 4, '', '', '', '', NULL, '', '', 1, '2021-02-08 18:25:57', '2021-02-08 18:25:57', NULL),
(4, '2020-2021', 4, 50, '0.00', '100.00', 'RT', '', 'RADIATION ONCOLOGIST', 7, 7, '', '', '', '', NULL, '', '', 1, '2021-02-10 12:37:04', '2021-02-10 12:37:04', NULL),
(5, '2020-2021', 5, 53, '500.00', NULL, 'RT', '', 'RADIATION ONCOLOGIST', 4, 17, '', '', '', '', NULL, '', '', 1, '2021-02-15 15:18:39', '2021-02-15 15:18:39', NULL),
(6, '2020-2021', 6, 53, '0.00', NULL, 'RT', '', 'RADIATION ONCOLOGIST', 7, 7, '', '', '', '', NULL, '', '', 1, '2021-02-20 15:12:34', '2021-02-20 15:12:34', NULL),
(7, '2020-2021', 7, 55, '500.00', NULL, 'RT', '', 'RADIATION ONCOLOGIST', 13, 30, '', '', '', '', NULL, '', '', 1, '2021-02-26 16:40:12', '2021-02-26 16:40:12', NULL),
(8, '2021-2022', 1, 64, '500.00', NULL, 'SURGERY', 'Surgery I', 'DENTAL SURGERY', 25, 7, 'Tufail', '9898989898', 'Family Member', '', 'Health Insurance', '1000', 'Ang', 1, '2021-04-01 14:09:00', '2021-05-05 20:19:10', NULL),
(9, '2021-2022', 2, 84, '1000.00', NULL, 'RT', '', 'RADIATION ONCOLOGIST', 30, 3, '', '', '', '', NULL, '', '', 1, '2021-05-06 15:27:19', '2021-05-06 15:27:19', NULL),
(10, '2021-2022', 3, 84, '0.00', NULL, 'RT', '', 'RADIATION ONCOLOGIST', 7, 17, '', '', '', '', NULL, '', '', 1, '2021-09-24 12:14:43', '2021-09-24 12:14:43', NULL),
(11, '2022-2023', 1, 87, '0.00', NULL, 'RT', '', 'DENTAL SURGERY', 17, 17, '', '', '', '', NULL, '', '', 1, '2022-10-15 12:06:20', '2022-10-15 12:06:20', NULL),
(12, '2022-2023', 2, 79, '0.00', NULL, 'RT', '', 'Heart', 33, 33, '', '', '', '', NULL, '', '', 1, '2022-10-15 12:21:17', '2022-10-15 12:11:06', NULL),
(13, '2022-2023', 3, 88, '0.00', NULL, 'RT', '', 'RADIATION ONCOLOGIST', 7, 17, '', '', '', '', NULL, '', '', 1, '2022-11-26 17:21:23', '2022-11-26 17:21:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_bills`
--

CREATE TABLE `ip_bills` (
  `id` int UNSIGNED NOT NULL,
  `year` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bill_no` int UNSIGNED DEFAULT NULL,
  `pt_id` int UNSIGNED DEFAULT NULL,
  `ip_id` int UNSIGNED DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `advance_paid` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `due` decimal(10,2) DEFAULT NULL,
  `refund` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_payment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_no` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_type` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_expiry` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `collection_date` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ip_bills`
--

INSERT INTO `ip_bills` (`id`, `year`, `bill_no`, `pt_id`, `ip_id`, `total`, `advance_paid`, `discount`, `sub_total`, `paid`, `due`, `refund`, `payment_method`, `other_payment`, `card_no`, `card_type`, `card_expiry`, `user_id`, `collection_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, '2020-2021', 1, 53, 5, '7700.00', '700.00', '0.00', '7000.00', '7000.00', '0.00', '0.00', 'Card', '', '12345', 'Credit Card', '2021-03-13', 1, NULL, '2021-02-20 17:14:11', '2021-05-06 14:16:38', NULL),
(7, '2020-2021', 2, 53, 6, '1500.00', '0.00', '0.00', '1500.00', '1500.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, NULL, '2021-02-24 15:18:09', '2021-03-31 17:47:37', NULL),
(8, '2021-2022', 1, 50, 4, '5300.00', '0.00', '0.00', '5300.00', '5300.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, NULL, '2021-04-01 14:02:41', '2021-04-01 14:02:41', NULL),
(9, '2021-2022', 2, 84, 9, '3400.00', '0.00', '0.00', '3400.00', '3400.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, NULL, '2021-05-06 15:29:58', '2021-05-06 15:29:58', NULL),
(10, '2021-2022', 3, 84, 10, '1400.00', '0.00', '0.00', '1400.00', '1400.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, NULL, '2021-09-24 13:27:22', '2021-09-24 13:27:22', NULL),
(11, '2022-2023', 1, 87, 11, '1700.00', '0.00', '0.00', '1700.00', '1700.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, NULL, '2022-10-15 12:11:36', '2022-10-15 12:11:36', NULL),
(12, '2022-2023', 2, 88, 13, '1000.00', '0.00', '0.00', '1000.00', '1000.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '2022-11-30', '2022-11-26 17:22:14', '2022-11-26 17:24:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_bill_details`
--

CREATE TABLE `ip_bill_details` (
  `bill_id` int UNSIGNED DEFAULT NULL,
  `ip_id` int UNSIGNED NOT NULL,
  `pt_id` int UNSIGNED DEFAULT NULL,
  `department` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fees_id` int UNSIGNED DEFAULT NULL,
  `fees_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cost` decimal(10,2) UNSIGNED DEFAULT NULL,
  `discount` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `qty` int UNSIGNED DEFAULT NULL,
  `total` decimal(10,2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ip_bill_details`
--

INSERT INTO `ip_bill_details` (`bill_id`, `ip_id`, `pt_id`, `department`, `category`, `fees_id`, `fees_type`, `cost`, `discount`, `qty`, `total`) VALUES
(7, 6, 53, 'IPAdmission Fees', 'Admission Fees', 0, 'Admission Fees', '0.00', '0', 1, '0.00'),
(7, 6, 53, 'X RAY', 'RIGHT FEMUR AP LAT', 17, 'RIGHT FEMUR AP LAT', '400.00', '0', 1, '400.00'),
(7, 6, 53, 'Lab', 'CLINICAL PATHOLOGY', 566, 'Odour', '0.00', '0', 1, '0.00'),
(7, 6, 53, 'REVIEW', '', 53, 'REVIEW', '0.00', '0', 1, '0.00'),
(7, 6, 53, 'IP Room Fees', 'Bed Charges', 0, 'GF Casuality 20-02-2021 - 20-02-2021', '1000.00', '0', 1, '1000.00'),
(7, 6, 53, 'Lab', 'CLINICAL PATHOLOGY', 563, 'Colour', '100.00', '0', 1, '100.00'),
(8, 4, 50, 'IPAdmission Fees', 'Admission Fees', 0, 'Admission Fees', '0.00', '0', 1, '0.00'),
(8, 4, 50, 'IP Room Fees', 'Bed Charges', 0, 'GF Casuality 10-02-2021 - 15-02-2021', '800.00', '0', 6, '4800.00'),
(8, 4, 50, 'IV FLUID', 'DAYCARE', 8, 'IV FLUIDS', '200.00', '0', 1, '200.00'),
(8, 4, 50, 'Lab', 'HEMATOLOGY', 590, 'Haemoglobin', '300.00', '0', 1, '300.00'),
(3, 5, 53, 'IPAdmission Fees', 'Admission Fees', 0, 'Admission Fees', '500.00', '0', 1, '500.00'),
(3, 5, 53, 'X RAY', 'RIGHT FEMUR AP LAT', 17, 'RIGHT FEMUR AP LAT', '400.00', '0', 1, '400.00'),
(3, 5, 53, 'Lab', 'BIOCHEMISTRY', 295, 'G6 PD', '500.00', '0', 1, '500.00'),
(3, 5, 53, 'ECG', '', 13, 'ECG', '150.00', '0', 1, '150.00'),
(3, 5, 53, 'X RAY', 'X RAY', 47, 'PARA NASAL SINUS', '400.00', '0', 1, '400.00'),
(3, 5, 53, 'Lab', 'BIOCHEMISTRY', 378, 'MAGNESIUM', '350.00', '0', 1, '350.00'),
(3, 5, 53, 'X RAY', 'ANKLE  JOINT AP LAT', 18, 'ANKLE', '400.00', '0', 1, '400.00'),
(3, 5, 53, 'IP Room Fees', 'Bed Charges', 0, 'GF Casuality 15-02-2021 - 20-02-2021', '1000.00', '0', 5, '5000.00'),
(9, 9, 84, 'IPAdmission Fees', 'Admission Fees', 0, 'Admission Fees', '1000.00', '0', 1, '1000.00'),
(9, 9, 84, 'Lab', 'HEMATOLOGY', 1, 'CBC', '400.00', '0', 1, '400.00'),
(9, 9, 84, 'X RAY', 'X RAY', 47, 'PARA NASAL SINUS', '400.00', '0', 1, '400.00'),
(9, 9, 84, 'X RAY', 'ANKLE  JOINT AP LAT', 18, 'ANKLE', '400.00', '0', 1, '400.00'),
(9, 9, 84, 'Lab', 'BIOCHEMISTRY', 2, 'LIVER FUNCTION TEST', '500.00', '0', 1, '500.00'),
(9, 9, 84, 'IP Room Fees', 'Bed Charges', 0, 'GF Casuality 06-05-2021 - 06-05-2021', '700.00', '0', 1, '700.00'),
(10, 10, 84, 'IPAdmission Fees', 'Admission Fees', 0, 'Admission Fees', '0.00', '0', 1, '0.00'),
(10, 10, 84, 'X RAY', 'ABDOMEN ERECT', 22, 'ABDOMEN ERECT', '400.00', '0', 1, '400.00'),
(10, 10, 84, 'IP Room Fees', 'Bed Charges', 0, 'GF Casuality 24-09-2021 - 24-09-2021', '1000.00', '0', 1, '1000.00'),
(11, 11, 87, 'IPAdmission Fees', 'Admission Fees', 0, 'Admission Fees', '0.00', '0', 1, '0.00'),
(11, 11, 87, 'X RAY', 'X RAY', 50, 'SKULL AP LAT', '400.00', '0', 1, '400.00'),
(11, 11, 87, 'Lab', 'CLINICAL PATHOLOGY', 443, 'SEMEN ANALYSIS - POST WASH', '300.00', '0', 1, '300.00'),
(11, 11, 87, 'IP Room Fees', 'Bed Charges', 0, 'GF Casuality 15-10-2022 - 15-10-2022', '1000.00', '0', 1, '1000.00'),
(12, 13, 88, 'IPAdmission Fees', 'Admission Fees', 0, 'Admission Fees', '0.00', '0', 1, '0.00'),
(12, 13, 88, 'IP Room Fees', 'Bed Charges', 0, 'GF Casuality 26-11-2022 - 26-11-2022', '1000.00', '0', 1, '1000.00');

-- --------------------------------------------------------

--
-- Table structure for table `ip_discharges`
--

CREATE TABLE `ip_discharges` (
  `id` int NOT NULL,
  `ip_id` int UNSIGNED DEFAULT NULL,
  `pt_id` int UNSIGNED DEFAULT NULL,
  `history` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `diagnosis` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `investigations` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `surgery` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `treatment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `advice` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `condition` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `disease` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `consultants` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `death_date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `death_details` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `hosp_course` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `report` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `pt_reaction` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `pulse` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hb` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `wbc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `poly` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lymp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `eos` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `m` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `b` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `blood_sugar` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `urea` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `scr` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `crit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `plat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `user_id` int UNSIGNED DEFAULT NULL,
  `admitted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ip_discharges`
--

INSERT INTO `ip_discharges` (`id`, `ip_id`, `pt_id`, `history`, `diagnosis`, `investigations`, `surgery`, `treatment`, `advice`, `condition`, `disease`, `consultants`, `death_date`, `death_details`, `hosp_course`, `report`, `pt_reaction`, `pulse`, `bp`, `hb`, `tc`, `wbc`, `poly`, `lymp`, `eos`, `m`, `b`, `blood_sugar`, `urea`, `scr`, `crit`, `plat`, `user_id`, `admitted_at`, `created_at`, `updated_at`) VALUES
(4, 3, 46, 'History1', 'diagnosis', 'CBC', 'Surgery', 'Treatment\nTreatment1', 'Advice', 'Normal', 'disease', '7|13|||', '2021-02-09|14:18', 'Cause', 'Course', 'Report', 'Reaction', 'Pulse', 'bp', 'hb', 'tc', 'wbc', 'poly', 'lymp', 'eos', 'm', 'b', 'sugar', 'urea', 'scr', 'crit', 'plat', 1, '2021-02-08 18:25:57', '2021-02-10 17:51:06', '2021-02-15 12:33:25'),
(6, 4, 50, '', '', '', '', '', '', '', '', '||||', '|', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2021-02-10 12:37:04', '2021-02-15 13:24:36', '2021-02-15 13:24:36'),
(7, 5, 53, '', '', '', '', '', '', '', '', '||||', '|', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2021-02-15 15:18:39', '2021-02-20 12:21:57', '2021-02-20 12:21:57'),
(8, 2, 46, '', '', '', '', '', '', '', '', '||||', '|', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2021-02-08 17:44:52', '2021-02-20 15:10:59', '2021-02-20 15:10:59'),
(9, 1, 47, '', '', '', '', '', '', '', '', '||||', '|', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2020-11-28 17:08:00', '2021-02-20 15:11:54', '2021-02-20 15:11:54'),
(10, 6, 53, '', '', '', '', '', '', '', '', '||||', '|', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2021-02-20 15:12:34', '2021-02-20 15:13:08', '2021-02-20 15:13:08'),
(11, 8, 64, 'some', '', '', '', '', '', '', '', '||||', '|', '', '', '', 'React', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2021-04-01 14:09:00', '2021-04-01 15:35:54', '2021-05-06 13:23:56'),
(12, 9, 84, '', '', '', '', '', '', '', '', '||||', '|', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2021-05-06 15:27:19', '2021-05-06 15:29:18', '2021-05-06 15:29:18'),
(13, 10, 84, 'bbreab', '', '', '', '', '', '', '', '||||', '|', '', '', '', 'baerbe', 'baebrre', 'berba', '', '', 'erb', 'erbeb', '', '', 'b', '', '', '', '', '', '', 1, '2021-09-24 12:14:43', '2021-09-24 12:15:26', '2021-09-24 12:15:26'),
(14, 11, 87, '', '', '', '', '', '', '', '', '||||', '|', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-10-15 12:06:20', '2022-10-15 12:10:55', '2022-10-15 12:10:55'),
(15, 13, 88, '', '', '', '', '', '', '', '', '||||', '|', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-11-26 17:21:23', '2022-11-26 17:21:48', '2022-11-26 17:21:48');

-- --------------------------------------------------------

--
-- Table structure for table `ip_lab_results`
--

CREATE TABLE `ip_lab_results` (
  `treatment_id` int UNSIGNED DEFAULT NULL,
  `ip_id` int UNSIGNED DEFAULT NULL,
  `pt_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ip_lab_results`
--

INSERT INTO `ip_lab_results` (`treatment_id`, `ip_id`, `pt_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(17, 3, 46, 1, '2021-02-22 12:27:46', '2021-02-22 12:27:46', NULL),
(33, 6, 53, 1, '2021-04-01 15:21:43', '2021-04-01 15:21:43', NULL),
(36, 7, 55, 1, '2021-04-01 15:27:05', '2021-04-01 15:27:05', NULL),
(43, 9, 84, 1, '2021-05-06 15:28:41', '2021-05-06 15:28:41', NULL),
(50, 11, 87, 1, '2022-10-20 14:03:22', '2022-10-20 14:03:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_lab_result_details`
--

CREATE TABLE `ip_lab_result_details` (
  `treatment_id` int UNSIGNED DEFAULT NULL,
  `test_id` int UNSIGNED DEFAULT NULL,
  `field_id` int UNSIGNED DEFAULT NULL,
  `result` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `result_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_selected` tinyint DEFAULT NULL,
  `alignment` int UNSIGNED DEFAULT NULL,
  `is_group` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ip_lab_result_details`
--

INSERT INTO `ip_lab_result_details` (`treatment_id`, `test_id`, `field_id`, `result`, `result_type`, `is_selected`, `alignment`, `is_group`) VALUES
(17, 1, 590, '12', 'N', 1, 0, 1),
(17, 1, 591, '40', 'N', 1, 1, 1),
(17, 1, 491, '', 'N', 0, 2, 1),
(17, 1, 593, '', 'N', 0, 3, 1),
(17, 1, 594, '', 'N', 0, 4, 1),
(17, 1, 595, '', 'N', 0, 5, 1),
(17, 1, 596, '', 'N', 0, 6, 1),
(17, 1, 597, '', 'N', 0, 7, 1),
(17, 1, 598, '', 'N', 0, 8, 1),
(17, 1, 599, '', 'N', 0, 9, 1),
(17, 1, 600, '', 'N', 0, 10, 1),
(17, 1, 601, '', 'N', 0, 11, 1),
(17, 346, 346, '', 'N', 0, 12, 0),
(17, 254, 254, '', 'N', 0, 13, 0),
(33, 563, 563, '10', 'N', 1, 0, 0),
(36, 1, 590, '12', 'N', 1, 0, 1),
(36, 1, 591, '34', 'N', 1, 1, 1),
(36, 1, 491, '34', 'N', 1, 2, 1),
(36, 1, 593, '20', 'N', 1, 3, 1),
(36, 1, 594, '', 'N', 0, 4, 1),
(36, 1, 595, '', 'N', 0, 5, 1),
(36, 1, 596, '', 'N', 0, 6, 1),
(36, 1, 597, '', 'N', 0, 7, 1),
(36, 1, 598, '', 'N', 0, 8, 1),
(36, 1, 599, '', 'N', 0, 9, 1),
(36, 1, 600, '', 'N', 0, 10, 1),
(36, 1, 601, '', 'N', 0, 11, 1),
(36, 346, 346, '', 'N', 0, 12, 0),
(36, 254, 254, '', 'N', 0, 13, 0),
(36, 499, 499, '', 'N', 0, 14, 0),
(43, 1, 590, '10', 'N', 1, 0, 1),
(43, 1, 591, '20', 'N', 1, 1, 1),
(43, 1, 491, '80', 'N', 1, 2, 1),
(43, 1, 593, '66', 'N', 1, 3, 1),
(43, 1, 594, '45', 'N', 1, 4, 1),
(43, 1, 595, '', 'N', 0, 5, 1),
(43, 1, 596, '', 'N', 0, 6, 1),
(43, 1, 597, '', 'N', 0, 7, 1),
(43, 1, 598, '', 'N', 0, 8, 1),
(43, 1, 599, '', 'N', 0, 9, 1),
(43, 1, 600, '', 'N', 0, 10, 1),
(43, 1, 601, '', 'N', 0, 11, 1),
(43, 2, 644, '', 'N', 0, 12, 1),
(43, 2, 645, '', 'N', 0, 13, 1),
(43, 2, 646, '', 'N', 0, 14, 1),
(50, 443, 443, '', 'N', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ip_treatments`
--

CREATE TABLE `ip_treatments` (
  `id` int UNSIGNED NOT NULL,
  `ip_id` int UNSIGNED DEFAULT NULL,
  `pt_id` int UNSIGNED DEFAULT NULL,
  `ref_no` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ip_treatments`
--

INSERT INTO `ip_treatments` (`id`, `ip_id`, `pt_id`, `ref_no`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 3, 46, 0, 1, '2021-02-08 18:25:58', '2021-02-08 18:25:58', NULL),
(7, 3, 46, 1, 1, '2021-02-09 13:16:25', '2021-02-09 13:16:25', NULL),
(17, 3, 46, 2, 1, '2021-02-09 15:17:46', '2021-02-09 15:17:46', NULL),
(18, 3, 46, 0, 1, '2021-02-10 12:25:24', '2021-02-10 12:25:24', NULL),
(19, 4, 50, 0, 1, '2021-02-10 12:37:04', '2021-02-10 12:37:04', NULL),
(20, 4, 50, 1, 1, '2021-02-10 12:37:35', '2021-02-10 12:37:35', NULL),
(21, 3, 46, 0, 1, '2021-02-10 17:50:40', '2021-02-10 17:50:40', NULL),
(22, 3, 46, 0, 1, '2021-02-10 17:51:05', '2021-02-10 17:51:05', NULL),
(23, 4, 50, 0, 1, '2021-02-15 13:15:53', '2021-02-15 13:15:53', NULL),
(24, NULL, NULL, NULL, NULL, '2021-02-15 15:05:46', '2021-02-15 15:05:46', NULL),
(25, NULL, NULL, NULL, NULL, '2021-02-15 15:05:56', '2021-02-15 15:05:56', NULL),
(26, NULL, NULL, NULL, NULL, '2021-02-15 15:05:58', '2021-02-15 15:05:58', NULL),
(27, 5, 53, 0, 1, '2021-02-15 15:18:40', '2021-02-15 15:18:40', NULL),
(28, 5, 53, 1, 1, '2021-02-15 15:19:22', '2021-02-15 15:19:22', NULL),
(29, 5, 53, 0, 1, '2021-02-20 12:21:56', '2021-02-20 12:21:56', NULL),
(30, 6, 53, 0, 1, '2021-02-20 15:12:34', '2021-02-20 15:12:34', NULL),
(31, 6, 53, 1, 1, '2021-02-20 15:12:54', '2021-02-20 15:12:54', NULL),
(32, 6, 53, 0, 1, '2021-02-20 15:13:08', '2021-02-20 15:13:08', NULL),
(33, 6, 53, 2, 1, '2021-02-22 13:17:34', '2021-02-22 13:17:34', NULL),
(34, 6, 53, 3, 1, '2021-02-25 11:15:35', '2021-02-25 11:15:35', NULL),
(35, 7, 55, 0, 1, '2021-02-26 16:40:12', '2021-02-26 16:40:12', NULL),
(36, 7, 55, 1, 1, '2021-02-26 17:20:41', '2021-02-26 17:20:41', NULL),
(37, 8, 64, 0, 1, '2021-04-01 14:09:00', '2021-04-01 14:09:00', NULL),
(38, 8, 64, 1, 1, '2021-04-01 15:17:07', '2021-04-01 15:17:07', NULL),
(39, 7, 55, 0, 1, '2021-04-01 15:28:23', '2021-04-01 15:28:23', NULL),
(40, 7, 55, 0, 1, '2021-04-01 15:31:12', '2021-04-01 15:31:12', NULL),
(41, 8, 64, 0, 1, '2021-04-01 15:35:54', '2021-04-01 15:35:54', NULL),
(42, 9, 84, 0, 1, '2021-05-06 15:27:19', '2021-05-06 15:27:19', NULL),
(43, 9, 84, 1, 1, '2021-05-06 15:27:42', '2021-05-06 15:27:42', NULL),
(44, NULL, NULL, NULL, NULL, '2021-05-06 15:28:15', '2021-05-06 15:28:15', NULL),
(45, 9, 84, 0, 1, '2021-05-06 15:29:18', '2021-05-06 15:29:18', NULL),
(46, 10, 84, 0, 1, '2021-09-24 12:14:43', '2021-09-24 12:14:43', NULL),
(47, 10, 84, 1, 1, '2021-09-24 12:15:10', '2021-09-24 12:15:10', NULL),
(48, 10, 84, 0, 1, '2021-09-24 12:15:26', '2021-09-24 12:15:26', NULL),
(49, 11, 87, 0, 1, '2022-10-15 12:06:20', '2022-10-15 12:06:20', NULL),
(50, 11, 87, 1, 1, '2022-10-15 12:06:44', '2022-10-15 12:06:44', NULL),
(51, 11, 87, 0, 1, '2022-10-15 12:10:55', '2022-10-15 12:10:55', NULL),
(52, 12, 79, 0, 1, '2022-10-15 12:11:07', '2022-10-15 12:11:07', NULL),
(53, 12, 79, 1, 1, '2022-10-15 12:11:15', '2022-10-15 12:11:15', NULL),
(54, 13, 88, 0, 1, '2022-11-26 17:21:24', '2022-11-26 17:21:24', NULL),
(55, 13, 88, 0, 1, '2022-11-26 17:21:47', '2022-11-26 17:21:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_treatment_details`
--

CREATE TABLE `ip_treatment_details` (
  `treatment_id` int UNSIGNED DEFAULT NULL,
  `ip_id` int DEFAULT NULL,
  `pt_id` int UNSIGNED DEFAULT NULL,
  `s_no` int UNSIGNED DEFAULT NULL,
  `fees_id` int UNSIGNED DEFAULT NULL,
  `department` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fees_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `test_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ip_treatment_details`
--

INSERT INTO `ip_treatment_details` (`treatment_id`, `ip_id`, `pt_id`, `s_no`, `fees_id`, `department`, `category`, `fees_type`, `test_type`, `qty`, `cost`, `total`) VALUES
(6, 3, 46, 1, 0, 'IPAdmission Fees', 'Admission Fees', 'Admission Fees', '', 1, '0.00', '0.00'),
(18, 3, 46, 1, 0, 'IP Room Fees', 'Bed Charges', 'GF Casuality 08-02-2021 - 10-02-2021', '', 3, '700.00', '2100.00'),
(19, 4, 50, 1, 0, 'IPAdmission Fees', 'Admission Fees', 'Admission Fees', '', 1, '0.00', '0.00'),
(22, 3, 46, 1, 0, 'IP Room Fees', 'Bed Charges', 'GF Casuality 10-02-2021 - 10-02-2021', '', 1, '1000.00', '1000.00'),
(23, 4, 50, 1, 0, 'IP Room Fees', 'Bed Charges', 'GF Casuality 10-02-2021 - 15-02-2021', '', 6, '800.00', '4800.00'),
(20, 4, 50, 1, 8, 'IV FLUID', 'DAYCARE', 'IV FLUIDS', '', 1, '200.00', '200.00'),
(20, 4, 50, 2, 590, 'Lab', 'HEMATOLOGY', 'Haemoglobin', 'Test', 1, '300.00', '300.00'),
(7, 3, 46, 1, 17, 'X RAY', 'RIGHT FEMUR AP LAT', 'RIGHT FEMUR AP LAT', '', 1, '400.00', '400.00'),
(17, 3, 46, 1, 1, 'Lab', 'Profile', 'MASTER HEALTH CHECKUP', 'Profile', 1, '1000.00', '1000.00'),
(17, 3, 46, 2, 2, 'General', 'Consultation', 'Dr Tamil selvan', '', 1, '100.00', '100.00'),
(27, 5, 53, 1, 0, 'IPAdmission Fees', 'Admission Fees', 'Admission Fees', '', 1, '500.00', '500.00'),
(28, 5, 53, 1, 17, 'X RAY', 'RIGHT FEMUR AP LAT', 'RIGHT FEMUR AP LAT', '', 1, '400.00', '400.00'),
(28, 5, 53, 2, 295, 'Lab', 'BIOCHEMISTRY', 'G6 PD', 'Test', 1, '500.00', '500.00'),
(28, 5, 53, 3, 13, 'ECG', '', 'ECG', '', 1, '150.00', '150.00'),
(28, 5, 53, 4, 47, 'X RAY', 'X RAY', 'PARA NASAL SINUS', '', 1, '400.00', '400.00'),
(28, 5, 53, 5, 378, 'Lab', 'BIOCHEMISTRY', 'MAGNESIUM', 'Test', 1, '350.00', '350.00'),
(28, 5, 53, 6, 18, 'X RAY', 'ANKLE  JOINT AP LAT', 'ANKLE', '', 1, '400.00', '400.00'),
(29, 5, 53, 1, 0, 'IP Room Fees', 'Bed Charges', 'GF Casuality 15-02-2021 - 20-02-2021', '', 5, '1000.00', '5000.00'),
(30, 6, 53, 1, 0, 'IPAdmission Fees', 'Admission Fees', 'Admission Fees', '', 1, '0.00', '0.00'),
(31, 6, 53, 1, 17, 'X RAY', 'RIGHT FEMUR AP LAT', 'RIGHT FEMUR AP LAT', '', 1, '400.00', '400.00'),
(31, 6, 53, 2, 566, 'Lab', 'CLINICAL PATHOLOGY', 'Odour', 'Test', 1, '0.00', '0.00'),
(31, 6, 53, 3, 53, 'REVIEW', '', 'REVIEW', '', 1, '0.00', '0.00'),
(32, 6, 53, 1, 0, 'IP Room Fees', 'Bed Charges', 'GF Casuality 20-02-2021 - 20-02-2021', '', 1, '1000.00', '1000.00'),
(33, 6, 53, 1, 563, 'Lab', 'CLINICAL PATHOLOGY', 'Colour', 'Test', 1, '100.00', '100.00'),
(34, 6, 53, 1, 18, 'X RAY', 'ANKLE  JOINT AP LAT', 'ANKLE', NULL, 1, '400.00', '400.00'),
(34, 6, 53, 2, 17, 'X RAY', 'RIGHT FEMUR AP LAT', 'RIGHT FEMUR AP LAT', NULL, 1, '400.00', '400.00'),
(34, 6, 53, 3, 8, 'IV FLUID', 'DAYCARE', 'IV FLUIDS', NULL, 1, '200.00', '200.00'),
(35, 7, 55, 1, 0, 'IPAdmission Fees', 'Admission Fees', 'Admission Fees', '', 1, '500.00', '500.00'),
(36, 7, 55, 1, 47, 'X RAY', 'X RAY', 'PARA NASAL SINUS', '', 1, '400.00', '400.00'),
(36, 7, 55, 2, 1, 'Lab', 'Profile', 'MASTER HEALTH CHECKUP', 'Profile', 1, '1000.00', '1000.00'),
(36, 7, 55, 3, 499, 'Lab', 'BIOCHEMISTRY', 'URINE 17 KETOSTEROIDS', 'Test', 1, '1500.00', '1500.00'),
(37, 8, 64, 1, 0, 'IPAdmission Fees', 'Admission Fees', 'Admission Fees', '', 1, '500.00', '500.00'),
(38, 8, 64, 1, 27, 'X RAY', 'X - RAY', 'CHEST AP /PA', '', 1, '400.00', '400.00'),
(38, 8, 64, 2, 10, 'INJ', 'INJECTION', 'INJECTION', '', 1, '20.00', '20.00'),
(39, 7, 55, 1, 0, 'IP Room Fees', 'Bed Charges', 'GF Casuality 26-02-2021 - 01-04-2021', '', 34, '1000.00', '34000.00'),
(40, 7, 55, 1, 0, 'IP Room Fees', 'Bed Charges', 'GF Casuality 01-04-2021 - 01-04-2021', '', 1, '700.00', '700.00'),
(41, 8, 64, 1, 0, 'IP Room Fees', 'Bed Charges', 'GF Casuality 01-04-2021 - 01-04-2021', '', 1, '800.00', '800.00'),
(42, 9, 84, 1, 0, 'IPAdmission Fees', 'Admission Fees', 'Admission Fees', '', 1, '1000.00', '1000.00'),
(43, 9, 84, 1, 1, 'Lab', 'HEMATOLOGY', 'CBC', 'GroupTest', 1, '400.00', '400.00'),
(43, 9, 84, 2, 47, 'X RAY', 'X RAY', 'PARA NASAL SINUS', '', 1, '400.00', '400.00'),
(43, 9, 84, 3, 18, 'X RAY', 'ANKLE  JOINT AP LAT', 'ANKLE', '', 1, '400.00', '400.00'),
(43, 9, 84, 4, 2, 'Lab', 'BIOCHEMISTRY', 'LIVER FUNCTION TEST', 'GroupTest', 1, '500.00', '500.00'),
(45, 9, 84, 1, 0, 'IP Room Fees', 'Bed Charges', 'GF Casuality 06-05-2021 - 06-05-2021', '', 1, '700.00', '700.00'),
(46, 10, 84, 1, 0, 'IPAdmission Fees', 'Admission Fees', 'Admission Fees', '', 1, '0.00', '0.00'),
(47, 10, 84, 1, 22, 'X RAY', 'ABDOMEN ERECT', 'ABDOMEN ERECT', '', 1, '400.00', '400.00'),
(48, 10, 84, 1, 0, 'IP Room Fees', 'Bed Charges', 'GF Casuality 24-09-2021 - 24-09-2021', '', 1, '1000.00', '1000.00'),
(49, 11, 87, 1, 0, 'IPAdmission Fees', 'Admission Fees', 'Admission Fees', '', 1, '0.00', '0.00'),
(50, 11, 87, 1, 50, 'X RAY', 'X RAY', 'SKULL AP LAT', '', 1, '400.00', '400.00'),
(50, 11, 87, 2, 443, 'Lab', 'CLINICAL PATHOLOGY', 'SEMEN ANALYSIS - POST WASH', 'Test', 1, '300.00', '300.00'),
(51, 11, 87, 1, 0, 'IP Room Fees', 'Bed Charges', 'GF Casuality 15-10-2022 - 15-10-2022', '', 1, '1000.00', '1000.00'),
(52, 12, 79, 1, 0, 'IPAdmission Fees', 'Admission Fees', 'Admission Fees', '', 1, '0.00', '0.00'),
(53, 12, 79, 1, 442, 'Lab', 'SEROLOGY', 'SCRUB TYPHUS IgM - RAPID', 'Test', 1, '1500.00', '1500.00'),
(54, 13, 88, 1, 0, 'IPAdmission Fees', 'Admission Fees', 'Admission Fees', '', 1, '0.00', '0.00'),
(55, 13, 88, 1, 0, 'IP Room Fees', 'Bed Charges', 'GF Casuality 26-11-2022 - 26-11-2022', '', 1, '1000.00', '1000.00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_11_23_182338_registration', 1),
(2, '2021_01_15_104712_create_doctor_timings_table', 2),
(3, '2021_01_20_163521_create_complaints_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `op_bills`
--

CREATE TABLE `op_bills` (
  `id` int UNSIGNED NOT NULL,
  `year` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bill_no` int UNSIGNED DEFAULT NULL,
  `pt_id` int UNSIGNED DEFAULT NULL,
  `doctor_id` int UNSIGNED DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `due` decimal(10,2) DEFAULT NULL,
  `refund` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_payment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_no` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_type` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_expiry` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `collection_date` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `op_bills`
--

INSERT INTO `op_bills` (`id`, `year`, `bill_no`, `pt_id`, `doctor_id`, `total`, `discount`, `sub_total`, `paid`, `due`, `refund`, `payment_method`, `other_payment`, `card_no`, `card_type`, `card_expiry`, `user_id`, `collection_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2020-2021', 1, 2, 17, '150.00', '0.00', '150.00', '150.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2020-11-21 13:54:25', '2020-11-21 15:49:01', '2020-11-21 15:49:01'),
(2, '2020-2021', 2, 1, 17, '800.00', '0.00', '800.00', '800.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2020-11-21 13:55:33', '2020-11-21 15:48:34', '2020-11-21 15:48:34'),
(3, '2020-2021', 3, 2, 17, '500.00', '100.00', '400.00', '400.00', '0.00', '0.00', 'Card', '', '', 'Credit Card', '', 1, '', '2020-11-21 16:19:42', '2021-02-01 18:01:52', NULL),
(4, '2020-2021', 4, 2, 17, '700.00', '0.00', '700.00', '700.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2020-11-21 17:28:05', '2021-02-01 18:01:35', NULL),
(5, '2020-2021', 5, 52, 7, '600.00', '0.00', '600.00', '600.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-01-18 13:33:36', '2021-01-19 15:14:21', '2021-01-19 15:14:21'),
(6, '2020-2021', 6, 52, 7, '500.00', '0.00', '500.00', '500.00', '0.00', '0.00', 'Card', '', '12345', 'Master Card', '', 1, '', '2021-01-23 12:20:31', '2021-01-23 15:48:59', '2021-01-23 15:48:59'),
(7, '2020-2021', 7, 50, 17, '500.00', '0.00', '500.00', '500.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-02-02 18:19:43', '2021-02-03 11:53:02', NULL),
(8, '2020-2021', 8, 50, 17, '1550.00', '0.00', '1550.00', '1550.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-02-04 17:45:45', '2021-02-04 17:47:22', NULL),
(9, '2020-2021', 9, 47, 17, '1150.00', '0.00', '1150.00', '1100.00', '50.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-02-05 11:18:51', '2021-02-19 18:23:24', NULL),
(10, '2020-2021', 10, 53, 7, '950.00', '0.00', '950.00', '950.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-02-19 18:24:51', '2021-02-20 14:40:53', NULL),
(11, '2020-2021', 11, 53, 7, '100.00', '0.00', '100.00', '100.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-02-22 13:21:43', '2021-02-22 13:21:43', NULL),
(12, '2020-2021', 12, 54, 7, '550.00', '0.00', '550.00', '550.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-02-24 15:17:57', '2021-02-25 10:34:39', NULL),
(13, '2020-2021', 13, 54, 7, '550.00', '0.00', '550.00', '550.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-02-25 11:05:08', '2021-02-25 11:05:08', NULL),
(14, '2020-2021', 14, 54, 7, '1400.00', '0.00', '1400.00', '1400.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-02-26 11:34:27', '2021-02-26 17:49:03', NULL),
(15, '2020-2021', 15, 54, 7, '550.00', '150.00', '400.00', '400.00', '0.00', '0.00', 'Others', 'Google Pay', '', '', '', 1, '', '2021-02-27 14:50:23', '2021-03-02 14:21:22', NULL),
(16, '2021-2022', 1, 64, 7, '4050.00', '60.00', '3990.00', '1000.00', '2990.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-04-01 13:33:35', '2021-04-01 13:34:23', NULL),
(17, '2021-2022', 2, 65, 7, '1000.00', '0.00', '1000.00', '1000.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-04-07 16:39:35', '2021-04-07 16:43:35', NULL),
(18, '2021-2022', 3, 84, 25, '1000.00', '0.00', '1000.00', '1000.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-04-12 16:01:47', '2021-05-05 20:19:49', NULL),
(19, '2021-2022', 4, 84, 25, '400.00', '0.00', '400.00', '400.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-05-06 12:36:36', '2021-05-06 12:36:36', NULL),
(20, '2021-2022', 5, 84, 25, '120.00', '0.00', '120.00', '120.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-09-24 12:13:32', '2021-09-24 12:13:32', NULL),
(21, '2021-2022', 6, 85, 25, '520.00', '10.00', '510.00', '510.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '', '2021-09-24 13:26:40', '2021-09-25 11:44:00', NULL),
(22, '2022-2023', 1, 88, 13, '150.00', '0.00', '150.00', '150.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '2022-11-28', '2022-11-28 10:12:37', '2022-11-28 10:12:37', NULL),
(23, '2022-2023', 2, 88, 13, '150.00', '0.00', '150.00', '150.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '2022-11-28', '2022-11-28 10:14:49', '2022-11-28 10:14:49', NULL),
(24, '2022-2023', 3, 88, 13, '400.00', '0.00', '400.00', '400.00', '0.00', '0.00', 'Cash', '', '', '', '', 1, '2022-11-28', '2022-11-28 10:21:35', '2022-11-28 10:21:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `op_bill_details`
--

CREATE TABLE `op_bill_details` (
  `bill_id` int UNSIGNED DEFAULT NULL,
  `pt_id` int UNSIGNED DEFAULT NULL,
  `department` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fees_id` int UNSIGNED DEFAULT NULL,
  `fees_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `test_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Column to Identify Whether it is a single test or Group Test or Profile on Lab Result',
  `fees` decimal(10,2) UNSIGNED DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `discount` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `op_bill_details`
--

INSERT INTO `op_bill_details` (`bill_id`, `pt_id`, `department`, `category`, `fees_id`, `fees_type`, `test_type`, `fees`, `qty`, `discount`) VALUES
(1, 2, 'ECG', '', 13, 'ECG', '', '150.00', 0, '0'),
(2, 1, 'X RAY', 'X - RAY', 21, 'SHOULDER LEFT AP -AXIAL', '', '400.00', 0, '0'),
(2, 1, 'X RAY', 'ANKLE  JOINT AP LAT', 18, 'ANKLE', '', '400.00', 0, '0'),
(5, 52, 'Lab', 'LEPTOSPIROSIS INVESTIGATIONS', 29, 'MICROSCOPIC AGGLUTINATION TEST (MAT)', 'Test', '100.00', 0, '0'),
(5, 52, 'X RAY', 'X - RAY', 39, 'LUMBAR SPINE AP/LAT', '', '500.00', 0, '0'),
(6, 52, 'General', 'Consultation', 2, 'Dr Tamil selvan', '', '100.00', 0, '0'),
(6, 52, 'X RAY', 'X RAY', 47, 'PARA NASAL SINUS', '', '400.00', 0, '0'),
(4, 2, 'X RAY', 'X - RAY', 30, 'ELBOW AP/LAT', '', '400.00', 0, '0'),
(4, 2, 'Lab', 'BIOCHEMISTRY', 199, 'LIVER FUNCTION TEST', 'Test', '200.00', 0, '0'),
(4, 2, 'Lab', 'HAEMATOLOGY', 207, 'CBC', 'Test', '100.00', 0, '0'),
(3, 2, 'X RAY', 'ANKLE  JOINT AP LAT', 18, 'ANKLE', '', '400.00', 0, '100'),
(3, 2, 'General', 'Consultation', 2, 'Dr Tamil selvan', '', '100.00', 0, '0'),
(7, 50, 'X RAY', 'ANKLE  JOINT AP LAT', 18, 'ANKLE', '', '400.00', 0, '0'),
(7, 50, 'Lab', 'HAEMATOLOGY', 207, 'CBC', 'Test', '100.00', 0, '0'),
(8, 50, 'ECG', '', 13, 'ECG', '', '150.00', 0, '0'),
(8, 50, 'Lab', 'HEMATOLOGY', 1, 'CBC', 'GroupTest', '400.00', 0, '0'),
(8, 50, 'General', 'Consultation', 2, 'Dr Tamil selvan', '', '100.00', 0, '0'),
(8, 50, 'Lab', 'IMMUNOLOGY', 372, 'LH / FSH Ratio', 'Test', '900.00', 0, '0'),
(9, 47, 'Lab', 'Profile', 1, 'MASTER HEALTH CHECKUP', 'Profile', '1000.00', 0, '0'),
(9, 47, 'Lab', 'IMMUNOLOGY', 482, 'T3 (Triiodothyronine)', 'Test', '150.00', 0, '0'),
(10, 53, 'X RAY', 'RIGHT FEMUR AP LAT', 17, 'RIGHT FEMUR AP LAT', '', '400.00', 0, '0'),
(10, 53, 'X RAY', 'ANKLE  JOINT AP LAT', 18, 'ANKLE', '', '400.00', 0, '0'),
(10, 53, 'ECG', '', 13, 'ECG', '', '150.00', 0, '0'),
(11, 53, 'Lab', 'CLINICAL PATHOLOGY', 563, 'Colour', 'Test', '100.00', 0, '0'),
(12, 54, 'X RAY', 'ANKLE  JOINT AP LAT', 18, 'ANKLE', '', '400.00', 0, '0'),
(12, 54, 'Lab', 'IMMUNOLOGY', 482, 'T3 (Triiodothyronine)', 'Test', '150.00', 0, '0'),
(13, 54, 'X RAY', 'ANKLE  JOINT AP LAT', 18, 'ANKLE', NULL, '400.00', 0, '0'),
(13, 54, 'ECG', '', 13, 'ECG', NULL, '150.00', 0, '0'),
(14, 54, 'Lab', 'Profile', 1, 'MASTER HEALTH CHECKUP', 'Profile', '1000.00', 0, '0'),
(14, 54, 'X RAY', 'ABDOMEN ERECT', 22, 'ABDOMEN ERECT', '', '400.00', 0, '0'),
(15, 54, 'X RAY', 'X RAY', 20, 'CHEST  PA', '', '400.00', 0, '100'),
(15, 54, 'Lab', 'IMMUNOLOGY', 482, 'T3 (Triiodothyronine)', 'Test', '150.00', 0, '50'),
(16, 64, 'Lab', 'BIOCHEMISTRY', 644, 'Total Bilirubin', 'Test', '550.00', 0, '10'),
(16, 64, 'Lab', 'IMMUNOLOGY', 166, 'C - PEPTIDE (URINE)', 'Test', '700.00', 0, '20'),
(16, 64, 'Lab', 'MOLECULAR BIOLOGY', 300, 'GENO TYPING FOR MDR GENE EXPERT - MTB', 'Test', '2800.00', 0, '30'),
(17, 65, 'Lab', 'HEMATOLOGY', 241, 'D - DIMER', 'Test', '1000.00', 0, '0'),
(18, 84, 'Lab', 'SEROLOGY', 392, 'P - ANCA', 'Test', '800.00', 0, '0'),
(18, 84, 'Lab', 'HEMATOLOGY', 346, 'I N R', 'Test', '200.00', 0, '0'),
(19, 84, 'Lab', 'HEMATOLOGY', 1, 'CBC', 'GroupTest', '400.00', 0, '0'),
(20, 84, 'Lab', 'HEMATOLOGY', 27, 'ABSOLUTE GRANULOCYTE COUNT', 'Test', '120.00', 0, '0'),
(21, 85, 'Lab', 'HEMATOLOGY', 27, 'ABSOLUTE GRANULOCYTE COUNT', 'Test', '120.00', 0, '10'),
(21, 85, 'X RAY', 'ABDOMEN ERECT', 22, 'ABDOMEN ERECT', '', '400.00', 0, '0'),
(22, 88, 'Lab', 'BIOCHEMISTRY', 22, 'A/G Ratio', 'Test', '150.00', 0, '0'),
(24, 88, 'X RAY', 'ABDOMEN SPINE', 23, 'ABDOMEN SPINE', '', '400.00', 20, '0');

-- --------------------------------------------------------

--
-- Table structure for table `op_lab_results`
--

CREATE TABLE `op_lab_results` (
  `id` int UNSIGNED NOT NULL,
  `bill_id` int UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `op_lab_results`
--

INSERT INTO `op_lab_results` (`id`, `bill_id`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
(1, 23, '2020-11-02 16:50:59', '2020-11-02 16:50:59', NULL, 1),
(2, 27, '2020-11-03 17:11:11', '2020-11-03 17:11:11', NULL, 1),
(3, 29, '2020-11-06 12:39:58', '2020-12-02 13:44:55', '2020-12-02 13:44:55', 1),
(4, 35, '2020-11-06 18:19:05', '2020-11-06 18:19:28', NULL, 1),
(5, 38, '2020-11-13 16:34:09', '2020-11-13 16:49:29', NULL, 1),
(6, 34, '2020-11-09 11:45:49', '2020-11-16 12:57:45', NULL, 1),
(7, 45, '2020-11-16 11:20:54', '2020-11-16 13:40:10', NULL, 1),
(10, 47, '2020-11-30 13:20:12', '2020-11-30 17:36:23', '2020-11-30 17:36:23', 1),
(12, 61, '2020-12-02 16:00:31', '2020-12-02 17:40:03', '2020-12-02 17:40:03', 1),
(13, 58, '2020-12-02 16:20:41', '2020-12-07 12:56:48', NULL, 1),
(14, 62, '2020-12-03 17:26:18', '2020-12-03 17:28:37', NULL, 1),
(15, 65, '2020-12-18 12:01:51', '2020-12-19 17:53:16', NULL, 1),
(17, 69, '2020-12-23 12:00:20', '2020-12-23 12:00:27', '2020-12-23 12:00:27', 1),
(18, 4, '2021-02-05 11:34:34', '2021-02-05 11:34:34', NULL, 1),
(19, 9, '2021-02-05 11:47:21', '2021-02-05 12:10:52', NULL, 1),
(20, 14, '2021-02-26 11:34:47', '2021-02-26 11:34:47', NULL, 1),
(21, 15, '2021-02-27 16:53:10', '2021-02-27 16:53:10', NULL, 1),
(23, 16, '2021-04-01 13:37:25', '2021-04-01 13:37:25', NULL, 1),
(24, 17, '2021-05-06 12:27:51', '2021-05-06 12:27:51', NULL, 1),
(25, 19, '2021-05-06 12:36:47', '2021-05-06 12:36:47', NULL, 1),
(26, 21, '2021-09-24 14:37:34', '2021-09-24 14:37:34', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `op_lab_result_details`
--

CREATE TABLE `op_lab_result_details` (
  `bill_id` int UNSIGNED DEFAULT NULL,
  `test_id` int UNSIGNED DEFAULT NULL,
  `field_id` int UNSIGNED DEFAULT NULL,
  `result` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_selected` tinyint DEFAULT NULL,
  `alignment` int UNSIGNED DEFAULT NULL,
  `is_group` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `op_lab_result_details`
--

INSERT INTO `op_lab_result_details` (`bill_id`, `test_id`, `field_id`, `result`, `result_type`, `is_selected`, `alignment`, `is_group`) VALUES
(23, 1, 590, '12', 'N', 1, 0, 1),
(23, 1, 491, '50', 'N', 1, 1, 1),
(23, 346, 346, '4', 'N', 1, 2, 0),
(23, 2, 644, '0.6', 'N', 1, 3, 1),
(23, 2, 645, '.1', 'N', 1, 4, 1),
(23, 2, 646, '', 'L', 0, 5, 1),
(23, 295, 295, '', 'N', 0, 6, 0),
(27, 1, 590, '10', 'N', 1, 0, 1),
(27, 1, 491, '50', 'N', 1, 1, 1),
(27, 346, 346, '80', 'N', 1, 2, 0),
(27, 393, 393, '', 'N', 0, 3, 0),
(29, 1, 590, '50', 'N', 1, 0, 1),
(29, 1, 491, '20', 'N', 1, 1, 1),
(29, 138, 138, '10', 'N', 1, 2, 0),
(35, 1, 590, '15', 'N', 1, 0, 1),
(35, 1, 491, '20', 'N', 1, 1, 1),
(35, 346, 346, '70', 'N', 1, 2, 0),
(35, 2, 644, '', 'N', 0, 3, 1),
(35, 2, 645, '', 'N', 0, 4, 1),
(35, 2, 646, '', 'N', 0, 5, 1),
(35, 241, 241, '50', 'N', 1, 6, 0),
(38, 22, 22, '56', 'H', 1, 0, 0),
(34, 295, 295, '345', 'N', 1, 0, 0),
(34, 1, 1, '65', 'N', 1, 1, 0),
(34, 1, 590, '', 'N', 0, 2, 1),
(34, 1, 491, '', 'N', 0, 3, 1),
(45, 434, 434, '23', 'N', 1, 0, 0),
(45, 1, 590, '3', 'L', 1, 1, 1),
(45, 1, 491, '', 'N', 0, 2, 1),
(47, 23, 23, '10', 'N', 1, 0, 0),
(61, 442, 442, '15', 'N', 1, 0, 0),
(62, 263, 263, '23', 'N', 1, 0, 0),
(58, 22, 22, '1.6', 'H', 1, 0, 0),
(58, 482, 482, '', 'N', 0, 1, 0),
(65, 1, 590, '15', 'N', 1, 0, 1),
(65, 1, 591, '38', 'L', 1, 1, 1),
(65, 1, 491, '5900', 'N', 1, 2, 1),
(65, 1, 593, '5.3', 'N', 1, 3, 1),
(65, 1, 594, '95', 'N', 1, 4, 1),
(65, 1, 595, '32', 'H', 1, 5, 1),
(65, 1, 596, '34', 'N', 1, 6, 1),
(65, 1, 597, '190000', 'N', 1, 7, 1),
(65, 1, 598, '65', 'N', 1, 8, 1),
(65, 1, 599, '47', 'N', 1, 9, 1),
(65, 1, 600, '6', 'N', 1, 10, 1),
(65, 1, 601, '8', 'N', 1, 11, 1),
(69, 295, 295, '23', 'N', 1, 0, 0),
(4, 199, 199, '10', 'N', 1, 0, 0),
(4, 207, 207, '', 'N', 0, 1, 0),
(9, 1, 590, '10', 'N', 1, 0, 1),
(9, 1, 591, '43', 'N', 1, 1, 1),
(9, 1, 491, '', 'N', 0, 2, 1),
(9, 1, 593, '', 'N', 0, 3, 1),
(9, 1, 594, '', 'N', 0, 4, 1),
(9, 1, 595, '', 'N', 0, 5, 1),
(9, 1, 596, '', 'N', 0, 6, 1),
(9, 1, 597, '', 'N', 0, 7, 1),
(9, 1, 598, '', 'N', 0, 8, 1),
(9, 1, 599, '', 'N', 0, 9, 1),
(9, 1, 600, '', 'N', 0, 10, 1),
(9, 1, 601, '', 'N', 0, 11, 1),
(9, 346, 346, '', 'N', 0, 12, 0),
(9, 254, 254, '', 'N', 0, 13, 0),
(9, 482, 482, '', 'N', 0, 14, 0),
(14, 1, 590, '12', 'N', 1, 0, 1),
(14, 1, 591, '2', 'N', 1, 1, 1),
(14, 1, 491, '', 'N', 0, 2, 1),
(14, 1, 593, '', 'N', 0, 3, 1),
(14, 1, 594, '', 'N', 0, 4, 1),
(14, 1, 595, '', 'N', 0, 5, 1),
(14, 1, 596, '', 'N', 0, 6, 1),
(14, 1, 597, '', 'N', 0, 7, 1),
(14, 1, 598, '', 'N', 0, 8, 1),
(14, 1, 599, '', 'N', 0, 9, 1),
(14, 1, 600, '', 'N', 0, 10, 1),
(14, 1, 601, '', 'N', 0, 11, 1),
(14, 346, 346, '', 'N', 0, 12, 0),
(14, 254, 254, '', 'N', 0, 13, 0),
(15, 482, 482, '', 'N', 0, 0, 0),
(16, 644, 644, '10', 'N', 1, 0, 0),
(16, 166, 166, '10', 'N', 1, 1, 0),
(16, 300, 300, '10', 'N', 1, 2, 0),
(17, 241, 241, '', 'N', 0, 0, 0),
(19, 1, 590, '12', 'N', 1, 0, 1),
(19, 1, 591, '32', 'N', 1, 1, 1),
(19, 1, 491, '', 'N', 0, 2, 1),
(19, 1, 593, '', 'N', 0, 3, 1),
(19, 1, 594, '', 'N', 0, 4, 1),
(19, 1, 595, '', 'N', 0, 5, 1),
(19, 1, 596, '', 'N', 0, 6, 1),
(19, 1, 597, '', 'N', 0, 7, 1),
(19, 1, 598, '', 'N', 0, 8, 1),
(19, 1, 599, '', 'N', 0, 9, 1),
(19, 1, 600, '', 'N', 0, 10, 1),
(19, 1, 601, '', 'N', 0, 11, 1),
(21, 27, 27, '11', 'N', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `op_registrations`
--

CREATE TABLE `op_registrations` (
  `id` int UNSIGNED NOT NULL,
  `year` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `op_no` int DEFAULT NULL,
  `pt_id` int DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `doctor_id` int UNSIGNED DEFAULT NULL,
  `height` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `weight` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bsa` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pulse` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `visit_reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `op_registrations`
--

INSERT INTO `op_registrations` (`id`, `year`, `op_no`, `pt_id`, `name`, `age`, `gender`, `contact_no`, `doctor_id`, `height`, `weight`, `bsa`, `bp`, `pulse`, `status`, `visit_reason`, `created_at`, `updated_at`) VALUES
(10, '2020-2021', 1, 51, 'Mr.Demo', '10', 'Male', '4533', 17, '166', '68', '', '', '', '', '', '2021-01-21 16:06:19', '2021-01-22 13:51:51'),
(12, '2021-2022', 1, 64, 'Mr.Syed Ameen', '35', 'Male', '9894600472', 7, '105', '65', '10', '100', '100', 'fine', '', '2021-04-01 13:19:59', '2021-04-01 13:19:59'),
(13, '2021-2022', 2, 84, 'Mr.demo', '23', 'Male', '34564644545', 25, '', '', '', '', '', '', '', '2021-05-06 15:15:44', '2021-05-06 15:15:44'),
(14, '2021-2022', 3, 83, 'Mr.Demo Patient', '23', 'Male', '4534534343', 25, '', '', '', '', '', '', '', '2021-09-24 11:59:37', '2021-09-24 11:59:37'),
(15, '2021-2022', 4, 85, 'Mr.ssss', '444', 'Male', '5575757856', 25, '', '', '', '', '', '', '', '2021-09-24 13:25:37', '2021-09-24 13:25:37'),
(16, '2021-2022', 5, 87, 'Mr.ss', '11', 'Male', '5555555555', 25, '11', '11', '1', '1', '11', '1', '', '2021-09-24 16:00:10', '2021-09-24 16:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`name`) VALUES
('Google Pay'),
('CMS CREDIT'),
('RC CREDIT'),
('ESI'),
('PayTM'),
('PhonePE');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int UNSIGNED NOT NULL,
  `op_id` int UNSIGNED DEFAULT NULL,
  `year` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `op_no` int UNSIGNED DEFAULT NULL,
  `opinion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `patient_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `diagnosis` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `complaints` json DEFAULT NULL,
  `medicines` json DEFAULT NULL,
  `investigations` json DEFAULT NULL,
  `treatments` json DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `op_id`, `year`, `op_no`, `opinion`, `patient_info`, `diagnosis`, `complaints`, `medicines`, `investigations`, `treatments`, `created_at`, `updated_at`) VALUES
(6, 10, NULL, NULL, 'Opinion', 'Nothing', 'Diagnosis', '[\"Fever\", \"Stomach Pain\"]', '[{\"days\": 5, \"type\": \"AF\", \"dosage\": \"1-0-1\", \"period\": \"Daily\", \"medicine\": \"P-120 MG SUS 60ML\"}]', '[]', '[]', '2021-01-22 14:42:53', '2021-01-22 14:42:53'),
(8, 12, NULL, NULL, 'Opinion', 'Patent Info', 'Diagnosis', '[\"Nausia\"]', '[{\"days\": 5, \"type\": \"AF\", \"dosage\": \"1-1-1\", \"period\": \"daily\", \"medicine\": \"A T M  100 MG SUS\"}, {\"days\": 5, \"type\": \"AF\", \"dosage\": \"1-0-1\", \"period\": \"daily\", \"medicine\": \"B.P BLADES 23\"}]', '[\"BILIRUBIN ( TOTAL)\"]', '[\"Rest\"]', '2021-04-01 13:29:29', '2021-04-01 13:29:29'),
(9, 13, NULL, NULL, '', '', '', '[]', '[{\"days\": 1, \"type\": \"AF\", \"dosage\": \"1-1-1\", \"period\": \"1\", \"medicine\": \"LASIX 2 ML INJ\"}]', '[]', '[]', '2021-09-24 12:12:52', '2021-09-24 12:12:52'),
(10, 14, NULL, NULL, '', '', '', '[]', '[]', '[]', '[]', '2021-09-24 13:26:03', '2021-09-24 13:26:03'),
(11, 15, NULL, NULL, '', '', '', '[]', '[]', '[]', '[]', '2021-09-24 14:32:26', '2021-09-24 14:32:26'),
(12, 16, NULL, NULL, '', '', '', '[]', '[{\"days\": 1, \"type\": \"AF\", \"dosage\": \"1-1-1\", \"period\": \"1\", \"medicine\": \"demo\"}]', '[]', '[]', '2021-09-24 16:01:48', '2021-09-24 16:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int NOT NULL,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tests` json DEFAULT NULL,
  `fees` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `tests`, `fees`, `created_at`, `updated_at`) VALUES
(1, 'MASTER HEALTH CHECKUP', '[[1, \"Group\"], [346, \"Test\"], [254, \"Test\"]]', '1000.00', '2020-11-13 11:04:29', '2021-02-05 12:26:29'),
(8, 'Demo Profile', '[[1, \"Group\"], [254, \"Test\"]]', '1000.00', '2021-02-04 15:54:27', '2021-02-04 15:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int UNSIGNED NOT NULL,
  `uuid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salutation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `contact_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `doctor_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `uuid`, `salutation`, `name`, `age`, `gender`, `dob`, `contact_no`, `email_address`, `address`, `doctor_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'd5903b4a-c459-4897-bef0-deed68719ff9', 'Mr', 'Sushant Aggarwal', '36', 'Male', NULL, '+91 717 0180029', 'balan.sai@yahoo.com', '48, Model Town, Jodhpur - 287673', 17, 1, '2020-11-23 18:03:26', '2021-04-10 16:15:11', NULL),
(2, '3fc539bc-f42a-4fc0-9b53-a8c15f8112b9', 'Mr', 'Rupesh Prasad Meka', '25', 'Male', NULL, '+91 53 09267666', 'ukumer@ravel.com', '65, Bandra, Ajmer - 463315', 17, 1, '2020-11-23 18:03:26', '2021-04-10 16:15:11', NULL),
(3, 'dae5385e-8d77-4512-867b-7d0a2bee44b0', 'Mrs', 'Sid Prasad Kibe', '55', 'Female', NULL, '+91 549 3100339', 'salvi.yadunandan@yahoo.co.in', '76, Chandpole, Gurgaon - 297718', 17, 1, '2020-11-23 18:03:26', '2021-04-10 16:15:11', NULL),
(4, '1f8ebb2c-5094-487d-bdb7-2eafb4de84a0', 'Mrs', 'Aarti Jain', '45', 'Female', NULL, '+91 28 96958208', 'bhanupriya13@yahoo.com', '65, Obaid Heights, Mansarovar Trichy - 204623', 17, 1, '2020-11-23 18:03:26', '2021-04-10 16:15:11', NULL),
(5, 'e6e4ba8c-ac36-4e13-8abb-783efbc5f30f', 'Mr', 'Pinky Aditya Kar', '26', 'Male', NULL, '+91 945 2671028', 'ruchi25@hotmail.com', '49, Nilam Society, Churchgate Gandhinagar - 432381', 17, 1, '2020-11-23 18:03:26', '2021-04-10 16:15:11', NULL),
(6, '95a3e843-e939-4cee-8f64-995a99c90d6f', 'Mr', 'Demo1223', '34', 'Male', '1993-04-01', '3443635345', NULL, NULL, 17, 1, '2020-11-23 18:03:26', '2021-04-10 16:15:12', NULL),
(7, '343f4d8b-6d43-4fdb-abb1-ff68f867b7d7', 'Mrs', 'Hrishikesh Ratan Mital', '34', 'Female', NULL, '+91 157 6336789', 'onatarajan@randhawa.in', '49, Mohit Villas, BijoyGarh Panaji - 419314', 17, 1, '2020-11-23 18:03:27', '2021-04-10 16:15:12', NULL),
(8, 'a90f170b-9778-4b4e-93d9-21e144405f9d', 'Mrs', 'Fakaruddin Pal', '47', 'Female', NULL, '060 89891027', 'ichhabra@gmail.com', '61, VarunGarh, Jodhpur - 334460', 17, 1, '2020-11-23 18:03:27', '2021-04-10 16:15:12', NULL),
(9, 'f37b7d84-4574-457e-a157-646b48b449b2', 'Mrs', 'Tushar Tailor', '51', 'Female', NULL, '+91 759 2176885', 'amadan@rau.co.in', '17, Brock Society, Bandra Panaji - 551993', 17, 1, '2020-11-23 18:03:27', '2021-04-10 16:15:12', NULL),
(10, '9177fc9e-48c7-408e-823e-b373c54f75ed', 'Mrs', 'Komal Garg', '60', 'Female', NULL, '+91 99 92956585', 'pandit.manoj@rediffmail.com', '16, BagwatiGunj, Rajkot - 195949', 17, 1, '2020-11-23 18:03:27', '2021-04-10 16:15:12', NULL),
(11, 'f4124871-5dc0-4cf9-b2db-c117b8824d2a', 'Mrs', 'Habib Chhabra', '35', 'Female', NULL, '022 97938444', 'kcontractor@jain.com', '17, Malad, Jammu - 539869', 17, 1, '2020-11-23 18:03:27', '2021-04-10 16:15:12', NULL),
(12, '3e742d42-8bcd-4468-a569-f788c6655a03', 'Mr', 'Aisha Swamy', '60', 'Male', NULL, '+91 820 9585845', 'venkataraman.amrit@yahoo.co.in', '33, Rita Chowk, Bengaluru - 105483', 17, 1, '2020-11-23 18:03:27', '2021-04-10 16:15:12', NULL),
(13, '984807f5-3f95-4aa0-9550-4f916962be68', 'Mrs', 'Chhavi Mitter', '51', 'Female', NULL, '+91 37 09960965', 'fardeen38@hotmail.com', '32, Namita Villas, Kormangala Hyderabad - 445245', 17, 1, '2020-11-23 18:03:27', '2021-04-10 16:15:12', NULL),
(14, '15398183-9ca0-48d1-b0ca-30d5d2fe8fb4', 'Mrs', 'Monin Grewal', '37', 'Female', NULL, '+91 55 12667513', 'kalyani.sen@tara.com', '83, Sabina Nagar, Gangtok - 508103', 17, 1, '2020-11-23 18:03:27', '2021-04-10 16:15:12', NULL),
(15, '36c80008-74c0-4b04-9e34-12b4c7b7422b', 'Mr', 'Sirish Narayan', '40', 'Male', NULL, '062 76564524', 'himani.rajagopalan@yahoo.co.in', '23, Pravin Apartments, Andheri Chandigarh - 349303', 17, 1, '2020-11-23 18:03:27', '2021-04-10 16:15:12', NULL),
(16, 'a52ee668-a4a5-47ca-9a09-c03127bed88f', 'Mr', 'Qadim Raj Kunda', '30', 'Male', NULL, '0988 9317738', 'lnaik@gagrani.ac.in', '76, UshaGarh, Bhopal - 111070', 17, 1, '2020-11-23 18:03:28', '2021-04-10 16:15:13', NULL),
(17, '9a42735c-46d2-453a-aa50-7f5b04955c87', 'Mr', 'Trishana Vyas', '36', 'Male', NULL, '083 16497588', 'aslam12@sarin.com', '38, Brock Villas, PrabhaGarh Raipur - 293111', 17, 1, '2020-11-23 18:03:28', '2021-04-10 16:15:13', NULL),
(18, '4b36002b-3756-42f2-a854-cfe6414ecfa1', 'Mrs', 'Raj Gajendra Dey', '41', 'Female', NULL, '0801 7992961', 'pshah@dutt.org', '64, Tulsi Chowk, Gandhinagar - 113411', 17, 1, '2020-11-23 18:03:28', '2021-04-10 16:15:13', NULL),
(19, '20a7be0e-39fa-44a3-8c6b-b4e5dac488c8', 'Mrs', 'Elias Gour', '32', 'Female', NULL, '043 03664021', 'xlall@yahoo.co.in', '17, Kharadi, Alwar - 306959', 17, 1, '2020-11-23 18:03:28', '2021-04-10 16:15:13', NULL),
(20, 'b775c149-0736-470c-8722-5dad579e2fec', 'Mr', 'Mohanlal Lal Amble', '28', 'Male', NULL, '+91 384 1347528', 'rashid.kothari@bail.com', '15, Chandpole, Guwahati - 362317', 17, 1, '2020-11-23 18:03:28', '2021-04-10 16:15:13', NULL),
(21, 'e47230cf-e552-4bef-93c5-b5de7b04adef', 'Mrs', 'Nawab Rao Bawa', '36', 'Female', NULL, '046 62730499', 'rashid02@rajan.com', '55, SameedhaGunj, Ratlam - 447216', 17, 1, '2020-11-23 18:03:28', '2021-04-10 16:15:13', NULL),
(22, 'fe3f5949-728b-42bc-b869-8917ffff9d4e', 'Mr', 'Prabhat Jacob', '56', 'Male', NULL, '+91 143 3418666', 'alpa83@venkataraman.com', '53, Pradeep Society, Hinjewadi Bhubhaneshwar - 156061', 17, 1, '2020-11-23 18:03:28', '2021-04-10 16:15:13', NULL),
(23, 'c2d8ee68-9afc-456a-b856-afc899b0a88c', 'Mrs', 'Nilima Nayak', '38', 'Female', NULL, '0664 6394851', 'sunita.deshmukh@doshi.com', '22, Abbas Villas, Rosey Nagar Bengaluru - 213804', 17, 1, '2020-11-23 18:03:28', '2021-04-10 16:15:13', NULL),
(24, '7208f452-5581-4228-a739-40e05b309c28', 'Mr', 'Anusha Philip', '32', 'Male', NULL, '+91 31 84797287', 'icomar@gmail.com', '17, Hira Society, Dadar Vadodara - 436462', 17, 1, '2020-11-23 18:03:28', '2021-04-10 16:15:13', NULL),
(25, '5eed7e59-ea03-477c-8ce9-361b67da02ff', 'Mrs', 'Charlie Chander', '51', 'Female', NULL, '047 05782388', 'fdyal@ravi.com', '97, Naresh Apartments, Anusha Nagar Rajkot - 165762', 17, 1, '2020-11-23 18:03:28', '2021-04-10 16:15:13', NULL),
(26, 'cbcae24e-b35a-4c12-85a6-3b997e96b7ed', 'Mrs', 'Aadish Prasad Sarna', '48', 'Female', NULL, '+91 06 19857562', 'rohini20@srinivas.in', '49, Elias Villas, Cyber City Indore - 342215', 17, 1, '2020-11-23 18:03:28', '2021-04-10 16:15:14', NULL),
(27, '61c36766-ba5c-40b5-9b37-b2085f4f4cb9', 'Mrs', 'Madhu Kabeer Singh', '53', 'Female', NULL, '047 68749825', 'agrawal.ankita@rama.com', '56, Rupesh Villas, JackGunj Hisar - 202731', 17, 1, '2020-11-23 18:03:28', '2021-04-10 16:15:14', NULL),
(28, 'ce4b9855-53bb-4481-820c-0f65b66934f0', 'Mrs', 'Madhu Ahuja', '55', 'Female', NULL, '022 71199458', 'tanay.baral@mane.com', '35, Aundh, Kanpur - 110632', 17, 1, '2020-11-23 18:03:28', '2021-04-10 16:15:14', NULL),
(29, '81da361d-fe74-428f-8b99-0e44a9ea1654', 'Mrs', 'Pranay Atul Chohan', '38', 'Female', NULL, '+91 224 5908959', 'savita.kant@yahoo.com', '91, Suresh Society, Parminder Chowk Nashik - 375781', 17, 1, '2020-11-23 18:03:29', '2021-04-10 16:15:14', NULL),
(30, '00281a7d-3cea-4aa9-ad22-9f874d8fde91', 'Mr', 'Jack Bera', '57', 'Male', NULL, '0369 9098773', 'akar@rediffmail.com', '27, Suraj Villas, Padama Chowk Dehra Dun - 431763', 17, 1, '2020-11-23 18:03:29', '2021-04-10 16:15:14', NULL),
(31, 'cbf07638-4e77-4b18-89a9-531a08d28831', 'Mr', 'Deep Mohan Chokshi', '40', 'Male', NULL, '+91 34 93733340', 'thaker.ibrahim@hotmail.com', '90, Nidhi Heights, RickyPur Alwar - 377356', 17, 1, '2020-11-23 18:03:29', '2021-04-10 16:15:14', NULL),
(32, '59513f77-1ea2-4375-9361-6e3f7c6f35f3', 'Mrs', 'Wafiq Sama', '30', 'Female', NULL, '0235 2464395', 'ppersaud@yahoo.com', '76, Uday Heights, Deccan Gymkhana Kota - 269215', 17, 1, '2020-11-23 18:03:29', '2021-04-10 16:15:14', NULL),
(33, '3713efd9-10a0-4cc9-9482-9b276aae2baf', 'Mr', 'Abdul Kulkarni', '26', 'Male', NULL, '075 54296232', 'navami46@yahoo.co.in', '49, MukundGarh, Rajkot - 133862', 17, 1, '2020-11-23 18:03:29', '2021-04-10 16:15:14', NULL),
(34, '5ace5879-c97d-477f-aa44-413426363861', 'Mr', 'Bharat Puri', '57', 'Male', NULL, '+91 77 90128049', 'lbalan@banerjee.com', '78, Monica Apartments, Andheri Nagpur - 331683', 17, 1, '2020-11-23 18:03:29', '2021-04-10 16:15:14', NULL),
(35, '300c7a03-fa0b-42a9-a9a7-8c71549125db', 'Mrs', 'Radheshyam Mane', '57', 'Female', NULL, '0487 9170535', 'rashid.sarin@gmail.com', '13, Ishat Nagar, Patna - 438930', 17, 1, '2020-11-23 18:03:29', '2021-04-10 16:15:14', NULL),
(36, '21492def-1bab-4195-96a7-15b104f8c1f9', 'Mrs', 'Himesh Amble', '58', 'Female', NULL, '+91 613 4840184', 'dewan.aarif@hotmail.com', '19, VickyGunj, Kota - 367826', 17, 1, '2020-11-23 18:03:29', '2021-04-10 16:15:15', NULL),
(37, 'e9a6a656-3a16-498e-8aaa-bba38f04b92f', 'Mrs', 'Gauransh Kakar', '53', 'Female', NULL, '+91 200 0692010', 'navami36@mahabir.ac.in', '92, Bandra, Jamnagar - 365006', 17, 1, '2020-11-23 18:03:29', '2021-04-10 16:15:15', NULL),
(38, '2890fd4c-cd2d-4187-bcc0-15bd0bfbfd9c', 'Mr', 'Binita Kashyap', '54', 'Male', NULL, '+91 289 1808247', 'nilima.kapoor@rediffmail.com', '83, Arpit Apartments, Aundh Jodhpur - 512021', 17, 1, '2020-11-23 18:03:29', '2021-04-10 16:15:15', NULL),
(39, '56dc1acc-645a-4e58-89de-cc83618bf397', 'Mrs', 'Fakaruddin Rao Chandra', '40', 'Female', NULL, '+91 73 72527336', 'charlie13@hotmail.com', '51, Pushpa Villas, Parveen Nagar Gurgaon - 227127', 17, 1, '2020-11-23 18:03:29', '2021-04-10 16:15:15', NULL),
(40, '859520f1-c8c5-446d-a042-aa56940471aa', 'Mr', 'Sharad Chakraborty', '42', 'Male', NULL, '+91 838 5125425', 'taahid.sanghvi@deep.com', '20, Tanuja Nagar, Chennai - 463948', 17, 1, '2020-11-23 18:03:29', '2021-04-10 16:15:15', NULL),
(41, 'f22ec587-9cb5-4d38-8f47-38c1bdd9f157', 'Mr', 'Feroz Kannan', '33', 'Male', NULL, '065 46954887', 'surya.mangal@hotmail.com', '92, Hira Apartments, Vikhroli Jaipur - 404477', 17, 1, '2020-11-23 18:03:29', '2021-04-10 16:15:15', NULL),
(42, '02e99671-17e6-4de0-b00a-99d23100633a', 'Mrs', 'Kiran Kabra', '56', 'Female', NULL, '0329 0224382', 'pradeep84@hotmail.com', '70, KoushtubhGarh, Ludhiana - 395670', 17, 1, '2020-11-23 18:03:30', '2021-04-10 16:15:15', NULL),
(43, '264ce01e-f6c6-46a8-9c26-9d0c110e82d4', 'Mrs', 'Radheshyam Umesh Mander', '54', 'Female', NULL, '+91 79 92480949', 'nilima.bhat@hotmail.com', '78, Chinchwad, Ranchi - 508073', 17, 1, '2020-11-23 18:03:30', '2021-04-10 16:15:15', NULL),
(44, '0b19e921-e061-4635-a780-75acd17e0a6f', 'Mrs', 'Ghalib Balasubramanian', '52', 'Female', NULL, '+91 467 7491064', 'sathe.ambika@mishra.com', '60, Megha Nagar, Bengaluru - 450363', 17, 1, '2020-11-23 18:03:30', '2021-04-10 16:15:15', NULL),
(45, '3c8c09bd-58ae-4173-866c-f62419593c42', 'Mrs', 'Mini Sagar', '29', 'Female', NULL, '+91 45 64976993', 'kasturba56@kibe.in', '57, Rehman Society, Deccan Gymkhana Gandhinagar - 278881', 17, 1, '2020-11-23 18:03:30', '2021-04-10 16:15:15', '2021-02-02 10:31:17'),
(46, 'c9fc2331-258f-4dd5-bd7f-3e2711fc4a39', 'Mrs', 'Fakaruddin Kara', '32', 'Female', NULL, '+91 57 08691196', 'binita.badami@rediffmail.com', '78, Govind Nagar, Mumbai - 421615', 17, 1, '2020-11-23 18:03:30', '2021-04-10 16:15:16', NULL),
(47, '31a6e271-1ed6-4701-9792-f7879ddd1400', 'Mrs', 'Amir Mohan', '40', 'Female', NULL, '+91 863 8514596', 'owais49@rediffmail.com', '33, AlaknandaGarh, Warangal - 136309', 17, 1, '2020-11-23 18:03:30', '2021-04-10 16:15:16', NULL),
(48, 'c39dc001-04e1-4421-a380-5b979b6b0001', 'Mrs', 'Neela Deol', '29', 'Female', NULL, '0363 9028765', 'grover.ratan@gmail.com', '46, RitikaGunj, Surat - 569361', 17, 1, '2020-11-23 18:03:30', '2021-04-10 16:15:16', '2021-02-01 17:39:35'),
(49, '4e0da8d2-2a3d-4205-96c5-a3bab79bbed0', 'Mrs', 'Kalyani Fardeen Natt', '58', 'Female', NULL, '+91 99 20497764', 'pinky.dutt@mand.com', '18, Pravin Apartments, MohitGunj Guwahati - 515944', 17, 1, '2020-11-23 18:03:30', '2021-04-10 16:15:16', NULL),
(50, '16b012ce-a76d-44cb-8e3d-65d945ccea94', 'Mrs', 'Namita Ram', '54', 'Female', NULL, '+91 304 6616590', 'chand.sunita@goyal.in', '62, Payal Society,\nKharadi Kanpur - 119215', 17, 1, '2020-11-23 18:03:30', '2021-04-10 16:15:16', NULL),
(51, '84af5b2e-cec7-475d-a05b-0939033f262d', 'Mr', 'Demo', '10', 'Male', NULL, '4533', '', '', 17, 1, '2021-01-15 17:35:11', '2021-04-10 16:15:16', '2021-02-01 17:37:45'),
(52, 'eb180ab8-38f2-43b6-bbf1-54b806118226', 'Mr', 'Demo122', '23', 'Male', NULL, '434233', '', '', 7, 1, '2021-01-18 13:07:31', '2021-04-10 16:15:16', '2021-02-01 17:36:45'),
(53, '4c7971ac-cc2e-4fd4-b25d-65fd61899f9d', 'Mr', 'Demo', '23', 'Male', NULL, '3454354', '', '', 7, 1, '2021-02-13 15:07:39', '2021-04-10 16:15:16', NULL),
(54, '8d4af51e-2e09-45ce-b9ae-f7b43e9e200c', 'Mr', 'Demo', '12', 'Male', NULL, '3453453', '', '', 7, 1, '2021-02-24 12:12:33', '2021-04-10 16:15:16', NULL),
(55, 'bfd63526-f93b-443d-b5d3-35f9243653e5', 'Mr', 'Crescent', '16', 'Male', NULL, '9944992460', '', '', 7, 1, '2021-02-26 16:39:47', '2021-04-10 16:15:16', NULL),
(56, 'bc4cea92-3b58-4cb1-994b-2a57c067f051', 'Mr', 'Demo', '234', 'Male', NULL, '34534534534', '', '', 1, 1, '2021-02-27 18:23:37', '2021-04-10 16:15:17', NULL),
(57, '6639f73e-e785-46f1-b4d4-17333517dfff', 'Mr', 'Demo', '43', 'Male', NULL, '4564456456', NULL, NULL, 1, 1, '2021-02-27 18:25:59', '2021-04-10 16:15:17', NULL),
(58, '789d872a-d396-4208-b8d1-0ac194ac681a', 'Mr', 'Demo1234', '23', 'Male', NULL, '2343252323', '', '', 1, 1, '2021-02-27 18:26:53', '2021-04-10 16:15:17', NULL),
(59, '34684250-c93f-40ee-af8f-19af17c31e46', 'Mr', 'Demo', '34', 'Male', NULL, '3454353434', '', '', 25, 1, '2021-02-27 18:31:28', '2021-04-10 16:15:17', NULL),
(60, 'b39171de-5db5-44e4-b2e0-6f0c3977b73c', 'Mr', 'dfg', '34', 'Male', NULL, '34564564544', NULL, NULL, 25, 1, '2021-02-27 18:32:53', '2021-04-10 16:15:17', NULL),
(61, '59ef43c7-fe70-4ba3-b2f2-4ba7722da991', 'Mr', 'Demo', '34', 'Male', NULL, '3453434543', '', '', 1, 1, '2021-03-01 13:43:09', '2021-04-10 16:15:17', NULL),
(62, '2f2b037c-a47e-4a22-9266-4be8879e7428', 'Mr', 'Demo1223', '34', 'Male', '1997-04-02', '3443635349', NULL, NULL, 17, 1, '2021-03-01 13:43:30', '2021-04-10 16:15:17', NULL),
(64, '2643be3d-c6d3-4d60-8fd4-a7e7249a53ba', 'Mr', 'Syed Ameen', '35', 'Male', '2021-04-01', '9894600472', 'abbasi@gmail.com', 'Chennai', 7, 1, '2021-04-01 13:17:20', '2021-04-10 16:15:17', NULL),
(65, 'b2b74b98-835f-49d7-b895-14de826b5f89', 'Mr', 'Demo', '32', 'Male', NULL, '3453554543', '', '', 7, 1, '2021-04-07 16:31:35', '2021-04-10 16:15:17', NULL),
(66, '84068175-31d6-445b-b1fd-11fd8b354b8e', 'Mr', 'Demo Patient', '12', 'Male', NULL, '2344545454', '', '', 7, 1, '2021-04-09 17:26:29', '2021-04-10 16:15:18', NULL),
(67, '8be5162d-ade5-4095-b940-e46ac8056499', 'Mr', 'Demo 123', '345', 'Male', NULL, '4543534535', '', '', 17, 1, '2021-04-09 17:27:16', '2021-04-10 16:15:18', NULL),
(68, 'ba786f75-5ed9-46ed-b9fc-0d759c506d7a', 'Mr', 'Demo Test', '345', 'Male', NULL, '45435434543', '', '', 7, 1, '2021-04-09 17:28:11', '2021-04-10 16:15:18', NULL),
(69, 'fe02eb13-ca1a-493a-8251-6c58e751ccd7', 'Mr', 'Demo', '324', 'Male', NULL, '3243243423', '', '', 7, 1, '2021-04-09 17:29:01', '2021-04-10 16:15:18', NULL),
(70, 'e30fe950-ed47-4545-ba43-eb6530a0c9c1', 'Mr', 'Demo', '34', 'Male', NULL, '4534565565', '', '', 13, 1, '2021-04-09 17:30:43', '2021-04-10 16:15:18', NULL),
(71, '5da122a2-8406-4ee3-b0d9-1012939648d5', 'Mr', 'de', '34', 'Male', NULL, '34543543455', '', '', 25, 1, '2021-04-10 13:59:25', '2021-04-10 16:15:18', NULL),
(72, '6c039dfc-c5bd-497f-827e-f02285ddd913', 'Mr', 'f3', '43', 'Male', NULL, '3454353233', '', '', 25, 1, '2021-04-10 14:04:56', '2021-04-10 16:15:18', NULL),
(73, '269632e7-8db7-4e1c-8f15-8adf53c50efc', 'Mr', 'fdsf', '34', 'Male', NULL, '4543634343', '', '', 17, 1, '2021-04-10 15:19:21', '2021-04-10 16:15:18', NULL),
(74, 'acad6eb7-3c0b-428d-b8b5-1a600df15662', 'Mr', 'dsdf', '34', 'Male', NULL, '4563465454', '', '', 7, 1, '2021-04-10 15:20:17', '2021-04-10 16:15:18', NULL),
(75, '621dc4aa-32db-4a40-a545-ceaa582c6566', 'Mr', 'Demo', '23', 'Male', NULL, '3432545634', '', '', 13, 1, '2021-04-10 15:33:48', '2021-04-10 16:15:18', NULL),
(76, 'b381d16b-8881-4260-ad44-97736bc1f8ab', 'Mr', 'fdds', '43', 'Male', NULL, '4354364634', NULL, NULL, 13, 1, '2021-04-10 15:34:06', '2021-04-10 16:15:19', NULL),
(77, 'e2b94b35-cbd5-4279-90d6-9f3e7b1148c2', 'Mr', 'df', '34', 'Male', NULL, '4534634342', '', '', 1, 1, '2021-04-10 15:34:46', '2021-04-10 16:15:19', NULL),
(78, '99cd9333-f695-453b-aae3-fd1e3447aabe', 'Mr', 'Demo 123', '32', 'Male', NULL, '3454364455', '', '', 17, 1, '2021-04-10 16:02:36', '2021-04-10 16:15:19', NULL),
(79, '11a1b283-16e5-436f-b89b-ba9598936d05', 'Mr', 'demo 123', '32', 'Male', '2012-02-02', '4436574574', '', '', 1, 1, '2021-04-10 16:03:26', '2021-04-10 16:15:19', NULL),
(80, '85f75b56-47a5-4fa6-ad9d-e7fe199dac4e', 'Mr', 'fdgfdgfg', '45', 'Male', NULL, '5674576543', '', '', 1, 1, '2021-04-10 16:10:25', '2021-04-10 16:15:19', NULL),
(81, 'ed7f9d23-0360-4aa9-b71e-5c764786dbd1', 'Mr', 'fdsffgfdgdf', '34', 'Male', '1998-07-18', '4565434434', NULL, NULL, 17, 1, '2021-04-10 16:10:48', '2021-04-10 16:15:19', NULL),
(82, 'd8a5335b-719e-4c37-b29b-d7489bb0a3c5', 'Mr', 'Demo Test1', '23', 'Male', NULL, '4564343345', '', '', 1, 1, '2021-04-10 16:20:01', '2021-04-10 16:37:06', NULL),
(83, 'd0bbd407-0e61-4b34-a3cc-3ce5c440e926', 'Mr', 'Demo Patient', '23', 'Male', NULL, '4534534343', '', '', 25, 1, '2021-04-12 15:54:13', '2021-04-12 15:54:13', NULL),
(84, '51cee854-a99a-4b36-8aa3-cdf4763f22f6', 'Mr', 'demo', '23', 'Male', NULL, '34564644545', '', '', 25, 1, '2021-04-12 16:01:22', '2021-04-12 16:01:22', NULL),
(85, '5c182717-def1-4d35-b55a-3f1564a9a0ea', 'Mr', 'ssss', '444', 'Male', '2021-09-01', '5575757856', '', '123 Main Street, New York, NY 10030', 25, 1, '2021-09-24 13:23:24', '2021-09-25 12:32:00', NULL),
(86, 'bba4bb24-f6b0-4874-8220-d31f76a573db', 'Mr', 'qqq', '11', 'Male', '2021-09-24', '254577878878', '', 'htrh', 7, 1, '2021-09-24 14:21:26', '2021-09-24 14:21:26', NULL),
(87, '49731676-0546-4780-b0fd-6f1d33cbbaae', 'Mr', 'ss', '11', 'Male', NULL, '5555555555', '', '', 25, 1, '2021-09-24 15:59:25', '2021-09-24 15:59:25', NULL),
(88, 'f4a840d4-cf1d-4fdf-89fc-c2456fb0c83f', 'Mr', 'aaa', '23', 'Male', NULL, '55555555555', '', 'hhhhhhh', 13, 1, '2022-11-26 17:21:05', '2022-11-26 17:21:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`name`) VALUES
('RADIATION ONCOLOGIST'),
('ANESTHESIOLOGY & PAIN CLINIC'),
('DENTAL SURGERY'),
('Palliative Care'),
('Heart');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int UNSIGNED NOT NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sample` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `units` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_range` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` decimal(18,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `category`, `name`, `method`, `sample`, `units`, `reference_range`, `comments`, `parameters`, `fees`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BIOCHEMISTRY', '24 Hrs Creatinine Clearence', 'Spectrophotometry', '15 ml of 24 hrs urine \nwith glacial acitic acid \nas preservative ', '', ' ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(2, 'BIOCHEMISTRY', '24 Hrs POTASSIUM', 'ISE', '15 ml of 24 hrs urine \nwith glacial acitic acid \nas preservative ', '', ' ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(3, 'BIOCHEMISTRY', '24 Hrs SODIUM', 'ISE', '15 ml of 24 hrs urine \nwith glacial acitic acid \nas preservative ', '', ' ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(4, 'BIOCHEMISTRY', '24 Hrs URINE - UREA NITROGEN', 'Spectrophotometry', '15 ml of 24 hrs urine \nwith glacial acitic acid \nas preservative ', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(5, 'BIOCHEMISTRY', '24 Hrs URINE CATECHOLAMINE', 'Spectrophotometry', '15 ml of 24 hrs urine \nwith glacial acitic acid \nas preservative ', '', ' ', '', '', '3000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(6, 'BIOCHEMISTRY', '24 HRS URINE CITRATE', 'Spectrophotometry', '15 ml of 24 hrs urine \nwith glacial acitic acid \nas preservative ', '', ' ', '', '', '3000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(7, 'BIOCHEMISTRY', '24 Hrs URINE COPPER', 'Spectrophotometry', '10 ml of 24 hrs urine \nwith conc.HCL as preservative', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(8, 'IMMUNOLOGY', '24 HRS URINE CORTISOL', 'CLIA', '10 ml of spot urine', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(9, 'BIOCHEMISTRY', '24 Hrs URINE CREATININE', 'Spectrophotometry', '15 ml of 24 hrs urine \nwith glacial acitic acid \nas preservative ', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(10, 'BIOCHEMISTRY', '24 Hrs URINE MAGNESIUM', 'Spectrophotometry', '10 ml of 24 hrs urine \n', '', ' ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(11, 'BIOCHEMISTRY', '24 HRS URINE MICROALBUMINUIRA', 'Spectrophotometry', '10 ml of 24 hrs urine \n', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(12, 'BIOCHEMISTRY', '24 Hrs Urine Osmolality', 'Spectrophotometry', '10 ml of 24 hrs urine \n', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(13, 'BIOCHEMISTRY', '24 Hrs URINE OXALATE', 'Spectrophotometry', '10 ml of 24 hrs urine \n', '', ' ', '', '', '2000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(14, 'CLINICAL PATHOLOGY', '24 hrs Urine Phorphobilinogen', 'Spectrophotometry', '10 ml of 24 hrs urine \n', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(15, 'BIOCHEMISTRY', '24 Hrs URINE PHOSPHORUS', 'Spectrophotometry', '10 ml of 24 hrs urine \n', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(16, 'BIOCHEMISTRY', '24 HRS URINE PROTEIN', 'Spectrophotometry', '10 ml of 24 hrs urine \n', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(17, 'BIOCHEMISTRY', '24 hrs URINE PROTEIN ELECTROPHORESIS', 'Electrophoresis', '15 ml of 24 hrs urine \nwith glacial acitic acid \nas preservative ', '', ' ', '', '', '1750.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(18, 'BIOCHEMISTRY', '24 Hrs URINE URIC ACID', 'Spectrophotometry', '10 ml of 24 hrs urine \n', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(19, 'BIOCHEMISTRY', '24 HRS URINE VMA', 'Colum chromatogrphy', '15 ml of 24 hrs urine \nwith 10 ml of glacial acitic acid \nas preservative ', '', ' ', '', '', '3000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(20, 'BIOCHEMISTRY', '24Hrs URINE CALCIUM', 'Spectrophotometry', '10 ml of 24 hrs urine \n', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(21, 'BIOCHEMISTRY', '5 - HIAA', 'Column  chromatogrphy', '15 ml of 24 hrs urine \nwith glacial acitic acid \nas preservative ', '', ' ', '', '', '3200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(22, 'BIOCHEMISTRY', 'A/G Ratio', 'Spectrophotometry', 'Serum ( 2 ml)', 'g/L', '1.2 - 1.5 ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(23, 'BIOCHEMISTRY', 'ABG - BLOOD GAS - ', 'Automated', '2 ml of whole blood ', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(24, 'HEMATOLOGY', 'Absolute CD 3 COUNT', 'Flow Cytometry', '2 ml blood in EDTA', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(25, 'HEMATOLOGY', 'Absolute CD4 Count', 'Flow Cytometry', '2 ml blood in EDTA', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(26, 'HEMATOLOGY', 'ABSOLUTE EOSINOPHIL COUNT', 'Automated - Cell counter', '2 ml blood in EDTA', '', ' ', '', '', '120.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(27, 'HEMATOLOGY', 'ABSOLUTE GRANULOCYTE COUNT', 'Automated - Cell counter', '2 ml blood in EDTA', '', ' ', '', '', '120.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(28, 'HEMATOLOGY', 'Absolute Lymphocyte Count', 'Automated - Cell counter', '2 ml blood in EDTA', '', ' ', '', '', '120.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(29, 'HEMATOLOGY', 'ABSOLUTE NEUTROPHIL COUNT', 'Automated - Cell counter', '2 ml blood in EDTA', '', ' ', '', '', '120.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(30, 'BIOCHEMISTRY', 'ACETAMINOPHANE(PARACETAMOL)', 'Spectrophotometry', 'Serum ( 2 ml)', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(31, 'BIOCHEMISTRY', 'ACETONE', 'Biochemical', '2 ml of serum', '', ' ', '', '', '650.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(32, 'IMMUNOLOGY', 'Acetyl Choline Receptor Antibodies (ACHR Abs)', 'ELISA', 'Serum ( 2 ml)', '', ' ', '', '', '4500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(33, 'BIOCHEMISTRY', 'ACID PHOSPHATASE', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(34, 'BIOCHEMISTRY', 'ACID PHOSPHATASE ( PROSTATIC)', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(35, 'IMMUNOLOGY', 'ACTH', 'CLIA', '2 ml of serum', '', ' ', '', '', '3500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(36, 'BIOCHEMISTRY', 'ADENOSINE DEAMINASE (ADA)', 'Adenosine Hydrolysis', '2 ml of body fluid', '', ' ', '', '', '550.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(37, 'BIOCHEMISTRY', 'ADENOSINE DEAMINASE (ADA) Fluid', 'Adenosine Hydrolysis', '2 ml of serum', '', ' ', '', '', '550.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(38, 'IMMUNOLOGY', 'ADH-ANTIDIURETIC HORMONE', 'ELISA', '2 ml of serum', '', ' ', '', '', '4500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(39, 'MICROBIOLOGY', 'AFB', 'Manual', 'sputum sample', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(40, 'MICROBIOLOGY', 'AFB (FLUID )', 'Manual', '2 ml of body fluid', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(41, 'MICROBIOLOGY', 'AFB culture for tissue', 'Culture & Sensitivity', '', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(42, 'MICROBIOLOGY', 'AFB STAIN', 'Manual', 'sputum sample', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(43, 'IMMUNOLOGY', 'AFP', 'CLIA', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(44, 'BIOCHEMISTRY', 'ALBUMIN', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '125.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(45, 'BIOCHEMISTRY', 'ALBUMIN - FLUID', 'Spectrophotometry', '2 ml of body fluid', '', ' ', '', '', '125.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(46, 'BIOCHEMISTRY', 'ALCOHOL TEST', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '1600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(47, 'BIOCHEMISTRY', 'ALCOHOL TEST - URINE', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '1650.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(48, 'IMMUNOLOGY', 'ALDOSTERONE', 'CLIA', '2 ml of serum', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(49, 'IMMUNOLOGY', 'ALLERGY PANEL : SOUTH INDIA REGION', 'Immuno Blot', '2 ml of serum', '', ' ', '', '', '11000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(50, 'BIOCHEMISTRY', 'ALUMINIUM - SERUM', 'Atomic Absorption', '2 ml of serum', '', ' ', '', '', '2200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(51, 'BIOCHEMISTRY', 'AMINO ACID URINE - PANEL -I', 'Thin Layer Chromatography', '2 ml of serum', '', ' ', '', '', '4200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(52, 'BIOCHEMISTRY', 'AMINO ACID URINE - PANEL -II', 'Thin Layer Chromatography', '2 ml of serum', '', ' ', '', '', '5500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(53, 'BIOCHEMISTRY', 'AMMONIA', 'Spectrophotometry', '2 ml of EDTA', '', ' ', '', '', '650.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(54, 'BIOCHEMISTRY', 'AMPHETAMINES', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(55, 'BIOCHEMISTRY', 'AMPHETAMINES.- URINE', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(56, 'BIOCHEMISTRY', 'AMYLASE', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(57, 'BIOCHEMISTRY', 'AMYLASE - ACETIC FLUID - ', 'Spectrophotometry', '2 ml of body fluid', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(58, 'BIOCHEMISTRY', 'AMYLASE - PLEURAL FLUID', 'Spectrophotometry', '2 ml of body fluid', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(59, 'BIOCHEMISTRY', 'AMYLASE (FLUID)', 'Spectrophotometry', '2 ml of body fluid', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(60, 'SEROLOGY', 'ANA', 'ELISA', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(61, 'SEROLOGY', 'ANA - IFA', 'IFA', '2 ml of serum', '', ' ', '', '', '950.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(62, 'MICROBIOLOGY', 'ANAEROBIC BLOOD CULTURE -', 'Culture & Sensitivity', '2 ml of Blood', '', ' ', '', '', '850.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(63, 'MICROBIOLOGY', 'ANAEROBIC C/S', 'Culture & Sensitivity', '2 ml of Blood', '', ' ', '', '', '850.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(64, 'IMMUNOLOGY', 'ANCA (MPO & PR3)', 'Immuno Blot', '2 ml of serum', '', ' ', '', '', '2100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(65, 'IMMUNOLOGY', 'ANDROSTENEDIONE', 'CLIA', '2 ml of serum', '', ' ', '', '', '2000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(66, 'BIOCHEMISTRY', 'ANGIO TENSIN CONVERTING ENZYME (ACE)', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(67, 'IMMUNOLOGY', 'ANTI - TPO', 'CLIA', '2 ml of serum', '', ' ', '', '', '1100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(68, 'IMMUNOLOGY', 'ANTI CCP (Cyclic Citrullinated Peptides)', 'ELISA', '2 ml of serum', '', ' ', '', '', '1100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(69, 'IMMUNOLOGY', 'ANTI CENTROMERE ANTIBODIES', 'ELISA', '2 ml of serum', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(70, 'SEROLOGY', 'ANTI DELTA IgM', 'ELISA', '2 ml of serum', '', ' ', '', '', '3000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(71, 'IMMUNOLOGY', 'ANTI ds DNA', 'Elisa', '2 ml of serum', '', ' ', '', '', '1200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(72, 'IMMUNOLOGY', 'ANTI GBM ANTIBODY IgG', 'ELISA', '2 ml of serum', '', ' ', '', '', '3500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(73, 'IMMUNOLOGY', 'ANTI GBM ANTIBODY IgM', 'ELISA', 'Serum ( 2 ml)', '', ' ', '', '', '3500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(74, 'IMMUNOLOGY', 'ANTI GLIADIN ANTIBODY IgA', 'ELISA', '2 ml of serum', '', ' ', '', '', '2000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(75, 'IMMUNOLOGY', 'ANTI GLIADIN ANTIBODY IgG', 'ELISA', '2 ml of serum', '', ' ', '', '', '2000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(76, 'SEROLOGY', 'ANTI HAV IgG', 'Elisa', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(77, 'SEROLOGY', 'ANTI HAV IgM', 'Elisa', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(78, 'SEROLOGY', 'ANTI HBc IgG', 'Elisa', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(79, 'SEROLOGY', 'ANTI HBc IgM', 'Elisa', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(80, 'SEROLOGY', 'ANTI HBc TOTAL', 'Elisa', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(81, 'SEROLOGY', 'ANTI HBe', 'Elisa', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(82, 'SEROLOGY', 'ANTI HBs', 'Elisa', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(83, 'SEROLOGY', 'ANTI HCV - ELISA', 'Elisa', '2 ml of serum', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(84, 'SEROLOGY', 'ANTI HCV - IGG', 'ELISA', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(85, 'SEROLOGY', 'ANTI HCV - IGM', 'Elisa', '2 ml of serum', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(86, 'SEROLOGY', 'ANTI HEV IgG', 'Elisa', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(87, 'SEROLOGY', 'ANTI HEV IgM', 'Elisa', '2 ml of serum', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(88, 'IMMUNOLOGY', 'ANTI INSULIN ANTIBODY', 'Elisa', '2 ml of serum', '', ' ', '', '', '2100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(89, 'IMMUNOLOGY', 'ANTI LIVER KIDNEY MICROSOMES [LKM]', 'IFA', 'Serum ( 2 ml)', '', ' ', '', '', '2000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(90, 'IMMUNOLOGY', 'ANTI MITOCHONDRIAL ANTIBODY', 'ELISA', '2 ml of serum', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(91, 'SEROLOGY', 'Anti Mullerian Hormone(AMH)', 'Elisa', '2 ml of serum', '', ' ', '', '', '1650.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(92, 'SEROLOGY', 'ANTI PHOSPHOLIPID Ab ( IgA)', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(93, 'SEROLOGY', 'ANTI PHOSPHOLIPID Ab (IgG)', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(94, 'SEROLOGY', 'ANTI PHOSPHOLIPID Ab (IgM)', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(95, 'IMMUNOLOGY', 'ANTI SMOOTH MUSCLE ANTI BODY', 'ELISA', '2 ml of serum', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(96, 'SEROLOGY', 'ANTI SPERM Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '750.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(97, 'HEMATOLOGY', 'ANTI THROMBIN III', 'Clotting', '2 ml of citrated plasma', '', ' ', '', '', '3250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(98, 'IMMUNOLOGY', 'ANTI THYROGLOBULIN.', 'CLIA', '2 ml of serum', '', ' ', '', '', '1200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(99, 'IMMUNOLOGY', 'ANTI THYROID ABS', 'CLIA', '2 ml of serum', '', ' ', '', '', '1750.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(100, 'IMMUNOLOGY', 'ANTI TISSUE TRANSGLUTAMINASE IgA', 'Elisa', '2 ml of serum', '', ' ', '', '', '1200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(101, 'IMMUNOLOGY', 'ANTI TISSUE TRANSGLUTAMINASE IgG', 'Elisa', '2 ml of serum', '', ' ', '', '', '1200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(102, 'IMMUNOLOGY', 'ANTI TISSUE TRANSGLUTAMINASE IgM', 'Elisa', '2 ml of serum', '', ' ', '', '', '1200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(103, 'HEMATOLOGY', 'ANTITHROMBIN', 'Clotting', '2 ml of citrated plasma', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(104, 'BIOCHEMISTRY', 'APO LIPOPROTEIN E', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '3500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(105, 'BIOCHEMISTRY', 'APOLIPOPROTEIN A1', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(106, 'BIOCHEMISTRY', 'APOLIPOPROTEIN B', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(107, 'BIOCHEMISTRY', 'APO-LIPOPROTEIN B/A1 RATIO', 'Calculation', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(108, 'BIOCHEMISTRY', 'APOLIPOPROTEINSA1/B', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(109, 'MICROBIOLOGY', 'ASCITIC FLUID - CULTURE', 'Culture & Sensitivity', '2 ml of body fluid', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(110, 'MICROBIOLOGY', 'ASCITIC FLUID FOR GRAMSTAIN', 'Manual', '2 ml of body fluid', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(111, 'BIOCHEMISTRY', 'ASICITIC FLUID ANALYSIS', 'Spectrophotometry', '2 ml of body fluid', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(112, 'SEROLOGY', 'ASO - LATEX', 'Agglutination', '2 ml of serum', '', ' ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(113, 'SEROLOGY', 'ASO (Quantitative)-', 'Turbidometry', '2 ml of serum', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(114, 'IMMUNOLOGY', 'Aspergilles Antibody - IgG', 'Elisa', '2 ml of serum', '', ' ', '', '', '1800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(115, 'IMMUNOLOGY', 'ASPERGILLOSIS ANTIBODY IgM - SERUM', 'Elisa', '2 ml of serum', '', ' ', '', '', '1800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(116, 'HEMATOLOGY', 'Average CD3 count', 'Flow Cytometry', '2 ml blood in EDTA', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(117, 'BIOCHEMISTRY', 'BARBITURATES -', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(118, 'HEMATOLOGY', 'BASOPHILS', 'Automated - Cell counter', '2 ml blood in EDTA', '%', '0 - 1 ', '', '', '120.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(119, 'BIOCHEMISTRY', 'BENZODIAZEPINES', 'chromatography', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(120, 'IMMUNOLOGY', 'BETA 2 GLYCOPROTEIN IgG', 'Elisa', '2 ml of serum', '', ' ', '', '', '1200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(121, 'IMMUNOLOGY', 'BETA 2 GLYCOPROTEIN IGM', 'ELISA', 'Serum ( 2 ml)', '', ' ', '', '', '1200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(122, 'IMMUNOLOGY', 'BETA HCG', 'CLIA', '2 ml of serum', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(123, 'IMMUNOLOGY', 'BETA HCG (FREE)', 'CLIA', '2 ml of serum', '', ' ', '', '', '1100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(124, 'BIOCHEMISTRY', 'BICARBONATE', 'ISE', '2 ml of serum', 'mmol/L', '96.0 â€“ 106.0 ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(125, 'BIOCHEMISTRY', 'BILE ACIDS', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '1200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(126, 'CLINICAL PATHOLOGY', 'BILE PIGMENT', 'Manual', '10 ml of spot urine', '', ' ', '', '', '30.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(127, 'CLINICAL PATHOLOGY', 'BILE SALTS', 'Manual', '10 ml of spot urine', '', ' ', '', '', '30.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(128, 'BIOCHEMISTRY', 'BILIRUBIN ( T&D&ID )', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(129, 'BIOCHEMISTRY', 'BILIRUBIN ( TOTAL)', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(130, 'BIOCHEMISTRY', 'BILIRUBIN (DIRECT)', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(131, 'BIOCHEMISTRY', 'BILIRUBIN (INDIRECT)', 'Calculation', '2 ml of serum', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(132, 'HISTOPATHOLOGY & CYTOLOGY', 'BIOPSY', 'Histo', 'Tissue', '', ' ', '', '', '550.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(133, 'HISTOPATHOLOGY & CYTOLOGY', 'BIOPSY - LARGE', 'Histo', 'Tissue', '', ' ', '', '', '1350.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(134, 'HISTOPATHOLOGY & CYTOLOGY', 'BIOPSY - MEDIUM', 'Histo', 'Tissue', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(135, 'HISTOPATHOLOGY & CYTOLOGY', 'BIOPSY - SMALL', 'Histo', 'Tissue', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(136, 'HEMATOLOGY', 'BLEEDING TIME', 'Manual', 'WHOLE BLOOD', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(137, 'MICROBIOLOGY', 'BLOOD CULTURE - Automated - Aerobic', 'Culture & Sensitivity', 'WHOLE BLOOD', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(138, 'BIOCHEMISTRY', 'BLOOD GLUCOSE - (Before Dinner)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(139, 'BIOCHEMISTRY', 'BLOOD GLUCOSE - (Before Lunch)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(140, 'BIOCHEMISTRY', 'BLOOD GLUCOSE - (POST DINNER - 2 Hrs)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(141, 'BIOCHEMISTRY', 'BLOOD GLUCOSE - RBS ( AFTER LUNCH)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(142, 'BIOCHEMISTRY', 'BLOOD GLUCOSE ( 1 1/2 hr )', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(143, 'BIOCHEMISTRY', 'BLOOD GLUCOSE ( 1 Hr )', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(144, 'BIOCHEMISTRY', 'BLOOD GLUCOSE ( 1/2 hr )', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(145, 'BIOCHEMISTRY', 'BLOOD GLUCOSE ( 2 1/2 hrs )', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(146, 'BIOCHEMISTRY', 'BLOOD GLUCOSE ( 2 Hrs )', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(147, 'BIOCHEMISTRY', 'BLOOD GLUCOSE ( 3 hrs )', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(148, 'BIOCHEMISTRY', 'BLOOD GLUCOSE ( 4 hrs )', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(149, 'BIOCHEMISTRY', 'Blood Glucose ( Post Breakfast - 2 Hrs)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(150, 'BIOCHEMISTRY', 'BLOOD GLUCOSE ( Post Dinner 1 hr)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(151, 'BIOCHEMISTRY', 'BLOOD GLUCOSE ( Post Lunch - 1 Hrs)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(152, 'BIOCHEMISTRY', 'BLOOD GLUCOSE ( RBS )', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(153, 'BIOCHEMISTRY', 'BLOOD GLUCOSE (3 Hrs)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(154, 'BIOCHEMISTRY', 'BLOOD GLUCOSE (4 Hrs)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(155, 'BIOCHEMISTRY', 'Blood Glucose (Post Breakfast - 1 Hrs)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(156, 'BIOCHEMISTRY', 'BLOOD GLUCOSE (Post Lunch 2 Hrs)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(157, 'BIOCHEMISTRY', 'BLOOD GLUCOSE CHALLANGE TEST FOR 50GM OF GLUCOSE (GCT)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(158, 'BIOCHEMISTRY', 'BLOOD SUGAR - RANDOM-', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(159, 'BIOCHEMISTRY', 'BLOOD SUGAR PP - 1 HR AFTER 75 GMS OF GLUCOSE', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '90.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(160, 'BIOCHEMISTRY', 'BLOOD SUGAR PP - 11/2 HR AFTER 75 GMS OF GLUCOSE', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '90.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(161, 'BIOCHEMISTRY', 'BLOOD SUGAR PP ( 2 Hrs AFTER 75 gms OF GLUCOSE)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(162, 'BIOCHEMISTRY', 'BLOOD UREA NITROGEN (BUN)', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(163, 'BIOCHEMISTRY', 'BONE MINERAL PROFILE', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '3500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(164, 'BIOCHEMISTRY', 'BUN/CREATININE RATIO', 'Calculation', '2 ml of serum', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(165, 'IMMUNOLOGY', 'C - PEPTIDE ( F )', 'CLIA', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(166, 'IMMUNOLOGY', 'C - PEPTIDE (URINE)', 'CLIA', '5 ml of spot urine', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(167, 'SEROLOGY', 'C- ANCA', 'Elisa', '2 ml of serum', '', ' ', '', '', '850.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(168, 'IMMUNOLOGY', 'C PEPTIDE ( PP )', 'CLIA', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(169, 'IMMUNOLOGY', 'CA - 125', 'Elisa', '2 ml of serum', '', ' ', '', '', '750.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(170, 'IMMUNOLOGY', 'CA - 15 -3', 'Elisa', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(171, 'IMMUNOLOGY', 'CA - 19 - 9', 'Elisa', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(172, 'IMMUNOLOGY', 'CA125 (FLUID)', 'CLIA', '2 ml of body fluid', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(173, 'BIOCHEMISTRY', 'CALCITONIN', 'CLIA', '2 ml of serum', '', ' ', '', '', '2100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(174, 'BIOCHEMISTRY', 'CALCIUM', 'CLIA', '2 ml of serum', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(175, 'BIOCHEMISTRY', 'CANNABINOIDS', 'chromatography', '2 ml of serum', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(176, 'BIOCHEMISTRY', 'CARBAMAZEPINE', 'CLIA', '2 ml of serum', '', ' ', '', '', '950.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(177, 'IMMUNOLOGY', 'CARDIOLIPIN ANTIBODIES, SERUM', 'CLIA', '2 ml of serum', '', ' ', '', '', '1350.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(178, 'IMMUNOLOGY', 'CARDIOLIPIN IgA', 'Elisa', '2 ml of serum', '', ' ', '', '', '650.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(179, 'IMMUNOLOGY', 'CARDIOLIPIN IgG', 'Elisa', '2 ml of serum', '', ' ', '', '', '650.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(180, 'IMMUNOLOGY', 'CARDIOLIPIN IgM', 'Elisa', '2 ml of serum', '', ' ', '', '', '650.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(181, 'BIOCHEMISTRY', 'CATECHOLAMINE', 'CLIA', '2 ml of serum', '', ' ', '', '', '2400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(182, 'BIOCHEMISTRY', 'CBG', 'Glucometer', 'Whole Blood', '', ' ', '', '', '60.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(183, 'BIOCHEMISTRY', 'CBG - BLOOD SUGAR - PP.', 'Glucometer', 'Whole Blood', '', ' ', '', '', '60.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(184, 'BIOCHEMISTRY', 'CBG - SUGAR (F)', 'Glucometer', 'Whole Blood', '', ' ', '', '', '60.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(185, 'BIOCHEMISTRY', 'CBG - SUGAR (POST DINNER)', 'Glucometer', 'Whole Blood', '', ' ', '', '', '60.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(186, 'BIOCHEMISTRY', 'CBG - SUGAR (POST LUNCH)', 'Glucometer', 'Whole Blood', '', ' ', '', '', '60.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(187, 'BIOCHEMISTRY', 'CBG - SUGAR (PP)', 'Glucometer', 'Whole Blood', '', ' ', '', '', '60.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(188, 'BIOCHEMISTRY', 'CBG - SUGAR (PRE DINNER)', 'Glucometer', 'Whole Blood', '', ' ', '', '', '60.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(189, 'BIOCHEMISTRY', 'CBG - SUGAR (PRE LUNCH)', 'Glucometer', 'Whole Blood', '', ' ', '', '', '60.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(190, 'BIOCHEMISTRY', 'CBG - SUGAR (R)', 'Glucometer', 'Whole Blood', '', ' ', '', '', '60.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(191, 'HEMATOLOGY', 'CD 4 COUNT.', 'Flow Cytometry', '2 ml blood in EDTA', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(192, 'HEMATOLOGY', 'CD 8 COUNT.', 'Flow Cytometry', '2 ml blood in EDTA', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(193, 'HEMATOLOGY', 'CD4 Absolute Count', 'Flow Cytometry', '2 ml blood in EDTA', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(194, 'HEMATOLOGY', 'CD4 COUNT/CD8 COUNT', 'Flow Cytometry', '2 ml blood in EDTA', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(195, 'IMMUNOLOGY', 'CEA', 'Elisa', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(196, 'BIOCHEMISTRY', 'CERULOPLASMIN', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(197, 'MOLECULAR BIOLOGY', 'CHIKUNGUNYA (REAL TIME PCR)', 'PCR', '3 ml of EDTA plasma', '', ' ', '', '', '5000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(198, 'SEROLOGY', 'CHIKUNGUNYA IGG', 'Immuno Chromatogrtaphy', '2 ml of serum', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(199, 'SEROLOGY', 'CHIKUNGUNYA IgM', 'Immuno Chromatogrtaphy', '2 ml of serum', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(200, 'SEROLOGY', 'CHLAMYDIA IgG Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '1850.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(201, 'SEROLOGY', 'CHLAMYDIA IgM Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '1850.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(202, 'BIOCHEMISTRY', 'CHLORIDE - FLUID', 'Spectrophotometry', ' 3 ml of body fluid', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(203, 'BIOCHEMISTRY', 'CHLORIDES', 'ISE', '2 ml of serum', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(204, 'BIOCHEMISTRY', 'CHOLINESTERASE', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(205, 'IMMUNOLOGY', 'CHROMOGRANIN - A (Plasma)', 'Spectrophotometry', 'Serum ( 2 ml)', '', ' ', '', '', '8500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(206, 'BIOCHEMISTRY', 'CKMB', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(207, 'IMMUNOLOGY', 'CLOSTRIDIUM DIFFICILE TOXIN A & B - STOOL', 'ELFA', 'Serum ( 2 ml)', '', ' ', '', '', '2800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(208, 'HEMATOLOGY', 'CLOT RETRACTION TIME', 'Clotting', '', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(209, 'HEMATOLOGY', 'CLOTTING TIME', 'Manual', '', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(210, 'SEROLOGY', 'CMV IgG Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(211, 'SEROLOGY', 'CMV IgM Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(212, 'BIOCHEMISTRY', 'COCAINE', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(213, 'BIOCHEMISTRY', 'COCAINE - URINE', 'Spectrophotometry', 'Serum ( 2 ml)', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(214, 'BIOCHEMISTRY', 'CODEINE', 'CLIA', '2 ml of serum', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(215, 'BIOCHEMISTRY', 'COMPLEMENT C3', 'Nephlometry', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(216, 'BIOCHEMISTRY', 'COMPLEMENT C4', 'Nephlometry', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(217, 'BIOCHEMISTRY', 'COMPLEMENT C8', 'Nephlometry', '2 ml of serum', '', ' ', '', '', '6500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(218, 'HEMATOLOGY', 'COMPLETE HAEMOGRAM', 'Automated - Cell counter', '2 ml blood in EDTA', '', ' ', '', '', '350.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(219, 'HEMATOLOGY', 'COOMBS TEST DIRECT', 'Micro typing (Manual)', '2 ml of serum', '', ' ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(220, 'HEMATOLOGY', 'COOMBS TEST INDIRECT', 'Micro typing (Manual)', '2 ml of serum', '', ' ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(221, 'BIOCHEMISTRY', 'COPPER', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(222, 'IMMUNOLOGY', 'CORTISOL ( AM )', 'CLIA', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(223, 'IMMUNOLOGY', 'CORTISOL (PM)', 'CLIA', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(224, 'BIOCHEMISTRY', 'COTININE TEST - URINE', 'manual', '10 ml of spot urine', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(225, 'IMMUNOLOGY', 'C-PEPTIDE (R)', 'CLIA', '2 ml of serum', '', ' ', '', '', '750.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(226, 'BIOCHEMISTRY', 'CPK - MB', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(227, 'BIOCHEMISTRY', 'CPK (TOTAL)', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(228, 'SEROLOGY', 'CRP - LATEX', 'Agglutination', '2 ml of serum', '', ' ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(229, 'SEROLOGY', 'CRP (QUANTITATIVE)', 'Turbidometry', '2 ml of serum', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(230, 'BIOCHEMISTRY', 'CRYOGLOBULIN', 'Turbidometry', '2 ml of serum', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(231, 'MICROBIOLOGY', 'CSF AFB STAIN', 'Manual', '2 ml of CSF fluid', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(232, 'HEMATOLOGY', 'CSF CELL COUNT', 'Automated - Cell counter', '2 ml of CSF fluid', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(233, 'BIOCHEMISTRY', 'CSF CHLORIDES', 'ISE', '2 ml of CSF fluid', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(234, 'MICROBIOLOGY', 'CSF CULTURE', 'Culture & Sensitivity', '2 ml of CSF fluid', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(235, 'BIOCHEMISTRY', 'CSF FLUID ANALYSIS', 'Spectrophotometry', '2 ml of CSF fluid', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(236, 'MICROBIOLOGY', 'CSF FOR AFB', 'Manual', '2 ml of CSF fluid', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(237, 'BIOCHEMISTRY', 'CSF PROTEIN', 'Manual', '2 ml of CSF fluid', '', ' ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(238, 'BIOCHEMISTRY', 'CSF SUGAR/PROTEIN', 'Calculation', '2 ml of CSF fluid', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(239, 'MICROBIOLOGY', 'Culture & Sensitivity (FLUID)', 'Culture & Sensitivity', 'fluid', '', ' ', '', '', '450.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(240, 'BIOCHEMISTRY', 'CYSTATIN - C', 'Immuno tubidometry', '2 ml of serum', '', ' ', '', '', '1100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(241, 'HEMATOLOGY', 'D - DIMER', 'Turbidometry', '2 ml of citrated plasma', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(242, 'HEMATOLOGY', 'DC ( Fluid)', 'Automated - Cell counter', '2 ml Body Fluid', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(243, 'SEROLOGY', 'Dengu Ns1 Antigen.', 'Rapid card', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(244, 'SEROLOGY', 'Dengue IgG / IgM (Rapid Test)', 'Immuno Chromatogrtaphy', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(245, 'SEROLOGY', 'DENGUE IgG Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(246, 'SEROLOGY', 'DENGUE IgM Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(247, 'SEROLOGY', 'DENGUE IgM RAPID TEST', 'lateral flow immuno chromatography', '2 ml of serum', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(248, 'SEROLOGY', 'Dengue NS1 Antigen - Elisa', 'Elisa', '2 ml of serum', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(249, 'IMMUNOLOGY', 'DHEA', 'CLIA', '2 ml of serum', '', ' ', '', '', '2000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(250, 'IMMUNOLOGY', 'DHEA SULPHATE', 'Elisa', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(251, 'HEMATOLOGY', 'DIFFERENTIAL COUNT', 'Automated - Cell counter', '2 ml blood in EDTA', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(252, 'BIOCHEMISTRY', 'DIGOXIN', 'CLIA', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(253, 'IMMUNOLOGY', 'DIHYDROTESTOSTERONE (DHT)', 'CLIA', '2 ml of serum', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(254, 'HEMATOLOGY', 'E.S.R ( 1 hr )', 'Automated ', '1.6 ml citrate', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(255, 'MICROBIOLOGY', 'EAR SWAB CULTURE', 'Culture & Sensitivity', '', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(256, 'MICROBIOLOGY', 'EAR SWAB FOR FUNGUS', 'manual', '', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(257, 'MICROBIOLOGY', 'EAR SWAB FOR GRAM STAIN', 'manual', '', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(258, 'IMMUNOLOGY', 'ESTRADIOL', 'CLIA', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(259, 'IMMUNOLOGY', 'ESTRADIOL & TESTOSTERONE RATIO', 'CLIA', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(260, 'IMMUNOLOGY', 'ESTRIOL - FREE', 'CLIA', '2 ml of serum', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(261, 'IMMUNOLOGY', 'ESTRIOL ( E3 )', 'CLIA', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(262, 'MICROBIOLOGY', 'ET SWAB FOR CULTURE AND SENSITIVITY', 'Culture & Sensitivity', '', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(263, 'HEMATOLOGY', 'FACOTR X - Activity', 'Chronometric method', '2 ml of citrated plasma', '', ' ', '', '', '3500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(264, 'HEMATOLOGY', 'FACTOR IX', 'Clotting', '2 ml of citrated plasma', '', ' ', '', '', '2200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(265, 'HEMATOLOGY', 'FACTOR V', 'Clotting', '2 ml of citrated plasma', '', ' ', '', '', '5500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(266, 'HEMATOLOGY', 'Factor V Leiden', 'Clotting', '2 ml of citrated plasma', '', ' ', '', '', '5500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(267, 'HEMATOLOGY', 'FACTOR VII', 'Clotting', '2 ml of citrated plasma', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(268, 'HEMATOLOGY', 'FACTOR VIII', 'Clotting', '2 ml of citrated plasma', '', ' ', '', '', '2750.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(269, 'HISTOPATHOLOGY & CYTOLOGY', 'FALLOPIAN TUBE - BIOPSY', 'Histo', 'tissue', '', ' ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(270, 'HISTOPATHOLOGY & CYTOLOGY', 'FALLOPIAN TUBE (RT) & LT', 'Histo', 'tissue', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(271, 'BIOCHEMISTRY', 'Fasting Sugar & Urine', 'Spectrophotometry', '', '', ' ', '', '', '60.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(272, 'HEMATOLOGY', 'FDP', 'Clotting', '2 ml of citrated plasma', '', ' ', '', '', '1650.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(273, 'HEMATOLOGY', 'FIBRINOGEN', 'Clotting', '2 ml of citrated plasma', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(274, 'HISTOPATHOLOGY & CYTOLOGY', 'FINE NEEDLE ASPIRATION(FNAC)', 'manual / Microscpoic', '', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(275, 'MICROBIOLOGY', 'FLUID AFB CULTURE BY BACTEC METHOD', 'Bactec method', 'sputum sample', '', ' ', '', '', '2000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(276, 'MICROBIOLOGY', 'FLUID FOR AFB CULTURE', 'Bectec method', '0', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(277, 'HISTOPATHOLOGY & CYTOLOGY', 'FLUID FOR CYTOLOGY', 'manual / Microscpoic', '', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(278, 'MICROBIOLOGY', 'FLUID FOR GRAMS STAIN', 'manual / ', '', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(279, 'MICROBIOLOGY', 'FLUID SMEAR FOR AFB', 'Zeil-Nelsion', '0', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(280, 'MICROBIOLOGY', 'FLUID SMEAR FOR GRAM STAIN', 'Microscopic', '0', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(281, 'BIOCHEMISTRY', 'FOLIC ACID', 'CLIA', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(282, 'IMMUNOLOGY', 'FREE PSA', 'CLIA', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(283, 'IMMUNOLOGY', 'FREE PSA / TOTAL PSA RATIO', 'CLIA', '2 ml of serum', '', ' ', '', '', '1100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(284, 'IMMUNOLOGY', 'FREE TESTOSTERONE', 'Elisa', '2 ml of serum', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(285, 'BIOCHEMISTRY', 'FRUCTOSAMINE', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(286, 'IMMUNOLOGY', 'FSH (Follicular Stimulating Hormone)', 'CLIA', '2 ml of serum', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(287, 'IMMUNOLOGY', 'FT3', 'CLIA', '2 ml of serum', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(288, 'IMMUNOLOGY', 'FT4', 'CLIA', '2 ml of serum', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(289, 'SEROLOGY', 'FTA- ABS IGG', 'Elisa', '2 ml of serum', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(290, 'SEROLOGY', 'FTA- ABS IgM', 'Elisa', '2 ml of serum', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(291, 'MICROBIOLOGY', 'FUNGAL CULTURE AND SENSITIVITY', 'Culture & Sensitivity', '', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(292, 'MICROBIOLOGY', 'FUNGAL SMEAR', 'Microscopic', '', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(293, 'MICROBIOLOGY', 'FUNGAL STAIN - FLUID', 'Microscopic', '', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(294, 'MICROBIOLOGY', 'FUNGAL STAIN KOH PREPARATION', 'Microscopic', '', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(295, 'BIOCHEMISTRY', 'G6 PD', 'Spectrophotometry', '2 ml of EDTA', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(296, 'BIOCHEMISTRY', 'GAD-65 ANTIBODIES', 'ELISA', 'Serum ( 2 ml)', '', ' ', '', '', '3500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(297, 'BIOCHEMISTRY', 'GALL STONE ANALYSIS', 'Spectrophotometry', 'Stone in Sterial container', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(298, 'BIOCHEMISTRY', 'GAMMA GLOBULIN', 'Electrophoresis', '2 ml of EDTA', '', ' ', '', '', '1250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(299, 'IMMUNOLOGY', 'GASTRIN', 'EIA', '2 ml of serum(fasting sample required)', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(300, 'MOLECULAR BIOLOGY', 'GENO TYPING FOR MDR GENE EXPERT - MTB', '', '', '', ' ', '', '', '2800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(301, 'BIOCHEMISTRY', 'GLOBULIN', 'Calculation', '2 ml of serum', 'g/L', '2.5 - 5.0 ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(302, 'BIOCHEMISTRY', 'GLOBULIN (CSF)', 'Calculation', '2 ml of CSF fluid', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(303, 'BIOCHEMISTRY', 'GLUCOSE CHALLENGE TEST', 'Spectrophotometry', '2 ml of flu.plasma&urine', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(304, 'MICROBIOLOGY', 'GRAM STAIN', 'Microscopic', '0', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(305, 'CLINICAL PATHOLOGY', 'GRAVINDEX TEST - URINE', 'chromatography', '10 ml of spot urine', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(306, 'IMMUNOLOGY', 'GROWTH HORMONES', 'Elisa', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(307, 'BIOCHEMISTRY', 'GTT - 2 HRS (75 GMS OF GLUCOSE)', 'Spectrophotometry', '2 ml of fluoride plasma', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(308, 'IMMUNOLOGY', 'H.PYLORI - IgA', 'Elisa', '2 ml of serum', '', ' ', '', '', '1100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(309, 'IMMUNOLOGY', 'H.PYLORI - IgM', 'Elisa', '2 ml of serum', '', ' ', '', '', '1100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(310, 'IMMUNOLOGY', 'H.PYLORIC IgG', 'Elisa', '2 ml of serum', '', ' ', '', '', '1100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(311, 'MOLECULAR BIOLOGY', 'H1N1 SCREENING', 'PCR', 'throat / nasal swab', '', ' ', '', '', '4500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(312, 'BIOCHEMISTRY', 'HAEMOGLOBIN ELECTROPHORESIS', 'Electrophoresis', '2 ml of EDTA', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(313, 'BIOCHEMISTRY', 'HAPTOGLOBULIN', 'Elisa', '2 ml of serum', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(314, 'SEROLOGY', 'HBc Ag', 'Elisa', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(315, 'SEROLOGY', 'HBc IgG', 'Elisa', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(316, 'SEROLOGY', 'HBe Ag', 'Elisa', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(317, 'SEROLOGY', 'Hbs Ag SPOT', 'Rapid card', '2 ml of serum', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL);
INSERT INTO `tests` (`id`, `category`, `name`, `method`, `sample`, `units`, `reference_range`, `comments`, `parameters`, `fees`, `created_at`, `updated_at`, `deleted_at`) VALUES
(318, 'SEROLOGY', 'HbsAg - Elisa', 'Elisa', '2 ml of serum', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(319, 'MOLECULAR BIOLOGY', 'HBV - DNA GENOTYPING (QUALITATIVE)', 'PCR', '5 ml EDTA plasma', '', ' ', '', '', '5000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(320, 'MOLECULAR BIOLOGY', 'HBV DNA (REAL TIME PCR - QUANTITATIVE)', 'PCR', '5 ml EDTA plasma', '', ' ', '', '', '6000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(321, 'MOLECULAR BIOLOGY', 'HCV RNA Quaitative', 'PCR', '5 ml EDTA plasma', '', ' ', '', '', '6000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(322, 'MICROBIOLOGY', 'HCV RNA QUANTITATIVE', 'PCR', '5 ml EDTA plasma', '', ' ', '', '', '7000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(323, 'MICROBIOLOGY', 'HIGH VAGINAL CULTURE', 'Culture & Sensitivity', '', '', ' ', '', '', '650.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(324, 'SEROLOGY', 'HIV - p24 Antigen (Screening)', 'chromatography', '2 ml of serum', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(325, 'SEROLOGY', 'HIV (I&II) RAPID', 'chromatography', '2 ml of serum', '', ' ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(326, 'SEROLOGY', 'HIV ANTIBODY ( I&II ) ELISA', 'Elisa', '2 ml of serum', '', ' ', '', '', '450.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(327, 'SEROLOGY', 'HIV I & II BY WESTERN BLOT', 'Immuno Blot', '2 ml of serum', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(328, 'MOLECULAR BIOLOGY', 'HIV I RNA (QUALITATIVE)', 'PCR', '2 ml EDTA PLASMA', '', ' ', '', '', '4500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(329, 'MOLECULAR BIOLOGY', 'HIV-RNA PCR [QUANTITATIVE/VIRAL LOAD]', 'PCR', '2 ml EDTA PLASMA', '', ' ', '', '', '6000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(330, 'HEMATOLOGY', 'HLA B - 27', 'Flow Cytometry', '5 ml EDTA /Heparin blood', '', ' ', '', '', '2200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(331, 'HEMATOLOGY', 'HLA B5', 'Flow Cytometry', '5 ml EDTA /Heparin blood', '', ' ', '', '', '3500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(332, 'HEMATOLOGY', 'HLA B51', 'FLOW CYTOMETRY', '3 ml EDTA Blood', '', ' ', '', '', '4200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(333, 'BIOCHEMISTRY', 'HOMOCYSTEINE', 'Flow Cytometry', '2 ml of serum', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(334, 'BIOCHEMISTRY', 'HS-CRP', 'Histo', '2 ml of serum', '', ' ', '', '', '550.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(335, 'IMMUNOLOGY', 'HSV - I & II - IgG SERUM', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(336, 'MOLECULAR BIOLOGY', 'HSV DNA PCR', 'PCR', '2 ml EDTA PLASMA', '', ' ', '', '', '4000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(337, 'IMMUNOLOGY', 'HSV I & II - IgM - SERUM', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(338, 'SEROLOGY', 'HSV I IgG Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(339, 'SEROLOGY', 'HSV I IgM Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(340, 'SEROLOGY', 'HSV I IgM Ab.', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(341, 'SEROLOGY', 'HSV II IgG ( FLUID)', 'Elisa', '2 ml of body fluid', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(342, 'SEROLOGY', 'HSV II IgG Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(343, 'SEROLOGY', 'HSV II IgM ( FLUID)', 'Elisa', '2 ml of body fluid', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(344, 'SEROLOGY', 'HSV II IgM Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(345, 'MICROBIOLOGY', 'HVS (HIGH VAGINAL SMEAR)', 'manual / Microscpoic', '', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(346, 'HEMATOLOGY', 'I N R', 'Clotting', '2 ml of citrated plasma', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(347, 'IMMUNOLOGY', 'IgA', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(348, 'IMMUNOLOGY', 'IgE', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(349, 'IMMUNOLOGY', 'IgF BP3', 'CLIA', 'Serum ( 2 ml)', '', ' ', '', '', '3000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(350, 'IMMUNOLOGY', 'IgF1', 'CLIA', 'Serum ( 2 ml)', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(351, 'IMMUNOLOGY', 'IgG', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(352, 'IMMUNOLOGY', 'IgM', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(353, 'IMMUNOLOGY', 'INSULIN ( F )', 'CLIA', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(354, 'IMMUNOLOGY', 'INSULIN ( PP )', 'CLIA', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(355, 'IMMUNOLOGY', 'INSULIN -RANDOM', 'CLIA', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(356, 'BIOCHEMISTRY', 'IONISED CALCIUM', 'ISE', '2 ml of serum', '', ' ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(357, 'BIOCHEMISTRY', 'IRON', 'Ferrozine', '2 ml of serum', '', ' ', '', '', '350.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(358, 'BIOCHEMISTRY', 'IRON SATURATION', 'CLIA', '2 ml of serum', '', ' ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(359, 'BIOCHEMISTRY', 'IRON SATURATION INDEX', 'Calculation', '2 ml of serum', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(360, 'BIOCHEMISTRY', 'LDH', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(361, 'BIOCHEMISTRY', 'LDH ( FLUID )', 'Spectrophotometry', '2 ml of body fluid', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(362, 'HEMATOLOGY', 'LE CELLS', 'Micoscopic', '3 ml of heparin blood', '', ' ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(363, 'BIOCHEMISTRY', 'LEAD', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '1800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(364, 'SEROLOGY', 'LEPTOSPIRA - DFM', 'manual / Microscpoic', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(365, 'SEROLOGY', 'LEPTOSPIRA - DFM ( URINE)', 'manual / Microscpoic', '2 ml of body fluid', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(366, 'SEROLOGY', 'LEPTOSPIRA - IgM', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(367, 'SEROLOGY', 'LEPTOSPIRA -(MSAT)', 'Micoscopic', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(368, 'SEROLOGY', 'LEPTOSPIRA IgG', 'Rapid card', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(369, 'SEROLOGY', 'LEPTOSPIRA IgM - RAPID', 'chromatography', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(370, 'SEROLOGY', 'LEPTOSPIRA MAT', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(371, 'IMMUNOLOGY', 'LH (Luteinising Hormone)', 'CLIA', '2 ml of serum', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(372, 'IMMUNOLOGY', 'LH / FSH Ratio', 'Calculation', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(373, 'BIOCHEMISTRY', 'LIPASE', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(374, 'BIOCHEMISTRY', 'Lipase Fluid', 'Spectrophotometry', '2 ml of body fluid', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(375, 'BIOCHEMISTRY', 'LIPOPROTEIN (LPa)', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(376, 'BIOCHEMISTRY', 'LITHIUM', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(377, 'HEMATOLOGY', 'LUPUS ANTICOAGULANT TEST (LA1 & LA2)', 'Clotting', '2 ml of citrated plasma', '', ' ', '', '', '1600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(378, 'BIOCHEMISTRY', 'MAGNESIUM', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '350.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(379, 'BIOCHEMISTRY', 'MAGNESIUM (Fluid)', 'Spectrophotometry', '2 ml of body fluid', '', ' ', '', '', '350.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(380, 'HEMATOLOGY', 'MALARIA CARD TEST', 'chromatography', '2 ml blood in EDTA', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(381, 'HEMATOLOGY', 'MALARIAL PARASITES (QBC)', 'QBC Method', '2 ml blood in EDTA', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(382, 'HISTOPATHOLOGY & CYTOLOGY', 'Maliganant Cells Cytology (FLUID)', 'Manual / Microscpoic', '', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(383, 'HEMATOLOGY', 'MANTOUX TEST', 'Manual', '', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(384, 'HEMATOLOGY', 'MF BY QBC', 'QBC Method', '2 ml blood in EDTA', '', ' ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(385, 'MOLECULAR BIOLOGY', 'MTB - DNA by PCR', 'PCR', '5 ml EDTA plasma', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(386, 'MOLECULAR BIOLOGY', 'MTB - PUS', 'PCR', ' Pus sample', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(387, 'MOLECULAR BIOLOGY', 'MTB by PCR', 'PCR', '5 ml EDTA plasma', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(388, 'MOLECULAR BIOLOGY', 'MTB PCR - TISSUE', 'PCR', 'Tissue with saline container', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(389, 'SEROLOGY', 'MUMPS IgG Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(390, 'SEROLOGY', 'MUMPS IgM Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(391, 'BIOCHEMISTRY', 'NT proBNP', 'CLIA', '2 ml of serum', '', ' ', '', '', '3000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(392, 'SEROLOGY', 'P - ANCA', 'Elisa', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(393, 'HEMATOLOGY', 'PACKED CELL VOLUME (HCT)', 'Automated - Cell counter', '2 ml blood in EDTA', '', ' ', '', '', '120.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(394, 'BIOCHEMISTRY', 'PANCREATIC AMYLASE', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(395, 'HISTOPATHOLOGY & CYTOLOGY', 'PAP SMEAR', 'Slide Method', '', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(396, 'MOLECULAR BIOLOGY', 'PAP SMEAR-LBC-GPAPS SMEAR+HPV DNA', 'Slide Method', '', '', ' ', '', '', '3000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(397, 'IMMUNOLOGY', 'PAPP - A', 'CLIA', '2 ml of serum', '', ' ', '', '', '1350.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(398, 'IMMUNOLOGY', 'PARA THYROID HORMONE (IPTH)', 'CLIA', '2 ml of serum', '', ' ', '', '', '1100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(399, 'HEMATOLOGY', 'PARTIAL THROMBOPLASTIN TIME (aPTT)', 'Clotting', '2 ml of citrated plasma', '', ' ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(400, 'SEROLOGY', 'PAUL BUNNEL TEST', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(401, 'MOLECULAR BIOLOGY', 'PCR - MTB', 'PCR', '3 ml of EDTA plasma', '', ' ', '', '', '1800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(402, 'MOLECULAR BIOLOGY', 'PCR - TOXOPLASMOSIS', 'PCR', '3 ml of EDTA plasma', '', ' ', '', '', '3000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(403, 'MOLECULAR BIOLOGY', 'PCR FOR CMV', 'PCR', '3 ml of EDTA plasma', '', ' ', '', '', '4000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(404, 'MOLECULAR BIOLOGY', 'PCR FOR HSV (Quantitative Method)', 'PCR', '3 ml of EDTA plasma', '', ' ', '', '', '4500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(405, 'MOLECULAR BIOLOGY', 'PCR FOR MTB (FLUID)', 'PCR', '3 ml of  body fluid', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(406, 'MOLECULAR BIOLOGY', 'PCR FOR RUBELLA VIRUS QUALITATIVE', 'PCR', '3 ml of EDTA plasma', '', ' ', '', '', '4500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(407, 'MOLECULAR BIOLOGY', 'PCR FOR TB', 'PCR', '3 ml of EDTA plasma', '', ' ', '', '', '2400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(408, 'MOLECULAR BIOLOGY', 'PCR HSV - BLOOD', 'PCR', '3 ml of EDTA plasma', '', ' ', '', '', '3500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(409, 'MOLECULAR BIOLOGY', 'PCR HSV - CSF', 'PCR', '3 ml of  CSF  Fluid', '', ' ', '', '', '4500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(410, 'MOLECULAR BIOLOGY', 'PCR MTB - BLOOD', 'PCR', '3 ml of EDTA plasma', '', ' ', '', '', '1800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(411, 'MOLECULAR BIOLOGY', 'PCR MTB - CSF', 'PCR', '3 ml of CSF Fluid', '', ' ', '', '', '1800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(412, 'MOLECULAR BIOLOGY', 'PCR MTB - FLUID', 'PCR', '3 ml of  body fluid', '', ' ', '', '', '1800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(413, 'MOLECULAR BIOLOGY', 'PCR MTB - PUS', 'PCR', '  pus', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(414, 'MOLECULAR BIOLOGY', 'PCR MTB - SPUTUM', 'PCR', 'SPUTAM', '', ' ', '', '', '1900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(415, 'MOLECULAR BIOLOGY', 'PCR MTB - SWAB', 'PCR', '0', '', ' ', '', '', '1800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(416, 'MOLECULAR BIOLOGY', 'PCR MTB - URINE', 'PCR', '10 ml of urine', '', ' ', '', '', '1800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(417, 'MOLECULAR BIOLOGY', 'PCR MTB SYNOVIAL FLUID', 'PCR', '3 ml of  body fluid', '', ' ', '', '', '2500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(418, 'PATHOLOGY', 'PERICARDIAL FLUID ANALYSIS', 'Spectrophotometry', '3 ml of  body fluid', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(419, 'HEMATOLOGY', 'PERIPHERAL SMEAR', 'Slide Method', '', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(420, 'IMMUNOLOGY', 'PHENYTOIN ( Eptoin)', 'CLIA', '2 ml of serum', '', ' ', '', '', '750.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(421, 'BIOCHEMISTRY', 'PHOSPHORUS', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(423, 'BIOCHEMISTRY', 'POTASSIUM', 'ISE', '2 ml of serum', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(424, 'CLINICAL PATHOLOGY', 'PREGNANCY TEST (RAPID)', 'Chromatography', '5 ml of urine', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(425, 'IMMUNOLOGY', 'PROGESTERONE', 'CLIA', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(426, 'IMMUNOLOGY', 'PROLACTIN', 'CLIA', '2 ml of serum', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(427, 'BIOCHEMISTRY', 'PROTEIN', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(428, 'BIOCHEMISTRY', 'PROTEIN (Fluid)', 'Spectrophotometry', '2 ml of body fluid', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(429, 'BIOCHEMISTRY', 'Protein / Creatinine Ratio ( Spot )', 'Calculation', '10 ml of spot urine', '', ' ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(430, 'IMMUNOLOGY', 'PSA', 'CLIA', '2 ml of serum', '', ' ', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(431, 'MICROBIOLOGY', 'PUS FOR CULTURE & SENSITIVITY', 'Culture & Sensitivity', 'pus', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(432, 'BIOCHEMISTRY', 'PYRUVATE', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(433, 'SEROLOGY', 'QUANTIFERON TB GOLD TEST', 'Elisa', '2 ml of blood  in specific \ncontainer', '', ' ', '', '', '2850.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(434, 'SEROLOGY', 'RA FACTOR - LATEX', 'Immunoturbidimetry', '2 ml of serum', '', ' ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(435, 'HEMATOLOGY', 'RBC COUNT', 'Automated - Cell counter', '2 ml blood in EDTA', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(436, 'HEMATOLOGY', 'RED CELL DISTRIBUTION WIDTH (RDW)', 'Automated - Cell counter', '2 ml blood in EDTA', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(437, 'HEMATOLOGY', 'RED CELL FRAGILITY', 'Calculation', '4 ml of Na heparin', '', ' ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(438, 'BIOCHEMISTRY', 'REDUCING SUGAR', 'manual', '10 ml of spot urine', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(439, 'BIOCHEMISTRY', 'RENAL STONE ANALYSIS', 'Spectrophotometry', 'stone in plain container', '', ' ', '', '', '1100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(440, 'HEMATOLOGY', 'RETICULOCYTE COUNT', 'Automated - Cell counter', '2 ml blood in EDTA', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(441, 'HEMATOLOGY', 'RH ANTIBODY TITRE', 'Gel typing/ Manual', '2 ml of serum', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(442, 'SEROLOGY', 'SCRUB TYPHUS IgM - RAPID', 'chromatography', '2 ml of serum', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(443, 'CLINICAL PATHOLOGY', 'SEMEN ANALYSIS - POST WASH', 'Microscopic', '2 ml of semen', '', ' ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(444, 'MICROBIOLOGY', 'SEMEN CULTURE AND SENSITIVITY', 'Culture & Sensitivity', '2 ml of semen', '', ' ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(445, 'BIOCHEMISTRY', 'SERUM FOLATE', 'CLIA', '2 ml of serum', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(446, 'BIOCHEMISTRY', 'SERUM LDH', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(447, 'BIOCHEMISTRY', 'SERUM OSMOLALITY', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(448, 'BIOCHEMISTRY', 'SERUM PROTEIN ELECTROPHORESIS', 'Electrophoresis', '2 ml of serum', '', ' ', '', '', '900.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(449, 'BIOCHEMISTRY', 'SGOT', 'IFCC/Kinetic', '2 ml of serum', 'IU/L', '0 - 49 ', '', '', '120.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(450, 'BIOCHEMISTRY', 'SGPT', 'IFCC/Kinetic', '2 ml of serum', 'IU/L', '0 - 37 ', '', '', '120.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(451, 'HEMATOLOGY', 'Smear For MF', 'Microscopic', '2 ml blood in EDTA', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(452, 'HEMATOLOGY', 'SMEAR FOR MP', 'Microscopic', '2 ml blood in EDTA', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(453, 'BIOCHEMISTRY', 'SODIUM', 'ISE', '2 ml of serum', 'mmol/L', '135.0-145.0 ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(454, 'BIOCHEMISTRY', 'SPOT AMYLASE', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(455, 'BIOCHEMISTRY', 'SPOT BICARBONATE', 'ISE', '10 ml of spot urine', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(456, 'BIOCHEMISTRY', 'SPOT CALCIUM', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(457, 'BIOCHEMISTRY', 'SPOT CHLORIDE', 'ISE', '10 ml of spot urine', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(458, 'BIOCHEMISTRY', 'SPOT CREATININE', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(459, 'BIOCHEMISTRY', 'SPOT MICROALBUMIN / SPOT CREATININE RATIO', 'Calculation', 'urine  / serum', '', ' ', '', '', '550.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(460, 'BIOCHEMISTRY', 'SPOT PHOSPHROUS', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(461, 'BIOCHEMISTRY', 'SPOT POTASSIUM', 'ISE', '10 ml of spot urine', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(462, 'BIOCHEMISTRY', 'SPOT PROTEIN.', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(463, 'BIOCHEMISTRY', 'SPOT SODIUM', 'ISE', '10 ml of spot urine', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(464, 'BIOCHEMISTRY', 'SPOT UREA', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(465, 'BIOCHEMISTRY', 'SPOT URIC ACID', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(466, 'BIOCHEMISTRY', 'SPOT URINE - UREA NITROGEN', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(467, 'BIOCHEMISTRY', 'SPOT URINE CALCIUM / URINE CREATININE RATIO', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '350.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(468, 'BIOCHEMISTRY', 'SPOT URINE MICROALBUMINURIA', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(469, 'BIOCHEMISTRY', 'SPOT URINE SODIUM /CREATININE RATIO', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(470, 'MICROBIOLOGY', 'SPUTUM FOR GRAM STAIN', 'manual', '', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(471, 'HISTOPATHOLOGY & CYTOLOGY', 'SPUTUM FOR MALIGNANT CELLS', 'Microscopic', '', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(472, 'CLINICAL PATHOLOGY', 'STOOL COMPLETE ANALYSIS', 'Microscopic', 'motion sample in small container', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(473, 'MICROBIOLOGY', 'STOOL CULTURE & SENSITIVITY', 'Culture & Sensitivity', 'motion sample in small container', '', ' ', '', '', '350.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(474, 'PATHOLOGY', 'STOOL FAT CONTENT', 'Spectrophotometry', 'motion sample in small container', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(475, 'CLINICAL PATHOLOGY', 'STOOL OCCULT BLOOD', 'Strip Method', 'motion sample in small container', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(476, 'CLINICAL PATHOLOGY', 'STOOL REDUCING SUBSTANCE', 'Benedict Method', 'motion sample in small container', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(477, 'CLINICAL PATHOLOGY', 'STOOL ROUTINE EXAMINATION', 'Microscopic', 'motion sample in small container', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(478, 'BIOCHEMISTRY', 'SUGAR ( FLUID )', 'manual', '', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(479, 'BIOCHEMISTRY', 'SUGAR (CSF)', 'Spectrophotometry', '', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(480, 'MICROBIOLOGY', 'SWAB C/S', 'Culture & Sensitivity', 'Swab Specimen', '', ' ', '', '', '350.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(481, 'SEROLOGY', 'SYPHILUS (Treponema) ANTIBODIES', 'Elisa', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(482, 'IMMUNOLOGY', 'T3 (Triiodothyronine)', 'CLIA', '2 ml of serum', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(483, 'IMMUNOLOGY', 'T4 (Thyroxine)', 'CLIA', '2 ml of serum', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(484, 'IMMUNOLOGY', 'TESTOSTERONE (TOTAL)', 'CLIA', '2 ml of serum', '', ' ', '', '', '450.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(485, 'IMMUNOLOGY', 'TESTOSTERONE / FREE TESTOSTRONE RATIO', 'Calculation', '2 ml of serum', '', ' ', '', '', '1400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(486, 'IMMUNOLOGY', 'THYROGLOBULIN', 'CLIA', '2 ml of serum', '', ' ', '', '', '1250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(487, 'IMMUNOLOGY', 'THYROID PROFILE - FREE', 'CLIA', '2 ml of serum', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(488, 'IMMUNOLOGY', 'THYROID PROFILE( FT3,FT4,T3,T4,TSH )', 'CLIA', '2 ml of serum', '', ' ', '', '', '650.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(489, 'MOLECULAR BIOLOGY', 'TISSUE KARYOTYPING', '', 'heparin Blood', '', ' ', '', '', '12500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(490, 'BIOCHEMISTRY', 'TOTAL PROTEIN', 'Spectrophotometry', '2 ml of serum', 'g/L', '6.0 - 8.0 ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(491, 'HEMATOLOGY', 'TOTAL WBC COUNT', 'Blood/Automated', '2 ml of blood in EDTA', '', ' 4000 - 11000', '', '', '50.00', '2020-11-11 00:00:00', '2020-12-19 17:47:28', NULL),
(492, 'SEROLOGY', 'TOXOPLASMA IgG Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(493, 'SEROLOGY', 'TOXOPLASMA IgM Ab', 'Elisa', '2 ml of serum', '', ' ', '', '', '600.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(494, 'SEROLOGY', 'TPHA', 'Agglutination', '2 ml of serum', '', ' ', '', '', '650.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(495, 'BIOCHEMISTRY', 'TROPONIN - I', 'Immuno Chromatogrtaphy', '2 ml of serum', '', ' ', '', '', '950.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(496, 'BIOCHEMISTRY', 'TROPONIN - I -Quantitative', 'Elisa', '2 ml of serum', '', ' ', '', '', '1200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(497, 'BIOCHEMISTRY', 'TROPONIN - T - QUANTITATIVE', 'Elisa', '2 ml of serum', '', ' ', '', '', '1950.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(498, 'BIOCHEMISTRY', 'TROPONIN-T', 'Immuno Chromatogrtaphy', '2 ml of whole Blood - EDTA', '', ' ', '', '', '1250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(499, 'BIOCHEMISTRY', 'URINE 17 KETOSTEROIDS', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(500, 'CLINICAL PATHOLOGY', 'URINE ACETONE', 'Strip Method', '10 ml of spot urine', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(501, 'CLINICAL PATHOLOGY', 'URINE ALBUMIN', 'Strip Method', '10 ml of spot urine', '', ' ', '', '', '20.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(502, 'CLINICAL PATHOLOGY', 'URINE ALBUMIN/SUGAR', 'Strip Method', '10 ml of spot urine', '', ' ', '', '', '30.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(503, 'BIOCHEMISTRY', 'URINE ALCOHOL TEST', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(504, 'CLINICAL PATHOLOGY', 'URINE CHYLURIA', 'Turbidometry', '10 ml of spot urine', '', ' ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(505, 'BIOCHEMISTRY', 'URINE COPPER', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '1450.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(506, 'BIOCHEMISTRY', 'URINE CORTISOL', 'CLIA', '10 ml of spot urine', '', ' ', '', '', '1500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(507, 'BIOCHEMISTRY', 'URINE CREATININE CLEARANCE', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(508, 'MICROBIOLOGY', 'URINE CULTURE', 'Culture & Sensitivity', '10 ml of spot urine', '', ' ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(509, 'HISTOPATHOLOGY & CYTOLOGY', 'URINE FOR MALIGNANT CELLS', 'Histo', '0', '', ' ', '', '', '500.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(510, 'CLINICAL PATHOLOGY', 'URINE OCCULT BLOOD', 'manual', 'stool  ', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(511, 'BIOCHEMISTRY', 'URINE OXALATE', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '1300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(512, 'CLINICAL PATHOLOGY', 'URINE PH', 'Strip Method', '10 ml of spot urine', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(513, 'CLINICAL PATHOLOGY', 'URINE ROUTINE ANALYSIS', 'manual', '5 ml of urine', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(514, 'CLINICAL PATHOLOGY', 'URINE SMEAR DEPOSITS FOR SPERM', 'Microscopic', '5 ml of urine', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(515, 'CLINICAL PATHOLOGY', 'URINE SPECIFIC GRAVITY', 'manual', '5 ml of urine', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(516, 'CLINICAL PATHOLOGY', 'URINE SUGAR ( 1 HOUR AFTER 50 GMS OF GLUCOSE)', 'Strip Method', '5 ml of urine', '', ' ', '', '', '20.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(517, 'BIOCHEMISTRY', 'URINE SUGAR ( 2 1/2 hrs )', 'Strip Method', '5 ml of urine', '', ' ', '', '', '20.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(518, 'CLINICAL PATHOLOGY', 'URINE SUGAR ( POST LUNCH )', 'Strip Method', '5 ml of urine', '', ' ', '', '', '20.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(519, 'BIOCHEMISTRY', 'URINE SUGAR (1 1/2 HOUR)', 'Strip Method', '5 ml of urine', '', ' ', '', '', '20.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(520, 'BIOCHEMISTRY', 'URINE SUGAR (1 HOUR)', 'Strip Method', '5 ml of urine', '', ' ', '', '', '20.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(521, 'BIOCHEMISTRY', 'URINE SUGAR (1/2 HOUR)', 'Strip Method', '5 ml of urine', '', ' ', '', '', '20.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(522, 'BIOCHEMISTRY', 'URINE SUGAR (2 HOUR)', 'Strip Method', '5 ml of urine', '', ' ', '', '', '20.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(523, 'BIOCHEMISTRY', 'URINE SUGAR (3 HOUR)', 'Strip Method', '5 ml of urine', '', ' ', '', '', '20.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(524, 'BIOCHEMISTRY', 'URINE SUGAR (4 HOUR)', 'Strip Method', '5 ml of urine', '', ' ', '', '', '20.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(525, 'BIOCHEMISTRY', 'URINE SUGAR (FASTING )', 'Strip Method', '5 ml of urine', '', ' ', '', '', '20.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(526, 'BIOCHEMISTRY', 'URINE SUGAR (PP)', 'Strip Method', '5 ml of urine', '', ' ', '', '', '20.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(528, 'CLINICAL PATHOLOGY', 'URINE SUGAR(R)', 'Strip Method', '5 ml of urine', '', ' ', '', '', '20.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(529, 'BIOCHEMISTRY', 'URINE ZINC', 'Spectrophotometry', '10 ml of spot urine', '', ' ', '', '', '1950.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(530, 'CLINICAL PATHOLOGY', 'UROBILINOGEN', 'Strip Method', '10 ml of spot urine', '', ' ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(531, 'SEROLOGY', 'VDRL - LATEX', 'Agglutination', '2 ml of serum', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(532, 'SEROLOGY', 'VDRL ( Rapid )', 'chromatography', '2 ml of serum', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(533, 'MICROBIOLOGY', 'VDRL CSF', 'Agglutination', '2 ml of serum', '', ' ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(534, 'BIOCHEMISTRY', 'VITAMIN A (Retinol)', 'CLIA', '2 ml of serum', '', ' ', '', '', '4000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(535, 'BIOCHEMISTRY', 'VITAMIN B1 (Thiamine)', 'Hplc Method', 'EDTA Plasma', '', ' ', '', '', '4000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(536, 'IMMUNOLOGY', 'VITAMIN B12', 'CLIA', '2 ml of serum', '', ' ', '', '', '800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(537, 'BIOCHEMISTRY', 'VITAMIN B2 (Riboflavin)', 'CLIA', '3 ml EDTA Blood', '', ' ', '', '', '4000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(538, 'IMMUNOLOGY', 'VITAMIN B6', 'CLIA', '3 ml EDTA Blood', '', ' ', '', '', '4000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(539, 'BIOCHEMISTRY', 'VITAMIN B6 (Pyridoxine)', 'CLIA', '3 ml EDTA Blood', '', ' ', '', '', '4000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(540, 'BIOCHEMISTRY', 'VITAMIN C (Ascorbic Acid)', 'CLIA', '3 ml EDTA Blood', '', ' ', '', '', '4000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(541, 'IMMUNOLOGY', 'VITAMIN D (1,25) Dihydroxy cholecalciferol', 'EIA', 'Serum ( 2 ml)', '', ' ', '', '', '1800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(542, 'IMMUNOLOGY', 'VITAMIN D3 (25 OH) Cholecalciferol', 'CLIA', 'Serum ( 2 ml)', '', ' ', '', '', '1250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(543, 'BIOCHEMISTRY', 'VITAMIN E(Tocopherol)', 'Hplc Method', 'EDTA Plasma', '', ' ', '', '', '1800.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(544, 'BIOCHEMISTRY', 'VMA', 'Column  chromatogrphy', '2 ml of serum', '', ' ', '', '', '3000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(545, 'SEROLOGY', 'WEIL FELIX', 'AGGLUTINATION', 'Serum ( 2 ml)', '', ' ', '', '', '1000.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(546, 'SEROLOGY', 'WIDAL (TUBE METHOD)', 'Slide/Tube Method', '2 ml of serum', '', ' ', '', '', '450.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(547, 'SEROLOGY', 'WIDAL TEST ( SLIDE METHOD )', 'Slide/Tube Method', '2 ml of serum', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(548, 'BIOCHEMISTRY', 'ZINC', 'Spectrophotometry', '2 ml of serum', '', ' ', '', '', '1200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(549, 'MICROBIOLOGY', 'Z-N STAIN', 'manual', '', '', ' ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(550, 'BIOCHEMISTRY', '24 HOURS URINE BENCE JONES PROTEIN', '', '', '', '', '', '', '0.00', '2020-11-11 00:00:00', '2021-02-04 12:41:37', NULL),
(551, 'BIOCHEMISTRY', 'Blood Urea', '', '', 'mg/dl', '15 - 45 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(552, 'BIOCHEMISTRY', 'Serum Creatinine', '', '', 'mg/dl', '0.5 - 1.5 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(553, 'BIOCHEMISTRY', 'Uric Acid', '', '', 'mg/dl', '2.7 - 5.7 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(555, 'BIOCHEMISTRY', 'Pottasium', '', '', 'mmol/L', '3.5 – 5.5 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(556, 'BIOCHEMISTRY', 'Chloride', '', '', 'mmol/L', '96.0 – 106.0 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(558, 'BIOCHEMISTRY', 'Blood Glucose (Fasting) (Oral Glucose 75gms)', '', '', 'mg/dl', '70 - 110 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(559, 'BIOCHEMISTRY', 'After Glucose (0.5 hour)', '', '', 'mg/dl', '100 - 180 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(560, 'BIOCHEMISTRY', 'After Glucose (1 hour)', '', '', 'mg/dl', '110 - 190 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(561, 'BIOCHEMISTRY', 'After Glucose (1.5 hour)', '', '', 'mg/dl', '100 - 180 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(562, 'BIOCHEMISTRY', 'After Glucose (2 hours)', '', '', 'mg/dl', '90 - 160 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(563, 'CLINICAL PATHOLOGY', 'Colour', '', '', '', ' ', '', 'Yellow,White', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(564, 'CLINICAL PATHOLOGY', 'Apperance', '', '', '', ' ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(565, 'CLINICAL PATHOLOGY', 'Reaction', '', '', '', ' ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(566, 'CLINICAL PATHOLOGY', 'Odour', '', '', '', ' ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(567, 'CLINICAL PATHOLOGY', 'Mucus', '', '', '', ' ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(568, 'CLINICAL PATHOLOGY', 'OVA', '', '', '', ' ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(569, 'CLINICAL PATHOLOGY', 'Cyst', '', '', '', ' ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(570, 'CLINICAL PATHOLOGY', 'Pus Cells', '', '', 'hpf', ' ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(571, 'CLINICAL PATHOLOGY', 'RBC\'s', '', '', 'hpf', ' ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(572, 'CLINICAL PATHOLOGY', 'Others', '', '', '', ' ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(573, 'BLOOD HAEMATOLOGY', 'Test', '', '', '', '12.0 - 16.0 ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(574, 'BLOOD HAEMATOLOGY', 'Control', '', '', '', ' ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(575, 'BLOOD HAEMATOLOGY', 'INR', '', '', '', ' ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(580, 'BIOCHEMISTRY', 'UREA', 'Spectrophotometry', '', 'mg/dL', '16.6 - 48.5 (Urease/GLDH) ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(581, 'BIOCHEMISTRY', 'CREATININE', 'Spectrophotometry', '', 'mg/dL', '0.80 - 1.30 (Jaffe) ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(582, 'BIOCHEMISTRY', 'ALKALINE PHOSPHATASE', 'Spectrophotometry', '', 'U/L', '40.0 - 129.0 (Colorimetric : p-\nNitrophenyl Phosphate-AMP Buffer) ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(584, 'BIOCHEMISTRY', 'Gamma-Glutamyl Transpeptidase-GGT', '', '', 'IU/L', '9 - 48 ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(585, 'BIOCHEMISTRY', 'TOTAL CHOLESTEROL', '', '', 'mg/dL', 'Less than 200mg/dl – Desirable\n200-239mg/dl – Borderline High\nMore than 240mg/dl – High\n ', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(586, 'BIOCHEMISTRY', 'TRIGLYCERIDES (TGL)', '', '', 'mg/dL', 'Less than 150mg/dl – Desirable\n150-199mg/dl – Borderline\nHigh More than 200mg/dl – High\n ', '', '', '150.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(587, 'BIOCHEMISTRY', 'LDL - CHOLESTEROL', '', '', 'mg/dL', 'Less than 100mg/dl –Optimal\n100-129mg/dl – Near Optimal\n130-159mg/dl – Borderline High More than 160mg/dl – High\n ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(588, 'BIOCHEMISTRY', 'HDL CHOLESTEROL', '', '', 'mg/dL', 'Less than 40mg/dl – Low HDL\nMore than 60mg/dl – High HDL ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(589, 'BIOCHEMISTRY', 'VLDL CHOLESTEROL', '', '', 'mg/dL', '0 – 30 ', '', '', '250.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(590, 'HEMATOLOGY', 'Haemoglobin', 'Blood/Automated', '', 'g/dL', 'Male: 11.0 - 17.0\nFemale: 11.0 - 15.0 ', '', '', '300.00', '2020-11-11 00:00:00', '2020-12-19 17:46:51', NULL),
(591, 'HEMATOLOGY', 'Packed Cell Volume', 'Blood/Automated', '', '%', '40 - 50 ', '', '', '300.00', '2020-11-11 00:00:00', '2020-12-19 17:43:21', NULL),
(593, 'HEMATOLOGY', 'Total RBC Count', 'Blood/Automated', '', 'Million/cumm', 'Male : 4.5 - 6.5\nFemale : 3.8 - 5.8 ', '', '', '300.00', '2020-11-11 00:00:00', '2020-12-19 17:44:10', NULL),
(594, 'HEMATOLOGY', 'MCV', 'Blood/Automated', '', 'Fl', '80 - 100 ', '', '', '300.00', '2020-11-11 00:00:00', '2020-12-19 17:44:20', NULL),
(595, 'HEMATOLOGY', 'MCH', 'Blood/Automated', '', 'Pg', '27 - 31 ', '', '', '300.00', '2020-11-11 00:00:00', '2020-12-19 17:44:31', NULL),
(596, 'HEMATOLOGY', 'MCHC', 'Blood/Automated', '', '%', '31 - 35 ', '', '', '300.00', '2020-11-11 00:00:00', '2020-12-19 17:44:40', NULL),
(597, 'HEMATOLOGY', 'Platelet Count', 'Blood/Automated', '', 'Cells/mm3', '150000 - 450000 ', '', '', '300.00', '2020-11-11 00:00:00', '2020-12-19 17:45:05', NULL),
(598, 'HEMATOLOGY', 'Neutrophils', '', '', '%', '40 - 70 ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(599, 'HEMATOLOGY', 'Lymphocytes', 'Blood/Automated', '', '%', '30 - 50 ', '', '', '300.00', '2020-11-11 00:00:00', '2020-12-19 17:45:22', NULL),
(600, 'HEMATOLOGY', 'Eosinophils', 'Blood/Automated', '', '%', '0 - 6 ', '', '', '300.00', '2020-11-11 00:00:00', '2020-12-19 17:45:33', NULL),
(601, 'HEMATOLOGY', 'Monocytes', 'Blood/Automated', '', '%', '2 - 10 ', '', '', '300.00', '2020-11-11 00:00:00', '2020-12-19 17:45:41', NULL),
(602, 'HEMATOLOGY', 'Basophils (Blood/Automated)', '', '', '%', '0 - 1 ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(603, 'HEMATOLOGY', 'ESR 1/2 hr', '', '', 'mm', '', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(604, 'HEMATOLOGY', 'ESR 1hr', '', '', 'mm', '0 - 22 /hr ', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(605, 'IMMUNOLOGY', 'T3 CLIA(Sample:Serum)', '', '', 'ng/ml', '0.8 - 2.0 ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(606, 'IMMUNOLOGY', 'T4 CLIA(Sample:Serum)', '', '', 'ug/dl', '4.5 - 11.7 ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(607, 'IMMUNOLOGY', 'Thyroid-Stimulating Hormone (TSH) CLIA (Sample : Serum)', '', '', 'uIU/ml', 'Premature 28-36 wks :0.7-0.27 Core blood (>37 wks):2.3 -13.2 Birth 4 days -1.0-39.0 10 weeks -0.6-10 14 month -0.4 -7.0 5 years -0.4 -6.0 Adults - 0.27-4.20 ', '', '', '400.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(608, 'PATHOLOGY', 'Place of Collection', '', '', '', '', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(609, 'PATHOLOGY', 'Date of Sample', '', '', '', '', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(610, 'PATHOLOGY', 'Time of Sample', '', '', '', '', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(611, 'PATHOLOGY', 'Duration of Abstinence(day)', '', '', '', '2 - 5 days', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(612, 'PATHOLOGY', 'Interval between ejaculation and starts of analysis (min)', '', '', '', 'upto 2hrs', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(613, 'PATHOLOGY', 'Volume', '', '', '', '2ml and more', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(615, 'PATHOLOGY', 'Liquefaction', '', '', '', 'Within 60 minutes', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(616, 'PATHOLOGY', 'Viscosity', '', '', '', '', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(617, 'PATHOLOGY', 'pH', '', '', '', '7.2 - 8.0', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(618, 'PATHOLOGY', 'Rapid Progressive', '', '', '', '%', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(619, 'PATHOLOGY', 'Slow Progressive', '', '', '', '%', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(620, 'PATHOLOGY', 'Non - Progressive', '', '', '', '%', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(621, 'PATHOLOGY', 'Immotile', '', '', '', '%', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(622, 'PATHOLOGY', 'Count/ml', '', '', '', '1200/ml or more', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(623, 'PATHOLOGY', 'Total count in ejaculate', '', '', '', '2400 per ejaculate or more', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(624, 'PATHOLOGY', 'Normal Sperms', '', '', '', '', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(625, 'PATHOLOGY', 'Abnormal Sperms', '', '', '', '', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(626, 'PATHOLOGY', 'Head defect sperms', '', '', '', '', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(627, 'PATHOLOGY', 'Tail defect sperms', '', '', '', '', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(628, 'PATHOLOGY', 'Midpiece defect sperms', '', '', '', '', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(631, 'PATHOLOGY', 'Comments', '', '', '', '', '', '', '300.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(632, 'BIOCHEMISTRY', 'HbA1c (GLYCOSYLATED HEMOGLOBIN),', '(HPLC, NGSP certified)', '', '%', 'Non diabetic adults >=18 years 4.0 - 5.6\nAt risk (Prediabetes) 5.7 - 6.4\nDiagnosing Diabetes >= 6.5\nTherapeutic goals for glycemic| \nGoal of therapy: < 7.0 control\nAction', '', '', '450.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(633, 'BIOCHEMISTRY', 'Estimated average glucose (eAG)', '', '', 'mg/dL', '80 - 140', 'HbA1c provides an index of average blood glucose levels over the past 8 - 12 weeks and is a much better indicator of long term glycemic control as compared to blood and urinary glucose determinations.', '', '450.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(634, 'BIOCHEMISTRY', 'BLOOD GLUCOSE, FASTING (F),PLASMA (Hexokinase)', '', '', 'mg/dL', '70 - 110 ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(635, 'BIOCHEMISTRY', 'BLOOD GLUCOSE, POST PRANDIAL (PP), 2 HOURS, PLASMA', '', '', 'mg/dL', '80 - 140 ', '', '', '50.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(637, 'IMMUNOLOGY', 'TSH (Thyroid Stimulating Hormone)', 'CLIA', '', 'uIU/ml', 'Premature 28-36 wks :0.7-0.27\nCore blood (>37 wks):2.3 -13.2 Birth 4 days -1.0-39.0\n10 weeks -0.6-10\n14 month -0.4 -7.0\n5 years -0.4 -6.0\nAdults - 0.27-4.20 ', '', '', '200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(638, 'BIOCHEMISTRY', 'BLOOD GLUCOSE (PP)', '', '', 'mg/dl', '80 - 140 ', '', '', '40.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(639, 'BIOCHEMISTRY', 'BLOOD GLUCOSE (F)', '', '', 'mg/dl', '70 - 110 ', '', '', '40.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(643, 'HEMATOLOGY', 'BLOOD GROUPING & RH TYPING', 'Slide/Tube Method', '2 ml blood in EDTA', '', '', '', '', '70.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(644, 'BIOCHEMISTRY', 'Total Bilirubin', '', '', 'mgs/dl', '0.3 - 1.3', '', '', '550.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(645, 'BIOCHEMISTRY', 'Direct Bilirubin', '', '', 'mgs/dl', '0.0 - 0.2', '', '', '550.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(646, 'BIOCHEMISTRY', 'Indirect Bilirubin', '', '', 'mgs/dl', '0.3 - 0.7', '', '', '550.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(647, 'BIOCHEMISTRY', 'SGOT (UV without psp)', '', '', 'U/L', 'upto - 37', '', '', '550.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(648, 'BIOCHEMISTRY', 'SGPT (UV without psp)', '', '', 'U/L', 'upto - 37', '', '', '550.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(649, 'BIOCHEMISTRY', 'Alkaline Phosphatase (pnpp/Amp Buffer)', '', '', 'U/L', '30 - 120', '', '', '550.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(651, 'BIOCHEMISTRY', 'Total Protein (Serum/Biuret)', '', '', 'g/dL', '6.6 - 8.3', '', '', '550.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(652, 'BIOCHEMISTRY', 'Albumin (Serum/bcg)', '', '', 'g/L', '3.5 - 5.3', '', '', '550.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(662, 'BIOCHEMISTRY', 'Pottassium', '', '', 'mmol/L', 'New Born : 3.7 - 5.9\nInfant : 4.1 - 5.3\nChild : 3.4 - 4.7\nAdults : 3.5 - 5.1 (ISE Indirect)', '', '', '750.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(665, 'HEMATOLOGY', 'Field', 'T', '', '', '', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(666, 'BIOCHEMISTRY', 'Total Cholestrol', '', '', 'mg/dl', '0 - 200 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(667, 'BIOCHEMISTRY', 'Triglycerides', '', '', 'mg/dl', '< 200 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(668, 'BIOCHEMISTRY', 'HDL Cholestrol', '', '', 'mg/dl', '35 - 79 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(669, 'BIOCHEMISTRY', 'LDL Cholestrol', '', '', 'mg/dl', '80 - 130 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL);
INSERT INTO `tests` (`id`, `category`, `name`, `method`, `sample`, `units`, `reference_range`, `comments`, `parameters`, `fees`, `created_at`, `updated_at`, `deleted_at`) VALUES
(670, 'BIOCHEMISTRY', 'VLDL Cholestrol', '', '', 'mg/dl', '0.2 -20.0 ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(671, 'BIOCHEMISTRY', 'T.Cho/HDL Ratio', '', '', '', '', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(672, 'BIOCHEMISTRY', 'LDL/HDL Ratio', '', '', '', '', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(673, 'IMMUNOLOGY', 'FERRITIN', 'CLIA', '2 ml of serum', '', 'Male : 22 - 322\nFemale : 10 - 291', '', '', '700.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(676, 'CLINICAL PATHOLOGY', 'Sugar', '', '', '', ' ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(677, 'CLINICAL PATHOLOGY', 'Epithelial Cells', '', '', 'hpf', ' ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(678, 'CLINICAL PATHOLOGY', 'Cast /Crystals', '', '', '', ' ', '', '', '0.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(683, 'CLINICAL PATHOLOGY', 'Specific Gravity', '', '', '', '', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(686, 'CLINICAL PATHOLOGY', 'Bile Salt', '', '', '', '', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(688, 'CLINICAL PATHOLOGY', 'Ketones', '', '', '', '', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(689, 'CLINICAL PATHOLOGY', 'Urinobilinogen', '', '', '', '', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(693, 'CLINICAL PATHOLOGY', 'Cast', '', '', '', '', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(694, 'CLINICAL PATHOLOGY', 'Crystals', '', '', '', '', '', '', '100.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(709, 'BIOCHEMISTRY', '17-KETOSTEROIDS (Urine)', 'Column chromatogrphy', '15 ml of 24 hrs urine \nwith glacial acitic acid \nas preservative ', '', ' ', '', '', '3200.00', '2020-11-11 00:00:00', '2020-11-11 00:00:00', NULL),
(710, 'BIOCHEMISTRY', '17-HYDROXY CORTICOSTEROIDS', 'CLIA', 'Serum ( 2 ml)', '', ' ', '', '', '3200.00', '2020-11-11 00:00:00', '2021-02-04 13:46:38', NULL),
(712, 'BIOCHEMISTRY', '3453', '', '345', '', '', '', '', '0.00', '2020-11-11 11:39:57', '2020-11-11 11:39:57', NULL),
(714, 'BLOOD HAEMATOLOGY', 'Demo Test', '', '', '', '', '', '', '100.00', '2020-11-12 15:38:21', '2020-11-12 15:38:50', NULL),
(718, 'BLOOD HAEMATOLOGY', 'sample3', '', '', '', '', '', '', '0.00', '2021-09-24 15:58:57', '2021-09-24 15:58:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_categories`
--

CREATE TABLE `test_categories` (
  `id` int UNSIGNED NOT NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_categories`
--

INSERT INTO `test_categories` (`id`, `category`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BIOCHEMISTRY', NULL, NULL, NULL),
(2, 'IMMUNOLOGY', NULL, NULL, NULL),
(3, 'CLINICAL PATHOLOGY', NULL, NULL, NULL),
(4, 'HEMATOLOGY', NULL, NULL, NULL),
(5, 'MICROBIOLOGY', NULL, NULL, NULL),
(6, 'SEROLOGY', NULL, NULL, NULL),
(7, 'HISTOPATHOLOGY & CYTOLOGY', NULL, NULL, NULL),
(8, 'MOLECULAR BIOLOGY', NULL, NULL, NULL),
(9, 'PATHOLOGY', NULL, NULL, NULL),
(10, 'BLOOD HAEMATOLOGY', NULL, NULL, NULL),
(11, 'ENDOCRINOLOGY', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`name`) VALUES
('Treatment'),
('Treatment1'),
('New Treatment'),
('Demo Treatment'),
('Rest');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `login_name`, `password`, `access`, `created_at`, `updated_at`) VALUES
(1, 'Credence', 'admin', '$2y$10$VMjgsfO748XwkaTfsGABO.zE.rlm51t/mtzntyux.1iaqkQ/A281a', '[\"DocMas\",\"DocTim\",\"FeesMas\",\"TestMas\",\"GroupTMas\",\"ProfMas\",\"LabMas\",\"RoomMas\",\"RadTherMas\",\"UserAcc\",\"UserMas\",\"appts\",\"MedObs\",\"Reg\",\"List\",\"PtUpd\",\"UpPDF\",\"OPReg\",\"Presc\",\"OPBill\",\"IPBill\",\"IPAdv\",\"IPAdm\",\"IPTre\",\"IPHis\",\"WardStat\",\"WardShift\",\"XRay\",\"IPDis\",\"OPL\",\"IPL\",\"Rep\",\"update\",\"delete\"]', '2020-11-20 12:09:32', '2021-09-24 13:19:24'),
(4, 'Demo User', 'demo', '$2y$10$CxQ2rOIyNZVkrNq7s/oWqO3uMxnL.TyE52I5aa9LfLRBK3gsK3GKC', '[\"FeesMas\",\"Reg\",\"List\",\"PtUpd\",\"OPL\",\"IPL\"]', NULL, '2021-01-15 17:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` int UNSIGNED NOT NULL,
  `floor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ward` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `room` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bed` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rent` decimal(18,0) DEFAULT NULL,
  `ip_id` int UNSIGNED DEFAULT '0',
  `pt_id` int UNSIGNED DEFAULT '0',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `floor`, `ward`, `room`, `bed`, `rent`, `ip_id`, `pt_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(217, '1. GROUND FLOOR', 'GF Casuality', 'GF Casuality', '001', '1000', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2022-11-26 17:21:48'),
(218, '1. GROUND FLOOR', 'GF Casuality', 'GF Casuality', '002', '850', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2021-02-15 13:15:53'),
(219, '1. GROUND FLOOR', 'GF Casuality', 'GF Casuality', '003', '800', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2021-04-01 15:35:54'),
(220, '1. GROUND FLOOR', 'GF Casuality', 'GF Casuality', '004', '700', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2021-05-06 15:29:18'),
(221, '2. FIRST FLOOR', '8 Rooms', '8 Rooms', '101', '1200', 12, 79, 'Mr.demo 123', 1, '2020-11-20 15:58:28', '2022-10-15 02:58:47'),
(222, '2. FIRST FLOOR', '8 Rooms', '8 Rooms', '102', '1200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(223, '2. FIRST FLOOR', '8 Rooms', '8 Rooms', '103', '1200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(224, '2. FIRST FLOOR', '8 Rooms', '8 Rooms', '104', '1200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(225, '2. FIRST FLOOR', '8 Rooms', '8 Rooms', '105', '1200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(226, '2. FIRST FLOOR', '8 Rooms', '8 Rooms', '106', '1200', 7, 55, 'Mr.Crescent', 1, '2020-11-20 15:58:28', '2021-04-01 15:31:13'),
(227, '2. FIRST FLOOR', '8 Rooms', '8 Rooms', '107', '1200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(228, '2. FIRST FLOOR', '8 Rooms', '8 Rooms', '108', '1200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(229, '2. FIRST FLOOR', 'CABIN', 'CABIN', '109', '900', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(230, '2. FIRST FLOOR', 'General Ward', 'General Ward', '110', '800', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(231, '2. FIRST FLOOR', 'General Ward', 'General Ward', '111', '800', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(232, '2. FIRST FLOOR', 'General Ward', 'General Ward', '112', '800', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(233, '2. FIRST FLOOR', 'General Ward', 'General Ward', '113', '800', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(234, '2. FIRST FLOOR', 'General Ward', 'General Ward', '114', '800', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(235, '2. FIRST FLOOR', 'AC Room', 'AC Room', '115', '1500', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(236, '2. FIRST FLOOR', 'POST OP ICU', 'POST OP ICU', '117', '2500', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(237, '2. FIRST FLOOR', 'POST OP ICU', 'POST OP ICU', '118', '2500', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(238, '3. SECOND FLOOR', 'Female Ward', 'Female Ward', '201', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(239, '3. SECOND FLOOR', 'Female Ward', 'Female Ward', '202', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(240, '3. SECOND FLOOR', 'Female Ward', 'Female Ward', '203', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(241, '3. SECOND FLOOR', 'Female Ward', 'Female Ward', '204', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(242, '3. SECOND FLOOR', 'Female Ward', 'Female Ward', '205', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(243, '3. SECOND FLOOR', 'Female Ward', 'Female Ward', '206', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(244, '3. SECOND FLOOR', 'Female Ward', 'Female Ward', '207', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(245, '3. SECOND FLOOR', 'Female Ward', 'Female Ward', '208', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(246, '3. SECOND FLOOR', 'Female Ward', 'Female Ward', '209', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(247, '3. SECOND FLOOR', 'Female Ward', 'Female Ward', '210', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(248, '3. SECOND FLOOR', 'Female Ward', 'Female Ward', '211', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(249, '3. SECOND FLOOR', 'Female Ward', 'Female Ward', '212', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(250, '3. SECOND FLOOR', 'Male Ward', 'Male Ward', '213', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(251, '3. SECOND FLOOR', 'Male Ward', 'Male Ward', '214', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(252, '3. SECOND FLOOR', 'Male Ward', 'Male Ward', '215', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(253, '3. SECOND FLOOR', 'Male Ward', 'Male Ward', '216', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(254, '3. SECOND FLOOR', 'Male Ward', 'Male Ward', '217', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(255, '3. SECOND FLOOR', 'Male Ward', 'Male Ward', '218', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(256, '3. SECOND FLOOR', 'Male Ward', 'Male Ward', '219', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(257, '3. SECOND FLOOR', 'Male Ward', 'Male Ward', '220', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(258, '3. SECOND FLOOR', 'Male Ward', 'Male Ward', '221', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(259, '3. SECOND FLOOR', 'Male Ward', 'Male Ward', '222', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(260, '3. SECOND FLOOR', 'Male Ward', 'Male Ward', '223', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(261, '3. SECOND FLOOR', 'RT', 'RT', '224', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(262, '3. SECOND FLOOR', 'RT', 'RT', '225', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(263, '3. SECOND FLOOR', 'RT', 'RT', '226', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(264, '3. SECOND FLOOR', 'RT', 'RT', '227', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(265, '3. SECOND FLOOR', 'RT', 'RT', '228', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(266, '3. SECOND FLOOR', 'RT', 'RT', '229', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(267, '3. SECOND FLOOR', 'RT', 'RT', '230', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(268, '3. SECOND FLOOR', 'RT', 'RT', '231', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(269, '3. SECOND FLOOR', 'RT', 'RT', '232', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(270, '3. SECOND FLOOR', 'RT', 'RT', '233', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(271, '4. THIRD FLOOR', 'General Ward', 'General Ward', '301', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(272, '4. THIRD FLOOR', 'Cabin', 'Cabin', '302', '400', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(273, '4. THIRD FLOOR', 'Cabin', 'Cabin', '303', '500', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(274, '4. THIRD FLOOR', 'Cabin', 'Cabin', '304', '400', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(275, '4. THIRD FLOOR', 'Cabin', 'Cabin', '305', '500', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(276, '4. THIRD FLOOR', 'Cabin', 'Cabin', '306', '500', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(277, '4. THIRD FLOOR', 'Cabin', 'Cabin', '308', '500', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(278, '4. THIRD FLOOR', 'General Ward', 'General Ward', '309', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(279, '4. THIRD FLOOR', 'General Ward', 'General Ward', '310', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(280, '4. THIRD FLOOR', 'General Ward', 'General Ward', '311', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(281, '4. THIRD FLOOR', 'General Ward', 'General Ward', '312', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(282, '4. THIRD FLOOR', 'General Ward', 'General Ward', '313', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(283, '4. THIRD FLOOR', 'General Ward', 'General Ward', '314', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(284, '4. THIRD FLOOR', 'General Ward', 'General Ward', '315', '200', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(285, '5. AET FLOOR', 'General Ward', 'General Ward', '403', '300', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(286, '5. AET FLOOR', 'General Ward', 'General Ward', '404', '300', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(287, '5. AET FLOOR', 'General Ward', 'General Ward', '405', '300', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(288, '5. AET FLOOR', 'General Ward', 'General Ward', '406', '300', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(289, '5. AET FLOOR', 'General Ward', 'General Ward', '407', '300', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(290, '5. AET FLOOR', 'General Ward', 'General Ward', '408', '300', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(291, '5. AET FLOOR', 'General Ward', 'General Ward', '409', '300', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(292, '5. AET FLOOR', 'General Ward', 'General Ward', '410', '300', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(293, '5. AET FLOOR', 'General Ward', 'General Ward', '411', '300', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(294, '5. AET FLOOR', 'General Ward', 'General Ward', '402', '300', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(295, '5. AET FLOOR', 'General Ward', 'General Ward', '401', '300', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(296, '2. FIRST FLOOR', 'General Ward', 'General Ward', '112', '112', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(297, '3. SECOND FLOOR', 'Female Ward', 'Female Ward', '202', '100', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(298, 'Ground Floor', 'General', 'General', '1002', '500', NULL, NULL, '', 0, '2020-11-20 15:58:28', '2020-11-20 15:58:28'),
(300, 'Demo', 'Demo', 'De', '12', '1000', NULL, NULL, '', 0, '2021-02-11 13:16:58', '2021-02-11 13:16:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advances`
--
ALTER TABLE `advances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_id` (`ip_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  ADD KEY `doctor_timing_foreign_key` (`doctor_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_tests`
--
ALTER TABLE `group_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_admissions`
--
ALTER TABLE `ip_admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `year` (`year`),
  ADD KEY `ip_no` (`ip_no`);

--
-- Indexes for table `ip_bills`
--
ALTER TABLE `ip_bills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip_id` (`ip_id`);

--
-- Indexes for table `ip_bill_details`
--
ALTER TABLE `ip_bill_details`
  ADD KEY `bill_id` (`bill_id`);

--
-- Indexes for table `ip_discharges`
--
ALTER TABLE `ip_discharges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip_id` (`ip_id`);

--
-- Indexes for table `ip_lab_results`
--
ALTER TABLE `ip_lab_results`
  ADD UNIQUE KEY `treatment_id` (`treatment_id`);

--
-- Indexes for table `ip_lab_result_details`
--
ALTER TABLE `ip_lab_result_details`
  ADD KEY `ip_lab_result_foreign_key` (`treatment_id`);

--
-- Indexes for table `ip_treatments`
--
ALTER TABLE `ip_treatments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_id` (`ip_id`);

--
-- Indexes for table `ip_treatment_details`
--
ALTER TABLE `ip_treatment_details`
  ADD KEY `ip_id` (`ip_id`),
  ADD KEY `department` (`department`),
  ADD KEY `ip_treatment_foreign_key` (`treatment_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `op_bills`
--
ALTER TABLE `op_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `op_bill_details`
--
ALTER TABLE `op_bill_details`
  ADD KEY `op_bill_foreign_key` (`bill_id`),
  ADD KEY `department` (`department`);

--
-- Indexes for table `op_lab_results`
--
ALTER TABLE `op_lab_results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bill_id` (`bill_id`);

--
-- Indexes for table `op_lab_result_details`
--
ALTER TABLE `op_lab_result_details`
  ADD KEY `op_lab_result_foreign_key` (`bill_id`);

--
-- Indexes for table `op_registrations`
--
ALTER TABLE `op_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`,`contact_no`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_categories`
--
ALTER TABLE `test_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `login_name` (`login_name`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip_id` (`ip_id`),
  ADD UNIQUE KEY `pt_id` (`pt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advances`
--
ALTER TABLE `advances`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `group_tests`
--
ALTER TABLE `group_tests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ip_admissions`
--
ALTER TABLE `ip_admissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ip_bills`
--
ALTER TABLE `ip_bills`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ip_discharges`
--
ALTER TABLE `ip_discharges`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ip_treatments`
--
ALTER TABLE `ip_treatments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `op_bills`
--
ALTER TABLE `op_bills`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `op_lab_results`
--
ALTER TABLE `op_lab_results`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `op_registrations`
--
ALTER TABLE `op_registrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=719;

--
-- AUTO_INCREMENT for table `test_categories`
--
ALTER TABLE `test_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  ADD CONSTRAINT `doctor_timing_foreign_key` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ip_bill_details`
--
ALTER TABLE `ip_bill_details`
  ADD CONSTRAINT `foreign_key` FOREIGN KEY (`bill_id`) REFERENCES `ip_bills` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ip_lab_result_details`
--
ALTER TABLE `ip_lab_result_details`
  ADD CONSTRAINT `ip_lab_result_foreign_key` FOREIGN KEY (`treatment_id`) REFERENCES `ip_lab_results` (`treatment_id`) ON DELETE CASCADE;

--
-- Constraints for table `ip_treatment_details`
--
ALTER TABLE `ip_treatment_details`
  ADD CONSTRAINT `ip_treatment_foreign_key` FOREIGN KEY (`treatment_id`) REFERENCES `ip_treatments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `op_bill_details`
--
ALTER TABLE `op_bill_details`
  ADD CONSTRAINT `op_bill_foreign_key` FOREIGN KEY (`bill_id`) REFERENCES `op_bills` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `op_lab_result_details`
--
ALTER TABLE `op_lab_result_details`
  ADD CONSTRAINT `op_lab_result_foreign_key` FOREIGN KEY (`bill_id`) REFERENCES `op_lab_results` (`bill_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
