-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 14, 2019 at 01:20 PM
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
-- Database: `tkcoke_premium`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `accindex` int(5) NOT NULL AUTO_INCREMENT,
  `income_trip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `totalexp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `banked` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`accindex`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accindex`, `income_trip`, `totalexp`, `banked`, `remarks`, `datecreated`) VALUES
(9, '200000', '60000', '140000', 'average', '2019-08-29 12:32:41.000000'),
(8, '200000', '60000', '140000', 'High expense', '2019-08-29 11:43:35.000000'),
(7, '650000', '250000', '400000', 'good', '2019-08-29 11:26:14.000000'),
(10, '896700', '568900', '327800.00', 'peak period', '2019-08-29 12:37:57.000000');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', '64e1b8d34f425d19e1ee2ea7236d3028', '12cede3387e088e95d3ff6b857b944d0');

-- --------------------------------------------------------

--
-- Table structure for table `advancepay`
--

DROP TABLE IF EXISTS `advancepay`;
CREATE TABLE IF NOT EXISTS `advancepay` (
  `adindex` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `idNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `advance` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `paid` int(11) NOT NULL,
  `datereceived` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`adindex`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `advancepay`
--

INSERT INTO `advancepay` (`adindex`, `name`, `idNo`, `advance`, `paid`, `datereceived`) VALUES
(1, '1', '93847478', '1500', 1500, '2019-09-08 13:07:01'),
(2, '2', '25417896', '2500', 0, '2019-08-30 11:00:43'),
(3, '1', '39743637', '500', 500, '2019-09-08 15:33:02'),
(4, '5', '25479658', '2000', 2000, '2019-09-12 14:01:51'),
(5, '4', '', '', 0, '2019-09-09 17:37:52'),
(6, '7', '789512356567412369852', '2000', 0, '2019-09-12 11:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE IF NOT EXISTS `bills` (
  `bill_id` int(6) NOT NULL AUTO_INCREMENT,
  `vendorName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `terms` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `acc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `refNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `billdate` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `duedate` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `itemName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `units` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`bill_id`, `vendorName`, `address`, `terms`, `note`, `acc`, `refNo`, `billdate`, `duedate`, `itemName`, `units`, `price`, `quantity`, `total`, `date`) VALUES
(2, '3', 'Eldoret', 'noen', 'none', '00525543355 ', 'RED8383', '2019-09-30', '2019-09-30', 'Papers', '50', '200', '50', '10000.00', '2019-09-09 23:26:38'),
(3, '2', '23 ELD', '14 days', 'no cash', '125469 ', '10', '2019-09-10', '2019-09-24', 'diesel', '1 litre', '105', '46', '4830.00', '2019-09-10 23:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `deleteduser`
--

DROP TABLE IF EXISTS `deleteduser`;
CREATE TABLE IF NOT EXISTS `deleteduser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `deltime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
CREATE TABLE IF NOT EXISTS `drivers` (
  `indexx` int(11) NOT NULL AUTO_INCREMENT,
  `driver_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `driving_license` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gross` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`indexx`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`indexx`, `driver_name`, `id_number`, `driving_license`, `tel`, `email`, `address`, `gross`, `date`) VALUES
(1, 'Kiplimo Kurgat', '39743637', '8747483', '0726463763', 'mail@mail.com', 'Nandi', '', '2019-08-18 09:01:54.000000'),
(2, 'Robert Otieno', '38374833', '87837839', '0738477474', 'mail@dhd.ddh', 'Kisumu', '', '2019-08-18 13:37:33.000000'),
(3, 'Vincent Owiti', '24508798', '5687413', '0785 463 210', 'owiti@yahoo.com', '56-20060', '18200', '2019-09-08 11:28:28.000000'),
(4, 'wertyuio', 'fghjkl;', 'sdfghjkl;', '7410 269 878', '', 'sdfghjkl', '500', '2019-09-12 11:44:58.000000');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL,
  `reciver` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `feedbackdata` varchar(500) NOT NULL,
  `attachment` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loanpayment`
--

DROP TABLE IF EXISTS `loanpayment`;
CREATE TABLE IF NOT EXISTS `loanpayment` (
  `loan_index` int(10) NOT NULL AUTO_INCREMENT,
  `amount_paid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `balance` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `datepaid` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`loan_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
CREATE TABLE IF NOT EXISTS `loans` (
  `lindex` int(6) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `idNo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `loanamnt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `deductable` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `repayPeriod` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `amntpaid` int(50) NOT NULL,
  `dategranted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lindex`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`lindex`, `name`, `idNo`, `loanamnt`, `deductable`, `repayPeriod`, `remarks`, `amntpaid`, `dategranted`) VALUES
(1, '1', '93847478', '10000', '2500', '4', 'To be deducted in four months', 10000, '2019-09-08 13:59:18'),
(2, '2', '30254670', '50000', '6250.00', '8', 'deducting from gross salary', 0, '2019-09-08 12:04:15'),
(3, '1', '39743637', '15000', '3000.00', '5', 'allowed', 6000, '2019-09-08 15:39:26'),
(4, '5', '25479658', '10000', '2500.00', '4', 'none', 10000, '2019-09-12 14:34:24'),
(5, '4', '', '', '', '', '', 0, '2019-09-09 15:14:19'),
(6, '7', '', '10000', '2500.00', '4', '', 0, '2019-09-12 11:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notiuser` varchar(50) NOT NULL,
  `notireciver` varchar(50) NOT NULL,
  `notitype` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notiuser`, `notireciver`, `notitype`, `time`) VALUES
(1, 'test', 'Admin', 'Create Account', '2019-09-10 12:49:04'),
(2, 'test', 'Admin', 'Create Account', '2019-09-10 12:50:11'),
(3, 'test', 'Admin', 'Create Account', '2019-09-10 12:51:12'),
(4, 'skyteclab@gmail.com', 'Admin', 'Create Account', '2019-09-10 13:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `parcelcom`
--

DROP TABLE IF EXISTS `parcelcom`;
CREATE TABLE IF NOT EXISTS `parcelcom` (
  `pindex` int(6) NOT NULL AUTO_INCREMENT,
  `parcelInc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `commission` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `banked` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pindex`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parcelcom`
--

INSERT INTO `parcelcom` (`pindex`, `parcelInc`, `commission`, `banked`, `remarks`, `date`) VALUES
(1, '40000', '86000', '126000.00', 'good', '2019-09-08 12:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `parcels`
--

DROP TABLE IF EXISTS `parcels`;
CREATE TABLE IF NOT EXISTS `parcels` (
  `par_id` int(10) NOT NULL AUTO_INCREMENT,
  `route` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_desc` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `datereceived` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`par_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parcels`
--

INSERT INTO `parcels` (`par_id`, `route`, `parcel_desc`, `paid_amount`, `datereceived`) VALUES
(1, '5', 'Tv', '200', '2019-08-25 14:57:58.000000'),
(2, '6', 'Bananas', '300', '2019-08-25 15:02:46.000000'),
(3, '5', 'two boxes sealed', '400', '2019-08-25 15:05:01.000000'),
(4, '2', '25Kgs sacks', '200', '2019-08-30 06:42:30.000000');

-- --------------------------------------------------------

--
-- Table structure for table `pre_users`
--

DROP TABLE IF EXISTS `pre_users`;
CREATE TABLE IF NOT EXISTS `pre_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pre_users`
--

INSERT INTO `pre_users` (`id`, `name`, `email`, `password`, `gender`, `mobile`, `designation`, `image`, `status`) VALUES
(1, 'ELVIS NGENO', 'kemngeno@yahoo.com', 'c6ed8e62f3d69831791074bba4180ae6', 'Male', '0712345678', 'Accountant', 'jaguar_fpace_shanghai_01.jpg', 1),
(2, 'ELVIS NGENO', 'ngenokem@yahoo.com', '16d7a4fca7442dda3ad93c9a726597e4', 'Male', '0712345678', 'Accountant', 'jaguar_fpace_shanghai_01.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `psvexpense`
--

DROP TABLE IF EXISTS `psvexpense`;
CREATE TABLE IF NOT EXISTS `psvexpense` (
  `indexx` int(6) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `route` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fuel` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `oil_service` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `car_wash` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lunch` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `driver` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `council_fee` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `garage` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `garage1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `garage2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `garage3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `others` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `total_expense` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`indexx`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `psvexpense`
--

INSERT INTO `psvexpense` (`indexx`, `vehicle`, `route`, `fuel`, `oil_service`, `car_wash`, `lunch`, `driver`, `council_fee`, `garage`, `garage1`, `garage2`, `garage3`, `others`, `total_expense`, `date`) VALUES
(11, '3', '5', '5000', '500', '200', '200', '400', '200', '0', '0', '0', '0', '0', '6500.00', '2019-08-30 08:22:01.000000');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
CREATE TABLE IF NOT EXISTS `routes` (
  `indexr` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `distance` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fare` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_time` date NOT NULL,
  PRIMARY KEY (`indexr`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`indexr`, `name`, `distance`, `fare`, `date_time`) VALUES
(1, 'nkr - mbs', '600', '1600', '2019-08-20'),
(2, 'eld-kisii', '280', '650', '2019-08-20'),
(3, 'ELD-KATITO', '230', '550', '2019-08-21'),
(4, 'ELD-Migori', '300', '850', '2019-08-21'),
(5, 'ELD-Homabay', '290', '700', '2019-08-21'),
(6, 'ELD-Keroka', '295', '750', '2019-08-21'),
(7, 'ELD-Sirare', '350', '1000', '2019-08-21');

-- --------------------------------------------------------

--
-- Table structure for table `shareholders`
--

DROP TABLE IF EXISTS `shareholders`;
CREATE TABLE IF NOT EXISTS `shareholders` (
  `indexx` int(5) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`indexx`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shareholders`
--

INSERT INTO `shareholders` (`indexx`, `full_name`, `tel`, `email`, `date_time`) VALUES
(1, 'Towet Gilbert', '0720894746', 'ttgilly@mail.com', '2019-08-18 08:13:55.000000'),
(2, 'Jane Maina', '0736363646', 'mail@mail.com', '2019-08-18 08:23:49.000000'),
(3, 'Cheprono Faith', '0748474644', 'chepfaith@mail.com', '2019-08-18 08:26:43.000000'),
(4, 'Biria Biyaki', '0780913062', 'kemngeno@gmail.com', '2019-08-21 09:33:58.000000'),
(5, 'tttertyuio', '7896 325 893', 'dfghjkl;lfdfghjkljhg', '2019-09-12 11:43:10.000000');

-- --------------------------------------------------------

--
-- Table structure for table `staffpayroll`
--

DROP TABLE IF EXISTS `staffpayroll`;
CREATE TABLE IF NOT EXISTS `staffpayroll` (
  `pindex` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `idno` int(20) NOT NULL,
  `gross` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `advance` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `net` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pindex`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staffpayroll`
--

INSERT INTO `staffpayroll` (`pindex`, `name`, `idno`, `gross`, `advance`, `loan`, `net`, `remarks`, `date`) VALUES
(1, 'FELIX OWALA', 1235426, '18000', '3000', '5000', '10000', 'PAYED', '2019-09-07 15:33:24'),
(7, '1', 93847478, '10000', '1500', '2500', '6000.00', 'pay1', '2019-09-08 18:07:01'),
(8, '1', 93847478, '10000', '', '2500', '7500.00', 'none', '2019-09-08 18:07:18'),
(9, '1', 93847478, '20000', '', '2500', '17500.00', '', '2019-09-08 18:21:03'),
(10, '1', 93847478, '10000', '', '2500', '7500.00', 'loan cleared', '2019-09-08 18:59:18'),
(11, '1', 39743637, '10000', '500', '3000.00', '6500.00', 'none', '2019-09-08 20:33:02'),
(12, '1', 39743637, '18700', '', '3000.00', '15700.00', 'payed', '2019-09-08 20:39:26'),
(13, '7', 54789213, '16500', '', '', '16500.00', '', '2019-09-09 00:37:55'),
(14, '5', 25479658, '21000', '2000', '2500.00', '16500.00', 'payed', '2019-09-12 11:01:51'),
(15, '5', 25479658, '21000', '', '2500.00', '18500.00', 'payed', '2019-09-12 11:28:19'),
(16, '5', 25479658, '21000', '', '2500.00', '18500.00', 'payed', '2019-09-12 11:28:29'),
(17, '5', 25479658, '21000', '', '2500.00', '18500.00', 'hgg', '2019-09-12 11:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
CREATE TABLE IF NOT EXISTS `staffs` (
  `staff_id` int(10) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gross` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `designation` text COLLATE utf8_unicode_ci NOT NULL,
  `date_reg` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`staff_id`, `full_name`, `phone_no`, `id_number`, `address`, `email`, `gross`, `designation`, `date_reg`) VALUES
(1, 'Jared Kipyegon', '0727464637', '93847478', 'Nandi', 'mail@mail.com', '', '', '2019-08-25 15:32:10.000000'),
(2, 'Nelson Kosgei', '0724796451', '30308798', '78', 'key@gmail.com', '', '', '2019-08-25 15:41:32.000000'),
(5, 'Alfred Cherusei', '0771 632 146', '25479658', '20-30700', 'cherusei@premium.com', '21000', '', '2019-09-08 18:27:17.000000'),
(4, 'Brenda Arunga', '0221 467 891', '24508798', '78', 'brenda@yahoo.com', '16500', '', '2019-09-08 11:47:19.000000'),
(7, 'Dickson Muteti', '0733 145 687', '54789213', '21 Machakos', 'muteti@premium.com', '16500', 'Driver', '2019-09-08 21:18:18.000000');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `sindex` int(6) NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `openingBa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dateo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` text COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `chequeName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `accNo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sindex`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`sindex`, `supplierName`, `openingBa`, `dateo`, `address`, `company`, `fullname`, `mobile`, `email`, `chequeName`, `accNo`, `date`) VALUES
(1, 'Canon Product ltd', '30250', '10/09/2019', '45-ELD', '', 'Morris Okech', '0780 936 258', 'moris@keringet.com', 'Canon Product Ltd', 'undefined', '2019-09-09 17:13:59'),
(2, 'NATIONAL OIL', '125000', '10/09/2019', '3034 KITALE', '', 'WANYAMA', '0745 869 741', 'wanyama@yahoo.com', 'NATIONAL OIL', 'undefined', '2019-09-09 17:20:05'),
(3, 'ELDORET STATIONARIES', '12000', '10/09/2019', '25 ELD', '', 'Brenda Jerop', '0727 831 546', 'brenda@gmail.com', 'ELDORET STATIONARIES', 'undefined', '2019-09-09 17:24:11'),
(5, 'skytech', '12000', '', '', 'skytech ltd', 'awino okech', '0745 698 231', 'brenda@gmail.com', 'skytech ltd', '325469', '2019-09-09 21:40:24'),
(6, 'microhub', '10', '2019-01-09', 'eldoret', 'microhub limited', 'david kipchumba', '0723 654 897', 'kipchumba@yahoo.com', 'microhub limited', '145789', '2019-09-09 21:42:14'),
(7, 'Olive Twist', '20000', '', 'Eldoret', 'Olive Twist', 'Maina Kamanda', '0737 646 474', 'mail@mail.com', 'Maina Kamanda', '0101010101010', '2019-09-09 23:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
CREATE TABLE IF NOT EXISTS `trip` (
  `indextrip` int(6) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `route` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pass` int(20) NOT NULL,
  `tfare` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `water` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `commission` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `income` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`indextrip`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`indextrip`, `vehicle`, `route`, `pass`, `tfare`, `water`, `commission`, `income`, `datecreated`) VALUES
(4, '1', '3', 11, '6600.00', '200', '700', '4800.00', '2019-08-27 16:43:06.000000'),
(5, '3', '7', 11, '11000.00', '200', '700', '9200.00', '2019-08-27 19:14:47.000000'),
(6, '1', '7', 11, '11000.00', '200', '700', '9200.00', '2019-08-29 07:42:16.000000'),
(7, '3', '3', 11, '6050.00', '200', '700', '5150.00', '2019-08-30 06:22:31.000000');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id_vehicle` int(5) NOT NULL AUTO_INCREMENT,
  `make` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `plates` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `driver` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `route` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id_vehicle`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id_vehicle`, `make`, `plates`, `owner`, `driver`, `route`, `date`) VALUES
(1, 'Toyota Hiace', 'KBA 383R', '4', '1', '5', '2019-08-24 10:53:15.000000'),
(2, 'Nissan Caravan', 'KBA 484R', '3', '1', '3', '2019-08-24 10:56:42.000000'),
(3, 'Toyota Hiace', 'KAC 484R', '2', '2', '2', '2019-08-24 11:05:15.000000');

-- --------------------------------------------------------

--
-- Table structure for table `water`
--

DROP TABLE IF EXISTS `water`;
CREATE TABLE IF NOT EXISTS `water` (
  `indexx` int(6) NOT NULL AUTO_INCREMENT,
  `no_pass` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `price_bottle` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `total_cost` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`indexx`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `water`
--

INSERT INTO `water` (`indexx`, `no_pass`, `price_bottle`, `total_cost`, `date`) VALUES
(1, '0', 'Ksh 50', 'Ksh 550', '2019-08-20'),
(2, '0', 'Ksh 45', 'Ksh 450', '2019-08-20'),
(3, '-pass', 'Ksh 50', 'Ksh 450', '2019-08-20'),
(4, '11', '50', '550', '2019-08-21'),
(5, '11', '50', '', '2019-08-21');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
