-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2021 at 12:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `Id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Class` varchar(20) NOT NULL,
  `Address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`Id`, `Name`, `Class`, `Address`) VALUES
(2, 'Hari', '11', 'Jhapa'),
(3, 'Krishna', '10', 'Baitadi'),
(7, 'Aale', '4', 'Jhapa'),
(8, 'Murari', '12', 'Jhapa'),
(9, 'Gopal', '11', 'Nuwakot'),
(10, 'Govinda', '8', 'Kathmandu'),
(11, 'Geeta', '5', 'Nuwakot'),
(12, 'Kaveri', '8', 'Palpa'),
(13, 'Priya', '11', 'Kathmandu'),
(14, 'Kashi Raj Nepal', '4', 'Nuwkot'),
(15, 'Priya', '11', 'Kathmandu'),
(16, 'Priya', '11', 'Kathmandu'),
(17, 'Priya', '11', 'Kathmandu'),
(18, 'hari haran', '12', 'kathmandu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
