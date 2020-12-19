-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2020 at 08:06 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracnghiemonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `IDUser` varchar(16) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `passWord` varchar(16) NOT NULL,
  `role` varchar(16) NOT NULL,
  `Email` text NOT NULL,
  `address` text NOT NULL,
  `avatar` longblob DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`IDUser`, `FullName`, `gender`, `passWord`, `role`, `Email`, `address`, `avatar`, `phone`) VALUES
('123123', 'Nguyen Van A', 'Male', '123456', 'Student', 'abc@gmail.com', '22 sad', NULL, '01234567');

-- --------------------------------------------------------

--
-- Table structure for table `nganhangcauhoi`
--

CREATE TABLE `nganhangcauhoi` (
  `ID` varchar(6) NOT NULL,
  `Level` text NOT NULL,
  `Noidung` text NOT NULL,
  `TraLoi1` text NOT NULL,
  `TraLoi2` text NOT NULL,
  `TraLoi3` text NOT NULL,
  `TraLoi4` text NOT NULL,
  `DapAn` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nganhangcauhoi`
--

INSERT INTO `nganhangcauhoi` (`ID`, `Level`, `Noidung`, `TraLoi1`, `TraLoi2`, `TraLoi3`, `TraLoi4`, `DapAn`) VALUES
('Q0000', '1', 'Noi dung asdasdas', 'tl 1', 'tl 2', 'tl 3', 'tl 4', 'A'),
('Q00001', '2', 'ưxxxcza', 'op1', 'op2', 'op3', 'op4', 'A'),
('Q00002', '3', 'jk', 'op1', 'op2', 'op3', 'op4', 'B'),
('Q00003', '3', 'hjkhjk', 'op1', 'op2', 'op3', 'op4', 'D'),
('Q00004', '3', 'yghjk', 'op1', 'op2', 'op3', 'op4', 'C'),
('Q00005', '3', 'ygkhjk', 'op1', 'op2', 'op3', 'op4', 'B'),
('Q00006', '2', 'bbbbb', 'vvvvv', 'bbbbbbb', 'vvvvvvvvvvvv', 'bbb', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`IDUser`),
  ADD UNIQUE KEY `Email` (`Email`) USING HASH;

--
-- Indexes for table `nganhangcauhoi`
--
ALTER TABLE `nganhangcauhoi`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
