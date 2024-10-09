-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2024 at 07:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `image_url`, `title`) VALUES
(1, 'https://i.pinimg.com/564x/c6/a6/b0/c6a6b0b83358e66bdd3959c9bfaaec15.jpg', 'Khmer Food'),
(2, 'https://i.pinimg.com/474x/35/2a/6f/352a6f93afd831b7e8775eb3729091d5.jpg', 'European Food'),
(3, 'https://i.pinimg.com/564x/aa/d6/b1/aad6b1df2718b4a2289f794ae56a0b97.jpg', 'Drink ');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `email`, `name`, `message`) VALUES
(1, 'thaiofficial3@gmail.com', 'Sat Chanthai', 'Your Restaurant is good service. I Like !!!!');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `id` bigint(20) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `category`, `description`, `image_url`, `name`, `price`) VALUES
(1, 'Khmer Food', 'Fish Amok', 'https://i.pinimg.com/564x/b1/61/26/b16126b63e2efa0dfc10be46bfaea99b.jpg', 'អាម៉ុកត្រី ', 2.5),
(2, 'Khmer Food', 'Samlor Korko', 'https://i.ytimg.com/vi/KPOzXeeVKo8/maxresdefault.jpg', 'សម្លកកូរ ', 3),
(3, 'Khmer Food', 'Prahok ktiss Recipe', 'https://i.pinimg.com/564x/f3/6e/cf/f36ecfa13104f2b7bbd30aac851197dd.jpg', 'ប្រហុកខ្ទិះ', 2),
(4, 'European', 'United Kingdom', 'https://i.pinimg.com/236x/db/01/23/db01236fc60260f98f4f86707c5e9d61.jpg', 'Fish and Chips', 10),
(5, 'European', 'Greece', 'https://i.pinimg.com/236x/aa/7e/a5/aa7ea5ce93cb96e59965306848c8ac47.jpg', 'Moussaka ', 15),
(6, 'European', 'France', 'https://i.pinimg.com/236x/db/ac/70/dbac700b05404273d2edad0e746ab2bf.jpg', 'Ratatouille ', 15),
(7, 'European', 'Germany', 'https://i.pinimg.com/236x/7c/ce/b6/7cceb6a4d7c97407ca9f04701695dbf2.jpg', 'Bratwurst ', 8),
(8, 'European', 'Russia', 'https://i.pinimg.com/736x/6c/a0/e4/6ca0e4c091ff1059e59247e8d8b7436a.jpg', 'Beef Stroganoff ', 15),
(9, 'Khmer Food', 'Stir-Fried Crab with Spices', 'https://i.pinimg.com/564x/78/46/4b/78464bd1097fa849dcffcfc5b960ec35.jpg', 'ក្តាមឆាគ្រឿង ', 10),
(10, 'Khmer Food', 'Grilled Fish with Tamarind', 'https://i.pinimg.com/564x/22/2c/c6/222cc647260bcbe20882ede1fcca61c2.jpg', 'ត្រីអាំងម្ទេស ', 5),
(11, 'European', 'Greece', 'https://i.pinimg.com/564x/34/e3/8f/34e38fb1d381955098f4f8a58da9553d.jpg', 'Souvlaki ', 8),
(12, 'European', 'United Kingdom', 'https://i.pinimg.com/564x/e7/22/88/e7228895c83ab1d815296a0a29ff9a9a.jpg', 'Bangers and Mash', 15),
(13, 'Drink', 'Coconut Water', 'https://i.pinimg.com/236x/20/07/ab/2007ab135a2296cb2174c2004025ae20.jpg', 'ទឹកដូង ', 2),
(14, 'Drink', 'Ireland', 'https://i.pinimg.com/236x/d7/c6/79/d7c679652f781a8be58b3cb0cc57faee.jpg', 'Irish Coffee ', 5),
(15, 'Drink', 'Tamarind Juice', 'https://i.pinimg.com/236x/40/51/c2/4051c2bc819327ac95042e4e91b50a03.jpg', 'ទឹកក្រូចឆ្មា ', 1),
(16, 'European', 'Lok Lak Beef)', 'https://i.ytimg.com/vi/pWORveTrf3g/maxresdefault.jpg', 'ឆាឡុកឡាក', 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `total_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `address`, `email`, `order_date`, `order_status`, `phone`, `total_price`) VALUES
(1, 'SenSok', 'thaiofficial3@gmail.com', '2024-10-09 11:20:56.000000', 'Delivered', '098445373', 50),
(2, 'TulTuK', 'satchanthai456@gmail.com', '2024-10-09 12:00:44.000000', 'Processing', '098445373', 23);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` bigint(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `item_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `quantity`, `item_name`) VALUES
(1, 1, 'Bratwurst '),
(1, 1, 'Fish and Chips'),
(1, 2, 'Ratatouille '),
(1, 1, 'ប្រហុកខ្ទិះ'),
(2, 1, 'Irish Coffee '),
(2, 1, 'Ratatouille '),
(2, 1, 'ទឹកក្រូចឆ្មា '),
(2, 1, 'ទឹកដូង ');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `email`, `name`, `position`) VALUES
(1, 'thai@gmail', 'Thai', 'admin'),
(2, 'thai@gmail', 'Thai', 'admin'),
(3, 'thai@gmail', 'Thai', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_id`,`item_name`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `FKbioxgbv59vetrxe0ejfubep1w` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
