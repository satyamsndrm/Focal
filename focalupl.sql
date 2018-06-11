-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2018 at 07:13 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `focalupl`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `a_id` int(11) NOT NULL,
  `a_type` varchar(255) DEFAULT NULL,
  `a_line1` varchar(255) DEFAULT NULL,
  `a_line2` varchar(255) DEFAULT NULL,
  `a_line3` varchar(255) DEFAULT NULL,
  `a_line4` varchar(255) DEFAULT NULL,
  `a_pinocde` varchar(255) DEFAULT NULL,
  `a_long` varchar(255) DEFAULT NULL,
  `a_lat` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) DEFAULT NULL,
  `cat_keywords` varchar(255) DEFAULT NULL,
  `cat_pic` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_keywords`, `cat_pic`) VALUES
(1, 'Bakery', 'bakery cake pastry', 'img/bakery-5.jpg'),
(2, 'Food', 'paneer chicken mutton karahi burger noodles', 'img/food.jpg'),
(3, 'Fruit', 'kela banana mango aam ', 'img/fruit.jpg'),
(4, 'Gift', 'gifts', NULL),
(5, 'Fashion', 'men women ', NULL),
(6, 'Book', NULL, NULL),
(7, 'Saloon', NULL, 'img/salon.jpg'),
(8, 'Sweet', NULL, 'img/sweet.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comment_table`
--

CREATE TABLE `comment_table` (
  `comment_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `comment_on` varchar(255) DEFAULT NULL,
  `o_id` int(11) NOT NULL,
  `comment_txt` varchar(255) DEFAULT NULL,
  `date_commented` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_msg`
--

CREATE TABLE `contact_msg` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `message` text,
  `d_upl` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_table`
--

CREATE TABLE `customer_table` (
  `c_id` int(11) NOT NULL,
  `verified` int(11) NOT NULL DEFAULT '0',
  `token` varchar(255) NOT NULL,
  `c_fname` varchar(255) DEFAULT NULL,
  `c_lname` varchar(255) DEFAULT NULL,
  `c_mobno` varchar(255) DEFAULT NULL,
  `c_username` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `c_pic` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `c_gen` varchar(255) DEFAULT NULL,
  `c_email` varchar(255) DEFAULT NULL,
  `c_age` varchar(255) DEFAULT NULL,
  `c_country` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_table`
--

INSERT INTO `customer_table` (`c_id`, `verified`, `token`, `c_fname`, `c_lname`, `c_mobno`, `c_username`, `password`, `c_pic`, `address`, `c_gen`, `c_email`, `c_age`, `c_country`) VALUES
(14, 0, '', 'a', 'a', 'a', 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 0, '', 'a', 'a', 'a', 'a@a.a', 'a@a.a', NULL, 'a', NULL, 'a@a.a', NULL, NULL),
(16, 1, '', 'Satyam Sundaram', NULL, '9936822713', 'satyamsndrm@gmail.com', '37439daf58d96661d4aee5a95658b6c6', NULL, NULL, NULL, 'satyamsndrm@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_no.` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_status_code` varchar(255) DEFAULT NULL,
  `invoice_date` datetime NOT NULL,
  `inovice_details` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu_list`
--

CREATE TABLE `menu_list` (
  `mid` int(11) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `sh_id` int(11) NOT NULL,
  `mprice` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_list`
--

INSERT INTO `menu_list` (`mid`, `mname`, `sh_id`, `mprice`) VALUES
(1, 'Threading', 5, '30'),
(2, 'Upper Lips', 5, '15'),
(3, 'Forehead', 5, '15'),
(4, 'Bleach Fruit', 5, '100'),
(5, 'Bleach Gold', 5, '150'),
(6, 'Bleach Daimond', 5, '200'),
(7, 'Bleach Oxi', 5, '200'),
(8, 'Bleach Whitening', 5, '350'),
(9, ' Gold ', 5, '500'),
(10, ' Silver', 5, '1000'),
(11, ' Diamond', 5, '1500'),
(12, 'Whitening', 5, '1800'),
(13, 'Face cleanup +03', 5, '1500'),
(14, 'Facial Gold ', 5, '1000'),
(15, 'Facial Silver', 5, '1500'),
(16, 'Facial Diamond', 5, '2000'),
(17, 'Facial Whitening', 5, '3000'),
(18, 'Facial +03', 5, '2500'),
(19, 'U Cutt', 5, '150'),
(20, 'V Cutt', 5, '150'),
(21, 'Lezer', 5, '250'),
(22, 'Fall lazer', 5, '350'),
(23, 'Steap cutt', 5, '350'),
(24, 'Baunse cutt', 5, '350'),
(25, 'Onna Cutt', 5, '350'),
(26, 'Global Hair Color Full', 5, '2500+3000+1500'),
(27, 'Color Strix (per strix)', 5, '250'),
(28, 'Color Mtting New Color', 5, '4000'),
(29, 'Nromal Wax (Arm)', 5, '150'),
(30, 'Chocolate Wax(Arm)', 5, '300'),
(31, 'Alobera Wax(Arm)', 5, '250'),
(32, 'Nromal Wax (Under Arm)', 5, '80'),
(33, 'Chocolate Wax(Under Arm)', 5, '180'),
(34, 'Alobera Wax(Under Arm)', 5, '150');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `o_status_code` varchar(255) DEFAULT NULL,
  `o_item_price` varchar(255) DEFAULT NULL,
  `o_qty` int(11) DEFAULT NULL,
  `o_other_details` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `p_id`, `o_id`, `o_status_code`, `o_item_price`, `o_qty`, `o_other_details`) VALUES
(7, 2, 5, '1', '240', 1, 'Total price is 240'),
(6, 3, 5, '1', '50', 1, 'Total price is 50'),
(5, 4, 5, '1', '180', 1, 'Total price is 180'),
(8, 1, 5, '1', '180', 3, 'Total price is 540'),
(9, 4, 6, '1', '180', 1, 'Total price is 180'),
(10, 3, 6, '1', '50', 1, 'Total price is 50'),
(11, 2, 6, '1', '240', 1, 'Total price is 240'),
(12, 1, 6, '1', '180', 3, 'Total price is 540'),
(13, 4, 7, '1', '180', 1, 'Total price is 180'),
(14, 3, 7, '1', '50', 1, 'Total price is 50'),
(15, 2, 7, '1', '240', 1, 'Total price is 240'),
(16, 1, 7, '1', '180', 3, 'Total price is 540'),
(17, 4, 8, '1', '180', 1, 'Total price is 180'),
(18, 3, 8, '1', '50', 1, 'Total price is 50'),
(19, 2, 8, '1', '240', 1, 'Total price is 240'),
(20, 1, 8, '1', '180', 3, 'Total price is 540'),
(21, 4, 9, '1', '180', 1, 'Total price is 180'),
(22, 3, 9, '1', '50', 1, 'Total price is 50'),
(23, 2, 9, '1', '240', 1, 'Total price is 240'),
(24, 1, 9, '1', '180', 3, 'Total price is 540'),
(25, 4, 10, '1', '180', 1, 'Total price is 180'),
(26, 3, 10, '1', '50', 1, 'Total price is 50'),
(27, 2, 10, '1', '240', 1, 'Total price is 240'),
(28, 1, 10, '1', '180', 3, 'Total price is 540'),
(29, 4, 11, '1', '180', 1, 'Total price is 180'),
(30, 3, 11, '1', '50', 1, 'Total price is 50'),
(31, 2, 11, '1', '240', 1, 'Total price is 240'),
(32, 1, 11, '1', '180', 3, 'Total price is 540'),
(33, 4, 12, '1', '180', 1, 'Total price is 180'),
(34, 3, 12, '1', '50', 1, 'Total price is 50'),
(35, 2, 12, '1', '240', 1, 'Total price is 240'),
(36, 1, 12, '1', '180', 3, 'Total price is 540'),
(37, 191, 13, '1', '390', 1, 'Total price is 390'),
(38, 31, 14, '1', '150', 1, 'Total price is 150'),
(39, 30, 14, '1', '150', 1, 'Total price is 150'),
(40, 29, 14, '1', '150', 1, 'Total price is 150'),
(41, 190, 14, '1', '190', 1, 'Total price is 190'),
(42, 189, 14, '1', '140', 1, 'Total price is 140'),
(43, 191, 14, '1', '390', 1, 'Total price is 390'),
(44, 30, 15, '1', '150', 1, 'Total price is 150'),
(45, 189, 15, '1', '140', 1, 'Total price is 140'),
(46, 191, 15, '1', '390', 1, 'Total price is 390');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `o_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `order_status_code` varchar(255) DEFAULT 'Ordered',
  `d_order_placed` datetime NOT NULL,
  `order_details` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`o_id`, `c_id`, `order_status_code`, `d_order_placed`, `order_details`) VALUES
(6, 1, 'Ordered', '2018-04-02 19:56:36', 'Total price is 650'),
(5, 1, NULL, '2018-04-02 19:49:34', 'Total price is 650'),
(7, 1, 'Ordered', '2018-04-02 19:57:03', 'Total price is 650'),
(8, 1, 'Ordered', '2018-04-02 19:57:25', 'Total price is 650'),
(9, 1, 'Ordered', '2018-04-02 19:57:33', 'Total price is 650'),
(10, 1, 'Ordered', '2018-04-02 19:59:21', 'Total price is 650'),
(11, 1, 'Ordered', '2018-04-02 19:59:31', 'Total price is 650'),
(12, 1, 'Ordered', '2018-04-02 20:00:29', 'Total price is 650'),
(13, 16, 'Ordered', '2018-04-17 04:34:23', 'Total price is 390'),
(14, 16, 'Ordered', '2018-04-17 04:39:30', 'Total price is 1170'),
(15, 16, 'Ordered', '2018-04-17 04:45:00', 'Total price is 680');

-- --------------------------------------------------------

--
-- Table structure for table `pics`
--

CREATE TABLE `pics` (
  `pic_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pics_of` varchar(255) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `pic_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pics`
--

INSERT INTO `pics` (`pic_id`, `p_id`, `pics_of`, `pic_url`, `pic_date`) VALUES
(2, 29, 'product', 'img/veeran_da_dhabha/2.jpg', NULL),
(3, 30, 'product', 'img/veeran_da_dhabha/4.jpg', NULL),
(4, 31, 'product', 'img/veeran_da_dhabha/6.jpg', NULL),
(5, 32, 'product', 'img/veeran_da_dhabha/8.jpg', NULL),
(6, 33, 'product', 'img/veeran_da_dhabha/10.jpg', NULL),
(7, 34, 'product', 'img/veeran_da_dhabha/12.jpg', NULL),
(8, 35, 'product', 'img/veeran_da_dhabha/14.jpg', NULL),
(9, 36, 'product', 'img/veeran_da_dhabha/16.jpg', NULL),
(10, 37, 'product', 'img/veeran_da_dhabha/18.jpg', NULL),
(11, 38, 'product', 'img/veeran_da_dhabha/20.jpg', NULL),
(12, 39, 'product', 'img/veeran_da_dhabha/22.jpg', NULL),
(13, 40, 'product', 'img/veeran_da_dhabha/24.jpg', NULL),
(14, 41, 'product', 'img/veeran_da_dhabha/26.jpg', NULL),
(15, 42, 'product', 'img/veeran_da_dhabha/28.jpg', NULL),
(16, 43, 'product', 'img/veeran_da_dhabha/30.jpg', NULL),
(17, 44, 'product', 'img/veeran_da_dhabha/32.jpg', NULL),
(18, 45, 'product', 'img/veeran_da_dhabha/34.jpg', NULL),
(19, 46, 'product', 'img/veeran_da_dhabha/36.jpg', NULL),
(20, 47, 'product', 'img/veeran_da_dhabha/38.jpg', NULL),
(21, 48, 'product', 'img/veeran_da_dhabha/40.jpg', NULL),
(22, 49, 'product', 'img/veeran_da_dhabha/42.jpg', NULL),
(23, 50, 'product', 'img/veeran_da_dhabha/44.jpg', NULL),
(24, 51, 'product', 'img/veeran_da_dhabha/46.jpg', NULL),
(25, 52, 'product', 'img/veeran_da_dhabha/48.jpg', NULL),
(26, 53, 'product', 'img/veeran_da_dhabha/50.jpg', NULL),
(27, 54, 'product', 'img/veeran_da_dhabha/52.jpg', NULL),
(28, 55, 'product', 'img/veeran_da_dhabha/54.jpg', NULL),
(29, 56, 'product', 'img/veeran_da_dhabha/56.jpg', NULL),
(30, 57, 'product', 'img/veeran_da_dhabha/58.jpg', NULL),
(31, 58, 'product', 'img/veeran_da_dhabha/60.jpg', NULL),
(32, 59, 'product', 'img/veeran_da_dhabha/62.jpg', NULL),
(33, 60, 'product', 'img/veeran_da_dhabha/64.jpg', NULL),
(34, 61, 'product', 'img/veeran_da_dhabha/66.jpg', NULL),
(35, 62, 'product', 'img/veeran_da_dhabha/68.jpg', NULL),
(36, 63, 'product', 'img/veeran_da_dhabha/70.jpg', NULL),
(37, 64, 'product', 'img/veeran_da_dhabha/72.jpg', NULL),
(38, 65, 'product', 'img/veeran_da_dhabha/74.jpg', NULL),
(39, 66, 'product', 'img/veeran_da_dhabha/76.jpg', NULL),
(40, 67, 'product', 'img/veeran_da_dhabha/78.jpg', NULL),
(41, 68, 'product', 'img/veeran_da_dhabha/80.jpg', NULL),
(42, 69, 'product', 'img/veeran_da_dhabha/82.jpg', NULL),
(43, 70, 'product', 'img/veeran_da_dhabha/84.jpg', NULL),
(44, 71, 'product', 'img/veeran_da_dhabha/86.jpg', NULL),
(45, 72, 'product', 'img/veeran_da_dhabha/88.jpg', NULL),
(46, 73, 'product', 'img/veeran_da_dhabha/90.jpg', NULL),
(47, 74, 'product', 'img/veeran_da_dhabha/92.jpg', NULL),
(48, 75, 'product', 'img/veeran_da_dhabha/94.jpg', NULL),
(49, 76, 'product', 'img/veeran_da_dhabha/96.jpg', NULL),
(50, 77, 'product', 'img/veeran_da_dhabha/98.jpg', NULL),
(51, 78, 'product', 'img/veeran_da_dhabha/100.jpg', NULL),
(52, 79, 'product', 'img/veeran_da_dhabha/102.jpg', NULL),
(53, 80, 'product', 'img/veeran_da_dhabha/104.jpg', NULL),
(54, 81, 'product', 'img/veeran_da_dhabha/106.jpg', NULL),
(496, 277, 'product', 'img/indar_dhabha/180.jpg', NULL),
(495, 276, 'product', 'img/indar_dhabha/178.jpg', NULL),
(494, 275, 'product', 'img/indar_dhabha/176.jpg', NULL),
(493, 274, 'product', 'img/indar_dhabha/174.jpg', NULL),
(492, 273, 'product', 'img/indar_dhabha/172.jpg', NULL),
(491, 272, 'product', 'img/indar_dhabha/170.jpg', NULL),
(490, 271, 'product', 'img/indar_dhabha/166.jpg', NULL),
(489, 270, 'product', 'img/indar_dhabha/164.jpg', NULL),
(488, 269, 'product', 'img/indar_dhabha/160.jpg', NULL),
(487, 268, 'product', 'img/indar_dhabha/158.jpg', NULL),
(486, 267, 'product', 'img/indar_dhabha/156.jpg', NULL),
(485, 266, 'product', 'img/indar_dhabha/152.jpg', NULL),
(484, 265, 'product', 'img/indar_dhabha/150.jpg', NULL),
(483, 264, 'product', 'img/indar_dhabha/148.jpg', NULL),
(482, 263, 'product', 'img/indar_dhabha/146.jpg', NULL),
(481, 262, 'product', 'img/indar_dhabha/144.jpg', NULL),
(480, 261, 'product', 'img/indar_dhabha/142.jpg', NULL),
(479, 260, 'product', 'img/indar_dhabha/140.jpg', NULL),
(478, 259, 'product', 'img/indar_dhabha/138.jpg', NULL),
(477, 258, 'product', 'img/indar_dhabha/134.jpg', NULL),
(476, 257, 'product', 'img/indar_dhabha/132.jpg', NULL),
(475, 256, 'product', 'img/indar_dhabha/130.jpg', NULL),
(474, 255, 'product', 'img/indar_dhabha/126.jpg', NULL),
(473, 254, 'product', 'img/indar_dhabha/124.jpg', NULL),
(472, 253, 'product', 'img/indar_dhabha/122.jpg', NULL),
(471, 252, 'product', 'img/indar_dhabha/120.jpg', NULL),
(470, 251, 'product', 'img/indar_dhabha/116.jpg', NULL),
(469, 250, 'product', 'img/indar_dhabha/114.jpg', NULL),
(468, 249, 'product', 'img/indar_dhabha/112.jpg', NULL),
(467, 248, 'product', 'img/indar_dhabha/110.jpg', NULL),
(466, 247, 'product', 'img/indar_dhabha/108.jpg', NULL),
(465, 246, 'product', 'img/indar_dhabha/106.jpg', NULL),
(464, 245, 'product', 'img/indar_dhabha/102.jpg', NULL),
(463, 244, 'product', 'img/indar_dhabha/100.jpg', NULL),
(462, 243, 'product', 'img/indar_dhabha/98.jpg', NULL),
(461, 242, 'product', 'img/indar_dhabha/96.jpg', NULL),
(460, 241, 'product', 'img/indar_dhabha/94.jpg', NULL),
(459, 240, 'product', 'img/indar_dhabha/92.jpg', NULL),
(458, 239, 'product', 'img/indar_dhabha/90.jpg', NULL),
(457, 238, 'product', 'img/indar_dhabha/88.jpg', NULL),
(456, 237, 'product', 'img/indar_dhabha/86.jpg', NULL),
(455, 236, 'product', 'img/indar_dhabha/84.jpg', NULL),
(454, 235, 'product', 'img/indar_dhabha/82.jpg', NULL),
(453, 234, 'product', 'img/indar_dhabha/80.jpg', NULL),
(452, 233, 'product', 'img/indar_dhabha/78.jpg', NULL),
(451, 232, 'product', 'img/indar_dhabha/76.jpg', NULL),
(450, 231, 'product', 'img/indar_dhabha/74.jpg', NULL),
(449, 230, 'product', 'img/indar_dhabha/72.jpg', NULL),
(448, 229, 'product', 'img/indar_dhabha/70.jpg', NULL),
(447, 228, 'product', 'img/indar_dhabha/68.jpg', NULL),
(446, 227, 'product', 'img/indar_dhabha/66.jpg', NULL),
(445, 226, 'product', 'img/indar_dhabha/64.jpg', NULL),
(444, 225, 'product', 'img/indar_dhabha/62.jpg', NULL),
(443, 224, 'product', 'img/indar_dhabha/60.jpg', NULL),
(442, 223, 'product', 'img/indar_dhabha/58.jpg', NULL),
(441, 222, 'product', 'img/indar_dhabha/56.jpg', NULL),
(440, 221, 'product', 'img/indar_dhabha/54.jpg', NULL),
(439, 220, 'product', 'img/indar_dhabha/52.jpg', NULL),
(438, 219, 'product', 'img/indar_dhabha/50.jpg', NULL),
(437, 218, 'product', 'img/indar_dhabha/48.jpg', NULL),
(436, 217, 'product', 'img/indar_dhabha/46.jpg', NULL),
(435, 216, 'product', 'img/indar_dhabha/44.jpg', NULL),
(434, 215, 'product', 'img/indar_dhabha/42.jpg', NULL),
(433, 214, 'product', 'img/indar_dhabha/40.jpg', NULL),
(432, 213, 'product', 'img/indar_dhabha/38.jpg', NULL),
(431, 212, 'product', 'img/indar_dhabha/36.jpg', NULL),
(430, 211, 'product', 'img/indar_dhabha/34.jpg', NULL),
(429, 210, 'product', 'img/indar_dhabha/32.jpg', NULL),
(428, 209, 'product', 'img/indar_dhabha/30.jpg', NULL),
(427, 208, 'product', 'img/indar_dhabha/28.jpg', NULL),
(426, 207, 'product', 'img/indar_dhabha/26.jpg', NULL),
(425, 206, 'product', 'img/indar_dhabha/24.jpg', NULL),
(424, 205, 'product', 'img/indar_dhabha/22.jpg', NULL),
(423, 204, 'product', 'img/indar_dhabha/20.jpg', NULL),
(422, 203, 'product', 'img/indar_dhabha/18.jpg', NULL),
(421, 202, 'product', 'img/indar_dhabha/16.jpg', NULL),
(420, 201, 'product', 'img/indar_dhabha/14.jpg', NULL),
(419, 200, 'product', 'img/indar_dhabha/12.jpg', NULL),
(418, 199, 'product', 'img/indar_dhabha/10.jpg', NULL),
(417, 198, 'product', 'img/indar_dhabha/8.jpg', NULL),
(416, 197, 'product', 'img/indar_dhabha/6.jpg', NULL),
(415, 196, 'product', 'img/indar_dhabha/4.jpg', NULL),
(414, 194, 'product', 'img/bakery/IMG_20180320_194407.jpg', NULL),
(413, 194, 'product', 'img/bakery/IMG_20180320_194404.jpg', NULL),
(412, 193, 'product', 'img/bakery/IMG_20180320_194350.jpg', NULL),
(411, 193, 'product', 'img/bakery/IMG_20180320_194344.jpg', NULL),
(410, 192, 'product', 'img/bakery/IMG_20180320_194202.jpg', NULL),
(409, 192, 'product', 'img/bakery/IMG_20180320_194145.jpg', NULL),
(408, 191, 'product', 'img/bakery/IMG_20180320_194204.jpg', NULL),
(407, 191, 'product', 'img/bakery/IMG_20180320_194134.jpg', NULL),
(406, 190, 'product', 'img/bakery/IMG_20180320_194203.jpg', NULL),
(405, 190, 'product', 'img/bakery/IMG_20180320_194122.jpg', NULL),
(404, 189, 'product', 'img/bakery/IMG_20180320_194202.jpg', NULL),
(403, 189, 'product', 'img/bakery/IMG_20180320_194107.jpg', NULL),
(402, 188, 'product', 'img/bakery/IMG_20180320_194010.jpg', NULL),
(401, 187, 'product', 'img/bakery/IMG_20180320_193944.jpg', NULL),
(400, 185, 'product', 'img/bakery/IMG_20180320_193819.jpg', NULL),
(399, 179, 'product', 'img/bakery/IMG_20180320_193404.jpg', NULL),
(398, 179, 'product', 'img/bakery/IMG_20180320_193400.jpg', NULL),
(397, 179, 'product', 'img/bakery/IMG_20180320_193346.jpg', NULL),
(396, 178, 'product', 'img/bakery/IMG_20180320_193253.jpg', NULL),
(395, 177, 'product', 'img/bakery/IMG_20180320_192732.jpg', NULL),
(394, 176, 'product', 'img/bakery/IMG_20180320_192643.jpg', NULL),
(393, 176, 'product', 'img/bakery/IMG_20180320_192637.jpg', NULL),
(392, 175, 'product', 'img/bakery/IMG_20180320_192519.jpg', NULL),
(391, 175, 'product', 'img/bakery/IMG_20180320_192524.jpg', NULL),
(390, 174, 'product', 'img/bakery/IMG_20180320_195337.jpg', NULL),
(389, 174, 'product', 'img/bakery/IMG_20180320_195326.jpg', NULL),
(388, 166, 'product', 'img/bakery/IMG_20180320_195142.jpg', NULL),
(387, 160, 'product', 'img/bakery/IMG_20180320_194814.jpg', NULL),
(386, 159, 'product', 'img/bakery/IMG_20180320_194739.jpg', NULL),
(385, 158, 'product', 'img/bakery/IMG_20180320_194511.jpg', NULL),
(497, 321, 'product', 'img/gift/IMG_20180319_163435647.jpg', NULL),
(498, 321, 'product', 'img/gift/IMG_20180319_163452706.jpg', NULL),
(499, 321, 'product', 'img/gift/IMG_20180319_163501288.jpg', NULL),
(500, 322, 'product', 'img/gift/IMG_20180319_163728912.jpg', NULL),
(501, 322, 'product', 'img/gift/IMG_20180319_163745513.jpg', NULL),
(502, 322, 'product', 'img/gift/IMG_20180319_163751687.jpg', NULL),
(503, 322, 'product', 'img/gift/IMG_20180319_163753838.jpg', NULL),
(504, 322, 'product', 'img/gift/IMG_20180319_163800720.jpg', NULL),
(505, 323, 'product', 'img/gift/IMG_20180319_164052264.jpg', NULL),
(506, 323, 'product', 'img/gift/IMG_20180319_164102058.jpg', NULL),
(507, 323, 'product', 'img/gift/IMG_20180319_164134245.jpg', NULL),
(508, 323, 'product', 'img/gift/IMG_20180319_164200246.jpg', NULL),
(509, 323, 'product', 'img/gift/IMG_20180319_164207850.jpg', NULL),
(510, 324, 'product', 'img/gift/IMG_20180319_164259142.jpg', NULL),
(511, 324, 'product', 'img/gift/IMG_20180319_164313364.jpg', NULL),
(512, 324, 'product', 'img/gift/IMG_20180319_164324463.jpg', NULL),
(513, 325, 'product', 'img/gift/IMG_20180319_164354187.jpg', NULL),
(514, 325, 'product', 'img/gift/IMG_20180319_164409723.jpg', NULL),
(515, 326, 'product', 'img/gift/IMG_20180319_164533841.jpg', NULL),
(516, 327, 'product', 'img/gift/IMG_20180319_164607633.jpg', NULL),
(517, 327, 'product', 'img/gift/IMG_20180319_164608655.jpg', NULL),
(518, 327, 'product', 'img/gift/IMG_20180319_164613697.jpg', NULL),
(519, 327, 'product', 'img/gift/IMG_20180319_164620950.jpg', NULL),
(520, 328, 'product', 'img/gift/IMG_20180319_164658582.jpg', NULL),
(521, 328, 'product', 'img/gift/IMG_20180319_164704491.jpg', NULL),
(522, 329, 'product', 'img/gift/IMG_20180319_164845796.jpg', NULL),
(523, 330, 'product', 'img/gift/IMG_20180319_164940199.jpg', NULL),
(524, 330, 'product', 'img/gift/IMG_20180319_164950806.jpg', NULL),
(525, 331, 'product', 'img/gift/IMG_20180319_165032079.jpg', NULL),
(526, 331, 'product', 'img/gift/IMG_20180319_165036695.jpg', NULL),
(527, 332, 'product', 'img/gift/IMG_20180319_165134926_HDR.jpg', NULL),
(528, 332, 'product', 'img/gift/IMG_20180319_165138532_HDR.jpg', NULL),
(529, 333, 'product', 'img/gift/IMG_20180319_165324058.jpg', NULL),
(530, 333, 'product', 'img/gift/IMG_20180319_165426107.jpg', NULL),
(531, 333, 'product', 'img/gift/IMG_20180319_165431401.jpg', NULL),
(532, 333, 'product', 'img/gift/IMG_20180319_165457627.jpg', NULL),
(533, 333, 'product', 'img/gift/IMG_20180319_165442632.jpg', NULL),
(534, 334, 'product', 'img/gift/IMG_20180319_165544593.jpg', NULL),
(535, 334, 'product', 'img/gift/IMG_20180319_165549647.jpg', NULL),
(536, 334, 'product', 'img/gift/IMG_20180319_165605384.jpg', NULL),
(537, 334, 'product', 'img/gift/IMG_20180319_165609371.jpg', NULL),
(538, 335, 'product', 'img/gift/IMG_20180319_165659743.jpg', NULL),
(539, 335, 'product', 'img/gift/IMG_20180319_165731622.jpg', NULL),
(540, 335, 'product', 'img/gift/IMG_20180319_165737777.jpg', NULL),
(541, 336, 'product', 'img/gift/IMG_20180319_165841607.jpg', NULL),
(542, 336, 'product', 'img/gift/IMG_20180319_165915290.jpg', NULL),
(543, 336, 'product', 'img/gift/IMG_20180319_165920133.jpg', NULL),
(544, 337, 'product', 'img/gift/IMG_20180319_170152969.jpg', NULL),
(545, 337, 'product', 'img/gift/IMG_20180319_170149324.jpg', NULL),
(546, 337, 'product', 'img/gift/IMG_20180319_170204676.jpg', NULL),
(547, 337, 'product', 'img/gift/IMG_20180319_170215430.jpg', NULL),
(548, 337, 'product', 'img/gift/IMG_20180319_170212877.jpg', NULL),
(549, 343, 'product', 'img/gift/IMG_20180319_170900141.jpg', NULL),
(550, 344, 'product', 'img/gift/IMG_20180319_171041004.jpg', NULL),
(551, 344, 'product', 'img/gift/IMG_20180319_171028320.jpg', NULL),
(552, 345, 'product', 'img/gift/IMG_20180319_171153125.jpg', NULL),
(553, 345, 'product', 'img/gift/IMG_20180319_171205321.jpg', NULL),
(554, 346, 'product', 'img/gift/IMG_20180319_171418612.jpg', NULL),
(555, 346, 'product', 'img/gift/IMG_20180319_171415276.jpg', NULL),
(556, 347, 'product', 'img/gift/IMG_20180319_171503447.jpg', NULL),
(557, 347, 'product', 'img/gift/IMG_20180319_171500000.jpg', NULL),
(558, 347, 'product', 'img/gift/IMG_20180319_171504161.jpg', NULL),
(559, 348, 'product', 'img/gift/IMG_20180319_171521406_LL.jpg', NULL),
(560, 348, 'product', 'img/gift/IMG_20180319_171517793_LL.jpg', NULL),
(561, 348, 'product', 'img/gift/IMG_20180319_171519229_LL.jpg', NULL),
(562, 349, 'product', 'img/gift/IMG_20180319_171614430.jpg', NULL),
(563, 349, 'product', 'img/gift/IMG_20180319_171621876.jpg', NULL),
(564, 350, 'product', 'img/gift/IMG_20180319_171942124.jpg', NULL),
(565, 350, 'product', 'img/gift/IMG_20180319_171938020.jpg', NULL),
(566, 350, 'product', 'img/gift/IMG_20180319_171928113.jpg', NULL),
(567, 350, 'product', 'img/gift/IMG_20180319_171922689.jpg', NULL),
(568, 351, 'product', 'img/gift/IMG_20180319_171709526.jpg', NULL),
(569, 351, 'product', 'img/gift/IMG_20180319_171712165.jpg', NULL),
(570, 352, 'product', 'img/gift/IMG_20180319_171729046.jpg', NULL),
(571, 352, 'product', 'img/gift/IMG_20180319_171731846.jpg', NULL),
(572, 353, 'product', 'img/gift/IMG_20180319_171755259.jpg', NULL),
(573, 353, 'product', 'img/gift/IMG_20180319_171758347.jpg', NULL),
(574, 354, 'product', 'img/gift/IMG_20180319_171841681.jpg', NULL),
(575, 354, 'product', 'img/gift/IMG_20180319_171903814.jpg', NULL),
(576, 355, 'product', 'img/gift/IMG_20180319_172336610.jpg', NULL),
(577, 355, 'product', 'img/gift/IMG_20180319_172152390.jpg', NULL),
(578, 355, 'product', 'img/gift/IMG_20180319_172340963.jpg', NULL),
(579, 356, 'product', 'img/gift/IMG_20180319_172358429.jpg', NULL),
(580, 359, 'product', 'img/gift/IMG_20180319_172503968.jpg', NULL),
(581, 363, 'product', 'img/gift/IMG_20180319_172601585.jpg', NULL),
(582, 364, 'product', 'img/gift/IMG_20180319_173154523.jpg', NULL),
(583, 364, 'product', 'img/gift/IMG_20180319_173158940.jpg', NULL),
(584, 364, 'product', 'img/gift/IMG_20180319_172956256.jpg', NULL),
(585, 364, 'product', 'img/gift/IMG_20180319_172959308.jpg', NULL),
(586, 364, 'product', 'img/gift/IMG_20180319_173011639.jpg', NULL),
(587, 365, 'product', 'img/grill/4.jpg', NULL),
(588, 366, 'product', 'img/grill/6.jpg', NULL),
(589, 367, 'product', 'img/grill/8.jpg', NULL),
(590, 368, 'product', 'img/grill/10.jpg', NULL),
(591, 369, 'product', 'img/grill/12.jpg', NULL),
(592, 370, 'product', 'img/grill/14.jpg', NULL),
(593, 371, 'product', 'img/grill/16.jpg', NULL),
(594, 372, 'product', 'img/grill/18.jpg', NULL),
(595, 373, 'product', 'img/grill/20.jpg', NULL),
(596, 374, 'product', 'img/grill/22.jpg', NULL),
(597, 375, 'product', 'img/grill/24.jpg', NULL),
(598, 376, 'product', 'img/grill/26.jpg', NULL),
(599, 377, 'product', 'img/grill/28.jpg', NULL),
(600, 378, 'product', 'img/grill/30.jpg', NULL),
(601, 379, 'product', 'img/grill/32.jpg', NULL),
(602, 380, 'product', 'img/grill/34.jpg', NULL),
(603, 381, 'product', 'img/grill/36.jpg', NULL),
(604, 382, 'product', 'img/grill/38.jpg', NULL),
(605, 383, 'product', 'img/grill/40.jpg', NULL),
(606, 384, 'product', 'img/grill/42.jpg', NULL),
(607, 385, 'product', 'img/grill/44.jpg', NULL),
(608, 386, 'product', 'img/grill/46.jpg', NULL),
(609, 387, 'product', 'img/grill/48.jpg', NULL),
(610, 388, 'product', 'img/grill/50.jpg', NULL),
(611, 389, 'product', 'img/grill/52.jpg', NULL),
(612, 390, 'product', 'img/grill/54.jpg', NULL),
(613, 391, 'product', 'img/grill/56.jpg', NULL),
(614, 392, 'product', 'img/grill/58.jpg', NULL),
(615, 393, 'product', 'img/grill/60.jpg', NULL),
(616, 394, 'product', 'img/grill/62.jpg', NULL),
(617, 395, 'product', 'img/grill/64.jpg', NULL),
(618, 396, 'product', 'img/grill/66.jpg', NULL),
(619, 397, 'product', 'img/grill/68.jpg', NULL),
(620, 398, 'product', 'img/grill/70.jpg', NULL),
(621, 399, 'product', 'img/grill/72.jpg', NULL),
(622, 400, 'product', 'img/grill/74.jpg', NULL),
(623, 401, 'product', 'img/grill/76.jpg', NULL),
(624, 402, 'product', 'img/grill/78.jpg', NULL),
(625, 403, 'product', 'img/grill/80.jpg', NULL),
(626, 404, 'product', 'img/grill/82.jpg', NULL),
(627, 405, 'product', 'img/grill/84.jpg', NULL),
(628, 406, 'product', 'img/grill/86.jpg', NULL),
(629, 407, 'product', 'img/grill/88.jpg', NULL),
(630, 408, 'product', 'img/grill/90.jpg', NULL),
(631, 409, 'product', 'img/grill/92.jpg', NULL),
(632, 410, 'product', 'img/grill/94.jpg', NULL),
(633, 411, 'product', 'img/grill/96.jpg', NULL),
(634, 412, 'product', 'img/grill/98.jpg', NULL),
(635, 413, 'product', 'img/grill/100.jpg', NULL),
(636, 414, 'product', 'img/grill/102.jpg', NULL),
(637, 415, 'product', 'img/grill/104.jpg', NULL),
(638, 416, 'product', 'img/grill/106.jpg', NULL),
(639, 417, 'product', 'img/grill/108.jpg', NULL),
(640, 418, 'product', 'img/grill/110.jpg', NULL),
(641, 419, 'product', 'img/grill/112.jpg', NULL),
(642, 420, 'product', 'img/grill/114.jpg', NULL),
(643, 421, 'product', 'img/grill/116.jpg', NULL),
(644, 422, 'product', 'img/grill/118.jpg', NULL),
(645, 423, 'product', 'img/grill/120.jpg', NULL),
(646, 424, 'product', 'img/grill/122.jpg', NULL),
(647, 425, 'product', 'img/grill/124.jpg', NULL),
(648, 426, 'product', 'img/grill/126.jpg', NULL),
(649, 427, 'product', 'img/grill/128.jpg', NULL),
(650, 428, 'product', 'img/grill/130.jpg', NULL),
(651, 429, 'product', 'img/grill/132.jpg', NULL),
(652, 430, 'product', 'img/grill/134.jpg', NULL),
(653, 431, 'product', 'img/grill/136.jpg', NULL),
(654, 432, 'product', 'img/grill/138.jpg', NULL),
(655, 433, 'product', 'img/grill/140.jpg', NULL),
(656, 434, 'product', 'img/grill/142.jpg', NULL),
(657, 435, 'product', 'img/grill/144.jpg', NULL),
(658, 436, 'product', 'img/grill/146.jpg', NULL),
(659, 437, 'product', 'img/grill/148.jpg', NULL),
(660, 438, 'product', 'img/grill/150.jpg', NULL),
(661, 439, 'product', 'img/grill/152.jpg', NULL),
(662, 440, 'product', 'img/grill/154.jpg', NULL),
(663, 441, 'product', 'img/grill/156.jpg', NULL),
(664, 442, 'product', 'img/grill/158.jpg', NULL),
(665, 443, 'product', 'img/grill/160.jpg', NULL),
(666, 444, 'product', 'img/grill/162.jpg', NULL),
(667, 445, 'product', 'img/grill/164.jpg', NULL),
(668, 446, 'product', 'img/grill/166.jpg', NULL),
(669, 447, 'product', 'img/grill/168.jpg', NULL),
(670, 448, 'product', 'img/grill/170.jpg', NULL),
(671, 449, 'product', 'img/grill/172.jpg', NULL),
(672, 450, 'product', 'img/grill/174.jpg', NULL),
(673, 451, 'product', 'img/grill/176.jpg', NULL),
(674, 452, 'product', 'img/grill/178.jpg', NULL),
(675, 453, 'product', 'img/grill/180.jpg', NULL),
(676, 454, 'product', 'img/grill/182.jpg', NULL),
(677, 455, 'product', 'img/grill/184.jpg', NULL),
(678, 456, 'product', 'img/grill/186.jpg', NULL),
(679, 457, 'product', 'img/grill/188.jpg', NULL),
(680, 458, 'product', 'img/grill/190.jpg', NULL),
(681, 459, 'product', 'img/grill/192.jpg', NULL),
(682, 460, 'product', 'img/grill/194.jpg', NULL),
(683, 461, 'product', 'img/grill/196.jpg', NULL),
(684, 462, 'product', 'img/grill/198.jpg', NULL),
(685, 463, 'product', 'img/grill/200.jpg', NULL),
(686, 464, 'product', 'img/grill/202.jpg', NULL),
(687, 465, 'product', 'img/grill/204.jpg', NULL),
(688, 466, 'product', 'img/grill/206.jpg', NULL),
(689, 467, 'product', 'img/grill/208.jpg', NULL),
(690, 468, 'product', 'img/grill/210.jpg', NULL),
(691, 469, 'product', 'img/grill/212.jpg', NULL),
(692, 470, 'product', 'img/grill/214.jpg', NULL),
(693, 471, 'product', 'img/grill/216.jpg', NULL),
(694, 472, 'product', 'img/grill/218.jpg', NULL),
(695, 473, 'product', 'img/grill/220.jpg', NULL),
(696, 474, 'product', 'img/grill/222.jpg', NULL),
(697, 475, 'product', 'img/grill/224.jpg', NULL),
(698, 476, 'product', 'img/grill/226.jpg', NULL),
(699, 477, 'product', 'img/grill/228.jpg', NULL),
(700, 478, 'product', 'img/grill/230.jpg', NULL),
(701, 479, 'product', 'img/grill/232.jpg', NULL),
(702, 480, 'product', 'img/grill/234.jpg', NULL),
(703, 481, 'product', 'img/zigzag/2.jpg', NULL),
(704, 482, 'product', 'img/zigzag/4.jpg', NULL),
(705, 483, 'product', 'img/zigzag/6.jpg', NULL),
(706, 484, 'product', 'img/zigzag/8.jpg', NULL),
(707, 485, 'product', 'img/zigzag/10.jpg', NULL),
(708, 486, 'product', 'img/zigzag/12.jpg', NULL),
(709, 487, 'product', 'img/zigzag/14.jpg', NULL),
(710, 488, 'product', 'img/zigzag/16.jpg', NULL),
(711, 489, 'product', 'img/zigzag/18.jpg', NULL),
(712, 490, 'product', 'img/zigzag/20.jpg', NULL),
(713, 491, 'product', 'img/zigzag/22.jpg', NULL),
(714, 492, 'product', 'img/zigzag/24.jpg', NULL),
(715, 493, 'product', 'img/zigzag/26.jpg', NULL),
(716, 494, 'product', 'img/zigzag/28.jpg', NULL),
(717, 495, 'product', 'img/zigzag/30.jpg', NULL),
(718, 496, 'product', 'img/zigzag/32.jpg', NULL),
(719, 497, 'product', 'img/zigzag/34.jpg', NULL),
(720, 498, 'product', 'img/zigzag/36.jpg', NULL),
(721, 499, 'product', 'img/zigzag/38.jpg', NULL),
(722, 500, 'product', 'img/zigzag/40.jpg', NULL),
(723, 501, 'product', 'img/zigzag/42.jpg', NULL),
(724, 502, 'product', 'img/zigzag/44.jpg', NULL),
(725, 503, 'product', 'img/zigzag/46.jpg', NULL),
(726, 504, 'product', 'img/zigzag/48.jpg', NULL),
(727, 505, 'product', 'img/zigzag/50.jpg', NULL),
(728, 506, 'product', 'img/zigzag/52.jpg', NULL),
(729, 507, 'product', 'img/zigzag/54.jpg', NULL),
(730, 508, 'product', 'img/zigzag/56.jpg', NULL),
(731, 509, 'product', 'img/zigzag/58.jpg', NULL),
(732, 510, 'product', 'img/zigzag/60.jpg', NULL),
(733, 511, 'product', 'img/zigzag/62.jpg', NULL),
(734, 512, 'product', 'img/zigzag/64.jpg', NULL),
(735, 513, 'product', 'img/zigzag/66.jpg', NULL),
(736, 514, 'product', 'img/zigzag/68.jpg', NULL),
(737, 515, 'product', 'img/zigzag/70.jpg', NULL),
(738, 516, 'product', 'img/zigzag/72.jpg', NULL),
(739, 517, 'product', 'img/zigzag/74.jpg', NULL),
(740, 518, 'product', 'img/zigzag/76.jpg', NULL),
(741, 519, 'product', 'img/zigzag/78.jpg', NULL),
(742, 520, 'product', 'img/zigzag/80.jpg', NULL),
(743, 521, 'product', 'img/zigzag/82.jpg', NULL),
(744, 522, 'product', 'img/zigzag/84.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `p_price` varchar(255) DEFAULT NULL,
  `cat_id` varchar(255) DEFAULT NULL,
  `p_subcat` varchar(255) DEFAULT NULL,
  `p_review` varchar(255) DEFAULT NULL,
  `p_seller_id` int(11) NOT NULL,
  `p_discount` varchar(255) DEFAULT NULL,
  `p_keywords` varchar(255) DEFAULT NULL,
  `p_description` varchar(255) DEFAULT NULL,
  `p_specificatons` varchar(255) DEFAULT NULL,
  `p_quantity` varchar(255) DEFAULT NULL,
  `prod_pic` varchar(255) DEFAULT 'img/product-minimal-1.jpg'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_price`, `cat_id`, `p_subcat`, `p_review`, `p_seller_id`, `p_discount`, `p_keywords`, `p_description`, `p_specificatons`, `p_quantity`, `prod_pic`) VALUES
(1, 'Red Apple', '180', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/1.jpg'),
(2, 'Babugosha', '240', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/2.jpg'),
(3, 'Strawberry', '50', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/3.jpg'),
(4, 'Normal Apple(america)', '180', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/4.jpg'),
(5, 'Genral Apple', '90-100', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/5.jpg'),
(6, 'Kinnur Apple ', '160', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/6.jpg'),
(7, 'Grapes(green)', '100', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/7.jpg'),
(8, 'Grapes(black)', '120', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/8.png'),
(9, 'Banana', '30/50/60', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/9.jpg'),
(10, 'Coconut', '40/50/60', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per pice', NULL, NULL, 'img/10.jpg'),
(11, 'Kiwi', '25/30', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per pice', NULL, NULL, 'img/11.jpg'),
(12, 'Pomegranate', '160', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/12.jpg'),
(13, 'Malta ', '130-150', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/13.jpg'),
(14, 'Apricot', '120', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/14.jpg'),
(15, 'Dates (seed less)', '90', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/15.jpg'),
(16, 'Dates ( seed)', '35-80', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/16.jpg'),
(17, 'Pineapple (ranni)', '80-85', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/17.jpg'),
(18, 'Pineapple (Sample)', '40', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/18.jpg'),
(19, 'Cheeku', '50-70', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/19.jpg'),
(20, 'Watermelon', '30-35', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/20.jpg'),
(21, 'Sarda', '80', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/21.jpg'),
(22, 'Orang', '90-100', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/22.jpg'),
(23, 'Mango', '200', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/23.jpg'),
(24, 'Baalwala coco', '40', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per pice', NULL, NULL, 'img/24.jpg'),
(25, 'Papaya', '40-50', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/25.jpg'),
(26, 'Guawa(important)', '200', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/26.jpg'),
(27, 'Guawa(local)', '100', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/27.jpg'),
(28, 'Kharbuja ', '80-90', '3', NULL, NULL, 3, NULL, NULL, 'Fresh Fruits, Price Per Kg', NULL, NULL, 'img/28.jpg'),
(29, 'shahi paneer', '150', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of Shahi Paneer.', NULL, NULL, 'img/veeran_da_dhabha/1.jpg'),
(30, 'karai paneer', '150', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of karai Paneer.', NULL, NULL, 'img/veeran_da_dhabha/3.jpg'),
(31, 'cheese butter masala', '150', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of cheese butter Paneer.', NULL, NULL, 'img/veeran_da_dhabha/5.jpg'),
(32, 'cheese chilli', '190', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of  cheese chilli', NULL, NULL, 'img/veeran_da_dhabha/7.jpg'),
(33, 'cheese tamato', '150', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of cheese tamato .', NULL, NULL, 'img/veeran_da_dhabha/9.jpg'),
(34, 'paneer bhurji', '160', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of  Paneer bhurji.', NULL, NULL, 'img/veeran_da_dhabha/11.jpg'),
(35, 'palak paneer', '150', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of palak Paneer.', NULL, NULL, 'img/veeran_da_dhabha/13.jpg'),
(36, 'mutter paneer', '150', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of mutter Paneer.', NULL, NULL, 'img/veeran_da_dhabha/15.jpg'),
(37, 'malai kofta ', '150', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of malai kofta.', NULL, NULL, 'img/veeran_da_dhabha/17.jpg'),
(38, 'mix vegetable', '120', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of mix vegetable.', NULL, NULL, 'img/veeran_da_dhabha/19.jpg'),
(39, 'veg manchurian', '190', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of veg manchurian .', NULL, NULL, 'img/veeran_da_dhabha/21.jpg'),
(40, 'chana masala', '100', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of chana masala .', NULL, NULL, 'img/veeran_da_dhabha/23.jpg'),
(41, 'allu ghobi', '80', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of allu ghobi .', NULL, NULL, 'img/veeran_da_dhabha/25.jpg'),
(42, 'allu mutter', '80', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of allu mutter .', NULL, NULL, 'img/veeran_da_dhabha/27.jpg'),
(43, 'allu jeera', '80', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of allu jeera .', NULL, NULL, 'img/veeran_da_dhabha/29.jpg'),
(44, 'piayaj tomato', '80', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1  Full Plate Of piayaj tomato .', NULL, NULL, 'img/veeran_da_dhabha/31.jpg'),
(45, 'boondi raita', '80', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of boondi raita .', NULL, NULL, 'img/veeran_da_dhabha/33.jpg'),
(46, 'dal makhani', '90', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of dal makhani.', NULL, NULL, 'img/veeran_da_dhabha/35.jpg'),
(47, 'dal fry', '70', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of dal fry .', NULL, NULL, 'img/veeran_da_dhabha/37.jpg'),
(48, 'mix raita', '80', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of mix raita .', NULL, NULL, 'img/veeran_da_dhabha/39.jpg'),
(49, 'allu raita', '60', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of allu raita.', NULL, NULL, 'img/veeran_da_dhabha/41.jpg'),
(50, 'plain dahi', '35', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of plain dahi', NULL, NULL, 'img/veeran_da_dhabha/43.jpg'),
(51, 'gobhi mutter', '100', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of gobhi mutter.', NULL, NULL, 'img/veeran_da_dhabha/45.jpg'),
(52, 'veg pulao', '150', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of  veg pulao .', NULL, NULL, 'img/veeran_da_dhabha/47.jpg'),
(53, 'jeera rice ', '90', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of  jeera rice .', NULL, NULL, 'img/veeran_da_dhabha/49.jpg'),
(54, 'simple rice', '70', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1  Full Plate Of  simple  rice .', NULL, NULL, 'img/veeran_da_dhabha/51.jpg'),
(55, 'mutter rice', '90', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of  mutter rice .', NULL, NULL, 'img/veeran_da_dhabha/53.jpg'),
(56, 'salad', '30', '2', NULL, NULL, 2, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 Full Plate Of   salad .', NULL, NULL, 'img/veeran_da_dhabha/55.jpg'),
(57, 'Noodles', '90', '2', NULL, NULL, 2, NULL, 'Food, Snacks,Vegetarian', '1 Full Plate Of   noodles .', NULL, NULL, 'img/veeran_da_dhabha/57.jpg'),
(58, 'paneer pakora', '130', '2', NULL, NULL, 2, NULL, 'Food, Snacks,Vegetarian', '1 Full Plate Of   paneer pakora.', NULL, NULL, 'img/veeran_da_dhabha/59.jpg'),
(59, 'mix pakora', '100', '2', NULL, NULL, 2, NULL, 'Food, Snacks,Vegetarian', '1 Full Plate Of   mix pakora .', NULL, NULL, 'img/veeran_da_dhabha/61.jpg'),
(60, 'bread pakora', '80', '2', NULL, NULL, 2, NULL, 'Food, Snacks,Vegetarian', '1 Full Plate Of   bread pakora .', NULL, NULL, 'img/veeran_da_dhabha/63.jpg'),
(61, 'patato finger', '100', '2', NULL, NULL, 2, NULL, 'Food, Snacks,Vegetarian', '1 Full Plate Of   patato finger .', NULL, NULL, 'img/veeran_da_dhabha/65.jpg'),
(62, 'butter toast', '25', '2', NULL, NULL, 2, NULL, 'Food, Snacks,Vegetarian', '1 Full Plate Of   butter toast .', NULL, NULL, 'img/veeran_da_dhabha/67.jpg'),
(63, 'sandbitch', '30', '2', NULL, NULL, 2, NULL, 'Food, Snacks,Vegetarian', '1 sandbitch(price per piece).', NULL, NULL, 'img/veeran_da_dhabha/69.jpg'),
(64, 'tava parantha', '40', '2', NULL, NULL, 2, NULL, 'Food, Snacks,Vegetarian', '1 tava parantha (price per piece)', NULL, NULL, 'img/veeran_da_dhabha/71.jpg'),
(65, 'Cheese nan', '50', '2', NULL, NULL, 2, NULL, 'Food, Tandoori Item,Roti,Vegetarian,Parantha, Nan', '1 cheese  Nan (Price Per Piece)', NULL, NULL, 'img/veeran_da_dhabha/73.jpg'),
(66, 'butter nan ', '25', '2', NULL, NULL, 2, NULL, 'Food, Tandoori Item,Roti,Vegetarian,Parantha, Nan', '1 butter nan (price per piece)', NULL, NULL, 'img/veeran_da_dhabha/75.jpg'),
(67, 'allu nan', '40', '2', NULL, NULL, 2, NULL, 'Food, Tandoori Item,Roti,Vegetarian,Parantha, Nan', '1 allu Nan (Price Per Piece)', NULL, NULL, 'img/veeran_da_dhabha/77.jpg'),
(68, 'plain nan', '20', '2', NULL, NULL, 2, NULL, 'Food, Tandoori Item,Roti,Vegetarian,Parantha, Nan', '1 plain nan (price per piece)', NULL, NULL, 'img/veeran_da_dhabha/79.jpg'),
(69, 'paneer parantha ', '40', '2', NULL, NULL, 2, NULL, 'Food, Tandoori Item,Roti,Vegetarian,Parantha, Nan', '1 paneer parantha  (Price Per Piece)', NULL, NULL, 'img/veeran_da_dhabha/81.jpg'),
(70, 'gobhi parantha ', '35', '2', NULL, NULL, 2, NULL, 'Food, Tandoori Item,Roti,Vegetarian,Parantha, Nan', '1 gobhi parantha  (price per piece)', NULL, NULL, 'img/veeran_da_dhabha/83.jpg'),
(71, 'allu parantha ', '30', '2', NULL, NULL, 2, NULL, 'Food, Tandoori Item,Roti,Vegetarian,Parantha, Nan', '1 allu parantha  (Price Per Piece)', NULL, NULL, 'img/veeran_da_dhabha/85.jpg'),
(72, 'tava roti', '10', '2', NULL, NULL, 2, NULL, 'Food, Tandoori Item,Roti,Vegetarian,Parantha, Nan', '1 tava roti (price per piece)', NULL, NULL, 'img/veeran_da_dhabha/87.jpg'),
(73, 'lacchedar parantha', '20', '2', NULL, NULL, 2, NULL, 'Food, Tandoori Item,Roti,Vegetarian,Parantha, Nan', '1 lacchedar parantha  (Price Per Piece)', NULL, NULL, 'img/veeran_da_dhabha/89.jpg'),
(74, 'butter roti', '10', '2', NULL, NULL, 2, NULL, 'Food, Tandoori Item,Roti,Vegetarian,Parantha, Nan', '1 butter roti (price per piece)', NULL, NULL, 'img/veeran_da_dhabha/91.jpg'),
(75, 'simple roti', '7', '2', NULL, NULL, 2, NULL, 'Food, Tandoori Item,Roti,Vegetarian,Parantha, Nan', '1 simple roti (Price Per Piece)', NULL, NULL, 'img/veeran_da_dhabha/93.jpg'),
(76, 'mix parantha', '35', '2', NULL, NULL, 2, NULL, 'Food, Tandoori Item,Roti,Vegetarian,Parantha, Nan', '1 mix parantha (price per piece)', NULL, NULL, 'img/veeran_da_dhabha/95.jpg'),
(77, 'banana shake ', '40', '2', NULL, NULL, 2, NULL, ' Drinks,Shakes,Vegetarrian', '1 Full glass of banana shake .', NULL, NULL, 'img/veeran_da_dhabha/97.jpg'),
(78, 'hot coffee', '30', '2', NULL, NULL, 2, NULL, ' Drinks,Shakes,Vegetarrian', '1 Cup of hot coffee .', NULL, NULL, 'img/veeran_da_dhabha/99.jpg'),
(79, 'cold cofee', '40', '2', NULL, NULL, 2, NULL, ' Drinks,Shakes,Vegetarrian', '1 Cup of cold coffee .', NULL, NULL, 'img/veeran_da_dhabha/101.jpg'),
(80, 'milk tea', '20', '2', NULL, NULL, 2, NULL, ' Drinks,Shakes,Vegetarrian', '1 Cup of milk tea .', NULL, NULL, 'img/veeran_da_dhabha/103.jpg'),
(81, 'simple tea', '15', '2', NULL, NULL, 2, NULL, ' Drinks,Shakes,Vegetarrian', '1 Cup of simple tea .', NULL, NULL, 'img/veeran_da_dhabha/105.jpg'),
(191, 'Choclates Rovan', '390', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per 25 Piece', NULL, NULL, 'img/bakery/IMG_20180320_194143.jpg'),
(189, 'Choclates Rovan', '140', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per 8 Piece', NULL, NULL, 'img/bakery/IMG_20180320_194114.jpg'),
(190, 'Choclates Rovan', '190', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price Per 12 Piece', NULL, NULL, 'img/bakery/IMG_20180320_194130.jpg'),
(187, 'Chesse Kulcha', '35', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price Per Piece', NULL, NULL, 'img/bakery/IMG_20180320_194002.jpg'),
(188, 'Choclates Rovan', '55', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price Per 3 Piece', NULL, NULL, 'img/bakery/IMG_20180320_194103.jpg'),
(186, 'Hot Dog', '35', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price Per Piece', NULL, NULL, 'img/bakery/IMG_20180320_193930.jpg'),
(185, 'Chesse Sandwitch', '30', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price Per Piece', NULL, NULL, 'img/bakery/IMG_20180320_193845.jpg'),
(184, 'French Veg Slice', '35', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price Per Piece', NULL, NULL, 'img/bakery/IMG_20180320_193815.jpg'),
(182, 'Redvelvet Mini Cake', '200', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per 250gm', NULL, NULL, 'img/bakery/IMG_20180320_193543.jpg'),
(183, 'Veg Pizza', '60', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price Per Piece', NULL, NULL, 'img/bakery/IMG_20180320_193751.jpg'),
(181, 'Redvelvet Cake', '630', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per kg', NULL, NULL, 'img/bakery/IMG_20180320_193543.jpg'),
(180, 'BlackForest Cake', '270', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price Per 1/2 kg', NULL, NULL, 'img/bakery/IMG_20180320_193530.jpg'),
(178, 'Black Forest Cake', '520', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per kg', NULL, NULL, 'img/bakery/IMG_20180320_193338.jpg'),
(179, 'Pineapple Cake', '240', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price Per 1/2 kg', NULL, NULL, 'img/bakery/IMG_20180320_193524.jpg'),
(177, 'Mix Fruit Cake', '580', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per kg', NULL, NULL, 'img/bakery/IMG_20180320_193328.jpg'),
(176, 'Choclate Cake', '580', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per kg', NULL, NULL, 'img/bakery/IMG_20180320_192717.jpg'),
(175, 'Butterscotch Cake', '580', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per kg', NULL, NULL, 'img/bakery/IMG_20180320_192633.jpg'),
(174, 'Pineapple Cake', '480', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per kg', NULL, NULL, 'img/bakery/IMG_20180320_192505.jpg'),
(173, 'Veg Choco Lava Cake', '35', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_195321.jpg'),
(172, 'Choclate Pudding', '40', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_195246.jpg'),
(170, 'Black Forest Pastry', '25', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_195227.jpg'),
(171, 'Jam Roll', '20', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_195238.jpg'),
(169, 'Redvelvet Pastry', '25', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_195218.jpg'),
(168, 'Butterscotch Pastry', '25', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_195101.jpg'),
(167, 'Butter Pastry', '25', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_195101.jpg'),
(166, 'White Choclate Pastry', '40', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_195156.jpg'),
(164, 'Mongo Pastry', '25', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_195049.jpg'),
(165, 'Brownie Choco Sauce', '25', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_195139.jpg'),
(163, 'Veg Donut', '35', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_195033.jpg'),
(162, 'Truffle Pastry', '30', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_195023.jpg'),
(161, 'Plain Choclate', '20', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_195007.jpg'),
(160, 'Pineapple Pastry', '20', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_194958.jpg'),
(159, 'Flower Candle', '70', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_194809.jpg'),
(158, 'Candle', '25', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price per Piece', NULL, NULL, 'img/bakery/IMG_20180320_194537.jpg'),
(192, 'Choclate Toffee', '100', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price Per Piece', NULL, NULL, 'img/bakery/IMG_20180320_194337.jpg'),
(193, 'Pears Choclate', '100', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price Per Piece', NULL, NULL, 'img/bakery/IMG_20180320_194400.jpg'),
(194, 'Mushroom Patty', '15', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price Per Piece', NULL, NULL, 'img/bakery/IMG_20180320_194027.jpg'),
(195, 'Aloo Patty', '15', '1', NULL, NULL, 1, NULL, 'Bakery, Cake, Pastry, Pudding, Donut', 'Price Per Piece', NULL, NULL, 'img/bakery/IMG_20180320_194027.jpg'),
(196, 'PANEER  PARANTHA', '50/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 Large Paneer Parantha (Price Per Piece)', NULL, NULL, 'img/indar_dhabha/3.jpg'),
(197, 'GOBHI PARANTHA', '40/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 Large Paneer Parantha (Price Per Piece)', NULL, NULL, 'img/indar_dhabha/5.jpg'),
(198, 'ONION  PARANTHA', '40/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 large onion parantha(price per pice)', NULL, NULL, 'img/indar_dhabha/7.jpg'),
(199, 'PLAIN  PARANTHA', '25/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 large plain parantha(price per pice)', NULL, NULL, 'img/indar_dhabha/9.jpg'),
(200, 'EXTRA BUTTER', '10/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 butter (price per pice)', NULL, NULL, 'img/indar_dhabha/11.jpg'),
(201, 'DAHI(HALF/FULL)', '30/-  50/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 half/full plate (price per plate)', NULL, NULL, 'img/indar_dhabha/13.jpg'),
(202, 'VEG. PULAO', '100/-', '2', NULL, NULL, 4, NULL, 'Food, Rice, Vegetarian Dish, veg biryani', '1 full plate of veg pulao(price per plate)', NULL, NULL, 'img/indar_dhabha/15.jpg'),
(203, 'PEAS PULAO', '100/-', '2', NULL, NULL, 4, NULL, 'Food, Rice, Vegetarian Dish, veg biryani', '1 full plate of peas pulao(price per plate)', NULL, NULL, 'img/indar_dhabha/17.jpg'),
(204, 'JEERA RICE', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Rice, Vegetarian Dish, veg biryani', '1 full plate of jeera rice (price per plate)', NULL, NULL, 'img/indar_dhabha/19.jpg'),
(205, 'PLAIN RICE', '60/-', '2', NULL, NULL, 4, NULL, 'Food, Rice, Vegetarian Dish, veg biryani', '1 full plate of plain rice(price per plate)', NULL, NULL, 'img/indar_dhabha/21.jpg'),
(206, 'VEG. BIRYANI', ' ', '2', NULL, NULL, 4, NULL, 'Food, Rice, Vegetarian Dish, veg biryani', '1 full plate of veg biryani(price per plate)', NULL, NULL, 'img/indar_dhabha/23.jpg'),
(207, 'DAL FRY', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of  dal fry (price per plate)', NULL, NULL, 'img/indar_dhabha/25.jpg'),
(208, 'DAL MAKHNI', '100/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of dal makhni (price per plate)', NULL, NULL, 'img/indar_dhabha/27.jpg'),
(209, 'DAL TADKA (YELLOW DAL)', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of dal tadka (price per plate)', NULL, NULL, 'img/indar_dhabha/29.jpg'),
(210, 'DAL FRY (YELLOW DAL)', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of  dal fry (price per plate)', NULL, NULL, 'img/indar_dhabha/31.jpg'),
(211, 'RAJMAH  MAKHNI', '100/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of rajmah makhni (price per plate)', NULL, NULL, 'img/indar_dhabha/33.jpg'),
(212, 'KARHI PAKORA', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of karhi pakora (price per plate)', NULL, NULL, 'img/indar_dhabha/35.jpg'),
(213, 'CHANA MASALA', '100/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of  chana masala (price per plate)', NULL, NULL, 'img/indar_dhabha/37.jpg'),
(214, 'WHITE CHANA GRAVY', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of white chana gravy (price per plate)', NULL, NULL, 'img/indar_dhabha/39.jpg'),
(215, 'BLACK CHANA GRAVY', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of black chana gravy (price per plate)', NULL, NULL, 'img/indar_dhabha/41.jpg'),
(216, 'SHAHI PANEER', '150/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of shahi paneer', NULL, NULL, 'img/indar_dhabha/43.jpg'),
(217, 'KARAHI PANEER', '160/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of karahi paneer', NULL, NULL, 'img/indar_dhabha/45.jpg'),
(218, 'MUTTER PANEER', '120/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of mutter paneer', NULL, NULL, 'img/indar_dhabha/47.jpg'),
(219, 'PANEER BHURJI', '170/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', ' 1full plate of paneer bhurji', NULL, NULL, 'img/indar_dhabha/49.jpg'),
(220, 'PANEER BUTTER MASALA', '170/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of  paneer butter masala', NULL, NULL, 'img/indar_dhabha/51.jpg'),
(221, 'CHEES TOMATO', '150/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of chees tomato', NULL, NULL, 'img/indar_dhabha/53.jpg'),
(222, 'CHEES CHILLI', '170/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of chees chili', NULL, NULL, 'img/indar_dhabha/55.jpg'),
(223, 'MALAI KOFTA', '150/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of malai kofta', NULL, NULL, 'img/indar_dhabha/57.jpg'),
(224, 'PANEER DO PYAZA', '150/-', '2', NULL, NULL, 4, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate of  paneer do pyaza', NULL, NULL, 'img/indar_dhabha/59.jpg'),
(225, 'TANDOORI ROTI', '7/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'plan tandoori roti(price per pice)', NULL, NULL, 'img/indar_dhabha/61.jpg'),
(226, 'BUTTER ROTI', '10/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'taja butter roti (price per pice)', NULL, NULL, 'img/indar_dhabha/63.jpg'),
(227, 'MISI ROTI', '15/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'taja misi roti (price per pice)', NULL, NULL, 'img/indar_dhabha/65.jpg'),
(228, 'PLAIN NAAN', '15/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'taja plain naan (price per pice)', NULL, NULL, 'img/indar_dhabha/67.jpg'),
(229, 'BUTTER NAAN', '25/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'taja butter naan (price per pice)', NULL, NULL, 'img/indar_dhabha/69.jpg'),
(230, 'GARLIC NAAN', '50/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'taja garlic naan (price per pice)', NULL, NULL, 'img/indar_dhabha/71.jpg'),
(231, 'LACHA PARANTHA', '20/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'taja lacha parantha  (price per pice)', NULL, NULL, 'img/indar_dhabha/73.jpg'),
(232, 'BHINDI MASALA', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate bhindi masala(price per plate)', NULL, NULL, 'img/indar_dhabha/75.jpg'),
(233, 'GOBHI ALOO', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate gobhi aloo(price per plate)', NULL, NULL, 'img/indar_dhabha/77.jpg'),
(234, 'MIX VEG.', '100/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate mix veg (price per plate)', NULL, NULL, 'img/indar_dhabha/79.jpg'),
(235, 'BHARTHA SPL.', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate bhartha spl (price per plate)', NULL, NULL, 'img/indar_dhabha/81.jpg'),
(236, 'GAJAR MUTTER', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate gajar mutter(price per plate)', NULL, NULL, 'img/indar_dhabha/83.jpg'),
(237, 'ALOO MUTTER', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate aloo mutter(price per plate)', NULL, NULL, 'img/indar_dhabha/85.jpg'),
(238, 'DUM ALOO', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate dum aloo(price per plate)', NULL, NULL, 'img/indar_dhabha/87.jpg'),
(239, 'MUSHROOM DO PYAZA', '120/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate mushroom do pyaza(price per plate)', NULL, NULL, 'img/indar_dhabha/89.jpg'),
(240, 'MUSHROOM MUTTER', '120/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate mushroom mutter(price per plate)', NULL, NULL, 'img/indar_dhabha/91.jpg'),
(241, 'MUSHROOM MASALA', '120/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate mushroom  masala(price per plate)', NULL, NULL, 'img/indar_dhabha/93.jpg'),
(242, 'MUSHROOM CHILLI', '150/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate mushroom chilli(price per plate)', NULL, NULL, 'img/indar_dhabha/95.jpg'),
(243, 'PALAK PANEER', '120/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate palak paneer(price per plate)', NULL, NULL, 'img/indar_dhabha/97.jpg'),
(244, 'PALAK KOFTA', '150/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate palak kofta(price per plate)', NULL, NULL, 'img/indar_dhabha/99.jpg'),
(245, 'JEERA ALOO', '80/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate jeera aloo(price per plate)', NULL, NULL, 'img/indar_dhabha/101.jpg'),
(246, 'GREEN SALAD', '40/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate green salad(price per plate)', NULL, NULL, 'img/indar_dhabha/105.jpg'),
(247, 'SIMPLE SALAD', '10/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate simple salad(price per plate)', NULL, NULL, 'img/indar_dhabha/107.jpg'),
(248, 'ROASTED PAPAD', '10/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate roasted papad(price per plate)', NULL, NULL, 'img/indar_dhabha/109.jpg'),
(249, 'FRY PAPAD', '15/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate fry papad(price per plate)', NULL, NULL, 'img/indar_dhabha/111.jpg'),
(250, 'MASALA PAPAD', '40/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate masala papad(price per plate)', NULL, NULL, 'img/indar_dhabha/113.jpg'),
(251, 'FINGER CHIPS', '50/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate finger chips(price per plate)', NULL, NULL, 'img/indar_dhabha/115.jpg'),
(252, 'PLAIN DAHI(FULL)', '50/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate plain dahi (price per plate)', NULL, NULL, 'img/indar_dhabha/119.jpg'),
(253, 'PLAIN DAHI(HALF)', '30/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate plain dahi(price per plate)', NULL, NULL, 'img/indar_dhabha/121.jpg'),
(254, 'MIX RAITA', '60/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate mix raita(price per plate)', NULL, NULL, 'img/indar_dhabha/123.jpg'),
(255, 'BOONDI RAITA', '60/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate boondi raita(price per plate)', NULL, NULL, 'img/indar_dhabha/125.jpg'),
(256, 'MANGO MILK SHAKES', '', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 full glass mango shakes(price per plate)', NULL, NULL, 'img/indar_dhabha/129.jpg'),
(257, 'BANANA MILK SHAKE', '', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 full glass banana shake(price per glass)', NULL, NULL, 'img/indar_dhabha/131.jpg'),
(258, 'COLD COFFEE WITH ICE CREAM', '', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 cold coffee with ic cream(price per coffee)', NULL, NULL, 'img/indar_dhabha/133.jpg'),
(259, 'REAL JUICE', 'MRP', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 full real juice(price per juice)', NULL, NULL, 'img/indar_dhabha/137.jpg'),
(260, 'TROPICANA JUICE', 'MRP', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 full tropicana juice (price per juice)', NULL, NULL, 'img/indar_dhabha/139.jpg'),
(261, 'PINEAPPLE JUICE', '', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 full pineapple juice (price per juice)', NULL, NULL, 'img/indar_dhabha/141.jpg'),
(262, 'MIX FRUIT JUICE', '', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 full mix fruit juice (price per juice)', NULL, NULL, 'img/indar_dhabha/143.jpg'),
(263, 'GUAVA JUICE APPY', '', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 full guava juive appy(price per appy)', NULL, NULL, 'img/indar_dhabha/145.jpg'),
(264, 'FRESH LIME SODA', '', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 fresh lime soda (price per soda)', NULL, NULL, 'img/indar_dhabha/147.jpg'),
(265, 'SWEET LASSI', '40/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 full glass sweet lassi(price per glass)', NULL, NULL, 'img/indar_dhabha/149.jpg'),
(266, 'JEERA LASSI', '40/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 full glass jeera lasi(price per glass)', NULL, NULL, 'img/indar_dhabha/151.jpg'),
(267, 'COCA-COLA', 'MRP', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 coca-cola (price per liter)', NULL, NULL, 'img/indar_dhabha/155.jpg'),
(268, 'MINUTE MAID JUICE', 'MRP', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 full minute maid juice (price per glass)', NULL, NULL, 'img/indar_dhabha/157.jpg'),
(269, 'KINLEY WATER', 'MRP', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', '1 full bottle (price per liter)', NULL, NULL, 'img/indar_dhabha/159.jpg'),
(270, 'KHEER', '30/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate kheer (price per plate)', NULL, NULL, 'img/indar_dhabha/163.jpg'),
(271, 'GULAB JAMUN', '', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate gulab jamun(price per plate)', NULL, NULL, 'img/indar_dhabha/165.jpg'),
(272, 'VANILLA', '', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate vanila(price per plate)', NULL, NULL, 'img/indar_dhabha/169.jpg'),
(273, 'BUTTER SCOTCH', '', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate butter scotch(price per plate)', NULL, NULL, 'img/indar_dhabha/171.jpg'),
(274, 'CHOCOLATE', '', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate chocolate(price per plate)', NULL, NULL, 'img/indar_dhabha/173.jpg'),
(275, 'MANGO', '', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate mango(price per plate)', NULL, NULL, 'img/indar_dhabha/175.jpg'),
(276, 'THALI+ 300ml COKE', '170/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full thali (price per plate & coke)', NULL, NULL, 'img/indar_dhabha/177.jpg'),
(277, 'CHEESE CHILLI + 300ml COKE', '190/-', '2', NULL, NULL, 4, NULL, 'Food, Tandoori Item,Roti, Chappati,Vegetarian,Parantha, Nan', 'full plate cheese chilli(price per plate& coke)', NULL, NULL, 'img/indar_dhabha/179.jpg'),
(496, 'Spicy Mushroom Foot Long', '70', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 spicy mushroom foot long', NULL, NULL, 'img/zigzag/31.jpg'),
(495, 'Paneer Foot Long ', '70', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 paneer foot long', NULL, NULL, 'img/zigzag/29.jpg'),
(494, 'Veg Foot Long ', '60', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 veg foot long', NULL, NULL, 'img/zigzag/27.jpg'),
(493, 'French Fries', '50', '2', NULL, NULL, 11, NULL, '', '1 french fries', NULL, NULL, 'img/zigzag/25.jpg'),
(492, 'Combo(1 Burger,Coke With French Fries', '80', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 combo burger coke with french fries', NULL, NULL, 'img/zigzag/23.jpg'),
(491, 'Zig Zag SpecialBurger', '75', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 zig zag specialburger', NULL, NULL, 'img/zigzag/21.jpg'),
(490, 'Maha Special Burger', '70', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 maha special burger', NULL, NULL, 'img/zigzag/19.jpg'),
(489, 'Burger Pizza', '60', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 burger pizza', NULL, NULL, 'img/zigzag/17.jpg'),
(488, 'Italian Burger', '60', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 italian burger', NULL, NULL, 'img/zigzag/15.jpg'),
(487, 'Jumbo Burger', '50', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 jumbo burger', NULL, NULL, 'img/zigzag/13.jpg'),
(486, 'Cheese Tikki Burger', '45', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 cheese tikki burger', NULL, NULL, 'img/zigzag/11.jpg'),
(485, 'Cheese Cream Burger', '40', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 cheese cream burger', NULL, NULL, 'img/zigzag/9.jpg'),
(484, 'Spicy Yummy Burger', '35', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 spicy yummy burger ', NULL, NULL, 'img/zigzag/7.jpg'),
(483, 'Mix Veg Burger', '35', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 mix veg burger', NULL, NULL, 'img/zigzag/5.jpg'),
(482, 'Noodles Burger', '30', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 noodles burger', NULL, NULL, 'img/zigzag/3.jpg'),
(481, 'Aloo Tikki Burger', '25', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 pice of aloo tikki burger', NULL, NULL, 'img/zigzag/1.jpg'),
(312, 'Dhoda Maithy', '300', '8', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'img/2121.jpg'),
(313, 'Khoya Barfi', '270', '8', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'img/2121.jpg'),
(314, 'Bikaneri Barfi', '290', '8', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'img/2121.jpg'),
(315, 'Rasgulla', '140', '8', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'img/2121.jpg'),
(316, 'Gulab Jamun', '140', '8', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'img/2121.jpg'),
(317, 'Milk Cake', '260', '8', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'img/2121.jpg'),
(318, 'Moti Choor Laddu', '120', '8', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'img/2121.jpg'),
(319, 'Soan Papdi', '120', '8', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'img/2121.jpg'),
(320, 'Besan Barfi', '120', '8', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'img/2121.jpg'),
(321, 'Green Pot', '1100', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_163433392.jpg'),
(322, 'Flower Stand', '2800', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_163639343_DEPTH.jpg'),
(323, 'Lady Pot', '1210', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_164044718.jpg'),
(324, 'Elephant', '2100', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_164247676.jpg'),
(325, 'Baby Elephant', '2000', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_164402140.jpg'),
(326, 'Lady Pot', '1450', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_164518675.jpg'),
(327, 'Parrot', '670', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_164600792.jpg'),
(328, 'Antique Pot', '1400', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_164649854.jpg'),
(329, 'Wood toy', '250', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_164839201.jpg'),
(330, 'Rabbit Toy', '250', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_164940199.jpg'),
(331, 'Elephant', '250', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_165022824.jpg'),
(332, 'Lamp', '4150', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_165120422.jpg'),
(333, 'Flower Pot', '290', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_165321003.jpg'),
(334, 'Big Pot', '280', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_165539906.jpg'),
(335, 'Boat Poat', '290', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_165707681.jpg'),
(336, 'Pot Stnd', '360-300', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_165832601.jpg'),
(337, 'Small Tree', '120', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_170143716.jpg'),
(338, 'G shock', '680', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_170502022.jpg'),
(339, 'Watch', '350', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_170518167.jpg'),
(340, 'Cerral', '800', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_170653895.jpg'),
(341, 'Tissot', '800', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_170659328.jpg'),
(342, 'Longines', '800', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_170705032.jpg'),
(343, 'Stylus', '450', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_170859308.jpg'),
(344, 'Black Watch', '550', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_171026388.jpg'),
(345, 'Piar Watch', '1700-850', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_171148225.jpg'),
(346, 'Square pot', '120', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_171411890.jpg'),
(347, 'Circular pot', '160', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_171454064.jpg'),
(348, 'Red Pot', '220', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_171513300.jpg'),
(349, 'Roader Pot', '280', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_171557686.jpg'),
(350, 'watch', '320', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_171945966.jpg'),
(351, 'Blue Pot', '220', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_171706611.jpg'),
(352, 'Round Pot', '370', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_171726196.jpg'),
(353, 'Cycle', '500', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_171752007.jpg'),
(354, 'Black Water', '320', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_171823802.jpg'),
(355, 'Handing Dolls(4 pc)', '670', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_172343970.jpg'),
(356, 'White Girls(1 pc)', '150', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_172356988.jpg'),
(357, 'Ninja', '390', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_172340963.jpg'),
(358, 'Chinees Chong', '250', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_172409621.jpg'),
(359, 'Kiss Kiss(2 pc)', '500', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_172502794.jpg'),
(360, 'Rabbit Toy(2 pc)', '720', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_172530738.jpg'),
(361, 'Old person(2 pc)', '430', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_172536036.jpg'),
(362, 'Love People(2 pc)', '300', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_172553300.jpg'),
(363, 'Old person', '460', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_172558654.jpg'),
(364, 'fam Piece', '900', '4', NULL, NULL, 8, NULL, NULL, 'gifts,toys,cards', NULL, NULL, 'img/gift/IMG_20180319_173020655.jpg'),
(365, 'Veg Manchurian', '100/60', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full /half plate veg Manchurian', NULL, NULL, 'img/grill/3.jpg'),
(366, 'Veg Nooodles', '80/50', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full/Half plate veg noodles', NULL, NULL, 'img/grill/5.jpg'),
(367, 'Egg  Noodles', '100/60', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full /half plata Egg noodles', NULL, NULL, 'img/grill/7.jpg'),
(368, 'Hakka Noodles', '120/70', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full/Half plate Hakka noodles', NULL, NULL, 'img/grill/9.jpg'),
(369, 'Chiken Noodles', '150/80', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full /half plate  Chiken Noodles', NULL, NULL, 'img/grill/11.jpg'),
(370, 'Burger', '30', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full/Half plate Burger', NULL, NULL, 'img/grill/13.jpg'),
(371, 'Noodles Burgar', '35', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full /half plate noodles Burger', NULL, NULL, 'img/grill/15.jpg'),
(372, 'Cheese Slice Burger', '35', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full/Half plate Cheese Scile Burger', NULL, NULL, 'img/grill/17.jpg'),
(373, 'Grill Thrill Burger', '50', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full /half plate Grill thrill Burger', NULL, NULL, 'img/grill/19.jpg'),
(374, 'French Fry', '60', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1  Full/Half plate Fernch Fry', NULL, NULL, 'img/grill/21.jpg'),
(375, 'Cheeese Finger', '120', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full /half plate Cheese Finger', NULL, NULL, 'img/grill/23.jpg'),
(376, 'Spring Roll(Noodles)', '60', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full/Half plate Spring roll', NULL, NULL, 'img/grill/25.jpg'),
(377, 'Spring Roll(Vegetables)', '70', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full /half plate Spring roll', NULL, NULL, 'img/grill/27.jpg'),
(378, 'Pasta in White Sauce', '120', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full/Half plate pasta in white', NULL, NULL, 'img/grill/29.jpg'),
(379, 'Pasta in Red Sauce', '100', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full /half plate Pasta in read sauce', NULL, NULL, 'img/grill/31.jpg'),
(380, 'Veg Momos(Steam)', '60/35', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full/Half plate Veg Momos', NULL, NULL, 'img/grill/33.jpg'),
(381, 'Veg Momos(fried)', '70/40', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full /half plate Veg Momos', NULL, NULL, 'img/grill/35.jpg'),
(382, 'Cheese Momos(Steam)', '80/45', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full/Half plate Cheese Momos ', NULL, NULL, 'img/grill/37.jpg'),
(383, 'Cheese Momos(Fried)', '80/45', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full /half plate cheese Momos ', NULL, NULL, 'img/grill/39.jpg'),
(384, 'Chicken Burger', '50', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 Full/Half plate chicken Burger', NULL, NULL, 'img/grill/41.jpg'),
(385, 'Chilly Chicken', '300/160', '2', NULL, NULL, 9, NULL, 'Food ,Non-Vegetarian specil dish.', '1 Full /Half plate chilly  chicken', NULL, NULL, 'img/grill/43.jpg'),
(386, 'Butter Chicken', '350/180', '2', NULL, NULL, 9, NULL, 'Food ,Non-Vegetarian specil dish.', '1 Full /Half plate butter  chicken', NULL, NULL, 'img/grill/45.jpg'),
(387, 'Kadahi Chicken', '350/180', '2', NULL, NULL, 9, NULL, 'Food ,Non-Vegetarian specil dish.', '1 Full/Half plate Kadahi chicken ', NULL, NULL, 'img/grill/47.jpg'),
(388, 'Fry Chicken', '260/140', '2', NULL, NULL, 9, NULL, 'Food ,Non-Vegetarian specil dish.', '1 Full/half plate Fry chicken', NULL, NULL, 'img/grill/49.jpg'),
(389, 'Chiken Curry', '90', '2', NULL, NULL, 9, NULL, 'Food ,Non-Vegetarian specil dish.', '1 full  plate chiken curry', NULL, NULL, 'img/grill/51.jpg'),
(390, 'Fish Fry', '250', '2', NULL, NULL, 9, NULL, 'Food ,Non-Vegetarian specil dish.', '1 full plate fish fry', NULL, NULL, 'img/grill/53.jpg'),
(391, 'Tawa Chicken', '250/130', '2', NULL, NULL, 9, NULL, 'Food ,Non-Vegetarian specil dish.', '1 full /half  plate tawa chicken', NULL, NULL, 'img/grill/55.jpg'),
(392, 'Garlic Chicken', '330/170', '2', NULL, NULL, 9, NULL, 'Food ,Non-Vegetarian specil dish.', '1 full /half plate garlic chicken ', NULL, NULL, 'img/grill/57.jpg'),
(393, 'Lemon Chicken', '330/170', '2', NULL, NULL, 9, NULL, 'Food ,Non-Vegetarian specil dish.', '1 full/half plate lemon chicken', NULL, NULL, 'img/grill/59.jpg'),
(394, 'Omlete(2Egg)', '30', '2', NULL, NULL, 9, NULL, 'Food ,Non-Vegetarian specil dish.', '1 full plate omlete', NULL, NULL, 'img/grill/61.jpg'),
(395, 'Egg Bhurji(2Egg)', '35', '2', NULL, NULL, 9, NULL, 'Food ,Non-Vegetarian specil dish.', '1 pice egg burgi', NULL, NULL, 'img/grill/63.jpg'),
(396, 'Egg Maagie', '40', '2', NULL, NULL, 9, NULL, 'Food ,Non-Vegetarian specil dish.', '1 full plate egg maagie', NULL, NULL, 'img/grill/65.jpg'),
(397, 'Non VEG Thali', '100', '2', NULL, NULL, 9, NULL, 'Food ,Non-Vegetarian specil dish.', '1 full plate non veg thali', NULL, NULL, 'img/grill/67.jpg'),
(398, 'Chicken Biryani', '200/120', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 full/half plate chiken biryani', NULL, NULL, 'img/grill/69.jpg'),
(399, 'Veg Biryani', '130/70', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 full/half plate veg biryani', NULL, NULL, 'img/grill/71.jpg'),
(400, 'Cheese Pulao', '150/80', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 full/half plate cheese pulao', NULL, NULL, 'img/grill/73.jpg'),
(401, 'Plain Rice', '100/60', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 full/half plate plain rice', NULL, NULL, 'img/grill/75.jpg'),
(402, 'Chicken Fried Rice', '200/100', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 full/half plate chicken fried rice ', NULL, NULL, 'img/grill/77.jpg'),
(403, 'Veg Fried Rice', '150/80', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 full /half plateveg fried rice', NULL, NULL, 'img/grill/79.jpg');
INSERT INTO `product` (`p_id`, `p_name`, `p_price`, `cat_id`, `p_subcat`, `p_review`, `p_seller_id`, `p_discount`, `p_keywords`, `p_description`, `p_specificatons`, `p_quantity`, `prod_pic`) VALUES
(404, 'Veg Kathi Roll', '50', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 pice veg kathi roll', NULL, NULL, 'img/grill/81.jpg'),
(405, 'Chicken Kathi Roll', '60', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 pice chicken kathi roll', NULL, NULL, 'img/grill/83.jpg'),
(406, 'Chinse Kathi Roll', '60', '2', NULL, NULL, 9, NULL, 'Food,vegetarian dish,Non-Veg dish', '1 pice chinse kathi roll', NULL, NULL, 'img/grill/85.jpg'),
(407, 'Strawberry Shake', '50', '2', NULL, NULL, 9, NULL, 'Fruits shake ,stawberry ,chocolate shake.', '1 glass strawberry shake ', NULL, NULL, 'img/grill/87.jpg'),
(408, 'Chocolate Shake ', '50', '2', NULL, NULL, 9, NULL, 'Fruits shake ,stawberry ,chocolate shake.', '1 glass chocolate shake', NULL, NULL, 'img/grill/89.jpg'),
(409, 'Banana Shake', '50', '2', NULL, NULL, 9, NULL, 'Fruits shake ,stawberry ,chocolate shake.', '1 glass Banana Shake', NULL, NULL, 'img/grill/91.jpg'),
(410, 'Vanilla Shake', '50', '2', NULL, NULL, 9, NULL, 'Fruits shake ,stawberry ,chocolate shake.', '1 glass  vanilla shake ', NULL, NULL, 'img/grill/93.jpg'),
(411, 'Mango Shake', '50', '2', NULL, NULL, 9, NULL, 'Fruits shake ,stawberry ,chocolate shake.', '1 glass  mango shake ', NULL, NULL, 'img/grill/95.jpg'),
(412, 'Butter Scotch Shake', '50', '2', NULL, NULL, 9, NULL, 'Fruits shake ,stawberry ,chocolate shake.', '1 glass  butter scotch shake', NULL, NULL, 'img/grill/97.jpg'),
(413, 'Plain Prantha', '20', '2', NULL, NULL, 9, NULL, 'Food ,Vegetarian special dish, prantha', '1 pice plain prantha', NULL, NULL, 'img/grill/99.jpg'),
(414, 'Aaloo Prantha', '25', '2', NULL, NULL, 9, NULL, 'Food ,Vegetarian special dish, prantha', '1 pice aaloo prantha ', NULL, NULL, 'img/grill/101.jpg'),
(415, 'Aaloo Piag Prantha', '30', '2', NULL, NULL, 9, NULL, 'Food ,Vegetarian special dish, prantha', '1 pice aaloo piag prantha', NULL, NULL, 'img/grill/103.jpg'),
(416, 'Gobi Prantha', '30', '2', NULL, NULL, 9, NULL, 'Food ,Vegetarian special dish, prantha', '1 pice gobi  prantha ', NULL, NULL, 'img/grill/105.jpg'),
(417, 'Mooli Prantha', '30', '2', NULL, NULL, 9, NULL, 'Food ,Vegetarian special dish, prantha', '1  pice mooli prantha', NULL, NULL, 'img/grill/107.jpg'),
(418, 'Mix Prantha', '35', '2', NULL, NULL, 9, NULL, 'Food ,Vegetarian special dish, prantha', '1 pice mix  prantha ', NULL, NULL, 'img/grill/109.jpg'),
(419, 'Paneer Prantha', '40', '2', NULL, NULL, 9, NULL, 'Food ,Vegetarian special dish, prantha', '1 pice paneer prantha', NULL, NULL, 'img/grill/111.jpg'),
(420, 'Piag Prantha', '35', '2', NULL, NULL, 9, NULL, 'Food ,Vegetarian special dish, prantha', '1 pice piag prantha', NULL, NULL, 'img/grill/113.jpg'),
(421, 'Plain Roti ', '5', '2', NULL, NULL, 9, NULL, 'Food ,Tandoori roti  ,kulcha', '1 pice plain roti', NULL, NULL, 'img/grill/115.jpg'),
(422, 'Tawa Roti', '6', '2', NULL, NULL, 9, NULL, 'Food ,Tandoori roti  ,kulcha', '1 pice tawa roti', NULL, NULL, 'img/grill/117.jpg'),
(423, 'Butter Roti', '8', '2', NULL, NULL, 9, NULL, 'Food ,Tandoori roti  ,kulcha', '1 pice butter roti', NULL, NULL, 'img/grill/119.jpg'),
(424, 'Missi Roti', '20', '2', NULL, NULL, 9, NULL, 'Food ,Tandoori roti  ,kulcha', '1 pice missi roti', NULL, NULL, 'img/grill/121.jpg'),
(425, 'Lachha Prantha', '20', '2', NULL, NULL, 9, NULL, 'Food ,Tandoori roti  ,kulcha', '1 pice lachha prantha', NULL, NULL, 'img/grill/123.jpg'),
(426, 'Plain Naan', '20', '2', NULL, NULL, 9, NULL, 'Food ,Tandoori roti  ,kulcha', '1 pice plain naan', NULL, NULL, 'img/grill/125.jpg'),
(427, 'Butter Naan ', '25', '2', NULL, NULL, 9, NULL, 'Food ,Tandoori roti  ,kulcha', '1 pice butter naan', NULL, NULL, 'img/grill/127.jpg'),
(428, 'Onion Kulcha(with dahi)', '40', '2', NULL, NULL, 9, NULL, 'Food ,Tandoori roti  ,kulcha', '1 pice onion kulcha with dahi', NULL, NULL, 'img/grill/129.jpg'),
(429, 'Paneer Kulcha(with dahi)', '40', '2', NULL, NULL, 9, NULL, 'Food ,Tandoori roti  ,kulcha', '1 pice paneer kulcha with dahi', NULL, NULL, 'img/grill/131.jpg'),
(430, 'Veg Stuff Naan(with dahi)', '40', '2', NULL, NULL, 9, NULL, 'Food ,Tandoori roti  ,kulcha', '1 pice veg stuff naan with dahi', NULL, NULL, 'img/grill/133.jpg'),
(431, 'Aaloo Kulcha(with dahi)', '35', '2', NULL, NULL, 9, NULL, 'Food ,Tandoori roti  ,kulcha', '1 pice aaloo kulcha with dahi', NULL, NULL, 'img/grill/135.jpg'),
(432, 'Onion Mushroom Capsicum Pizza', '120/210/260', '2', NULL, NULL, 9, NULL, ' veg, Non-veg  special pizza', '1 pice onion mushroom capsicum pizza', NULL, NULL, 'img/grill/137.jpg'),
(433, 'Mix Veg Pizza', '120/170/220', '2', NULL, NULL, 9, NULL, ' veg, Non-veg  special pizza', '1 pice mix veg pizza', NULL, NULL, 'img/grill/139.jpg'),
(434, 'Chilly Paneer Pizza', '130/210/260', '2', NULL, NULL, 9, NULL, ' veg, Non-veg  special pizza', '1 pice chilly paneer pizza', NULL, NULL, 'img/grill/141.jpg'),
(435, 'Spicy Mushroom Pizza', '130/210/260', '2', NULL, NULL, 9, NULL, ' veg, Non-veg  special pizza', '1 pice spicy mushroom pizza', NULL, NULL, 'img/grill/143.jpg'),
(436, 'Double Cheese Pizza', '140/210/260', '2', NULL, NULL, 9, NULL, ' veg, Non-veg  special pizza', '1 pice double ceese pizza', NULL, NULL, 'img/grill/145.jpg'),
(437, 'Mashroom Paneer Mix Pizza', '140/240/290', '2', NULL, NULL, 9, NULL, ' veg, Non-veg  special pizza', '1 pice mashroom paneer mix pizza', NULL, NULL, 'img/grill/147.jpg'),
(438, 'Grill Thrill Pizza', '140/320/440', '2', NULL, NULL, 9, NULL, ' veg, Non-veg  special pizza', '1 pice grill thrill pizza', NULL, NULL, 'img/grill/149.jpg'),
(439, 'Cheese Burnt Pizza', '170/320/440', '2', NULL, NULL, 9, NULL, ' veg, Non-veg  special pizza', '1 pice cheese burnt pizza', NULL, NULL, 'img/grill/151.jpg'),
(440, 'Chicken Pizza', '140/210/260', '2', NULL, NULL, 9, NULL, ' veg, Non-veg  special pizza', '1 pice chicken pizza', NULL, NULL, 'img/grill/153.jpg'),
(441, 'Chicken Sausage Pizza ', '140/210/260', '2', NULL, NULL, 9, NULL, ' veg, Non-veg  special pizza', '1 pice chicken sauces pizza', NULL, NULL, 'img/grill/155.jpg'),
(442, 'Chiken Salama Pizza', '140/210/260', '2', NULL, NULL, 9, NULL, ' veg, Non-veg  special pizza', '1 pice chiken salama pizza', NULL, NULL, 'img/grill/157.jpg'),
(443, 'Cold Drink', '15,20,35', '2', NULL, NULL, 9, NULL, 'Soft Drink,coffee,Tea,soda', '1 pice cold drink', NULL, NULL, 'img/grill/159.jpg'),
(444, 'Cold Coffee', '60', '2', NULL, NULL, 9, NULL, 'Soft Drink,coffee,Tea,soda', '1 pice cold coffee', NULL, NULL, 'img/grill/161.jpg'),
(445, 'Hot Coffee', '20', '2', NULL, NULL, 9, NULL, 'Soft Drink,coffee,Tea,soda', '1 pice hot coffee', NULL, NULL, 'img/grill/163.jpg'),
(446, 'Tea', '10', '2', NULL, NULL, 9, NULL, 'Soft Drink,coffee,Tea,soda', '1 pice tea', NULL, NULL, 'img/grill/165.jpg'),
(447, 'Lemon Tea', '10', '2', NULL, NULL, 9, NULL, 'Soft Drink,coffee,Tea,soda', '1 pice lemon tea', NULL, NULL, 'img/grill/167.jpg'),
(448, 'Black Coffee', '10', '2', NULL, NULL, 9, NULL, 'Soft Drink,coffee,Tea,soda', '1 pice black coffee', NULL, NULL, 'img/grill/169.jpg'),
(449, 'Lassi', '30', '2', NULL, NULL, 9, NULL, 'Soft Drink,coffee,Tea,soda', '1 pice lassi', NULL, NULL, 'img/grill/171.jpg'),
(450, 'Neebo Pani', '15', '2', NULL, NULL, 9, NULL, 'Soft Drink,coffee,Tea,soda', '1 pice neebo pani', NULL, NULL, 'img/grill/173.jpg'),
(451, 'Lemon Soda', '30', '2', NULL, NULL, 9, NULL, 'Soft Drink,coffee,Tea,soda', '1 pice lemon soda', NULL, NULL, 'img/grill/175.jpg'),
(452, 'veg Grilled Sandwich', '70', '2', NULL, NULL, 9, NULL, 'veg ,Non-Veg special sandwich', '1 pice veg grilled sandwich', NULL, NULL, 'img/grill/177.jpg'),
(453, 'Veg Simple Sandwich', '25', '2', NULL, NULL, 9, NULL, 'veg ,Non-Veg special sandwich', '1 pice veg simple sandwich', NULL, NULL, 'img/grill/179.jpg'),
(454, 'Veg Cheese Grilled Sandwich', '90', '2', NULL, NULL, 9, NULL, 'veg ,Non-Veg special sandwich', '1 pice veg cheese grilled sandwich', NULL, NULL, 'img/grill/181.jpg'),
(455, 'Chicken Grilled Sandwich', '130', '2', NULL, NULL, 9, NULL, 'veg ,Non-Veg special sandwich', '1 pice chicken grilled sandwich', NULL, NULL, 'img/grill/183.jpg'),
(456, 'French Toast', '35', '2', NULL, NULL, 9, NULL, 'veg ,Non-Veg special sandwich', '1 pice french toast', NULL, NULL, 'img/grill/185.jpg'),
(457, 'Bread Toast', '25', '2', NULL, NULL, 9, NULL, 'veg ,Non-Veg special sandwich', '1 pice bread toast', NULL, NULL, 'img/grill/187.jpg'),
(458, 'Bread Omellete', '35', '2', NULL, NULL, 9, NULL, 'veg ,Non-Veg special sandwich', '1 pice bread omellete', NULL, NULL, 'img/grill/189.jpg'),
(459, 'Shahi Paneer', '160/90', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full/half plate shahi paneer', NULL, NULL, 'img/grill/191.jpg'),
(460, 'Kadahi Paneer', '160/90', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full/half plate kadahi paneer', NULL, NULL, 'img/grill/193.jpg'),
(461, 'Cheese Tomato', '150/80', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full/half plate cheese tomato', NULL, NULL, 'img/grill/195.jpg'),
(462, 'Dal Makhni', '80', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate  dal makhni', NULL, NULL, 'img/grill/197.jpg'),
(463, 'Dal Fry', '60', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate dal fry', NULL, NULL, 'img/grill/199.jpg'),
(464, 'Cheese Chilly', '150', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate cheese chilly', NULL, NULL, 'img/grill/201.jpg'),
(465, 'Mix Vegetable', '80', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate mix vegetable', NULL, NULL, 'img/grill/203.jpg'),
(466, 'Aaloo Jeera', '50', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate  aaloo jeera', NULL, NULL, 'img/grill/205.jpg'),
(467, 'Palak Paneer', '160/90', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full/half plate  palak paneer', NULL, NULL, 'img/grill/207.jpg'),
(468, 'Paneer Burgi', '100/60', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full/half plate paneer burgi', NULL, NULL, 'img/grill/209.jpg'),
(469, 'Matar Paneer', '120/60', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full/half plate matar paneer', NULL, NULL, 'img/grill/211.jpg'),
(470, 'Veg Thali', '70', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate veg thali', NULL, NULL, 'img/grill/213.jpg'),
(471, 'Plain Maggie', '20', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plate plain maggie', NULL, NULL, 'img/grill/215.jpg'),
(472, 'Veg Maggie', '30', '2', NULL, NULL, 9, NULL, 'Food, Vegetarian Special, Vegetarian Dish', '1 full plateveg maggie', NULL, NULL, 'img/grill/217.jpg'),
(473, 'Chicken Soup', '50', '2', NULL, NULL, 9, NULL, 'Vegetarian special Soup', '1 glass  chicken soup', NULL, NULL, 'img/grill/219.jpg'),
(474, 'Tomato soup', '40', '2', NULL, NULL, 9, NULL, 'Vegetarian special Soup', '1 glass  tomato soup', NULL, NULL, 'img/grill/221.jpg'),
(475, 'Manchow Veg Soup', '40', '2', NULL, NULL, 9, NULL, 'Vegetarian special Soup', '1 glass manchow veg soup', NULL, NULL, 'img/grill/223.jpg'),
(476, 'Sweet Corn Veg Soup', '40', '2', NULL, NULL, 9, NULL, 'Vegetarian special Soup', '1 glass sweet corn veg soup', NULL, NULL, 'img/grill/225.jpg'),
(477, 'Hot & Soor Veg Soup', '40', '2', NULL, NULL, 9, NULL, 'Vegetarian special Soup', '1 glass hot & soor veg soup', NULL, NULL, 'img/grill/227.jpg'),
(478, 'Mix Veg Soup', '40', '2', NULL, NULL, 9, NULL, 'Vegetarian special Soup', '1 glass  mix veg soup', NULL, NULL, 'img/grill/229.jpg'),
(479, 'International italian Soup', '45', '2', NULL, NULL, 9, NULL, 'Vegetarian special Soup', '1 glass international italian soup', NULL, NULL, 'img/grill/231.jpg'),
(480, 'Mushroom Soup', '45', '2', NULL, NULL, 9, NULL, 'Vegetarian special Soup', '1 glass mushroom soup', NULL, NULL, 'img/grill/233.jpg'),
(497, 'Veg Marine', '60', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 veg marine', NULL, NULL, 'img/zigzag/33.jpg'),
(498, 'Paneer Smoke Marine ', '70', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 paneer smoke marine', NULL, NULL, 'img/zigzag/35.jpg'),
(499, 'Cheesy Marine ', '70', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 cheesy marine', NULL, NULL, 'img/zigzag/37.jpg'),
(500, 'Grilled Potato Sandwich ', '50', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 grilled potato sandwich', NULL, NULL, 'img/zigzag/39.jpg'),
(501, 'Veg Cheese Grilled Sandwich', '60', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 veg cheese grilled sandwich', NULL, NULL, 'img/zigzag/41.jpg'),
(502, 'Mushroom Grilled Sandwich ', '60', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 mushroom grilled sandwich', NULL, NULL, 'img/zigzag/43.jpg'),
(503, 'Spicy Paneer Grilled Sandwich ', '60', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 spicy paneer grilled sandwich', NULL, NULL, 'img/zigzag/45.jpg'),
(504, 'Zig Zag Special Sandwich', '70', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 zig zag special Sandwich', NULL, NULL, 'img/zigzag/47.jpg'),
(505, 'Fruit Cocktail Sandwich ', '60', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 fruit cocktail sandwich', NULL, NULL, 'img/zigzag/49.jpg'),
(506, 'Corn Sandwhich', '50', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 corn sandwhich ', NULL, NULL, 'img/zigzag/51.jpg'),
(507, 'Veg Wrap ', '40', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 veg wrap', NULL, NULL, 'img/zigzag/53.jpg'),
(508, 'Veg Kathi Roll', '30', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 veg kathi roll', NULL, NULL, 'img/zigzag/55.jpg'),
(509, 'Cheese Kathi Roll', '50', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 cheese kathi roll', NULL, NULL, 'img/zigzag/57.jpg'),
(510, 'New Zig Zig Wrap ', '55', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 new zig zig wrap', NULL, NULL, 'img/zigzag/59.jpg'),
(511, 'Cheese Wrap ', '60', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 cheese wrap', NULL, NULL, 'img/zigzag/61.jpg'),
(512, 'Zig Zag special Wrap', '65', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 zig zag special wrap', NULL, NULL, 'img/zigzag/63.jpg'),
(513, 'New Dunkin Duck Wrap', '70', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 new dunkin duck wrap', NULL, NULL, 'img/zigzag/65.jpg'),
(514, 'Strawberry Shake ', '50', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 strawberry shake', NULL, NULL, 'img/zigzag/67.jpg'),
(515, 'Chocolate Shake ', '50', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 chocolate shake', NULL, NULL, 'img/zigzag/69.jpg'),
(516, 'Banana Shake ', '50', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 banana shake', NULL, NULL, 'img/zigzag/71.jpg'),
(517, 'Mango Shake ', '50', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 mango shake', NULL, NULL, 'img/zigzag/73.jpg'),
(518, 'Vanilla Shake ', '50', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 vanilla shake', NULL, NULL, 'img/zigzag/75.jpg'),
(519, 'Butter Scotch Shake ', '50', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 butter scotch shake', NULL, NULL, 'img/zigzag/77.jpg'),
(520, 'Black Current Shake ', '60', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 black current shake', NULL, NULL, 'img/zigzag/79.jpg'),
(521, 'Sizzling Brownie Shake ', '70', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 sizzling brownie shake', NULL, NULL, 'img/zigzag/81.jpg'),
(522, 'Zig Zag Special Crusher (Chocolate ,Strawberry,Butter Scotch)', '80', '2', NULL, NULL, 11, NULL, 'Food, Vegetarian Special, Snakes.', '1 zig zag special crusher (chocolate )', NULL, NULL, 'img/zigzag/83.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registeration`
--

CREATE TABLE `registeration` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `d_upl` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `rt_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `review_on` varchar(255) DEFAULT NULL,
  `o_id` int(11) NOT NULL,
  `date_reviewed` datetime NOT NULL,
  `review` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_id`
--

CREATE TABLE `shop_id` (
  `shop_id` int(11) NOT NULL,
  `shop_code` varchar(255) NOT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `shop_address` varchar(255) DEFAULT NULL,
  `shop_description` varchar(255) DEFAULT NULL,
  `mob_no` varchar(255) DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `shop_category` varchar(255) DEFAULT NULL,
  `shop_keywords` varchar(255) DEFAULT NULL,
  `shop_reviews` varchar(255) DEFAULT NULL,
  `shop_managing_user` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `date_upl` datetime DEFAULT NULL,
  `type` varchar(13) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_id`
--

INSERT INTO `shop_id` (`shop_id`, `shop_code`, `shop_name`, `pic`, `shop_address`, `shop_description`, `mob_no`, `cat_id`, `shop_category`, `shop_keywords`, `shop_reviews`, `shop_managing_user`, `lat`, `lang`, `date_upl`, `type`) VALUES
(1, '1bak1', 'Bakery', 'img/bakery-5.jpg', NULL, 'Bakery Shops', '9936822713', 1, 'Bakery', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2veeran11', 'Veeran Da Dhabha', 'img/shop/imgshop.jpg', 'Veeran Da Dhabha,Bidhipur,Jalandhar', 'We serve and deliver hot and fresh food before 10 PM', '9814783479', 2, 'Food and Restaurants', NULL, NULL, 'Bdhirat Sudh', NULL, NULL, NULL, NULL),
(3, 'fruits33', 'Fruits', NULL, NULL, 'Fruit SHop. All type of fruits are available here.', NULL, 3, NULL, NULL, NULL, 'Shambhu Gupta', NULL, NULL, NULL, NULL),
(4, '4inder4', 'Inder Dhabha', 'img/shop/IMG-20180413-WA0121.jpg', 'Inder Punjabi Dhabha,Bidhipur Phatak G.T. Road,Jalandhar', 'We serve and deliver hot and fresh food before 10PM', '9780913207,9878637170.9988236052', 2, 'Food And Restaurants', NULL, NULL, 'Mandeep', NULL, NULL, NULL, NULL),
(5, '5saloon5', 'Saloon', NULL, NULL, NULL, '9888340953', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '6sweets6', 'Kanu Sweets and Milk Food', 'img/shop/IMG-20180413-WA0089.jpg', 'Kanu Milk Food,Bidhipur,Jalandhar', 'We deliver Fresh sweets and milk products before 10PM', '9876690905', 8, 'Sweets, Milk Products', NULL, NULL, 'Rajiv', NULL, NULL, NULL, NULL),
(8, '8gift8', 'My City Heart', NULL, 'My city Heart,Saidan Gate,Rainak Bazar,Jalandhar', 'All kinds of gift items and Decoration marterial A...', '09815108013', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '9grills9', 'Grills and Thrills', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', 'My City Heart', NULL, 'My city Heart,Saidan Gate,Rainak Bazar,Jalandhar', 'All kinds of gift items and Decoration marterial Available.MArriages and parties decoration. Catering and Dj also Available', '09815108013,0181-2401442', 8, 'Gift Shop', NULL, NULL, 'Kunal Khera', NULL, NULL, NULL, NULL),
(11, '11zigzag11', 'Zigzag', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_managers`
--

CREATE TABLE `shop_managers` (
  `sm_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `d_joined` datetime NOT NULL,
  `access_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_menu`
--

CREATE TABLE `shop_menu` (
  `id` int(11) NOT NULL,
  `p_id` int(11) DEFAULT NULL,
  `m_name` varchar(255) NOT NULL,
  `m_price` varchar(255) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `other_details` varchar(255) DEFAULT NULL,
  `d_upl` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_store_pics_album`
--

CREATE TABLE `shop_store_pics_album` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `p_desc` varchar(255) DEFAULT NULL,
  `p_id` int(11) NOT NULL,
  `d_upl` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `w_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`w_id`, `c_id`, `p_id`) VALUES
(19, 1, 1),
(20, 1, 29);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comment_table`
--
ALTER TABLE `comment_table`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `contact_msg`
--
ALTER TABLE `contact_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_table`
--
ALTER TABLE `customer_table`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_id` (`c_id`);

--
-- Indexes for table `menu_list`
--
ALTER TABLE `menu_list`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `pics`
--
ALTER TABLE `pics`
  ADD PRIMARY KEY (`pic_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `registeration`
--
ALTER TABLE `registeration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_id`
--
ALTER TABLE `shop_id`
  ADD PRIMARY KEY (`shop_id`),
  ADD UNIQUE KEY `shop_id` (`shop_id`);

--
-- Indexes for table `shop_menu`
--
ALTER TABLE `shop_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_store_pics_album`
--
ALTER TABLE `shop_store_pics_album`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contact_msg`
--
ALTER TABLE `contact_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer_table`
--
ALTER TABLE `customer_table`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `menu_list`
--
ALTER TABLE `menu_list`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `pics`
--
ALTER TABLE `pics`
  MODIFY `pic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=745;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;
--
-- AUTO_INCREMENT for table `registeration`
--
ALTER TABLE `registeration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop_id`
--
ALTER TABLE `shop_id`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `shop_menu`
--
ALTER TABLE `shop_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop_store_pics_album`
--
ALTER TABLE `shop_store_pics_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
