-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 06:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dancan_hyrax`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(7, 'Dancan maingi', '2016-02-17', 120000, 1),
(8, 'Abdi Karik', '2019-08-29', 180000, 2),
(9, 'Sarah Ann Connor', '2019-01-08', 100000, 3),
(11, 'Stephen Ojwang', '2024-06-21', 10000, 1),
(13, 'Albert Omondi', '2023-07-23', 10000, 1),
(14, 'Brian Omollo', '2012-09-24', 10000, 2),
(15, 'Paul otsoti', '2023-06-10', 110000, 1),
(16, 'Richard ogolla', '2012-05-20', 120000, 2),
(17, 'John okoro', '2009-08-12', 100000, 3),
(18, 'Nik Osoro', '2020-05-21', 10000, 2),
(20, 'Jck mzee', '2012-07-23', 17000, 1),
(21, 'Aron Kiptoo', '2013-05-02', 20000, 1),
(22, 'Mark Kidero', '2022-07-20', 60000, 1),
(23, 'John Muteti', '2013-03-21', 20000, 2),
(25, 'Mercy Mutai', '2012-10-12', 60000, 1),
(26, 'Lucy Otieno', '2011-12-02', 700000, 2),
(27, 'Brina Mukuri', '2014-01-05', 110000, 3),
(28, 'Tricia Mateta', '2016-02-09', 100000, 1),
(29, 'John Muriungi', '2018-10-15', 120000, 2),
(30, 'Mark Kubai', '2012-01-21', 120000, 3),
(31, 'Peter Marene', '2019-01-12', 210000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(2, 'SILVER WATCH', 'elegant wear for you', 320000, 'brace1.jpg'),
(5, 'SILVER BRACELET', 'Feel the real wealth', 21000, 'Silver1.jpg'),
(6, 'SILVER RING', 'Engage in a wealthy manner', 87000, 'Silver4.jpg'),
(7, 'GOLD RING', 'Smell france of wealth everywhere you go', 687000, 'gold2.jpg'),
(8, 'AFRICAN BEAD NECKLACE', 'Elegant traditional african wears', 7000, 'Bead8.jpg'),
(9, '24K GOLD WATCH', 'Feel timely evry moment', 790000, 'watch3.jpg'),
(10, 'COMFY TURKEY BED', 'Enjoy every moment of your nap', 10000, 'furniture1.jpeg'),
(11, 'NEW JERSEY', ' Live to Enjoy every moment of your football support', 1000, 'image3.jpg'),
(12, 'MODERN SEATS', ' Have a comfy ,moment enlighting seats for a better life', 20000, 'furniture1.jpeg'),
(13, 'MODERN SEATS', ' Have a comfy ,moment enlighting seats for a better life', 20000, 'furniture1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(1, 'Dancan', '123456', 'duncanmaingi71@gmail.com', '0712345678'),
(2, 'anthony', '1234', 'anthony@gmail.com', '0787654321'),
(3, 'Ibrahim', '0000', 'ibrah123@gmail.com', '0722179887'),
(4, 'Austin', '1111', 'austin11@gmail.com', '0711129152'),
(5, 'Victor', '1111', 'victor50-9@gmail.com', '0700132514'),
(6, 'Victor', '1111', 'victor50-9@gmail.com', '0700132514'),
(7, 'Victor', '1111', 'victor50-9@gmail.com', '0700132514'),
(8, 'Victor', '1111', 'victor50-9@gmail.com', '0700132514'),
(9, 'Victor', '1111', 'victor50-9@gmail.com', '0700132514'),
(10, 'Victor', '1111', 'victor50-9@gmail.com', '0700132514'),
(11, 'Victor', '1111', 'victor50-9@gmail.com', '0700132514'),
(12, 'Victor', '1111', 'victor50-9@gmail.com', '0700132514');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
