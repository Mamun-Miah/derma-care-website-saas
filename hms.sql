-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2025 at 08:32 AM
-- Server version: 8.0.44-0ubuntu0.24.04.2
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `Advice`
--

CREATE TABLE `Advice` (
  `id` int NOT NULL,
  `advice` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Advice`
--

INSERT INTO `Advice` (`id`, `advice`) VALUES
(1, 'Take after meal'),
(2, 'Wash your face gently twice a day — don’t over-wash.'),
(3, 'Use sunscreen daily, even on cloudy days.'),
(4, 'Stay hydrated — drink plenty of water.'),
(5, 'Avoid excessive sun exposure, tanning beds, and harsh chemicals.'),
(6, 'Eat a balanced diet rich in fruits, vegetables, and whole grains.'),
(7, 'Manage stress — stress can worsen skin problems like eczema or acne.'),
(8, 'Avoid smoking and limit alcohol — both harm skin and overall health.'),
(9, 'Persistent skin rashes, itching, or unexplained changes in moles.'),
(10, 'Any unusual swelling, lumps, or skin infections.');

-- --------------------------------------------------------

--
-- Table structure for table `AppointmentRequest`
--

CREATE TABLE `AppointmentRequest` (
  `id` int NOT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `treatmentName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PENDING','CONFIRMED','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AppointmentRequest`
--

INSERT INTO `AppointmentRequest` (`id`, `fullName`, `email`, `phoneNumber`, `dateOfBirth`, `gender`, `date`, `address`, `treatmentName`, `notes`, `status`, `createdAt`, `updatedAt`) VALUES
(8, 'Md. Emanul Islam', 'info.emanulislam@gmail.com', '+8801740643268', '1983-02-13', 'Male', '2025-11-23', 'Pallabi, Mirpur', 'Doctor Consultation', 'Skin Problem', 'PENDING', '2025-11-22 16:00:54.112', '2025-11-22 16:00:54.112'),
(9, 'Rachel Cannon', 'geco@mailinator.com', '+1 (938) 348-2511', '2012-06-10', 'Other', '2022-02-26', 'In assumenda necessi', 'Glutathione Miracle2', 'Delectus fugiat un', 'PENDING', '2025-12-03 08:56:18.819', '2025-12-03 08:56:18.819'),
(10, 'Amaya Bell', 'vexekyju@mailinator.com', '+1 (616) 512-3195', '1980-09-18', 'Male', '1996-03-10', 'Quisquam sapiente iu', 'Chemical Peeling Uner Arm', 'Accusamus voluptas m', 'PENDING', '2025-12-04 08:05:19.016', '2025-12-04 08:05:19.016');

-- --------------------------------------------------------

--
-- Table structure for table `Doctor`
--

CREATE TABLE `Doctor` (
  `doctor_id` int NOT NULL,
  `doctor_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialization` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` longtext COLLATE utf8mb4_unicode_ci,
  `state_province` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_fee` decimal(10,2) DEFAULT NULL,
  `status` enum('Active','Suspended','Retired') COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `short_bio` longtext COLLATE utf8mb4_unicode_ci,
  `blood_group` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yrs_of_experience` int DEFAULT NULL,
  `license_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`doctor_id`, `doctor_image`, `doctor_name`, `specialization`, `email`, `phone_number`, `address_line1`, `city`, `designation`, `state_province`, `postal_code`, `doctor_fee`, `status`, `gender`, `date_of_birth`, `short_bio`, `blood_group`, `yrs_of_experience`, `license_number`, `created_at`, `updated_at`) VALUES
(1, 'http://localhost:3000/api/images/019752c1-cde0-47f5-8f70-e68039506e23-favicon.png', 'Raymond Banks', 'Gastroenterologist', 'vytutehahe@mailinator.com', '652', 'Dolorem vero corrupt', 'Voluptatum dicta lab', 'At occaecat beatae o', 'Qui qui possimus ne', '3', 45.00, 'Active', 'Female', '1972-03-15', 'Duis exercitation fa', 'A-', 58, '550', '2025-10-07 14:44:00.446', '2025-10-07 14:44:00.446'),
(2, 'https://hms.drsdermabd.com/api/images/ec63252d-0bea-4527-9aea-6620f66141b3-hero_bg_1_1.png', 'Levi Parks', 'Endocrinologist', 'ryhega@mailinator.com', '111', 'Unde doloribus quis ', 'Similique neque veni', 'Culpa esse saepe ul', 'Voluptatem aperiam ', '92', 10.00, 'Active', 'Male', '2003-08-27', 'Suscipit suscipit it', 'B-', 77, '560', '2025-10-08 04:37:42.208', '2025-10-08 04:37:42.208'),
(3, 'https://hms.drsdermabd.com/api/images/5f0d1d02-f337-437e-a359-cc6a957566b2-elise-mosca.jpeg', 'Ulysses Buck', 'Cardiologist', 'lobapo@mailinator.com', '671', 'Architecto veniam c', 'Saepe amet consecte', 'Dolorum quo sit ex ', 'Rem velit enim est f', '73', 34.00, 'Active', 'Female', '1974-11-07', 'Qui id consequatur ', 'O+', 43, '298', '2025-10-08 05:00:50.748', '2025-10-08 05:00:50.748'),
(4, '', 'Dr Rahnuma Raihan Shuchi', 'Dermatologist', '', '01797548566', 'Mohammadia Housing Society', 'Dhaka', '', '', '1207', 1000.00, 'Active', 'Female', NULL, NULL, 'O+', NULL, NULL, '2025-10-18 08:32:08.469', '2025-10-18 08:32:08.469'),
(5, '', 'Dr. Ruhul Amin Tuhin', 'Dermatologist', 'ruhulamintuhin22@gmail.com', '01717627183', '', 'Dhaka', 'Masters in Aesthetic Dermatology, DOC (Skin and Venerology)', '', NULL, 1000.00, 'Active', 'Male', NULL, NULL, 'O+', NULL, NULL, '2025-10-25 11:58:59.992', '2025-10-25 11:58:59.992'),
(6, '', 'Dr. Md Riad Arefin', 'Dermatologist', 'dr.riaddjmc@gmail.com', '01710585108', '', 'Dhaka', 'MBBS, Dip Derm (UK)', '', NULL, 1000.00, 'Active', 'Male', NULL, NULL, 'A+', NULL, NULL, '2025-10-25 14:01:56.735', '2025-10-25 14:01:56.735'),
(7, '', 'Dr. Hafsa Raka', 'Dermatologist', 'rajobi.raka@gmail.com', '01788592172', '', 'Dhaka', 'MBBS, Masters in Aesthetic Dermatology', '', NULL, 1000.00, 'Active', 'Female', NULL, NULL, 'A+', NULL, NULL, '2025-10-27 10:51:44.964', '2025-10-27 10:51:44.964'),
(8, '', 'Dr. Tahera Akhter', '', 'taheranahid@gmail.com', '01780809094', '', 'Dhaka', 'MBBS, MS', '', NULL, 1000.00, 'Active', 'Female', '1984-05-01', NULL, 'A+', NULL, 'A-49249', '2025-10-29 11:45:43.193', '2025-10-29 11:45:43.193');

-- --------------------------------------------------------

--
-- Table structure for table `DoctorAwardsAndRecognitionInfo`
--

CREATE TABLE `DoctorAwardsAndRecognitionInfo` (
  `id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` datetime(3) DEFAULT NULL,
  `to_date` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `DoctorAwardsAndRecognitionInfo`
--

INSERT INTO `DoctorAwardsAndRecognitionInfo` (`id`, `doctor_id`, `name`, `institution`, `from_date`, `to_date`) VALUES
(1, 1, 'Candace Molina', 'Qui quia magna labor', '2018-09-23 00:00:00.000', '2025-10-02 00:00:00.000'),
(2, 2, 'Caldwell Irwin', 'Unde repellendus Ac', '1999-05-01 00:00:00.000', '1991-08-23 00:00:00.000'),
(3, 3, 'Cameran Clayton', 'Cum quod non quod in', '1991-09-24 00:00:00.000', '2010-03-22 00:00:00.000');

-- --------------------------------------------------------

--
-- Table structure for table `DoctorCertificationInfo`
--

CREATE TABLE `DoctorCertificationInfo` (
  `id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` datetime(3) DEFAULT NULL,
  `to_date` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `DoctorCertificationInfo`
--

INSERT INTO `DoctorCertificationInfo` (`id`, `doctor_id`, `name`, `institution`, `from_date`, `to_date`) VALUES
(1, 1, 'Brent Cole', 'Exercitationem dolor', '1978-08-01 00:00:00.000', '1995-12-10 00:00:00.000'),
(2, 2, 'Rachel Mcdonald', 'Consequatur voluptas', '1995-11-15 00:00:00.000', '2015-07-11 00:00:00.000'),
(3, 3, 'Dylan Jennings', 'Sint laborum labore ', '2006-12-29 00:00:00.000', '1975-12-07 00:00:00.000');

-- --------------------------------------------------------

--
-- Table structure for table `DoctorEducationalInfo`
--

CREATE TABLE `DoctorEducationalInfo` (
  `id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` datetime(3) DEFAULT NULL,
  `to_date` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `DoctorEducationalInfo`
--

INSERT INTO `DoctorEducationalInfo` (`id`, `doctor_id`, `name`, `institution`, `from_date`, `to_date`) VALUES
(1, 1, 'Finn Mcintyre', 'Dolore nihil eum acc', '1982-07-27 00:00:00.000', '1987-06-06 00:00:00.000'),
(2, 2, 'Stephen Mcpherson', 'Aut beatae omnis par', '1983-06-03 00:00:00.000', '2012-07-26 00:00:00.000'),
(3, 3, 'Remedios Figueroa', 'Mollitia non dolor c', '2003-12-02 00:00:00.000', '2000-04-08 00:00:00.000');

-- --------------------------------------------------------

--
-- Table structure for table `Invoice`
--

CREATE TABLE `Invoice` (
  `invoice_id` int NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` int NOT NULL,
  `doctor_id` int DEFAULT NULL,
  `prescription_id` int NOT NULL,
  `payment_method` enum('Bkash','Cash') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` enum('Partial','Full','Due') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` int DEFAULT '0',
  `invoice_creation_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `total_treatment_cost` int DEFAULT NULL,
  `paid_amount` int DEFAULT NULL,
  `doctor_fee` int DEFAULT NULL,
  `due_amount` int DEFAULT NULL,
  `next_session_date` datetime(3) DEFAULT NULL,
  `previous_session_date` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Invoice`
--

INSERT INTO `Invoice` (`invoice_id`, `invoice_number`, `patient_id`, `doctor_id`, `prescription_id`, `payment_method`, `payment_type`, `previous_due`, `invoice_creation_date`, `total_treatment_cost`, `paid_amount`, `doctor_fee`, `due_amount`, `next_session_date`, `previous_session_date`, `updated_at`) VALUES
(5, 'INV-2025-7-8', 7, 1, 5, 'Cash', 'Full', 0, '2025-10-13 06:30:36.814', 0, 45, 45, 0, '2017-09-03 00:00:00.000', NULL, '2025-10-18 10:45:33.823'),
(6, 'INV-2025-10-16', 10, 4, 6, 'Cash', 'Full', 0, '2025-10-18 08:41:33.561', 0, 5000, 0, -5000, NULL, NULL, '2025-10-25 09:34:17.237'),
(7, 'INV-2025-17-24', 17, 4, 7, 'Cash', 'Full', 0, '2025-10-25 12:03:21.544', 6000, 6000, 0, 0, NULL, NULL, '2025-10-25 12:19:37.854'),
(8, 'INV-2025-15-23', 15, 1, 8, NULL, NULL, 0, '2025-10-25 12:45:56.219', 0, 0, 0, 0, NULL, NULL, '2025-10-25 12:45:56.220'),
(9, 'INV-2025-15-24', 15, 1, 9, NULL, NULL, 0, '2025-10-25 12:47:01.753', 0, 0, 0, 0, NULL, NULL, '2025-10-25 12:47:01.754'),
(10, 'INV-2025-18-28', 18, 5, 10, 'Bkash', 'Full', 0, '2025-10-25 14:19:17.458', 4000, 4000, 0, 0, NULL, NULL, '2025-10-25 14:22:09.166'),
(11, 'INV-2025-18-29', 18, 5, 11, 'Bkash', 'Full', 0, '2025-10-25 14:26:03.566', 4000, 4000, 0, 0, NULL, NULL, '2025-10-25 14:34:46.796'),
(12, 'INV-2025-25-37', 25, 5, 12, NULL, NULL, 0, '2025-10-27 11:39:21.122', 0, 0, 0, 0, '2025-11-10 00:00:00.000', NULL, '2025-10-27 11:39:21.123'),
(13, 'INV-2025-28-41', 28, 7, 13, 'Cash', 'Full', 0, '2025-10-29 12:01:28.008', 9500, 9500, 0, 0, '2025-11-05 00:00:00.000', NULL, '2025-10-29 12:08:18.728'),
(14, 'INV-2025-15-29', 15, 2, 14, 'Cash', 'Full', 0, '2025-11-02 05:54:49.844', 6800, 6809, 9, 0, NULL, NULL, '2025-11-02 05:55:17.132'),
(15, 'INV-2025-12-27', 12, 5, 15, NULL, NULL, 0, '2025-11-03 06:09:39.371', 0, 0, 1000, 0, '2005-10-26 00:00:00.000', NULL, '2025-11-03 06:09:39.372'),
(16, 'INV-2025-35-51', 35, 5, 16, 'Cash', 'Full', 0, '2025-11-12 12:54:47.420', 4000, 4000, 0, 0, NULL, NULL, '2025-12-01 13:10:38.743');

-- --------------------------------------------------------

--
-- Table structure for table `InvoiceTreatment`
--

CREATE TABLE `InvoiceTreatment` (
  `invoice_treatment_id` int NOT NULL,
  `invoice_id` int NOT NULL,
  `treatment_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `InvoiceTreatment`
--

INSERT INTO `InvoiceTreatment` (`invoice_treatment_id`, `invoice_id`, `treatment_id`) VALUES
(9, 6, 9),
(10, 7, 14),
(11, 7, 16),
(12, 7, 17),
(13, 7, 43),
(14, 10, 10),
(15, 11, 10),
(16, 13, 44),
(17, 14, 18),
(18, 16, 14);

-- --------------------------------------------------------

--
-- Table structure for table `Medicine`
--

CREATE TABLE `Medicine` (
  `medicine_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Medicine`
--

INSERT INTO `Medicine` (`medicine_id`, `name`, `brand_name`, `quantity`, `created_at`, `updated_at`) VALUES
(18, 'GM Trum (Anti Acne Serum)', 'GM Trade', NULL, '2025-10-13 06:07:03.029', '2025-10-13 06:07:03.029'),
(19, 'G Acne Gel', 'GM Trade', NULL, '2025-10-13 06:07:31.301', '2025-10-13 06:07:31.301'),
(20, 'GM 60 (Skin Rejuvenating Face wash)', 'GM Trade', NULL, '2025-10-13 06:07:41.430', '2025-10-13 06:07:41.430'),
(21, 'GM TAR Shampoo (Psoriasis & Seborrheic Dermatitis)', 'GM Trade', NULL, '2025-10-13 06:07:51.046', '2025-10-13 06:07:51.046'),
(22, 'GT KIT Shampoo (Ketoconazole, Biotin etc)', 'GM Trade', NULL, '2025-10-13 06:08:03.599', '2025-10-13 06:08:03.599'),
(23, 'Sealer Cream (For Crack heel)', 'GM Trade', NULL, '2025-10-13 06:08:13.659', '2025-10-13 06:08:13.659'),
(24, 'Siodil Glycolic Brightening Cleanser ( Normal skin)', 'Siodil', NULL, '2025-10-13 06:08:42.659', '2025-10-13 06:08:42.659'),
(25, 'Siodil Sebi Cleanser (Acne)', 'Siodil', NULL, '2025-10-13 06:08:55.149', '2025-10-13 06:08:55.149'),
(26, 'Siodil Ato Gel ( Prevent Dryness)', 'Siodil', NULL, '2025-10-13 06:09:07.382', '2025-10-13 06:09:07.382'),
(27, 'Siodil Ato mist Gel (Provide Moisture)', 'Siodil', NULL, '2025-10-13 06:09:15.979', '2025-10-13 06:09:15.979'),
(28, 'Siodil Follixil Shampoo (Promote Hair Growth and prevent Hair loss)', 'Siodil', NULL, '2025-10-13 06:09:32.090', '2025-10-13 06:09:32.090'),
(29, 'Siodil B Biotin Shampoo (Strengthen Hair Follicle)', 'Siodil', NULL, '2025-10-13 06:09:43.864', '2025-10-13 06:09:43.864'),
(30, 'Siodil Blue Shampoo (Ketoconazole)', 'Siodil', NULL, '2025-10-13 06:09:52.640', '2025-10-13 06:09:52.640'),
(31, 'SAM Moist Cream (Normal to Dry Skin)', 'SAM', NULL, '2025-10-13 06:10:19.657', '2025-10-13 06:10:19.657'),
(32, 'SAM Aloe Gel (For oily Skin)', 'SAM', NULL, '2025-10-13 06:10:31.674', '2025-10-13 06:10:31.674'),
(33, 'SAM Sunscreen (Cream based normal to dry skin)', 'SAM', NULL, '2025-10-13 06:10:44.197', '2025-10-13 06:10:44.197'),
(34, 'SAM BPO + Cleanser (Oily and acne prone skin)', 'SAM', NULL, '2025-10-13 06:10:54.208', '2025-10-13 06:10:54.208'),
(35, 'SAM moist cleanser (Dry cleanser)', 'SAM', NULL, '2025-10-13 06:11:04.245', '2025-10-13 06:11:04.245'),
(36, 'SAM Koji Serum (Brightening)', 'SAM', NULL, '2025-10-13 06:11:20.535', '2025-10-13 06:11:20.535'),
(37, 'SAM Keto Plus Shampoo (Ketoconazol)', 'SAM', NULL, '2025-10-13 06:11:30.339', '2025-10-13 06:11:30.339'),
(38, 'SAM Nail repair Serum (Onychomycosis)', 'SAM', NULL, '2025-10-13 06:11:43.199', '2025-10-13 06:11:43.199'),
(39, 'SAM Koji Bar.', 'SAM', NULL, '2025-10-13 06:11:56.630', '2025-10-13 06:11:56.630'),
(40, 'SLC Face Wash', 'Inovative Health Care(SLC)', NULL, '2025-10-13 06:13:17.858', '2025-10-13 06:13:17.858'),
(41, 'NCL sun-protect lotion ', 'Inovative Health Care(SLC)', NULL, '2025-10-13 06:13:26.220', '2025-10-13 06:13:26.220'),
(42, 'Nemus C serum ', 'Inovative Health Care(SLC)', NULL, '2025-10-13 06:13:32.613', '2025-10-13 06:13:32.613'),
(43, 'Nemus hair Serum', 'Inovative Health Care(SLC)', NULL, '2025-10-13 06:13:40.752', '2025-10-13 06:13:40.752'),
(44, 'Derma Sunlock Spray SPF50+', 'Derma health care', NULL, '2025-10-13 06:14:03.226', '2025-10-13 06:14:03.226'),
(45, 'Derma C Serum', 'Derma health care', NULL, '2025-10-13 06:14:31.757', '2025-10-13 06:14:31.757'),
(46, 'Derma Night Cream', 'Derma health care', NULL, '2025-10-13 06:14:41.870', '2025-10-13 06:14:41.870'),
(47, 'D Acnilite Foaming Facewash', 'Derma health care', NULL, '2025-10-13 06:14:51.871', '2025-10-13 06:14:51.871'),
(48, 'Remedist Aqua Moist Gel', 'Remedist', NULL, '2025-10-13 06:15:07.299', '2025-10-13 06:15:07.299'),
(49, 'Remedist Acne Serum', 'Remedist', NULL, '2025-10-13 06:15:45.462', '2025-10-13 06:15:45.462'),
(50, 'Remedist Niacinamide Face Wash', 'Remedist', NULL, '2025-10-13 06:15:58.102', '2025-10-13 06:15:58.102'),
(51, 'Remedist Age Reversible Face Serum', 'Remedist', NULL, '2025-10-13 06:16:10.383', '2025-10-13 06:16:10.383'),
(52, 'Trio white Serum', 'Noreva', NULL, '2025-10-13 06:17:01.765', '2025-10-13 06:17:01.765'),
(53, 'Exfoliating Face serum', 'Noreva', NULL, '2025-10-13 06:17:34.490', '2025-10-13 06:17:34.490'),
(54, 'Emolent Lotion', '', NULL, '2025-10-25 12:02:11.748', '2025-10-25 12:02:11.748'),
(55, 'Bioprem 5 mg', '', NULL, '2025-10-25 14:07:20.896', '2025-10-25 14:07:20.896'),
(56, 'Splendora 5% Hair Spray', '', NULL, '2025-10-25 14:08:34.209', '2025-10-25 14:08:34.209'),
(57, 'Picnogenol', '', NULL, '2025-10-27 11:29:41.207', '2025-10-27 11:29:41.207'),
(58, 'Dema koj lotion', '', NULL, '2025-10-27 11:31:22.434', '2025-10-27 11:31:22.434'),
(59, 'derma koj lotion', '', NULL, '2025-10-27 11:33:58.282', '2025-10-27 11:33:58.282'),
(60, 'Vitathione Cream', '', NULL, '2025-10-29 11:58:56.203', '2025-10-29 11:58:56.203'),
(61, 'Siodil Brightening Serum', '', NULL, '2025-11-12 12:52:36.235', '2025-11-12 12:52:36.235');

-- --------------------------------------------------------

--
-- Table structure for table `Patient`
--

CREATE TABLE `Patient` (
  `patient_id` int NOT NULL,
  `patient_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_province` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set_next_appoinmnet` date DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `emergency_contact_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Suspended','Deactivated') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `treatment_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` enum('Single','Married','Divorced','Widowed') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Patient`
--

INSERT INTO `Patient` (`patient_id`, `patient_name`, `mobile_number`, `email`, `date_of_birth`, `gender`, `address_line1`, `city`, `state_province`, `set_next_appoinmnet`, `postal_code`, `age`, `blood_group`, `weight`, `emergency_contact_phone`, `status`, `image_url`, `note`, `treatment_name`, `marital_status`, `created_at`, `updated_at`) VALUES
(1, 'Naomi Freeman', '774', 'zexufidi@mailinator.com', '1988-12-14', 'Female', 'Iste omnis consectet', 'Autem incididunt cup', 'Velit iusto est unde', '2025-10-08', 'Aspernatur quae quae', '24', 'AB-', 62.00, '936', 'Active', NULL, 'Consequuntur sequi m', NULL, 'Widowed', '2025-10-08 04:59:32.052', '2025-10-08 05:03:08.784'),
(2, 'Naomi Marks', '931', 'syqox@mailinator.com', '2002-03-12', 'Male', 'Dolores ullamco in l', 'Culpa recusandae S', 'Cumque proident dol', '2025-10-08', 'Voluptates quia labo', '24', 'AB+', 49.00, '330', 'Deactivated', NULL, 'Debitis expedita qui', NULL, 'Divorced', '2025-10-08 05:19:20.006', '2025-10-08 05:22:41.729'),
(3, 'MD Rumi', '01923236097', 'mdrumi@gmail.com', '1995-10-31', 'Male', '', NULL, NULL, '2025-10-08', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, '', 'Facial', NULL, '2025-10-08 05:36:43.756', '2025-10-08 05:36:43.756'),
(4, 'MD Mamun', '01923236087', 'mamun123@gmail.com', '1995-10-10', 'Male', '', NULL, NULL, '2025-10-20', NULL, '25', NULL, NULL, NULL, 'Active', NULL, '', 'Laser Skin Resurfacing', 'Single', '2025-10-08 07:16:14.010', '2025-10-20 04:59:25.518'),
(5, 'dev-sweet', '01727724844', 'sweetali0520@gmail.com', '2000-10-08', 'Male', 'Uttara, Dhaka', NULL, NULL, '2025-10-08', NULL, NULL, NULL, NULL, NULL, 'Deactivated', NULL, 'Need premium facial\n', 'Facial', NULL, '2025-10-08 08:15:44.229', '2025-10-08 08:19:04.097'),
(6, 'Rumman', '01313715905', 'palashroy607@gmail.com', '1992-12-10', 'Male', '27,Moharaza Road', NULL, NULL, '2025-10-11', NULL, '31', NULL, NULL, NULL, 'Deactivated', NULL, 'Hair Fall', 'Hair Treatment', 'Married', '2025-10-11 13:35:40.429', '2025-10-11 13:42:56.043'),
(7, 'Signe White', '593', 'gabo@mailinator.com', '1985-09-29', 'Male', 'Minim laboriosam si', 'Eveniet fuga Iusto', 'In incididunt pariat', '2025-10-13', 'Neque fugiat dolorem', '38', 'O+', 57.00, '393', 'Deactivated', NULL, 'Vel molestiae dolori', NULL, 'Married', '2025-10-13 04:41:31.034', '2025-10-13 06:30:36.821'),
(8, 'Mostafa Faisal', '01326677199', 'mostafa123@gmail.com', NULL, 'Male', '', NULL, NULL, '2025-10-15', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, '', 'Microneddling with PRP Face', NULL, '2025-10-14 12:26:41.989', '2025-10-14 12:26:41.989'),
(9, 'Prodip', '01670049514', '', NULL, 'Male', '', '', '', '2025-10-18', '', '40', '', NULL, '', 'Active', NULL, '', NULL, 'Married', '2025-10-18 08:20:05.370', '2025-10-18 08:20:05.370'),
(10, 'Azra Nusrat Aoyshe', '01306177629', '', NULL, 'Female', '', '', '', '2025-10-18', '', '23', '', NULL, '', 'Deactivated', NULL, '', NULL, 'Single', '2025-10-18 08:22:27.683', '2025-10-18 08:41:33.568'),
(11, 'Piyasha Rahman', '01842674799', '', NULL, 'Female', '', '', '', '2025-10-18', '', '34', '', NULL, '', 'Active', NULL, '', NULL, 'Single', '2025-10-18 10:33:46.284', '2025-10-18 10:33:46.284'),
(12, 'Test', '01111111111111', 'test1@gmail.com', NULL, NULL, '', NULL, NULL, '2025-11-03', NULL, '25', NULL, NULL, NULL, 'Deactivated', NULL, '', 'PRP Therapy', NULL, '2025-10-18 10:42:31.330', '2025-11-03 06:09:39.377'),
(13, 'Arman Hossan', '01812034553', '', NULL, 'Male', '', '', '', '2025-10-18', '', '32', '', NULL, '', 'Active', NULL, '', NULL, 'Single', '2025-10-18 10:44:37.364', '2025-10-18 10:44:37.364'),
(14, 'Test', '0130303030', 'test@gmail.com', '2025-10-25', 'Male', 'Hi', NULL, NULL, '2025-10-31', NULL, '34', NULL, NULL, NULL, 'Active', NULL, 'Test', 'Laser Skin Resurfacing', NULL, '2025-10-25 09:27:01.767', '2025-10-25 09:28:18.214'),
(15, 'Rumman', '01797144119', '', NULL, 'Male', '', '', '', '2025-11-02', '', '32', '', NULL, '', 'Deactivated', NULL, 'hair treatment', NULL, NULL, '2025-10-25 09:30:06.469', '2025-11-02 05:54:49.849'),
(16, 'khadija', '01884129653', '', NULL, 'Female', '', '', '', '2025-10-25', '', '22', '', NULL, '', 'Active', NULL, '', NULL, NULL, '2025-10-25 09:36:38.967', '2025-10-25 09:36:38.967'),
(17, 'Homaira Ashrafi', '01787703682', '', NULL, 'Female', '', '', '', '2025-10-25', '', '29', '', NULL, '', 'Deactivated', NULL, '', NULL, NULL, '2025-10-25 11:26:27.834', '2025-10-25 12:03:21.859'),
(18, 'Alvee', '01829411022', '', NULL, 'Male', '', '', '', '2025-10-25', '', '33', '', NULL, '', 'Deactivated', NULL, '', NULL, NULL, '2025-10-25 12:35:42.199', '2025-10-25 14:26:03.572'),
(19, 'Debosree banik ', '01765029249', '', NULL, 'Female', '', '', '', '2025-10-25', '', '30', '', NULL, '', 'Active', NULL, 'consultation', NULL, NULL, '2025-10-25 12:45:09.049', '2025-10-25 12:45:09.049'),
(20, 'Tamanna choudhury ', '01911093276', '', NULL, 'Other', '', '', '', '2025-10-27', '', '38', '', NULL, '', 'Deactivated', NULL, '', NULL, NULL, '2025-10-25 12:58:32.840', '2025-10-27 06:48:20.239'),
(21, 'Monira', '01777942112', '', NULL, 'Female', '', '', '', '2025-10-27', '', '35', '', NULL, '', 'Active', NULL, '', NULL, NULL, '2025-10-27 10:19:44.849', '2025-10-27 10:19:44.849'),
(22, 'Tanvir', '01711234567', '', NULL, 'Male', '', '', '', '2025-10-27', '', '25', '', NULL, '', 'Active', NULL, '', NULL, NULL, '2025-10-27 10:22:45.247', '2025-10-27 10:22:45.247'),
(23, 'Aysha', '01839958443', '', NULL, 'Female', '', '', '', '2025-10-27', '', '23', '', NULL, '', 'Active', NULL, '', NULL, NULL, '2025-10-27 10:42:36.660', '2025-10-27 10:42:36.660'),
(24, 'Ayesha', '01749564843', '', NULL, 'Female', '', '', '', '2025-10-27', '', '23', '', NULL, '', 'Active', NULL, '', NULL, NULL, '2025-10-27 10:44:00.869', '2025-10-27 10:44:00.869'),
(25, 'Shompa', '01826307611', '', NULL, 'Female', '', '', '', '2025-10-28', '', '46', '', NULL, '', 'Active', NULL, '', NULL, NULL, '2025-10-27 11:13:12.466', '2025-10-28 06:42:58.440'),
(26, 'Md Abu Muhit', '01859387139', '', NULL, 'Male', '', '', '', '2025-10-29', '', '40', '', NULL, '', 'Active', NULL, 'consultation ', NULL, NULL, '2025-10-29 11:43:44.780', '2025-10-29 11:43:44.780'),
(27, 'Akllima', '01618741113', '', NULL, 'Female', '', '', '', '2025-10-29', '', '38', '', NULL, '', 'Active', NULL, 'glutathione +hair prp', NULL, NULL, '2025-10-29 11:45:13.907', '2025-10-29 11:45:13.907'),
(28, 'Dr Tashfi', '019692780004', '', NULL, 'Female', '', '', '', '2025-10-29', '', '30', '', NULL, '', 'Deactivated', NULL, 'Glutathione', NULL, NULL, '2025-10-29 11:46:25.330', '2025-10-29 12:01:28.014'),
(29, 'Lovely', '01718612821', '', NULL, 'Female', '', '', '', '2025-10-29', '', '55', '', NULL, '', 'Active', NULL, 'Filler', NULL, NULL, '2025-10-29 11:47:18.994', '2025-10-29 11:47:18.994'),
(30, 'Sharmin Azad ', '01616024332', '', NULL, 'Female', '', '', '', '2025-10-29', '', '28', '', NULL, '', 'Active', NULL, 'Consultation', NULL, NULL, '2025-10-29 11:48:28.352', '2025-10-29 11:48:28.352'),
(31, 'Morsheda Mim', '01568665640', '', NULL, 'Female', '', '', '', '2025-11-12', '', '34', '', NULL, '', 'Active', NULL, 'PRP', NULL, NULL, '2025-11-12 12:04:25.761', '2025-11-12 12:04:25.761'),
(32, 'Noyon', '01521465863', '', NULL, 'Male', '', '', '', '2025-11-12', '', '32', '', NULL, '', 'Active', NULL, '', NULL, NULL, '2025-11-12 12:05:29.664', '2025-11-12 12:05:29.664'),
(33, 'Atik', '01715660195', '', NULL, 'Male', '', '', '', '2025-11-12', '', '42', '', NULL, '', 'Active', NULL, '', NULL, NULL, '2025-11-12 12:06:51.168', '2025-11-12 12:06:51.168'),
(34, 'Oishi', '01670600067', '', NULL, 'Female', '', '', '', '2025-11-12', '', '23', '', NULL, '', 'Active', NULL, '', NULL, 'Single', '2025-11-12 12:10:55.044', '2025-11-12 12:10:55.044'),
(35, 'Ibadul Islam', '01740369161', '', NULL, 'Male', '', '', '', '2025-11-12', '', '32', '', NULL, '', 'Deactivated', NULL, '', NULL, 'Married', '2025-11-12 12:14:27.556', '2025-11-12 12:54:47.427'),
(36, ' Mizan', '01608833821', '', NULL, 'Male', '', '', '', '2025-11-13', '', '27', '', NULL, '', 'Active', NULL, 'hair prp', NULL, NULL, '2025-11-13 10:48:18.285', '2025-11-13 10:48:18.285'),
(37, 'Mymuna', '01816135090', '', NULL, 'Female', '', '', '', '2025-12-03', '', '55', '', NULL, '', 'Active', NULL, 'Hair prp', NULL, NULL, '2025-11-13 10:52:25.572', '2025-12-03 08:58:11.119');

-- --------------------------------------------------------

--
-- Table structure for table `PatientWeightHistory`
--

CREATE TABLE `PatientWeightHistory` (
  `id` int NOT NULL,
  `weight` decimal(5,2) NOT NULL,
  `recorded_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `patient_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PatientWeightHistory`
--

INSERT INTO `PatientWeightHistory` (`id`, `weight`, `recorded_at`, `patient_id`) VALUES
(1, 62.00, '2025-10-08 04:59:32.056', 1),
(2, 49.00, '2025-10-08 05:19:20.011', 2),
(3, 57.00, '2025-10-13 04:41:31.037', 7);

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE `Permission` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`id`, `name`, `description`, `createdAt`, `updatedAt`) VALUES
(20, 'add-doctor', 'Add Doctor', '2025-08-19 16:01:41.000', '2025-08-19 16:01:41.000'),
(21, 'add-patient', 'Add Patient', '2025-08-19 16:01:41.000', '2025-08-19 16:01:41.000'),
(22, 'delete-patient', 'Delete Patient', '2025-08-19 16:01:41.000', '2025-08-19 16:01:41.000'),
(23, 'add-medicine', 'Add Medicine', '2025-08-19 16:01:41.000', '2025-08-19 16:01:41.000'),
(24, 'add-treatment', 'Add Treatment', '2025-08-19 16:01:41.000', '2025-08-19 16:01:41.000'),
(25, 'todays-appointment', 'Today\'s Appointment', '2025-08-19 16:01:41.000', '2025-08-19 16:01:41.000'),
(26, 'prescription-list', 'Prescription List', '2025-08-19 16:01:41.000', '2025-08-19 16:01:41.000'),
(27, 'invoice', 'Invoice', '2025-08-19 16:01:41.000', '2025-08-19 16:01:41.000'),
(28, 'next-appointment', 'Next Appointment', '2025-08-19 16:01:41.000', '2025-08-19 16:01:41.000'),
(29, 'patient-history', 'Patient History', '2025-08-19 16:01:41.000', '2025-08-19 16:01:41.000'),
(30, 'create-role', 'Create Role', '2025-08-25 16:05:32.000', '2025-08-25 16:05:32.000'),
(31, 'edit-role', 'Edit Role', '2025-08-25 16:05:32.000', '2025-08-25 16:05:32.000'),
(32, 'delete-role', 'Delete Role', '2025-08-25 16:05:32.000', '2025-08-25 16:05:32.000'),
(33, 'add-new-role', 'Add New Role', '2025-08-25 16:05:32.000', '2025-08-25 16:05:32.000'),
(34, 'all-staff', 'All Staff', '2025-08-25 16:05:32.000', '2025-08-25 16:05:32.000'),
(35, 'edit-staff', 'Edit Staff', '2025-08-25 16:05:32.000', '2025-08-25 16:05:32.000'),
(36, 'delete-staff', 'Delete Staff', '2025-08-25 16:05:32.000', '2025-08-25 16:05:32.000'),
(37, 'add-new-staff', 'Add New Staff', '2025-08-25 16:05:32.000', '2025-08-25 16:05:32.000'),
(38, 'appoinment-request', '', '2025-09-25 11:33:09.000', '2025-09-25 11:33:09.000'),
(39, 'advise-list', NULL, '2025-10-16 07:16:35.000', '2025-10-16 07:16:35.000'),
(40, 'treatment-list', NULL, '2025-10-16 07:18:20.000', '2025-10-16 07:18:20.000'),
(41, 'medicine-list', NULL, '2025-10-16 07:19:02.000', '2025-10-16 07:19:02.000'),
(42, 'doctor-list', NULL, '2025-10-16 07:19:36.000', '2025-10-16 07:19:36.000'),
(43, 'dashboard', NULL, '2025-10-16 07:20:04.000', '2025-10-16 07:20:04.000');

-- --------------------------------------------------------

--
-- Table structure for table `Prescription`
--

CREATE TABLE `Prescription` (
  `prescription_id` int NOT NULL,
  `patient_id` int DEFAULT NULL,
  `prescription_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` int DEFAULT NULL,
  `total_cost` int NOT NULL,
  `prescribed_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `is_prescribed` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `is_drs_derma` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `next_visit_date` date DEFAULT NULL,
  `advise` text COLLATE utf8mb4_unicode_ci,
  `prescribed_doctor_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `doctor_discount_type` enum('None','Flat','Percentage') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_discount_value` double DEFAULT NULL,
  `payable_doctor_amount` double DEFAULT NULL,
  `chief_complaint_cc` text COLLATE utf8mb4_unicode_ci,
  `drug_history_dh` text COLLATE utf8mb4_unicode_ci,
  `relevant_findings_rf` text COLLATE utf8mb4_unicode_ci,
  `on_examination_oe` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Prescription`
--

INSERT INTO `Prescription` (`prescription_id`, `patient_id`, `prescription_number`, `doctor_id`, `total_cost`, `prescribed_at`, `is_prescribed`, `is_drs_derma`, `next_visit_date`, `advise`, `prescribed_doctor_name`, `doctor_discount_type`, `doctor_discount_value`, `payable_doctor_amount`, `chief_complaint_cc`, `drug_history_dh`, `relevant_findings_rf`, `on_examination_oe`, `image`, `updated_at`) VALUES
(5, 7, 'PRX-2025-1-7-1', 1, 45, '2025-10-13 06:30:36.804', 'Yes', 'Yes', '2017-09-03', 'Aliquip exercitation. Use sunscreen daily, even on cloudy days.', 'Raymond Banks', 'Flat', 0, 45, 'Reprehenderit est ', 'Qui eligendi sequi e', 'Ipsum dolorem debit', 'Praesentium ex esse', '', '2025-10-13 06:30:36.805'),
(6, 10, 'PRX-2025-6-10-4', 4, 5000, '2025-10-18 08:41:33.514', 'Yes', 'Yes', NULL, '', 'Dr Rahnuma Raihan Shuchi', 'Percentage', 100, 0, 'Under Eye dark circle for 1 year\nDullness of skin for 1 year', NULL, 'B/M - Regular\nS/C - Regular\nM/C - Regular', NULL, '', '2025-10-18 08:41:33.515'),
(7, 17, 'PRX-2025-7-17-4', 4, 6000, '2025-10-25 12:03:20.596', 'Yes', 'Yes', NULL, '', 'Dr Rahnuma Raihan Shuchi', 'Percentage', 100, 0, 'Hyperpigmentation of skin for 1 year\nDullness of skin for 1 year', 'N/A', 'S/C- Regular\nM/C - Regular\nM/S- Married\nB/M- Regular', NULL, '', '2025-10-25 12:03:20.598'),
(8, 15, 'PRX-2025-8-15-1', 1, 0, '2025-10-25 12:45:56.205', 'Yes', 'No', NULL, '', 'N/A', 'None', 0, 0, NULL, NULL, NULL, NULL, '', '2025-10-25 12:45:56.206'),
(9, 15, 'PRX-2025-9-15-1', 1, 0, '2025-10-25 12:47:01.733', 'Yes', 'No', NULL, '', 'N/A', 'None', 0, 0, NULL, NULL, NULL, NULL, '', '2025-10-25 12:47:01.735'),
(10, 18, 'PRX-2025-10-18-5', 5, 4000, '2025-10-25 14:19:17.415', 'Yes', 'Yes', NULL, '', 'Dr. Ruhul Amin Tuhin', 'Percentage', 100, 0, 'Hair fall for few years, Dandruff for few years', NULL, NULL, NULL, '', '2025-10-25 14:19:17.416'),
(11, 18, 'PRX-2025-11-18-5', 5, 4000, '2025-10-25 14:26:03.529', 'Yes', 'Yes', NULL, '', 'Dr. Ruhul Amin Tuhin', 'Percentage', 100, 0, 'Hair fall for few years, Dandruff for few years', NULL, NULL, NULL, '', '2025-10-25 14:26:03.530'),
(12, 25, 'PRX-2025-12-25-5', 5, 6000, '2025-10-27 11:39:21.076', 'Yes', 'Yes', '2025-11-10', '', 'Dr. Ruhul Amin Tuhin', 'Percentage', 100, 0, 'Hyper pigmentation of Skin for few years, Uneven Skin tone for few years', NULL, NULL, NULL, '', '2025-10-27 11:39:21.077'),
(13, 28, 'PRX-2025-13-28-7', 7, 9500, '2025-10-29 12:01:27.975', 'Yes', 'Yes', '2025-11-05', '', 'Dr. Hafsa Raka', 'Percentage', 100, 0, 'Hyperpigmentation of Skin for few years,\nDullness of Skin for few years', 'N/A', 'DM- -\nHTN- -\nM/C- Regular\nS/C- Regular\nB/M- Regular', NULL, '', '2025-10-29 12:01:27.976'),
(14, 15, 'PRX-2025-14-15-2', 2, 6809, '2025-11-02 05:54:49.815', 'Yes', 'Yes', NULL, '', 'Levi Parks', 'Percentage', 2, 9.8, NULL, NULL, NULL, NULL, '', '2025-11-02 05:54:49.816'),
(15, 12, 'PRX-2025-15-12-5', 5, 1000, '2025-11-03 06:09:39.353', 'Yes', 'No', '2005-10-26', 'Commodo velit conseq. Take after meal', 'Dr. Ruhul Amin Tuhin', 'Flat', 0, 1000, 'Doloremque sit expl', 'Optio culpa dolor ', 'Impedit ut ullamco ', 'Debitis necessitatib', '', '2025-11-03 06:09:39.354'),
(16, 35, 'PRX-2025-16-35-5', 5, 4000, '2025-11-12 12:54:47.363', 'Yes', 'Yes', NULL, '', 'Dr. Ruhul Amin Tuhin', 'Percentage', 100, 0, 'Post Acne Spot, Hyperpigmentation', 'N/A', 'B/H - Regular\n', 'Dullness of Skin, Hyperpigmentation on skin.', '', '2025-11-12 12:54:47.365');

-- --------------------------------------------------------

--
-- Table structure for table `PrescriptionItem`
--

CREATE TABLE `PrescriptionItem` (
  `item_id` int NOT NULL,
  `prescription_id` int NOT NULL,
  `medicine_id` int DEFAULT NULL,
  `dose_morning` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose_mid_day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose_night` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_days` int DEFAULT NULL,
  `treatmentlistTreatment_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PrescriptionTreatmentItem`
--

CREATE TABLE `PrescriptionTreatmentItem` (
  `id` int NOT NULL,
  `prescription_id` int NOT NULL,
  `treatment_id` int NOT NULL,
  `patient_id` int NOT NULL,
  `session_number` int DEFAULT '1',
  `discount_type` enum('None','Flat','Percentage') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'None',
  `discount_value` double NOT NULL DEFAULT '0',
  `payable_treatment_amount` double NOT NULL DEFAULT '0',
  `next_treatment_session_interval_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL,
  `prescriptionItemItem_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PrescriptionTreatmentItem`
--

INSERT INTO `PrescriptionTreatmentItem` (`id`, `prescription_id`, `treatment_id`, `patient_id`, `session_number`, `discount_type`, `discount_value`, `payable_treatment_amount`, `next_treatment_session_interval_date`, `created_at`, `updated_at`, `prescriptionItemItem_id`) VALUES
(5, 6, 7, 10, 1, 'Percentage', 50, 5000, '08-11-2025', '2025-10-18 08:41:33.546', '2025-10-18 08:41:33.546', NULL),
(6, 6, 9, 10, 1, 'Percentage', 100, 0, '08-11-2025', '2025-10-18 08:41:33.552', '2025-10-18 08:41:33.552', NULL),
(7, 7, 14, 17, 1, 'Percentage', 50, 4000, '08-11-2025', '2025-10-25 12:03:21.415', '2025-10-25 12:03:21.415', NULL),
(8, 7, 16, 17, 1, 'Flat', 6000, 2000, '08-11-2025', '2025-10-25 12:03:21.424', '2025-10-25 12:03:21.424', NULL),
(9, 7, 17, 17, 1, 'Percentage', 100, 0, '08-11-2025', '2025-10-25 12:03:21.431', '2025-10-25 12:03:21.431', NULL),
(10, 7, 43, 17, 1, 'Percentage', 100, 0, '01-11-2025', '2025-10-25 12:03:21.444', '2025-10-25 12:03:21.444', NULL),
(11, 10, 10, 18, 1, 'Percentage', 50, 4000, '15-11-2025', '2025-10-25 14:19:17.445', '2025-10-25 14:19:17.445', NULL),
(12, 11, 10, 18, 1, 'Percentage', 50, 4000, '15-11-2025', '2025-10-25 14:26:03.558', '2025-10-25 14:26:03.558', NULL),
(13, 12, 14, 25, 1, 'Flat', 2000, 6000, '10-11-2025', '2025-10-27 11:39:21.113', '2025-10-27 11:39:21.113', NULL),
(14, 13, 44, 28, 1, 'Flat', 4500, 9500, '05-11-2025', '2025-10-29 12:01:28.000', '2025-10-29 12:01:28.000', NULL),
(15, 14, 18, 15, 1, 'Percentage', 15, 6800, '16-11-2025', '2025-11-02 05:54:49.836', '2025-11-02 05:54:49.836', NULL),
(16, 16, 14, 35, 1, 'Percentage', 50, 4000, '26-11-2025', '2025-11-12 12:54:47.410', '2025-11-12 12:54:47.410', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`id`, `name`, `description`, `createdAt`, `updatedAt`) VALUES
(12, 'Super Admin', NULL, '2025-08-22 06:29:07.153', '2025-08-22 06:29:07.153'),
(30, 'Doctor', NULL, '2025-08-25 11:43:51.282', '2025-09-10 05:11:16.569'),
(31, 'Nurse', NULL, '2025-09-25 05:24:02.500', '2025-09-25 05:24:02.500'),
(32, 'Receptionist', NULL, '2025-10-11 13:32:11.297', '2025-10-27 06:12:43.944');

-- --------------------------------------------------------

--
-- Table structure for table `RolePermission`
--

CREATE TABLE `RolePermission` (
  `id` int NOT NULL,
  `roleId` int NOT NULL,
  `permissionId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `RolePermission`
--

INSERT INTO `RolePermission` (`id`, `roleId`, `permissionId`) VALUES
(97, 12, 20),
(98, 12, 21),
(99, 12, 22),
(100, 12, 23),
(101, 12, 24),
(102, 12, 25),
(103, 12, 26),
(104, 12, 27),
(105, 12, 28),
(106, 12, 29),
(218, 12, 30),
(219, 12, 31),
(220, 12, 32),
(221, 12, 33),
(226, 12, 34),
(223, 12, 35),
(224, 12, 36),
(225, 12, 37),
(332, 12, 38),
(340, 12, 39),
(341, 12, 40),
(342, 12, 41),
(343, 12, 42),
(344, 12, 43),
(321, 30, 20),
(322, 30, 21),
(323, 30, 22),
(324, 30, 23),
(325, 30, 24),
(326, 30, 25),
(327, 30, 26),
(328, 30, 27),
(329, 30, 28),
(330, 31, 38),
(346, 32, 21),
(347, 32, 26),
(348, 32, 27),
(349, 32, 28),
(350, 32, 29),
(345, 32, 38);

-- --------------------------------------------------------

--
-- Table structure for table `Treatmentlist`
--

CREATE TABLE `Treatmentlist` (
  `treatment_id` int NOT NULL,
  `treatment_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `treatment_session_interval` int DEFAULT NULL,
  `duration_months` int NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Treatmentlist`
--

INSERT INTO `Treatmentlist` (`treatment_id`, `treatment_name`, `total_cost`, `treatment_session_interval`, `duration_months`, `created_at`, `updated_at`) VALUES
(7, 'Microneddling with PRP Face', 10000.00, 21, 6, '2025-10-13 05:36:18.745', '2025-10-13 05:36:18.745'),
(8, 'Microoneedling with PRP with Subcission Face', 12000.00, 21, 6, '2025-10-13 05:38:17.708', '2025-10-13 05:38:17.708'),
(9, 'Under Eye PRP', 6000.00, 21, 6, '2025-10-13 05:38:42.117', '2025-10-13 05:38:42.117'),
(10, 'Hair PRP', 8000.00, 21, 6, '2025-10-13 05:39:45.906', '2025-10-13 05:39:45.906'),
(11, 'Exosome Therapy Hair', 30000.00, 14, 4, '2025-10-13 05:40:36.115', '2025-10-13 05:40:36.115'),
(12, 'Exosome Therapy Face', 28000.00, 14, 4, '2025-10-13 05:41:04.703', '2025-10-13 05:41:04.703'),
(13, 'Under Eye Chemical Peeling', 5000.00, 21, 6, '2025-10-13 05:41:34.552', '2025-10-13 05:41:34.552'),
(14, 'Chemical Peeling Face', 8000.00, 14, 6, '2025-10-13 05:42:35.515', '2025-10-13 05:42:35.515'),
(15, 'Chemical Peeling Lips', 5000.00, 14, 6, '2025-10-13 05:43:42.962', '2025-10-13 05:43:42.962'),
(16, 'Chemical Peeling Neck', 8000.00, 14, 6, '2025-10-13 05:45:39.251', '2025-10-13 05:45:39.251'),
(17, 'Chemical Peeling Uner Arm', 5000.00, 14, 6, '2025-10-13 05:46:56.539', '2025-10-13 05:46:56.539'),
(18, 'Chemical Peeling Both Hand', 8000.00, 14, 6, '2025-10-13 05:47:27.681', '2025-10-13 05:47:27.681'),
(19, 'Chemical Peeling Both Leg', 12000.00, 14, 6, '2025-10-13 05:47:53.941', '2025-10-13 05:47:53.941'),
(20, 'Chemical Peeling V Area', 8000.00, 14, 6, '2025-10-13 05:48:16.383', '2025-10-13 05:48:16.383'),
(21, 'Chemical Peeling Nipple Area', 5000.00, 14, 6, '2025-10-13 05:48:40.183', '2025-10-13 05:48:40.183'),
(22, 'Melasma Injection', 12000.00, 14, 6, '2025-10-13 05:49:01.836', '2025-10-13 05:49:01.836'),
(23, 'Hydra Regular', 5000.00, 21, 1, '2025-10-13 05:49:42.570', '2025-10-13 05:49:42.570'),
(24, 'Hydra with Glow', 8000.00, 21, 1, '2025-10-13 05:50:26.023', '2025-10-13 05:50:26.023'),
(25, 'Oxygeno Facial', 8000.00, 28, 1, '2025-10-13 05:50:52.560', '2025-10-13 05:50:52.560'),
(26, 'Carbon Peeling', 8000.00, 21, 6, '2025-10-13 05:51:30.811', '2025-10-13 05:51:30.811'),
(27, 'HIFU Face', 8000.00, 14, 6, '2025-10-13 05:52:11.897', '2025-10-13 05:52:11.897'),
(28, 'Hair Removal Laser Face', 8000.00, 14, 12, '2025-10-13 05:53:02.376', '2025-10-13 05:53:02.376'),
(29, 'Hair Removal Both Hand', 8000.00, 14, 12, '2025-10-13 05:53:29.377', '2025-10-13 05:53:29.377'),
(30, 'Hair Removal Under Arm', 8000.00, 14, 12, '2025-10-13 05:53:57.760', '2025-10-13 05:53:57.760'),
(31, 'Hair Removal Both Leg', 12000.00, 14, 12, '2025-10-13 05:54:24.239', '2025-10-13 05:54:24.239'),
(32, 'Hair Removal V area', 8000.00, 14, 12, '2025-10-13 05:54:56.538', '2025-10-13 05:54:56.538'),
(33, 'P Shot', 12000.00, 21, 6, '2025-10-13 05:55:22.522', '2025-10-13 05:55:22.522'),
(34, 'O Shot', 12000.00, 21, 6, '2025-10-13 05:55:48.390', '2025-10-13 05:55:48.390'),
(35, 'Dermal Filler 1st 1ml', 20000.00, 0, 1, '2025-10-13 05:56:46.169', '2025-10-13 05:56:46.169'),
(36, 'Dermal Filler next 1ml', 15000.00, 0, 1, '2025-10-13 05:57:08.640', '2025-10-13 05:57:08.640'),
(37, 'BOTOX Forehead', 15000.00, 0, 1, '2025-10-13 05:57:25.143', '2025-10-13 05:57:25.143'),
(38, 'Thread Lifting Face', 30000.00, 0, 1, '2025-10-13 05:58:04.960', '2025-10-13 05:58:04.960'),
(39, 'Thread Lifting Breast', 80000.00, 0, 1, '2025-10-13 05:58:50.536', '2025-10-13 05:58:50.536'),
(40, 'Glutathione IV Glutax 1', 10000.00, 7, 12, '2025-10-13 05:59:13.193', '2025-10-13 05:59:13.193'),
(41, 'Glutathione IV Glutax 2', 12000.00, 7, 12, '2025-10-13 06:00:05.173', '2025-10-13 06:00:05.173'),
(42, 'Glutathione IV Glutax 3', 15000.00, 12, 12, '2025-10-13 06:00:26.574', '2025-10-13 06:00:26.574'),
(43, 'Glutathione Miracle1', 12000.00, 7, 12, '2025-10-13 06:01:09.324', '2025-10-13 06:01:09.324'),
(44, 'Glutathione Miracle2', 14000.00, 7, 12, '2025-10-13 06:01:35.499', '2025-10-13 06:01:35.499'),
(45, 'IPL Phototherapy Face', 8000.00, 14, 4, '2025-10-13 06:02:07.973', '2025-10-13 06:02:07.973'),
(46, 'Mesotherapy Face', 8000.00, 21, 6, '2025-10-13 06:02:44.347', '2025-10-13 06:02:44.347'),
(47, 'Fat Reduction 1st 1 Vial', 20000.00, 14, 6, '2025-10-13 06:03:15.724', '2025-10-13 06:03:15.724'),
(48, 'Fat Reduction next Vial', 18000.00, 14, 6, '2025-10-13 06:04:46.122', '2025-10-13 06:04:46.122'),
(49, 'Electrodesication', 20000.00, 1, 1, '2025-10-13 06:05:10.264', '2025-10-13 06:05:10.264'),
(50, 'Electrocauterization Assistant fee', 1000.00, 0, 1, '2025-10-13 06:05:52.849', '2025-10-13 06:05:52.849'),
(51, 'Doctor Consultation', 1000.00, 0, 1, '2025-10-13 06:06:14.632', '2025-10-13 06:06:14.632');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `name`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(16, 'DR Mamun', 'admin6@gmail.com', '$2b$10$6jo36ZZGqztyvZ6yV1mFDutRge3rEz821Mfhr1QlLTjPD/UokyLXS', '2025-08-25 09:17:32.611', '2025-09-10 05:05:25.071'),
(25, 'Doctor Mamun', 'doctor1@gmail.com', '$2b$10$d60sEfDV6FLjtzNu0HNcn.R20roTwU6jGB6qUZY4zwnT6MzJwXbKi', '2025-08-25 11:44:01.989', '2025-10-11 13:39:42.724'),
(26, 'Nurse', 'nurse@gmail.com', '$2b$10$5rVTpGCNmQkGNJhSYfzSM.RY/tkG62/6.kq9M.GqDpTUZtCTPkuNa', '2025-09-25 05:46:07.875', '2025-09-25 05:46:07.875'),
(27, 'Khadiza', 'arishad054@gmail.com', '$2b$10$S/Jxo3ltUA.F6Sw80HcxnuLaZh9V02k0a.7m3NPxpbU5A33vTS4rW', '2025-10-11 13:34:38.061', '2025-10-25 09:38:17.375'),
(28, 'Dr.Ruhul Amin', 'ruhulamintuhin22@gmail.com', '$2b$10$i44MoQVAYufUEohe2sebPOO3Rai8l0XUI6L59Y7cQ5vcg/Caqwkoe', '2025-10-25 11:56:20.835', '2025-10-25 11:56:20.835');

-- --------------------------------------------------------

--
-- Table structure for table `UserRole`
--

CREATE TABLE `UserRole` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `roleId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UserRole`
--

INSERT INTO `UserRole` (`id`, `userId`, `roleId`) VALUES
(20, 16, 12),
(32, 25, 30),
(30, 26, 31),
(33, 27, 32),
(34, 28, 30);

-- --------------------------------------------------------

--
-- Table structure for table `UserToken`
--

CREATE TABLE `UserToken` (
  `id` int NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenHash` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiresAt` datetime(3) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UserToken`
--

INSERT INTO `UserToken` (`id`, `username`, `token`, `tokenHash`, `expiresAt`, `email`, `phone_number`, `createdAt`, `updatedAt`) VALUES
(1, 'MD RUMI', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2Ryc2Rlcm1hYmQuY29tIiwiaWF0IjoxNzU5OTAyMzI3LCJuYmYiOjE3NTk5MDIzMjcsImV4cCI6MTc2MDUwNzEyNywiZGF0YSI6eyJ1c2VyIjp7ImlkIjoiMTAifX19.ilxnK783jX9u2iTmdoqfDUZK9y1ywNL_AcNv9Ohodjk', '5f08fe772ffffe291416cee76dea5ae36cad704a9329a9f07a5f7db39d3e7a0b', '2025-10-08 06:45:27.094', 'rumi0192323@gmail.com', '01923236075', '2025-10-08 05:45:27.107', '2025-10-08 05:45:27.107'),
(11, 'test user', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2Ryc2Rlcm1hYmQuY29tIiwiaWF0IjoxNzU5OTAzODE2LCJuYmYiOjE3NTk5MDM4MTYsImV4cCI6MTc2MDUwODYxNiwiZGF0YSI6eyJ1c2VyIjp7ImlkIjoiMTIifX19.flNZ0AEv769_r7c1I7FczDasbWEGB7ltUu_IMLJR0KA', '690943b6e80984a1050879d7f9d1f0ca46a1b2ae6c82db93d234b95fb81b8e61', '2025-10-08 07:10:16.652', 'dev@gmail.com', '0172829821', '2025-10-08 06:10:16.661', '2025-10-08 06:10:16.661'),
(30, 'dev-sweet', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2Ryc2Rlcm1hYmQuY29tIiwiaWF0IjoxNzU5OTEwODQ0LCJuYmYiOjE3NTk5MTA4NDQsImV4cCI6MTc2MDUxNTY0NCwiZGF0YSI6eyJ1c2VyIjp7ImlkIjoiOSJ9fX0.h8MSh2Hz7GcO2-um1x5VbeJQFvQD_26bv3F3YWFYU-U', '222443ca86baeaec72ec9c0426d957fc48b7d19dd8877d676087f9c51c29905c', '2025-10-08 09:07:24.187', 'sweetali0520@gmail.com', '01727724844', '2025-10-08 08:07:24.197', '2025-10-08 08:07:24.197'),
(31, 'MD Mamun', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2Ryc2Rlcm1hYmQuY29tIiwiaWF0IjoxNzU5OTEzMDcyLCJuYmYiOjE3NTk5MTMwNzIsImV4cCI6MTc2MDUxNzg3MiwiZGF0YSI6eyJ1c2VyIjp7ImlkIjoiMTEifX19.BLeAoUbVjd4y4yd_QrwpSU1zk79us8NEFsEuSRPZUsM', '80db99169e34d7ec01219ef296976ecfe57d35719966805efa8dd79a4d73d82b', '2025-10-08 09:44:32.715', 'mamun123@gmail.com', '01923236087', '2025-10-08 08:44:32.722', '2025-10-08 08:44:32.722'),
(33, 'Sweet Ali', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2Ryc2Rlcm1hYmQuY29tIiwiaWF0IjoxNzYxODE0MDI5LCJuYmYiOjE3NjE4MTQwMjksImV4cCI6MTc2MjQxODgyOSwiZGF0YSI6eyJ1c2VyIjp7ImlkIjoiMyJ9fX0.OCyOOOdqpjO0wT3FC37YYGCMtlCdBhJGxr9RoHDD1Ss', '9cce2d728c41b82b247c99f483d53a16ba7f2a1344d463c44573a70fce5caaa8', '2025-10-30 09:47:09.536', 'sweet@gmail.com', '01620173655', '2025-10-30 08:47:09.542', '2025-10-30 08:47:09.542'),
(36, 'Mamun', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2Ryc2Rlcm1hYmQuY29tIiwiaWF0IjoxNzY0ODQxMjgyLCJuYmYiOjE3NjQ4NDEyODIsImV4cCI6MTc2NTQ0NjA4MiwiZGF0YSI6eyJ1c2VyIjp7ImlkIjoiMiJ9fX0.0zRXMYnH_UInHMACH1J1FVm2Zyd5Z2ZUE_sLOYHKwv8', '3c95c8621c3b1bdf897999931d605c9aa55f9f0c737de8642b925baf03da0e46', '2025-12-04 10:41:23.031', 'mamun@gmail.com', '01620173656', '2025-12-04 09:41:23.039', '2025-12-04 09:41:23.039');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Advice`
--
ALTER TABLE `Advice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AppointmentRequest`
--
ALTER TABLE `AppointmentRequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `DoctorAwardsAndRecognitionInfo`
--
ALTER TABLE `DoctorAwardsAndRecognitionInfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DoctorAwardsAndRecognitionInfo_doctor_id_fkey` (`doctor_id`);

--
-- Indexes for table `DoctorCertificationInfo`
--
ALTER TABLE `DoctorCertificationInfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DoctorCertificationInfo_doctor_id_fkey` (`doctor_id`);

--
-- Indexes for table `DoctorEducationalInfo`
--
ALTER TABLE `DoctorEducationalInfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DoctorEducationalInfo_doctor_id_fkey` (`doctor_id`);

--
-- Indexes for table `Invoice`
--
ALTER TABLE `Invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD UNIQUE KEY `Invoice_invoice_number_key` (`invoice_number`),
  ADD KEY `Invoice_patient_id_fkey` (`patient_id`),
  ADD KEY `Invoice_doctor_id_fkey` (`doctor_id`),
  ADD KEY `Invoice_prescription_id_fkey` (`prescription_id`);

--
-- Indexes for table `InvoiceTreatment`
--
ALTER TABLE `InvoiceTreatment`
  ADD PRIMARY KEY (`invoice_treatment_id`),
  ADD KEY `InvoiceTreatment_invoice_id_fkey` (`invoice_id`),
  ADD KEY `InvoiceTreatment_treatment_id_fkey` (`treatment_id`);

--
-- Indexes for table `Medicine`
--
ALTER TABLE `Medicine`
  ADD PRIMARY KEY (`medicine_id`);

--
-- Indexes for table `Patient`
--
ALTER TABLE `Patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD UNIQUE KEY `Patient_mobile_number_key` (`mobile_number`);

--
-- Indexes for table `PatientWeightHistory`
--
ALTER TABLE `PatientWeightHistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PatientWeightHistory_patient_id_fkey` (`patient_id`);

--
-- Indexes for table `Permission`
--
ALTER TABLE `Permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Permission_name_key` (`name`);

--
-- Indexes for table `Prescription`
--
ALTER TABLE `Prescription`
  ADD PRIMARY KEY (`prescription_id`),
  ADD UNIQUE KEY `Prescription_prescription_number_key` (`prescription_number`),
  ADD KEY `Prescription_patient_id_fkey` (`patient_id`),
  ADD KEY `Prescription_doctor_id_fkey` (`doctor_id`);

--
-- Indexes for table `PrescriptionItem`
--
ALTER TABLE `PrescriptionItem`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `PrescriptionItem_prescription_id_fkey` (`prescription_id`),
  ADD KEY `PrescriptionItem_medicine_id_fkey` (`medicine_id`),
  ADD KEY `PrescriptionItem_treatmentlistTreatment_id_fkey` (`treatmentlistTreatment_id`);

--
-- Indexes for table `PrescriptionTreatmentItem`
--
ALTER TABLE `PrescriptionTreatmentItem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PrescriptionTreatmentItem_prescription_id_fkey` (`prescription_id`),
  ADD KEY `PrescriptionTreatmentItem_patient_id_fkey` (`patient_id`),
  ADD KEY `PrescriptionTreatmentItem_treatment_id_fkey` (`treatment_id`),
  ADD KEY `PrescriptionTreatmentItem_prescriptionItemItem_id_fkey` (`prescriptionItemItem_id`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Role_name_key` (`name`);

--
-- Indexes for table `RolePermission`
--
ALTER TABLE `RolePermission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `RolePermission_roleId_permissionId_key` (`roleId`,`permissionId`),
  ADD KEY `RolePermission_permissionId_fkey` (`permissionId`);

--
-- Indexes for table `Treatmentlist`
--
ALTER TABLE `Treatmentlist`
  ADD PRIMARY KEY (`treatment_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_email_key` (`email`);

--
-- Indexes for table `UserRole`
--
ALTER TABLE `UserRole`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UserRole_userId_roleId_key` (`userId`,`roleId`),
  ADD KEY `UserRole_roleId_fkey` (`roleId`);

--
-- Indexes for table `UserToken`
--
ALTER TABLE `UserToken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UserToken_tokenHash_key` (`tokenHash`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Advice`
--
ALTER TABLE `Advice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `AppointmentRequest`
--
ALTER TABLE `AppointmentRequest`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Doctor`
--
ALTER TABLE `Doctor`
  MODIFY `doctor_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `DoctorAwardsAndRecognitionInfo`
--
ALTER TABLE `DoctorAwardsAndRecognitionInfo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `DoctorCertificationInfo`
--
ALTER TABLE `DoctorCertificationInfo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `DoctorEducationalInfo`
--
ALTER TABLE `DoctorEducationalInfo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Invoice`
--
ALTER TABLE `Invoice`
  MODIFY `invoice_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `InvoiceTreatment`
--
ALTER TABLE `InvoiceTreatment`
  MODIFY `invoice_treatment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Medicine`
--
ALTER TABLE `Medicine`
  MODIFY `medicine_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `Patient`
--
ALTER TABLE `Patient`
  MODIFY `patient_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `PatientWeightHistory`
--
ALTER TABLE `PatientWeightHistory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Permission`
--
ALTER TABLE `Permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `Prescription`
--
ALTER TABLE `Prescription`
  MODIFY `prescription_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `PrescriptionItem`
--
ALTER TABLE `PrescriptionItem`
  MODIFY `item_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PrescriptionTreatmentItem`
--
ALTER TABLE `PrescriptionTreatmentItem`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `Role`
--
ALTER TABLE `Role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `RolePermission`
--
ALTER TABLE `RolePermission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `Treatmentlist`
--
ALTER TABLE `Treatmentlist`
  MODIFY `treatment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `UserRole`
--
ALTER TABLE `UserRole`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `UserToken`
--
ALTER TABLE `UserToken`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `DoctorAwardsAndRecognitionInfo`
--
ALTER TABLE `DoctorAwardsAndRecognitionInfo`
  ADD CONSTRAINT `DoctorAwardsAndRecognitionInfo_doctor_id_fkey` FOREIGN KEY (`doctor_id`) REFERENCES `Doctor` (`doctor_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `DoctorCertificationInfo`
--
ALTER TABLE `DoctorCertificationInfo`
  ADD CONSTRAINT `DoctorCertificationInfo_doctor_id_fkey` FOREIGN KEY (`doctor_id`) REFERENCES `Doctor` (`doctor_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `DoctorEducationalInfo`
--
ALTER TABLE `DoctorEducationalInfo`
  ADD CONSTRAINT `DoctorEducationalInfo_doctor_id_fkey` FOREIGN KEY (`doctor_id`) REFERENCES `Doctor` (`doctor_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `Invoice`
--
ALTER TABLE `Invoice`
  ADD CONSTRAINT `Invoice_doctor_id_fkey` FOREIGN KEY (`doctor_id`) REFERENCES `Doctor` (`doctor_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Invoice_patient_id_fkey` FOREIGN KEY (`patient_id`) REFERENCES `Patient` (`patient_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `Invoice_prescription_id_fkey` FOREIGN KEY (`prescription_id`) REFERENCES `Prescription` (`prescription_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `InvoiceTreatment`
--
ALTER TABLE `InvoiceTreatment`
  ADD CONSTRAINT `InvoiceTreatment_invoice_id_fkey` FOREIGN KEY (`invoice_id`) REFERENCES `Invoice` (`invoice_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `InvoiceTreatment_treatment_id_fkey` FOREIGN KEY (`treatment_id`) REFERENCES `Treatmentlist` (`treatment_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `PatientWeightHistory`
--
ALTER TABLE `PatientWeightHistory`
  ADD CONSTRAINT `PatientWeightHistory_patient_id_fkey` FOREIGN KEY (`patient_id`) REFERENCES `Patient` (`patient_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `Prescription`
--
ALTER TABLE `Prescription`
  ADD CONSTRAINT `Prescription_doctor_id_fkey` FOREIGN KEY (`doctor_id`) REFERENCES `Doctor` (`doctor_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Prescription_patient_id_fkey` FOREIGN KEY (`patient_id`) REFERENCES `Patient` (`patient_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `PrescriptionItem`
--
ALTER TABLE `PrescriptionItem`
  ADD CONSTRAINT `PrescriptionItem_medicine_id_fkey` FOREIGN KEY (`medicine_id`) REFERENCES `Medicine` (`medicine_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `PrescriptionItem_prescription_id_fkey` FOREIGN KEY (`prescription_id`) REFERENCES `Prescription` (`prescription_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PrescriptionItem_treatmentlistTreatment_id_fkey` FOREIGN KEY (`treatmentlistTreatment_id`) REFERENCES `Treatmentlist` (`treatment_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `PrescriptionTreatmentItem`
--
ALTER TABLE `PrescriptionTreatmentItem`
  ADD CONSTRAINT `PrescriptionTreatmentItem_patient_id_fkey` FOREIGN KEY (`patient_id`) REFERENCES `Patient` (`patient_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `PrescriptionTreatmentItem_prescription_id_fkey` FOREIGN KEY (`prescription_id`) REFERENCES `Prescription` (`prescription_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `PrescriptionTreatmentItem_prescriptionItemItem_id_fkey` FOREIGN KEY (`prescriptionItemItem_id`) REFERENCES `PrescriptionItem` (`item_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `PrescriptionTreatmentItem_treatment_id_fkey` FOREIGN KEY (`treatment_id`) REFERENCES `Treatmentlist` (`treatment_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `RolePermission`
--
ALTER TABLE `RolePermission`
  ADD CONSTRAINT `RolePermission_permissionId_fkey` FOREIGN KEY (`permissionId`) REFERENCES `Permission` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `RolePermission_roleId_fkey` FOREIGN KEY (`roleId`) REFERENCES `Role` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `UserRole`
--
ALTER TABLE `UserRole`
  ADD CONSTRAINT `UserRole_roleId_fkey` FOREIGN KEY (`roleId`) REFERENCES `Role` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `UserRole_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
