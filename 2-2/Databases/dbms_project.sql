-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2024 at 01:42 PM
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
-- Database: `dbms_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `description`) VALUES
(1, 'Electronics', 'Gadgets and electronic devices'),
(2, 'Home Appliances', 'Devices for home use'),
(3, 'Clothing', 'Apparel and fashion'),
(4, 'Furniture', 'Furniture for home and office'),
(5, 'Toys', 'Toys for children of all ages'),
(6, 'Books', 'Books and literary works'),
(7, 'Sports', 'Sports equipment and accessories'),
(8, 'Beauty', 'Beauty and personal care products'),
(9, 'Health', 'Health supplements and items'),
(10, 'Automotive', 'Car accessories and parts'),
(11, 'Groceries', 'Everyday grocery items'),
(12, 'Jewelry', 'Jewelry and fashion accessories'),
(13, 'Kitchenware', 'Kitchen appliances and utensils'),
(14, 'Gardening', 'Gardening tools and plants'),
(15, 'Pet Supplies', 'Products for pets'),
(16, 'Office Supplies', 'Office equipment and stationery'),
(17, 'Music', 'Musical instruments and accessories'),
(18, 'Tools', 'Hand tools and power tools'),
(19, 'Footwear', 'Shoes and footwear for all'),
(20, 'Gifts', 'Gift items for all occasions');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`user_id`, `name`, `phone`, `address`, `created_at`) VALUES
(1, 'Mohammad Rahim', '01712345678', '12/A, Green Road, Dhaka', '2024-11-28 12:10:56'),
(2, 'Fatima Begum', '01823456789', '45/B, Mirpur, Dhaka', '2024-11-28 12:10:56'),
(3, 'Shakil Ahmed', '01934567890', '78/C, Gulshan, Dhaka', '2024-11-28 12:10:56'),
(4, 'Rina Khatun', '01745678901', '23/D, Banani, Dhaka', '2024-11-28 12:10:56'),
(5, 'Zahidul Islam', '01856789012', '56/E, Uttara, Dhaka', '2024-11-28 12:10:56'),
(6, 'Sumaiya Sultana', '01967890123', '89/F, Dhanmondi, Dhaka', '2024-11-28 12:10:56'),
(7, 'Tariq Rahman', '01778901234', '101/G, Khulna Road, Dhaka', '2024-11-28 12:10:56'),
(8, 'Sabrina Jahan', '01889012345', '234/H, Baridhara, Dhaka', '2024-11-28 12:10:56'),
(9, 'Aminul Islam', '01990123456', '345/I, Mirpur-2, Dhaka', '2024-11-28 12:10:56'),
(10, 'Shamima Akter', '01701234567', '567/J, Sylhet Road, Dhaka', '2024-11-28 12:10:56'),
(11, 'Faisal Chowdhury', '01812345678', '678/K, Mohammadpur, Dhaka', '2024-11-28 12:10:56'),
(12, 'Nusrat Jahan', '01923456789', '789/L, Chittagong Road, Dhaka', '2024-11-28 12:10:56'),
(13, 'Abdul Malek', '01734567890', '890/M, Narayanganj, Dhaka', '2024-11-28 12:10:56'),
(14, 'Moushumi Rahman', '01845678901', '123/N, Mohakhali, Dhaka', '2024-11-28 12:10:56'),
(15, 'Rashedul Hasan', '01956789012', '234/O, Shyamoli, Dhaka', '2024-11-28 12:10:56'),
(16, 'Nazma Begum', '01767890123', '345/P, Rajshahi Road, Dhaka', '2024-11-28 12:10:56'),
(17, 'Sayedul Islam', '01878901234', '456/Q, Bashundhara, Dhaka', '2024-11-28 12:10:56'),
(18, 'Shirin Akter', '01989012345', '567/R, Tejgaon, Dhaka', '2024-11-28 12:10:56'),
(19, 'Tanzina Binte Amin', '01790123456', '678/S, Puran Dhaka, Dhaka', '2024-11-28 12:10:56'),
(20, 'Mohiuddin Sheikh', '01801234567', '789/T, Kamalapur, Dhaka', '2024-11-28 12:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_date`, `total_amount`) VALUES
(1, 1, '2024-11-28 12:13:50', 7999.99),
(2, 2, '2024-11-28 12:13:50', 14999.99),
(3, 3, '2024-11-28 12:13:50', 4999.99),
(4, 4, '2024-11-28 12:13:50', 8999.99),
(5, 5, '2024-11-28 12:13:50', 599.98),
(6, 6, '2024-11-28 12:13:50', 399.98),
(7, 7, '2024-11-28 12:13:50', 10999.99),
(8, 8, '2024-11-28 12:13:50', 6999.99),
(9, 9, '2024-11-28 12:13:50', 4599.98),
(10, 10, '2024-11-28 12:13:50', 2999.98),
(11, 11, '2024-11-28 12:13:50', 399.99),
(12, 12, '2024-11-28 12:13:50', 249.99),
(13, 13, '2024-11-28 12:13:50', 699.98),
(14, 14, '2024-11-28 12:13:50', 199.99),
(15, 15, '2024-11-28 12:13:50', 599.97),
(16, 16, '2024-11-28 12:13:50', 499.99),
(17, 17, '2024-11-28 12:13:50', 799.98),
(18, 18, '2024-11-28 12:13:50', 1299.99),
(19, 19, '2024-11-28 12:13:50', 3999.98),
(20, 20, '2024-11-28 12:13:50', 499.99);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` enum('Pending','Completed','Failed') DEFAULT 'Pending',
  `amount` decimal(10,2) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `order_id`, `status`, `amount`, `payment_date`) VALUES
(1, 1, 'Completed', 7999.99, '2024-11-28 12:14:14'),
(2, 2, 'Completed', 14999.99, '2024-11-28 12:14:14'),
(3, 3, 'Pending', 4999.99, '2024-11-28 12:14:14'),
(4, 4, 'Completed', 8999.99, '2024-11-28 12:14:14'),
(5, 5, 'Failed', 599.98, '2024-11-28 12:14:14'),
(6, 6, 'Completed', 399.98, '2024-11-28 12:14:14'),
(7, 7, 'Pending', 10999.99, '2024-11-28 12:14:14'),
(8, 8, 'Completed', 6999.99, '2024-11-28 12:14:14'),
(9, 9, 'Failed', 4599.98, '2024-11-28 12:14:14'),
(10, 10, 'Completed', 2999.98, '2024-11-28 12:14:14'),
(11, 11, 'Completed', 399.99, '2024-11-28 12:14:14'),
(12, 12, 'Completed', 249.99, '2024-11-28 12:14:14'),
(13, 13, 'Pending', 699.98, '2024-11-28 12:14:14'),
(14, 14, 'Completed', 199.99, '2024-11-28 12:14:14'),
(15, 15, 'Completed', 599.97, '2024-11-28 12:14:14'),
(16, 16, 'Pending', 499.99, '2024-11-28 12:14:14'),
(17, 17, 'Completed', 799.98, '2024-11-28 12:14:14'),
(18, 18, 'Failed', 1299.99, '2024-11-28 12:14:14'),
(19, 19, 'Completed', 3999.98, '2024-11-28 12:14:14'),
(20, 20, 'Completed', 499.99, '2024-11-28 12:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `category_id`, `created_at`) VALUES
(1, 'Smartphone', 6999.99, 1, '2024-11-28 12:17:32'),
(2, 'Laptop', 12999.99, 1, '2024-11-28 12:17:32'),
(3, 'Washing Machine', 4999.99, 2, '2024-11-28 12:17:32'),
(4, 'Refrigerator', 7999.99, 2, '2024-11-28 12:17:32'),
(5, 'T-shirt', 199.99, 3, '2024-11-28 12:17:32'),
(6, 'Jeans', 399.99, 3, '2024-11-28 12:17:32'),
(7, 'Sofa', 8999.99, 4, '2024-11-28 12:17:32'),
(8, 'Dining Table', 3499.99, 4, '2024-11-28 12:17:32'),
(9, 'Action Figure', 149.99, 5, '2024-11-28 12:17:32'),
(10, 'Doll', 199.99, 5, '2024-11-28 12:17:32'),
(11, 'Novel', 99.99, 6, '2024-11-28 12:17:32'),
(12, 'Cookbook', 259.99, 6, '2024-11-28 12:17:32'),
(13, 'Basketball', 299.99, 7, '2024-11-28 12:17:32'),
(14, 'Tennis Racket', 899.99, 7, '2024-11-28 12:17:32'),
(15, 'Shampoo', 59.99, 8, '2024-11-28 12:17:32'),
(16, 'Lipstick', 149.99, 8, '2024-11-28 12:17:32'),
(17, 'Vitamins', 199.99, 9, '2024-11-28 12:17:32'),
(18, 'Fitness Tracker', 999.99, 9, '2024-11-28 12:17:32'),
(19, 'Car Seat Cover', 299.99, 10, '2024-11-28 12:17:32'),
(20, 'Car Battery', 799.99, 10, '2024-11-28 12:17:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `customers` (`user_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
