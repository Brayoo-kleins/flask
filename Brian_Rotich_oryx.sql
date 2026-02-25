-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 09:52 AM
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
-- Database: `Brian Rotich_oryx`
--

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'CodeEmpire Kleins', '2026-02-09', 100000, 1),
(2, 'Kleins Brian', '2026-02-17', 50000, 1),
(3, 'Sarah Ann Connor', '2026-02-10', 100000, 2),
(4, 'Brian Rotich', '2026-02-12', 20000, 2),
(5, 'CodeEmpire Kleins', '2026-01-17', 6000, 2),
(7, 'Enock Runners', '2024-05-15', 35000, 1),
(8, 'Emily Brooks', '2023-05-15', 90000, 1),
(9, 'Lawi Sami', '2023-05-15', 100000, 2),
(10, 'Kim Onyango', '2019-09-18', 50000, 2),
(13, 'Enock Allans', '2026-02-10', 100000, 2),
(14, 'Lizz Elizabet', '2026-02-10', 200000, 2),
(15, 'Poul Webo', '2029-02-10', 200000, 3),
(16, 'Agnes Wairimu', '2029-02-10', 890000, 3),
(17, 'Ryan Mutsami', '2029-02-10', 890000, 3),
(18, 'Krish Bahubali', '2029-09-10', 5000, 1),
(19, 'Manase menace', '2029-09-10', 100, 1),
(20, 'Robert Bii', '2026-02-17', 100000, 2),
(21, 'Robert Bii', '2026-02-17', 100000, 2),
(22, 'Ezzra Bawabu', '2026-02-28', 1000000, 1),
(23, 'eric mwando', '2026-02-25', 1000000, 2),
(24, 'Christopher Maritim', '2026-02-24', 2000000, 2),
(25, 'man Bawabu', '2026-02-13', 2000000, 1),
(26, 'man Bawabu', '2026-02-13', 2000000, 1),
(27, 'Poul Manase', '2026-02-13', 2900000, 3),
(28, 'Caleb Nimroad\r\n', '2026-02-16', 2000000, 3),
(29, 'Caleb Rono', '2026-02-16', 2000000, 3),
(30, 'Rickson Riss', '2026-02-16', 2000000, 3),
(31, 'Brian Roys', '2026-02-16', 2000000, 3),
(32, 'Tito Wayne', '2026-02-10', 100000, 3),
(33, 'Tito wayne\r\n', '2026-02-10', 100000, 3),
(34, 'Kleins Rono', '2026-02-09', 1000000, 1),
(35, 'Kleins Rono', '2026-02-09', 1000000, 1),
(36, 'Tito wayne\r\n', '2026-02-10', 100000, 3),
(37, 'Kelvin Mwangi', '2025-04-12', 200000, 2);

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
(5, 'IPHONE 17 promax', 'Used like new', 300000, '<FileStorage: \'watch2.jpg\' (\'image/jpeg\')>'),
(6, 'mattresses', 'Used like new', 20000, '<FileStorage: \'bicycle-4960516_1920.jpg\' (\'image/jpeg\')>'),
(7, 'bicycle', 'Used like new', 20000, '<FileStorage: \'bicycle-4960516_1920.jpg\' (\'image/jpeg\')>'),
(8, 'smart tvs', 'Used like new', 200000, '<FileStorage: \'brace4.jpg\' (\'image/jpeg\')>'),
(9, 'Sony Radios', 'Used like new', 1000, '<FileStorage: \'ring3.jpg\' (\'image/jpeg\')>'),
(10, 'Sony Radios', 'Used like new', 1000, '<FileStorage: \'ring3.jpg\' (\'image/jpeg\')>'),
(11, 'Sony Radios', 'Used like new', 1000, '<FileStorage: \'ring3.jpg\' (\'image/jpeg\')>'),
(12, 'Sony Radios', 'Used like new', 1000, '<FileStorage: \'ring3.jpg\' (\'image/jpeg\')>');

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
(1, 'CodeEmpire', '12345', 'brayookleins9@gmail.com', '0743072385'),
(2, 'Enock Allans', '987622', 'brayookleins9@gmail.com', '0743072383'),
(3, 'Ray Rowens ', '673333', 'rayoos@gmail.com', '0743072383'),
(4, 'Man Jeremy', '895563', 'Jeremy3@gmail.com', '07438388383'),
(5, 'Tito Omari', '89678', 'tito@gmail.com', '07438265383'),
(6, 'Tito Omari', '89678', 'tito@gmail.com', '07438265383'),
(7, 'Tito Omari', '89678', 'tito@gmail.com', '07438265383'),
(8, 'Tito Omari', '89678', 'tito@gmail.com', '07438265383'),
(9, 'Tito Omari', '89678', 'tito@gmail.com', '07438265383'),
(10, 'Tito Omari', '89678', 'tito@gmail.com', '07438265383'),
(11, 'Tito Omari', '89678', 'tito@gmail.com', '07438265383');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
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
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
