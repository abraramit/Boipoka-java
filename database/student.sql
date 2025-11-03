-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2019 at 09:42 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `diu`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `Roll` int(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` int(5) NOT NULL,
  `Gpa` double NOT NULL DEFAULT '3.2',
  `City` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Roll`, `Name`, `Gender`, `Age`, `Gpa`, `City`) VALUES
(101, 'karim', 'male', 23, 3.9, 'Sylhet'),
(103, 'kamal', 'male', 23, 3.5, 'Dhaka'),
(104, 'Nasrin', 'female', 25, 3, 'Dhaka'),
(106, 'salam', 'male', 24, 4, 'Rajshahi'),
(107, 'Mousumi', 'Female', 30, 3.45, 'Rajshahi'),
(108, 'Purnima', 'Female', 30, 3.45, 'RajShahi'),
(109, 'Sakib Khan', 'Male', 35, 3.92, 'Rajshahi'),
(110, 'Salman Khan', 'Male', 26, 3.83, 'Dhaka'),
(112, 'Apu', 'Female', 30, 3.79, 'Sylhet'),
(115, 'Amir Khan', 'Male', 29, 3.6, 'Sylhet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Roll`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
