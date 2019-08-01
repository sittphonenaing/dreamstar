-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2017 at 11:36 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aa2000`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset_archive`
--

CREATE TABLE `asset_archive` (
  `productID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `quantity` int(20) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_depreciation`
--

CREATE TABLE `asset_depreciation` (
  `item_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `salvage_val` int(11) NOT NULL,
  `years` int(11) NOT NULL,
  `depmed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_depreciation`
--

INSERT INTO `asset_depreciation` (`item_id`, `price`, `salvage_val`, `years`, `depmed`) VALUES
(1, 20000, 500, 5, 2),
(2, 15000, 200, 5, 1),
(3, 1500, 200, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
  `KeyID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Date_time` varchar(50) NOT NULL,
  `Outcome` varchar(20) NOT NULL,
  `Detail` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`KeyID`, `ID`, `User`, `Date_time`, `Outcome`, `Detail`) VALUES
(1, 4, 'DAVIS_SERVER', 'March 7, 2017 3:49:pm  ', 'Deleted', 'CustomerID 1 Name Richmon Sabello Message was deleted!'),
(2, 4, 'DAVIS_SERVER', 'March 7, 2017 3:49:pm  ', 'Deleted', 'CustomerID 3 Name Julius Felicen Message was deleted!'),
(3, 4, 'DAVIS_SERVER', 'March 7, 2017 3:49:pm  ', 'Deleted', 'CustomerID 4 Name Leo Aranzamendez Message was deleted!'),
(4, 4, 'DAVIS_SERVER', 'March 15, 2017 6:06:pm  ', 'Inserted', 'Announcement = JRU New Announcement was created'),
(5, 4, 'DAVIS_SERVER', 'April 6, 2017 12:08:pm  ', 'Move', 'CustomerID 1 Name= Richmon was move to Archive'),
(6, 4, 'DAVIS_SERVER', 'April 6, 2017 12:22:pm  ', 'Inserted', 'Name= iPhone 6 (16gb Space Grey,Silver) was added to product '),
(7, 4, 'DAVIS_SERVER', 'April 6, 2017 12:23:pm  ', 'Updated', 'ID= 12, name= iPhone 6 (16gb Space Grey,Silver), price= Php 400.00, details= Updated, quantity= 6 was Updated'),
(8, 0, '', 'April 6, 2017 1:17:pm  ', 'Deleted', 'Product ID 1 was permanently deleted!'),
(9, 0, '', 'April 6, 2017 1:17:pm  ', 'Deleted', 'Product ID 2 was permanently deleted!'),
(10, 0, '', 'April 6, 2017 1:17:pm  ', 'Deleted', 'Product ID 3 was permanently deleted!'),
(11, 0, '', 'April 6, 2017 1:17:pm  ', 'Deleted', 'Product ID 4 was permanently deleted!'),
(12, 0, '', 'April 6, 2017 1:17:pm  ', 'Deleted', 'Product ID 5 was permanently deleted!'),
(13, 0, '', 'April 6, 2017 1:17:pm  ', 'Deleted', 'Product ID 6 was permanently deleted!'),
(14, 0, '', 'April 6, 2017 1:17:pm  ', 'Deleted', 'Product ID 7 was permanently deleted!'),
(15, 0, '', 'April 6, 2017 1:17:pm  ', 'Deleted', 'Product ID 8 was permanently deleted!'),
(16, 0, '', 'April 6, 2017 1:17:pm  ', 'Deleted', 'Product ID 9 was permanently deleted!'),
(17, 0, '', 'April 6, 2017 1:17:pm  ', 'Deleted', 'Product ID 10 was permanently deleted!'),
(18, 0, '', 'April 6, 2017 1:17:pm  ', 'Deleted', 'Product ID 11 was permanently deleted!'),
(19, 4, 'DAVIS_SERVER', 'April 6, 2017 1:19:pm  ', 'Updated', 'ID= 12, name= iPhone 6 (16gb Space Grey,Silver), price= Php 400.00, details= Updated, quantity= 6 was Updated'),
(20, 4, 'DAVIS_SERVER', 'April 6, 2017 1:29:pm  ', 'Updated', 'image= products/iphone 7 black .jpg where productID= 12 was updated'),
(21, 4, 'DAVIS_SERVER', 'April 6, 2017 1:33:pm  ', 'Updated', 'image= products/iphone 7 black .jpg where productID= 12 was updated'),
(22, 4, 'DAVIS_SERVER', 'April 6, 2017 1:33:pm  ', 'Updated', 'ID= 12, name= iPhone 7 (32GB Black), price= Php 965.95, details= Updated, quantity= 15 was Updated'),
(23, 4, 'DAVIS_SERVER', 'April 6, 2017 1:34:pm  ', 'Updated', 'ID= 12, name= iPhone 7 (32GB Black), price= Php 750.00, details= Updated, quantity= 15 was Updated'),
(24, 4, 'DAVIS_SERVER', 'April 6, 2017 1:36:pm  ', 'Inserted', 'Name= iPhone 7 (32GB Gold) was added to product '),
(25, 4, 'DAVIS_SERVER', 'April 6, 2017 1:37:pm  ', 'Inserted', 'Name= iPhone 7 (32GB Rose Gold) was added to product '),
(26, 4, 'DAVIS_SERVER', 'April 6, 2017 1:39:pm  ', 'Inserted', 'Name= iPhone 7 (32GB Silver) was added to product '),
(27, 4, 'DAVIS_SERVER', 'April 6, 2017 1:39:pm  ', 'Updated', 'ID= 12, name= Apple iPhone 7 (32GB Black), price= Php 750.00, details= Updated, quantity= 15 was Updated'),
(28, 4, 'DAVIS_SERVER', 'April 6, 2017 1:39:pm  ', 'Updated', 'ID= 13, name= Apple iPhone 7 (32GB Gold), price= Php 730.00, details= Updated, quantity= 15 was Updated'),
(29, 4, 'DAVIS_SERVER', 'April 6, 2017 1:39:pm  ', 'Updated', 'ID= 14, name= Apple iPhone 7 (32GB Rose Gold), price= Php 780.00, details= Updated, quantity= 20 was Updated'),
(30, 4, 'DAVIS_SERVER', 'April 6, 2017 1:40:pm  ', 'Updated', 'ID= 15, name= Apple iPhone 7 (32GB Silver), price= Php 730.00, details= Updated, quantity= 12 was Updated'),
(31, 4, 'DAVIS_SERVER', 'April 6, 2017 2:08:pm  ', 'Inserted', 'Name= iPhone 7 (128GB Black) was added to product '),
(32, 4, 'DAVIS_SERVER', 'April 6, 2017 2:10:pm  ', 'Inserted', 'Name= iPhone 7 (128GB Gold) was added to product '),
(33, 4, 'DAVIS_SERVER', 'April 6, 2017 2:11:pm  ', 'Inserted', 'Name= iPhone 7 (128GB Red) was added to product '),
(34, 4, 'DAVIS_SERVER', 'April 6, 2017 2:12:pm  ', 'Inserted', 'Name= iPhone 7 (128GB Rose Gold) was added to product '),
(35, 4, 'DAVIS_SERVER', 'April 6, 2017 2:13:pm  ', 'Inserted', 'Name= iPhone 7 (128GB Silver) was added to product '),
(36, 4, 'DAVIS_SERVER', 'April 6, 2017 2:15:pm  ', 'Inserted', 'Name= iPhone 7 (256GB Gold) was added to product '),
(37, 4, 'DAVIS_SERVER', 'April 6, 2017 2:16:pm  ', 'Inserted', 'Name= iPhone 7 (256GB Jet Black) was added to product '),
(38, 4, 'DAVIS_SERVER', 'April 6, 2017 2:19:pm  ', 'Inserted', 'Name= Apple iPhone 7 (256GB Silver) was added to product '),
(39, 4, 'DAVIS_SERVER', 'April 6, 2017 2:20:pm  ', 'Inserted', 'Name= Apple iPhone 7 (256GB Rose Gold) was added to product '),
(40, 4, 'DAVIS_SERVER', 'April 6, 2017 2:21:pm  ', 'Inserted', 'Name= iPhone 7 (256GB Black) was added to product '),
(41, 4, 'DAVIS_SERVER', 'April 6, 2017 2:26:pm  ', 'Inserted', 'Name= Apple iPhone 6s (32GB Gold) was added to product '),
(42, 4, 'DAVIS_SERVER', 'April 6, 2017 2:26:pm  ', 'Inserted', 'Name= Apple iPhone 6s (32GB Rose Gold) was added to product '),
(43, 4, 'DAVIS_SERVER', 'April 6, 2017 2:27:pm  ', 'Inserted', 'Name= Apple iPhone 6s (32GB Silver) was added to product '),
(44, 4, 'DAVIS_SERVER', 'April 6, 2017 2:29:pm  ', 'Inserted', 'Name= Apple iPhone 6s (128GB Space Grey) was added to product '),
(45, 4, 'DAVIS_SERVER', 'April 6, 2017 2:30:pm  ', 'Inserted', 'Name= Apple iPhone 6s (128GB Gold) was added to product '),
(46, 4, 'DAVIS_SERVER', 'April 6, 2017 2:31:pm  ', 'Inserted', 'Name= Apple iPhone 6s (128GB Rose Gold) was added to product '),
(47, 4, 'DAVIS_SERVER', 'April 6, 2017 2:31:pm  ', 'Inserted', 'Name= Apple iPhone 6s (128GB Silver) was added to product '),
(48, 4, 'DAVIS_SERVER', 'April 6, 2017 2:36:pm  ', 'Inserted', 'Name= Samsung Galaxy S7(32 Black Onyx) was added to product '),
(49, 4, 'DAVIS_SERVER', 'April 6, 2017 2:37:pm  ', 'Inserted', 'Name= Samsung Galaxy S7(32 Gold Platinum) was added to product '),
(50, 4, 'DAVIS_SERVER', 'April 6, 2017 2:38:pm  ', 'Inserted', 'Name= Samsung Galaxy S7(32 Pink Gold) was added to product '),
(51, 4, 'DAVIS_SERVER', 'April 6, 2017 2:40:pm  ', 'Inserted', 'Name= Samsung Galaxy S7 Edge(32 Black Onyx) was added to product '),
(52, 4, 'DAVIS_SERVER', 'April 6, 2017 2:41:pm  ', 'Inserted', 'Name= Samsung Galaxy S7 Edge(32 Pink Gold) was added to product '),
(53, 4, 'DAVIS_SERVER', 'April 6, 2017 2:42:pm  ', 'Inserted', 'Name= Samsung Galaxy S7 Edge(32 Blue Coral) was added to product '),
(54, 4, 'DAVIS_SERVER', 'April 6, 2017 2:44:pm  ', 'Inserted', 'Name= Samsung Galaxy A3(16GB Gold Stand) was added to product '),
(55, 4, 'DAVIS_SERVER', 'April 6, 2017 2:46:pm  ', 'Inserted', 'Name= Samsung Galaxy A3(16GB Black Sky) was added to product '),
(56, 4, 'DAVIS_SERVER', 'April 6, 2017 2:50:pm  ', 'Inserted', 'Name= Sony Xperiaâ„¢ XZ (32GB Forest Blue) was added to product '),
(57, 4, 'DAVIS_SERVER', 'April 6, 2017 2:53:pm  ', 'Inserted', 'Name= Sony Xperia  X(32GB Graphite Black) was added to product '),
(58, 4, 'DAVIS_SERVER', 'April 6, 2017 2:53:pm  ', 'Inserted', 'Name= Sony Xperia  X(32GB Rose Gold) was added to product '),
(59, 4, 'DAVIS_SERVER', 'April 6, 2017 2:57:pm  ', 'Inserted', 'Name= Sony Xperia  XA(16GB Graphite Black ) was added to product '),
(60, 4, 'DAVIS_SERVER', 'April 6, 2017 2:58:pm  ', 'Inserted', 'Name= Sony Xperia  XA(16GB Lime Gold  ) was added to product '),
(61, 4, 'DAVIS_SERVER', 'April 6, 2017 3:03:pm  ', 'Inserted', 'Name= LG G5 (32GB Titan) was added to product '),
(62, 4, 'DAVIS_SERVER', 'April 6, 2017 3:05:pm  ', 'Inserted', 'Name= LG K3(16GB Indigo Blue) was added to product '),
(63, 4, 'DAVIS_SERVER', 'April 6, 2017 3:31:pm  ', 'Inserted', 'Name= Lenovo P2 (32GB Grey) was added to product '),
(64, 4, 'DAVIS_SERVER', 'April 6, 2017 3:40:pm  ', 'Updated', 'image=upload/s8 plus.png where announcementID=1 was Updated'),
(65, 4, 'DAVIS_SERVER', 'April 6, 2017 3:42:pm  ', 'Updated', 'name=PROMO FOR The Day, detail=Updated, date=April 6, 2017 3:42:pm  , place=Yangon where announcementID=1 Updated'),
(66, 4, 'DAVIS_SERVER', 'April 6, 2017 4:44:pm  ', 'Inserted', 'Name= Samsung Galaxy S8 Plus(32GB Midnight Black) was added to product '),
(67, 4, 'DAVIS_SERVER', 'April 6, 2017 4:46:pm  ', 'Inserted', 'Name= Samsung Galaxy S8 Plus(32GB Orchid Grey) was added to product '),
(68, 4, 'DAVIS_SERVER', 'April 6, 2017 4:46:pm  ', 'Deleted', 'ProductID= 2, PROMO FOR The Day was permanently Deleted!'),
(69, 4, 'DAVIS_SERVER', 'April 6, 2017 4:46:pm  ', 'Deleted', 'ProductID= 3, JRU was permanently Deleted!'),
(70, 5, 'admin', 'April 6, 2017 5:11:pm  ', 'Updated', 'name=PRE ORDER!!, detail=Updated, date=April 6, 2017 5:11:pm  , place=Yangon where announcementID=1 Updated'),
(71, 5, 'admin', 'April 6, 2017 5:12:pm  ', 'Inserted', 'Announcement = iPhone 7 (128GB Red) Available Now!! New Announcement was created'),
(72, 5, 'admin', 'April 6, 2017 6:36:pm  ', 'Updated', 'ID= 12, name= Apple iPhone 7 (32GB Black), price= Php 750.00, details= Updated, quantity= 15 was Updated'),
(73, 5, 'admin', 'April 6, 2017 6:36:pm  ', 'Inserted', 'Name= Asdf was added to product '),
(74, 5, 'admin', 'April 6, 2017 6:37:pm  ', 'Deleted', 'Product ID 51 was permanently deleted!'),
(75, 5, 'admin', 'April 6, 2017 6:41:pm  ', 'Updated', 'ID= 13, name= Apple iPhone 7 (32GB Gold), price= Php 0.00, details= Updated, quantity= 9 was Updated'),
(76, 5, 'admin', 'April 6, 2017 6:41:pm  ', 'Updated', 'ID= 13, name= Apple iPhone 7 (32GB Gold), price= Php 750.00, details= Updated, quantity= 9 was Updated'),
(77, 5, 'admin', 'April 7, 2017 4:58:am  ', 'Deleted', 'Archive Customer ID 1 was permanently deleted!');

-- --------------------------------------------------------

--
-- Table structure for table `backup_dbname`
--

CREATE TABLE `backup_dbname` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `Num` int(11) NOT NULL,
  `announcementID` int(11) NOT NULL,
  `Comment` varchar(500) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `date_posted` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `Firstname` char(50) NOT NULL,
  `Middle_name` char(50) NOT NULL,
  `Lastname` char(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Contact_number` varchar(50) NOT NULL,
  `Gender` char(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `Firstname`, `Middle_name`, `Lastname`, `Birthday`, `Address`, `City`, `Contact_number`, `Gender`, `Email`, `Password`, `Date_created`, `status`) VALUES
(2, 'Benjie', 'Ilano', 'Alfanta', '1995-11-30', 'Pureza st. sta mesa manila', 'Manila City', '09364987102', 'Male', 'benjiealfanta@yahoo.com', 'a432fa61bf0d91ad0c3d2b26ae8ace94', 'April 2, 2017 11:35:pm  ', 'active'),
(3, 'Julius', 'Dela pena', 'Felicen', '1995-07-31', 'Flood way black 1', 'Taytay Rizal', '09109223103', 'Male', 'juliusfelicen@yahoo.com', 'fb154fdee061037d6f6bcec2eecfe688', 'March 12, 2017 4:07:pm  ', 'active'),
(4, 'Leo', 'Bonife', 'Aranzamendez', '1995-09-29', '369 Wayan,Palali', 'Manila City', '09364987102', 'Male', 'itchigo.aranzamendez@yahoo.com', '8eef495e2875ec79e82dd886e58f26bd', 'March 12, 2017 4:08:pm  ', 'active'),
(5, 'Allan', 'Carada', 'Aparis', '1974-12-27', '17 edsa', 'Mandaluyong City', '5715693', 'Male', 'aa2000ent@gmail.com', 'dfc91587736b342423abefd7a2328de4', 'March 26, 2017 2:14:pm  ', 'active'),
(6, 'Raffy', 'Bardon', 'Sabello', '1985-02-03', '522A Sen. Neptali Gonzales St. San Jose, Sitio IV, Mandaluyong City', 'Mandaluyong City', '09364987102', 'Male', 'sabellorap@yahoo.com', '25f9e794323b453885f5181f1b624d0b', 'March 16, 2017 12:56:am  ', 'active'),
(7, 'Thar', 'Thar', 'Thar', '1998-01-14', 'Yangon', 'Yangon', '12345', 'Male', 'b@gmail.com', 'addcee786387fc00d19f935771e79faf', 'April 5, 2017 5:58:am  ', 'inactive'),
(8, 'Sitt', 'Phone', 'Naing', '1998-01-14', '12/Thudamasary Street', 'Yangon City', '09420007925', 'Male', 'sittphonenaing@gmail.com', 'addcee786387fc00d19f935771e79faf', 'April 6, 2017 7:10:pm  ', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `customer_archive`
--

CREATE TABLE `customer_archive` (
  `CustomerID` int(11) NOT NULL,
  `Firstname` char(50) NOT NULL,
  `Middle_name` char(50) NOT NULL,
  `Lastname` char(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Contact_number` varchar(50) NOT NULL,
  `Gender` char(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_archive`
--

INSERT INTO `customer_archive` (`CustomerID`, `Firstname`, `Middle_name`, `Lastname`, `Birthday`, `Address`, `City`, `Contact_number`, `Gender`, `Email`, `Password`, `Date_created`) VALUES
(1, 'Richmon', 'Bardon', 'Sabello', '1995-09-15', '522A Sen. Neptali Gonzales St. San Jose, Sitio IV, Mandaluyong City', 'Mandaluyong City', '09434138521', 'Male', 'sabellorichmon@yahoo.com', '11a00f3677902d1dec0aeccacc16d464', 'August 5, 2015 11:34:pm  ');

-- --------------------------------------------------------

--
-- Table structure for table `dep_method`
--

CREATE TABLE `dep_method` (
  `methodID` int(11) NOT NULL,
  `dep_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dep_method`
--

INSERT INTO `dep_method` (`methodID`, `dep_method`) VALUES
(1, 'Straight Line Depreciation'),
(2, 'Double Declining Balance Depreciation');

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `category_id` int(10) NOT NULL,
  `item_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`category_id`, `item_name`) VALUES
(1, 'Office Machine'),
(2, 'Computer Accessories'),
(3, 'Furniture'),
(4, 'Filing & Storage'),
(5, 'Office Supplies');

-- --------------------------------------------------------

--
-- Table structure for table `loginout_history`
--

CREATE TABLE `loginout_history` (
  `Primary` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginout_history`
--

INSERT INTO `loginout_history` (`Primary`, `CustomerID`, `User`, `Name`, `Time_in`, `Time_out`) VALUES
(1, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 7, 2017 5:26:pm  ', 'March 16, 2017 12:55:am  '),
(2, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 11, 2017 1:52:pm  ', 'March 16, 2017 12:55:am  '),
(3, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 11, 2017 2:07:pm  ', 'March 16, 2017 12:55:am  '),
(4, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 13, 2017 10:41:pm  ', 'March 16, 2017 12:55:am  '),
(5, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 14, 2017 11:11:am  ', 'March 16, 2017 12:55:am  '),
(6, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 14, 2017 1:56:pm  ', 'March 16, 2017 12:55:am  '),
(7, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 15, 2017 3:11:pm  ', 'September 16, 2017 12:55:am  '),
(8, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 15, 2017 4:14:pm  ', 'September 16, 2017 12:55:am  '),
(9, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 15, 2017 6:05:pm  ', 'September 16, 2017 12:55:am  '),
(10, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 15, 2017 6:06:pm  ', 'September 16, 2017 12:55:am  '),
(11, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 15, 2017 10:18:pm  ', 'September 16, 2017 12:55:am  '),
(12, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 15, 2017 11:09:pm  ', 'September 16, 2017 12:55:am  '),
(13, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 16, 2017 12:55:am  ', 'September 16, 2017 12:55:am  '),
(14, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'March 16, 2017 12:55:am  ', 'September 16, 2017 12:55:am  '),
(15, 6, 'sabellorap@yahoo.com', 'Raffy', 'March 16, 2017 1:26:am  ', 'September 16, 2017 1:30:am  '),
(16, 6, 'sabellorap@yahoo.com', 'Raffy', 'March 16, 2017 1:30:am  ', 'September 16, 2017 1:30:am  '),
(17, 7, 'a@gmail.com', 'Asdf', 'April 5, 2017 5:58:am  ', 'April 6, 2017 7:54:pm  '),
(18, 7, 'a@gmail.com', 'Asdf', 'April 5, 2017 7:16:am  ', 'April 6, 2017 7:54:pm  '),
(19, 7, 'a@gmail.com', 'Asdf', 'April 5, 2017 7:16:am  ', 'April 6, 2017 7:54:pm  '),
(20, 7, 'a@gmail.com', 'Asdf', 'April 6, 2017 12:13:am  ', 'April 6, 2017 7:54:pm  '),
(21, 7, 'a@gmail.com', 'Asdf', 'April 6, 2017 1:05:am  ', 'April 6, 2017 7:54:pm  '),
(22, 7, 'a@gmail.com', 'Asdf', 'April 6, 2017 1:08:am  ', 'April 6, 2017 7:54:pm  '),
(23, 7, 'a@gmail.com', 'Asdf', 'April 6, 2017 1:23:am  ', 'April 6, 2017 7:54:pm  '),
(24, 7, 'a@gmail.com', 'Asdf', 'April 6, 2017 1:28:am  ', 'April 6, 2017 7:54:pm  '),
(25, 7, 'a@gmail.com', 'Asdf', 'April 6, 2017 1:33:am  ', 'April 6, 2017 7:54:pm  '),
(26, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 1:10:pm  ', 'April 6, 2017 7:54:pm  '),
(27, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 1:12:pm  ', 'April 6, 2017 7:54:pm  '),
(28, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 1:29:pm  ', 'April 6, 2017 7:54:pm  '),
(29, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 2:22:pm  ', 'April 6, 2017 7:54:pm  '),
(30, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 3:13:pm  ', 'April 6, 2017 7:54:pm  '),
(31, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 3:30:pm  ', 'April 6, 2017 7:54:pm  '),
(32, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 4:38:pm  ', 'April 6, 2017 7:54:pm  '),
(33, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 5:01:pm  ', 'April 6, 2017 7:54:pm  '),
(34, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 5:13:pm  ', 'April 6, 2017 7:54:pm  '),
(35, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 6:47:pm  ', 'April 6, 2017 7:54:pm  '),
(36, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 6:53:pm  ', 'April 6, 2017 7:54:pm  '),
(37, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 7:01:pm  ', 'April 6, 2017 7:54:pm  '),
(38, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 7:29:pm  ', 'April 6, 2017 7:54:pm  '),
(39, 7, 'b@gmail.com', 'Thar', 'April 6, 2017 7:35:pm  ', 'April 6, 2017 7:54:pm  '),
(40, 7, 'b@gmail.com', 'Thar', 'April 7, 2017 5:07:am  ', '');

-- --------------------------------------------------------

--
-- Table structure for table `loginout_serverhistory`
--

CREATE TABLE `loginout_serverhistory` (
  `Primary` int(11) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginout_serverhistory`
--

INSERT INTO `loginout_serverhistory` (`Primary`, `AdminID`, `User`, `Name`, `Time_in`, `Time_out`) VALUES
(1, 3, 'JULIUS_ADS', 'Julius  Felicen', 'March 7, 2017 6:31:pm  ', 'March 11, 2017 2:30:pm '),
(2, 2, 'LEO_AS', 'Leo Aranzamendez', 'March 7, 2017 6:34:pm  ', 'March 13, 2017 10:25:pm '),
(3, 2, 'LEO_AS', 'Leo Aranzamendez', 'March 7, 2017 6:34:pm  ', 'March 13, 2017 10:25:pm '),
(4, 1, 'BENJIE_OOS', 'Benjie I. Alfanta', 'March 7, 2017 6:35:pm  ', 'March 15, 2017 11:08:pm '),
(5, 3, 'JULIUS_ADS', 'Julius  Felicen', 'March 11, 2017 2:29:pm  ', 'March 11, 2017 2:30:pm '),
(6, 2, 'LEO_AS', 'Leo Aranzamendez', 'March 11, 2017 2:30:pm  ', 'March 13, 2017 10:25:pm '),
(7, 1, 'BENJIE_OOS', 'Benjie I. Alfanta', 'March 11, 2017 2:31:pm  ', 'March 15, 2017 11:08:pm '),
(8, 2, 'LEO_AS', 'Leo Aranzamendez', 'March 13, 2017 10:16:pm  ', 'March 13, 2017 10:25:pm '),
(9, 1, 'BENJIE_OOS', 'Benjie I. Alfanta', 'March 14, 2017 1:55:pm  ', 'March 15, 2017 11:08:pm '),
(10, 1, 'BENJIE_OOS', 'Benjie I. Alfanta', 'March 15, 2017 11:07:pm  ', 'March 15, 2017 11:08:pm ');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `ID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`ID`, `CustomerID`, `Name`, `Email`, `Subject`, `Message`, `Date_created`, `Status`) VALUES
(1, 1, 'Richmon Sabello', 'sabellorichmon@yahoo.com', 'wqe`s', 'sdasdasda', 'March 15, 2017 9:21:pm  ', 'Seen'),
(2, 7, 'Thar Thar', 'b@gmail.com', 'asdf', 'asdfads', 'April 6, 2017 6:55:pm  ', '');

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `notifID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_ordered` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notif`
--

INSERT INTO `notif` (`notifID`, `orderID`, `status`, `date_ordered`) VALUES
(2, 2, 'Seen', '2017-04-04'),
(9, 9, 'Seen', '2017-04-06'),
(10, 10, 'Seen', '2017-04-06'),
(11, 11, '', '2017-04-06'),
(12, 12, '', '2017-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `total` varchar(30) NOT NULL,
  `orderdate` date NOT NULL,
  `Date_paid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `deliverystatus` varchar(50) NOT NULL,
  `Transaction_code` varchar(50) NOT NULL,
  `tax` int(11) NOT NULL,
  `shipping_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `customerID`, `total`, `orderdate`, `Date_paid`, `status`, `deliverystatus`, `Transaction_code`, `tax`, `shipping_address`) VALUES
(2, 7, '120000', '2017-04-04', 'April 6, 2017 6:44:pm  ', 'Confirmed', 'Undelivered', 'AA0027', 14400, 'asdfasdfasdf San Juan City'),
(9, 7, '780', '2017-04-06', 'April 6, 2017 8:17:pm  ', 'Confirmed', 'Delivered', 'AA0097', 94, '12/Thudamasary street,Myittarnut Ward Yangon City'),
(10, 7, '7800', '2017-04-06', 'April 7, 2017 5:14:am  ', 'Confirmed', 'Delivered', 'AA00107', 936, '12/1234/ksadlkf Yangon City'),
(11, 7, '750', '2017-04-06', '', 'Pending', '', 'AA00117', 90, '12/Thudamasary street,Myittarnut Ward Yangon City'),
(12, 7, '1530', '2017-04-06', '', 'Pending', '', 'AA00127', 184, '12/Thudamasary street,Myittarnut Ward Yangon City');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `CustomerID` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `ProductID` int(10) NOT NULL,
  `Total` int(10) NOT NULL,
  `Total_qty` varchar(50) NOT NULL,
  `OrderID` varchar(10) NOT NULL,
  `Orderdetailsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`CustomerID`, `Quantity`, `ProductID`, `Total`, `Total_qty`, `OrderID`, `Orderdetailsid`) VALUES
(7, 15, 1, 120000, '80', '2', 2),
(7, 1, 14, 780, '18', '9', 15),
(7, 10, 14, 7800, '8', '10', 16),
(7, 1, 12, 750, '13', '11', 17),
(7, 1, 13, 750, '5', '12', 18),
(7, 1, 14, 780, '7', '12', 19);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) NOT NULL,
  `trasaction_id` varchar(600) NOT NULL,
  `payer_fname` varchar(300) NOT NULL,
  `payer_lname` varchar(300) NOT NULL,
  `payer_address` varchar(300) NOT NULL,
  `payer_city` varchar(300) NOT NULL,
  `payer_country` varchar(300) NOT NULL,
  `payer_email` text NOT NULL,
  `posted_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reply_message`
--

CREATE TABLE `reply_message` (
  `Primary_key` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Recipient` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `From_admin` varchar(50) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply_message`
--

INSERT INTO `reply_message` (`Primary_key`, `CustomerID`, `Recipient`, `Email`, `From_admin`, `Message`, `Date_created`, `Status`) VALUES
(1, 1, 'Richmon Sabello', 'sabellorichmon@yahoo.com', 'Richmon Davis B. Sabello', 'thank you', 'March 15, 2017 9:22:pm  ', 'Seen');

-- --------------------------------------------------------

--
-- Table structure for table `sent_messages`
--

CREATE TABLE `sent_messages` (
  `ID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sent_messages`
--

INSERT INTO `sent_messages` (`ID`, `CustomerID`, `Name`, `Email`, `Subject`, `Message`, `Date_created`, `Status`) VALUES
(1, 1, 'Richmon Sabello', 'sabellorichmon@yahoo.com', 'wqe`s', 'sdasdasda', 'March 17, 2015 9:21:pm  ', ''),
(2, 7, 'Thar Thar', 'b@gmail.com', 'asdf', 'asdfads', 'April 6, 2017 6:55:pm  ', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_announcement`
--

CREATE TABLE `tb_announcement` (
  `announcementID` int(11) NOT NULL,
  `detail` text NOT NULL,
  `date` datetime NOT NULL,
  `name` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_announcement`
--

INSERT INTO `tb_announcement` (`announcementID`, `detail`, `date`, `name`, `place`, `image`, `status`) VALUES
(1, '$40-$90 Per Month', '2017-04-06 14:11:00', 'PRE ORDER!!', 'Yangon', 'upload/s8 plus.png', 'Seen'),
(2, '', '2017-04-06 15:42:00', 'iPhone 7 (128GB Red) Available Now!!', 'DreamStar', 'upload/red.jpg', 'Seen');

-- --------------------------------------------------------

--
-- Table structure for table `tb_equipment`
--

CREATE TABLE `tb_equipment` (
  `item_id` int(11) NOT NULL,
  `item_code` text NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `brand_name` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `employee_id` varchar(250) NOT NULL,
  `item_category` int(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `supplier_id` varchar(250) NOT NULL,
  `date_post` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_equipment`
--

INSERT INTO `tb_equipment` (`item_id`, `item_code`, `item_name`, `brand_name`, `price`, `employee_id`, `item_category`, `status`, `supplier_id`, `date_post`) VALUES
(1, 'JHasdks6328HYd', 'Laptop', 'ASUS', 20000, 'Mark Dave ', 2, 'Damage', 'Deeco', '2017-03-13'),
(2, '43dsffc234htyet', 'Desktop', 'ACER', 15000, 'Rhea Dela Crus', 2, 'Good', 'Deeco', '2017-03-13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_productreport`
--

CREATE TABLE `tb_productreport` (
  `ProductID` int(11) NOT NULL,
  `Beg_qty` varchar(50) NOT NULL,
  `updated_qty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_productreport`
--

INSERT INTO `tb_productreport` (`ProductID`, `Beg_qty`, `updated_qty`) VALUES
(12, '6', '15'),
(13, '15', '9'),
(14, '20', '20'),
(15, '12', '12'),
(16, '20', ''),
(17, '18', ''),
(18, '20', ''),
(19, '19', ''),
(20, '25', ''),
(21, '32', ''),
(22, '19', ''),
(23, '17', ''),
(24, '14', ''),
(25, '13', ''),
(26, '15', ''),
(27, '15', ''),
(28, '13', ''),
(29, '14', ''),
(30, '7', ''),
(31, '25', ''),
(32, '32', ''),
(33, '17', ''),
(34, '30', ''),
(35, '32', ''),
(36, '25', ''),
(37, '31', ''),
(38, '32', ''),
(39, '25', ''),
(40, '45', ''),
(41, '20', ''),
(42, '32', ''),
(43, '31', ''),
(44, '32', ''),
(45, '42', ''),
(46, '43', ''),
(47, '22', ''),
(48, '15', ''),
(49, '15', ''),
(50, '14', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_products`
--

CREATE TABLE `tb_products` (
  `productID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `quantity` int(20) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_products`
--

INSERT INTO `tb_products` (`productID`, `name`, `price`, `image`, `details`, `quantity`, `date_created`) VALUES
(12, 'Apple iPhone 7 (32GB Black)', 750, 'products/iphone 7 black .jpg', 'Network:\r\nTechnology:\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 27(800), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps, EV-DO Rev.A 3.1 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, September\r\nStatus:\r\nAvailable. Released 2016, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n138 g (4.87 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nIP67 certified dust and water resistant, Water resistant up to 1 meter and 30 minutes, Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\nWide color gamut display, 3D Touch display & home button, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 10.0.1\r\nChipset:\r\nApple A10 Fusion\r\nCPU:\r\nQuad-core\r\nGPU:\r\n(six-core graphics)\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n256 GB, GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nSecondary:\r\n7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Lightning to 3.5 mm headphone jack adapter incl.\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nSiri natural language commands and dictation, iCloud cloud service, MP3/WAV/AAX+/AIFF/Apple Lossless player, MP4/H.264 player, Audio/video/photo editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 1960 mAh battery (7.45 Wh)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 40 h', 13, 'April 6, 2017 12:22:pm  '),
(13, 'Apple iPhone 7 (32GB Gold)', 750, 'products/iphone 7 gold.jpg', 'Network:\r\nTechnology:\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 27(800), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps, EV-DO Rev.A 3.1 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, September\r\nStatus:\r\nAvailable. Released 2016, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n138 g (4.87 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nIP67 certified dust and water resistant, Water resistant up to 1 meter and 30 minutes, Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\nWide color gamut display, 3D Touch display & home button, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 10.0.1\r\nChipset:\r\nApple A10 Fusion\r\nCPU:\r\nQuad-core\r\nGPU:\r\n(six-core graphics)\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n32 GB, GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nSecondary:\r\n7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Lightning to 3.5 mm headphone jack adapter incl.\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nSiri natural language commands and dictation, iCloud cloud service, MP3/WAV/AAX+/AIFF/Apple Lossless player, MP4/H.264 player, Audio/video/photo editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 1960 mAh battery (7.45 Wh)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 40 h\r\n', 5, 'April 6, 2017 1:36:pm  '),
(14, 'Apple iPhone 7 (32GB Rose Gold)', 780, 'products/iphone 7 rose gold.jpg', 'Network:\r\nTechnology:\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 27(800), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps, EV-DO Rev.A 3.1 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, September\r\nStatus:\r\nAvailable. Released 2016, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n138 g (4.87 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nIP67 certified dust and water resistant, Water resistant up to 1 meter and 30 minutes, Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\nWide color gamut display, 3D Touch display & home button, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 10.0.1\r\nChipset:\r\nApple A10 Fusion\r\nCPU:\r\nQuad-core\r\nGPU:\r\n(six-core graphics)\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n32 GB, GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nSecondary:\r\n7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Lightning to 3.5 mm headphone jack adapter incl.\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nSiri natural language commands and dictation, iCloud cloud service, MP3/WAV/AAX+/AIFF/Apple Lossless player, MP4/H.264 player, Audio/video/photo editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 1960 mAh battery (7.45 Wh)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 40 h', 7, 'April 6, 2017 1:37:pm  '),
(15, 'Apple iPhone 7 (32GB Silver)', 730, 'products/iphone 7 silver.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat6 300/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2015, September\r\nStatus:\r\nAvailable. Released 2015, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n143 g (5.04 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nFingerprint sensor (Touch ID v2), Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\n3D Touch display, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 9, upgradable to iOS 9.0.1\r\nChipset:\r\nApple A9\r\nCPU:\r\nDual-core 1.8 GHz\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n32 GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, 4608 x 2592 pixels, phase detection autofocus, dual-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@60fps,1080p@120fps, 720p@240fps\r\nSecondary:\r\n5 MP, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nAccelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Siri natural language commands and dictation, iCloud cloud service, iCloud Keychain, TV-out, Maps, Organizer, Document editor, Photo/video editor\r\nBattery:\r\n \r\nNon-removable Li-Po 1715 mAh battery (6.9 Wh)\r\nStand-by:\r\nUp to 240 h (3G)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 50 h', 10, 'April 6, 2017 1:39:pm  '),
(16, 'iPhone 7 (128GB Black)', 840, 'products/iphone 7 128 black.jpg', 'Network:\r\nTechnology:\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 27(800), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps, EV-DO Rev.A 3.1 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, September\r\nStatus:\r\nAvailable. Released 2016, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n138 g (4.87 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nIP67 certified dust and water resistant, Water resistant up to 1 meter and 30 minutes, Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\nWide color gamut display, 3D Touch display & home button, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 10.0.1\r\nChipset:\r\nApple A10 Fusion\r\nCPU:\r\nQuad-core\r\nGPU:\r\n(six-core graphics)\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n128 GB, GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nSecondary:\r\n7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Lightning to 3.5 mm headphone jack adapter incl.\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nSiri natural language commands and dictation, iCloud cloud service, MP3/WAV/AAX+/AIFF/Apple Lossless player, MP4/H.264 player, Audio/video/photo editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 1960 mAh battery (7.45 Wh)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 40 h\r\n', 20, 'April 6, 2017 2:08:pm  '),
(17, 'iPhone 7 (128GB Gold)', 820, 'products/iphone 7 gold.jpg', 'Network:\r\nTechnology:\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 27(800), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps, EV-DO Rev.A 3.1 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, September\r\nStatus:\r\nAvailable. Released 2016, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n138 g (4.87 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nIP67 certified dust and water resistant, Water resistant up to 1 meter and 30 minutes, Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\nWide color gamut display, 3D Touch display & home button, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 10.0.1\r\nChipset:\r\nApple A10 Fusion\r\nCPU:\r\nQuad-core\r\nGPU:\r\n(six-core graphics)\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n128 GB, GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nSecondary:\r\n7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Lightning to 3.5 mm headphone jack adapter incl.\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nSiri natural language commands and dictation, iCloud cloud service, MP3/WAV/AAX+/AIFF/Apple Lossless player, MP4/H.264 player, Audio/video/photo editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 1960 mAh battery (7.45 Wh)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 40 h\r\n', 18, 'April 6, 2017 2:10:pm  '),
(18, 'iPhone 7 (128GB Red)', 900, 'products/iphone 7 red.jpg', 'Network:\r\nTechnology:\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 27(800), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps, EV-DO Rev.A 3.1 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, September\r\nStatus:\r\nAvailable. Released 2016, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n138 g (4.87 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nIP67 certified dust and water resistant, Water resistant up to 1 meter and 30 minutes, Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\nWide color gamut display, 3D Touch display & home button, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 10.0.1\r\nChipset:\r\nApple A10 Fusion\r\nCPU:\r\nQuad-core\r\nGPU:\r\n(six-core graphics)\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n128 GB, GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nSecondary:\r\n7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Lightning to 3.5 mm headphone jack adapter incl.\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nSiri natural language commands and dictation, iCloud cloud service, MP3/WAV/AAX+/AIFF/Apple Lossless player, MP4/H.264 player, Audio/video/photo editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 1960 mAh battery (7.45 Wh)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 40 h\r\n', 20, 'April 6, 2017 2:11:pm  '),
(19, 'iPhone 7 (128GB Rose Gold)', 850, 'products/iphone 7 rose gold.jpg', 'Network:\r\nTechnology:\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 27(800), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps, EV-DO Rev.A 3.1 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, September\r\nStatus:\r\nAvailable. Released 2016, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n138 g (4.87 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nIP67 certified dust and water resistant, Water resistant up to 1 meter and 30 minutes, Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\nWide color gamut display, 3D Touch display & home button, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 10.0.1\r\nChipset:\r\nApple A10 Fusion\r\nCPU:\r\nQuad-core\r\nGPU:\r\n(six-core graphics)\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n128 GB, GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nSecondary:\r\n7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Lightning to 3.5 mm headphone jack adapter incl.\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nSiri natural language commands and dictation, iCloud cloud service, MP3/WAV/AAX+/AIFF/Apple Lossless player, MP4/H.264 player, Audio/video/photo editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 1960 mAh battery (7.45 Wh)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 40 h\r\n', 19, 'April 6, 2017 2:12:pm  '),
(20, 'iPhone 7 (128GB Silver)', 830, 'products/iphone 7 silver.jpg', 'Network:\r\nTechnology:\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 27(800), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps, EV-DO Rev.A 3.1 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, September\r\nStatus:\r\nAvailable. Released 2016, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n138 g (4.87 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nIP67 certified dust and water resistant, Water resistant up to 1 meter and 30 minutes, Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\nWide color gamut display, 3D Touch display & home button, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 10.0.1\r\nChipset:\r\nApple A10 Fusion\r\nCPU:\r\nQuad-core\r\nGPU:\r\n(six-core graphics)\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n128 GB, GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nSecondary:\r\n7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Lightning to 3.5 mm headphone jack adapter incl.\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nSiri natural language commands and dictation, iCloud cloud service, MP3/WAV/AAX+/AIFF/Apple Lossless player, MP4/H.264 player, Audio/video/photo editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 1960 mAh battery (7.45 Wh)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 40 h\r\n', 25, 'April 6, 2017 2:13:pm  '),
(21, 'iPhone 7 (256GB Gold)', 950, 'products/iphone 7 gold.jpg', 'Network:\r\nTechnology:\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 27(800), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps, EV-DO Rev.A 3.1 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, September\r\nStatus:\r\nAvailable. Released 2016, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n138 g (4.87 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nIP67 certified dust and water resistant, Water resistant up to 1 meter and 30 minutes, Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\nWide color gamut display, 3D Touch display & home button, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 10.0.1\r\nChipset:\r\nApple A10 Fusion\r\nCPU:\r\nQuad-core\r\nGPU:\r\n(six-core graphics)\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n256 GB, GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nSecondary:\r\n7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Lightning to 3.5 mm headphone jack adapter incl.\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nSiri natural language commands and dictation, iCloud cloud service, MP3/WAV/AAX+/AIFF/Apple Lossless player, MP4/H.264 player, Audio/video/photo editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 1960 mAh battery (7.45 Wh)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 40 h\r\n', 32, 'April 6, 2017 2:15:pm  '),
(22, 'iPhone 7 (256GB Jet Black)', 965, 'products/iphone 7 black .jpg', 'Network:\r\nTechnology:\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 27(800), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps, EV-DO Rev.A 3.1 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, September\r\nStatus:\r\nAvailable. Released 2016, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n138 g (4.87 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nIP67 certified dust and water resistant, Water resistant up to 1 meter and 30 minutes, Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\nWide color gamut display, 3D Touch display & home button, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 10.0.1\r\nChipset:\r\nApple A10 Fusion\r\nCPU:\r\nQuad-core\r\nGPU:\r\n(six-core graphics)\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n256 GB, GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nSecondary:\r\n7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Lightning to 3.5 mm headphone jack adapter incl.\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nSiri natural language commands and dictation, iCloud cloud service, MP3/WAV/AAX+/AIFF/Apple Lossless player, MP4/H.264 player, Audio/video/photo editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 1960 mAh battery (7.45 Wh)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 40 h\r\n', 19, 'April 6, 2017 2:16:pm  '),
(23, 'Apple iPhone 7 (256GB Silver)', 965, 'products/iphone 7 silver.jpg', 'Network:\r\nTechnology:\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 27(800), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps, EV-DO Rev.A 3.1 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, September\r\nStatus:\r\nAvailable. Released 2016, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n138 g (4.87 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nIP67 certified dust and water resistant, Water resistant up to 1 meter and 30 minutes, Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\nWide color gamut display, 3D Touch display & home button, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 10.0.1\r\nChipset:\r\nApple A10 Fusion\r\nCPU:\r\nQuad-core\r\nGPU:\r\n(six-core graphics)\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n256 GB, GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nSecondary:\r\n7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Lightning to 3.5 mm headphone jack adapter incl.\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nSiri natural language commands and dictation, iCloud cloud service, MP3/WAV/AAX+/AIFF/Apple Lossless player, MP4/H.264 player, Audio/video/photo editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 1960 mAh battery (7.45 Wh)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 40 h\r\n', 17, 'April 6, 2017 2:19:pm  '),
(24, 'Apple iPhone 7 (256GB Rose Gold)', 965, 'products/iphone 7 rose gold.jpg', 'Network:\r\nTechnology:\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 27(800), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps, EV-DO Rev.A 3.1 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, September\r\nStatus:\r\nAvailable. Released 2016, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n138 g (4.87 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nIP67 certified dust and water resistant, Water resistant up to 1 meter and 30 minutes, Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\nWide color gamut display, 3D Touch display & home button, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 10.0.1\r\nChipset:\r\nApple A10 Fusion\r\nCPU:\r\nQuad-core\r\nGPU:\r\n(six-core graphics)\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n256 GB, GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nSecondary:\r\n7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Lightning to 3.5 mm headphone jack adapter incl.\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nSiri natural language commands and dictation, iCloud cloud service, MP3/WAV/AAX+/AIFF/Apple Lossless player, MP4/H.264 player, Audio/video/photo editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 1960 mAh battery (7.45 Wh)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 40 h\r\n', 14, 'April 6, 2017 2:20:pm  '),
(25, 'iPhone 7 (256GB Black)', 965, 'products/iphone 7 black .jpg', 'Network:\r\nTechnology:\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 27(800), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps, EV-DO Rev.A 3.1 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, September\r\nStatus:\r\nAvailable. Released 2016, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n138 g (4.87 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nIP67 certified dust and water resistant, Water resistant up to 1 meter and 30 minutes, Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\nWide color gamut display, 3D Touch display & home button, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 10.0.1\r\nChipset:\r\nApple A10 Fusion\r\nCPU:\r\nQuad-core\r\nGPU:\r\n(six-core graphics)\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n256 GB, GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nSecondary:\r\n7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Lightning to 3.5 mm headphone jack adapter incl.\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nSiri natural language commands and dictation, iCloud cloud service, MP3/WAV/AAX+/AIFF/Apple Lossless player, MP4/H.264 player, Audio/video/photo editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 1960 mAh battery (7.45 Wh)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 40 h\r\n', 13, 'April 6, 2017 2:21:pm  '),
(26, 'Apple iPhone 6s (32GB Gold)', 650, 'products/iphone 7 gold.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat6 300/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2015, September\r\nStatus:\r\nAvailable. Released 2015, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n143 g (5.04 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nFingerprint sensor (Touch ID v2), Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\n3D Touch display, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 9, upgradable to iOS 9.0.1\r\nChipset:\r\nApple A9\r\nCPU:\r\nDual-core 1.8 GHz\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n32 GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, 4608 x 2592 pixels, phase detection autofocus, dual-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@60fps,1080p@120fps, 720p@240fps\r\nSecondary:\r\n5 MP, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nAccelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Siri natural language commands and dictation, iCloud cloud service, iCloud Keychain, TV-out, Maps, Organizer, Document editor, Photo/video editor\r\nBattery:\r\n \r\nNon-removable Li-Po 1715 mAh battery (6.9 Wh)\r\nStand-by:\r\nUp to 240 h (3G)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 50 h\r\n', 15, 'April 6, 2017 2:26:pm  '),
(27, 'Apple iPhone 6s (32GB Rose Gold)', 660, 'products/iphone 7 rose gold.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat6 300/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2015, September\r\nStatus:\r\nAvailable. Released 2015, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n143 g (5.04 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nFingerprint sensor (Touch ID v2), Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\n3D Touch display, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 9, upgradable to iOS 9.0.1\r\nChipset:\r\nApple A9\r\nCPU:\r\nDual-core 1.8 GHz\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n32 GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, 4608 x 2592 pixels, phase detection autofocus, dual-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@60fps,1080p@120fps, 720p@240fps\r\nSecondary:\r\n5 MP, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nAccelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Siri natural language commands and dictation, iCloud cloud service, iCloud Keychain, TV-out, Maps, Organizer, Document editor, Photo/video editor\r\nBattery:\r\n \r\nNon-removable Li-Po 1715 mAh battery (6.9 Wh)\r\nStand-by:\r\nUp to 240 h (3G)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 50 h\r\n', 15, 'April 6, 2017 2:26:pm  '),
(28, 'Apple iPhone 6s (32GB Silver)', 660, 'products/iphone 7 silver.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat6 300/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2015, September\r\nStatus:\r\nAvailable. Released 2015, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n143 g (5.04 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nFingerprint sensor (Touch ID v2), Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\n3D Touch display, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 9, upgradable to iOS 9.0.1\r\nChipset:\r\nApple A9\r\nCPU:\r\nDual-core 1.8 GHz\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n32 GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, 4608 x 2592 pixels, phase detection autofocus, dual-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@60fps,1080p@120fps, 720p@240fps\r\nSecondary:\r\n5 MP, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nAccelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Siri natural language commands and dictation, iCloud cloud service, iCloud Keychain, TV-out, Maps, Organizer, Document editor, Photo/video editor\r\nBattery:\r\n \r\nNon-removable Li-Po 1715 mAh battery (6.9 Wh)\r\nStand-by:\r\nUp to 240 h (3G)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 50 h\r\n', 13, 'April 6, 2017 2:27:pm  ');
INSERT INTO `tb_products` (`productID`, `name`, `price`, `image`, `details`, `quantity`, `date_created`) VALUES
(29, 'Apple iPhone 6s (128GB Space Grey)', 730, 'products/iphone 7 space grey.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat6 300/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2015, September\r\nStatus:\r\nAvailable. Released 2015, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n143 g (5.04 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nFingerprint sensor (Touch ID v2), Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\n3D Touch display, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 9, upgradable to iOS 9.0.1\r\nChipset:\r\nApple A9\r\nCPU:\r\nDual-core 1.8 GHz\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n32 GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, 4608 x 2592 pixels, phase detection autofocus, dual-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@60fps,1080p@120fps, 720p@240fps\r\nSecondary:\r\n5 MP, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nAccelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Siri natural language commands and dictation, iCloud cloud service, iCloud Keychain, TV-out, Maps, Organizer, Document editor, Photo/video editor\r\nBattery:\r\n \r\nNon-removable Li-Po 1715 mAh battery (6.9 Wh)\r\nStand-by:\r\nUp to 240 h (3G)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 50 h\r\n', 14, 'April 6, 2017 2:29:pm  '),
(30, 'Apple iPhone 6s (128GB Gold)', 730, 'products/iphone 7 gold.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat6 300/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2015, September\r\nStatus:\r\nAvailable. Released 2015, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n143 g (5.04 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nFingerprint sensor (Touch ID v2), Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\n3D Touch display, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 9, upgradable to iOS 9.0.1\r\nChipset:\r\nApple A9\r\nCPU:\r\nDual-core 1.8 GHz\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n32 GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, 4608 x 2592 pixels, phase detection autofocus, dual-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@60fps,1080p@120fps, 720p@240fps\r\nSecondary:\r\n5 MP, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nAccelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Siri natural language commands and dictation, iCloud cloud service, iCloud Keychain, TV-out, Maps, Organizer, Document editor, Photo/video editor\r\nBattery:\r\n \r\nNon-removable Li-Po 1715 mAh battery (6.9 Wh)\r\nStand-by:\r\nUp to 240 h (3G)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 50 h\r\n', 7, 'April 6, 2017 2:30:pm  '),
(31, 'Apple iPhone 6s (128GB Rose Gold)', 730, 'products/iphone 7 rose gold.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat6 300/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2015, September\r\nStatus:\r\nAvailable. Released 2015, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n143 g (5.04 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nFingerprint sensor (Touch ID v2), Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\n3D Touch display, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 9, upgradable to iOS 9.0.1\r\nChipset:\r\nApple A9\r\nCPU:\r\nDual-core 1.8 GHz\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n32 GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, 4608 x 2592 pixels, phase detection autofocus, dual-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@60fps,1080p@120fps, 720p@240fps\r\nSecondary:\r\n5 MP, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nAccelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Siri natural language commands and dictation, iCloud cloud service, iCloud Keychain, TV-out, Maps, Organizer, Document editor, Photo/video editor\r\nBattery:\r\n \r\nNon-removable Li-Po 1715 mAh battery (6.9 Wh)\r\nStand-by:\r\nUp to 240 h (3G)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 50 h\r\n', 25, 'April 6, 2017 2:31:pm  '),
(32, 'Apple iPhone 6s (128GB Silver)', 730, 'products/iphone 7 silver.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 28(700), 29(700), 30(2300), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat6 300/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2015, September\r\nStatus:\r\nAvailable. Released 2015, September\r\nBody:\r\nDimensions:\r\n138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight:\r\n143 g (5.04 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nFingerprint sensor (Touch ID v2), Apple Pay (Visa, MasterCard, AMEX certified)\r\nDisplay:\r\nType:\r\nLED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~65.6% screen-to-body ratio)\r\nResolution:\r\n750 x 1334 pixels (~326 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nIon-strengthened glass, oleophobic coating\r\n \r\n3D Touch display, Display Zoom\r\nPlatform:\r\nOS:\r\niOS 9, upgradable to iOS 9.0.1\r\nChipset:\r\nApple A9\r\nCPU:\r\nDual-core 1.8 GHz\r\nMemory:\r\nCard slot:\r\nNo\r\nInternal:\r\n32 GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, 4608 x 2592 pixels, phase detection autofocus, dual-LED (dual tone) flash\r\nFeatures:\r\nGeo-tagging, simultaneous 4K video and 8MP image recording, touch focus, face/smile detection, HDR (photo/panorama)\r\nVideo:\r\n2160p@30fps, 1080p@60fps,1080p@120fps, 720p@240fps\r\nSecondary:\r\n5 MP, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSound:\r\nAlert types:\r\nVibration, proprietary ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes (Apple Pay only)\r\nRadio:\r\nNo\r\nUSB:\r\nv2.0, reversible connector\r\nFeatures:\r\nSensors:\r\nAccelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\niMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser:\r\nHTML5 (Safari)\r\nJava:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Siri natural language commands and dictation, iCloud cloud service, iCloud Keychain, TV-out, Maps, Organizer, Document editor, Photo/video editor\r\nBattery:\r\n \r\nNon-removable Li-Po 1715 mAh battery (6.9 Wh)\r\nStand-by:\r\nUp to 240 h (3G)\r\nTalk time:\r\nUp to 14 h (3G)\r\nMusic play:\r\nUp to 50 h\r\n', 32, 'April 6, 2017 2:31:pm  '),
(33, 'Samsung Galaxy S7(32 Black Onyx)', 580, 'products/samsaung galaxy s7 black.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2\r\n3G bands:\r\nHSDPA 850 / 900 / 1900 / 2100 SIM 1\r\n4G bands:\r\nLTE Band 2100 (B1), 700 (B17), 850 (B5), 1700/2100 (B4), 1800 (B3), 2600 (B7), 1900 (B2), 800 (B18), 900 (B8), 800 (B20), 1900 (B25), 700 (B12), 800 (B26), TD-LTE2600 (B38), 800 (B19), TD-LTE2500 (B41), TD-LTE2300 (B40), TD-LTE1900 (B39), 700 (B28), TD-LTE3500 (B42) SIM 1\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, March\r\nBody:\r\nDimensions:\r\n142.4 x 69.6 x 7.9 mm (5.61 x 2.74 x 0.31 in)\r\nWeight:\r\n152 g (5.36 oz)\r\nBuild:\r\nCorning Gorilla Glass 4 back panel\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\n \r\nSamsung Pay (Visa, MasterCard certified), IP68 certified dust proof and water resistant over 1.5 meter and 30 minutes\r\nDisplay:\r\nType:\r\nSuper AMOLED capacitive touchscreen, 16M colors\r\nSize:\r\n5.1 inches (~72.1% screen-to-body ratio)\r\nResolution:\r\n1440 x 2560 pixels (~577 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nCorning Gorilla Glass 4\r\n \r\nAlways-on display, TouchWiz UI\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0 (Marshmallow)\r\nChipset:\r\nExynos 8890 Octa\r\nCPU:\r\nQuad-core 2.6 GHz Mongoose + quad-core 1.6 GHz Cortex-A53\r\nGPU:\r\nMali-T880 MP12\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 200 GB (uses SIM 2 slot)\r\nInternal:\r\n32 GB, 4 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.7, 26mm, phase detection autofocus, OIS, LED flash\r\nFeatures:\r\n1/2.6 sensor size, 1.4 pixel size, geo-tagging, simultaneous 4K video and 9MP image recording, touch focus, face/smile detection, Auto HDR, panorama\r\nVideo:\r\n2160p@30fps, 1080p@60fps, 720p@240fps, HDR, dual-video rec.\r\nSecondary:\r\n5 MP, f/1.7, 22mm, dual video call, Auto HDR\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE, apt-X\r\nGPS:\r\nYes, with A-GPS, GLONASS, BDS\r\nNFC:\r\nYes\r\nRadio:\r\nNo\r\nUSB:\r\nmicroUSB v2.0, USB Host\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer, heart rate, SpO2\r\nMessaging:\r\nSMS(threaded view), MMS, Email, Push Mail, IM\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nFast battery charging: 60% in 30 min (Quick Charge 2.0), Wireless charging (Qi/PMA) market dependent, ANT+ support, S-Voice natural language commands and dictation, OneDrive (115 GB cloud storage), Active noise cancellation with dedicated mic, MP4/DivX/XviD/WMV/H.264 player, MP3/WAV/WMA/eAAC+/Flac player, Photo/video editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 3000 mAh battery\r\nStand-by:\r\nN/A\r\nTalk time:\r\nN/A\r\n', 17, 'April 6, 2017 2:36:pm  '),
(34, 'Samsung Galaxy S7(32 Gold Platinum)', 580, 'products/samsaung galaxy s7 gold platinum.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2\r\n3G bands:\r\nHSDPA 850 / 900 / 1900 / 2100 SIM 1\r\n4G bands:\r\nLTE Band 2100 (B1), 700 (B17), 850 (B5), 1700/2100 (B4), 1800 (B3), 2600 (B7), 1900 (B2), 800 (B18), 900 (B8), 800 (B20), 1900 (B25), 700 (B12), 800 (B26), TD-LTE2600 (B38), 800 (B19), TD-LTE2500 (B41), TD-LTE2300 (B40), TD-LTE1900 (B39), 700 (B28), TD-LTE3500 (B42) SIM 1\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, March\r\nBody:\r\nDimensions:\r\n142.4 x 69.6 x 7.9 mm (5.61 x 2.74 x 0.31 in)\r\nWeight:\r\n152 g (5.36 oz)\r\nBuild:\r\nCorning Gorilla Glass 4 back panel\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\n \r\nSamsung Pay (Visa, MasterCard certified), IP68 certified dust proof and water resistant over 1.5 meter and 30 minutes\r\nDisplay:\r\nType:\r\nSuper AMOLED capacitive touchscreen, 16M colors\r\nSize:\r\n5.1 inches (~72.1% screen-to-body ratio)\r\nResolution:\r\n1440 x 2560 pixels (~577 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nCorning Gorilla Glass 4\r\n \r\nAlways-on display, TouchWiz UI\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0 (Marshmallow)\r\nChipset:\r\nExynos 8890 Octa\r\nCPU:\r\nQuad-core 2.6 GHz Mongoose + quad-core 1.6 GHz Cortex-A53\r\nGPU:\r\nMali-T880 MP12\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 200 GB (uses SIM 2 slot)\r\nInternal:\r\n32 GB, 4 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.7, 26mm, phase detection autofocus, OIS, LED flash\r\nFeatures:\r\n1/2.6 sensor size, 1.4 pixel size, geo-tagging, simultaneous 4K video and 9MP image recording, touch focus, face/smile detection, Auto HDR, panorama\r\nVideo:\r\n2160p@30fps, 1080p@60fps, 720p@240fps, HDR, dual-video rec.\r\nSecondary:\r\n5 MP, f/1.7, 22mm, dual video call, Auto HDR\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE, apt-X\r\nGPS:\r\nYes, with A-GPS, GLONASS, BDS\r\nNFC:\r\nYes\r\nRadio:\r\nNo\r\nUSB:\r\nmicroUSB v2.0, USB Host\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer, heart rate, SpO2\r\nMessaging:\r\nSMS(threaded view), MMS, Email, Push Mail, IM\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nFast battery charging: 60% in 30 min (Quick Charge 2.0), Wireless charging (Qi/PMA) market dependent, ANT+ support, S-Voice natural language commands and dictation, OneDrive (115 GB cloud storage), Active noise cancellation with dedicated mic, MP4/DivX/XviD/WMV/H.264 player, MP3/WAV/WMA/eAAC+/Flac player, Photo/video editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 3000 mAh battery\r\nStand-by:\r\nN/A\r\nTalk time:\r\nN/A\r\n', 30, 'April 6, 2017 2:37:pm  '),
(35, 'Samsung Galaxy S7(32 Pink Gold)', 580, 'products/samsaung galaxy s7 pink gold .jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2\r\n3G bands:\r\nHSDPA 850 / 900 / 1900 / 2100 SIM 1\r\n4G bands:\r\nLTE Band 2100 (B1), 700 (B17), 850 (B5), 1700/2100 (B4), 1800 (B3), 2600 (B7), 1900 (B2), 800 (B18), 900 (B8), 800 (B20), 1900 (B25), 700 (B12), 800 (B26), TD-LTE2600 (B38), 800 (B19), TD-LTE2500 (B41), TD-LTE2300 (B40), TD-LTE1900 (B39), 700 (B28), TD-LTE3500 (B42) SIM 1\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, March\r\nBody:\r\nDimensions:\r\n142.4 x 69.6 x 7.9 mm (5.61 x 2.74 x 0.31 in)\r\nWeight:\r\n152 g (5.36 oz)\r\nBuild:\r\nCorning Gorilla Glass 4 back panel\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\n \r\nSamsung Pay (Visa, MasterCard certified), IP68 certified dust proof and water resistant over 1.5 meter and 30 minutes\r\nDisplay:\r\nType:\r\nSuper AMOLED capacitive touchscreen, 16M colors\r\nSize:\r\n5.1 inches (~72.1% screen-to-body ratio)\r\nResolution:\r\n1440 x 2560 pixels (~577 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nCorning Gorilla Glass 4\r\n \r\nAlways-on display, TouchWiz UI\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0 (Marshmallow)\r\nChipset:\r\nExynos 8890 Octa\r\nCPU:\r\nQuad-core 2.6 GHz Mongoose + quad-core 1.6 GHz Cortex-A53\r\nGPU:\r\nMali-T880 MP12\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 200 GB (uses SIM 2 slot)\r\nInternal:\r\n32 GB, 4 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.7, 26mm, phase detection autofocus, OIS, LED flash\r\nFeatures:\r\n1/2.6 sensor size, 1.4 pixel size, geo-tagging, simultaneous 4K video and 9MP image recording, touch focus, face/smile detection, Auto HDR, panorama\r\nVideo:\r\n2160p@30fps, 1080p@60fps, 720p@240fps, HDR, dual-video rec.\r\nSecondary:\r\n5 MP, f/1.7, 22mm, dual video call, Auto HDR\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE, apt-X\r\nGPS:\r\nYes, with A-GPS, GLONASS, BDS\r\nNFC:\r\nYes\r\nRadio:\r\nNo\r\nUSB:\r\nmicroUSB v2.0, USB Host\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer, heart rate, SpO2\r\nMessaging:\r\nSMS(threaded view), MMS, Email, Push Mail, IM\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nFast battery charging: 60% in 30 min (Quick Charge 2.0), Wireless charging (Qi/PMA) market dependent, ANT+ support, S-Voice natural language commands and dictation, OneDrive (115 GB cloud storage), Active noise cancellation with dedicated mic, MP4/DivX/XviD/WMV/H.264 player, MP3/WAV/WMA/eAAC+/Flac player, Photo/video editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 3000 mAh battery\r\nStand-by:\r\nN/A\r\nTalk time:\r\nN/A\r\n', 32, 'April 6, 2017 2:38:pm  '),
(36, 'Samsung Galaxy S7 Edge(32 Black Onyx)', 530, 'products/samsaung galaxy s7 black.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2\r\n3G bands:\r\nHSDPA 850 / 900 / 1900 / 2100 SIM 1\r\n4G bands:\r\nLTE Band 2100 (B1), 700 (B17), 850 (B5), 1700/2100 (B4), 1800 (B3), 2600 (B7), 1900 (B2), 800 (B18), 900 (B8), 800 (B20), 1900 (B25), 700 (B12), 800 (B26), TD-LTE2600 (B38), 800 (B19), TD-LTE2500 (B41), TD-LTE2300 (B40), TD-LTE1900 (B39), 700 (B28), TD-LTE3500 (B42) SIM 1\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, March\r\nBody:\r\nDimensions:\r\n142.4 x 69.6 x 7.9 mm (5.61 x 2.74 x 0.31 in)\r\nWeight:\r\n152 g (5.36 oz)\r\nBuild:\r\nCorning Gorilla Glass 4 back panel\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\n \r\nSamsung Pay (Visa, MasterCard certified), IP68 certified dust proof and water resistant over 1.5 meter and 30 minutes\r\nDisplay:\r\nType:\r\nSuper AMOLED capacitive touchscreen, 16M colors\r\nSize:\r\n5.1 inches (~72.1% screen-to-body ratio)\r\nResolution:\r\n1440 x 2560 pixels (~577 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nCorning Gorilla Glass 4\r\n \r\nAlways-on display, TouchWiz UI\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0 (Marshmallow)\r\nChipset:\r\nExynos 8890 Octa\r\nCPU:\r\nQuad-core 2.6 GHz Mongoose + quad-core 1.6 GHz Cortex-A53\r\nGPU:\r\nMali-T880 MP12\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 200 GB (uses SIM 2 slot)\r\nInternal:\r\n32 GB, 4 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.7, 26mm, phase detection autofocus, OIS, LED flash\r\nFeatures:\r\n1/2.6 sensor size, 1.4 pixel size, geo-tagging, simultaneous 4K video and 9MP image recording, touch focus, face/smile detection, Auto HDR, panorama\r\nVideo:\r\n2160p@30fps, 1080p@60fps, 720p@240fps, HDR, dual-video rec.\r\nSecondary:\r\n5 MP, f/1.7, 22mm, dual video call, Auto HDR\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE, apt-X\r\nGPS:\r\nYes, with A-GPS, GLONASS, BDS\r\nNFC:\r\nYes\r\nRadio:\r\nNo\r\nUSB:\r\nmicroUSB v2.0, USB Host\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer, heart rate, SpO2\r\nMessaging:\r\nSMS(threaded view), MMS, Email, Push Mail, IM\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nFast battery charging: 60% in 30 min (Quick Charge 2.0), Wireless charging (Qi/PMA) market dependent, ANT+ support, S-Voice natural language commands and dictation, OneDrive (115 GB cloud storage), Active noise cancellation with dedicated mic, MP4/DivX/XviD/WMV/H.264 player, MP3/WAV/WMA/eAAC+/Flac player, Photo/video editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 3000 mAh battery\r\nStand-by:\r\nN/A\r\nTalk time:\r\nN/A\r\n', 25, 'April 6, 2017 2:40:pm  '),
(37, 'Samsung Galaxy S7 Edge(32 Pink Gold)', 530, 'products/samsaung galaxy s7 pink gold .jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2\r\n3G bands:\r\nHSDPA 850 / 900 / 1900 / 2100 SIM 1\r\n4G bands:\r\nLTE Band 2100 (B1), 700 (B17), 850 (B5), 1700/2100 (B4), 1800 (B3), 2600 (B7), 1900 (B2), 800 (B18), 900 (B8), 800 (B20), 1900 (B25), 700 (B12), 800 (B26), TD-LTE2600 (B38), 800 (B19), TD-LTE2500 (B41), TD-LTE2300 (B40), TD-LTE1900 (B39), 700 (B28), TD-LTE3500 (B42) SIM 1\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, March\r\nBody:\r\nDimensions:\r\n142.4 x 69.6 x 7.9 mm (5.61 x 2.74 x 0.31 in)\r\nWeight:\r\n152 g (5.36 oz)\r\nBuild:\r\nCorning Gorilla Glass 4 back panel\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\n \r\nSamsung Pay (Visa, MasterCard certified), IP68 certified dust proof and water resistant over 1.5 meter and 30 minutes\r\nDisplay:\r\nType:\r\nSuper AMOLED capacitive touchscreen, 16M colors\r\nSize:\r\n5.1 inches (~72.1% screen-to-body ratio)\r\nResolution:\r\n1440 x 2560 pixels (~577 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nCorning Gorilla Glass 4\r\n \r\nAlways-on display, TouchWiz UI\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0 (Marshmallow)\r\nChipset:\r\nExynos 8890 Octa\r\nCPU:\r\nQuad-core 2.6 GHz Mongoose + quad-core 1.6 GHz Cortex-A53\r\nGPU:\r\nMali-T880 MP12\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 200 GB (uses SIM 2 slot)\r\nInternal:\r\n32 GB, 4 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.7, 26mm, phase detection autofocus, OIS, LED flash\r\nFeatures:\r\n1/2.6 sensor size, 1.4 pixel size, geo-tagging, simultaneous 4K video and 9MP image recording, touch focus, face/smile detection, Auto HDR, panorama\r\nVideo:\r\n2160p@30fps, 1080p@60fps, 720p@240fps, HDR, dual-video rec.\r\nSecondary:\r\n5 MP, f/1.7, 22mm, dual video call, Auto HDR\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE, apt-X\r\nGPS:\r\nYes, with A-GPS, GLONASS, BDS\r\nNFC:\r\nYes\r\nRadio:\r\nNo\r\nUSB:\r\nmicroUSB v2.0, USB Host\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer, heart rate, SpO2\r\nMessaging:\r\nSMS(threaded view), MMS, Email, Push Mail, IM\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nFast battery charging: 60% in 30 min (Quick Charge 2.0), Wireless charging (Qi/PMA) market dependent, ANT+ support, S-Voice natural language commands and dictation, OneDrive (115 GB cloud storage), Active noise cancellation with dedicated mic, MP4/DivX/XviD/WMV/H.264 player, MP3/WAV/WMA/eAAC+/Flac player, Photo/video editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 3000 mAh battery\r\nStand-by:\r\nN/A\r\nTalk time:\r\nN/A\r\n', 31, 'April 6, 2017 2:41:pm  '),
(38, 'Samsung Galaxy S7 Edge(32 Blue Coral)', 580, 'products/samsaung galaxy s7 blue coral.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2\r\n3G bands:\r\nHSDPA 850 / 900 / 1900 / 2100 SIM 1\r\n4G bands:\r\nLTE Band 2100 (B1), 700 (B17), 850 (B5), 1700/2100 (B4), 1800 (B3), 2600 (B7), 1900 (B2), 800 (B18), 900 (B8), 800 (B20), 1900 (B25), 700 (B12), 800 (B26), TD-LTE2600 (B38), 800 (B19), TD-LTE2500 (B41), TD-LTE2300 (B40), TD-LTE1900 (B39), 700 (B28), TD-LTE3500 (B42) SIM 1\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, March\r\nBody:\r\nDimensions:\r\n142.4 x 69.6 x 7.9 mm (5.61 x 2.74 x 0.31 in)\r\nWeight:\r\n152 g (5.36 oz)\r\nBuild:\r\nCorning Gorilla Glass 4 back panel\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\n \r\nSamsung Pay (Visa, MasterCard certified), IP68 certified dust proof and water resistant over 1.5 meter and 30 minutes\r\nDisplay:\r\nType:\r\nSuper AMOLED capacitive touchscreen, 16M colors\r\nSize:\r\n5.1 inches (~72.1% screen-to-body ratio)\r\nResolution:\r\n1440 x 2560 pixels (~577 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nCorning Gorilla Glass 4\r\n \r\nAlways-on display, TouchWiz UI\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0 (Marshmallow)\r\nChipset:\r\nExynos 8890 Octa\r\nCPU:\r\nQuad-core 2.6 GHz Mongoose + quad-core 1.6 GHz Cortex-A53\r\nGPU:\r\nMali-T880 MP12\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 200 GB (uses SIM 2 slot)\r\nInternal:\r\n32 GB, 4 GB RAM\r\nCamera:\r\nPrimary:\r\n12 MP, f/1.7, 26mm, phase detection autofocus, OIS, LED flash\r\nFeatures:\r\n1/2.6 sensor size, 1.4 pixel size, geo-tagging, simultaneous 4K video and 9MP image recording, touch focus, face/smile detection, Auto HDR, panorama\r\nVideo:\r\n2160p@30fps, 1080p@60fps, 720p@240fps, HDR, dual-video rec.\r\nSecondary:\r\n5 MP, f/1.7, 22mm, dual video call, Auto HDR\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE, apt-X\r\nGPS:\r\nYes, with A-GPS, GLONASS, BDS\r\nNFC:\r\nYes\r\nRadio:\r\nNo\r\nUSB:\r\nmicroUSB v2.0, USB Host\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, compass, barometer, heart rate, SpO2\r\nMessaging:\r\nSMS(threaded view), MMS, Email, Push Mail, IM\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nFast battery charging: 60% in 30 min (Quick Charge 2.0), Wireless charging (Qi/PMA) market dependent, ANT+ support, S-Voice natural language commands and dictation, OneDrive (115 GB cloud storage), Active noise cancellation with dedicated mic, MP4/DivX/XviD/WMV/H.264 player, MP3/WAV/WMA/eAAC+/Flac player, Photo/video editor, Document editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 3000 mAh battery\r\nStand-by:\r\nN/A\r\nTalk time:\r\nN/A\r\n', 32, 'April 6, 2017 2:42:pm  '),
(39, 'Samsung Galaxy A3(16GB Gold Stand)', 360, 'products/samsaung galaxy a3 gold stand.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 5(850), 7(2600), 8(900), 20(800), TD-LTE 2300 (Bands 40)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE-A (2CA) Cat6 300/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2017, January\r\nStatus:\r\nAvailable. Released 2017, January\r\nBody:\r\nDimensions:\r\n135.4 x 66.2 x 7.9 mm (5.33 x 2.61 x 0.31 in)\r\nWeight:\r\n135 g (4.76 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nSamsung Pay, IP68 certified dust proof and water resistant over 1.5 meter and 30 minutes\r\nDisplay:\r\nType:\r\nSuper AMOLED capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~67.9% screen-to-body ratio)\r\nResolution:\r\n720 x 1280 pixels (~312 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nCorning Gorilla Glass (unspecified version)\r\n \r\nAlways-on display\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0.1 (Marshmallow)\r\nChipset:\r\nExynos 7870 Octa\r\nCPU:\r\nOcta-core 1.6 GHz Cortex-A53\r\nGPU:\r\nMali-T830\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 256 GB (dedicated slot)\r\nInternal:\r\n16 GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n13 MP, f/1.9, autofocus, LED flash\r\nFeatures:\r\nGeo-tagging, touch focus, face detection, panorama\r\nVideo:\r\n1080p@30fps\r\nSecondary:\r\n8 MP, f/1.9\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\n \r\nActive noise cancellation with dedicated mic\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS/ BDS (market dependant)\r\nNFC:\r\nYes\r\nRadio:\r\nFM radio\r\nUSB:\r\nType-C 1.0 reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint (front-mounted), accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\nSMS(threaded view), MMS, Email, Push Mail, IM\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nANT+ support, MP4/WMV/H.265 player, MP3/WAV/WMA/eAAC+/Flac player, Photo/video editor, Document viewer\r\nBattery:\r\n \r\nNon-removable Li-Ion 2350 mAh battery', 25, 'April 6, 2017 2:44:pm  '),
(40, 'Samsung Galaxy A3(16GB Black Sky)', 360, 'products/samsaung galaxy a3 black sky.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands:\r\nHSDPA 850 / 900 / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 5(850), 7(2600), 8(900), 20(800), TD-LTE 2300 (Bands 40)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE-A (2CA) Cat6 300/50 Mbps\r\nGPRS:\r\nYes\r\nEDGE:\r\nYes\r\nLaunch:\r\nAnnounced:\r\n2017, January\r\nStatus:\r\nAvailable. Released 2017, January\r\nBody:\r\nDimensions:\r\n135.4 x 66.2 x 7.9 mm (5.33 x 2.61 x 0.31 in)\r\nWeight:\r\n135 g (4.76 oz)\r\nSIM:\r\nNano-SIM\r\n \r\nSamsung Pay, IP68 certified dust proof and water resistant over 1.5 meter and 30 minutes\r\nDisplay:\r\nType:\r\nSuper AMOLED capacitive touchscreen, 16M colors\r\nSize:\r\n4.7 inches (~67.9% screen-to-body ratio)\r\nResolution:\r\n720 x 1280 pixels (~312 ppi pixel density)\r\nMultitouch:\r\nYes\r\nProtection:\r\nCorning Gorilla Glass (unspecified version)\r\n \r\nAlways-on display\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0.1 (Marshmallow)\r\nChipset:\r\nExynos 7870 Octa\r\nCPU:\r\nOcta-core 1.6 GHz Cortex-A53\r\nGPU:\r\nMali-T830\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 256 GB (dedicated slot)\r\nInternal:\r\n16 GB, 2 GB RAM\r\nCamera:\r\nPrimary:\r\n13 MP, f/1.9, autofocus, LED flash\r\nFeatures:\r\nGeo-tagging, touch focus, face detection, panorama\r\nVideo:\r\n1080p@30fps\r\nSecondary:\r\n8 MP, f/1.9\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\n \r\nActive noise cancellation with dedicated mic\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth:\r\nv4.2, A2DP, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS/ BDS (market dependant)\r\nNFC:\r\nYes\r\nRadio:\r\nFM radio\r\nUSB:\r\nType-C 1.0 reversible connector\r\nFeatures:\r\nSensors:\r\nFingerprint (front-mounted), accelerometer, gyro, proximity, compass, barometer\r\nMessaging:\r\nSMS(threaded view), MMS, Email, Push Mail, IM\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nANT+ support, MP4/WMV/H.265 player, MP3/WAV/WMA/eAAC+/Flac player, Photo/video editor, Document viewer\r\nBattery:\r\n \r\nNon-removable Li-Ion 2350 mAh battery', 45, 'April 6, 2017 2:46:pm  '),
(41, 'Sony Xperiaâ„¢ XZ (32GB Forest Blue)', 570, 'products/sony xperia xz.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2 (dual SIM model only)\r\n3G bands:\r\nHSDPA 800 / 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 19(800), 20(800), 26(850), 28(700), 29(700), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps\r\nGPRS:\r\nUp to 107 kbps\r\nEDGE:\r\nUp to 296 kbps\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, June\r\nBody:\r\nDimensions:\r\n143.7 x 70.4 x 8.7 mm (5.66 x 2.77 x 0.34 in)\r\nWeight:\r\n164.4 g (5.78 oz)\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\n \r\nIP68 certified dust proof and water resistant over 1.5 meter and 30 minutes\r\nDisplay:\r\nType:\r\nIPS LCD capacitive touchscreen, 16M colors\r\nSize:\r\n5.0 inches (~68.1% screen-to-body ratio)\r\nResolution:\r\n1080 x 1920 pixels (~441 ppi pixel density)\r\nMultitouch:\r\nYes, up to 10 fingers\r\nProtection:\r\nScratch-resistant glass, oleophobic coating\r\n \r\nTriluminos display, X-Reality Engine\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0.1 (Marshmallow)\r\nChipset:\r\nQualcomm MSM8996 Snapdragon 820\r\nCPU:\r\nDual-core 2.15 GHz Kryo & dual-core 1.6 GHz Kryo\r\nGPU:\r\nAdreno 530\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 256 GB (dedicated slot)\r\nInternal:\r\n64 GB, 3 GB RAM\r\nCamera:\r\nPrimary:\r\n23 MP, f/2.0, 24mm, phase detection autofocus, LED flash\r\nFeatures:\r\n1/2.3\' sensor size, geo-tagging, touch focus, face detection, HDR, panorama\r\nVideo:\r\n1080p@30fps, 1080p@60fps\r\nSecondary:\r\n13 MP, f/2.0, 22mm, 1/3\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nYes\r\n \r\n24-bit/192kHz audio, Active noise cancellation with dedicated mic\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, hotspot\r\nBluetooth:\r\nv4.2, A2DP, aptX, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes\r\nRadio:\r\nNo\r\nUSB:\r\nmicroUSB v2.0, USB Host\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, barometer, compass\r\nMessaging:\r\nSMS (threaded view), MMS, Email, IM, Push Email\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nFast battery charging: 60% in 30 min (Quick Charge 2.0), Xvid/MP4/H.265 player, MP3/eAAC+/WAV/Flac player, Document viewer, Photo/video editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 2700 mAh battery', 20, 'April 6, 2017 2:50:pm  '),
(42, 'Sony Xperia  X(32GB Graphite Black)', 572, 'products/sony xperia x graphite black.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2 (dual SIM model only)\r\n3G bands:\r\nHSDPA 800 / 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 19(800), 20(800), 26(850), 28(700), 29(700), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps\r\nGPRS:\r\nUp to 107 kbps\r\nEDGE:\r\nUp to 296 kbps\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, June\r\nBody:\r\nDimensions:\r\n143.7 x 70.4 x 8.7 mm (5.66 x 2.77 x 0.34 in)\r\nWeight:\r\n164.4 g (5.78 oz)\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\n \r\nIP68 certified dust proof and water resistant over 1.5 meter and 30 minutes\r\nDisplay:\r\nType:\r\nIPS LCD capacitive touchscreen, 16M colors\r\nSize:\r\n5.0 inches (~68.1% screen-to-body ratio)\r\nResolution:\r\n1080 x 1920 pixels (~441 ppi pixel density)\r\nMultitouch:\r\nYes, up to 10 fingers\r\nProtection:\r\nScratch-resistant glass, oleophobic coating\r\n \r\nTriluminos display, X-Reality Engine\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0.1 (Marshmallow)\r\nChipset:\r\nQualcomm MSM8996 Snapdragon 820\r\nCPU:\r\nDual-core 2.15 GHz Kryo & dual-core 1.6 GHz Kryo\r\nGPU:\r\nAdreno 530\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 256 GB (dedicated slot)\r\nInternal:\r\n64 GB, 3 GB RAM\r\nCamera:\r\nPrimary:\r\n23 MP, f/2.0, 24mm, phase detection autofocus, LED flash\r\nFeatures:\r\n1/2.3\' sensor size, geo-tagging, touch focus, face detection, HDR, panorama\r\nVideo:\r\n1080p@30fps, 1080p@60fps\r\nSecondary:\r\n13 MP, f/2.0, 22mm, 1/3\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nYes\r\n \r\n24-bit/192kHz audio, Active noise cancellation with dedicated mic\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, hotspot\r\nBluetooth:\r\nv4.2, A2DP, aptX, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes\r\nRadio:\r\nNo\r\nUSB:\r\nmicroUSB v2.0, USB Host\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, barometer, compass\r\nMessaging:\r\nSMS (threaded view), MMS, Email, IM, Push Email\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nFast battery charging: 60% in 30 min (Quick Charge 2.0), Xvid/MP4/H.265 player, MP3/eAAC+/WAV/Flac player, Document viewer, Photo/video editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 2700 mAh battery', 32, 'April 6, 2017 2:53:pm  '),
(43, 'Sony Xperia  X(32GB Rose Gold)', 570, 'products/sony xperia x rose gold.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2 (dual SIM model only)\r\n3G bands:\r\nHSDPA 800 / 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 19(800), 20(800), 26(850), 28(700), 29(700), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat9 450/50 Mbps\r\nGPRS:\r\nUp to 107 kbps\r\nEDGE:\r\nUp to 296 kbps\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, June\r\nBody:\r\nDimensions:\r\n143.7 x 70.4 x 8.7 mm (5.66 x 2.77 x 0.34 in)\r\nWeight:\r\n164.4 g (5.78 oz)\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\n \r\nIP68 certified dust proof and water resistant over 1.5 meter and 30 minutes\r\nDisplay:\r\nType:\r\nIPS LCD capacitive touchscreen, 16M colors\r\nSize:\r\n5.0 inches (~68.1% screen-to-body ratio)\r\nResolution:\r\n1080 x 1920 pixels (~441 ppi pixel density)\r\nMultitouch:\r\nYes, up to 10 fingers\r\nProtection:\r\nScratch-resistant glass, oleophobic coating\r\n \r\nTriluminos display, X-Reality Engine\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0.1 (Marshmallow)\r\nChipset:\r\nQualcomm MSM8996 Snapdragon 820\r\nCPU:\r\nDual-core 2.15 GHz Kryo & dual-core 1.6 GHz Kryo\r\nGPU:\r\nAdreno 530\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 256 GB (dedicated slot)\r\nInternal:\r\n64 GB, 3 GB RAM\r\nCamera:\r\nPrimary:\r\n23 MP, f/2.0, 24mm, phase detection autofocus, LED flash\r\nFeatures:\r\n1/2.3\' sensor size, geo-tagging, touch focus, face detection, HDR, panorama\r\nVideo:\r\n1080p@30fps, 1080p@60fps\r\nSecondary:\r\n13 MP, f/2.0, 22mm, 1/3\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nYes\r\n \r\n24-bit/192kHz audio, Active noise cancellation with dedicated mic\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, hotspot\r\nBluetooth:\r\nv4.2, A2DP, aptX, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes\r\nRadio:\r\nNo\r\nUSB:\r\nmicroUSB v2.0, USB Host\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, barometer, compass\r\nMessaging:\r\nSMS (threaded view), MMS, Email, IM, Push Email\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nFast battery charging: 60% in 30 min (Quick Charge 2.0), Xvid/MP4/H.265 player, MP3/eAAC+/WAV/Flac player, Document viewer, Photo/video editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 2700 mAh battery', 31, 'April 6, 2017 2:53:pm  '),
(44, 'Sony Xperia  XA(16GB Graphite Black )', 426, 'products/sony xperia xa graphite black.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2\r\n3G bands:\r\nHSDPA 800 / 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 17(700), 19(800), 20(800), 26(850), 28(700), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat6 300/50 Mbps\r\nGPRS:\r\nUp to 107 kbps\r\nEDGE:\r\nUp to 296 kbps\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, May\r\nBody:\r\nDimensions:\r\n142.7 x 69.4 x 7.9 mm (5.62 x 2.73 x 0.31 in)\r\nWeight:\r\n153 g (5.40 oz)\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\nDisplay:\r\nType:\r\nIPS LCD capacitive touchscreen, 16M colors\r\nSize:\r\n5.0 inches (~69.6% screen-to-body ratio)\r\nResolution:\r\n1080 x 1920 pixels (~441 ppi pixel density)\r\nMultitouch:\r\nYes, up to 10 fingers\r\nProtection:\r\nScratch-resistant glass, oleophobic coating\r\n \r\nTriluminos display, X-Reality Engine\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0.1 (Marshmallow)\r\nChipset:\r\nQualcomm MSM8956 Snapdragon 650\r\nCPU:\r\nDual-core 1.8 GHz Cortex-A72 & quad-core 1.4 GHz Cortex-A53\r\nGPU:\r\nAdreno 510\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 256 GB (dedicated slot)\r\nInternal:\r\n64 GB, 3 GB RAM\r\nCamera:\r\nPrimary:\r\n23 MP, f/2.0, 24mm, phase detection autofocus, LED flash\r\nFeatures:\r\n1/2.3\' sensor size, geo-tagging, touch focus, face detection, HDR, panorama\r\nVideo:\r\n1080p@30fps, 1080p@60fps\r\nSecondary:\r\n13 MP, f/2.0, 22mm, 1/3\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nYes\r\n \r\n24-bit/192kHz audio\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, hotspot\r\nBluetooth:\r\nv4.2, A2DP, aptX, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes\r\nRadio:\r\nFM radio, RDS\r\nUSB:\r\nmicroUSB v2.0, USB Host\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, barometer, compass\r\nMessaging:\r\nSMS (threaded view), MMS, Email, IM, Push Email\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Xvid/MP4/H.265 player, MP3/eAAC+/WAV/Flac player, Document viewer, Photo/video editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 2620 mAh battery', 32, 'April 6, 2017 2:57:pm  '),
(45, 'Sony Xperia  XA(16GB Lime Gold  )', 420, 'products/sony xperia xa lime gold.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2\r\n3G bands:\r\nHSDPA 800 / 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands:\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 17(700), 19(800), 20(800), 26(850), 28(700), 38(2600), 39(1900), 40(2300), 41(2500)\r\nSpeed:\r\nHSPA 42.2/5.76 Mbps, LTE Cat6 300/50 Mbps\r\nGPRS:\r\nUp to 107 kbps\r\nEDGE:\r\nUp to 296 kbps\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, May\r\nBody:\r\nDimensions:\r\n142.7 x 69.4 x 7.9 mm (5.62 x 2.73 x 0.31 in)\r\nWeight:\r\n153 g (5.40 oz)\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\nDisplay:\r\nType:\r\nIPS LCD capacitive touchscreen, 16M colors\r\nSize:\r\n5.0 inches (~69.6% screen-to-body ratio)\r\nResolution:\r\n1080 x 1920 pixels (~441 ppi pixel density)\r\nMultitouch:\r\nYes, up to 10 fingers\r\nProtection:\r\nScratch-resistant glass, oleophobic coating\r\n \r\nTriluminos display, X-Reality Engine\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0.1 (Marshmallow)\r\nChipset:\r\nQualcomm MSM8956 Snapdragon 650\r\nCPU:\r\nDual-core 1.8 GHz Cortex-A72 & quad-core 1.4 GHz Cortex-A53\r\nGPU:\r\nAdreno 510\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 256 GB (dedicated slot)\r\nInternal:\r\n64 GB, 3 GB RAM\r\nCamera:\r\nPrimary:\r\n23 MP, f/2.0, 24mm, phase detection autofocus, LED flash\r\nFeatures:\r\n1/2.3\' sensor size, geo-tagging, touch focus, face detection, HDR, panorama\r\nVideo:\r\n1080p@30fps, 1080p@60fps\r\nSecondary:\r\n13 MP, f/2.0, 22mm, 1/3\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes, with stereo speakers\r\n3.5mm jack:\r\nYes\r\n \r\n24-bit/192kHz audio\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, hotspot\r\nBluetooth:\r\nv4.2, A2DP, aptX, LE\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes\r\nRadio:\r\nFM radio, RDS\r\nUSB:\r\nmicroUSB v2.0, USB Host\r\nFeatures:\r\nSensors:\r\nFingerprint, accelerometer, gyro, proximity, barometer, compass\r\nMessaging:\r\nSMS (threaded view), MMS, Email, IM, Push Email\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nActive noise cancellation with dedicated mic, Xvid/MP4/H.265 player, MP3/eAAC+/WAV/Flac player, Document viewer, Photo/video editor\r\nBattery:\r\n \r\nNon-removable Li-Ion 2620 mAh battery', 42, 'April 6, 2017 2:58:pm  '),
(46, 'LG G5 (32GB Titan)', 420, 'products/lg g5 titan.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2\r\n3G bands:\r\nHSDPA 850 / 900 / 2100\r\n4G bands:\r\nLTE band 3(1800), 7(2600), 20(800)\r\nSpeed:\r\nHSPA 42.2/11.5 Mbps, LTE Cat4 150/50 Mbps\r\nGPRS:\r\nClass 12\r\nEDGE:\r\nClass 12\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, April\r\nBody:\r\nDimensions:\r\n144.6 x 71.5 x 8.7 mm (5.69 x 2.81 x 0.34 in)\r\nWeight:\r\n157 g (5.54 oz)\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\nDisplay:\r\nType:\r\nIPS LCD capacitive touchscreen, 16M colors\r\nSize:\r\n5.0 inches (~66.7% screen-to-body ratio)\r\nResolution:\r\n720 x 1280 pixels (~294 ppi pixel density)\r\nMultitouch:\r\nYes\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0 (Marshmallow)\r\nChipset:\r\nMediatek MT6735\r\nCPU:\r\nQuad-core 1.3 GHz Cortex-A53\r\nGPU:\r\nMali-T720\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 32 GB (dedicated slot)\r\nInternal:\r\n8 GB, 1.5 GB RAM\r\nCamera:\r\nPrimary:\r\n8 MP, autofocus, LED flash\r\nFeatures:\r\nGeo-tagging, touch focus, face detection, panorama\r\nVideo:\r\n1080p@30fps\r\nSecondary:\r\n5 MP, 720p\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 b/g/n, Wi-Fi Direct, DLNA, hotspot\r\nBluetooth:\r\nv4.2, A2DP\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes\r\nRadio:\r\nFM radio, RDS\r\nUSB:\r\nmicroUSB, v2.0\r\nFeatures:\r\nSensors:\r\nAccelerometer, proximity\r\nMessaging:\r\nSMS(threaded view), MMS, Email, Push Mail, IM\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nMP4/H.264 player, MP3/WAV/eAAC+/FLAC player, Photo/video editor, Document viewer\r\nBattery:\r\n \r\nRemovable Li-Ion 2125 mAh battery', 43, 'April 6, 2017 3:03:pm  '),
(47, 'LG K3(16GB Indigo Blue)', 115, 'products/lg k3.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2\r\n3G bands:\r\nHSDPA 850 / 900 / 2100\r\n4G bands:\r\nLTE band 3(1800), 7(2600), 20(800)\r\nSpeed:\r\nHSPA 42.2/11.5 Mbps, LTE Cat4 150/50 Mbps\r\nGPRS:\r\nClass 12\r\nEDGE:\r\nClass 12\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, April\r\nBody:\r\nDimensions:\r\n144.6 x 71.5 x 8.7 mm (5.69 x 2.81 x 0.34 in)\r\nWeight:\r\n157 g (5.54 oz)\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\nDisplay:\r\nType:\r\nIPS LCD capacitive touchscreen, 16M colors\r\nSize:\r\n5.0 inches (~66.7% screen-to-body ratio)\r\nResolution:\r\n720 x 1280 pixels (~294 ppi pixel density)\r\nMultitouch:\r\nYes\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0 (Marshmallow)\r\nChipset:\r\nMediatek MT6735\r\nCPU:\r\nQuad-core 1.3 GHz Cortex-A53\r\nGPU:\r\nMali-T720\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 32 GB (dedicated slot)\r\nInternal:\r\n8 GB, 1.5 GB RAM\r\nCamera:\r\nPrimary:\r\n8 MP, autofocus, LED flash\r\nFeatures:\r\nGeo-tagging, touch focus, face detection, panorama\r\nVideo:\r\n1080p@30fps\r\nSecondary:\r\n5 MP, 720p\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 b/g/n, Wi-Fi Direct, DLNA, hotspot\r\nBluetooth:\r\nv4.2, A2DP\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes\r\nRadio:\r\nFM radio, RDS\r\nUSB:\r\nmicroUSB, v2.0\r\nFeatures:\r\nSensors:\r\nAccelerometer, proximity\r\nMessaging:\r\nSMS(threaded view), MMS, Email, Push Mail, IM\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nMP4/H.264 player, MP3/WAV/eAAC+/FLAC player, Photo/video editor, Document viewer\r\nBattery:\r\n \r\nRemovable Li-Ion 2125 mAh battery', 22, 'April 6, 2017 3:05:pm  ');
INSERT INTO `tb_products` (`productID`, `name`, `price`, `image`, `details`, `quantity`, `date_created`) VALUES
(48, 'Lenovo P2 (32GB Grey)', 350, 'products/lenovo p2.jpg', 'Network:\r\nTechnology:\r\nGSM / HSPA / LTE\r\n2G bands:\r\nGSM 850 / 900 / 1800 / 1900 SIM 1 & SIM 2\r\n3G bands:\r\nHSDPA 850 / 900 / 2100\r\n4G bands:\r\nLTE band 3(1800), 7(2600), 20(800)\r\nSpeed:\r\nHSPA 42.2/11.5 Mbps, LTE Cat4 150/50 Mbps\r\nGPRS:\r\nClass 12\r\nEDGE:\r\nClass 12\r\nLaunch:\r\nAnnounced:\r\n2016, February\r\nStatus:\r\nAvailable. Released 2016, April\r\nBody:\r\nDimensions:\r\n144.6 x 71.5 x 8.7 mm (5.69 x 2.81 x 0.34 in)\r\nWeight:\r\n157 g (5.54 oz)\r\nSIM:\r\nDual SIM (Nano-SIM, dual stand-by)\r\nDisplay:\r\nType:\r\nIPS LCD capacitive touchscreen, 16M colors\r\nSize:\r\n5.0 inches (~66.7% screen-to-body ratio)\r\nResolution:\r\n720 x 1280 pixels (~294 ppi pixel density)\r\nMultitouch:\r\nYes\r\nPlatform:\r\nOS:\r\nAndroid OS, v6.0 (Marshmallow)\r\nChipset:\r\nMediatek MT6735\r\nCPU:\r\nQuad-core 1.3 GHz Cortex-A53\r\nGPU:\r\nMali-T720\r\nMemory:\r\nCard slot:\r\nmicroSD, up to 32 GB (dedicated slot)\r\nInternal:\r\n8 GB, 1.5 GB RAM\r\nCamera:\r\nPrimary:\r\n8 MP, autofocus, LED flash\r\nFeatures:\r\nGeo-tagging, touch focus, face detection, panorama\r\nVideo:\r\n1080p@30fps\r\nSecondary:\r\n5 MP, 720p\r\nSound:\r\nAlert types:\r\nVibration; MP3, WAV ringtones\r\nLoudspeaker:\r\nYes\r\n3.5mm jack:\r\nYes\r\nComms:\r\nWLAN:\r\nWi-Fi 802.11 b/g/n, Wi-Fi Direct, DLNA, hotspot\r\nBluetooth:\r\nv4.2, A2DP\r\nGPS:\r\nYes, with A-GPS, GLONASS\r\nNFC:\r\nYes\r\nRadio:\r\nFM radio, RDS\r\nUSB:\r\nmicroUSB, v2.0\r\nFeatures:\r\nSensors:\r\nAccelerometer, proximity\r\nMessaging:\r\nSMS(threaded view), MMS, Email, Push Mail, IM\r\nBrowser:\r\nHTML5\r\nJava:\r\nNo\r\n \r\nMP4/H.264 player, MP3/WAV/eAAC+/FLAC player, Photo/video editor, Document viewer\r\nBattery:\r\n \r\nRemovable Li-Ion 2125 mAh battery', 15, 'April 6, 2017 3:31:pm  '),
(49, 'Samsung Galaxy S8 Plus(32GB Midnight Black)', 1152, 'products/s8 plus midnight black.jpg', 'Dimensions\r\n159.5 x 73.4 x 8.1mm\r\nWeight: 173g\r\nBattery\r\nCapacity: 3,500 mAh\r\nFixed rechargable\r\nDisplay\r\n6.2â€ Quad HD Dual edge Super AMOLED / 2960 x 1440 (529ppi)\r\nProcessor\r\nOcta core, 64 bit, 10 nm process\r\nOS\r\nAndroid 7.0 (Nougat)\r\nCamera\r\nRear : Dual Pixel 12MP OIS (F1.7) \r\nFront : 8MP (F1.7) \r\n\r\nVideo recording and calling\r\nTalk time (minutes)\r\nUp to 1,500 min for 3G \r\n\r\nStandby (hours): Up to 400 hours for 3G\r\n', 14, 'April 6, 2017 4:44:pm  '),
(50, 'Samsung Galaxy S8 Plus(32GB Orchid Grey)', 1152, 'products/s8 plus orchid grey.jpg', 'Dimensions 159.5 x 73.4 x 8.1mm Weight: 173g Battery Capacity: 3,500 mAh Fixed rechargable Display 6.2â€ Quad HD Dual edge Super AMOLED / 2960 x 1440 (529ppi) Processor Octa core, 64 bit, 10 nm process OS Android 7.0 (Nougat) Camera Rear : Dual Pixel 12MP OIS (F1.7) Front : 8MP (F1.7) Video recording and calling Talk time (minutes) Up to 1,500 min for 3G Standby (hours): Up to 400 hours for 3G', 14, 'April 6, 2017 4:46:pm  ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sentmessage`
--

CREATE TABLE `tb_sentmessage` (
  `Primary_key` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Recipient` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `From_admin` varchar(50) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sentmessage`
--

INSERT INTO `tb_sentmessage` (`Primary_key`, `CustomerID`, `Recipient`, `Email`, `From_admin`, `Message`, `Date_created`, `Status`) VALUES
(1, 1, 'Richmon Sabello', 'sabellorichmon@yahoo.com', 'Richmon Davis B. Sabello', 'thank you', 'March 15, 2017 9:22:pm  ', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `utype` int(11) NOT NULL,
  `Employee` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`userID`, `username`, `password`, `utype`, `Employee`) VALUES
(1, 'BENJIE_OOS', 'e10adc3949ba59abbe56e057f20f883e', 3, 'Benjie I. Alfanta'),
(2, 'LEO_AS', 'e10adc3949ba59abbe56e057f20f883e', 2, 'Leo Aranzamendez'),
(3, 'JULIUS_ADS', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Julius  Felicen'),
(5, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 4, 'Sitt Phone Naing');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `typeID` int(11) NOT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`typeID`, `user_type`) VALUES
(1, 'ADVERTISING Admin'),
(2, 'ASSET Admin'),
(3, 'ONLINE ORDERING Admin'),
(4, 'SUPER Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset_depreciation`
--
ALTER TABLE `asset_depreciation`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
  ADD PRIMARY KEY (`KeyID`);

--
-- Indexes for table `backup_dbname`
--
ALTER TABLE `backup_dbname`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Num`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `customer_archive`
--
ALTER TABLE `customer_archive`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `dep_method`
--
ALTER TABLE `dep_method`
  ADD PRIMARY KEY (`methodID`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `loginout_history`
--
ALTER TABLE `loginout_history`
  ADD PRIMARY KEY (`Primary`);

--
-- Indexes for table `loginout_serverhistory`
--
ALTER TABLE `loginout_serverhistory`
  ADD PRIMARY KEY (`Primary`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`notifID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`Orderdetailsid`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply_message`
--
ALTER TABLE `reply_message`
  ADD PRIMARY KEY (`Primary_key`);

--
-- Indexes for table `sent_messages`
--
ALTER TABLE `sent_messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_announcement`
--
ALTER TABLE `tb_announcement`
  ADD PRIMARY KEY (`announcementID`);

--
-- Indexes for table `tb_equipment`
--
ALTER TABLE `tb_equipment`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tb_productreport`
--
ALTER TABLE `tb_productreport`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `tb_products`
--
ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `tb_sentmessage`
--
ALTER TABLE `tb_sentmessage`
  ADD PRIMARY KEY (`Primary_key`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`typeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
  MODIFY `KeyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `Num` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `loginout_history`
--
ALTER TABLE `loginout_history`
  MODIFY `Primary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `loginout_serverhistory`
--
ALTER TABLE `loginout_serverhistory`
  MODIFY `Primary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `reply_message`
--
ALTER TABLE `reply_message`
  MODIFY `Primary_key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sent_messages`
--
ALTER TABLE `sent_messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_productreport`
--
ALTER TABLE `tb_productreport`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tb_products`
--
ALTER TABLE `tb_products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tb_sentmessage`
--
ALTER TABLE `tb_sentmessage`
  MODIFY `Primary_key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
