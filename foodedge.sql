-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2020 at 08:39 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodedgesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accountID` int(6) NOT NULL,
  `customerID` int(6) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `accountPassword` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountID`, `customerID`, `username`, `accountPassword`) VALUES
(1, NULL, 'alvinsim00', 'alvinsim123');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_event`
--

CREATE TABLE `accounts_event` (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `description` longtext CHARACTER SET utf8 NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `created_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_event`
--

INSERT INTO `accounts_event` (`id`, `title`, `description`, `start_time`, `end_time`, `created_date`) VALUES
(7, 'Event 3', 'some event', '2020-11-20 14:00:00.000000', '2020-11-27 14:00:00.000000', '2020-11-17 07:31:33.403861'),
(8, 'test 2', 'notes are here', '2020-11-25 12:00:00.000000', '2020-11-25 12:00:00.000000', '2020-11-16 13:15:40.918436'),
(9, 'Order #1', 'order 12', '2020-11-09 14:31:00.000000', '2020-11-09 14:31:00.000000', '2020-11-15 17:10:32.140099');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_eventmember`
--

CREATE TABLE `accounts_eventmember` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_eventmember`
--

INSERT INTO `accounts_eventmember` (`id`, `event_id`, `user_id`) VALUES
(1, 7, 9),
(2, 7, 30),
(3, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_insertstock`
--

CREATE TABLE `accounts_insertstock` (
  `id` int(5) NOT NULL,
  `stockName` varchar(255) NOT NULL,
  `amountLeft` int(4) NOT NULL,
  `deficit` int(6) NOT NULL,
  `stockImage` varchar(255) NOT NULL,
  `menuItemID` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_insertstock`
--

INSERT INTO `accounts_insertstock` (`id`, `stockName`, `amountLeft`, `deficit`, `stockImage`, `menuItemID`) VALUES
(7, 'Beef', 99, 999, 'stockImage/western2_0Zj4Yul.jpg', 2),
(26, 'Steak', 22, 123, 'stockImage/western1.jpg', 2),
(8, 'Dos-Image1Duck', 88, 888, 'stockImage/local1.jpg', 3),
(9, 'Dos-Image2', 88, 888, 'stockImage/local2.jpg', 3),
(10, 'Tres-Image1', 77, 777, 'stockImage/chinese1.jpg', 4),
(11, 'Tres-Image2', 77, 777, 'stockImage/chinese2.jpg', 4),
(20, 'Uno-Filler1', 99, 999, 'stockImage/western3.jpg', 2),
(21, 'Dos-Filler1', 88, 888, 'stockImage/local3.jpg', 3),
(22, 'Tres-Filler1', 77, 777, 'stockImage/chinese3.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `image`, `user_id`) VALUES
(1, 'default.jpg', 31),
(2, 'default.jpg', 8),
(3, 'default.jpg', 7),
(4, 'default.jpg', 32);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Customer'),
(3, 'Management'),
(2, 'Operations');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add profile', 1, 'add_profile'),
(2, 'Can change profile', 1, 'change_profile'),
(3, 'Can delete profile', 1, 'delete_profile'),
(4, 'Can view profile', 1, 'view_profile'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(3, 'pbkdf2_sha256$216000$vGBxghvART62$v3dCj/6FkNWtaSfYcCVBjHXLzbJX7hZcRM7ENEU5iLg=', '2020-11-15 17:07:13.410875', 1, 'alvin', '', '', 'alvinsim74@gmail.com', 1, 1, '2020-10-07 09:22:30.298723'),
(7, 'pbkdf2_sha256$216000$v0L9GzYCIOLT$vOhz6LVx79OwVkpNES+EhQzSOkZl8stwhxC8DvX6Yu0=', '2020-11-17 09:10:23.530868', 0, 'TestOperation', '', '', '', 0, 1, '2020-10-14 12:21:30.000000'),
(8, 'pbkdf2_sha256$216000$8j76c1axpxIk$4ZfNrd/4Y9fPaxyqhXfAyBC099MZ49b5U1rS6LcsVaw=', '2020-11-17 07:21:06.793335', 0, 'TestManagement', '', '', '', 0, 1, '2020-10-14 12:21:54.000000'),
(9, 'pbkdf2_sha256$216000$8yCjon3FKzIy$8XtsizfyVP5lCdCaoRoXTYyOLvS1eOafT8oDNVPqXr4=', NULL, 0, 'TestCustomer', '', '', '', 0, 1, '2020-10-14 13:13:22.000000'),
(30, 'pbkdf2_sha256$216000$FAzoXbdrakbC$9TzLVbtzAKXwM59TAgD46YTzz1Yxij0xaOJfX/p55qQ=', '2020-10-15 18:41:30.585900', 0, 'alvinsim00', '', '', 'alvinsim74@gmail.com', 0, 1, '2020-10-15 17:23:25.127026'),
(31, 'pbkdf2_sha256$216000$eXVhp5tr6wYB$Jyx5fJQ2nhuFk96ZsAgVVGTm43AbEcolJ68UUzQrF2Q=', '2020-11-16 13:39:52.819387', 1, 'adminalvin', '', '', 'alvin@gmail.com', 1, 1, '2020-11-15 17:07:45.086803'),
(32, 'pbkdf2_sha256$216000$4mD9SSixETUS$RI7xCN3MCjKav5LoZ/jJwg0mGRq44onbtGiBCUuY8os=', '2020-11-17 07:35:34.037386', 0, 'alvin123', '', '', 'alvinsim74@gmail.com', 0, 1, '2020-11-17 07:35:26.326545');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(4, 7, 2),
(5, 8, 3),
(6, 9, 1),
(27, 30, 1),
(28, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cateringorder`
--

CREATE TABLE `cateringorder` (
  `orderID` int(7) NOT NULL,
  `teamID` int(4) DEFAULT NULL,
  `customerID` int(6) DEFAULT NULL,
  `cateringDatetime` datetime NOT NULL,
  `CustFirstName` varchar(255) NOT NULL,
  `custLastName` varchar(255) NOT NULL,
  `custEmail` varchar(50) NOT NULL,
  `custContact` varchar(20) NOT NULL,
  `custOrder` varchar(255) NOT NULL,
  `custRequest` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `amountDue` int(4) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cateringorder`
--

INSERT INTO `cateringorder` (`orderID`, `teamID`, `customerID`, `cateringDatetime`, `CustFirstName`, `custLastName`, `custEmail`, `custContact`, `custOrder`, `custRequest`, `location`, `amountDue`, `Status`) VALUES
(30, NULL, 30, '2020-10-16 03:12:07', 'ada', '', 'alvinsim74@gmail.com', '010-9606565', '1000', '', 'asd', 50, 0),
(28, 1, 30, '2020-10-16 03:02:30', 'asd', '', 'alvinsim74@gmail.com', '010-9606565', '1000', '', 'asd', 50, 1),
(29, NULL, 30, '2020-10-16 03:08:58', 'asdfasf', '', 'alvinsim74@gmail.com', '010-9606565', '1000', '', 'asd', 50, 0),
(27, NULL, 30, '2020-10-16 03:01:37', 'asd', '', 'alvinsim74@gmail.com', '010-9606565', '1000', '', 'asd', 50, 0),
(26, NULL, 30, '2020-10-16 02:58:54', 'asdas', '', 'alvinsim74@gmail.com', '010-9606565', '1000', '', 'asd', 50, 0),
(25, NULL, 30, '2020-10-16 02:57:57', 'ad', '', 'alvinsim74@gmail.com', '010-9606565', '1000', '', 'asd', 50, 0),
(24, NULL, 30, '2020-10-16 02:54:46', 'alvins', '', 'alvinsim74@gmail.com', '010-9606565', '2000', '', 'asdf', 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int(3) NOT NULL,
  `menuItemID` int(3) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `commentfName` varchar(255) DEFAULT NULL,
  `commentlName` varchar(255) DEFAULT NULL,
  `commentContent` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `menuItemID`, `rating`, `commentfName`, `commentlName`, `commentContent`) VALUES
(2, 2, '3.0', 'Feedback ', 'Tester1', 'Pls cook the food tq'),
(3, 4, '1.0', 'Feedback ', 'Tester 2', 'It sucx'),
(4, 3, '2.0', 'FoodTester', 'Dummy3', 'Kinda bad ngl'),
(5, 3, '4.0', 'Sir', 'Obama', 'Its gr8'),
(6, 3, '4.0', 'Alvin', 'Sim', 'Its good');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` varchar(20) NOT NULL,
  `authID` int(3) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(15) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `authID`, `name`, `phoneNo`, `email`) VALUES
('cus_ICyuDHyaFZ3Z6j', 0, 'alvinsim00', '', 'alvinsim74@gmail.com'),
('', 28, 'testagain', '', 'alvinsim74@gmail.com'),
('cus_ID07fwZZ6HDvJH', 29, 'afafasd', '', 'alvinsim74@gmail.com'),
('cus_ID0BehpDQffE1O', 30, 'alvinsim00', '', 'alvinsim74@gmail.com'),
('cus_IPD9kjIAAnOj8j', 32, NULL, '', 'alvinsim74@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-10-14 11:57:17.080284', '1', 'Customer', 1, '[{\"added\": {}}]', 4, 3),
(2, '2020-10-14 11:57:28.560841', '2', 'Operations', 1, '[{\"added\": {}}]', 4, 3),
(3, '2020-10-14 11:57:33.977964', '3', 'Management', 1, '[{\"added\": {}}]', 4, 3),
(4, '2020-10-14 11:58:06.969135', '2', 'alvinsim00', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 3),
(5, '2020-10-14 11:58:29.174662', '4', 'testcustomer', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Groups\"]}}]', 5, 3),
(6, '2020-10-14 12:20:55.084034', '2', 'alvinsim00', 3, '', 5, 3),
(7, '2020-10-14 12:20:55.086062', '1', 'alvinsimzx', 3, '', 5, 3),
(8, '2020-10-14 12:20:55.093009', '6', 'jeff', 3, '', 5, 3),
(9, '2020-10-14 12:20:55.095051', '5', 'steve', 3, '', 5, 3),
(10, '2020-10-14 12:20:55.098671', '4', 'testcustomer', 3, '', 5, 3),
(11, '2020-10-14 12:21:30.925225', '7', 'TestOperation', 1, '[{\"added\": {}}]', 5, 3),
(12, '2020-10-14 12:21:36.812930', '7', 'TestOperation', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 3),
(13, '2020-10-14 12:21:55.276764', '8', 'TestManagement', 1, '[{\"added\": {}}]', 5, 3),
(14, '2020-10-14 12:22:01.204185', '8', 'TestManagement', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 3),
(15, '2020-10-14 13:13:22.555495', '9', 'TestCustomer', 1, '[{\"added\": {}}]', 5, 3),
(16, '2020-10-14 13:13:28.039853', '9', 'TestCustomer', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 3),
(17, '2020-10-15 16:03:00.847006', '10', 'alvinsim00', 3, '', 5, 3),
(18, '2020-10-15 16:03:00.852878', '12', 'alvinsim74', 3, '', 5, 3),
(19, '2020-10-15 16:03:00.855903', '11', 'alvinsim75', 3, '', 5, 3),
(20, '2020-10-15 16:03:00.858863', '13', 'alvinsim89', 3, '', 5, 3),
(21, '2020-10-15 16:44:05.587743', '14', 'alvinsim00', 3, '', 5, 3),
(22, '2020-10-15 16:44:05.591684', '15', 'alvinsim80', 3, '', 5, 3),
(23, '2020-10-15 16:44:05.594427', '16', 'alvinsim99', 3, '', 5, 3),
(24, '2020-10-15 16:53:33.138157', '17', 'alvin12345', 3, '', 5, 3),
(25, '2020-10-15 16:53:33.143742', '18', 'alvin123452348923', 3, '', 5, 3),
(26, '2020-10-15 16:57:25.669599', '19', 'alvinsim00', 3, '', 5, 3),
(27, '2020-10-15 17:22:31.252329', '29', 'afafasd', 3, '', 5, 3),
(28, '2020-10-15 17:22:31.255360', '25', 'alvin14124', 3, '', 5, 3),
(29, '2020-10-15 17:22:31.259596', '23', 'alvin2929', 3, '', 5, 3),
(30, '2020-10-15 17:22:31.262109', '20', 'alvinsim22', 3, '', 5, 3),
(31, '2020-10-15 17:22:31.263505', '24', 'alvinsim222', 3, '', 5, 3),
(32, '2020-10-15 17:22:31.266420', '21', 'alvinsim555', 3, '', 5, 3),
(33, '2020-10-15 17:22:31.268588', '22', 'alvinsim5554566', 3, '', 5, 3),
(34, '2020-10-15 17:22:31.272186', '27', 'dfsdfds3', 3, '', 5, 3),
(35, '2020-10-15 17:22:31.276421', '26', 'jelvin', 3, '', 5, 3),
(36, '2020-10-15 17:22:31.279277', '28', 'testagain', 3, '', 5, 3),
(37, '2020-11-15 17:09:02.676014', '2', 'TestManagement Profile', 1, '[{\"added\": {}}]', 1, 31),
(38, '2020-11-15 17:09:05.980681', '3', 'TestOperation Profile', 1, '[{\"added\": {}}]', 1, 31);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'accounts', 'profile'),
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-10-06 08:22:54.739298'),
(2, 'auth', '0001_initial', '2020-10-06 08:22:54.874166'),
(3, 'accounts', '0001_initial', '2020-10-06 08:22:55.301835'),
(4, 'admin', '0001_initial', '2020-10-06 08:22:55.369679'),
(5, 'admin', '0002_logentry_remove_auto_add', '2020-10-06 08:22:55.468438'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2020-10-06 08:22:55.480434'),
(7, 'contenttypes', '0002_remove_content_type_name', '2020-10-06 08:22:55.533689'),
(8, 'auth', '0002_alter_permission_name_max_length', '2020-10-06 08:22:55.584584'),
(9, 'auth', '0003_alter_user_email_max_length', '2020-10-06 08:22:55.605507'),
(10, 'auth', '0004_alter_user_username_opts', '2020-10-06 08:22:55.618469'),
(11, 'auth', '0005_alter_user_last_login_null', '2020-10-06 08:22:55.658397'),
(12, 'auth', '0006_require_contenttypes_0002', '2020-10-06 08:22:55.664389'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2020-10-06 08:22:55.675351'),
(14, 'auth', '0008_alter_user_username_max_length', '2020-10-06 08:22:55.694109'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2020-10-06 08:22:55.710068'),
(16, 'auth', '0010_alter_group_name_max_length', '2020-10-06 08:22:55.730014'),
(17, 'auth', '0011_update_proxy_permissions', '2020-10-06 08:22:55.740910'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2020-10-06 08:22:55.759133'),
(19, 'sessions', '0001_initial', '2020-10-06 08:22:55.779128'),
(20, 'accounts', '0002_comments_event_eventmember_insertcustomer_insertorder_insertstock_menuitem_stafftable_staffteam', '2020-11-15 09:27:57.612158'),
(21, 'accounts', '0003_auto_20201115_1727', '2020-11-15 09:27:57.633517');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1n8p5k316f60ec4irefzuz4nz6ugy5nj', '.eJxVjEEOwiAQRe_C2hAoDKBL9z1DM9OZStVAUtqV8e7apAvd_vfef6kBtzUPW5NlmFldVFSn341wfEjZAd-x3Koea1mXmfSu6IM23VeW5_Vw_w4ytvytDXlAsg4nPFsvNkriFD0yEFiDNgXn_STGxCABGCSQo2Q64A4pIKn3B-RaN-0:1keLWo:bakAC0k3UC2JUJEHNI1ouqG-UImjpicVfyuqdqcj08g', '2020-11-29 17:09:26.301132'),
('8q1dhs0hxt87dvffiba3696cev9fwu5y', 'e30:1keHx4:wzf0pFNnpq6ZupwWfvno5FH31VbdYKar_I2lDxzKRH4', '2020-11-29 13:20:18.293889'),
('9lpmrt594d37vzwn196630slpkuqmtrh', 'e30:1keLUf:oSa8DYTjc02QY0iH61TOlMqbYMRrJJ-_EZAi94L7uVk', '2020-11-29 17:07:13.406851'),
('e6s2rpmj4usggskijcsj7ddk9vho4o5c', '.eJxVjEEOwiAQRe_C2hAoDKBL9z1DM9OZStVAUtqV8e7apAvd_vfef6kBtzUPW5NlmFldVFSn341wfEjZAd-x3Koea1mXmfSu6IM23VeW5_Vw_w4ytvytDXlAsg4nPFsvNkriFD0yEFiDNgXn_STGxCABGCSQo2Q64A4pIKn3B-RaN-0:1kex0J:1EPlaJkiQsXBEEAx2h3T5az8Iak_WKh4XPjcV2BCwFM', '2020-12-01 09:10:23.566809'),
('l4qzigw2swcnufudmoe9lqf2913yk9tq', 'e30:1kSgQe:FwIEIDP7oBQpVwXcOevg1WgkeNh7WTEQGnb7OXD11YE', '2020-10-28 13:02:52.196400'),
('lj46dkzwi3ephda8tr9rsf9q5gct8e49', '.eJxVjEEOgjAQRe_StWko0zLFpXvPQIaZqaCmTSisjHdXEha6_e-9_zIDbes0bFWXYRZzNtCY0-84Ej8070TulG_FcsnrMo92V-xBq70W0eflcP8OJqrTt-66GAJi9EAJlLWPmKBP4Lhn9IEjtuowJAJthNS1zEGBvXhw0mE07w_4_jf1:1kT8Bu:w1WNbT-HXeqfcUaSpXqviT4NX7b31qx39q7dmO7KksI', '2020-10-29 18:41:30.590099'),
('m6df9the4ayq5ji3xbkmfws7coab7pjn', '.eJxVjEEOwiAQRe_C2hAoDKBL9z1DM9OZStVAUtqV8e7apAvd_vfef6kBtzUPW5NlmFldVFSn341wfEjZAd-x3Koea1mXmfSu6IM23VeW5_Vw_w4ytvytDXlAsg4nPFsvNkriFD0yEFiDNgXn_STGxCABGCSQo2Q64A4pIKn3B-RaN-0:1keM6i:SzubCX1TDcS-H0yWJHW1bBo_9G67AjziNi2rYAdNGqk', '2020-11-29 17:46:32.972981'),
('sc59a8u8f498hx3romujialxw39s3728', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZGhtbGEtMTkxMzVjY2M5NzQxZDgyMTI2ZjFkZTlmOTdlNDlkZmYifQ:1kevHq:xxoimJ3h3H4kc933HFnSN_sCfr4XkxT4Dc-xzE4IeD8', '2020-12-01 07:20:22.231935'),
('zffs5acvqjwwkg5gd18x4em8u8gj4mcw', 'e30:1kSgYn:tOqI7T2fCcfw-WiNilTRRS09vZ1oe0lPfppOHuXAT4U', '2020-10-28 13:11:17.065795'),
('zqilz0x8q1ttku3q1k3e3glyqqxia120', 'e30:1keEIR:t388jBys-GpBul7YpPyKKB6Fb0g49-q6U9IoJpCuPuk', '2020-11-29 09:26:07.563914');

-- --------------------------------------------------------

--
-- Table structure for table `foodprep`
--

CREATE TABLE `foodprep` (
  `orderID` int(7) NOT NULL,
  `activeItemID` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

CREATE TABLE `menuitem` (
  `menuItemID` int(3) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `itemPrice` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuitem`
--

INSERT INTO `menuitem` (`menuItemID`, `itemName`, `itemPrice`) VALUES
(2, 'Set 1 - Uno', 99),
(3, 'Set 2 - Dos', 88),
(4, 'Set 3 - Tres', 77),
(5, 'Set 4 - Testing', 66);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` int(5) NOT NULL,
  `teamID` int(4) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `salary` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `teamID`, `name`, `salary`) VALUES
(7, 1, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staffteam`
--

CREATE TABLE `staffteam` (
  `teamID` int(4) NOT NULL,
  `dateFormed` date DEFAULT NULL,
  `dateDisbanded` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffteam`
--

INSERT INTO `staffteam` (`teamID`, `dateFormed`, `dateDisbanded`) VALUES
(1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suspendedaccount`
--

CREATE TABLE `suspendedaccount` (
  `accountID` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `accounts_event`
--
ALTER TABLE `accounts_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_eventmember`
--
ALTER TABLE `accounts_eventmember`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_insertstock`
--
ALTER TABLE `accounts_insertstock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menuItemID` (`menuItemID`);

--
-- Indexes for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cateringorder`
--
ALTER TABLE `cateringorder`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `teamID` (`teamID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `menuItemID` (`menuItemID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `foodprep`
--
ALTER TABLE `foodprep`
  ADD PRIMARY KEY (`activeItemID`,`orderID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD PRIMARY KEY (`menuItemID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`),
  ADD KEY `teamID` (`teamID`);

--
-- Indexes for table `staffteam`
--
ALTER TABLE `staffteam`
  ADD PRIMARY KEY (`teamID`);

--
-- Indexes for table `suspendedaccount`
--
ALTER TABLE `suspendedaccount`
  ADD PRIMARY KEY (`accountID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `accountID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_event`
--
ALTER TABLE `accounts_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `accounts_eventmember`
--
ALTER TABLE `accounts_eventmember`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accounts_insertstock`
--
ALTER TABLE `accounts_insertstock`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cateringorder`
--
ALTER TABLE `cateringorder`
  MODIFY `orderID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `menuitem`
--
ALTER TABLE `menuitem`
  MODIFY `menuItemID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staffteam`
--
ALTER TABLE `staffteam`
  MODIFY `teamID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
