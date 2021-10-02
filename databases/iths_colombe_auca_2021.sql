-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 09:51 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iths_colombe_auca@2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `about`, `created_at`, `updated_at`) VALUES
(1, 'my descriptions here', '2021-09-11 09:15:39', '2021-09-11 09:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `advices`
--

CREATE TABLE `advices` (
  `id` int(10) UNSIGNED NOT NULL,
  `advice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `address`, `phone`, `email`, `contact_person_name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'DR.Gamel Hirwa |Neuro-Surgeon| KIBAGABAGA REFERAL HOSPITAL', 'KIGALI,GASABO,KIBAGABAGA', '0799237148', 'hirwagth@gmail.com', 'Hirwa Assistant', 1, '2021-09-11 09:36:31', '2021-09-13 07:54:13'),
(2, 'Dr Gwiza Pamella|General Medecine|Kibagabaga|Hospital', 'Kigali,kibagabaga-gasabo', '0788237148', 'kamiy@iths.rw', 'kamikazi  yassipi', 1, '2021-09-13 15:02:54', '2021-09-13 15:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_date_times`
--

CREATE TABLE `appointment_date_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment_date_times`
--

INSERT INTO `appointment_date_times` (`id`, `appointment_id`, `days`, `start_time`, `end_time`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Monday', '19:36:00', '22:29:00', 1, '2021-09-11 09:37:03', '2021-09-11 09:37:03'),
(2, 1, 'Saturday', '13:00:00', '14:30:00', 1, '2021-09-11 09:37:34', '2021-09-11 09:37:34'),
(3, 2, 'Monday', '09:00:00', '00:30:00', 1, '2021-09-13 15:03:17', '2021-09-13 15:03:17'),
(4, 2, 'Monday', '18:00:00', '19:30:00', 1, '2021-09-13 15:03:42', '2021-09-13 15:03:42'),
(5, 2, 'Thursday', '10:30:00', '00:30:00', 1, '2021-09-13 15:04:17', '2021-09-13 15:04:17'),
(6, 2, 'Friday', '15:00:00', '17:04:00', 1, '2021-09-13 15:04:57', '2021-09-13 15:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generic_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `name`, `generic_name`, `note`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'paracetamol', 'para xyhd', 'note for paracetamol', 1, 1, '2021-09-13 05:59:51', '2021-09-13 05:59:51'),
(2, 'coartem', 'coba-00ffh', 'nfukh', 1, 1, '2021-09-13 06:00:08', '2021-09-13 06:00:08'),
(3, 'Alacot Eye Drops', 'Olopatadine HCl', NULL, 1, 1, '2021-09-13 07:32:55', '2021-09-13 07:32:55'),
(4, 'Alatrol', 'Cetirizine HCl', NULL, 1, 1, '2021-09-13 07:33:11', '2021-09-13 07:33:11'),
(5, 'Agrizeb', 'Mancozeb', NULL, 1, 1, '2021-09-13 07:33:26', '2021-09-13 07:33:26'),
(6, 'Alacot DS Eye Drops', 'Antiallergic', NULL, 1, 1, '2021-09-13 07:33:50', '2021-09-13 07:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `drug_advices`
--

CREATE TABLE `drug_advices` (
  `id` int(10) UNSIGNED NOT NULL,
  `drug_advice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drug_advices`
--

INSERT INTO `drug_advices` (`id`, `drug_advice`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Shake before use', 1, 1, '2021-09-13 07:45:26', '2021-09-13 07:45:26'),
(2, 'Before meal', 1, 1, '2021-09-13 07:45:35', '2021-09-13 07:45:35'),
(3, 'After Meal', 1, 1, '2021-09-13 07:45:44', '2021-09-13 07:45:44'),
(4, 'Night', 1, 1, '2021-09-13 07:45:54', '2021-09-13 07:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `drug_doses`
--

CREATE TABLE `drug_doses` (
  `id` int(10) UNSIGNED NOT NULL,
  `dose` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drug_doses`
--

INSERT INTO `drug_doses` (`id`, `dose`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Morning + Noon + Night', 1, 1, '2021-09-13 07:42:15', '2021-09-13 07:42:15'),
(2, '1+0+1', 1, 1, '2021-09-13 07:42:23', '2021-09-13 07:42:23'),
(3, '1+0+0', 1, 1, '2021-09-13 07:42:34', '2021-09-13 07:42:34'),
(4, '1 + 1', 1, 1, '2021-09-13 07:42:45', '2021-09-13 07:42:45'),
(5, '1+1+0', 1, 1, '2021-09-13 07:43:02', '2021-09-13 07:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `drug_durations`
--

CREATE TABLE `drug_durations` (
  `id` int(10) UNSIGNED NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drug_durations`
--

INSERT INTO `drug_durations` (`id`, `duration`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '7 Days', 1, 1, '2021-09-13 07:44:48', '2021-09-13 07:44:48'),
(2, '10 Days', 1, 1, '2021-09-13 07:44:56', '2021-09-13 07:44:56'),
(3, '15 Days', 1, 1, '2021-09-13 07:45:04', '2021-09-13 07:45:04'),
(4, 'Continue', 1, 1, '2021-09-13 07:45:13', '2021-09-13 07:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `drug_strengths`
--

CREATE TABLE `drug_strengths` (
  `id` int(10) UNSIGNED NOT NULL,
  `strength` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drug_strengths`
--

INSERT INTO `drug_strengths` (`id`, `strength`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '5 mg', 1, 1, '2021-09-13 07:41:19', '2021-09-13 07:41:19'),
(2, '10 mg', 1, 1, '2021-09-13 07:41:34', '2021-09-13 07:41:34'),
(3, '100 mg', 1, 1, '2021-09-13 07:41:46', '2021-09-13 07:41:46'),
(4, '500 mg', 1, 1, '2021-09-13 07:41:54', '2021-09-13 07:41:54'),
(5, '250 mg', 1, 1, '2021-09-13 07:42:02', '2021-09-13 07:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `drug_types`
--

CREATE TABLE `drug_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drug_types`
--

INSERT INTO `drug_types` (`id`, `type`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Antibiotic', 1, 1, '2021-09-13 07:39:43', '2021-09-13 07:39:43'),
(2, 'Heroin', 1, 1, '2021-09-13 07:40:02', '2021-09-13 07:40:02'),
(3, 'Injection', 1, 1, '2021-09-13 07:40:14', '2021-09-13 07:40:14'),
(4, 'NONO1', 1, 1, '2021-09-13 07:40:26', '2021-09-13 07:40:26'),
(5, 'Alargic', 1, 1, '2021-09-13 07:40:43', '2021-09-13 07:40:43'),
(6, 'Tab. Vertin', 1, 1, '2021-09-13 07:40:51', '2021-09-13 07:40:51'),
(7, 'Paracetamol', 1, 1, '2021-09-13 07:41:07', '2021-09-13 07:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` double NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_details`
--

CREATE TABLE `fee_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `fee_id` int(11) NOT NULL,
  `fee` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_01_121933_create_drug_types_table', 1),
(4, '2017_10_01_121955_create_drug_strengths_table', 1),
(5, '2017_10_01_122008_create_drugs_table', 1),
(6, '2017_10_01_122039_create_patients_table', 1),
(7, '2017_10_01_122207_create_prescription_templates_table', 1),
(8, '2017_10_01_122257_create_prescription_template_drugs_table', 1),
(9, '2017_10_01_123254_create_prescription_template_lefts_table', 1),
(10, '2017_10_01_123309_create_prescriptions_table', 1),
(11, '2017_10_01_123315_create_prescription_drugs_table', 1),
(12, '2017_10_01_123323_create_prescription_lefts_table', 1),
(13, '2017_10_01_123407_create_advices_table', 1),
(14, '2017_10_01_123533_create_patient_documents_table', 1),
(15, '2017_10_01_123708_create_appointments_table', 1),
(16, '2017_10_01_123801_create_fees_table', 1),
(17, '2017_10_01_131228_create_appointment_date_times_table', 1),
(18, '2017_10_01_131558_create_fee_details_table', 1),
(19, '2017_10_10_143448_create_patient_appointments_table', 1),
(20, '2017_10_10_230447_create_patient_payments_table', 1),
(21, '2017_10_13_020835_create_drug_doses_table', 1),
(22, '2017_10_13_021029_create_drug_durations_table', 1),
(23, '2017_10_13_021041_create_drug_advices_table', 1),
(24, '2017_10_17_135311_create_abouts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@iths.com', '$2y$10$ZLnL8OjzIqyWwI9QpSHnb.udgrR8l0l.39heGCL65Tv2/cWQ7wNw.', '2021-09-11 08:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `gender`, `date_of_birth`, `image`, `email`, `address`, `phone`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'RUGWIZA EMMILLIA', 2, '1990-09-17', 'uploads/patient\\845448.png', 'emmillia@gmail.com', 'Gasabo,Kimironko,rwankeli 1', '0788237140', 1, 1, '2021-09-11 09:33:59', '2021-09-13 04:51:30'),
(5, 'IZABAYO YVES', 1, '1993-09-10', 'uploads/patient\\624734.jpeg', 'yvesiz@gmail.com', 'kigali,kimihurura', '0785103020', 1, 1, '2021-09-11 13:58:54', '2021-09-11 13:58:54'),
(12, 'Murenzi  Abdallah', 1, '1987-09-09', 'uploads/patient\\425975.jpeg', 'mugishajc@iths.rw', 'Kigali,Gasabo,Kimihurura', '0782016513', 1, 1, '2021-09-13 07:23:29', '2021-09-13 07:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `patient_appointments`
--

CREATE TABLE `patient_appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_appointments`
--

INSERT INTO `patient_appointments` (`id`, `patient_id`, `appointment_id`, `date`, `time`, `note`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-09-11', '13:37:00', 'IT\'S AN URGENT TRANSFER PLEASE', 0, 1, '2021-09-11 09:38:14', '2021-09-11 09:38:14'),
(2, 5, 1, '2021-09-13', '09:57:00', 'general medecine', 0, 1, '2021-09-13 05:57:59', '2021-09-13 05:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `patient_documents`
--

CREATE TABLE `patient_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(11) NOT NULL,
  `prescription_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_documents`
--

INSERT INTO `patient_documents` (`id`, `patient_id`, `prescription_id`, `type`, `path`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, 'uploads/medical_files\\758856.png', 2, '2021-09-11 09:45:37', '2021-09-11 09:45:37'),
(2, 12, 0, 1, 'uploads/medical_files\\150078.png', 1, '2021-09-13 07:24:05', '2021-09-13 07:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `patient_payments`
--

CREATE TABLE `patient_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(11) NOT NULL,
  `patient_appointment_id` int(11) DEFAULT NULL,
  `payment` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_payments`
--

INSERT INTO `patient_payments` (`id`, `patient_id`, `patient_appointment_id`, `payment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5000, 1, '2021-09-11 09:38:14', '2021-09-11 09:38:14'),
(2, 5, 2, 1000, 1, '2021-09-13 05:57:59', '2021-09-13 05:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(11) NOT NULL,
  `prescription_template_id` int(11) DEFAULT NULL,
  `prescription_date` date NOT NULL,
  `next_visit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_drugs`
--

CREATE TABLE `prescription_drugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strength` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_lefts`
--

CREATE TABLE `prescription_lefts` (
  `id` int(10) UNSIGNED NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `cc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lab_workup` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_templates`
--

CREATE TABLE `prescription_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_template_drugs`
--

CREATE TABLE `prescription_template_drugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `prescription_template_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strength` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_template_lefts`
--

CREATE TABLE `prescription_template_lefts` (
  `id` int(10) UNSIGNED NOT NULL,
  `prescription_template_id` int(11) NOT NULL,
  `cc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lab_workup` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `info`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'MUMPOREZE COLOMBE', 'admin@iths.com', '$2y$10$nttefsuQqlZCVq8Bo3auV.HbQBS6mfvoGm7wvx1cwTamy6BrytWDO', 'uploads/assistant\\238404.jpeg', 'Super Admin', '0788237148', 'KIgali,Gasabo,Kibagabaga', 1, 1, 'JLeIlZ3kddpkhJ0eyTmLltK9g2IvD5NurHh74nAY3LLBR22LGTe9XcwRNb0Q', '2021-09-11 08:53:20', '2021-09-11 09:28:19'),
(2, 'GASANA ERIC', 'eric@gmail.com', '$2y$10$btdpSwXWidOqvH/TF8p2nu3kmJBQE.VyFWoRJ/25lUv/bnSHZZMky', 'uploads/assistant\\666809.jpeg', 'assistant ', '0782016513', 'KIgali,Kicukiro,Kagarama', 2, 1, 'W5esveHhn6T2ll4Kp5aKt2lnWozgf7ujLQOPAqIX7aVZEHf3kJP9C3CunNxN', '2021-09-11 09:31:55', '2021-09-11 09:31:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advices`
--
ALTER TABLE `advices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment_date_times`
--
ALTER TABLE `appointment_date_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_advices`
--
ALTER TABLE `drug_advices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_doses`
--
ALTER TABLE `drug_doses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_durations`
--
ALTER TABLE `drug_durations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_strengths`
--
ALTER TABLE `drug_strengths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_types`
--
ALTER TABLE `drug_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_details`
--
ALTER TABLE `fee_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_appointments`
--
ALTER TABLE `patient_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_documents`
--
ALTER TABLE `patient_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_payments`
--
ALTER TABLE `patient_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription_drugs`
--
ALTER TABLE `prescription_drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription_lefts`
--
ALTER TABLE `prescription_lefts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription_templates`
--
ALTER TABLE `prescription_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription_template_drugs`
--
ALTER TABLE `prescription_template_drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription_template_lefts`
--
ALTER TABLE `prescription_template_lefts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advices`
--
ALTER TABLE `advices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointment_date_times`
--
ALTER TABLE `appointment_date_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `drug_advices`
--
ALTER TABLE `drug_advices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `drug_doses`
--
ALTER TABLE `drug_doses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `drug_durations`
--
ALTER TABLE `drug_durations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `drug_strengths`
--
ALTER TABLE `drug_strengths`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `drug_types`
--
ALTER TABLE `drug_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_details`
--
ALTER TABLE `fee_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `patient_appointments`
--
ALTER TABLE `patient_appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_documents`
--
ALTER TABLE `patient_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_payments`
--
ALTER TABLE `patient_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription_drugs`
--
ALTER TABLE `prescription_drugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription_lefts`
--
ALTER TABLE `prescription_lefts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription_templates`
--
ALTER TABLE `prescription_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription_template_drugs`
--
ALTER TABLE `prescription_template_drugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription_template_lefts`
--
ALTER TABLE `prescription_template_lefts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
