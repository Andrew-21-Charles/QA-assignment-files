-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2024 at 08:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wheelstires`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `date` date NOT NULL,
  `slot` varchar(10) NOT NULL,
  `vehicleno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`date`, `slot`, `vehicleno`) VALUES
('0000-00-00', '', ''),
('2024-03-08', '', ''),
('2024-03-08', '10hrs', 'BIU-4545'),
('2024-03-08', '11hrs', 'HB-7725'),
('2024-03-08', '8hrs', 'KL-4434'),
('2024-03-08', '9hrs', 'UB-5656'),
('2024-03-09', '', ''),
('2024-03-11', '', ''),
('2024-08-01', '', ''),
('2024-08-01', '8hrs', 'BIU-4545'),
('2024-08-02', '', ''),
('2024-08-02', '8hrs', 'ja-9090'),
('2024-08-02', '9hrs', 'ru-9080'),
('2024-08-03', '', ''),
('2024-08-03', '8hrs', 'KL-4434'),
('2024-08-03', '9hrs', 'UB-5434'),
('2024-08-06', '8hrs', 'XYZ 1234'),
('2024-08-08', '8hrs', 'XYZ 1234');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `Name` varchar(30) NOT NULL,
  `Vehicleno` varchar(10) NOT NULL,
  `Vehicletype` varchar(10) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `contact` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`Name`, `Vehicleno`, `Vehicletype`, `Address`, `contact`, `Date`) VALUES
('', '', '', '', 0, '0000-00-00'),
('Andrew Charles', 'KL-4434', 'Car', '197/2 Palliyawatta Batakettara', 764529972, '2024-08-01'),
('Andrew', 'kl4434', 'Sedan', '123 Main St', 5551234, '2024-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_no` int(10) NOT NULL,
  `job_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_no`, `job_status`) VALUES
(101, 'Jacked'),
(102, 'Jacked'),
(103, 'Next in que');

-- --------------------------------------------------------

--
-- Table structure for table `rim`
--

CREATE TABLE `rim` (
  `rimid` int(10) NOT NULL,
  `brand` varchar(10) NOT NULL,
  `size` int(10) NOT NULL,
  `amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rim`
--

INSERT INTO `rim` (`rimid`, `brand`, `size`, `amount`) VALUES
(2101, 'enkei', 18, 75),
(2102, 'enkei', 20, 65),
(2103, 'enkei', 22, 50),
(2104, 'enkei', 24, 65),
(2105, 'enkei', 26, 50),
(2106, 'enkei', 28, 65),
(2201, 'konig', 18, 50),
(2202, 'konig', 20, 65),
(2203, 'konig', 22, 50),
(2204, 'konig', 24, 65),
(2205, 'konig', 26, 50),
(2206, 'konig', 28, 65),
(2301, 'motegi', 18, 50),
(2302, 'motegi', 20, 65),
(2303, 'motegi', 22, 50),
(2304, 'motegi', 24, 65),
(2305, 'motegi', 26, 50),
(2306, 'motegi', 28, 65);

-- --------------------------------------------------------

--
-- Table structure for table `tire`
--

CREATE TABLE `tire` (
  `tireid` int(10) NOT NULL,
  `brand` varchar(10) NOT NULL,
  `size` varchar(10) NOT NULL,
  `amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tire`
--

INSERT INTO `tire` (`tireid`, `brand`, `size`, `amount`) VALUES
(1011, 'ceat', '18', 60),
(1012, 'ceat', '20', 50),
(1013, 'ceat', '22', 50),
(1014, 'ceat', '24', 50),
(1015, 'ceat', '26', 30),
(1016, 'ceat', '28', 35),
(1021, 'mrf', '18', 60),
(1022, 'mrf', '20', 50),
(1023, 'mrf', '22', 60),
(1024, 'mrf', '24', 50),
(1025, 'mrf', '26', 60),
(1026, 'mrf', '28', 40),
(1031, 'dsi', '18', 20),
(1032, 'dsi', '20', 50),
(1033, 'dsi', '22', 60),
(1034, 'dsi', '24', 50),
(1035, 'dsi', '26', 60),
(1036, 'dsi', '28', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`date`,`slot`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`Vehicleno`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_no`);

--
-- Indexes for table `rim`
--
ALTER TABLE `rim`
  ADD PRIMARY KEY (`rimid`);

--
-- Indexes for table `tire`
--
ALTER TABLE `tire`
  ADD PRIMARY KEY (`tireid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
