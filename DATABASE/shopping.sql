-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 12:02 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

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
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `date_added` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `name`, `image`, `date_added`) VALUES
(2, 'Summer Sale', 'banner1.png', NULL),
(3, 'Sample', '187.jpg', NULL),
(6, 'Sale', 'banner000.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Clothing', 'Clothing', '2021-03-29 09:26:22', NULL),
(2, 'Beauty Products', 'New', '2021-04-15 03:30:34', NULL),
(4, 'Electronics', 'sample', '2021-05-24 12:57:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  `reason_cancel` varchar(55) DEFAULT NULL,
  `courier` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`, `reason_cancel`, `courier`) VALUES
(95, 8, '2', 2, '2021-04-20 07:15:04', 'COD', 'Confirmed', '', NULL),
(96, 8, '4', 1, '2021-04-20 07:22:57', 'COD', 'Cancelled', '', NULL),
(97, 8, '4', 1, '2021-04-20 07:53:01', 'COD', 'Confirmed', '', NULL),
(98, 31, '3', 1, '2021-04-25 15:30:26', 'COD', 'Confirmed', '', NULL),
(99, 31, '2', 1, '2021-04-26 01:32:11', 'COD', 'Confirmed', '', NULL),
(100, 31, '2', 1, '2021-04-26 01:44:49', 'COD', 'Confirmed', '', NULL),
(101, 31, '1', 1, '2021-04-26 02:08:26', 'COD', 'Confirmed', '', NULL),
(102, 31, '2', 1, '2021-04-26 02:08:27', 'COD', 'Received', '', NULL),
(103, 31, '1', 1, '2021-04-26 03:11:37', 'COD', 'Delivered', '', NULL),
(104, 31, '2', 1, '2021-04-28 07:25:28', 'COD', 'Delivered', '', NULL),
(105, 31, '4', 3, '2021-04-28 07:52:43', 'COD', 'Delivered', '', NULL),
(106, 31, '2', 1, '2021-04-28 08:31:00', 'COD', 'Delivered', '', NULL),
(107, 31, '2', 1, '2021-04-30 04:49:32', 'COD', 'Confirmed', '', NULL),
(108, 36, '6', 1, '2021-04-30 08:10:00', 'COD', 'Confirmed', '', NULL),
(109, 37, '6', 1, '2021-04-30 08:24:40', 'COD', 'Delivered', '', NULL),
(110, 41, '2', 1, '2021-05-19 08:17:13', 'COD', 'Cancelled', '', NULL),
(111, 41, '1', 7, '2021-05-19 08:20:01', 'COD', 'Confirmed', '', NULL),
(112, 41, '4', 3, '2021-05-22 10:21:48', 'COD', 'Cancelled', '', NULL),
(113, 41, '2', 1, '2021-05-24 12:10:05', 'COD', 'Cancelled', '', NULL),
(114, 41, '1', 1, '2021-05-24 13:16:31', 'COD', 'Cancelled', '', NULL),
(115, 41, '4', 1, '2021-05-24 13:18:14', 'COD', 'Cancelled', '', NULL),
(116, 41, '4', 1, '2021-05-24 13:53:39', 'COD', 'Cancelled', '', NULL),
(117, 41, '1', 1, '2021-05-24 13:58:42', 'COD', 'Cancelled', '', NULL),
(118, 41, '7', 1, '2021-05-24 14:02:58', 'COD', 'Cancelled', 'Order Processing', NULL),
(119, 41, '4', 1, '2021-05-24 14:10:30', 'COD', 'Cancelled', 'Change of mind', NULL),
(120, 41, '4', 1, '2021-05-24 14:15:09', 'COD', 'Cancelled', 'Change of mind', NULL),
(121, 41, '1', 1, '2021-05-24 14:16:57', 'COD', 'Cancelled', 'Change of mind', NULL),
(122, 41, '4', 1, '2021-05-24 14:28:41', 'COD', 'Cancelled', 'Change of mind', NULL),
(123, 41, '1', 2, '2021-05-27 02:54:39', 'COD', 'Received at Delivery Hub', NULL, 'GOGO EXPRESS'),
(124, 41, '4', 2, '2021-05-27 02:54:39', 'COD', 'Delivered', NULL, NULL),
(125, 41, '1', 1, '2021-05-27 07:15:44', 'COD', 'Delivered', NULL, NULL),
(126, 41, '6', 1, '2021-05-29 13:50:03', 'COD', 'Order Processing', NULL, NULL),
(127, 41, '4', 1, '2021-05-29 15:05:03', 'COD', 'Order Processing', NULL, NULL),
(128, 41, '2', 1, '2021-05-29 15:20:52', 'COD', 'Order Processing', NULL, NULL),
(129, 41, '2', 1, '2021-05-29 15:29:11', 'COD', 'Order Processing', NULL, NULL),
(130, 41, '2', 1, '2021-05-29 15:32:07', 'COD', 'Cancelled', 'Lack of delivery details', NULL),
(131, 41, '2', 1, '2021-05-29 15:33:58', 'COD', 'Cancelled', NULL, NULL),
(132, 41, '2', 1, '2021-05-29 15:35:19', 'COD', 'Cancelled', NULL, NULL),
(133, 41, '2', 1, '2021-05-29 15:38:08', 'COD', 'Cancelled', NULL, NULL),
(134, 41, '2', 1, '2021-05-29 15:40:49', 'COD', 'Cancelled', NULL, NULL),
(135, 41, '2', 1, '2021-05-29 15:42:31', 'COD', 'Received at Delivery Hub', NULL, 'GOGO EXPRESS'),
(136, 41, '2', 1, '2021-05-29 15:44:33', 'COD', 'Delivered', NULL, NULL),
(137, 41, '2', 1, '2021-05-29 15:55:35', 'COD', 'Received at Delivery Hub', NULL, 'GOGO EXPRESS'),
(138, 41, '2', 1, '2021-05-29 15:59:31', 'COD', 'Received at Delivery Hub', NULL, 'GOGO EXPRESS'),
(139, 41, '3', 1, '2021-05-29 16:04:25', 'COD', 'Received at Delivery Hub', NULL, 'GOGO EXPRESS'),
(140, 41, '6', 1, '2021-05-29 16:21:33', 'COD', 'Delivered', NULL, 'GOGO EXPRESS'),
(141, 41, '6', 1, '2021-05-29 16:26:33', 'COD', 'Cancelled', NULL, NULL),
(142, 0, '2', 1, '2021-05-29 16:31:02', 'COD', 'Delivered', NULL, 'GOGO EXPRESS'),
(143, 41, '6', 1, '2021-05-29 16:34:10', 'COD', 'Cancelled', NULL, NULL),
(144, 41, '4', 1, '2021-05-29 17:01:24', 'COD', 'Cancelled', NULL, NULL),
(145, 41, '4', 1, '2021-05-29 17:08:36', 'COD', 'Cancelled', NULL, NULL),
(146, 41, '4', 1, '2021-05-29 17:10:07', 'COD', 'Delivered', NULL, 'GOGO EXPRESS'),
(147, 41, '4', 1, '2021-05-29 17:28:33', 'COD', 'Cancelled', 'Lack of delivery details', NULL),
(148, 41, '4', 1, '2021-05-29 17:54:29', 'COD', 'Delivered', NULL, 'GOGO EXPRESS'),
(149, 31, '1', 1, '2021-05-31 06:48:16', 'COD', 'Received at Delivery Hub', NULL, 'GOGO EXPRESS'),
(150, 41, '5', 1, '2021-05-31 07:17:38', 'COD', 'Delivered', NULL, 'GOGO EXPRESS'),
(151, 41, '5', 1, '2021-05-31 07:48:26', 'COD', 'Delivered', NULL, 'GOGO EXPRESS'),
(152, 41, '5', 1, '2021-05-31 08:01:13', 'COD', 'Delivered', NULL, 'GOGO EXPRESS'),
(153, 41, '5', 1, '2021-05-31 09:24:41', 'COD', 'Delivered', NULL, 'GOGO EXPRESS'),
(154, 41, '4', 1, '2021-05-31 09:35:51', 'COD', 'On the way', NULL, 'GOGO EXPRESS'),
(155, 41, '3', 1, '2021-05-31 09:40:17', 'COD', 'Delivered', NULL, 'GOGO EXPRESS'),
(156, 41, '3', 1, '2021-05-31 09:50:26', 'COD', 'Delivered', NULL, 'GOGO EXPRESS');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 5, 'Delivered', 'Delivered', '2021-03-29 16:25:07'),
(2, 6, 'in Process', 'Processing', '2021-03-29 17:10:31'),
(3, 6, 'Delivered', 'Thank you', '2021-03-29 17:13:06'),
(4, 11, 'in Process', 'Hulat la', '2021-04-13 03:00:59'),
(5, 11, 'Delivered', 'ada na an parcel', '2021-04-13 03:01:33'),
(6, 12, 'Delivered', 'OK la', '2021-04-13 04:17:21'),
(7, 13, 'Delivered', 'a', '2021-04-13 04:19:28'),
(8, 15, 'in Process', 'Hulatla matapos la adi', '2021-04-15 02:06:10'),
(9, 15, 'Delivered', 'OK na', '2021-04-15 02:07:35'),
(10, 14, 'in Process', 'Hulat la ', '2021-04-15 02:12:13'),
(11, 17, 'in Process', 'ok', '2021-04-15 04:34:40'),
(12, 24, 'Delivered', 'okkk', '2021-04-17 12:29:04'),
(13, 22, 'Delivered', 'aaa', '2021-04-17 12:34:26'),
(14, 23, 'Delivered', 'aaa', '2021-04-17 12:35:26'),
(15, 83, 'Delivered', 'a', '2021-04-20 02:20:05'),
(16, 84, 'Delivered', 'a', '2021-04-20 02:22:51'),
(17, 87, 'Delivered', 'Ok na', '2021-04-20 02:26:55'),
(18, 88, 'Delivered', 'ok na', '2021-04-20 02:27:07'),
(19, 89, 'Confirm', 'Order Confirmed', '2021-04-20 04:52:37'),
(20, 89, 'Cancelled', 'Order Cancelled', '2021-04-20 04:53:31'),
(21, 89, 'Cancelled', 'Order Cancelled', '2021-04-20 06:09:25'),
(22, 90, 'Confirm', 'Processing Order', '2021-04-20 06:15:45'),
(23, 90, 'Confirm', 'Order Confirmed', '2021-04-20 06:17:43'),
(24, 91, 'Confirmed', 'Confirmed Order', '2021-04-20 06:20:23'),
(25, 91, 'Cancelled', '', '2021-04-20 06:33:12'),
(26, 91, 'Cancelled', '', '2021-04-20 06:35:07'),
(27, 92, 'Order Processing', 'Your order is still processing.', '2021-04-20 06:37:07'),
(28, 92, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-20 06:37:28'),
(29, 92, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-20 06:38:48'),
(30, 92, 'Cancelled', 'Your order has been cancelled due to lack of delivery details.', '2021-04-20 06:38:57'),
(31, 93, 'Order Processing', 'Your order is still processing.', '2021-04-20 06:59:50'),
(32, 93, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-20 07:00:15'),
(33, 95, 'Order Processing', 'Your order is still processing.', '2021-04-20 07:15:37'),
(34, 95, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-20 07:16:08'),
(35, 96, 'Order Processing', 'Your order is still processing.', '2021-04-20 07:23:51'),
(36, 97, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-20 08:02:49'),
(37, 96, 'Cancelled', 'Your order has been cancelled due to lack of delivery details.', '2021-04-20 08:10:50'),
(38, 98, 'Order Processing', 'Your order is still processing.', '2021-04-25 15:31:24'),
(39, 98, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-25 16:26:37'),
(40, 98, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-25 16:27:33'),
(41, 98, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-25 16:27:37'),
(42, 98, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-25 16:30:55'),
(43, 99, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-26 01:48:32'),
(44, 100, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-26 02:06:04'),
(45, 101, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-26 02:09:32'),
(46, 102, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-26 03:07:31'),
(47, 102, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-26 03:08:08'),
(48, 103, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-26 03:12:58'),
(49, 103, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-26 03:22:39'),
(50, 104, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-28 07:25:47'),
(51, 105, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-28 07:53:16'),
(52, 106, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-28 08:32:14'),
(53, 106, 'On the way', 'Your order is still processing.', '2021-04-29 19:27:20'),
(54, 106, 'Delivered', 'Parcel Delivered sucessfully.', '2021-04-29 19:34:08'),
(55, 105, 'On the way', 'Your parcel is on the way.', '2021-04-29 19:45:22'),
(56, 105, 'Delivered', 'Parcel Delivered sucessfully.', '2021-04-29 19:45:30'),
(57, 104, 'On the way', 'Your parcel is on the way.', '2021-04-30 03:23:27'),
(58, 104, 'Delivered', 'Parcel Delivered sucessfully.', '2021-04-30 03:29:00'),
(59, 103, 'Received', 'Received at delivery Area:Central Hub', '2021-04-30 03:39:00'),
(60, 103, 'On the way', 'Your parcel is on the way.Please Expect delivery within the day.', '2021-04-30 03:44:00'),
(61, 102, 'Received', 'Received at delivery Area:Central Hub', '2021-04-30 04:15:23'),
(62, 107, 'Order Processing', 'Your order is still processing.', '2021-04-30 04:53:24'),
(63, 107, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-30 04:59:56'),
(64, 108, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-30 08:14:30'),
(65, 109, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-04-30 08:27:43'),
(66, 109, 'Received', 'Received at delivery Area:Central Hub', '2021-04-30 08:56:35'),
(67, 109, 'On the way', 'Your parcel is on the way.Please Expect delivery within the day.', '2021-04-30 08:57:44'),
(68, 109, 'Delivered', 'Parcel Delivered sucessfully.', '2021-04-30 08:58:24'),
(69, 110, 'Order Processing', 'Your order is still processing.', '2021-05-19 08:18:22'),
(70, 111, 'Order Processing', 'Your order is still processing.', '2021-05-19 08:20:50'),
(71, 111, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-19 08:21:12'),
(72, 112, 'Order Processing', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-24 11:56:31'),
(73, 117, 'Cancelled', 'Cancelled Order', '2021-05-24 14:01:07'),
(74, 118, 'Cancelled', 'Cancelled Order', '2021-05-24 14:03:45'),
(75, 119, 'Cancelled', 'Cancelled Order', '2021-05-24 14:10:42'),
(76, 120, 'Cancelled', 'Cancelled Order', '2021-05-24 14:15:19'),
(77, 120, 'Cancelled', 'Cancelled Order', '2021-05-24 14:15:54'),
(78, 121, 'Cancelled', 'Cancelled Order', '2021-05-24 14:22:18'),
(79, 121, 'Cancelled', 'Cancelled Order', '2021-05-24 14:27:13'),
(80, 122, 'Cancelled', 'Cancelled Order', '2021-05-24 14:29:03'),
(81, 124, 'Confirmed', 'Your order is still processing.', '2021-05-27 06:39:53'),
(82, 124, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-27 06:42:35'),
(83, 125, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-27 07:16:33'),
(84, 125, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-27 07:17:20'),
(85, 126, 'Order Processing', 'Your order is still processing.', '2021-05-29 14:55:22'),
(86, 123, 'Order Processing', 'Your order is still processing.', '2021-05-29 15:00:54'),
(87, 123, 'Order Processing', 'Your order is still processing.', '2021-05-29 15:01:15'),
(88, 123, 'Confirmed', 'Your order is still processing.', '2021-05-29 15:03:00'),
(89, 127, 'Order Processing', 'Your order is still processing.', '2021-05-29 15:09:50'),
(90, 127, 'Order Processing', 'Your order is still processing.', '2021-05-29 15:10:26'),
(91, 128, 'Order Processing', 'Your order is still processing.', '2021-05-29 15:26:45'),
(92, 129, 'Order Processing', 'Your order is still processing.', '2021-05-29 15:29:34'),
(93, 130, 'Order Processing', 'Your order is still processing.', '2021-05-29 15:32:31'),
(94, 131, 'Order Processing', 'Your order is still processing.', '2021-05-29 15:34:24'),
(95, 132, 'Cancelled', 'Your order is still processing.', '2021-05-29 15:36:16'),
(96, 133, 'Cancelled', 'Your order is still processing.', '2021-05-29 15:38:50'),
(97, 134, 'Cancelled', 'Your order is still processing.', '2021-05-29 15:41:32'),
(98, 135, 'Confirmed', 'Your order is still processing.', '2021-05-29 15:42:58'),
(99, 136, 'Confirmed', 'Your order is still processing.', '2021-05-29 15:44:51'),
(100, 137, 'Order Processing', 'Your order is still .', '2021-05-29 15:55:55'),
(101, 138, 'Order Processing', 'Your order is still processing.', '2021-05-29 16:00:10'),
(102, 138, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:00:10'),
(103, 139, 'Order Processing', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:04:57'),
(104, 139, 'Order Processing', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:05:19'),
(105, 139, 'Order Processing', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:05:35'),
(106, 139, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:05:35'),
(107, 139, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:18:32'),
(108, 139, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:20:37'),
(109, 140, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:21:49'),
(110, 141, 'Cancelled', 'Your order has been cancelled due to lack of delivery details/incorrect delivery address.', '2021-05-29 16:29:48'),
(111, 142, 'Order Processing', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:31:42'),
(112, 142, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:32:00'),
(113, 143, 'Order Processing', 'Your order is still processing.', '2021-05-29 16:34:40'),
(114, 143, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:35:02'),
(115, 143, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:36:53'),
(116, 143, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:39:21'),
(117, 143, 'Order Processing', 'Your order is still processing.', '2021-05-29 16:44:27'),
(118, 143, 'Order Processing', 'Your order is still processing.', '2021-05-29 16:45:55'),
(119, 143, 'Order Processing', 'Your order is still processing.', '2021-05-29 16:46:12'),
(120, 143, 'Order Processing', 'Your order is still processing.', '2021-05-29 16:48:49'),
(121, 143, 'Confirmed', '', '2021-05-29 16:49:32'),
(122, 143, 'Order Processing', 'Your order is still processing.', '2021-05-29 16:59:15'),
(123, 143, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 16:59:23'),
(124, 143, 'Cancelled', 'Your order has been cancelled due to lack of delivery details.', '2021-05-29 16:59:32'),
(125, 144, 'Order Processing', 'Your order is still processing.', '2021-05-29 17:01:46'),
(126, 144, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 17:02:34'),
(127, 144, 'Cancelled', 'Your order has been cancelled due to lack of delivery details.', '2021-05-29 17:03:10'),
(128, 145, 'Order Processing', 'Your order is still processing.', '2021-05-29 17:09:03'),
(129, 146, 'Order Processing', 'Your order is still processing.', '2021-05-29 17:10:49'),
(130, 146, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 17:14:58'),
(131, 145, 'Cancelled', 'Your order has been cancelled due to lack of delivery details.', '2021-05-29 17:15:31'),
(132, 137, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 17:16:45'),
(133, 131, 'Cancelled', 'Your order has been cancelled due to lack of delivery details.', '2021-05-29 17:26:42'),
(134, 147, 'Cancelled', 'Your order has been cancelled due to lack of delivery details.', '2021-05-29 17:29:20'),
(135, 130, 'Cancelled', 'Your order has been cancelled due to lack of delivery details.', '2021-05-29 17:31:06'),
(136, 130, 'Cancelled', 'Your order has been cancelled due to lack of delivery details.', '2021-05-29 17:31:37'),
(137, 146, 'Received', '', '2021-05-29 17:48:36'),
(138, 146, 'On the way', 'Your parcel is on the way.Please Expect delivery within the day.', '2021-05-29 17:51:24'),
(139, 146, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-29 17:53:03'),
(140, 142, 'Received at Delivery Hub', 'Received at delivery Area:Central Hub', '2021-05-29 17:53:27'),
(141, 148, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-29 17:55:21'),
(142, 148, 'Received at Delivery Hub', 'Received at delivery Area:Central Hub', '2021-05-29 18:04:37'),
(143, 148, 'On the way', 'Your parcel is on the way.Please Expect delivery within the day.', '2021-05-29 18:46:48'),
(144, 148, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-29 18:47:35'),
(145, 140, 'Received at Delivery Hub', 'Received at delivery Area:Central Hub', '2021-05-29 18:50:06'),
(146, 139, 'Received at Delivery Hub', 'Received at delivery Area:Central Hub', '2021-05-29 18:50:46'),
(147, 138, 'Received at Delivery Hub', 'Received at delivery Area:Central Hub', '2021-05-29 18:53:59'),
(148, 137, 'Received at Delivery Hub', 'Received at delivery Area:Central Hub', '2021-05-29 19:00:36'),
(149, 142, 'On the way', 'Your parcel is on the way.Please Expect delivery within the day.', '2021-05-29 19:02:23'),
(150, 142, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-29 19:05:11'),
(151, 140, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-29 19:34:48'),
(152, 149, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-31 06:48:47'),
(153, 150, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-31 07:18:20'),
(154, 150, 'Received at Delivery Hub', 'Received at delivery Area:Central Hub', '2021-05-31 07:19:13'),
(155, 151, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-31 07:49:04'),
(156, 151, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-31 07:51:38'),
(157, 152, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-31 08:01:39'),
(158, 152, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-31 08:02:05'),
(159, 153, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-31 09:25:02'),
(160, 153, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-31 09:25:35'),
(161, 136, 'On the way', 'Your parcel is on the way.Please Expect delivery within the day.', '2021-05-31 09:29:22'),
(162, 136, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-31 09:29:36'),
(163, 149, 'Received at Delivery Hub', 'Received at delivery Area:Central Hub', '2021-05-31 09:30:54'),
(164, 135, 'Received at Delivery Hub', 'Received at delivery Area:Central Hub', '2021-05-31 09:31:40'),
(165, 154, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-31 09:36:22'),
(166, 154, 'Received at Delivery Hub', 'Received at delivery Area:Central Hub', '2021-05-31 09:36:45'),
(167, 155, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-31 09:40:59'),
(168, 155, 'Received at Delivery Hub', 'Received at delivery Area:Central Hub', '2021-05-31 09:44:16'),
(169, 155, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-31 09:44:38'),
(170, 103, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-31 09:47:29'),
(171, 123, 'Received at Delivery Hub', 'Received at delivery Area:Central Hub', '2021-05-31 09:47:58'),
(172, 154, 'On the way', 'Your parcel is on the way.Please Expect delivery within the day.', '2021-05-31 09:48:29'),
(173, 150, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-31 09:48:50'),
(174, 156, 'Confirmed', 'Your package is packed and will be handled over to our logistics partner.', '2021-05-31 09:51:08'),
(175, 156, 'Received at Delivery Hub', 'Received at delivery Area:Central Hub', '2021-05-31 09:51:32'),
(176, 156, 'Delivered', 'Parcel Delivered sucessfully.', '2021-05-31 09:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` int(11) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `name`, `summary`, `review`, `reviewDate`) VALUES
(33, 4, 'TEST CUSTOMER', 5, 'ang ganda ng items ', '2021-05-29 13:04:54'),
(34, 4, 'TEST CUSTOMER', 4, 'ayos', '2021-05-29 13:05:11'),
(35, 4, 'TEST CUSTOMER', 3, 'sakto lang', '2021-05-29 13:05:26'),
(36, 4, 'TEST CUSTOMER', 2, 'panget', '2021-05-29 13:06:09'),
(37, 4, 'TEST CUSTOMER', 1, 'pangit talaga', '2021-05-29 13:06:29'),
(38, 4, 'TEST CUSTOMER', 5, 'ayos lodi', '2021-05-29 13:13:44'),
(39, 4, 'TEST CUSTOMER', 5, 'ok kaayo', '2021-05-29 19:26:01'),
(40, 1, 'TEST CUSTOMER', 5, 'ayos', '2021-05-29 19:30:43'),
(41, 4, 'TEST CUSTOMER', 5, 'ganda', '2021-05-31 06:58:00'),
(42, 4, 'TEST CUSTOMER', 5, 'niceeeeeeeeee', '2021-05-31 06:58:27'),
(43, 4, 'TEST CUSTOMER', 5, 'niceeeeeeeeee', '2021-05-31 06:59:43'),
(44, 5, 'TEST CUSTOMER', 5, 'nice', '2021-05-31 08:00:37'),
(45, 5, 'TEST CUSTOMER', 5, 'wow', '2021-05-31 08:40:10'),
(46, 5, 'TEST CUSTOMER', 5, 'sample review', '2021-05-31 08:42:13'),
(47, 5, 'TEST CUSTOMER', 3, 'ok la', '2021-05-31 08:44:19'),
(48, 5, 'TEST CUSTOMER', 1, 'a', '2021-05-31 08:45:04'),
(49, 5, 'TEST CUSTOMER', 5, 'aq', '2021-05-31 08:48:09'),
(50, 5, 'TEST CUSTOMER', 5, 'q', '2021-05-31 08:49:29'),
(51, 5, 'TEST CUSTOMER', 3, 'awts', '2021-05-31 08:49:45'),
(52, 5, 'TEST CUSTOMER', 2, 'aa', '2021-05-31 08:50:27'),
(53, 5, 'TEST CUSTOMER', 4, 'qqq', '2021-05-31 08:57:20'),
(54, 5, 'TEST CUSTOMER', 4, 'qqq', '2021-05-31 09:00:38'),
(55, 5, 'TEST CUSTOMER', 4, 'qqq', '2021-05-31 09:02:33'),
(56, 5, 'TEST CUSTOMER', 4, 'qqq', '2021-05-31 09:02:48'),
(57, 5, 'TEST CUSTOMER', 1, 'aa', '2021-05-31 09:04:15'),
(58, 5, 'TEST CUSTOMER', 3, 'ok', '2021-05-31 09:06:52'),
(59, 5, 'TEST CUSTOMER', 5, 'ok', '2021-05-31 09:22:26'),
(60, 3, 'TEST CUSTOMER', 5, 'ayos', '2021-05-31 09:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) NOT NULL,
  `qty` int(55) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  `added_by` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `qty`, `productAvailability`, `postingDate`, `updationDate`, `added_by`) VALUES
(1, 1, 1, 'Sample Product', 'N/A', 100, 139, 'This is a sample product.', 'prod.png', 'prod.png', 'product.png', 20, 39, 'In stock', '2021-03-29 09:35:26', NULL, 'Manager Manager'),
(2, 1, 1, 'Sando', 'N/A', 89, 120, 'Good Item', 'sando.png', 'sando.png', 'sando.png', 10, 10, 'In stock', '2021-03-29 16:46:27', NULL, 'Manager Manager'),
(3, 1, 1, 'Jacket', 'N/A', 255, 365, 'Good Quality jacket', 'jacket.jpg', 'jacket.jpg', 'jacket.jpg', 50, 48, 'In stock', '2021-04-15 01:10:54', NULL, 'Manager Manager'),
(4, 2, 2, 'Rejuvenating Set', 'Prestige', 140, 150, '<h4>Fresh and New</h4>', 'rejuv.jpg', 'rejuv.jpg', 'rejuv.jpg', 50, 1, 'In stock', '2021-04-15 03:34:36', NULL, 'Manager Manager'),
(5, 1, 3, 'Tops', 'N/A', 185, 215, 'New Product', 'tops.jpg', 'tops2.jpg', 'tops.jpg', 20, 46, 'In stock', '2021-04-15 04:22:49', NULL, 'Manager Manager'),
(6, 1, 1, 'T-shirt', 'N/A', 285, 300, 'New Product', 'shirt1.jpg', 'shirt1.jpg', 'shirt1.jpg', 50, 56, 'In stock', '2021-04-24 15:05:22', NULL, 'Manager Manager'),
(7, 1, 4, 'Slim Fit', 'N/A', 120, 150, '<br>', 'prod.png', 'prod.png', 'prod.png', 50, 30, 'In Stock', '2021-04-30 08:52:26', NULL, 'Manager Manager');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Men', '2021-03-29 09:26:36', NULL),
(2, 2, 'Facial', '2021-04-15 03:33:28', NULL),
(3, 1, 'Women', '2021-04-15 04:21:07', NULL),
(4, 1, 'Fit', '2021-04-30 08:48:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-29 09:25:29', NULL, 1),
(2, 'samplecustomer@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-29 14:22:33', '29-03-2021 09:53:00 PM', 1),
(3, 'samplecustomer@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-29 16:23:27', '29-03-2021 10:20:04 PM', 1),
(4, 'samplecustomer@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-29 16:50:25', '29-03-2021 10:31:29 PM', 1),
(5, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-13 02:57:07', NULL, 1),
(6, 'sample@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-13 02:59:39', '13-04-2021 08:36:44 AM', 1),
(7, 'delgado@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-13 03:08:17', '13-04-2021 09:49:38 AM', 1),
(8, 'maria@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-15 01:03:55', NULL, 1),
(9, 'maria@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-15 01:59:49', NULL, 1),
(10, 'maria@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-15 02:01:27', NULL, 1),
(11, 'maria@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-15 03:06:35', NULL, 1),
(12, 'maria@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-15 07:45:38', NULL, 1),
(13, 'maria@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-17 09:14:44', '17-04-2021 03:10:48 PM', 1),
(14, 'maria@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-17 09:41:37', NULL, 1),
(15, 'maria@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-17 12:22:41', NULL, 1),
(16, 'maria@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-19 09:00:46', NULL, 1),
(17, 'maria@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-19 23:47:50', NULL, 1),
(18, 'maria@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-20 04:27:22', NULL, 1),
(19, 'maria@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-22 00:15:22', '22-04-2021 05:45:31 AM', 1),
(20, 'maria@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-22 00:34:20', NULL, 0),
(21, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-22 05:26:08', NULL, 0),
(22, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-22 05:26:39', NULL, 0),
(23, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-22 06:01:04', NULL, 1),
(24, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-22 06:04:30', '22-04-2021 11:35:20 AM', 1),
(25, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-22 07:47:19', NULL, 0),
(26, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-22 08:03:29', NULL, 0),
(27, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-22 08:10:35', NULL, 1),
(28, 'neth123097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-23 03:29:11', '23-04-2021 08:59:43 AM', 1),
(29, 'neth123097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-24 01:13:43', '24-04-2021 06:43:47 AM', 1),
(30, 'neth123097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-24 01:18:01', NULL, 0),
(31, 'neth123097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-24 01:18:18', NULL, 0),
(32, 'neth123097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-24 01:18:26', NULL, 0),
(33, 'neth123097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-24 01:19:55', '24-04-2021 06:50:06 AM', 1),
(34, 'neth123097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-25 14:50:18', NULL, 0),
(35, 'neth123097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-25 14:50:27', NULL, 1),
(36, 'neth123097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-26 01:31:50', NULL, 1),
(37, 'neth123097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-26 06:09:21', NULL, 1),
(38, 'neth123097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-28 07:24:08', '28-04-2021 01:21:12 PM', 1),
(39, 'neth123097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-28 07:51:30', NULL, 1),
(40, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 04:38:50', NULL, 0),
(41, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 04:40:43', NULL, 0),
(42, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 04:40:51', NULL, 0),
(43, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 04:48:27', NULL, 0),
(44, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 04:49:00', NULL, 1),
(45, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 07:39:05', '30-04-2021 01:09:21 PM', 1),
(46, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 07:41:26', NULL, 0),
(47, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 07:42:04', NULL, 1),
(48, 'neth309@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 08:09:44', '30-04-2021 01:44:47 PM', 1),
(49, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 08:17:27', NULL, 0),
(50, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 08:18:05', '30-04-2021 02:29:46 PM', 1),
(51, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 09:02:23', '30-04-2021 02:32:30 PM', 1),
(52, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 11:54:54', '18-05-2021 05:26:50 PM', 1),
(53, 'neth3039@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 11:59:18', NULL, 1),
(54, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-19 02:38:01', '19-05-2021 08:08:04 AM', 1),
(55, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-19 02:39:03', '19-05-2021 08:09:06 AM', 1),
(56, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-19 03:04:07', NULL, 1),
(57, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-22 10:21:22', NULL, 1),
(58, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-24 10:58:34', '24-05-2021 04:28:49 PM', 1),
(59, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-24 10:59:22', NULL, 1),
(60, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-27 00:51:48', '27-05-2021 12:06:30 PM', 1),
(61, 'neth339@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-27 06:37:38', '27-05-2021 12:08:52 PM', 1),
(62, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-27 06:39:06', '27-05-2021 01:12:03 PM', 1),
(63, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-29 12:44:25', '29-05-2021 07:00:00 PM', 1),
(64, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-29 13:43:57', NULL, 1),
(65, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-31 06:03:46', '31-05-2021 02:42:01 PM', 1),
(66, 'neth@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-31 06:43:10', '31-05-2021 02:51:59 PM', 1),
(67, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-31 06:53:16', '31-05-2021 03:00:29 PM', 1),
(68, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-31 07:00:47', '31-05-2021 05:39:34 PM', 1),
(69, 'olshopee1230@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-31 09:39:56', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(55) NOT NULL DEFAULT 'Customer',
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
  `token` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `role`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`, `token`, `status`) VALUES
(23, 'Manager Manager', 'manager@gmail.com', 9352713721, '1d0258c2440a8d19e716292b231e3190', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 05:42:27', NULL, NULL, 'Active'),
(24, 'Dianne Herna', 'cashier@gmail.com', 9352713721, '6ac2470ed8ccf204fd5ff89b32a355cf', 'Cashier', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 05:43:39', NULL, NULL, 'Active'),
(25, 'Manager Manager', 'manager@gmail.com', 9352713721, '21232f297a57a5a743894a0e4a801fc3', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 05:44:56', NULL, NULL, 'Active'),
(27, 'Manager Manager', 'manager@gmail.com', 9352713721, '7ca955bd92ca8b00548ddf36d2e79217', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 05:46:19', NULL, '417e4c757fe6109dc77f3867df9eddea', 'Active'),
(31, 'Kenneth Go', 'neth@gmail.com', 935271372, 'e10adc3949ba59abbe56e057f20f883e', 'Customer', 'Purok 2 Brgy. Cagsalaosao', 'Western Samar', 'Calbayog city', 6710, 'Purok 2 Brgy. Cagsalaosao', 'Western Samar', 'Calbayog city', 6710, '2021-04-23 03:25:11', NULL, '6395ac11383a175ff4f80a4c628f64a8', 'Active'),
(32, 'Dalgo', 'dalgo@gmail.com', 9176239899, 'd41d8cd98f00b204e9800998ecf8427e', 'Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-29 17:41:50', NULL, NULL, 'Inactive'),
(33, 'GOGO EXPRESS', 'delivery@gmail.com', 9176239899, '7108537956afa2a526f96cc9da7b0c36', 'Courier', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-29 19:02:19', NULL, NULL, 'Active'),
(34, 'Shop Owner', 'admin@gmail.com', 9352713721, '21232f297a57a5a743894a0e4a801fc3', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-30 02:39:40', NULL, NULL, 'Active'),
(35, 'Sample User', 'neth3039@gmail.com', 912345678, 'e10adc3949ba59abbe56e057f20f883e', 'Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-30 07:37:12', NULL, '6f75e9b246b289fa11d79a27a3cba4b9', 'Active'),
(36, 'Ken Ramos', 'neth309@gmail.com', 935271372, '202cb962ac59075b964b07152d234b70', 'Customer', 'Purok 2 Brgy. Cagsalaosao', 'Western Samar', 'Calbayog city', 6710, 'Purok 2 Brgy. Cagsalaosao', 'Western Samar', 'Calbayog city', 6710, '2021-04-30 07:41:01', NULL, '85cd9b81662a9d1cdea8dc3e5b09949e', 'Active'),
(37, 'Kenneth Son', 'neth309@gmail.com', 935271372, 'f632fa6f8c3d5f551c5df867588381ab', 'Customer', 'Purok 2 Brgy. Cagsalaosao', 'Western Samar', 'Calbayog city', 6710, 'Purok 2 Brgy. Cagsalaosao', 'Western Samar', 'Calbayog city', 6710, '2021-04-30 08:16:39', NULL, '731f9cd690d0b31e36353cb70553f541', 'Active'),
(40, 'sa', 'neth3@gmail.com', 12345678900, 'd41d8cd98f00b204e9800998ecf8427e', 'Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-18 11:48:55', NULL, 'a698f80f3de5cfbba1247b6245e84fe9', 'Active'),
(41, 'TEST CUSTOMER', 'olshopee1230@gmail.com', 955555555, 'e10adc3949ba59abbe56e057f20f883e', 'Customer', 'Purok 2 Brgy. Cagsalaosao,', 'Western Samar', 'Calbayog city', 6710, 'Purok 2 Brgy. Cagsalaosao,', 'Western Samar', 'Calbayog city', 6710, '2021-05-19 02:37:06', NULL, '4d7dd2d92f7b44b057d2601f449f50c9', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 31, 2, '2021-04-25 14:56:28'),
(2, 31, 2, '2021-04-25 15:04:32'),
(3, 31, 4, '2021-04-25 15:05:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
