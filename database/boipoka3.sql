-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2018 at 10:22 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boipoka2`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_info`
--

CREATE TABLE `book_info` (
  `id` int(10) NOT NULL,
  `serialid` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Book_Name` varchar(50) NOT NULL,
  `Writer_Name` varchar(50) NOT NULL,
  `Edition_no` varchar(25) NOT NULL,
  `Publication` varchar(50) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_info`
--

INSERT INTO `book_info` (`id`, `serialid`, `Name`, `Book_Name`, `Writer_Name`, `Edition_no`, `Publication`, `Price`) VALUES
(1, 0, 'Rayhan hossen', 'ami himu', 'humayun Ahmed', 'third', 'anno prokasony', 150),
(2, 0, 'Rayhan hossen', 'Ni', 'jafor ikbal', 'third', 'anno', 120),
(3, 1, 'Abrar Khan', 'nouka dobi', 'rabindronath tagore', 'seventh', 'atlas', 80),
(4, 2, 'Abrar Khan', 'The Photography i lived with', 'mahbubar Rahman Khan', 'first', 'the royal', 1000),
(5, 2, 'Abrar Khan', 'muktijudder itihas', 'jafor ikbal', 'first', 'mukti prohas', 10),
(6, 3, 'Md tawhidul islam', 'ami topo', 'jafor ikbal', 'secend', 'anno', 80);

-- --------------------------------------------------------

--
-- Table structure for table `dotane`
--

CREATE TABLE `dotane` (
  `id` int(100) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Book_Name` varchar(50) NOT NULL,
  `Writer_Name` varchar(50) NOT NULL,
  `Owner_Contact` varchar(25) NOT NULL,
  `Book_Detail` varchar(100) NOT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dotane`
--

INSERT INTO `dotane` (`id`, `Name`, `Book_Name`, `Writer_Name`, `Owner_Contact`, `Book_Detail`, `Status`) VALUES
(1, 'Rayhan hossen', 'Tin goyende vol.1', 'rakib hassan', '01555555', 'story of three teenagers detective', 'Not Donated'),
(3, 'abrar', 'muktijudder itihas', 'jafor ikbal', '01555555555', 'it is about libaration war', 'Not Donated'),
(4, 'Abrar Khan', 'seleta', 'humahan ahmad', '01XXXXXXXXXX', 'story of childhood of himu', NULL),
(5, 'Abrar Khan', 'Teach yourself C', 'Herbert schilder', '01666666666', 'have all detail about C', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(100) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Book_Name` varchar(50) NOT NULL,
  `Writer_Name` varchar(50) NOT NULL,
  `Edition_no` varchar(25) NOT NULL,
  `Publication` varchar(20) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `Name`, `Book_Name`, `Writer_Name`, `Edition_no`, `Publication`, `price`) VALUES
(1, 'Rayhan hossen', 'Shes bikaler meye', 'Jorih raihan', 'seventh', 'projapoti', 120),
(2, 'Rayhan hossen', 'The Complete Reference C++', 'Herbert Schildt', 'third', 'TATA', 450),
(3, 'Abrar Khan', 'ami himu', 'humahan ahmad', 'third', 'anno prokasoni', 150),
(4, 'Abrar Khan', 'muktijudder itihas', 'jafor ikbal', 'first', 'mukti prohus', 10),
(5, 'Md tawhidul islam', 'voy', 'humahan ahmed', 'first', 'anno prokasoni', 70);

-- --------------------------------------------------------

--
-- Table structure for table `infotable`
--

CREATE TABLE `infotable` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `Contact` varchar(15) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Adress` varchar(150) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infotable`
--

INSERT INTO `infotable` (`id`, `Name`, `Age`, `Contact`, `Email`, `Gender`, `Adress`, `username`, `password`) VALUES
(1, 'Rayhan hossen', 20, '0155555555555', 'Rayhan@gmail.com', 'Male', 'mirpur,Dhaka', 'rayhan', '1234'),
(2, 'Abrar Khan', 22, '01784544774', 'abrar@gmail.com', 'Male', 'basabo,Dhaka', 'abrar', '1234'),
(3, 'Md tawhidul islam', 24, '018888888888', 'tawhidulislam@gmail.com', 'Male', 'unknown', 'tawhid', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `id` int(100) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Book_Name` varchar(50) NOT NULL,
  `Writer_Name` varchar(50) NOT NULL,
  `Edition_no` varchar(25) NOT NULL,
  `Publication` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `Detail` text NOT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`id`, `Name`, `Book_Name`, `Writer_Name`, `Edition_no`, `Publication`, `price`, `Detail`, `Status`) VALUES
(1, 'Rayhan hossen', 'Belasi', 'Rabindronath tagore', '12th', 'anno prokasoni', 250, 'A woman who suffer from social superstition', 'Not sold'),
(2, 'Abrar Khan', 'ami himu', 'humayan Ahmad', 'Third', 'anno prokasony', 140, 'A story of nobel man...', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Book_Name` varchar(50) NOT NULL,
  `Writer_Name` varchar(50) NOT NULL,
  `Edition_no` varchar(25) NOT NULL,
  `Publication` varchar(20) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `Name`, `Book_Name`, `Writer_Name`, `Edition_no`, `Publication`, `price`) VALUES
(1, 'Rayhan hossen', 'Sheleti', 'humayun ahmed', 'third', 'anno prokasoni', 180),
(2, 'Rayhan hossen', 'Head first java', 'kathy sierra', 'third', 'O Reilly', 400),
(3, 'Abrar Khan', 'voy', 'humayun ahmed', 'secend', 'anno prokasoni', 140),
(4, 'Abrar Khan', 'ni', 'humahan ahmad', 'third', 'anno prokasoni', 140);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_info`
--
ALTER TABLE `book_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dotane`
--
ALTER TABLE `dotane`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infotable`
--
ALTER TABLE `infotable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_info`
--
ALTER TABLE `book_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dotane`
--
ALTER TABLE `dotane`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `infotable`
--
ALTER TABLE `infotable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
