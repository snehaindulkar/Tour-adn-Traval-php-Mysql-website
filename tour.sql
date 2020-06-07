-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 07, 2020 at 08:53 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `package_reg`
--

CREATE TABLE `package_reg` (
  `ID` int(11) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Age` int(5) NOT NULL,
  `email` varchar(30) NOT NULL,
  `Phone_no` int(11) NOT NULL,
  `package_city` varchar(255) NOT NULL,
  `recipt_type` varchar(30) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `member1` varchar(25) NOT NULL,
  `member2` varchar(25) NOT NULL,
  `member3` varchar(25) NOT NULL,
  `member4` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_reg`
--

INSERT INTO `package_reg` (`ID`, `Firstname`, `Lastname`, `Age`, `email`, `Phone_no`, `package_city`, `recipt_type`, `Address`, `member1`, `member2`, `member3`, `member4`) VALUES
(1, 'vrinda', 'lotankar', 23, 'vrinda@gmail.com', 98239283, 'Online', 'london', 'worli', 'dev', 'vinayak', 'priya', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_id` int(255) NOT NULL,
  `cardholder` varchar(255) NOT NULL,
  `card_no` bigint(200) NOT NULL,
  `exp_month` varchar(255) NOT NULL,
  `exp_year` int(11) NOT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_id`, `cardholder`, `card_no`, `exp_month`, `exp_year`, `cvv`) VALUES
(1, 'vrinda lotankar', 1111222233334444, 'May', 2028, 12);

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` bigint(11) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `age` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`id`, `firstname`, `lastname`, `email`, `phone`, `gender`, `Address`, `password`, `age`) VALUES
(0, 'vrinda ', 'lotanknar', 'vrindalotankar11@gmail.com', 9892480722, 'female', 'satrasta', 'vrinda123', 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `package_reg`
--
ALTER TABLE `package_reg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_id`),
  ADD KEY `card_no` (`card_no`),
  ADD KEY `cvv` (`cvv`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `package_reg`
--
ALTER TABLE `package_reg`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
