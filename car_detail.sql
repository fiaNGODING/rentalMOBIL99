-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 06:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_detail`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_detail`
--

CREATE TABLE `car_detail` (
  `id_car` varchar(10) NOT NULL CHECK (`id_car` regexp 'BR[0-9][0-9][0-9]'),
  `car_name` varchar(255) DEFAULT NULL,
  `car_type` varchar(255) DEFAULT NULL CHECK (`car_type` in ('Manual','Matic')),
  `car_door_amount` int(11) DEFAULT NULL,
  `car_luggage` int(11) DEFAULT NULL,
  `id_include` varchar(6) DEFAULT NULL,
  `id_exclude` varchar(6) DEFAULT NULL,
  `id_owner` int(11) DEFAULT NULL,
  `car_price` decimal(10,2) DEFAULT NULL,
  `car_description` text DEFAULT NULL,
  `car_review` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exclude`
--

CREATE TABLE `exclude` (
  `id_exclude` varchar(6) NOT NULL CHECK (`id_exclude` regexp 'IDEX[0-9][0-9][0-9]'),
  `exclude_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `include`
--

CREATE TABLE `include` (
  `id_include` varchar(6) NOT NULL CHECK (`id_include` regexp 'IDIN[0-9][0-9][0-9]'),
  `include_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_detail`
--
ALTER TABLE `car_detail`
  ADD PRIMARY KEY (`id_car`),
  ADD KEY `id_include` (`id_include`),
  ADD KEY `id_exclude` (`id_exclude`);

--
-- Indexes for table `exclude`
--
ALTER TABLE `exclude`
  ADD PRIMARY KEY (`id_exclude`);

--
-- Indexes for table `include`
--
ALTER TABLE `include`
  ADD PRIMARY KEY (`id_include`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_detail`
--
ALTER TABLE `car_detail`
  ADD CONSTRAINT `car_detail_ibfk_1` FOREIGN KEY (`id_include`) REFERENCES `include` (`id_include`),
  ADD CONSTRAINT `car_detail_ibfk_2` FOREIGN KEY (`id_exclude`) REFERENCES `exclude` (`id_exclude`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
