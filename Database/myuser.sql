-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2020 at 11:35 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myuser`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `userEmail` varchar(150) NOT NULL,
  `userPrefix` varchar(10) NOT NULL,
  `userFirstname` varchar(150) NOT NULL,
  `userLastname` varchar(150) NOT NULL,
  `userFullname` varchar(200) DEFAULT '0',
  `userImage` varchar(250) DEFAULT NULL,
  `isActive` char(1) DEFAULT '1',
  `userStatusCode` varchar(10) NOT NULL,
  `userEmployeeID` varchar(10) NOT NULL,
  `userDateTimeCreate` datetime NOT NULL,
  `userDateTimeUpdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `password`, `userEmail`, `userPrefix`, `userFirstname`, `userLastname`, `userFullname`, `userImage`, `isActive`, `userStatusCode`, `userEmployeeID`, `userDateTimeCreate`, `userDateTimeUpdate`) VALUES
(8, 'user', 'user', 'user@user.com', 'Mr', 'user', 'user', 'Mr.user user', 'user5da93fd3a9eb7.png', '1', '100', 'user', '2019-10-17 13:54:15', '0000-00-00 00:00:00'),
(9, 'user2', 'user2', 'user2@gmail.com', '', '', '', '0', NULL, '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
