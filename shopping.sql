-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 04, 2020 at 11:30 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryId` varchar(255) DEFAULT NULL,
  `productCompanyName` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `categoryid`, `subcategoryId`, `productCompanyName`, `creationDate`, `updationDate`) VALUES
(24, 6, '12', 'Adidas', '2020-01-30 09:38:11', NULL),
(25, 3, '13', 'Richdad.com', '2020-01-30 09:51:03', NULL),
(29, 4, '6', 'Adidas Wears On', '2020-01-30 10:32:03', '30-01-2020 10:16:47 AM'),
(31, 4, '3', 'Micromax tester', '2020-02-04 16:48:16', NULL),
(32, 4, '4', 'Apple Inc', '2020-02-04 16:48:44', NULL),
(33, 4, '4', 'Redmi', '2020-02-04 16:49:06', NULL),
(34, 4, '4', 'Lenovo', '2020-02-04 16:49:21', NULL),
(35, 4, '4', 'Micromax', '2020-02-05 11:03:12', NULL),
(36, 4, '4', 'Samsung', '2020-02-05 11:03:30', NULL),
(37, 4, '4', 'OPPO', '2020-02-05 11:03:48', NULL),
(38, 4, '5', 'Techguru', '2020-02-05 11:04:05', NULL),
(39, 4, '6', 'Acer', '2020-02-05 11:04:23', NULL),
(40, 4, '6', 'Micromax', '2020-02-05 11:04:48', NULL),
(41, 4, '6', 'HP', '2020-02-05 11:05:12', NULL),
(42, 4, '6', 'Lenovo', '2020-02-05 11:05:23', NULL),
(43, 3, '8', 'ABC', '2020-02-05 11:05:48', NULL),
(44, 3, '8', 'XYZ', '2020-02-05 11:05:56', NULL),
(45, 5, '9', 'Induscraft', '2020-02-05 11:06:28', NULL),
(46, 5, '10', 'Nilkamal', '2020-02-05 11:06:52', NULL),
(47, 6, '12', 'Asian', '2020-02-05 11:19:08', NULL),
(51, 7, '19', 'G Whales', '2020-02-07 03:08:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Men', 'Test anuj', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(2, 'Women', 'Electronic Products', '2017-01-24 19:19:32', ''),
(3, 'Kids', 'test', '2017-01-24 19:19:54', ''),
(4, 'Accessories', 'Fashion', '2017-02-20 19:18:52', ''),
(5, 'Footwears', 'Clothing', '2020-01-27 03:49:56', NULL),
(6, 'Bags', 'bags', '2020-07-22 14:11:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `created_at`) VALUES
('cus_GjcjNEYCtdCZye', 'Joshua', 'Paul', 'veecthorpaul@gmail.com', '2020-02-14 20:02:31'),
('cus_GjcnkKH9jAYbLH', 'Joshua', 'Paul', 'veecthorpaul@gmail.com', '2020-02-14 20:07:09'),
('cus_GjcrUpoqBPf8PV', 'Joshua', 'Paul', 'pauljoshua45@gmail.com', '2020-02-14 20:11:10'),
('cus_GjcszcN9pqmllY', 'Brad', 'Traversy ', 'anuj.lpu1@gmail.com', '2020-02-14 20:12:08'),
('cus_Gjd4EXe4qy3Dop', 'John', 'Lucas', 'john@gmail.com', '2020-02-14 20:23:47'),
('cus_Gjd8l7xAzj9NLB', 'John', 'Traversy ', 'admin@gmail.com', '2020-02-14 20:27:22'),
('cus_Gje1RbhV36WvXu', 'ADMIN', 'Adddd', 'AD@GMAIL.COM', '2020-02-14 21:22:54'),
('cus_Gje7OAZP4cCfNl', 'Stone', 'Brown', 'bworn@gmail.com', '2020-02-14 21:28:27'),
('cus_GjeEHdlTKEv8Qi', 'Joshua', 'Traversy ', 'veecthorpaul@gmail.com', '2020-02-14 21:36:20'),
('cus_GjeHzfxYVGcULm', 'Joshua', 'Paul', 'veecthorpaul@gmail.com', '2020-02-14 21:38:22'),
('cus_GjzZhhPJNyfFJQ', 'Curs', 'Crod', 'crod@gmail.com', '2020-02-15 19:38:12'),
('cus_GjzfPTO41OSOac', 'Brad', 'Traversy ', 'saima@yahoo.com', '2020-02-15 19:44:21'),
('cus_GjznlmHSBE0BKC', 'John', 'Lucas', 'awpareshan@gmail.com', '2020-02-15 19:53:09'),
('cus_Gjzscu6bhlE5UP', 'John', 'Lucas', 'admin@gmail.com', '2020-02-15 19:57:28'),
('cus_GkYXrOdIhuKM50', 'Anuj Kumar', 'Humma', 'hum@gmail.com', '2020-02-17 07:46:38'),
('cus_Gkd9qBBb3VuKO8', 'Anuj Kumar', 'Brown', 'admin@gmail.com', '2020-02-17 12:32:54'),
('cus_GkdBnRwV7kGBaF', 'Anuj Kumar', 'Brown', 'saima@yahoo.com', '2020-02-17 12:34:27'),
('cus_GkdGMLmZ26zD55', 'Anuj Kumar', 'Paul', 'anuj.lpu1@gmail.com', '2020-02-17 12:39:30'),
('cus_GkeakVTXjQu4pJ', 'Anuj Kumar', 'Crod', 'saima@yahoo.com', '2020-02-17 14:01:11'),
('cus_GkecQd9Y6qxJE4', 'Anuj Kumar', 'Lucas', 'awpareshan@gmail.com', '2020-02-17 14:03:10'),
('cus_GkefiiWfr1JVt3', 'Anuj Kumar', 'Traversy ', 'anuj.lpu1@gmail.com', '2020-02-17 14:06:51'),
('cus_Gkeo4WkWpWjNQQ', 'Anuj Kumar', 'Adddd', 'admin@gmail.com', '2020-02-17 14:15:49'),
('cus_GkjzQAeaT59aFX', 'Joshua', 'Paul', 'veecthorpaul@gmail.com', '2020-02-17 19:36:59'),
('cus_Gkk2LALnbXEHxm', 'Joshua', 'Lucas', 'admin@gmail.com', '2020-02-17 19:40:05'),
('cus_Gkka32WZqq1YLu', 'Anuj Kumar', 'Brown', 'awpareshan@gmail.com', '2020-02-17 20:13:50'),
('cus_GkkkzAfWDaB3tA', 'Joshua', 'Adddd', 'awpareshan@gmail.com', '2020-02-17 20:23:11'),
('cus_GkklSZo4BXaY0L', 'Anuj Kumar', 'Lucas', 'admin@gmail.com', '2020-02-17 20:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderNumber` int(10) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderNumber`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '17', 1, 547184112, '2020-02-13 04:53:45', 'COD', NULL),
(6, 1, '15', 1, 800068297, '2020-02-13 05:34:27', 'Debit / Credit card', NULL),
(7, 1, '16', 1, 939768662, '2020-02-13 05:37:45', 'Internet Banking', NULL),
(8, 1, '15', 1, 112903414, '2020-02-14 09:16:53', 'Debit / Credit card', NULL),
(9, 1, '15', 1, 190364594, '2020-02-14 09:20:52', 'COD', NULL),
(10, 1, '15', 1, 683639789, '2020-02-14 09:23:41', 'COD', NULL),
(11, 1, '15', 1, 209067365, '2020-02-14 10:06:27', 'COD', NULL),
(12, 1, '15', 1, 702976967, '2020-02-14 10:21:14', 'COD', NULL),
(13, 1, '15', 1, 104410098, '2020-02-14 11:42:31', 'COD', NULL),
(14, 1, '1', 1, 647074800, '2020-02-15 02:30:12', 'COD', NULL),
(15, 1, '1', 1, 657626751, '2020-02-15 04:10:37', 'COD', NULL),
(16, 1, '1', 1, 268913940, '2020-02-15 04:11:46', 'COD', NULL),
(17, 1, '1', 1, 589377129, '2020-02-15 04:23:08', 'COD', NULL),
(18, 1, '1', 1, 55415286, '2020-02-15 04:26:51', 'COD', NULL),
(19, 4, '4', 1, 216111671, '2020-02-15 05:21:58', 'COD', NULL),
(20, 4, '3', 1, 902392671, '2020-02-15 05:27:59', 'COD', NULL),
(21, 4, '3', 1, 87085434, '2020-02-15 05:35:18', 'COD', NULL),
(22, 4, '1', 4, 666013446, '2020-02-15 05:37:48', 'COD', NULL),
(23, 4, '2', 9, 666013446, '2020-02-15 05:37:48', 'COD', NULL),
(24, 4, '3', 8, 666013446, '2020-02-15 05:37:48', 'COD', NULL),
(25, 4, '22', 1, 352136772, '2020-02-15 05:44:26', 'COD', NULL),
(26, 4, '1', 1, 235435697, '2020-02-16 03:41:35', 'COD', NULL),
(27, 4, '1', 1, 764895808, '2020-02-16 03:50:06', 'COD', NULL),
(28, 4, '1', 1, 630290, '2020-02-16 03:56:59', 'COD', NULL),
(29, 4, '22', 1, 896437771, '2020-02-17 15:40:52', 'COD', NULL),
(30, 1, '1', 1, 792046337, '2020-02-17 15:43:14', 'COD', NULL),
(31, 1, '1', 1, 187008649, '2020-02-17 15:51:15', 'COD', NULL),
(32, 1, '3', 1, 187008649, '2020-02-17 15:51:15', 'COD', NULL),
(33, 1, '1', 1, 186551273, '2020-02-17 20:29:50', 'COD', NULL),
(34, 1, '3', 1, 186551273, '2020-02-17 20:29:51', 'COD', NULL),
(35, 1, '1', 1, 304380144, '2020-02-17 20:33:08', 'COD', NULL),
(36, 1, '3', 1, 304380144, '2020-02-17 20:33:08', 'COD', NULL),
(37, 1, '1', 1, 798581400, '2020-02-17 20:35:03', 'COD', NULL),
(38, 1, '3', 1, 798581400, '2020-02-17 20:35:03', 'COD', NULL),
(39, 1, '1', 1, 365130961, '2020-02-17 21:16:25', 'COD', NULL),
(40, 1, '3', 1, 365130961, '2020-02-17 21:16:25', 'COD', NULL),
(41, 1, '18', 1, 265750945, '2020-02-17 21:23:48', 'COD', NULL),
(42, 4, '16', 1, 83322729, '2020-02-17 21:51:14', 'COD', NULL),
(43, 4, '16', 1, 780566007, '2020-02-17 21:58:12', 'COD', NULL),
(44, 4, '16', 1, 135278136, '2020-02-17 22:02:49', 'COD', NULL),
(45, 4, '16', 1, 921314754, '2020-02-17 22:04:48', 'COD', NULL),
(46, 4, '16', 1, 548256007, '2020-02-17 22:15:30', 'COD', NULL),
(47, 4, '16', 1, 670140059, '2020-02-18 03:36:30', 'COD', NULL),
(48, 4, '16', 1, 703987600, '2020-02-18 03:39:35', 'COD', NULL),
(49, 4, '16', 1, NULL, '2020-02-18 03:46:50', 'COD', NULL),
(50, 4, '2', 1, NULL, '2020-02-18 03:49:06', 'COD', NULL),
(51, 4, '2', 1, NULL, '2020-02-18 03:50:31', 'COD', NULL),
(52, 4, '2', 1, 640224747, '2020-02-18 03:53:21', '', NULL),
(53, 4, '2', 1, 166041505, '2020-02-18 04:14:22', '', NULL),
(54, 4, '2', 1, 121170295, '2020-02-18 04:17:40', '', NULL),
(55, 4, '4', 1, 121170295, '2020-02-18 04:17:40', '', NULL),
(56, 4, '4', 1, 630013341, '2020-02-18 04:22:27', NULL, NULL),
(57, 4, '4', 1, 80789404, '2020-02-18 04:22:51', NULL, NULL),
(58, 4, '4', 1, 198456836, '2020-02-18 04:23:43', NULL, NULL),
(59, 4, '16', 1, 567058929, '2020-02-22 20:10:18', NULL, NULL),
(60, 4, '16', 1, 587714972, '2020-02-22 20:11:40', NULL, NULL),
(61, 4, '16', 1, 603187210, '2020-02-22 20:12:00', NULL, NULL),
(62, 4, '16', 1, 853321560, '2020-02-22 20:12:13', NULL, NULL),
(63, 4, '16', 1, NULL, '2020-02-22 20:14:19', NULL, NULL),
(64, 1, '16', 3, 519952032, '2020-02-22 20:29:06', 'COD', NULL),
(65, 1, '23', 1, 357877423, '2020-03-01 00:28:44', 'COD', NULL),
(66, 1, '1', 1, 297978804, '2020-06-06 18:26:24', 'COD', NULL),
(67, 1, '18', 1, 297978804, '2020-06-06 18:26:24', 'COD', NULL),
(68, 1, '19', 1, 297978804, '2020-06-06 18:26:24', 'COD', NULL),
(69, 1, '2', 1, 845994200, '2020-07-20 11:29:36', 'COD', NULL),
(70, 1, '5', 1, 585197485, '2020-07-31 09:41:10', NULL, NULL),
(71, 1, '6', 2, 585197485, '2020-07-31 09:41:10', NULL, NULL),
(73, 9, '18', 1, 677512103, '2020-08-01 08:05:58', 'Debit / Credit card', NULL),
(74, 9, '18', 1, 8931862, '2020-08-01 08:11:13', 'Debit / Credit card', NULL),
(75, 9, '18', 1, 992968522, '2020-08-01 08:17:42', 'Debit / Credit card', NULL),
(76, 9, '18', 2, 52711302, '2020-08-01 08:18:17', 'Debit / Credit card', NULL),
(77, 9, '18', 1, 849392365, '2020-08-01 08:24:33', 'Debit / Credit card', NULL),
(78, 9, '18', 1, 285059510, '2020-08-01 08:24:48', 'Debit / Credit card', NULL),
(79, 9, '18', 1, 527444031, '2020-08-01 08:25:48', 'Debit / Credit card', NULL),
(80, 9, '18', 1, 336303499, '2020-08-01 08:27:29', 'Debit / Credit card', NULL),
(81, 9, '18', 1, 377276238, '2020-08-01 08:28:26', 'Debit / Credit card', NULL),
(82, 9, '18', 1, 48653066, '2020-08-01 08:30:10', 'Debit / Credit card', NULL),
(83, 9, '18', 1, 375711218, '2020-08-01 08:31:13', 'Debit / Credit card', NULL),
(84, 9, '18', 1, 554311010, '2020-08-01 08:37:42', 'Debit / Credit card', NULL),
(85, 9, '12', 1, 412046607, '2020-08-01 09:31:34', 'COD', NULL),
(86, 9, '18', 1, 412046607, '2020-08-01 09:31:34', 'COD', NULL),
(87, 9, '19', 1, 412046607, '2020-08-01 09:31:34', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 7, 'in Process', 'Processing', '2020-01-28 01:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 19, 3, 3, 3, 'Victor Paul', 'Awesome', 'cool', '2020-07-30 09:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productQuantity` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productQuantity`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 3, 'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', '31', 139900, 100, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'micromax1.jpeg', 'micromax main image.jpg', 'micromax main image.jpg', 1200, 'In Stock', '2017-01-31 00:54:35', ''),
(2, 1, 4, 'Apple iPhone 6 (Silver, 16 GB)', '32', 36990, 15, 0, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">1 GB RAM | 16 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">4.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">8MP Primary Camera | 1.2MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 0, 'In Stock', '2017-01-31 00:59:00', ''),
(3, 2, 4, 'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)', '33', 10999, 25, 0, '<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', 0, 'In Stock', '2017-02-04 12:03:15', ''),
(4, 2, 4, 'Lenovo K6 Power (Silver, 32 GB) ', '34', 9999, 100, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 45, 'In Stock', '2017-02-04 12:04:43', ''),
(5, 4, 4, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', '34', 11999, 50, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2017-02-04 12:06:17', ''),
(6, 4, 4, 'Micromax Canvas Mega 4G', '35', 6999, 100, 0, '<ul><li>3 GB RAM | 16 GB ROM |<br></li><li>5.5 inch HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>2500 mAh Battery<br></li><li>MT6735 Processor<br></li></ul>', 'micromax-canvas-mega-4g-1.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', 35, 'In Stock', '2017-02-04 12:08:07', ''),
(7, 4, 4, 'SAMSUNG Galaxy On5', '36', 7490, 36, 0, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 20, 'In Stock', '2017-02-04 12:10:17', ''),
(8, 4, 4, 'OPPO A57', '37', 14990, 12, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 12:11:54', ''),
(9, 4, 5, 'Affix Back Cover for Mi Redmi Note 4', '38', 259, 8, 0, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-2.jpeg', 'amzer-amz98947-original-3.jpeg', 10, 'In Stock', '2017-02-04 12:17:03', ''),
(11, 4, 6, 'Acer ES 15 Pentium Quad Core', '39', 19990, 31, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 12:26:17', ''),
(12, 4, 6, 'Micromax Canvas Laptab II (WIFI) Atom 4th Gen', '35', 10999, 5, 0, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 0, 'In Stock', '2017-02-04 12:28:17', ''),
(13, 4, 6, 'HP Core i5 5th Gen', '41', 41990, 100, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 12:30:24', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', '42', 22990, 45, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2017-02-04 12:32:15', ''),
(15, 3, 8, 'The Wimpy Kid Do -It- Yourself Book', '43', 205, 34, 250, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 50, 'In Stock', '2017-02-04 12:35:13', ''),
(16, 3, 8, 'Thea Stilton and the Tropical Treasure ', '44', 240, 20, 0, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 30, 'In Stock', '2017-02-04 12:36:23', ''),
(17, 5, 9, 'Induscraft Solid Wood King Bed With Storage', '45', 32566, 37, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg', 0, 'In Stock', '2017-02-04 12:40:37', ''),
(18, 5, 10, 'Nilkamal Ursa Metal Queen Bed', '46', 6523, 57, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">@home by Nilkamal Ursa Metal Queen Bed</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - NA)</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 12:42:27', ''),
(19, 6, 12, 'Asian Casuals  (White, White)', '47', 379, 60, 0, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: White, White</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Outer Material: Denim</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 45, 'In Stock', '2017-03-11 04:16:03', ''),
(23, 3, 8, 'Rich Dad Poor Dad', '43', 900, 100, 10000, 'Cool', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 'apple-iphone-6-1.jpeg', 10, 'In Stock', '2020-02-22 20:25:16', NULL),
(24, 6, 12, 'Snick', '24', 9000, 10, 10000, 'wow', 'product-01.jpg', 'product-01.jpg', 'product-01.jpg', 10, 'In Stock', '2020-02-23 00:37:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryName` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategoryName`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2017-01-27 00:24:52', '27-01-2020 09:28:39 AM'),
(3, 4, 'Televisions', '2017-01-27 00:29:09', '30-01-2020 07:56:07 AM'),
(4, 4, 'Mobiles', '2017-01-31 00:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 12:12:40', ''),
(6, 4, 'Laptops', '2017-02-04 12:13:00', ''),
(7, 4, 'Computers', '2017-02-04 12:13:27', ''),
(8, 3, 'Comics', '2017-02-04 12:13:54', ''),
(9, 5, 'Beds', '2017-02-04 12:36:45', ''),
(10, 5, 'Sofas', '2017-02-04 12:37:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 12:37:51', ''),
(12, 6, 'Men Footwears', '2017-03-11 04:12:59', ''),
(13, 3, 'Business', '2017-02-04 12:13:54', ''),
(15, 3, 'Banking', '2020-01-28 01:06:17', '28-01-2020 06:38:31 AM'),
(18, 3, 'Startups', '2020-01-28 01:09:49', NULL),
(19, 7, 'Clothing', '2020-01-29 06:42:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `product`, `amount`, `currency`, `status`, `created_at`) VALUES
('ch_1GC9YLBSZHxGBKcbKObzVeq8', 'cus_GjcnkKH9jAYbLH', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-14 20:07:09'),
('ch_1GC9cEBSZHxGBKcbdItJqCQS', 'cus_GjcrUpoqBPf8PV', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-14 20:11:10'),
('ch_1GC9dABSZHxGBKcb1FYTuo9M', 'cus_GjcszcN9pqmllY', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-14 20:12:08'),
('ch_1GC9oRBSZHxGBKcbT7Rpm7YK', 'cus_Gjd4EXe4qy3Dop', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-14 20:23:47'),
('ch_1GC9ruBSZHxGBKcbYCI8hSxi', 'cus_Gjd8l7xAzj9NLB', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-14 20:27:22'),
('ch_1GCAjeBSZHxGBKcb1agjXsdC', 'cus_Gje1RbhV36WvXu', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-14 21:22:54'),
('ch_1GCAp1BSZHxGBKcbBWelZmco', 'cus_Gje7OAZP4cCfNl', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-14 21:28:27'),
('ch_1GCAwFBSZHxGBKcb94wtY9lV', 'cus_GjeEHdlTKEv8Qi', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-14 21:36:20'),
('ch_1GCAyZBSZHxGBKcbI2vsaAEK', 'cus_GjeHzfxYVGcULm', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-14 21:38:22'),
('ch_1GCVZuBSZHxGBKcbZ5r2G9pO', 'cus_GjzZhhPJNyfFJQ', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-15 19:38:12'),
('ch_1GCVfrBSZHxGBKcbP6KkFebG', 'cus_GjzfPTO41OSOac', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-15 19:44:21'),
('ch_1GCVoNBSZHxGBKcbnEMhSRg1', 'cus_GjznlmHSBE0BKC', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-15 19:53:09'),
('ch_1GCVsYBSZHxGBKcbJjVoPLOY', 'cus_Gjzscu6bhlE5UP', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-15 19:57:28'),
('ch_1GD3QPBSZHxGBKcb8iwPptKX', 'cus_GkYXrOdIhuKM50', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-17 07:46:38'),
('ch_1GD7tSBSZHxGBKcb3HWm14AR', 'cus_Gkd9qBBb3VuKO8', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-17 12:32:55'),
('ch_1GD7uxBSZHxGBKcbiOTwyBs0', 'cus_GkdBnRwV7kGBaF', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-17 12:34:27'),
('ch_1GD7zqBSZHxGBKcbTQh2dPZn', 'cus_GkdGMLmZ26zD55', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-17 12:39:30'),
('ch_1GD9GtBSZHxGBKcboFMk1jWQ', 'cus_GkeakVTXjQu4pJ', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-17 14:01:11'),
('ch_1GD9IoBSZHxGBKcbAUntHFYQ', 'cus_GkecQd9Y6qxJE4', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-17 14:03:10'),
('ch_1GD9MOBSZHxGBKcbRyJ2lozT', 'cus_GkefiiWfr1JVt3', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-17 14:06:51'),
('ch_1GD9V3BSZHxGBKcb4xsN32Sb', 'cus_Gkeo4WkWpWjNQQ', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-17 14:15:49'),
('ch_1GDEVsBSZHxGBKcbWPJ9NaeF', 'cus_GkjzQAeaT59aFX', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-17 19:36:59'),
('ch_1GDEYrBSZHxGBKcbZwvwY4e2', 'cus_Gkk2LALnbXEHxm', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-17 19:40:05'),
('ch_1GDF5WBSZHxGBKcbnvDcWash', 'cus_Gkka32WZqq1YLu', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-17 20:13:50'),
('ch_1GDFEaBSZHxGBKcbi0UUKyic', 'cus_GkkkzAfWDaB3tA', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-17 20:23:11'),
('ch_1GDFFZBSZHxGBKcb6lISyYB3', 'cus_GkklSZo4BXaY0L', 'This is the Description of My Products', '50000', 'usd', 'succeeded', '2020-02-17 20:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-28 01:24:24', NULL, 1),
(25, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-13 04:15:06', NULL, 1),
(26, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-13 05:34:23', NULL, 1),
(27, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-14 09:16:49', NULL, 1),
(28, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-15 02:30:00', NULL, 1),
(29, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-15 05:21:51', '15-02-2020 10:56:10 AM', 1),
(30, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-15 05:27:38', '15-02-2020 11:13:24 AM', 1),
(31, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-15 05:43:46', NULL, 1),
(32, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-16 03:23:40', NULL, 0),
(33, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-16 03:23:51', NULL, 1),
(34, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-16 04:11:24', NULL, 1),
(35, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-17 15:40:32', '17-02-2020 09:12:24 PM', 1),
(36, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-17 15:42:39', '18-02-2020 02:53:26 AM', 1),
(37, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-17 21:23:34', '18-02-2020 03:20:44 AM', 1),
(38, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-17 21:51:06', NULL, 1),
(39, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-18 03:36:11', NULL, 1),
(40, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-22 20:10:13', NULL, 1),
(41, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-22 22:04:35', NULL, 1),
(42, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-22 23:55:28', NULL, 1),
(43, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-25 21:54:03', NULL, 1),
(44, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-29 21:58:42', NULL, 1),
(45, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-01 13:47:04', NULL, 1),
(46, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-26 13:28:09', NULL, 1),
(47, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-06 18:26:19', NULL, 1),
(48, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-20 11:28:06', NULL, 1),
(49, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-21 10:09:01', '22-07-2020 01:14:18 PM', 1),
(50, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-22 08:05:04', '22-07-2020 01:40:36 PM', 1),
(51, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-22 08:18:19', NULL, 1),
(52, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-22 10:04:40', NULL, 1),
(53, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-22 13:24:44', NULL, 1),
(54, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 09:39:40', '31-07-2020 03:11:21 PM', 1),
(55, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 10:00:04', '31-07-2020 03:35:48 PM', 1),
(56, '', 0x3a3a3100000000000000000000000000, '2020-07-31 10:53:13', NULL, 0),
(57, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 11:25:30', NULL, 1),
(58, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 11:31:33', NULL, 1),
(59, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-08-01 07:27:23', '01-08-2020 02:19:04 PM', 1),
(60, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-08-01 09:00:30', '01-08-2020 02:39:54 PM', 1),
(61, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-08-01 09:11:52', '01-08-2020 02:54:10 PM', 1),
(62, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-08-01 09:31:28', '01-08-2020 03:01:49 PM', 1),
(63, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-08-01 09:58:21', '01-08-2020 03:32:31 PM', 1),
(64, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-08-01 10:04:52', '01-08-2020 04:05:40 PM', 1),
(65, 'veecthorpaul@gmail.com', 0x3a3a3100000000000000000000000000, '2020-08-01 11:09:05', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(9, 'Joshua Paul', 'veecthorpaul@gmail.com', 703195238, 'ffc150a160d37e92012c196b6af4160d', '35, Oyedeji street, ajegunle apapa', 'Lagos', 'Apapa', 100001, '35, Oyedeji street, ajegunle apapa', 'Lagos', 'Apapa', 100001, '2020-07-31 11:31:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(3, 1, 21, '2020-02-23 00:48:27'),
(7, 1, 22, '2020-02-25 23:45:39'),
(13, 1, 15, '2020-07-21 10:09:52'),
(14, 1, 6, '2020-07-22 11:04:36');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
