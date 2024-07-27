-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2024 at 10:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `appuser`
--

CREATE TABLE `appuser` (
  `appuser_pk` int(11) NOT NULL,
  `userRole` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appuser`
--

INSERT INTO `appuser` (`appuser_pk`, `userRole`, `name`, `mobileNumber`, `email`, `password`, `address`, `status`) VALUES
(1, 'SuperAdmin', 'Super Admin', '12345', 'superadmin@email.com', 'admin', 'Indonesia', 'Active'),
(3, 'Admin', 'Test 2', '02314124', 'testadmin@email.com', '123', 'bandung', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_pk` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_pk`, `name`) VALUES
(4, 'Rokok'),
(5, 'Elektronik');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_pk` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_pk`, `name`, `mobileNumber`, `email`) VALUES
(1, 'Muhammad Ilham Nugraha', '082261049678', 'ilhamngrh633@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `order_pk` int(11) NOT NULL,
  `orderId` varchar(200) DEFAULT NULL,
  `customer_fk` int(11) DEFAULT NULL,
  `orderDate` varchar(200) DEFAULT NULL,
  `totalPaid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`order_pk`, `orderId`, `customer_fk`, `orderDate`, `totalPaid`) VALUES
(1, 'Bill-18273191269000', 1, '18-07-2024', 50000),
(2, 'Bill-18332983314000', 1, '18-07-2024', 50000),
(3, 'Bill-18640519121600', 1, '18-07-2024', 45000),
(4, 'Bill-3811911640200', 1, '19-07-2024', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_pk` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `category_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_pk`, `name`, `quantity`, `price`, `description`, `category_fk`) VALUES
(1, 'test product', 12, 100, 'test product', 2),
(2, 'test 2', 16, 20, 'test 2', 3),
(3, 'Signature', 97, 25000, 'Rokok Membunuhmu, Bukan Membunuhku', 4),
(4, 'Headset', 48, 10000, 'Hulu sia di headset an ku aing', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appuser`
--
ALTER TABLE `appuser`
  ADD PRIMARY KEY (`appuser_pk`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_pk`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_pk`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`order_pk`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_pk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appuser`
--
ALTER TABLE `appuser`
  MODIFY `appuser_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `order_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
