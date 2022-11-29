-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 11:29 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `gstuser`
--

CREATE TABLE `gstuser` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'username',
  `email` varchar(50) NOT NULL COMMENT 'email',
  `contact` varchar(10) NOT NULL COMMENT 'contact',
  `password` varchar(50) NOT NULL COMMENT 'password'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gstuser`
--

INSERT INTO `gstuser` (`userid`, `name`, `email`, `contact`, `password`) VALUES
(1, 'rishabh', 'rishabh@gmail.com', '9898959556', 'qqq123'),
(2, 'varsha', 'varsha2611@gmail.com', '7046867498', 'varsha123'),
(3, 'Zara', 'Ali012@gmail.com', '124567890', 'zinda1223'),
(6, '11', '11', '11', '11'),
(7, '22', '22', '22', '22'),
(8, 'qqq', 'qqq', 'qqq', 'qqq');

-- --------------------------------------------------------

--
-- Table structure for table `invoicetbl`
--

CREATE TABLE `invoicetbl` (
  `gstno` varchar(20) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `invoiceno` decimal(10,0) NOT NULL,
  `gstper` decimal(10,0) NOT NULL,
  `gstamt` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoicetbl`
--

INSERT INTO `invoicetbl` (`gstno`, `amount`, `invoiceno`, `gstper`, `gstamt`, `total`) VALUES
('ABC1', '100', '18', '18', '18', '118'),
('asdfggr', '12', '12', '12', '1333', '14322');

-- --------------------------------------------------------

--
-- Table structure for table `nitin`
--

CREATE TABLE `nitin` (
  `any` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nitin`
--

INSERT INTO `nitin` (`any`, `name`) VALUES
(1, 'hgjhgwfhwilfh'),
(2, 'hgjhgwfhwilfh');

-- --------------------------------------------------------

--
-- Table structure for table `rv`
--

CREATE TABLE `rv` (
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rv`
--

INSERT INTO `rv` (`user`, `pass`) VALUES
('abhrissh', 'fwrsdvsdv'),
('Vimal', '10000'),
('Vimal', '10000'),
('Vimal', '10000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gstuser`
--
ALTER TABLE `gstuser`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nitin`
--
ALTER TABLE `nitin`
  ADD PRIMARY KEY (`any`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gstuser`
--
ALTER TABLE `gstuser`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nitin`
--
ALTER TABLE `nitin`
  MODIFY `any` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
