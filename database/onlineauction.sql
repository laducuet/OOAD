-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 06:14 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineauction`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `bidding_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bidding_amount` float(10,2) NOT NULL,
  `bidding_date_time` datetime NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`bidding_id`, `customer_id`, `product_id`, `bidding_amount`, `bidding_date_time`, `note`, `status`) VALUES
(3213, 123213, 12123, 5550.00, '2020-01-16 03:08:08', 'rfewrf', ''),
(3214, 7, 128, 450.00, '2020-02-05 10:59:23', '', 'Active'),
(3215, 9, 128, 475.00, '2020-02-06 10:59:44', '', 'Active'),
(3216, 2, 129, 26.00, '2020-02-13 10:46:25', '', 'Active'),
(3217, 2, 129, 30.00, '2020-02-13 10:46:53', '', 'Active'),
(3218, 2, 128, 500.00, '2020-02-13 11:00:46', '', 'Active'),
(3219, 2, 128, 525.00, '2020-02-13 11:01:57', '', 'Active'),
(3220, 2, 129, 40.00, '2020-02-13 11:02:24', '', 'Active'),
(3221, 2, 143, 10.00, '2020-03-04 21:43:47', '', 'Active'),
(3222, 2, 143, 12.00, '2020-03-04 21:44:14', '', 'Active'),
(3223, 2, 143, 1.00, '2020-03-04 21:51:44', '', 'Active'),
(3224, 9, 143, 1.00, '2020-03-04 22:50:42', '', 'Active'),
(3225, 9, 143, 2.00, '2020-03-04 22:50:53', '', 'Active'),
(3226, 23, 148, 10.00, '2020-03-05 18:54:15', '', 'Active'),
(3227, 23, 148, 20.00, '2020-03-05 18:57:18', '', 'Active'),
(3228, 23, 148, 10.00, '2020-03-05 18:57:48', '', 'Active'),
(3229, 23, 148, 10.00, '2020-03-05 18:58:07', '', 'Active'),
(3230, 23, 148, 10.00, '2020-03-05 18:58:12', '', 'Active'),
(3231, 23, 148, 10.00, '2020-03-05 18:58:44', '', 'Active'),
(3232, 23, 148, 10.00, '2020-03-05 18:59:00', '', 'Active'),
(3233, 23, 148, 10.00, '2020-03-05 18:59:15', '', 'Active'),
(3234, 23, 148, 10.00, '2020-03-05 18:59:52', '', 'Active'),
(3235, 23, 148, 10.00, '2020-03-05 19:00:25', '', 'Active'),
(3236, 23, 148, 10.00, '2020-03-05 19:02:07', '', 'Active'),
(3237, 23, 148, 11.00, '2020-03-05 19:02:22', '', 'Active'),
(3238, 23, 148, 12.00, '2020-03-05 19:02:31', '', 'Active'),
(3239, 23, 148, 13.00, '2020-03-05 19:04:00', '', 'Active'),
(3240, 23, 148, 13.00, '2020-03-05 19:04:44', '', 'Active'),
(3241, 23, 148, 14.00, '2020-03-05 19:04:58', '', 'Active'),
(3242, 23, 148, 14.00, '2020-03-05 19:05:05', '', 'Active'),
(3243, 23, 148, 15.00, '2020-03-05 19:05:18', '', 'Active'),
(3244, 28, 156, 25.00, '2020-08-27 18:36:22', '', 'Active'),
(3245, 31, 158, 12.00, '2021-04-05 00:40:33', '', 'Active'),
(3246, 2, 158, 15.00, '2021-05-09 04:34:33', '', 'Active'),
(3247, 8, 188, 45.00, '2023-11-09 09:53:24', '', 'Active'),
(3248, 8, 188, 50.00, '2023-11-09 10:01:14', '', 'Active'),
(3249, 9, 127, 20.00, '2023-11-09 14:23:45', '', 'Active'),
(3250, 9, 127, 40.00, '2023-11-09 14:24:02', '', 'Active'),
(3251, 2, 190, 251.00, '2023-11-09 14:29:53', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billing_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_amount` float(10,2) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `card_type` varchar(50) NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `expire_date` date NOT NULL,
  `cvv_number` varchar(5) NOT NULL,
  `card_holder` varchar(50) NOT NULL,
  `delivery_date` date NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billing_id`, `customer_id`, `product_id`, `purchase_date`, `purchase_amount`, `payment_type`, `card_type`, `card_number`, `expire_date`, `cvv_number`, `card_holder`, `delivery_date`, `note`, `status`) VALUES
(1326, 321, 231, '2020-01-11', 500.00, '12323', '3123', '545454545', '2020-01-13', '545', '5454545', '2020-01-20', '213213213', ''),
(1327, 0, 125, '2020-02-05', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '545', 'yjut', '0000-00-00', '', 'Active'),
(1328, 0, 126, '2020-02-05', 100.00, 'Sell', 'VISA', '1987654321234567', '2020-03-01', '543', 'Rajkiran', '0000-00-00', '', 'Active'),
(1329, 8, 0, '2020-02-05', 500.00, 'Deposit', 'Credit card', '1234567890123456', '2020-02-01', '564', 'Raj kiran', '0000-00-00', '', 'Active'),
(1330, 0, 127, '2020-02-05', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '433', 'Rajkiran', '0000-00-00', '', 'Active'),
(1331, 0, 128, '2020-02-05', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '237', 'Rajkiran', '0000-00-00', '', 'Active'),
(1332, 7, 0, '2020-02-05', 650.00, 'Deposit', 'Credit card', '9876543212346789', '2021-12-01', '237', 'karan', '0000-00-00', '', 'Active'),
(1333, 0, 129, '2020-02-06', 100.00, 'Sell', 'Debit Card', '7894561230123456', '2020-03-01', '433', 'Raj', '0000-00-00', '', 'Active'),
(1334, 9, 0, '2020-02-06', 300.00, 'Deposit', 'Debit Card', '1234567890123456', '2020-03-01', '453', 'Raj', '0000-00-00', '', 'Active'),
(1335, 2, 0, '2020-02-13', 650.00, 'Deposit', 'Credit card', '1234567891012345', '2021-01-01', '458', 'Raj kiran', '0000-00-00', '', 'Active'),
(1336, 0, 136, '2020-02-13', 100.00, 'Sell', 'Credit card', '1233213213213134', '2044-03-01', '443', 'da', '0000-00-00', '', 'Active'),
(1337, 9, 0, '2020-03-04', 250.00, 'Deposit', 'Debit Card', '1234567890123456', '2021-01-01', '548', 'Raj kiran', '0000-00-00', '', 'Active'),
(1338, 2, 0, '2020-03-04', 100.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1339, 0, 138, '2020-03-04', 100.00, 'Sell', 'Master Card', '1234567890123456', '2021-01-01', '456', 'raj kiran', '0000-00-00', '', 'Active'),
(1340, 2, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1341, 0, 140, '2020-03-04', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '489', 'Raj kiran', '0000-00-00', '', 'Active'),
(1342, 9, 141, '2020-03-04', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2022-01-01', '125', 'Raj kiran', '0000-00-00', '', 'Active'),
(1343, 0, 142, '2020-03-04', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '486', 'Raj kiran', '0000-00-00', '', 'Active'),
(1344, 9, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1345, 9, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1346, 9, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1347, 9, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1348, 23, 0, '2020-03-05', 650.00, 'Deposit', 'Debit Card', '1234567890123456', '2021-01-01', '159', 'Raj kiran', '0000-00-00', '', 'Active'),
(1349, 28, 157, '2020-08-27', 100.00, 'Sell', 'Debit Card', '4458966511144589', '2021-01-01', '486', 'Surendra', '0000-00-00', '', 'Active'),
(1350, 28, 0, '2020-08-27', 100.00, 'Deposit', 'Debit Card', '1478529631234568', '2021-01-01', '158', 'Rupesh kumar', '0000-00-00', '', 'Active'),
(1351, 30, 158, '2021-04-05', 100.00, 'Sell', 'Credit card', '1234567890123456', '2022-01-01', '456', 'Raj', '0000-00-00', '', 'Active'),
(1352, 31, 0, '2021-04-05', 100.00, 'Deposit', 'Credit card', '1231231231231233', '2021-07-01', '547', 'Raj kiran', '0000-00-00', '', 'Active'),
(1353, 30, 159, '2021-04-05', 100.00, 'Sell', 'Debit Card', '9872345678909876', '2022-01-01', '342', 'Ramjran', '0000-00-00', '', 'Active'),
(1354, 2, 160, '2021-05-09', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2022-01-01', '158', 'Ram kumar', '0000-00-00', '', 'Active'),
(1355, 2, 0, '2021-05-09', 100.00, 'Deposit', 'Debit Card', '7894561230123546', '2022-01-01', '589', 'Mahesh', '0000-00-00', '', 'Active'),
(1356, 30, 161, '2021-08-22', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2022-01-01', '157', 'Raj kiran', '0000-00-00', '', 'Active'),
(1357, 35, 187, '2021-08-24', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2022-01-01', '158', 'Raj Kiran', '0000-00-00', '', 'Active'),
(1358, 7, 188, '2023-11-09', 100.00, 'Sell', 'Credit card', '1234567891234556', '2028-08-01', '159', 'Sk', '0000-00-00', '', 'Active'),
(1359, 8, 189, '2023-11-09', 100.00, 'Sell', 'Credit card', '1234567891234561', '2028-02-01', '156', 'dddd', '0000-00-00', '', 'Active'),
(1360, 9, 190, '2023-11-09', 100.00, 'Sell', 'Credit card', '1234567891234561', '2028-12-01', '154', 'dddd', '0000-00-00', '', 'Active'),
(1361, 2, 191, '2023-11-13', 100.00, 'Sell', 'Credit card', '1234567891234567', '2028-01-01', '141', 'aaa', '0000-00-00', '', 'Active'),
(1362, 2, 192, '2023-11-13', 100.00, 'Sell', 'Credit card', '1234567891234567', '2027-01-01', '141', 'aaa', '0000-00-00', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_icon`, `description`, `status`) VALUES
(16548, 'SUV', 'SUV.jpeg', 'A sport utility vehicle (SUV) is a car classification that combines elements of road-going passenger cars with features from off-road vehicles', 'Active'),
(16549, 'Sedan Car', 'SedanCar.jpg', 'a 4-door passenger car with a trunk that is separate from the passengers with a three-box body: the engine, the area for passengers, and the trunk.', 'Active'),
(16550, 'Hatchback', 'Hatchback.jpg', 'A car body configuration with a rear door that swings upward to provide access to the main interior of the car as a cargo area rather than just to a separated trunk.', 'Active'),
(16552, 'Van', 'Van.jpeg', 'A van is a type of road vehicle used for transporting goods or people. Depending on the type of van, it can be bigger or smaller than a pickup truck and SUV, and bigger than a common car. ', 'Active'),
(16559, 'Muscle Car', 'Muscle Car.jpeg', ' Muscle cars are known for their powerful engines and a broad, boxy shape. Think classics like the 1970 Dodge Challenger, 1969 Chevrolet Camaro, and 1976 Pontiac Firebird Trans Am. They stood out with long, boxy hoods to contain larger-than-usual engines.', 'Active'),
(16560, 'Crossover', 'Crossover.jpeg', 'A crossover refers to a vehicle that is built on a car platform but has an increased ride height with a higher ground clearance like an SUV, that can handle any terrain.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `email_id`, `password`, `address`, `state`, `city`, `landmark`, `pincode`, `mobile_no`, `note`, `status`) VALUES
(2, 'Rajesh Krishna', 'rajeshkrishna@gmail.com', '123456123456', 'Junction, Bendoorwell, Kankanady', 'Karnataka', 'Mangalore', 'Juntion Road', '575002', '7894561230', '', 'Active'),
(7, 'Mahesh Kumar', 'maheshkumar@gmail.com', '123456789', '3rd floor, city light building', 'Karnataka', 'Mangalroe', 'Khazana Jeweller', '575003', '8217727968', '', 'Active'),
(8, 'Preetham Bhat', 'preethambhat@gmail.com', 'q1w2e3r4', 'Balmatta Junction, Near Collector\'s Gate', 'Karnataka', 'Mangalore', 'RTO Junction', '575002', '9874563210', '', 'Active'),
(9, 'Hudson A K', 'hudsonak@gmail.com', 't5y6u7i8', 'Near Syndicate Circle, opp. Domino\'s Pizza, Manipal', 'Karnataka', 'Manipal', 'Near KMC Hospital', '576104', '7894561230', '', 'Active'),
(22, 'Manthesh kumar', 'mantheshkumar@gmail.com', '123456789', 'No.52, Jyoti Nivas College, 5th Block, Koramangala', 'Karnataka', 'Bengaluru', 'Premises of Tibetan Kitchen', '560095', '9874563210', '', 'Active'),
(23, 'Nanda Gopal', 'nandagopal@gmail.com', '123456789', 'Apartment no. 02, 1st Cross Rd, Shastri Nagar', 'Karnataka', 'Ballari', 'RH Road', '583103', '9986055414', '', 'Active'),
(24, 'Manish Kumar', 'manishkumar@gmail.com', '123456789', 'Adi-udupi, Karnataka 576102', 'Karnataka', 'Mangalroe', 'Adi-udupi', '575003', '8217727968', '', 'Active'),
(25, 'Suraj Mishra', 'surajmishra@gmail.com', '123456789', 'Shiva kripa, Vidya nagar, Post Nehru Nagar', 'Karnataka', 'Puttur', 'Philomena college', '574203', '8217778968', '', 'Active'),
(26, 'Susheel kumar', 'susheelkumar@gmail.com', 'susheel123456789', 'Shiva kripa, Vidya nagar, Post Nehru Nagar', 'Karnataka', 'Puttur', 'Philomena college', '574203', '8217778968', '', 'Active'),
(27, 'Prateek shetty', 'prathikshetty@gmail.com', 'pratik', 'Shiva kripa, Vidya nagar, Post Nehru Nagar', 'Karnataka', 'Puttur', 'Philomena college', '574203', '8217778968', '', 'Active'),
(28, 'Surendra kumar', 'surendrakumar23@gmail.com', '123456789', '', '', '', '', '', '+919986051445', '', 'Active'),
(29, 'Pranesh', 'mvaravinda@gmail.com', 'q1w2e3r4/', '', '', '', '', '', '+919986058114', '', 'Active'),
(30, 'Achintya Kumar', 'achintyakumar@gmail.com', 'q1w2e3r4', '5th cross,\r\nBarikatte', 'Karnataka', 'Bangalore', 'KFC', '567367', '9985637336323', '', 'Active'),
(31, 'Vilass kumar', 'vilaskumar@gmail.com', 'q1w2e3r4', '', '', '', '', '', '9876543211', '', 'Active'),
(35, 'ARavinda', 'actingtoys@gmail.com', 'q1w2e3r4a', '', '', '', '', '', '+919874563210', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(10) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `employee_type` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `login_id`, `password`, `employee_type`, `status`) VALUES
(1, 'Administrator', 'admin', 'adminadmin', 'Admin', 'Active'),
(5, 'Employee', 'employee', 'employee', 'Employee', 'Active'),
(6, 'Anand', 'anand', 'q1w2e3r4', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `message_date_time` datetime NOT NULL,
  `product_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_id`, `receiver_id`, `message_date_time`, `product_id`, `message`, `status`) VALUES
(23, 23, 9, '2020-03-05 14:58:45', 141, 'Hello\n', 'Customer'),
(24, 23, 9, '2020-03-05 19:31:48', 141, 'Hello\n', 'Seller'),
(25, 24, 9, '2020-03-05 15:02:38', 141, 'Hello hudson\n', 'Customer'),
(26, 24, 9, '2020-03-05 19:32:55', 141, 'Hello manish\n', 'Seller'),
(27, 24, 9, '2020-03-05 15:13:07', 141, 'Hello\n', 'Customer'),
(28, 24, 9, '2020-03-05 15:14:01', 141, 'Hi\n', 'Customer'),
(29, 24, 9, '2020-03-05 15:14:06', 141, 'Hello\n', 'Customer'),
(30, 23, 9, '2020-03-05 19:44:20', 141, 'Hello\n', 'Seller'),
(31, 24, 9, '2020-03-05 15:17:35', 141, 'Hello\n', 'Customer'),
(32, 24, 9, '2020-03-05 19:47:48', 141, 'Test message\n', 'Seller'),
(33, 24, 9, '2020-03-05 15:19:18', 141, 'Hello\n', 'Customer'),
(34, 24, 9, '2020-03-05 15:19:31', 141, 'aa\n', 'Customer'),
(35, 24, 9, '2020-03-05 15:21:01', 141, 'welcome\n', 'Customer'),
(36, 24, 9, '2020-03-05 19:51:15', 141, 'yesll\n', 'Seller'),
(37, 28, 8, '2020-08-27 15:08:00', 156, 'Hello\n', 'Customer'),
(38, 28, 8, '2020-08-27 15:08:38', 156, 'I wanted to know some features about this product\n', 'Customer'),
(39, 8, 7, '2023-11-09 09:46:36', 188, 'Hello\n', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bidding_id` int(10) NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `paid_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `customer_id`, `payment_type`, `product_id`, `bidding_id`, `paid_amount`, `paid_date`, `status`) VALUES
(214, 7, 'Bid', 128, 3214, 4.50, '2020-02-05', 'Active'),
(215, 9, 'Bid', 128, 3215, 4.75, '2020-02-06', 'Active'),
(216, 2, 'Bid', 129, 3216, 0.26, '2020-02-13', 'Active'),
(217, 2, 'Bid', 129, 3217, 0.30, '2020-02-13', 'Active'),
(218, 2, 'Bid', 128, 3218, 5.00, '2020-02-13', 'Active'),
(219, 2, 'Bid', 128, 3219, 5.25, '2020-02-13', 'Active'),
(220, 2, 'Bid', 129, 3220, 0.40, '2020-02-13', 'Active'),
(221, 2, 'Bid', 143, 3221, 0.10, '2020-03-04', 'Active'),
(222, 2, 'Bid', 143, 3222, 0.12, '2020-03-04', 'Active'),
(223, 2, 'Bid', 143, 3223, 0.01, '2020-03-04', 'Active'),
(224, 9, 'Bid', 143, 3224, 0.01, '2020-03-04', 'Active'),
(225, 9, 'Bid', 143, 3225, 0.02, '2020-03-04', 'Active'),
(226, 23, 'Bid', 148, 3226, 0.10, '2020-03-05', 'Active'),
(227, 23, 'Bid', 148, 3227, 5.00, '2020-03-05', 'Active'),
(228, 23, 'Bid', 148, 3228, 15.00, '2020-03-05', 'Active'),
(229, 23, 'Bid', 148, 3229, 15.00, '2020-03-05', 'Active'),
(230, 23, 'Bid', 148, 3230, 15.00, '2020-03-05', 'Active'),
(231, 23, 'Bid', 148, 3231, 15.00, '2020-03-05', 'Active'),
(232, 23, 'Bid', 148, 3232, 15.00, '2020-03-05', 'Active'),
(233, 23, 'Bid', 148, 3233, 15.00, '2020-03-05', 'Active'),
(234, 23, 'Bid', 148, 3234, 15.00, '2020-03-05', 'Active'),
(235, 23, 'Bid', 148, 3235, 15.00, '2020-03-05', 'Active'),
(236, 23, 'Bid', 148, 3236, 15.00, '2020-03-05', 'Active'),
(237, 23, 'Bid', 148, 3237, 16.00, '2020-03-05', 'Active'),
(238, 23, 'Bid', 148, 3238, 17.00, '2020-03-05', 'Active'),
(239, 23, 'Bid', 148, 3239, 18.00, '2020-03-05', 'Active'),
(240, 23, 'Bid', 148, 3240, 18.00, '2020-03-05', 'Active'),
(241, 23, 'Bid', 148, 3241, 19.00, '2020-03-05', 'Active'),
(242, 23, 'Bid', 148, 3242, 19.00, '2020-03-05', 'Active'),
(243, 23, 'Bid', 148, 3243, 20.00, '2020-03-05', 'Active'),
(244, 28, 'Bid', 156, 3244, 0.25, '2020-08-27', 'Active'),
(245, 31, 'Bid', 158, 3245, 0.12, '2021-04-05', 'Active'),
(246, 2, 'Bid', 158, 3246, 0.15, '2021-05-09', 'Active'),
(247, 8, 'Bid', 188, 3247, 0.45, '2023-11-09', 'Active'),
(248, 8, 'Bid', 188, 3248, 0.50, '2023-11-09', 'Active'),
(249, 9, 'Bid', 127, 3249, 0.20, '2023-11-09', 'Active'),
(250, 9, 'Bid', 127, 3250, 0.40, '2023-11-09', 'Active'),
(251, 2, 'Bid', 190, 3251, 2.51, '2023-11-09', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category_id` int(10) NOT NULL,
  `product_description` text NOT NULL,
  `starting_bid` float(10,2) NOT NULL,
  `ending_bid` float(10,2) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `product_cost` float(10,2) NOT NULL,
  `product_image` text NOT NULL,
  `product_warranty` varchar(100) NOT NULL,
  `product_delivery` text NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `customer_id`, `product_name`, `category_id`, `product_description`, `starting_bid`, `ending_bid`, `start_date_time`, `end_date_time`, `product_cost`, `product_image`, `product_warranty`, `product_delivery`, `company_name`, `status`) VALUES
(191, 2, 'Mazda', 16549, 'aaaa', 1000.00, 1000.00, '2023-11-20 10:00:00', '2023-11-22 10:00:00', 20000.00, 'a:1:{i:0;s:51:\"1360008871led-mask-8k-wallpaper-7680x4320-14056.jpg\";}', '', '4-5 days', 'Nissan', 'Active'),
(192, 2, 'Nissan GTR', 16559, 'abcd', 20000.00, 20000.00, '2023-12-15 10:00:00', '2023-12-15 12:00:00', 50000.00, 'a:1:{i:0;s:17:\"1962022374p2p.jpg\";}', '', '7-10 days', 'Nissan', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `winner_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `winners_image` varchar(100) NOT NULL,
  `winning_bid` float(10,2) NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`winner_id`, `product_id`, `customer_id`, `winners_image`, `winning_bid`, `end_date`, `status`) VALUES
(3, 126, 2, 'Willy-Nilly_My_Passport_Size_Photo.jpg', 440.00, '2020-02-13', 'Pending'),
(4, 143, 9, 'Sandip_pic.png', 26.00, '2020-03-04', 'Pending'),
(5, 148, 25, 'saiful-bi.jpg', 25.00, '2020-03-05', 'Pending'),
(6, 150, 26, 'ashok.jpg', 368.00, '2020-03-05', 'Pending'),
(7, 151, 23, 'D-25456-a copy.jpg', 155.00, '2020-03-05', 'Pending'),
(8, 152, 24, 'c53aa684465bc61455fd0d21537752fb.jpg', 1200.00, '2020-03-05', 'Pending'),
(9, 153, 27, 'Passport-Size-Pic.jpg', 665.00, '2020-03-05', 'Pending'),
(10, 127, 22, 'unnamed.jpg', 545.00, '2020-03-05', 'Pending'),
(11, 128, 8, 'Passport_Size_Image_of_Nouman.jpg', 515.00, '2020-03-05', 'Pending'),
(12, 129, 7, 'create-passport-size.jpg', 515.00, '2020-03-05', 'Pending'),
(13, 156, 28, '', 25.00, '2020-08-27', 'Pending'),
(14, 158, 2, '', 15.00, '2021-05-09', 'Pending'),
(15, 188, 8, '', 50.00, '2023-11-09', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`bidding_id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billing_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`winner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidding`
--
ALTER TABLE `bidding`
  MODIFY `bidding_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3252;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billing_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1363;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16563;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `winner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
