-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2020 at 08:36 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wish`
--

-- --------------------------------------------------------

--
-- Table structure for table `wishtable`
--

CREATE TABLE `wishtable` (
  `wishId` int(11) NOT NULL,
  `myname` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frdname` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myemail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frdemail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wish` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgurl` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishtable`
--

INSERT INTO `wishtable` (`wishId`, `myname`, `frdname`, `myemail`, `frdemail`, `wish`, `imgurl`) VALUES
(3, 'John', 'Don', 'john@hotmail.com', 'Domn@madster.com', 'My name is khan is changed to Patel', 'http://johndo.com'),
(7, 'John', 'Donner', 'john@hotmail.com', 'Domn@madster.com', 'My name is khan ', 'http://johndo.com'),
(8, 'Wasim', 'Barret', 'wasimsingh@sheridan.com', 'Barretreader@yahoo.com', 'This is theie wish list', 'http://ourimage.com'),
(9, 'dajsad', 'Changed it again', 'samcpaksmapsm', 'pcmsamcapsmc', 'dmcsdmcsdm', 'dspmcpsdmpcsdm'),
(10, 'Purv', 'Shubh', 'abc@hotmail.com', 'xyz@live.com', 'Hey it is my wish 1', 'http://dfdmfd.com'),
(11, 'Virat', 'Donner', 'virat@hotmail.com', 'dominic@ff.com', 'Hey it is my wish 2', 'http://johndo.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wishtable`
--
ALTER TABLE `wishtable`
  ADD PRIMARY KEY (`wishId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wishtable`
--
ALTER TABLE `wishtable`
  MODIFY `wishId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
