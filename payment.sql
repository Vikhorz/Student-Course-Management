-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 08:14 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payment`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_fee`
--

CREATE TABLE `course_fee` (
  `student_id` int(10) NOT NULL,
  `course_name` varchar(15) NOT NULL,
  `fee` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_fee`
--

INSERT INTO `course_fee` (`student_id`, `course_name`, `fee`) VALUES
(123, 'WP', 250000),
(124, 'WP', 500000),
(125, 'DS', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `student_balance`
--

CREATE TABLE `student_balance` (
  `student_id` int(10) NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_balance`
--

INSERT INTO `student_balance` (`student_id`, `balance`) VALUES
(124, 1500000),
(125, 2500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_fee`
--
ALTER TABLE `course_fee`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_balance`
--
ALTER TABLE `student_balance`
  ADD PRIMARY KEY (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
