-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 29, 2018 at 11:28 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cibilsystem`
--
CREATE DATABASE IF NOT EXISTS `cibilsystem` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cibilsystem`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add register form', 7, 'add_registerform'),
(20, 'Can change register form', 7, 'change_registerform'),
(21, 'Can delete register form', 7, 'delete_registerform'),
(22, 'Can add user details', 8, 'add_userdetails'),
(23, 'Can change user details', 8, 'change_userdetails'),
(24, 'Can delete user details', 8, 'delete_userdetails'),
(25, 'Can add bankadmin details', 9, 'add_bankadmindetails'),
(26, 'Can change bankadmin details', 9, 'change_bankadmindetails'),
(27, 'Can delete bankadmin details', 9, 'delete_bankadmindetails'),
(28, 'Can add bank report', 10, 'add_bankreport'),
(29, 'Can change bank report', 10, 'change_bankreport'),
(30, 'Can delete bank report', 10, 'delete_bankreport'),
(31, 'Can add loan request', 11, 'add_loanrequest'),
(32, 'Can change loan request', 11, 'change_loanrequest'),
(33, 'Can delete loan request', 11, 'delete_loanrequest');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bankadmin_bankadmindetails`
--

CREATE TABLE IF NOT EXISTS `bankadmin_bankadmindetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `password` int(11) NOT NULL,
  `mobilenumber` varchar(100) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bankadmin_bankadmindetails`
--

INSERT INTO `bankadmin_bankadmindetails` (`id`, `firstname`, `lastname`, `userid`, `password`, `mobilenumber`, `emailid`, `gender`) VALUES
(1, 'ttr', 'rttt', 'bank', 1234, '43455', 'sadsf@gmail.com', 'gfgf');

-- --------------------------------------------------------

--
-- Table structure for table `bankadmin_bankreport`
--

CREATE TABLE IF NOT EXISTS `bankadmin_bankreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loantype` varchar(300) NOT NULL,
  `checkbounch` varchar(300) NOT NULL,
  `balanceamount` varchar(300) NOT NULL,
  `loancount` varchar(300) NOT NULL,
  `loanduration` varchar(300) NOT NULL,
  `atmusagefine` varchar(300) NOT NULL,
  `complateduration` varchar(300) NOT NULL,
  `minimambalancefine` varchar(300) NOT NULL,
  `modificationfine` varchar(300) NOT NULL,
  `paidamount` varchar(300) NOT NULL,
  `creditdetails` varchar(300) NOT NULL,
  `result` varchar(300) NOT NULL,
  `duration` varchar(300) NOT NULL,
  `totalamount` varchar(300) NOT NULL,
  `mobilenumber` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `pancard` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `bankadmin_bankreport`
--

INSERT INTO `bankadmin_bankreport` (`id`, `loantype`, `checkbounch`, `balanceamount`, `loancount`, `loanduration`, `atmusagefine`, `complateduration`, `minimambalancefine`, `modificationfine`, `paidamount`, `creditdetails`, `result`, `duration`, `totalamount`, `mobilenumber`, `name`, `pancard`) VALUES
(1, 'homeloan', '0', '200000', '5,00,000', '54', '27', '34', '34', '76', '500000', '0', '621', '0', '700000', '9789672189', 'Sabari Nathan', 'FGMOJY6257A'),
(2, 'personalloan', '0', '0', '600000', '67', '0', '1', '0', '653', '300000', '7654', '726', '45', '300000', '9789672189', 'Surya Kumar', 'SATKJM9281Y'),
(3, 'other', '4', '300000', '25000', '18', '200', '12', '300', '300', '500000', '0', '602', '0', '800000', '8563717436', 'Saravana Kumar', 'MNIJAW1728Q'),
(4, 'personalloan', '0', '400000', '1100000', '81', '89', '12', '0', '54', '700000', '2500', '678', '0', '1100000', '9754672312', 'Somesh Varan', 'KOLJAN5100Z'),
(5, 'other', '32', '100000', '600000', '36', '23', '45', '23', '32', '100000', '233', '589', '23', '200000', '8693517459', 'Mani Kandan', 'LZNAM6213Z'),
(6, 'mortageloan', '4', '100000', '200000', '52', '65', '6', '345', '23', '400000', '2000', '413', '43', '500000', '9784523142', 'Suresh Babu', 'GHAHS4352K'),
(7, 'personalloan', '0', '100000', '400000', '54', '30', '13', '20', '0', '200000', '4100', '571', '0', '300000', '9789672189', 'Sanjai Kumar', 'KOSTPH9105J'),
(8, 'farmarloan', '76', '250000', '700000', '34', '878', '13', '67', '76', '250000', '1000', '447', '0', '500000', '9845671238', 'Rohit Sharma', 'LMZABS5132G'),
(9, 'mortageloan', '0', '500000', '600000', '45', '34', '6', '65', '32', '1000000', '34', '504', '65', '1500000', '9453715438', 'Naveen Kumar', 'NKAZLK6215K'),
(10, 'farmarloan', '6', '100000', '500000', '45', '567', '34', '45', '54', '400000', '2500', '302', '45', '500000', '9789564378', 'Santhosh Kumar', 'CAZAM5467A');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'bankadmin', 'bankadmindetails'),
(10, 'bankadmin', 'bankreport'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(11, 'user', 'loanrequest'),
(7, 'user', 'registerform'),
(8, 'user', 'userdetails');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-06-21 09:32:47.107421'),
(2, 'auth', '0001_initial', '2018-06-21 09:32:56.428710'),
(3, 'admin', '0001_initial', '2018-06-21 09:32:58.047851'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-06-21 09:32:58.094726'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-06-21 09:32:59.099609'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-06-21 09:32:59.631835'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-06-21 09:33:00.116210'),
(8, 'auth', '0004_alter_user_username_opts', '2018-06-21 09:33:00.147460'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-06-21 09:33:00.742187'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-06-21 09:33:00.773437'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-06-21 09:33:00.822265'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-06-21 09:33:02.416992'),
(13, 'bankadmin', '0001_initial', '2018-06-21 09:33:02.928710'),
(14, 'sessions', '0001_initial', '2018-06-21 09:33:03.518554'),
(15, 'user', '0001_initial', '2018-06-21 09:33:04.069335'),
(16, 'bankadmin', '0002_auto_20180622_1023', '2018-06-22 04:53:54.946289'),
(17, 'bankadmin', '0003_bankreport_creditdetails', '2018-06-22 11:25:04.178710'),
(18, 'bankadmin', '0004_bankreport_result', '2018-06-23 04:58:54.244140'),
(19, 'bankadmin', '0005_bankreport_duration', '2018-06-23 09:06:27.360351'),
(20, 'bankadmin', '0006_bankreport_totalamount', '2018-06-23 09:47:44.004882'),
(21, 'user', '0002_loanrequest', '2018-06-27 09:54:50.950195'),
(22, 'bankadmin', '0007_auto_20180627_1541', '2018-06-27 10:12:10.233398'),
(23, 'user', '0003_auto_20180627_1545', '2018-06-27 10:15:21.437500'),
(24, 'user', '0004_loanrequest_requeststatus', '2018-06-27 10:44:58.062500'),
(25, 'bankadmin', '0008_auto_20180628_1454', '2018-06-28 09:24:16.776367');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0bhypjgfzhkhprmjwpu7v6dy6zt5bmwr', 'MjY0NTIxOGIxNzdlNmU5ZWJkYzg4YzkwMDk2NjViZTVmODI1MTYxYjp7InVzZXJpZCI6MX0=', '2018-07-12 09:26:51.098632'),
('5zzwfx406t1xddyfm3umy2lq5yd0kgg4', 'MjY0NTIxOGIxNzdlNmU5ZWJkYzg4YzkwMDk2NjViZTVmODI1MTYxYjp7InVzZXJpZCI6MX0=', '2018-07-13 10:24:38.646484'),
('oq9vyayghnjkalaswvnqhsc6svkfiu6e', 'MjY0NTIxOGIxNzdlNmU5ZWJkYzg4YzkwMDk2NjViZTVmODI1MTYxYjp7InVzZXJpZCI6MX0=', '2018-07-13 04:35:37.291992');

-- --------------------------------------------------------

--
-- Table structure for table `user_loanrequest`
--

CREATE TABLE IF NOT EXISTS `user_loanrequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `phonenumber` varchar(300) NOT NULL,
  `emailid` varchar(300) NOT NULL,
  `loantype` varchar(300) NOT NULL,
  `requestStatus` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_loanrequest`
--

INSERT INTO `user_loanrequest` (`id`, `name`, `phonenumber`, `emailid`, `loantype`, `requestStatus`) VALUES
(1, 'sabari', '9789672189', 'hjfggfh@gmail.com', 'farmarloan', 'accpted'),
(2, 'Suresh', '9857324523', 'suresh23@gmail.com', 'mortageloan', 'Pending'),
(3, 'Sanjai', '9564374341', 'sanjaime@gmail.com', 'personalloan', 'accpted'),
(4, 'Sabari', '9789672189', 'sabarinathan@gmail.com', 'other', 'accpted'),
(5, 'Santhosh Kumar', '9789564356', 'santhosh123@gmail.com', 'mortageloan', 'accpted');

-- --------------------------------------------------------

--
-- Table structure for table `user_registerform`
--

CREATE TABLE IF NOT EXISTS `user_registerform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `password` int(11) NOT NULL,
  `mobilenumber` varchar(100) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_registerform`
--

INSERT INTO `user_registerform` (`id`, `firstname`, `lastname`, `userid`, `password`, `mobilenumber`, `emailid`, `gender`) VALUES
(1, 'fhgfh', 'fgh', 'user', 1234, '54656567', '557@gmai.com', 'ghgfh');

-- --------------------------------------------------------

--
-- Table structure for table `user_userdetails`
--

CREATE TABLE IF NOT EXISTS `user_userdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `fathername` varchar(300) NOT NULL,
  `mothername` varchar(300) NOT NULL,
  `dob` varchar(300) NOT NULL,
  `age` varchar(300) NOT NULL,
  `gender` varchar(300) NOT NULL,
  `maritalstatus` varchar(300) NOT NULL,
  `mobilenumber` varchar(300) NOT NULL,
  `emailid` varchar(300) NOT NULL,
  `qualification` varchar(300) NOT NULL,
  `income` varchar(300) NOT NULL,
  `panno` varchar(300) NOT NULL,
  `aadharnumber` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user_userdetails`
--

INSERT INTO `user_userdetails` (`id`, `name`, `fathername`, `mothername`, `dob`, `age`, `gender`, `maritalstatus`, `mobilenumber`, `emailid`, `qualification`, `income`, `panno`, `aadharnumber`, `address`, `city`) VALUES
(1, 'Surya', 'Vishal', 'Rishita', '04-12-1997', '22', 'male', 'unmarried', '9789454312', 'surya12@gmail.com', 'B.E', '150000', 'SATKJM9281Y', '6543 9876 1239', 'NO4,4 th street,chrompet,chennai', 'chennai'),
(2, 'Sanjai Kumar', 'Abhishek', 'Tanya', '09-5-1986', '32', 'male', 'married', '9789564321', 'sanjai34@gmail.com', 'B.E', '500000', 'GHAHS4352', '5436 7869 4354', 'NO:2,west mambalam,\r\nchennai 600 044', 'chennai'),
(3, 'Suresh', 'Deepak', 'Shreya', '05-11-1984', '34', 'male', 'married', '9734128967', 'suresh432@gmail.com', 'B.E', '150000', 'KOSTPH9105', '5436 7869 4354', 'NO:3,thiruninravur,\r\nchennai 600 008', 'chennai'),
(4, 'Saravanan', 'Arjun', 'Gayatri', '12-04-1989', '29', 'male', 'unmarried', '9432768542', 'saravana2787@gmail.com', 'B.E', '125000', 'LZNALM6213Z', '9856 3245 2345', 'NO:65,perambur,chennai 600 018', 'chennai'),
(5, 'Rohit', 'Mayank', 'Shivani', '12-04-1990', '28', 'male', 'unmarried', '9532367541', 'saravana2787@gmail.com', 'B.E', '125000', 'LZNALM6213Z', '9856 3245 2345', 'NO:65,perambur,chennai 600 018', 'chennai'),
(6, 'Naveen', 'Ashish', 'Ramya', '12-04-1992', '26', 'male', 'unmarried', '9546342587', 'intronaveen@gmail.com', 'B.E', '125000', 'LZNALM6213Z', '9856 3245 2345', 'NO:65,perambur,\r\nchennai 600 018', 'chennai'),
(7, 'Manish', 'Krishna', 'Siya', '02-04-1995', '24', 'male', 'unmarried', '9546354341', 'intronaveen@gmail.com', 'B.E', '125000', 'LZNALM6213Z', '9856 3245 2345', 'NO:65,perambur,chennai 600 018', 'chennai'),
(8, 'Vishal', 'Shivam', 'Nishita', '22-04-1997', '22', 'male', 'unmarried', '7867345612', 'intro123@gmail.com', 'B.E', '125000', 'LZNALM6213Z', '9856 3245 2345', 'NO:65,avadi,chennai 600 018', 'chennai'),
(9, 'Santhosh Kumar', 'Thirupathi', 'Santhi', '05-01-1995', '23', 'male', 'unmarried', '9789672189', 'santhosh56@gmail.com', 'B.E', '150000', 'CAZAM5467A', '5647 5643 2546', 'N0:3,perambur,chennai', 'chennai');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
