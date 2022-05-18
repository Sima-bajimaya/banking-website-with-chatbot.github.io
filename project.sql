-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 23, 2018 at 11:01 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `major_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `acc_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `acc_name` varchar(30) NOT NULL,
  `acc_type` varchar(10) NOT NULL,
  `balance` varchar(100) NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `passcode` varchar(6) NOT NULL DEFAULT '-99',
  `acc_no` varchar(12) NOT NULL,
  `status` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`acc_id`, `c_id`, `acc_name`, `acc_type`, `balance`, `created_time`, `passcode`, `acc_no`, `status`) VALUES
(4, 70, 'sima bajimaya', 'saving', '100000', '2022-01-01 20:24:57', '123456', '007046167269', 1),
(16, 1, 'jorisha joshi', 'saving', '252300', '2022-02-06 17:33:32', '123498', '007046167268', 1),
(19, 100, 'nafisha maharjan', 'saving', '200000', '2022-01-20 15:44:59', '123457', '007046167290', 1),
(20, 101, 'bipana khamcha', 'saving', '50000', '2021-08-20 16:15:47', '683249', '007046167267', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `card_id` int(30) NOT NULL,
  `c_id` int(10) NOT NULL,
  `acc_id` int(10) NOT NULL,
  `holder_name` varchar(30) NOT NULL,
  `till_month` varchar(10) NOT NULL,
  `till_year` varchar(10) NOT NULL,
  `csv` varchar(4) NOT NULL,
  `card_type` varchar(10) NOT NULL,
  `card_no` varchar(16) NOT NULL,
  `status` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`card_id`, `c_id`, `acc_id`, `holder_name`, `till_month`, `till_year`, `csv`, `card_type`, `card_no`, `status`) VALUES
(10, 70, 4, 'sima bajimaya', '08', '23', '494', 'Mastercard', '2685498962451745', 1),
(55, 101, 20, 'bipana khamcha', '10', '22', '779', 'Mastercard', '8616058501975566', 0),
(11, 1, 4, 'jorisha joshi', '08', '22', '494', 'Mastercard', '2685498962451745', 1),
(12, 100, 20, 'nafisha maharjan', '10', '23', '779', 'Mastercard', '8616058501975566', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cid` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `postal_add` varchar(40) DEFAULT NULL,
  `perm_add` varchar(50) DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) DEFAULT NULL,
  `middle_name` varchar(10) DEFAULT NULL,
  `pincode` varchar(6) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jon` int(1) DEFAULT '0',
  `hasAcc` int(11) NOT NULL DEFAULT '0',
  `last_otp` varchar(6) DEFAULT '-99'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cid`, `username`, `fname`, `lname`, `email`, `password`, `contact`, `postal_add`, `perm_add`, `city`, `state`, `country`, `middle_name`, `pincode`, `dob`, `gender`, `time`, `created_time`, `jon`, `hasAcc`, `last_otp`) VALUES
(1, 'jorishajoshi', 'jorisha', 'joshi', 'joshi.jorisha@gmail.com', '12345b', '7046167268', 'xyz', 'xyz', 'lalitpur', 'patan', 'nepal', NULL, '395006', NULL, 'female', '2022-02-06 08:56:55', '2022-02-06 16:33:37', 0, 1, '123456'),
(70, 'simabajimaya', 'sima', 'bajimaya', 'cmabajimaya@gmail.com', '123456bB', '7046167269', 'Baneshwor', 'Near Cooker Coffee, L.H.Road', 'Kathmandu', 'Kathmandu', 'Nepal', 'K', '395008', '1999-09-04', 'Female', '2022-01-01 13:44:07', '2022-01-01 13:44:07', 1, 1, '123467'),
(100, 'nafishamaharjan', 'Nafisha', 'Maharjan', 'mnafisha7@gmail.com', '123456bB', '7046167290', 'pulchowk', 'Near labimmall', 'Lalitpur', 'Bagmati', 'Nepal', 'J', '395006', '1999-03-19', 'Female', '2022-01-18 15:13:11', '2022-01-18 15:13:11', 1, 0, '-99'),
(101, 'bipanakhamcha', 'Bipana', 'Khamcha', 'bipana774@gmail.com', '123456bB', '7046167267', 'Line 2, Line 3', 'Near Ashok Vatika Society, L.H.Road', 'Nepalgunj', 'Nepalgunj', 'Nepal', 'R', '395006', '1999-08-08', 'female', '2021-03-20 16:12:13', '2021-03-20 16:12:13', 1, 1, '469819');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `f_id` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `f_text` varchar(50) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`f_id`, `email`, `f_text`, `time`) VALUES
(1, 'cmabajimaya@gmail.com', '123', '2022-01-27 08:58:56'),
(3, 'cmabajimaya@gmail.com', '123', '2022-02-19 09:03:50'),
(4, 'mnafisha7@gmail.com', '1234', '2022-02-20 09:24:41'),
(5, 'joshi.jorisha@gmail.com', 'Ickdsbkdbs', '2022-02-20 16:27:55'),
(6, 'joshi.jorisha@gmail.com', 'dlsjdsldlsk', '2022-02-21 00:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `r_id` int(10) NOT NULL,
  `acc_id` int(10) NOT NULL,
  `card_loan` varchar(10) DEFAULT NULL,
  `status_bit` varchar(5) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`r_id`, `acc_id`, `card_loan`, `status_bit`, `created_time`) VALUES
(1, 4, 'card', '1', '2022-01-05 12:27:35'),
(2, 19, 'card', '1', '2022-01-19 15:49:11'),
(11, 20, 'card', '1', '2022-10-20 11:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `t_id` int(100) NOT NULL,
  `from_acc` varchar(12) NOT NULL,
  `to_acc` varchar(12) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`t_id`, `from_acc`, `to_acc`, `amount`, `created_time`) VALUES
(39, '007046167268', '007046167267', '79', '2022-01-24 02:29:55'),
(42, '007046167267', '007046167268', '001', '2022-01-24 02:34:31'),
(43, '007046167267', '007046167268', '001', '2022-01-24 02:35:35'),
(44, '007046167267', '007046167268', '1', '2022-02-16 02:35:43'),
(68, '007046167267', '007046167268', '112', '2022-02-16 20:04:43'),
(69, '007046167267', '007046167268', '112', '2022-02-17 12:04:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`acc_id`),
  ADD UNIQUE KEY `acc_no` (`acc_no`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD UNIQUE KEY `f_id` (`f_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `from_acc` (`from_acc`),
  ADD KEY `to_acc` (`to_acc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `acc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `card_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `f_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `r_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `t_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customers` (`cid`);

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customers` (`cid`),
  ADD CONSTRAINT `cards_ibfk_2` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`);

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`from_acc`) REFERENCES `accounts` (`acc_no`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`to_acc`) REFERENCES `accounts` (`acc_no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
