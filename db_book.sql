-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 01:57 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Customer` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Product` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Quantity` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Customer`, `Product`, `Quantity`) VALUES
('sara', '', 0),
('sara', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `PID` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MRP` float NOT NULL,
  `Price` float NOT NULL,
  `Discount` int(11) DEFAULT NULL,
  `Available` int(11) NOT NULL,
  `Publisher` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Edition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page` int(5) DEFAULT NULL,
  `weight` int(4) DEFAULT 500
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`PID`, `Title`, `Author`, `MRP`, `Price`, `Discount`, `Available`, `Publisher`, `Edition`, `Category`, `Description`, `Language`, `page`, `weight`) VALUES
('', 'بن خلدون', 'بن خلدون', 0, 150, 20, 0, NULL, NULL, 'Entrance Exam', 'كتاب علوم التاريخ لابن خلدون', 'عربي', NULL, 500),
('2', 'ماقبل التاريخ', 'عبد الله', 0, 200, 15, 0, NULL, NULL, 'Entrance Exam', 'التاريخ القديم', NULL, NULL, 500),
('3', 'LITERATURE AND FICTION STORE', '', 0, 200, 40, 0, NULL, NULL, 'Literature and Fiction', NULL, NULL, NULL, 500),
('4', 'FICTION STORE', '', 0, 300, 50, 0, NULL, NULL, 'Literature and Fiction', NULL, NULL, NULL, 500);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserName` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserName`, `Password`) VALUES
('admin', '123'),
('user', '123'),
('sara', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Customer`,`Product`),
  ADD KEY `Product` (`Product`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
