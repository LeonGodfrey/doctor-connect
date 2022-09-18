-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 15, 2022 at 02:57 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_first_name` varchar(255) NOT NULL,
  `admin_last_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_contact` varchar(255) NOT NULL DEFAULT '0709518661',
  `profile_image` varchar(255) NOT NULL DEFAULT 'user.jpg',
  `admin_password` varchar(255) NOT NULL,
  `admin_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_first_name`, `admin_last_name`, `admin_email`, `admin_contact`, `profile_image`, `admin_password`, `admin_create_date`) VALUES
(1, 'John', 'Doe', 'admin@gmail.com', '0709518661', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-07 16:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_message` text NOT NULL,
  `appointment_status` varchar(100) NOT NULL DEFAULT 'pending',
  `appointment_time` time NOT NULL,
  `appointment_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `patient_id`, `doctor_id`, `appointment_date`, `appointment_message`, `appointment_status`, `appointment_time`, `appointment_create_date`) VALUES
(9, 1, 11, '2022-09-17', 'Thi is', 'approved', '12:00:00', '2022-09-15 11:31:19'),
(10, 1, 1, '2022-12-08', 'This is great', 'pending', '12:00:00', '2022-09-15 11:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `chat_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `sender_role` varchar(100) NOT NULL DEFAULT 'patient',
  `chat_message` text NOT NULL,
  `seen_by` varchar(100) NOT NULL DEFAULT 'none',
  `chat_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`chat_id`, `patient_id`, `doctor_id`, `sender_role`, `chat_message`, `seen_by`, `chat_create_date`) VALUES
(1, 1, 1, 'patient', 'Hello People', 'none', '2022-09-07 05:34:46'),
(2, 1, 1, 'patient', 'I feel pain in my bones', 'none', '2022-09-07 06:04:47'),
(4, 1, 1, 'doctor', 'Do you feel Ok', 'patient', '2022-09-10 06:16:33'),
(5, 1, 1, 'doctor', 'Hello Again Patient', 'patient', '2022-09-07 06:20:03'),
(6, 1, 1, 'doctor', 'something is paining me', 'patient', '2022-09-07 18:14:29'),
(7, 1, 1, 'doctor', 'Hello', 'patient', '2022-09-07 20:49:08'),
(8, 1, 1, 'doctor', 'Good Morning', 'patient', '2022-09-08 04:13:00'),
(9, 1, 1, 'patient', 'hello', 'none', '2022-09-08 07:42:57'),
(10, 1, 1, 'patient', 'am not feeling good doctor', 'none', '2022-09-08 07:43:46'),
(11, 1, 9, 'patient', 'op', 'doctor', '2022-09-08 09:55:10'),
(12, 1, 9, 'patient', 'op', 'doctor', '2022-09-08 09:55:10'),
(13, 1, 9, 'patient', 'op', 'doctor', '2022-09-08 09:55:10'),
(14, 1, 9, 'doctor', 'ik', 'patient', '2022-09-08 09:57:51'),
(15, 1, 9, 'patient', 'Nice', 'doctor', '2022-09-11 13:26:26'),
(16, 1, 9, 'doctor', 'Its good to hear from you.', 'patient', '2022-09-11 13:34:25'),
(17, 1, 9, 'doctor', 'Keep taking medication from your prescription', 'patient', '2022-09-11 13:35:24'),
(18, 1, 9, 'patient', 'Ok doctor', 'doctor', '2022-09-11 13:45:51'),
(19, 1, 9, 'patient', 'Is this good', 'doctor', '2022-09-11 13:53:02'),
(20, 1, 9, 'patient', 'Hello Doctor', 'doctor', '2022-09-11 14:01:27'),
(21, 1, 9, 'patient', 'Is everything ok doctor', 'doctor', '2022-09-11 14:03:48'),
(22, 1, 11, 'doctor', 'hey', 'patient', '2022-09-12 09:29:49'),
(23, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:13'),
(24, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:16'),
(25, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:16'),
(26, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:16'),
(27, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:16'),
(28, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:17'),
(29, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:17'),
(30, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:17'),
(31, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:17'),
(32, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:17'),
(33, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:18'),
(34, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:18'),
(35, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:18'),
(36, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:18'),
(37, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:18'),
(38, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:18'),
(39, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:19'),
(40, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:19'),
(41, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:19'),
(42, 1, 11, 'patient', 'hi', 'none', '2022-09-12 09:57:23'),
(43, 1, 9, 'doctor', 'Hello', 'patient', '2022-09-12 13:30:17'),
(44, 1, 9, 'doctor', 'Hello', 'patient', '2022-09-12 13:39:13'),
(45, 1, 9, 'doctor', 'hi', 'patient', '2022-09-12 14:28:53'),
(46, 1, 16, 'patient', 'j', 'none', '2022-09-12 14:59:22'),
(47, 1, 14, 'patient', 'Hello Kizza', 'none', '2022-09-12 15:02:44'),
(48, 1, 9, 'doctor', 'Good Afternoon', 'patient', '2022-09-15 11:43:24'),
(49, 1, 9, 'doctor', 'Hello There', 'patient', '2022-09-15 11:44:42'),
(50, 1, 9, 'patient', 'Hello', 'doctor', '2022-09-15 11:46:24'),
(51, 1, 9, 'doctor', 'Hello Ben G', 'patient', '2022-09-15 11:47:57'),
(52, 1, 9, 'patient', 'hdhdhdhhd', 'doctor', '2022-09-15 11:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `department_desc` text NOT NULL,
  `department_status` varchar(100) NOT NULL DEFAULT 'active',
  `department_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `department_desc`, `department_status`, `department_create_date`) VALUES
(1, 'Dentist', 'For teeth', 'active', '2022-09-06 12:52:48'),
(4, 'Gynecologist', 'Censored information', 'active', '2022-09-12 09:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `doctor_first_name` varchar(255) NOT NULL,
  `doctor_email` varchar(255) NOT NULL,
  `doctor_contact` varchar(100) NOT NULL,
  `doctor_last_name` varchar(255) NOT NULL,
  `doctor_gender` varchar(100) NOT NULL DEFAULT 'm',
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `doctor_biography` text NOT NULL DEFAULT '""',
  `profile_image` varchar(255) NOT NULL DEFAULT 'user.jpg',
  `department_id` int(11) NOT NULL,
  `doctor_password` varchar(255) NOT NULL,
  `doctor_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `doctor_first_name`, `doctor_email`, `doctor_contact`, `doctor_last_name`, `doctor_gender`, `status`, `doctor_biography`, `profile_image`, `department_id`, `doctor_password`, `doctor_create_date`) VALUES
(1, 'Abby', 'abby@gmail.com', '0765567987', 'Gael', 'm', 'active', 'I am better at treating people', '4740749745216391703869732651006988690672326072674289909user-03.jpg', 4, '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-06 06:43:39'),
(9, 'Allen', 'doctor@gmail.com', '0702789000', 'Noah', 'f', 'active', 'Am a cool doctor', '8671362042536462966856498001708565248534410440636360721009430973193586748998981102doctor-thumb-02.jpg', 4, '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-07 12:38:30'),
(11, 'Prince', 'prince@gmail.com', '0702789000', 'Charles', 'm', 'active', 'I am the price now', '2643496474191775268957017654789797231741699830577457524277688637137575193233411doctor-thumb-01.jpg', 4, '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-12 05:53:13'),
(13, 'Museveni', 'm7@gmail.com', '07777777777', '', 'm', 'active', '\"\"', 'user.jpg', 2, '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-12 05:56:01'),
(14, 'Kiiza', 'besigye@gmail.com', '0765567983', '', 'm', 'active', 'I can even run for presidency.', '1006988690672326072674289909user-03.jpg', 1, '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-12 05:59:21'),
(15, 'Sarah', 'alicek@gmail.com', '0704678898', 'Kamuntu', 'm', 'active', 'The best disease warrior', '499991613506634859670309293doctor-thumb-10.jpg', 4, '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-12 06:00:29'),
(17, 'Bengo', 'admin@gmail.com', '0708123890', '', 'm', 'active', '\"\"', '28483537243951022222742031doctor-thumb-01.jpg', 1, '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-12 11:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL,
  `patient_first_name` varchar(255) NOT NULL,
  `patient_last_name` varchar(255) NOT NULL,
  `patient_email` varchar(255) NOT NULL,
  `patient_contact` varchar(255) NOT NULL,
  `patient_age` int(3) NOT NULL,
  `patient_gender` varchar(11) NOT NULL DEFAULT 'm',
  `patient_password` varchar(255) NOT NULL,
  `patient_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `patient_first_name`, `patient_last_name`, `patient_email`, `patient_contact`, `patient_age`, `patient_gender`, `patient_password`, `patient_create_date`) VALUES
(1, 'Ben', 'Aflec George', 'patient@gmail.com', '0703519068', 37, 'm', '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-06 08:09:23'),
(3, 'Bobi', 'Wine', 'bobi@gmail.com', '0765567989', 39, 'm', '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-12 05:21:59'),
(4, 'Barrack', 'Husein', 'husein@gmail.com', '0702789007', 60, 'm', '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-12 05:24:35'),
(5, 'Seki', 'Seki', 'seki@gmail.com', '0708564234', 89, 'm', '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-15 11:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `rating_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `rating_value` int(11) NOT NULL,
  `rating_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`rating_id`, `doctor_id`, `patient_id`, `rating_value`, `rating_date`) VALUES
(1, 1, 1, 2, '2022-09-07 08:26:10'),
(2, 3, 1, 4, '2022-09-07 08:31:46'),
(3, 1, 1, 4, '2022-09-07 08:33:01'),
(4, 1, 1, 4, '2022-09-07 08:35:12'),
(5, 1, 1, 4, '2022-09-07 08:35:41'),
(6, 3, 1, 4, '2022-09-07 08:36:47'),
(7, 1, 1, 4, '2022-09-07 08:37:34'),
(8, 1, 1, 4, '2022-09-07 08:39:34'),
(9, 1, 1, 4, '2022-09-07 08:39:58'),
(10, 3, 1, 3, '2022-09-07 08:41:15'),
(11, 1, 1, 5, '2022-09-07 08:51:36'),
(12, 4, 1, 4, '2022-09-07 09:18:31'),
(13, 3, 1, 2, '2022-09-07 09:30:57'),
(14, 3, 1, 2, '2022-09-07 09:31:05'),
(15, 3, 1, 3, '2022-09-07 09:31:11'),
(16, 3, 1, 2, '2022-09-07 09:31:15'),
(17, 3, 1, 2, '2022-09-07 09:34:38'),
(18, 1, 1, 3, '2022-09-07 10:33:16'),
(19, 1, 1, 5, '2022-09-07 10:34:01'),
(20, 3, 1, 5, '2022-09-07 10:34:13'),
(21, 1, 1, 5, '2022-09-07 10:35:18'),
(22, 1, 1, 3, '2022-09-07 10:35:36'),
(23, 1, 1, 5, '2022-09-07 10:36:01'),
(24, 1, 1, 5, '2022-09-07 10:36:02'),
(25, 3, 1, 5, '2022-09-07 10:37:01'),
(26, 4, 1, 2, '2022-09-07 10:37:16'),
(27, 1, 1, 3, '2022-09-07 10:42:50'),
(28, 1, 1, 3, '2022-09-07 10:43:22'),
(29, 1, 1, 4, '2022-09-07 10:44:34'),
(30, 1, 1, 3, '2022-09-07 10:47:13'),
(31, 7, 1, 4, '2022-09-07 14:28:30'),
(32, 9, 1, 3, '2022-09-07 14:46:40'),
(33, 8, 1, 2, '2022-09-07 14:46:53'),
(34, 1, 1, 5, '2022-09-08 03:30:44'),
(35, 1, 1, 3, '2022-09-08 07:42:02'),
(36, 9, 1, 5, '2022-09-08 09:11:15'),
(37, 1, 1, 2, '2022-09-08 09:11:47'),
(38, 1, 1, 2, '2022-09-08 09:12:04'),
(39, 1, 1, 2, '2022-09-11 12:49:15'),
(40, 1, 1, 2, '2022-09-11 12:49:24'),
(41, 1, 1, 1, '2022-09-11 12:49:31'),
(42, 1, 1, 2, '2022-09-11 12:49:39'),
(43, 1, 1, 2, '2022-09-11 12:49:43'),
(44, 1, 1, 2, '2022-09-11 12:49:55'),
(45, 1, 1, 2, '2022-09-11 12:49:58'),
(46, 1, 1, 3, '2022-09-11 12:50:24'),
(47, 1, 1, 2, '2022-09-11 12:50:30'),
(48, 1, 1, 2, '2022-09-11 12:50:37'),
(49, 1, 1, 4, '2022-09-11 13:11:40'),
(50, 1, 1, 5, '2022-09-11 17:36:08'),
(51, 9, 1, 2, '2022-09-12 03:59:34'),
(52, 1, 1, 5, '2022-09-12 04:00:07'),
(53, 1, 1, 5, '2022-09-12 04:00:59'),
(54, 1, 1, 5, '2022-09-12 05:48:23'),
(55, 9, 1, 4, '2022-09-12 06:53:46'),
(56, 12, 1, 3, '2022-09-12 09:17:43'),
(57, 14, 1, 2, '2022-09-12 09:18:08'),
(58, 10, 1, 3, '2022-09-12 10:46:02'),
(59, 10, 1, 2, '2022-09-12 10:46:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`rating_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
