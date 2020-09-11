-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 01:41 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gdp`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `buy_id` int(11) NOT NULL,
  `buy_qte` int(11) NOT NULL,
  `buy_unit_price` int(11) NOT NULL,
  `buy_price` int(11) NOT NULL,
  `buy_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`buy_id`, `buy_qte`, `buy_unit_price`, `buy_price`, `buy_date`, `user_id`, `prod_id`) VALUES
(1, 15, 5000, 75000, '2020-02-02 00:00:00', 1, 1),
(2, 10, 1500, 15000, '2020-02-03 00:00:00', 1, 2),
(5, 17, 1200, 20400, '2020-02-04 00:00:00', 1, 1),
(6, 31, 1200, 37200, '2020-02-05 00:00:00', 1, 3),
(7, 50, 2900, 145000, '2020-02-06 00:00:00', 1, 5),
(10, 9, 2300, 20700, '2020-02-06 00:00:00', 1, 3),
(12, 2, 1750, 3500, '2020-02-06 00:00:00', 1, 1),
(13, 10, 1200, 12000, '2020-02-06 00:00:00', 1, 1),
(14, 10, 1500, 15000, '2020-02-06 00:00:00', 1, 3),
(15, 25, 2200, 55000, '2020-02-07 00:00:00', 1, 6),
(17, 30, 1800, 54000, '2020-02-13 00:00:00', 1, 1),
(18, 20, 1500, 30000, '2020-02-13 00:00:00', 1, 5),
(19, 25, 1500, 37500, '2020-02-15 00:00:00', 1, 6),
(20, 10, 1800, 18000, '2020-02-15 23:34:32', 1, 6),
(21, 5, 1500, 7500, '2020-02-16 15:28:29', 1, 3),
(22, 13, 1000, 13000, '2020-02-19 18:41:42', 1, 6),
(23, 6, 5, 30, '2020-09-05 13:36:35', 1, 5),
(24, 55, 10, 550, '2020-09-09 19:42:38', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `privs`
--

CREATE TABLE `privs` (
  `user_id` int(11) NOT NULL,
  `manage_products` int(1) NOT NULL DEFAULT '0',
  `manage_users` int(1) NOT NULL DEFAULT '0',
  `manage_buys` int(1) NOT NULL DEFAULT '0',
  `manage_sells` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privs`
--

INSERT INTO `privs` (`user_id`, `manage_products`, `manage_users`, `manage_buys`, `manage_sells`) VALUES
(1, 1, 1, 1, 1),
(5, 0, 1, 1, 1),
(8, 0, 0, 1, 1),
(9, 0, 0, 0, 0),
(10, 1, 1, 1, 1),
(11, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `prod_quantity` int(11) NOT NULL DEFAULT '0',
  `add_date` date NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `nbrSells` int(11) NOT NULL DEFAULT '0',
  `nbrBuys` int(11) NOT NULL DEFAULT '0',
  `on_hold` int(1) NOT NULL DEFAULT '0',
  `last_change` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `name`, `sell_price`, `prod_quantity`, `add_date`, `image_url`, `nbrSells`, `nbrBuys`, `on_hold`, `last_change`) VALUES
(1, 'product1', 2700, 0, '2020-01-21', 'C:/gdp-uploads/2020-2-4-03-41-24.jpg', 6, 4, 1, '2020-02-17 16:47:29'),
(2, 'Product-2', 2500, 20, '2020-01-21', 'C:/gdp-uploads/2020-2-1-05-01-30.jpg', 6, 1, 1, '2020-02-19 18:50:03'),
(3, 'كرتون', 2400, 52, '2020-01-23', 'C:/gdp-uploads/2020-2-4-03-42-34.jpg', 10, 6, 0, '2020-06-27 23:24:17'),
(4, 'idris', 2000, 27, '2020-02-02', NULL, 3, 1, 1, '2020-02-19 16:01:02'),
(5, 'تنك زيت', 3200, 15, '2020-02-04', 'C:/gdp-uploads/2020-2-4-06-10-02.jpg', 3, 3, 1, '2020-09-05 13:17:53'),
(6, 'product5', 2500, 20, '2020-02-07', NULL, 5, 4, 1, '2020-02-19 15:34:56'),
(23, 'dsdd', 5555, 0, '2020-02-09', '/sANDb/Uploads/2020-2-9-07-57-05.jpg', 0, 0, 1, NULL),
(24, 'padffsf', 7500, 0, '2020-02-09', 'C:/gdp-uploads/2020-2-9-08-15-13.jpg', 0, 0, 1, NULL),
(25, 'طحينة - تنك ابيض', 20, 100, '2020-09-05', NULL, 0, 0, 0, NULL),
(26, 'طحينة - عبري - تنك ابيض', 20, 100, '2020-09-05', NULL, 0, 0, 0, NULL),
(27, 'زيت - تنك ابيض ', 20, 100, '2020-09-05', NULL, 0, 0, 0, NULL),
(28, 'تنر - تنك ابيض ', 20, 100, '2020-09-05', NULL, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_history`
--

CREATE TABLE `product_history` (
  `prod_hist_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `change_date` datetime NOT NULL,
  `new_name` varchar(50) DEFAULT NULL,
  `new_date` date DEFAULT NULL,
  `new_price` int(11) DEFAULT NULL,
  `new_qte` int(11) DEFAULT NULL,
  `old_name` varchar(50) DEFAULT NULL,
  `old_date` date DEFAULT NULL,
  `old_price` int(11) DEFAULT NULL,
  `old_qte` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_history`
--

INSERT INTO `product_history` (`prod_hist_id`, `prod_id`, `user_id`, `change_date`, `new_name`, `new_date`, `new_price`, `new_qte`, `old_name`, `old_date`, `old_price`, `old_qte`) VALUES
(3, 6, 1, '2020-02-18 23:08:43', 'product5', '2020-02-07', 2500, 7, 'product5', '2020-02-07', 2500, 11),
(4, 5, 1, '2020-02-19 15:59:48', 'product-4', '2020-02-04', 3200, 23, 'product-4', '2020-02-04', 3200, 20),
(5, 4, 1, '2020-02-19 16:01:02', 'idris', '2020-02-02', 2000, 27, 'idris', '2020-02-02', 2000, 30),
(6, 3, 1, '2020-02-19 16:57:21', 'Product3', '2020-01-23', 2400, 20, 'product3', '2020-01-22', 2500, 20),
(7, 2, 1, '2020-02-19 18:45:10', 'product2', '2020-01-21', 2500, 26, 'product2', '2020-01-21', 2800, 20),
(8, 2, 1, '2020-02-19 18:46:05', 'Product2', '2020-01-21', 2500, 26, 'product2', '2020-01-21', 2500, 26),
(9, 2, 1, '2020-02-19 18:50:03', 'Product-2', '2020-01-21', 2500, 26, 'Product2', '2020-01-21', 2500, 26),
(10, 5, 1, '2020-06-27 23:24:03', 'تنك زيت', '2020-02-04', 3200, 10, 'product-4', '2020-02-04', 3200, 10),
(11, 3, 1, '2020-06-27 23:24:17', 'كرتون', '2020-01-23', 2400, 20, 'Product3', '2020-01-23', 2400, 20);

-- --------------------------------------------------------

--
-- Table structure for table `product_stats`
--

CREATE TABLE `product_stats` (
  `prod_id` int(11) NOT NULL,
  `total_bought` int(11) NOT NULL DEFAULT '0',
  `total_solde` int(11) NOT NULL DEFAULT '0',
  `qte_bought` int(11) NOT NULL DEFAULT '0',
  `qte_sold` int(11) NOT NULL DEFAULT '0',
  `capital` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_stats`
--

INSERT INTO `product_stats` (`prod_id`, `total_bought`, `total_solde`, `qte_bought`, `qte_sold`, `capital`) VALUES
(1, 164900, 134200, 15, 21, -153500),
(2, 15000, 125000, 10, 30, 65000),
(3, 80400, 117000, 0, 32, 66000),
(5, 175000, 0, 17, 0, 0),
(6, 110500, 96800, 31, 22, -151600);

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `sell_id` int(11) NOT NULL,
  `sell_price_unit` int(11) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `sell_quantity` int(11) NOT NULL,
  `sell_date` datetime NOT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`sell_id`, `sell_price_unit`, `sell_price`, `sell_quantity`, `sell_date`, `prod_id`, `user_id`, `customer_id`) VALUES
(8, 0, 25000, 10, '2020-02-01 00:00:00', 3, 1, 0),
(9, 0, 19200, 6, '2020-02-01 00:00:00', 1, 1, 0),
(11, 0, 30000, 15, '2020-02-03 00:00:00', 4, 1, 0),
(13, 2000, 600000, 300, '2020-02-05 00:00:00', 4, 1, 0),
(14, 1000, 25000, 25, '2020-02-05 00:00:00', 4, 1, 0),
(15, 2500, 12500, 5, '2020-02-05 00:00:00', 2, 5, 0),
(16, 2500, 25000, 10, '2020-02-05 00:00:00', 3, 1, 0),
(17, 1800, 574200, 319, '2020-02-06 00:00:00', 4, 1, 0),
(18, 2500, 30000, 12, '2020-02-07 00:00:00', 6, 1, 0),
(19, 2600, 26000, 10, '2020-02-07 00:00:00', 6, 1, 0),
(20, 2200, 33000, 15, '2020-02-11 00:00:00', 1, 1, 0),
(21, 2500, 62500, 25, '2020-02-11 00:00:00', 2, 1, 0),
(23, 1500, 18000, 12, '2020-02-11 00:00:00', 3, 1, 0),
(24, 2500, 27500, 11, '2020-02-13 00:00:00', 2, 1, 0),
(25, 2600, 7800, 3, '2020-02-13 00:00:00', 6, 1, 0),
(26, 2000, 10000, 5, '2020-02-13 00:00:00', 1, 1, 0),
(28, 2400, 33600, 14, '2020-02-16 00:00:00', 1, 1, 0),
(32, 2400, 38400, 16, '2020-02-16 11:45:10', 1, 5, 0),
(33, 2500, 22500, 9, '2020-02-16 11:45:24', 2, 5, 0),
(34, 2000, 16000, 8, '2020-02-16 11:45:35', 3, 5, 0),
(35, 2200, 33000, 15, '2020-02-16 11:45:53', 6, 5, 0),
(36, 2200, 33000, 15, '2020-02-16 17:37:20', 3, 1, 0),
(37, 2200, 30800, 14, '2020-02-17 23:05:35', 6, 1, 0),
(38, 2900, 23200, 8, '2020-02-19 18:44:06', 5, 1, 0),
(39, 2200, 13200, 6, '2020-02-19 23:19:52', 2, 1, 10),
(40, 2800, 14000, 5, '2020-02-19 23:20:09', 5, 1, 10),
(41, 2700, 81000, 30, '2020-06-27 23:01:00', 1, 1, 10),
(43, 3200, 3200, 1, '2020-09-05 13:37:33', 5, 1, 10),
(44, 2400, 4800, 2, '2020-09-05 17:01:03', 3, 1, 10),
(45, 2400, 43200, 18, '2020-09-09 19:24:17', 3, 1, 10),
(46, 2400, 4800, 2, '2020-09-09 20:13:46', 3, 1, 10),
(47, 2400, 2400, 1, '2020-09-09 20:36:32', 3, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(80) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `admin` int(1) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '1',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `last_logged_in` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `customer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fullname`, `telephone`, `admin`, `active`, `username`, `password`, `last_logged_in`, `image`, `customer`) VALUES
(1, 'admin', '0599283598', 1, 1, 'admin', 'admin', '2020-09-11 13:03:51', 'C:/gdp-uploads/2020-6-27-11-25-17.jpg', 0),
(4, 'test', '0555555555', 0, 0, 'testing2', 'testtest', NULL, NULL, 0),
(5, 'adda', '0553792748', 0, 0, 'averroes96', 'password', '2020-09-08 16:49:07', 'C:/gdp-uploads/2020-1-25-03-22-00.jpg', 0),
(8, 'أبيقور', '', 0, 0, 'epicurus', 'password', NULL, 'C:/gdp-uploads/2020-2-8-02-59-02.jpg', 0),
(9, 'user one', '', 0, 2, 'user_one', 'password', NULL, '', 0),
(10, 'user two', '', 0, 1, 'user2', 'password', '2020-09-09 20:36:14', '', 1),
(11, 'user host', '0666666666', 0, 1, 'userHost', '321321321', NULL, 'C:/gdp-uploads/2020-2-13-04-35-01.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`buy_id`),
  ADD KEY `fk_buyProd` (`prod_id`),
  ADD KEY `fk_buyuser` (`user_id`);

--
-- Indexes for table `privs`
--
ALTER TABLE `privs`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`),
  ADD UNIQUE KEY `product_name` (`name`);

--
-- Indexes for table `product_history`
--
ALTER TABLE `product_history`
  ADD PRIMARY KEY (`prod_hist_id`),
  ADD KEY `fk_prod_hist_user` (`user_id`),
  ADD KEY `fk_prod_hist_prod` (`prod_id`);

--
-- Indexes for table `product_stats`
--
ALTER TABLE `product_stats`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`sell_id`),
  ADD KEY `fk_sellprod` (`prod_id`),
  ADD KEY `fk_selluser` (`user_id`),
  ADD KEY `fk_customer` (`customer_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `buy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_history`
--
ALTER TABLE `product_history`
  MODIFY `prod_hist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `sell_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `fk_buyProd` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_buyuser` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `privs`
--
ALTER TABLE `privs`
  ADD CONSTRAINT `fk_user_privs` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_history`
--
ALTER TABLE `product_history`
  ADD CONSTRAINT `fk_prod_hist_prod` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_prod_hist_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_stats`
--
ALTER TABLE `product_stats`
  ADD CONSTRAINT `fk_prod_stats` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sell`
--
ALTER TABLE `sell`
  ADD CONSTRAINT `fk_sellprod` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_selluser` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
