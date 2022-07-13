-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 12:47 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerdata`
--

CREATE TABLE `customerdata` (
  `ID` int(5) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email_address` varchar(30) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `account_no` varchar(30) NOT NULL,
  `aadhar_no` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `taluka` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `customer_img` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerdata`
--

INSERT INTO `customerdata` (`ID`, `first_name`, `father_name`, `last_name`, `email_address`, `mobile_no`, `account_no`, `aadhar_no`, `address`, `city`, `taluka`, `district`, `state`, `dob`, `balance`, `pincode`, `customer_img`, `gender`) VALUES
(104, 'Jethalal', 'champaklal', 'Gada', 'jethya01@gmail.com', '9879879877', '51130043', '876543210', '11,Adajan', 'Surat', 'Surat', 'Surat', 'Gujarat', '2021-06-29', '2700', '395009', '', 'Male'),
(106, 'daya', 'jethalal', 'gada', 'daya@gmail.com', '9876598765', '1662531305', '98765432', '11,Adajan', 'surat', 'Surat', 'Surat', 'Gujarat', '2021-06-27', '4000', '395009', '', 'Female'),
(107, 'Bhide', 'abc', 'pqr', 'bhide@gmail.com', '9898989867', '1693562362', '9876789987', 'Dumas', 'Surat', 'Surat', 'Surat', 'Gujarat', '2021-06-27', '2000', '395007', '', 'Male'),
(108, 'Tapu', 'jethalal', 'Gada', 'tapu@gmail.com', '8989898989', '1092629204', '876876876', '11,Adajan', 'Surat', 'Surat', 'Surat', 'Gujarat', '2021-06-27', '2000', '395009', '', 'Male'),
(109, 'Tapu', 'jethalal', 'Gada', 'jethya01@gmail.com', '9879879877', '2050175350', '98765432', '11,Adajan', 'Surat', 'Surat', 'Surat', 'Gujarat', '2021-06-27', '200', '395009', '', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `customer_contacts`
--

CREATE TABLE `customer_contacts` (
  `ID` int(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email_address` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_contacts`
--

INSERT INTO `customer_contacts` (`ID`, `fullname`, `email_address`, `subject`, `message`) VALUES
(6, 'harsh', 'harsh24@gmail.com', 'project', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `employeedata`
--

CREATE TABLE `employeedata` (
  `ID` int(5) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email_address` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL,
  `emp_id` varchar(10) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `taluka` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeedata`
--

INSERT INTO `employeedata` (`ID`, `first_name`, `father_name`, `last_name`, `email_address`, `pass`, `mobile_no`, `aadhar_no`, `emp_id`, `dob`, `qualification`, `address`, `city`, `taluka`, `district`, `state`) VALUES
(1, 'Tanish', 'ABCD', 'Upadhyay', 'tanishdu13@gmail.com', '1q2w3e4r', '7676767878', '8787676767', '123', '24/1/2002', 'B.com', 'ADAjan', 'surat', 'surat', 'surat', 'gujarat'),
(20, 'Kushal', 'acb', 'pqr', 'bhide@gmail.com', '', '9898989867', '98765432', '4140', '2021-06-30', 'B.com', 'Dumas', 'Surat', 'Surat', 'Surat', 'Gujarat');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `ID` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `aadhar_no` varchar(30) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `age` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ID`, `name`, `email`, `pass`, `dob`, `address`, `mobile`, `aadhar_no`, `qualification`, `age`) VALUES
(1, 'Harsh Patelwala', 'harsh24@gmail.com', '24680', '24/1/2002', 'abc', '9876543210', '9876543210', 'B.com', '25');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `id` int(11) NOT NULL,
  `from_account` varchar(30) NOT NULL,
  `to_account` varchar(30) NOT NULL,
  `transfer_amount` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`id`, `from_account`, `to_account`, `transfer_amount`, `date`) VALUES
(11, '2119257142', '51130043', '1000', '2021-07-02'),
(12, '2119257142', '51130043', '500', '2021-07-02'),
(13, '1662531305', '51130043', '1000', '2021-07-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerdata`
--
ALTER TABLE `customerdata`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employeedata`
--
ALTER TABLE `employeedata`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerdata`
--
ALTER TABLE `customerdata`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employeedata`
--
ALTER TABLE `employeedata`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
