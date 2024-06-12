-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 10:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'yogesh N', 'yogesh@gmail.com', '121212', 'Good Product....!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 1, 'yogesh N', '121212', 'yogesh@gmail.com', 'cash on delivery', 'flat no. 4546, 4546, pune, maharashtra, India - 055555', 'Samsung smartphone (34999 x 1) - ', 34999, '2023-04-12', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, ' Realme smartphone', 'realme narzo 50A Prime (Flash Blue, 4GB RAM+128GB Storage) FHD+ Display | 50MP AI Triple Camera\r\n\r\nDisplay - 16.7 cm (6.6 inch) 2408*1080 FHD+ Resolution | 90.7% Screen to body Ratio | 16.7 M Screen Colors | 600nits Peak Brightness\r\n5000 mAh Massive Battery which brings you all day Power | Ultra Saving Mode\r\nPowerful Unisoc T612 processor | Boasts superb performance with an AnTuTu Benchmark Score of 214, 150 | 12 nm Process with Octa-core CPU', 10999, '81g0X076+WL._SL1500_.jpg', '71AUSabSUoL._SL1500_.jpg', '71dpLoqDX3L._SL1500_.jpg'),
(2, 'Samsung smartphone', 'Samsung Galaxy S20 FE 5G (Cloud Navy, 8GB RAM, 128GB Storage) |\r\nTriple Rear Camera Setup - 12MP (Dual Pixel) OIS F1.8 Wide Rear Camera + 8MP OIS Tele Camera + 12MP Ultra Wide | 30X Space Zoom, Single Take & Night Mode | 32MP F2.2 Front Punch Hole Camera\r\n| 6.5-inch(16.40 centimeters) Infinity-O Super AMOLED Display with 120Hz Refresh rate, 1080 x 2400 (FHD+) Resolution &#34; |\r\n4500 mAh battery (Non -removable) with Super Fast Charging,', 34999, '81vDZyJQ-4L._SL1500_.jpg', '61vN1isnThL._SL1500_.jpg', '71yzyH-ohgL._SL1500_.jpg'),
(3, 'OnePlus smartphone', 'OnePlus Nord 2T 5G (Jade Fog, 8GB RAM, 128GB Storage)', 28999, '61ahn9N38zL._SL1500_.jpg', '61ahn9N38zL._SL1500_.jpg', '71LW61uCQxL._SL1500_.jpg'),
(4, 'iQOO Smartphone', 'iQOO Neo 7 5G (Frost Blue, 8GB RAM, 128GB Storage) | Dimensity 8200, only 4nm Processor in The Segment | 50% Charge in 10 mins | Motion Control & 90 FPS', 29999, '61JS7lF2aqL._SL1200_.jpg', '61M+le6z7mL._SL1200_.jpg', '71PQlrJAr+L._SL1200_.jpg'),
(5, 'MI TV', 'MI 80 cm (32 inches) 5A Series HD Ready Smart Android LED TV L32M7-5AIN (Black) | \r\nResolution: HD Ready (1366x768) | Refresh Rate: 60 hertz | 178 wide viewing angle |\r\nConnectivity: Dual Band Wi-Fi (2.4 GHz/ 5 GHz) | 2 HDMI ports to connect set top box, gaming consoles, DVD or Blu-ray Players | 2 USB ports to connect hard drives and other USB devices | ARC | Bluetooth 5.0 | Ethernet | 3.5mm earphone Jack |\r\nSound: 20 Watts Output | Dolby Audio | DTS Virtual: X | DTS-HD', 12999, '81tD7OZ0RXL._SL1500_.jpg', '61-LihKQnOL._SL1280_.jpg', '71RV887wc-L._SL1500_.jpg'),
(6, 'OnePlus TV', 'OnePlus 126 cm (50 inches) Y Series 4K Ultra HD Smart Android LED TV 50Y1S Pro (Black) |\r\n Resolution: 4K Ultra HD (3840x2160) | Bezel-less Design\r\nConnectivity: Dual-band Wi-Fi | 3HDMI ports to connect set top box, Blu Ray players, gaming console | 2 USB ports to connect hard drives and other USB devices |\r\nSound : 24 Watts Output | Dolby Audio | Dolby Atmos Decoding', 32999, '81I5oICiIzL._SL1500_.jpg', '71mtiZ+zxJL._SL1500_.jpg', '61-LihKQnOL._SL1280_.jpg'),
(7, 'Canon Camera', 'Canon EOS 1500D 24.1 Digital SLR Camera (Black) with EF S18-55 is II Lens\r\n', 37990, '914hFeTU2-L._SL1500_.jpg', 'camera-3.webp', '81S8jikRzGL._SL1500_.jpg'),
(8, 'Smart watch', 'beatXP Vega X 1.43&#34; AMOLED 466 * 466px Display One-Tap BT 5.2 Calling AI Voice Assistant Smartwatch (Iced Silver)', 2299, '61fAE9Z5KNL._SL1500_.jpg', '71ndYqskOFL._SL1500_.jpg', '715H-khJHnL._SL1500_.jpg'),
(9, 'HP Laptop', 'HP 15s, Intel Core i3-1115G4, 15.6 inch(39.6cm) FHD Anti-Glare Laptop(8GB RAM/512GB SSD/Intel UHD Graphics/Win 11/MSO/Dual Speakers/Alexa) 15s-fq2717TU', 39990, '91oF9q-jE5L._SL1500_.jpg', '91za6kI19eL._SL1500_.jpg', '81zATt0OYQL._SL1500_.jpg'),
(10, 'ASUS Laptop', 'ASUS Vivobook 16X (2022), 16-inch (40.64 cms) WUXGA, AMD Ryzen 5 5600H, Thin and Light Laptop (8GB/512GB SSD/Integrated Graphics/Windows 11/Office..', 47990, '715NX9VL1sL._SL1500_.jpg', '51WlER9JeUL._SL1500_.jpg', '81b+SZRpIsL._SL1500_.jpg'),
(11, 'Samsung Fridge', 'Samsung 236 L 2 Star Digital Inverter Frost Free Double Door Refrigerator (RT28C3032GS/HL, Gray Silver) |\r\nFrost Free Refrigerator: Auto Defrost Refrigerator with powerful cooling and long lasting freshness and performance |\r\nCapacity 236 Liters: Suitable For Families With 2 To 3 Members\r\nEnergy Rating: 2 Star Energy Efficiency', 22890, '51qQpDECuVL._SL1500_.jpg', '81YeobwNvwL._SL1500_.jpg', '71N5Eb0jfaL._SL1500_.jpg'),
(12, 'Bosch Washing Machine', 'Bosch 7 kg 5 Star Inverter Touch Control Fully Automatic Front Loading Washing Machine with In - built Heater (WAJ2416SIN, Silver)\r\n', 31990, '71A2wRV96mL._SL1500_.jpg', '71oA28ma0sL._SL1500_.jpg', '7133OClscxL._SL1500_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Yogesh N', 'yogesh@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(2, 'dhananjay', 'dfj@gmail.com', '739bd5ee6c2972aa14fa18e71ae407e10c5e6fd9');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
