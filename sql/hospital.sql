-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 19, 2022 at 02:13 PM
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
(10, 1, 1, '2022-12-08', 'This is great', 'approved', '12:00:00', '2022-09-15 11:34:56'),
(11, 1, 17, '2022-02-10', 'Eye stress', 'pending', '10:00:00', '2022-09-15 13:29:28'),
(12, 1, 11, '2022-09-10', 'tooth pain', 'pending', '00:00:00', '2022-09-15 13:31:30'),
(13, 1, 1, '2022-10-09', 'pain', 'approved', '00:00:00', '2022-09-15 13:36:04'),
(14, 1, 1, '9000-05-06', 'fffff', 'pending', '15:04:00', '2022-09-15 19:16:56'),
(15, 1, 11, '2022-09-20', 'can i get help', 'pending', '14:40:00', '2022-09-19 11:51:13'),
(16, 1, 14, '2022-09-20', 'EEEEEEEEEEE', 'pending', '15:04:00', '2022-09-19 11:52:51'),
(17, 8, 1, '2022-09-20', 'Thiis is urgent', 'pending', '04:00:00', '2022-09-19 11:56:31'),
(18, 8, 14, '2022-09-21', 'This is  a humble request', 'rejected', '16:55:00', '2022-09-19 11:57:34');

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
(1, 1, 1, 'patient', 'Hello People', 'doctor', '2022-09-07 05:34:46'),
(2, 1, 1, 'patient', 'I feel pain in my bones', 'doctor', '2022-09-07 06:04:47'),
(4, 1, 1, 'doctor', 'Do you feel Ok', 'patient', '2022-09-10 06:16:33'),
(5, 1, 1, 'doctor', 'Hello Again Patient', 'patient', '2022-09-07 06:20:03'),
(6, 1, 1, 'doctor', 'something is paining me', 'patient', '2022-09-07 18:14:29'),
(7, 1, 1, 'doctor', 'Hello', 'patient', '2022-09-07 20:49:08'),
(8, 1, 1, 'doctor', 'Good Morning', 'patient', '2022-09-08 04:13:00'),
(9, 1, 1, 'patient', 'hello', 'doctor', '2022-09-08 07:42:57'),
(10, 1, 1, 'patient', 'am not feeling good doctor', 'doctor', '2022-09-08 07:43:46'),
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
(42, 1, 11, 'patient', 'hi', 'doctor', '2022-09-12 09:57:23'),
(43, 1, 9, 'doctor', 'Hello', 'patient', '2022-09-12 13:30:17'),
(44, 1, 9, 'doctor', 'Hello', 'patient', '2022-09-12 13:39:13'),
(45, 1, 9, 'doctor', 'hi', 'patient', '2022-09-12 14:28:53'),
(46, 1, 16, 'patient', 'j', 'none', '2022-09-12 14:59:22'),
(47, 1, 14, 'patient', 'Hello Kizza', 'doctor', '2022-09-12 15:02:44'),
(48, 1, 9, 'doctor', 'Good Afternoon', 'patient', '2022-09-15 11:43:24'),
(49, 1, 9, 'doctor', 'Hello There', 'patient', '2022-09-15 11:44:42'),
(50, 1, 9, 'patient', 'Hello', 'doctor', '2022-09-15 11:46:24'),
(51, 1, 9, 'doctor', 'Hello Ben G', 'patient', '2022-09-15 11:47:57'),
(52, 1, 9, 'patient', 'hdhdhdhhd', 'doctor', '2022-09-15 11:48:34'),
(53, 1, 9, 'doctor', 'yo\r\n', 'patient', '2022-09-15 13:24:18'),
(54, 1, 1, 'doctor', 'Hello Agleck', 'patient', '2022-09-15 16:18:57'),
(55, 1, 9, 'patient', 'Hello Dr allen', 'doctor', '2022-09-15 16:46:40'),
(56, 1, 1, 'patient', 'This is good for you', 'doctor', '2022-09-15 16:47:58'),
(57, 1, 1, 'doctor', 'Hello Bobi', 'patient', '2022-09-15 17:02:09'),
(58, 1, 1, 'doctor', 'hello', 'patient', '2022-09-15 17:56:47'),
(59, 1, 1, 'doctor', 'hhh', 'patient', '2022-09-15 17:58:33'),
(60, 1, 1, 'doctor', 'is everything ok', 'patient', '2022-09-15 18:00:25'),
(61, 1, 9, 'doctor', 'hello ben', 'patient', '2022-09-15 18:01:45'),
(62, 1, 9, 'doctor', 'is everything ok', 'patient', '2022-09-15 18:02:30'),
(63, 1, 9, 'patient', 'hello there', 'doctor', '2022-09-15 18:03:39'),
(64, 1, 9, 'patient', 'hello', 'doctor', '2022-09-15 18:04:07'),
(65, 1, 9, 'doctor', 'hellllllllllllllllllll', 'patient', '2022-09-15 18:29:20'),
(66, 1, 14, 'patient', 'is everything ok', 'doctor', '2022-09-15 18:36:14'),
(67, 1, 14, 'patient', 'ok', 'doctor', '2022-09-15 18:45:00'),
(68, 1, 9, 'patient', 'am good', 'doctor', '2022-09-15 18:46:26'),
(69, 1, 9, 'patient', 'Hello Dr', 'doctor', '2022-09-15 18:51:50'),
(70, 1, 9, 'patient', 'gggggggggggggggggggggggggggggggggggggg', 'doctor', '2022-09-15 18:53:17'),
(71, 1, 9, 'doctor', 'hhhhhh', 'patient', '2022-09-15 18:53:49'),
(72, 3, 9, 'doctor', 'hello bobi', 'patient', '2022-09-15 19:01:45'),
(73, 3, 9, 'patient', 'hello dr allen', 'doctor', '2022-09-15 19:03:02'),
(74, 3, 9, 'doctor', 'are you good', 'patient', '2022-09-15 19:04:29'),
(75, 3, 9, 'doctor', 'This is great', 'patient', '2022-09-15 19:06:57'),
(76, 1, 11, 'doctor', 'hello dr', 'patient', '2022-09-15 19:21:35'),
(77, 1, 11, 'doctor', 'is everyone okay at home.', 'patient', '2022-09-15 19:22:16'),
(78, 1, 11, 'doctor', 'make sure you take medicine', 'patient', '2022-09-15 19:22:54'),
(79, 1, 11, 'doctor', 'your medicine is paramount', 'patient', '2022-09-15 19:23:23'),
(80, 1, 11, 'doctor', 'make sure you read this', 'patient', '2022-09-15 19:23:45'),
(81, 1, 11, 'patient', 'hello p', 'doctor', '2022-09-15 19:35:24'),
(82, 1, 11, 'patient', 'hhhh', 'doctor', '2022-09-15 19:42:27'),
(83, 1, 11, 'patient', 'ggg', 'doctor', '2022-09-15 19:43:46'),
(84, 1, 11, 'patient', 'hello', 'doctor', '2022-09-16 06:06:21'),
(85, 1, 11, 'doctor', 'hello prince', 'patient', '2022-09-16 11:42:15'),
(86, 1, 11, 'doctor', 'I wanted to talk to you', 'patient', '2022-09-16 11:43:32'),
(87, 8, 14, 'patient', 'Hello Dr Kizza', 'doctor', '2022-09-19 11:36:42'),
(88, 8, 14, 'patient', 'Are you ok', 'doctor', '2022-09-19 11:46:39'),
(89, 1, 14, 'patient', 'This is ben', 'doctor', '2022-09-19 11:47:47'),
(90, 1, 14, 'doctor', 'Hey Ben man ', 'none', '2022-09-19 11:48:25');

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
(17, 'Bengo', 'admin@gmail.com', '0708123890', '', 'm', 'active', '\"\"', '28483537243951022222742031doctor-thumb-01.jpg', 1, '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-12 11:19:10'),
(20, 'Doc', 'adam@gmail.com', '0769567987', 'Harry', 'f', 'active', '\"\"', '204879055731378303207375256AdminLTELogo.png', 1, '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-16 11:14:44');

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
  `patient_profile_image` varchar(255) NOT NULL DEFAULT 'user.jpg',
  `patient_password` varchar(255) NOT NULL,
  `patient_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `patient_first_name`, `patient_last_name`, `patient_email`, `patient_contact`, `patient_age`, `patient_gender`, `patient_profile_image`, `patient_password`, `patient_create_date`) VALUES
(1, 'Ben', 'Aflec George', 'patient@gmail.com', '0703519068', 89, 'm', '1water_consumption.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-06 08:09:23'),
(3, 'Bobi', 'Wine', 'bobi@gmail.com', '0765567989', 39, 'm', '3images2.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-12 05:21:59'),
(4, 'Barrack', 'Husein', 'husein@gmail.com', '0702789007', 60, 'm', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-12 05:24:35'),
(5, 'Seki', 'Seki', 'seki@gmail.com', '0708564234', 89, 'm', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-15 11:54:23'),
(6, 'aaaa', 'aaa', 'abby@gmail.com', '0702789000', 45, 'm', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-16 10:47:31'),
(7, 'Onne', 'Gift', 'gifto@gmail.com', '078645342', 12, 'f', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-19 11:30:01'),
(8, 'Pattrick', 'Henrfy', 'patrick@gmail.com', '0702789006', 78, 'm', 'user.jpg', '202cb962ac59075b964b07152d234b70', '2022-09-19 11:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE `patient_details` (
  `details_id` int(11) NOT NULL,
  `previous_diseases` text NOT NULL DEFAULT '',
  `current_diseases` text NOT NULL DEFAULT '',
  `document` varchar(255) NOT NULL DEFAULT 'nodoc',
  `patient_id` int(11) NOT NULL,
  `details_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`details_id`, `previous_diseases`, `current_diseases`, `document`, `patient_id`, `details_create_date`) VALUES
(1, 'Fever', 'Ebola', '12015 test guide.docx', 1, '2022-09-16 06:10:58'),
(2, 'Addiction', 'Cancer', 'nodoc', 3, '2022-09-16 08:31:21');

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
(59, 10, 1, 2, '2022-09-12 10:46:12'),
(60, 11, 1, 3, '2022-09-15 13:40:22');

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
-- Indexes for table `patient_details`
--
ALTER TABLE `patient_details`
  ADD PRIMARY KEY (`details_id`);

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
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patient_details`
--
ALTER TABLE `patient_details`
  MODIFY `details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
