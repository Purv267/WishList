-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2020 at 03:39 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacttable`
--

CREATE TABLE `contacttable` (
  `contactId` int(11) NOT NULL,
  `firstName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `emailAddress` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `DOB` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacttable`
--

INSERT INTO `contacttable` (`contactId`, `firstName`, `lastName`, `emailAddress`, `DOB`) VALUES
(1, 'uPen', 'uApple', 'upenappple@pineapplepen.com', '2020-07-01 09:00:00'),
(3, 'uLiya', 'uD', 'uiamliya@superDing.com', '1999-07-17 00:00:00'),
(5, 'fffffffffffff', 'ffffffffff', 'ffffffffff', '2020-07-21 00:00:00'),
(6, 'sdfgsdfg', 'sdfgsdfg', 'pushp@iamawesome.com', '2020-07-15 00:00:00'),
(9, 'php wasim', 'php singh', 'phpwasim@wasimsingh.com', '2012-12-22 10:12:45'),
(10, 'Ellen', 'Ripley', 'alienkiller@iamwoman.com', '2012-12-22 10:12:45'),
(11, 'Wasim', 'Singh', 'wasim@wasimsingh.com', '2000-12-12 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacttable`
--
ALTER TABLE `contacttable`
  ADD PRIMARY KEY (`contactId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacttable`
--
ALTER TABLE `contacttable`
  MODIFY `contactId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
