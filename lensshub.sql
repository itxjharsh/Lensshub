-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 11, 2023 at 08:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lensshub`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cart`
--

CREATE TABLE `Cart` (
  `Customer_Id` varchar(255) NOT NULL,
  `specs_id` varchar(255) NOT NULL,
  `specs_price` varchar(255) NOT NULL,
  `cart_order_id` int(255) NOT NULL,
  `specs_name` varchar(255) NOT NULL,
  `quan` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Cart`
--

INSERT INTO `Cart` (`Customer_Id`, `specs_id`, `specs_price`, `cart_order_id`, `specs_name`, `quan`) VALUES
('jairajrani261@gmail.com', '4', '1069', 11, 'METURO', 1),
('jairajrani261@gmail.com', '7', '1359', 12, 'ORLOFF', 1),
('jairajrani261@gmail.com', '2', '1199', 14, 'COSSANDRA', 1),
('jairajrani261@gmail.com', '8', '1099', 15, 'IOLITE', 1),
('jairajrani261@gmail.com', '1', '1099', 16, 'COSSANDRA', 1),
('jairajrani2612@gmail.com', '1', '1099', 23, 'COSSANDRA', 1),
('jairajrani26@gmail.com', '7', '1099', 45, 'TRANSPARENTA', 4),
('jairajrani26@gmail.com', '6', '699', 47, 'PLATAR', 1),
('nareshchandjain1978@gmail.com', '8', '1099', 48, 'TRANSPARENTA', 1),
('nareshchandjain1978@gmail.com', '6', '699', 50, 'PLATAR', 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(255) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'COSSANDRA'),
(2, 'PLATAR'),
(3, 'TRANSPARENTA');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `sepcs_id` varchar(255) NOT NULL,
  `User_id` varchar(255) NOT NULL,
  `review_desc` varchar(255) NOT NULL,
  `review_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`sepcs_id`, `User_id`, `review_desc`, `review_id`) VALUES
('1', 'jairajrani26@gmail.com', 'I found specs very attractive and fashionable.', 1),
('2', 'jairajrani26@gmail.com', 'I found specs very attractive and fashionable.', 2),
('1', 'jairajrani261@gmail.com', 'Glasses are really nice.', 3),
('1', 'jairajrani262@gmail.com', 'Glasses feels so premium.', 4),
('1', 'jairajrani26@gmail.com', 'nice', 7),
('1', 'jairajrani26@gmail.com', 'Nice color', 8),
('5', 'jairajrani26@gmail.com', 'Nice color', 9),
('7', 'jairajrani26@gmail.com', 'Very cool glasses', 10),
('7', 'jairajrani26@gmail.com', 'Worth-it product', 11),
('8', 'jairajrani26@gmail.com', 'Classy', 12),
('4', 'jairajrani26@gmail.com', 'Classy', 13),
('1', 'jairajrani26@gmail.com', 'Worth-it product', 14),
('1', 'jairajrani26@gmail.com', 'nice color of specs', 15);

-- --------------------------------------------------------

--
-- Table structure for table `specs`
--

CREATE TABLE `specs` (
  `specs_id` int(255) NOT NULL,
  `specs_name` varchar(255) NOT NULL,
  `specs_category` varchar(255) NOT NULL,
  `specs_price` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specs`
--

INSERT INTO `specs` (`specs_id`, `specs_name`, `specs_category`, `specs_price`, `Description`) VALUES
(1, 'COSSANDRA', 'COSSANDRA', '999', 'Vibrant Violet Full Rim Rectangle Eyeglasses<br> Size: Wide<br> Color: Violet(R: 170, G: 150, B: 232)'),
(2, 'COSSANDRA', 'COSSANDRA', '999', 'Vibrant Light Green Full Rim Rectangle Eyeglasses<br> Size: Wide <br>Color: Light Green(R: 171, G: 242, B: 202)'),
(3, 'COSSANDRA', 'COSSANDRA', '999', 'Vibrant Light Green Full Rim Curved Rectangle Eyeglasses<br> Size: Wide<br> Color: Light Green(R: 167, G: 233, B: 208)'),
(4, 'COSSANDRA', 'COSSANDRA', '999', 'Vibrant Salmon Pink Full Rim Rectangle Eyeglasses<br> Size: Wide<br> Color: Salmon Pink(R: 241, G: 217, B: 187)'),
(5, 'COSSANDRA', 'COSSANDRA', '999', 'Vibrant Light Blue Full Rim Rectangle Eyeglasses<br> Size: Wide<br> Color: Light Blue(R: 205, G: 227, B: 250)'),
(6, 'PLATAR', 'PLATAR', '699', 'Vibrant White Funky Curved Rectangle Sunglasses<br> Size: Wide<br> Color: White(R: 241, G: 241, B: 239)'),
(7, 'TRANSPARENTA', 'TRANSPARENTA', '1099', ' Transparent Aviator Eyeglasses<br> Size: Wide<br> Color: N/A'),
(8, 'TRANSPARENTA', 'TRANSPARENTA', '1099', 'Transparent Rectangular Eyeglasses<br> Size: Wide<br> Color: N/A'),
(9, 'TRANSPARENTA', 'TRANSPARENTA', '1199', 'Transparent Hexagonal Eyeglasses<br> Size: Wide<br> Color: N/A');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`fname`, `lname`, `phone`, `mail`) VALUES
('Harsh', 'Jain', '06376854945', 'itxjharsh26@gmail.com'),
('Harsh', 'Jain', '06376854945', 'jainrajrani26@gmail.com'),
('Harsh', 'Jain', '06376854945', 'jairajrani261@gmail.com'),
('vishal', 'Bhardwaj', '06376854945', 'jairajrani262@gmail.com'),
('Manu ', 'Chaitanya', '06376854945', 'jairajrani26@gmail.com'),
('Harsh', 'Jain', '06376854945', 'jairajrani6@gmail.com'),
('Harsh', 'Jain', '06376854945', 'nareshchandjain1978@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `User Details`
--

CREATE TABLE `User Details` (
  `Customer_Id` int(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Age` varchar(255) NOT NULL,
  `Address1` varchar(255) NOT NULL,
  `Address 2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(255) NOT NULL,
  `specs_id` varchar(255) NOT NULL,
  `specs_name` varchar(255) NOT NULL,
  `specs_price` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `specs_id`, `specs_name`, `specs_price`, `customer_id`) VALUES
(12, '2', 'COSSANDRA', '999', 'jairajrani26@gmail.com'),
(13, '1', 'COSSANDRA', '999', 'jairajrani26@gmail.com'),
(14, '8', 'TRANSPARENTA', '1099', 'nareshchandjain1978@gmail.com'),
(15, '2', 'COSSANDRA', '999', 'nareshchandjain1978@gmail.com'),
(16, '5', 'COSSANDRA', '999', 'jairajrani26@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cart`
--
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`cart_order_id`),
  ADD UNIQUE KEY `Customer_Id` (`Customer_Id`,`specs_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `specs`
--
ALTER TABLE `specs`
  ADD PRIMARY KEY (`specs_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`mail`);

--
-- Indexes for table `User Details`
--
ALTER TABLE `User Details`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cart`
--
ALTER TABLE `Cart`
  MODIFY `cart_order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `specs`
--
ALTER TABLE `specs`
  MODIFY `specs_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
