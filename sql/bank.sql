-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2021 at 02:56 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `Name` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `Balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `Name`, `email`, `Balance`) VALUES
(1, 'Tina', 'tina@tsf.com', 18000),
(2, 'Ravi', 'ravi@grip.com', 30000),
(3, 'Ali', 'ali@tsf.com', 25000),
(4, 'Yash', 'yash@grip.in', 17950),
(5, 'Mona', 'mona@tsf.in', 31000),
(6, 'Aryan', 'aryan@grip.com', 25000),
(7, 'Jyoti', 'jyoti@grip.in', 16550),
(8, 'Jiya', 'jiya@tsf.com', 26500),
(9, 'Harsh', 'harsh@grip.in', 24000),
(10, 'David', 'david@tsf.in', 31000);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `S_No` int(11) NOT NULL,
  `Sender` varchar(11) NOT NULL,
  `Receiver` varchar(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Date_Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`S_No`, `Sender`, `Receiver`, `Amount`, `Date_Time`) VALUES
(1, 'Jiya', 'Jyoti', 300, '2021-12-02 14:43:30'),
(2, 'Ravi', 'Harsh', 1000, '2021-12-03 13:14:03'),
(3, 'Jiya', 'Tina', 500, '2021-12-05 04:48:10'),
(4, 'Jiya', 'Jyoti', 4000, '2021-12-06 08:11:20'),
(5, 'Jiya', 'Tina', 3500, '2021-12-10 14:10:26'),
(6, 'David', 'Tina', 500, '2021-12-15 16:10:03'),
(7, 'Aryan', 'Jyoti', 2000, '2021-12-18 07:49:47'),
(8, 'David', 'Yash', 3000, '2021-12-18 08:39:59'),
(9, 'Aryan', 'Tina', 3000, '2021-12-18 13:45:41'),
(10, 'Jiya', 'Ali', 5000, '2021-12-19 08:17:53'),
(11, 'Yash', 'Jyoti', 50, '2021-12-19 11:05:59'),
(12, 'Harsh', 'Mona', 6000, '2021-12-19 13:46:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`S_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `S_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
