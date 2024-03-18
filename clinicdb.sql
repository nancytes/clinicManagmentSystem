-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 10:48 AM
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
-- Database: `clinicdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `idc` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `idc`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(1, 1, 'Nancy ', 'Tesfaye', 'Female', 'NSR/1221/14', '0979055149', 'Yordanos Mulugeta', 0, '2024-02-29', '12:00:00', 1, 1),
(3, 2, 'Gedion ', 'Assaye', 'Male', 'NSR/2772/14', '0902568158', 'Nancy Tesfaye', 0, '2024-03-27', '12:00:00', 1, 1),
(2, 3, 'Yordanos ', 'Mulugeta', 'Female', 'NSR/2771/14', '0923681176', 'Nancy Tesfaye', 0, '2024-02-29', '12:00:00', 1, 1),
(4, 4, 'Yohannis ', 'Wondu', 'Male', 'NSR/1111/14', '0916854757', 'Nancy Tesfaye', 0, '2024-04-24', '08:00:00', 1, 1),
(5, 5, 'Ashenafi ', 'Aberham', 'Male', 'NSR/2222/14', '0902568198', 'Gedion Assaye', 0, '2024-02-29', '12:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `idc` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `idc`, `contact`, `message`) VALUES
('Nancy Tesfaye', 'NSR/1221/14', '0979055149', 'I appreciate your service. thanks alot ');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `idc` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `idc`, `spec`, `docFees`) VALUES
('Nancy Tesfaye', 'nan123', 'DOC/01', 'General', 0),
('Yordanos Mulugeta', 'yo123', 'DOC/02', 'General', 0),
('Gedion Assaye', 'gedi123', 'DOC/03', 'General', 0);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `idc` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `idc`, `contact`, `password`, `cpassword`) VALUES
(1, 'Nancy ', 'Tesfaye', 'Female', 'NSR/1221/14', '0979055149', '12345678', '12345678'),
(2, 'Yordanos ', 'Mulugeta', 'Female', 'NSR/2771/14', '0923681176', '12345678', '12345678'),
(3, 'Gedion ', 'Assaye', 'Male', 'NSR/2772/14', '0902568158', '12345678', '12345678'),
(4, 'Yohannis ', 'Wondu', 'Male', 'NSR/1111/14', '0916854757', '12345678', '12345678'),
(5, 'Ashenafi ', 'Aberham', 'Male', 'NSR/2222/14', '0902568198', '12345678', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Nancy Tesfaye', 0, 34, 'Yordanos ', 'Mulugeta', '2024-03-12', '12:00:00', 'weba', 'no allergy', 'quartem'),
('Nancy Tesfaye', 0, 37, 'Gedion ', 'Assaye', '2024-03-23', '14:00:00', 'ras metat', 'no allergy', 'panadol'),
('Yordanos Mulugeta', 1, 1, 'Nancy ', 'Tesfaye', '2024-02-29', '12:00:00', 'weba', 'no allergy', 'quartem'),
('Gedion Assaye', 5, 5, 'Ashenafi ', 'Aberham', '2024-02-29', '12:00:00', 'ras metat', 'no allergy', 'panadol'),
('Nancy Tesfaye', 3, 2, 'Gedion ', 'Assaye', '2024-03-27', '12:00:00', 'weba', 'no allergy', 'quartem'),
('Nancy Tesfaye', 2, 3, 'Yordanos ', 'Mulugeta', '2024-02-29', '12:00:00', 'ras metat', 'no allergy', 'pharcentamol'),
('Nancy Tesfaye', 4, 4, 'Yohannis ', 'Wondu', '2024-04-24', '08:00:00', 'weba', 'no allergy', 'glucose'),
('Yordanos Mulugeta', 1, 1, 'Nancy ', 'Tesfaye', '2024-02-29', '12:00:00', 'hod kurtet', 'no allergy', 'nothing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
