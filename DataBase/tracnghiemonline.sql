-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2020 at 02:52 PM
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
  `phone` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`IDUser`, `FullName`, `gender`, `passWord`, `role`, `Email`, `address`, `avatar`, `phone`) VALUES
('123123', 'Nguyen Van An', 'Female', '123456', 'Student', 'ancl@gmail.com', '22 sad met ge', NULL, '01234567yyyyyy'),
('456456', 'Admin', 'Male', '123456', 'Admin', 'admin@axxx.com', '75 xjan ', NULL, '9635201234'),
('S00002', 'phong Nguyễn', 'Male', '123456', 'Student', 'phongdeptraivodichthienha@gmail.com', '314/14 Nguyễn Thái Học', NULL, '+84935580428');

-- --------------------------------------------------------

--
-- Table structure for table `bangdiem`
--

CREATE TABLE `bangdiem` (
  `stt` int(11) NOT NULL,
  `iduser` varchar(16) NOT NULL,
  `diem` int(11) NOT NULL,
  `thoigian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bangdiem`
--

INSERT INTO `bangdiem` (`stt`, `iduser`, `diem`, `thoigian`) VALUES
(1, '123123', 10, '2020-12-20 18:02:38'),
(2, '123123', 0, '2020-12-20 18:10:13'),
(3, 'null', 0, '2020-12-20 19:00:39'),
(4, '456456', 0, '2020-12-25 08:27:11'),
(5, '123123', 0, '2020-12-28 09:26:59'),
(6, '123123', 0, '2020-12-28 09:29:45'),
(7, '123123', 0, '2020-12-28 09:34:42');

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
('Q0000', '2', 'Noi dung ', 'tl 1', 'tl 2', 'tl 3 fvgjbhkj', 'tl 4', 'B'),
('Q00001', '2', 'ưxxxcza', 'op1', 'op2', 'op3', 'op4', 'A'),
('Q00002', '3', 'jk', 'op1', 'op2', 'op3', 'op4', 'B'),
('Q00003', '3', 'hjkhjk', 'op1', 'op2', 'op3', 'op4', 'D'),
('Q00004', '3', 'yghjk', 'op1', 'op2', 'op3', 'op4', 'C'),
('Q00005', '3', 'ygkhjk', 'op1', 'op2', 'op3', 'op4', 'B'),
('Q00006', '2', 'bbbbb', 'vvvvv', 'bbbbbbb', 'vvvvvvvvvvvv', 'bbb', 'A'),
('Q00007', '2', 'sadss', 's', 'sd', 'fg', 'cb', 'C'),
('Q00008', '1', 'sda', 'dd', 'ssa', 'xxx', 'wdas', 'A'),
('Q00009', '2', 'axcz', 'bvc', 'reb', 're', 'bfd', 'B'),
('Q00010', '2', 'axcz', 'bvc', 'reb', 're', 'bfd', 'B'),
('Q00011', '2', 'axcz', 'bvc', 'reb', 're', 'bfd', 'B'),
('Q00012', '2', 'axcz', 'bvc', 'reb', 're', 'bfd', 'B'),
('Q00013', '2', 'axcz', 'bvc', 'reb', 're', 'bfd', 'B'),
('Q00014', '2', 'axcz', 'bvc', 'reb', 're', 'bfd', 'B'),
('Q00015', '2', 'axcz', 'bvc', 'reb', 're', 'bfd', 'B'),
('Q00016', '2', 'axcz', 'bvc', 'reb', 're', 'bfd', 'B'),
('Q00017', '2', 'axcz', 'bvc', 'reb', 're', 'bfd', 'B'),
('Q00018', '2', 'axcz', 'bvc', 'reb', 're', 'bfd', 'B'),
('Q00019', '2', 'axcz', 'bvc', 'reb', 're', 'bfd', 'B'),
('Q00020', '2', 'noi dung cau hoi test', 'tra loi test 1', 'tra loi test 2', 'tra loi test 3', 'tra loi test 4', 'D');

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
-- Indexes for table `bangdiem`
--
ALTER TABLE `bangdiem`
  ADD PRIMARY KEY (`stt`);

--
-- Indexes for table `nganhangcauhoi`
--
ALTER TABLE `nganhangcauhoi`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangdiem`
--
ALTER TABLE `bangdiem`
  MODIFY `stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
