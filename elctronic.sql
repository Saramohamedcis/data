-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2020 at 08:38 PM
-- Server version: 8.0.22
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elctronic`
--

-- --------------------------------------------------------

--
-- Table structure for table `cables`
--

CREATE TABLE `cables` (
  `cableId` int UNSIGNED NOT NULL,
  `Cname` varchar(255) DEFAULT NULL,
  `catcable` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `useId` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cable_category`
--

CREATE TABLE `cable_category` (
  `catId` int UNSIGNED NOT NULL,
  `CoaxialCable` varchar(255) NOT NULL,
  `UtpCable` varchar(255) NOT NULL,
  `StpCable` varchar(255) NOT NULL,
  `userId` int UNSIGNED NOT NULL,
  `cableId` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `celectronic`
--

CREATE TABLE `celectronic` (
  `elecId` int UNSIGNED NOT NULL,
  `elc_name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `cat_id` int UNSIGNED NOT NULL,
  `userId` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elec_category`
--

CREATE TABLE `elec_category` (
  `id` int UNSIGNED NOT NULL,
  `digital_electronic` varchar(255) NOT NULL,
  `itegrated_circutes` varchar(255) NOT NULL,
  `Diodes` varchar(255) NOT NULL,
  `standard_Diodes` varchar(255) NOT NULL,
  `zener_diodo` varchar(255) NOT NULL,
  `varicap_diodes` varchar(255) NOT NULL,
  `ele_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int UNSIGNED NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cables`
--
ALTER TABLE `cables`
  ADD PRIMARY KEY (`useId`);

--
-- Indexes for table `cable_category`
--
ALTER TABLE `cable_category`
  ADD PRIMARY KEY (`catId`,`userId`,`cableId`);

--
-- Indexes for table `celectronic`
--
ALTER TABLE `celectronic`
  ADD PRIMARY KEY (`elecId`,`userId`,`cat_id`);

--
-- Indexes for table `elec_category`
--
ALTER TABLE `elec_category`
  ADD PRIMARY KEY (`id`,`ele_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usrId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
