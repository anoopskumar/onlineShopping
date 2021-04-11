-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 11:23 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshoping1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `email` varchar(100) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `adress` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `mobileNumber` bigint(20) DEFAULT NULL,
  `orderDate` varchar(100) DEFAULT NULL,
  `deliveryDate` varchar(100) DEFAULT NULL,
  `paymentMethod` varchar(100) DEFAULT NULL,
  `transactionId` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`email`, `product_id`, `quantity`, `price`, `total`, `adress`, `city`, `state`, `country`, `mobileNumber`, `orderDate`, `deliveryDate`, `paymentMethod`, `transactionId`, `status`) VALUES
('anoopshaji83@gmail.com', 1, 3, 78, 234, 'assarisseril', 'cherthala', 'assarisseril', NULL, 807503725, '2021-03-14 11:41:20', '2021-03-21 11:41:20.000000', NULL, 'TID:12', 'Cancel'),
('anoopshaji83@gmail.com', 3, 1, 1000, 1000, 'assarisseril', 'cherthala', 'assarisseril', NULL, 807503725, '2021-03-14 11:41:20', '2021-03-21 11:41:20.000000', NULL, 'TID:12', 'Delivered'),
('anoopshaji83@gmail.com', 1, 1, 78, 78, 'assarisseril', 'cherthala', 'assarisseril', NULL, 807503725, '2021-03-14 11:45:36', '2021-03-21 11:45:36.000000', 'Online Payment', 'TID:13', 'Cancel'),
('anoopshaji83@gmail.com', 2, 1, 500, 500, 'assarisseril', 'cherthala', 'assarisseril', NULL, 807503725, '2021-03-14 11:45:36', '2021-03-21 11:45:36.000000', 'Online Payment', 'TID:13', 'Cancel'),
('anoopshaji83@gmail.com', 3, 1, 1000, 1000, 'assarisseril', 'cherthala', 'assarisseril', NULL, 807503725, '2021-03-14 11:45:36', '2021-03-21 11:45:36.000000', 'Online Payment', 'TID:13', 'Delivered'),
('anoopshaji83@gmail.com', 2, 1, 500, 500, 'assarisseril', 'cherthala', 'assarisseril', NULL, 807503725, '2021-03-14 12:08:09', '2021-03-21 12:08:09.000000', 'Cash on delivery(COD)', 'TID:13', 'Cancel'),
('anoopshaji83@gmail.com', 1, 1, 78, 78, 'assarisseril', 'cherthala', 'assarisseril', NULL, 807503725, '2021-03-14 12:08:09', '2021-03-21 12:08:09.000000', 'Cash on delivery(COD)', 'TID:13', 'Cancel'),
('anoopshaji83@gmail.com', 1, 1, 78, 78, 'assarisseril', 'cherthala', 'assarisseril', NULL, 807503725, '2021-03-14 12:13:33', '2021-03-21 12:13:33.000000', 'Cash on delivery(COD)', 'TID:12', 'Cancel'),
('anoopshaji83@gmail.com', 1, 1, 78, 78, 'assarisseril', 'cherthala', 'assarisseril', NULL, 80750372, '2021-03-14 12:15:50', '2021-03-21 12:15:50.000000', 'Cash on delivery(COD)', 'TID:13', 'Cancel'),
('anoopshaji83@gmail.com', 1, 1, 78, 78, 'assarisseril', 'cherthala', 'assarisseril', NULL, 8075037255, '2021-03-14 12:19:09', '2021-03-21 12:19:09.000000', 'Online Payment', 'TID:12', 'Cancel'),
('anoopshaji83@gmail.com', 1, 1, 78, 78, 'assarisseril', 'cherthala', 'assarisseril', NULL, 807503725, '2021-03-14 12:22:30', '2021-03-21 12:22:30.000000', 'Online Payment', 'TID:15', 'Cancel'),
('anoopshaji83@gmail.com', 2, 1, 500, 500, 'assarisseril', 'cherthala', 'assarisseril', NULL, 807503725, '2021-03-14 12:23:30', '2021-03-21 12:23:30.000000', 'Online Payment', 'TID:15', 'Cancel'),
('jr@4', 1, 1, 78, 78, 'kottor', 'cherthala', 'kottor', NULL, 96549696, '2021-03-14 12:28:41', '2021-03-21 12:28:41.000000', 'Online Payment', 'TID:16', 'bill'),
('anoopshaji83@gmail.com', 1, 1, 78, 78, 'assarisseril', 'cherthala', 'kerala', NULL, 8075037255, '2021-03-14 12:32:44', '2021-03-21 12:32:44.000000', 'Online Payment', 'TID:13', 'Cancel'),
('anoopshaji83@gmail.com', 3, 1, 1000, 1000, 'assarisseril', 'cherthala', 'kerala', NULL, 8075037255, '2021-03-14 12:35:23', '2021-03-21 12:35:23.000000', 'Cash on delivery(COD)', 'TID:12', 'Delivered'),
('anoopshaji83@gmail.com', 2, 1, 500, 500, 'assarisseril', 'cherthala', 'kerala', NULL, 8075037255, '2021-03-14 12:37:30', '2021-03-21 12:37:30.000000', 'Online Payment', 'TID:12', 'Cancel'),
('anoopshaji83@gmail.com', 2, 1, 500, 500, 'assarisseril', 'cherthala', 'kerala', NULL, 1234, '2021-03-14 12:39:38', '2021-03-21 12:39:38.000000', 'Online Payment', 'TID:15', 'Cancel'),
('anoopshaji83@gmail.com', 2, 1, 500, 500, 'assarisseril', 'cherthala', 'kerala', NULL, 1234, '2021-03-14 12:40:27', '2021-03-21 12:40:27.000000', 'Cash on delivery(COD)', 'TID:15', 'Cancel'),
('manu@14', 1, 1, 78, 78, 'xyz', 'alapy', 'kerala', NULL, 987, '2021-03-14 12:43:26', '2021-03-21 12:43:26.000000', 'Online Payment', 'TID:15', 'bill'),
('manu@14', 1, 1, 78, 78, 'xyz', 'alapy', 'kerala', NULL, 987, '2021-03-14 13:57:38', '2021-03-21 13:57:38.000000', 'Online Payment', 'TID:15', 'bill'),
('manu@14', 2, 1, 500, 500, 'xyz', 'alapy', 'kerala', NULL, 987, '2021-03-14 13:57:38', '2021-03-21 13:57:38.000000', 'Online Payment', 'TID:15', 'bill'),
('anoopshaji83@gmail.com', 2, 1, 500, 500, 'assarisseril', 'cherthala', 'kerala', NULL, 1234, '2021-03-14 13:59:05', '2021-03-21 13:59:05.000000', 'Cash on delivery(COD)', 'TID:12', 'Cancel'),
('anoopshaji83@gmail.com', 1, 1, 78, 78, 'assarisseril', 'cherthala', 'kerala', NULL, 1234, '2021-03-14 14:01:45', '2021-03-21 14:01:45.000000', 'Cash on delivery(COD)', 'TID:12', 'Cancel'),
('anoopshaji83@gmail.com', 2, 1, 500, 500, 'assarisseril', 'cherthala', 'kerala', NULL, 1234, '2021-03-14 14:02:52', '2021-03-21 14:02:52.000000', 'Cash on delivery(COD)', 'TID:15', 'Cancel'),
('lx@123', 1, 1, 78, 78, 'abc', 'kochi', 'tamilnadu', NULL, 56849, '2021-03-14 14:08:43', '2021-03-21 14:08:43.000000', 'Online Payment', 'TID:23', 'bill'),
('anoopshaji83@gmail.com', 1, 1, 78, 78, 'assarisseril', 'cherthala', 'kerala', NULL, 1234, '2021-03-14 14:12:09', '2021-03-21 14:12:09.000000', 'Cash on delivery(COD)', 'TID:13', 'Cancel'),
('manu@14', 3, 1, 1000, 1000, 'xyz', 'alapy', 'kerala', NULL, 987, '2021-03-14 14:14:42', '2021-03-21 14:14:42.000000', 'Online Payment', 'TID:13', 'bill'),
('manu@14', 1, 1, 78, 78, 'xyz', 'alapy', 'kerala', NULL, 987, '2021-03-14 14:16:17', '2021-03-21 14:16:17.000000', 'Cash on delivery(COD)', 'TID:12', 'bill'),
('anoopshaji83@gmail.com', 1, 1, 78, 78, 'assarisseril', 'cherthala', 'kerala', NULL, 1234, '2021-03-14 14:52:27', '2021-03-21 14:52:27.000000', 'Online Payment', 'TID:13', 'Cancel'),
('manu@14', 3, 1, 1000, 1000, 'xyz', 'alapy', 'kerala', NULL, 987, '2021-03-14 14:55:41', '2021-03-21 14:55:41.000000', 'Cash on delivery(COD)', 'TID:12', 'bill'),
('manu@14', 3, 1, 1000, 1000, 'xyz', 'alapy', 'kerala', NULL, 987, '2021-03-14 14:57:28', '2021-03-21 14:57:28.000000', 'Cash on delivery(COD)', 'TID:16', 'bill'),
('anoopshaji83@gmail.com', 2, 1, 500, 500, 'assarisseril', 'cherthala', 'kerala', NULL, 1234, '2021-03-14 15:04:09', '2021-03-21 15:04:09.000000', 'Cash on delivery(COD)', 'TID:15', 'Cancel'),
('anoopshaji83@gmail.com', 1, 1, 78, 78, 'assarisseril', 'cherthala', 'kerala', NULL, 9496432917, '2021-03-14 23:39:16', '2021-03-21 23:39:16.000000', 'Online Payment', 'TID:16', 'Cancel'),
('anoopshaji83@gmail.com', 2, 1, 500, 500, 'assarisseril', 'cherthala', 'kerala', NULL, 9496432917, '2021-03-14 23:39:16', '2021-03-21 23:39:16.000000', 'Online Payment', 'TID:16', 'Cancel'),
('se@12', 1, 1, 78, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('se@12', 2, 1, 500, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('se@12', 3, 1, 1000, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('anoopshaji83@gmail.com', 1, 1, 1500, 1500, 'assarisseril', 'cherthala', 'kerala', NULL, 9496432917, '2021-03-15 15:38:30', '2021-03-22 15:38:30.000000', 'Cash on delivery(COD)', 'TID:16', 'processing'),
('anoopshaji83@gmail.com', 2, 1, 2000, 2000, 'assarisseril', 'cherthala', 'kerala', NULL, 9496432917, '2021-03-15 15:38:30', '2021-03-22 15:38:30.000000', 'Cash on delivery(COD)', 'TID:16', 'Cancel'),
('vs@12', 1, 2, 1500, 3000, 'kootorkoyilat', 'cherthala', 'kerala', NULL, 12345678, '2021-03-15 15:48:14', '2021-03-22 15:48:14.000000', 'Online Payment', 'TID:13', 'Delivered'),
('vs@12', 2, 1, 2000, 2000, 'kootorkoyilat', 'cherthala', 'kerala', NULL, 12345678, '2021-03-15 15:48:14', '2021-03-22 15:48:14.000000', 'Online Payment', 'TID:13', 'processing'),
('vs@12', 3, 1, 75, 75, 'kootorkoyilat', 'cherthala', 'kerala', NULL, 12345678, '2021-03-15 15:48:14', '2021-03-22 15:48:14.000000', 'Online Payment', 'TID:13', 'processing');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `body` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `email`, `subject`, `body`) VALUES
(1, 'anoopshaji83@gmail.com', 'related to products', NULL),
(2, 'anoopshaji83@gmail.com', 'products', 'your product are good'),
(3, 'anoopshaji83@gmail.com', 'About services', 'All Your Services are really good');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `active`) VALUES
(1, 'Fast', 'watch', 1500, 'Yes'),
(2, 'Titan', 'Watch', 2000, 'Yes'),
(3, 'Pears', 'Soap', 75, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobilenumber` bigint(20) DEFAULT NULL,
  `securityQuestion` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `mobilenumber`, `securityQuestion`, `answer`, `password`, `address`, `city`, `state`) VALUES
('akhil', 'ak@gmail.com', 45562, 'What was your first car?', 'bens', '153', '', '', ''),
('anandhu', 'anandhu@123', 987, 'What was your first car?', 'enfee', 'qwe', '', '', ''),
('mo', 'ano3@gmail.com', 8075037257, 'What was your first car?', 'audi', '369', '', '', ''),
('mohanlal', 'anoopshaji83@gmail.com', 9496432917, 'What elementary school did you attend?', 'cam', '78', 'assarisseril', 'cherthala', 'kerala'),
('jerin', 'jr@4', 96549696, 'What was your first car?', 'kr', '98', 'kottor', 'cherthala', 'kottor'),
('luxs', 'lx@123', 56849, 'What was your first car?', 'pack', '7845', 'abc', 'kochi', 'tamilnadu'),
('manu', 'manu@14', 98778, 'What was your first car?', 'zap', '369', 'ABC hostal', 'kannur', 'TN'),
('mohanla', 'oopshaji83@gmail.com', 875037255, 'What was your first car?', 'audi', '78', '', '', ''),
('sethu', 'se@12', 98765543, 'What was your first car?', 'qwe', '56', '', '', ''),
('surya', 'sr@12', 4321, 'What was your first car?', 'geep', 'anoop', '', '', ''),
('varub', 'va@12', 8075037, 'What was your first car?', 'assp', '456', '', '', ''),
('vishnu', 'vih@1', 143, 'What was your first car?', 'dao', 'da', '', '', ''),
('vijay', 'vj@134', 7000, 'What was your first car?', 'xp', 'qwer', '', '', ''),
('vishu nb', 'vs@12', 12345678, 'What was your first car?', 'car', '456', 'kootorkoyilat123', 'cherthala', 'kerala');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
