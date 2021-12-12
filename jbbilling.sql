-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 10, 2021 at 04:09 PM
-- Server version: 5.7.24
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
-- Database: `jbbilling`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_coa`
--

DROP TABLE IF EXISTS `acc_coa`;
CREATE TABLE IF NOT EXISTS `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL,
  PRIMARY KEY (`HeadName`),
  KEY `HeadCode` (`HeadCode`),
  KEY `customer_id` (`customer_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
('502040001', '1-Fathima MaryBaskar', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'dTnvOQptL9ngNZJ', '2021-11-13 12:51:09', '', '0000-00-00 00:00:00'),
('502000001', '1-muthu meena', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 1, '0.00', '1', '2021-11-13 04:47:45', '', '0000-00-00 00:00:00'),
('102030000001', '1-Walking Customer', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 1, NULL, '0.00', '1', '2019-11-16 08:44:42', '', '0000-00-00 00:00:00'),
('502000002', '2-VINAYAGA', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 2, '0.00', '1', '2021-11-13 05:16:01', '', '0000-00-00 00:00:00'),
('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, '0.00', 'admin', '2015-10-15 19:50:43', '', '2019-09-05 00:00:00'),
('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2013-09-18 15:29:35'),
('1', 'Assets', 'COA', 0, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-06-25 13:47:29', 'admin', '2015-10-15 15:57:55'),
('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-03-18 06:08:18', 'admin', '2015-10-15 15:32:42'),
('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-26 07:38:48', 'admin', '2016-05-23 12:05:43'),
('102', 'Current Asset', 'Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2018-07-07 11:23:00'),
('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-24 12:10:05', 'admin', '2018-07-07 12:31:42'),
('401', 'Default expense', 'Expence', 1, 1, 1, 0, 'E', 1, 1, NULL, NULL, '1.00', '1', '2019-12-21 09:00:55', '', '0000-00-00 00:00:00'),
('50204', 'Employee Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, '0.00', '1', '2019-04-08 10:36:32', '', '2019-09-05 00:00:00'),
('403', 'Employee Salary', 'Expence', 1, 1, 1, 0, 'E', 0, 1, NULL, NULL, '1.00', '1', '2019-06-17 11:44:52', '', '2019-09-05 00:00:00'),
('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('4', 'Expence', 'COA', 0, 1, 0, 0, 'E', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('10107', 'Inventory', 'Non Current Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '2', '2018-07-07 15:21:58', '', '2019-09-05 00:00:00'),
('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54'),
('1020302', 'Loan Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-26 07:37:20', '', '2019-09-05 00:00:00'),
('101', 'Non Current Assets', 'Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2015-10-15 15:29:11'),
('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('402', 'Product Purchase', 'Expence', 1, 1, 0, 0, 'E', 0, 0, NULL, NULL, '0.00', '2', '2018-07-07 14:00:16', 'admin', '2015-10-15 18:37:42'),
('303', 'Product Sale', 'Income', 1, 1, 1, 0, 'I', 0, 0, NULL, NULL, '0.00', '1', '2019-06-17 08:22:42', '', '2019-09-05 00:00:00'),
('304', 'Service Income', 'Income', 1, 1, 1, 0, 'I', 0, 0, NULL, NULL, '0.00', '1', '2019-06-17 11:31:11', '', '2019-09-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

DROP TABLE IF EXISTS `acc_transaction`;
CREATE TABLE IF NOT EXISTS `acc_transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`),
  KEY `COAID` (`COAID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_transaction`
--

INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES
(1, '20211113051541', 'Purchase', '2021-11-13', '10107', 'Inventory Debit For Supplier muthu meena', '2500.00', '0.00', '1', '1', '2021-11-13 05:15:41', NULL, NULL, '1'),
(2, '20211113051541', 'Purchase', '2021-11-13', '502000001', 'Supplier .muthu meena', '0.00', '2500.00', '1', '1', '2021-11-13 00:00:00', NULL, NULL, '1'),
(3, '20211113051541', 'Purchase', '2021-11-13', '402', 'Company Credit For  muthu meena', '2500.00', '0.00', '1', '1', '2021-11-13 05:15:41', NULL, NULL, '1'),
(4, '20211113053417', 'Purchase', '2021-11-13', '10107', 'Inventory Debit For Supplier VINAYAGA', '2500.00', '0.00', '1', '1', '2021-11-13 05:34:17', NULL, NULL, '1'),
(5, '20211113053417', 'Purchase', '2021-11-13', '502000002', 'Supplier .VINAYAGA', '0.00', '2500.00', '1', '1', '2021-11-13 00:00:00', NULL, NULL, '1'),
(6, '20211113053417', 'Purchase', '2021-11-13', '402', 'Company Credit For  VINAYAGA', '2500.00', '0.00', '1', '1', '2021-11-13 05:34:17', NULL, NULL, '1'),
(7, '4225291832', 'INV', '2021-11-13', '10107', 'Inventory credit For Invoice No1000', '0.00', '500.00', '1', '1', '2021-11-13 05:40:11', NULL, NULL, '1'),
(8, '4225291832', 'INV', '2021-11-13', '102030000001', 'Customer debit For Invoice No -  1000 Customer Walking Customer', '500.00', '0.00', '1', '1', '2021-11-13 05:40:11', NULL, NULL, '1'),
(9, '4225291832', 'INVOICE', '2021-11-13', '303', 'Sale Income For Invoice NO - 1000 Customer Walking Customer', '0.00', '500.00', '1', '1', '2021-11-13 05:40:11', NULL, NULL, '1'),
(10, '4225291832', 'Return', '2021-11-13', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '250.00', '1', '1', '2021-11-13 05:46:20', NULL, NULL, '1'),
(11, '20211113144020', 'Purchase', '2021-11-13', '10107', 'Inventory Debit For Supplier VINAYAGA', '20000.00', '0.00', '1', 'dTnvOQptL9ngNZJ', '2021-11-13 14:40:20', NULL, NULL, '1'),
(12, '20211113144020', 'Purchase', '2021-11-13', '502000002', 'Supplier .VINAYAGA', '0.00', '20000.00', '1', 'dTnvOQptL9ngNZJ', '2021-11-13 00:00:00', NULL, NULL, '1'),
(13, '20211113144020', 'Purchase', '2021-11-13', '402', 'Company Credit For  VINAYAGA', '20000.00', '0.00', '1', 'dTnvOQptL9ngNZJ', '2021-11-13 14:40:20', NULL, NULL, '1'),
(14, '20211113144020', 'Purchase', '2021-11-13', '1020101', 'Cash in Hand For Supplier VINAYAGA', '0.00', '20000.00', '1', 'dTnvOQptL9ngNZJ', '2021-11-13 14:40:20', NULL, NULL, '1'),
(15, '20211113144020', 'Purchase', '2021-11-13', '502000002', 'Supplier .VINAYAGA', '20000.00', '0.00', '1', 'dTnvOQptL9ngNZJ', '2021-11-13 00:00:00', NULL, NULL, '1'),
(16, '9636723861', 'INV', '2021-11-13', '10107', 'Inventory credit For Invoice No1001', '0.00', '4000.00', '1', 'dTnvOQptL9ngNZJ', '2021-11-13 14:48:04', NULL, NULL, '1'),
(17, '9636723861', 'INV', '2021-11-13', '102030000001', 'Customer debit For Invoice No -  1001 Customer Walking Customer', '4500.00', '0.00', '1', 'dTnvOQptL9ngNZJ', '2021-11-13 14:48:04', NULL, NULL, '1'),
(18, '9636723861', 'INVOICE', '2021-11-13', '303', 'Sale Income For Invoice NO - 1001 Customer Walking Customer', '0.00', '4500.00', '1', 'dTnvOQptL9ngNZJ', '2021-11-13 14:48:04', NULL, NULL, '1'),
(19, '9127798483', 'INV', '2021-11-13', '10107', 'Inventory credit For Invoice No1002', '0.00', '4000.00', '1', 'dTnvOQptL9ngNZJ', '2021-11-13 14:48:21', NULL, NULL, '1'),
(20, '9127798483', 'INV', '2021-11-13', '102030000001', 'Customer debit For Invoice No -  1002 Customer Walking Customer', '4500.00', '0.00', '1', 'dTnvOQptL9ngNZJ', '2021-11-13 14:48:21', NULL, NULL, '1'),
(21, '9127798483', 'INVOICE', '2021-11-13', '303', 'Sale Income For Invoice NO - 1002 Customer Walking Customer', '0.00', '4500.00', '1', 'dTnvOQptL9ngNZJ', '2021-11-13 14:48:21', NULL, NULL, '1'),
(22, '9127798483', 'INV', '2021-11-13', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1002 Customer- Walking Customer', '0.00', '4500.00', '1', 'dTnvOQptL9ngNZJ', '2021-11-13 14:48:21', NULL, NULL, '1'),
(23, '9127798483', 'INV', '2021-11-13', '1020101', 'Cash in Hand in Sale for Invoice No - 1002 customer- Walking Customer', '4500.00', '0.00', '1', 'dTnvOQptL9ngNZJ', '2021-11-13 14:48:21', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `app_setting`
--

DROP TABLE IF EXISTS `app_setting`;
CREATE TABLE IF NOT EXISTS `app_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localhserver` varchar(250) DEFAULT NULL,
  `onlineserver` varchar(250) DEFAULT NULL,
  `hotspot` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_setting`
--

INSERT INTO `app_setting` (`id`, `localhserver`, `onlineserver`, `hotspot`) VALUES
(1, 'https://192.168.1.153/saleserp_sas_v-2', 'https://saleserpnew.bdtask.com/saleserp_v9.3-demo', 'https://192.168.1.167/saleserp');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `att_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sign_in` varchar(30) NOT NULL,
  `sign_out` varchar(30) NOT NULL,
  `staytime` varchar(30) NOT NULL,
  PRIMARY KEY (`att_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`att_id`, `employee_id`, `date`, `sign_in`, `sign_out`, `staytime`) VALUES
(1, 1, '2021-11-13', '10:10 AM', '06:22 PM', '08:12');

-- --------------------------------------------------------

--
-- Table structure for table `bank_add`
--

DROP TABLE IF EXISTS `bank_add`;
CREATE TABLE IF NOT EXISTS `bank_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company_information`
--

DROP TABLE IF EXISTS `company_information`;
CREATE TABLE IF NOT EXISTS `company_information` (
  `company_id` varchar(250) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_information`
--

INSERT INTO `company_information` (`company_id`, `company_name`, `email`, `address`, `mobile`, `website`, `status`) VALUES
('1', 'SRI JB HEALTH CARE', 'srijbhealthcaretrichy@gmail.com', '19,THONDAIMAN COLONY, SIMCO METER MAIN ROAD, TRICHY,TAMILNADU-620020', '9994036274', 'http://www.srijbhealthcare.com/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_tbl`
--

DROP TABLE IF EXISTS `currency_tbl`;
CREATE TABLE IF NOT EXISTS `currency_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_tbl`
--

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES
(1, 'Dollar', '$'),
(2, 'BDT', 'à§³'),
(3, 'INR', '₹');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

DROP TABLE IF EXISTS `customer_information`;
CREATE TABLE IF NOT EXISTS `customer_information` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) NOT NULL,
  `address2` text NOT NULL,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text,
  `state` text,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL COMMENT '1=paid,2=credit',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `status`, `create_date`, `create_by`) VALUES
(1, 'Walking Customer', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-03-02 17:53:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily_banking_add`
--

DROP TABLE IF EXISTS `daily_banking_add`;
CREATE TABLE IF NOT EXISTS `daily_banking_add` (
  `banking_id` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `bank_id` varchar(100) DEFAULT NULL,
  `deposit_type` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `description` text,
  `amount` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `daily_closing`
--

DROP TABLE IF EXISTS `daily_closing`;
CREATE TABLE IF NOT EXISTS `daily_closing` (
  `closing_id` varchar(255) NOT NULL,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` varchar(250) NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daily_closing`
--

INSERT INTO `daily_closing` (`closing_id`, `last_day_closing`, `cash_in`, `cash_out`, `date`, `amount`, `adjustment`, `status`) VALUES
('o3p4dL1dacajXq8', 0, 0, 20000, '2021-11-13', -20000, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
CREATE TABLE IF NOT EXISTS `designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `designation`, `details`) VALUES
(1, 'office admin', 'office admin');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

DROP TABLE IF EXISTS `email_config`;
CREATE TABLE IF NOT EXISTS `email_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL,
  `isinvoice` tinyint(4) NOT NULL,
  `isservice` tinyint(4) NOT NULL,
  `isquotation` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`, `isinvoice`, `isservice`, `isquotation`) VALUES
(1, 'ssmtp', 'ssl://ssmtp.gmail.com', '25', 'srijbhealthtrichy@gmail.com', 'Baskar@1515', 'html', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

DROP TABLE IF EXISTS `employee_history`;
CREATE TABLE IF NOT EXISTS `employee_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `rate_type` int(11) NOT NULL,
  `hrate` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `image` text,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_history`
--

INSERT INTO `employee_history` (`id`, `first_name`, `last_name`, `designation`, `phone`, `rate_type`, `hrate`, `email`, `blood_group`, `address_line_1`, `address_line_2`, `image`, `country`, `city`, `zip`) VALUES
(1, 'Fathima Mary', 'Baskar', '1', '8220460616', 2, 22, 'test@gmail.com', 'b+', 'trichy', '', '', 'India', '', '620020');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--

DROP TABLE IF EXISTS `employee_salary_payment`;
CREATE TABLE IF NOT EXISTS `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `generate_id` int(11) NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` decimal(18,2) NOT NULL DEFAULT '0.00',
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `salary_month` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`emp_sal_pay_id`),
  KEY `employee_id` (`employee_id`),
  KEY `generate_id` (`generate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_setup`
--

DROP TABLE IF EXISTS `employee_salary_setup`;
CREATE TABLE IF NOT EXISTS `employee_salary_setup` (
  `e_s_s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL,
  PRIMARY KEY (`e_s_s_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_salary_setup`
--

INSERT INTO `employee_salary_setup` (`e_s_s_id`, `employee_id`, `sal_type`, `salary_type_id`, `amount`, `create_date`, `update_date`, `update_id`, `gross_salary`) VALUES
(1, '1', '2', '0', '10.00', '2021-11-13', NULL, '', 19.8);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE IF NOT EXISTS `expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense_item`
--

DROP TABLE IF EXISTS `expense_item`;
CREATE TABLE IF NOT EXISTS `expense_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_item_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `total_amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `due_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `prevous_due` decimal(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `invoice` bigint(20) NOT NULL,
  `invoice_discount` decimal(10,2) DEFAULT '0.00' COMMENT 'invoice discount',
  `total_discount` decimal(10,2) DEFAULT '0.00' COMMENT 'total invoice discount',
  `total_tax` decimal(10,2) DEFAULT '0.00',
  `sales_by` varchar(50) NOT NULL,
  `invoice_details` text NOT NULL,
  `status` int(2) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `invoice_discount`, `total_discount`, `total_tax`, `sales_by`, `invoice_details`, `status`, `bank_id`, `payment_type`) VALUES
(1, 4225291832, 1, '2021-11-13', '500.00', '0.00', '500.00', '0.00', '0.00', 1000, '0.00', '0.00', '0.00', '1', 'Thank you for shopping with us', 1, NULL, 1),
(2, 9636723861, 1, '2021-11-13', '4500.00', '0.00', '4500.00', '0.00', '0.00', 1001, '0.00', '0.00', '0.00', 'dTnvOQptL9ngNZJ', 'Thank you for shopping with us', 1, NULL, 1),
(3, 9127798483, 1, '2021-11-13', '4500.00', '4500.00', '0.00', '0.00', '0.00', 1002, '0.00', '0.00', '0.00', 'dTnvOQptL9ngNZJ', 'Thank you for shopping with us', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

DROP TABLE IF EXISTS `invoice_details`;
CREATE TABLE IF NOT EXISTS `invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_details_id` varchar(100) NOT NULL,
  `invoice_id` varchar(100) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(12,0) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES
(1, '774858319242125', '4225291832', '81339912', NULL, '', '10.00', '50.00', 50, '500.00', '0.00', '', '0.00', '0', '500.00', 1),
(2, '152497199135822', '4225291832', '81339912', NULL, NULL, '-5.00', '50.00', 50, '-250.00', '0.00', NULL, '0.00', '-250', NULL, 1),
(3, '679183612124581', '9636723861', '44826966', NULL, '', '10.00', '450.00', 400, '4500.00', '0.00', '', NULL, '0', '4500.00', 1),
(4, '157135692358295', '9127798483', '44826966', NULL, '', '10.00', '450.00', 400, '4500.00', '0.00', '', NULL, '4500', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phrase` text NOT NULL,
  `english` text,
  `bangla` text,
  `manage_size` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=920 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`, `manage_size`) VALUES
(1, 'user_profile', 'User Profile', NULL, NULL),
(2, 'setting', 'Setting', NULL, NULL),
(3, 'language', 'Language', NULL, NULL),
(4, 'manage_users', 'Manage Users', NULL, NULL),
(5, 'add_user', 'Add User', NULL, NULL),
(6, 'manage_company', 'Manage Company', NULL, NULL),
(7, 'web_settings', 'Software Settings', NULL, NULL),
(8, 'manage_accounts', 'Manage Accounts', NULL, NULL),
(9, 'create_accounts', 'Create Account', NULL, NULL),
(10, 'manage_bank', 'Manage Bank', NULL, NULL),
(11, 'add_new_bank', 'Add New Bank', NULL, NULL),
(12, 'settings', 'Settings', NULL, NULL),
(13, 'closing_report', 'Closing Report', NULL, NULL),
(14, 'closing', 'Closing', NULL, NULL),
(15, 'cheque_manager', 'Cheque Manager', NULL, NULL),
(16, 'accounts_summary', 'Accounts Summary', NULL, NULL),
(17, 'expense', 'Expense', NULL, NULL),
(18, 'income', 'Income', NULL, NULL),
(19, 'accounts', 'Accounts', NULL, NULL),
(20, 'stock_report', 'Stock Report', NULL, NULL),
(21, 'stock', 'Stock', NULL, NULL),
(22, 'pos_invoice', 'POS Sale', NULL, NULL),
(23, 'manage_invoice', 'Manage Sale', NULL, NULL),
(24, 'new_invoice', 'New Sale', NULL, NULL),
(25, 'invoice', 'Sale', NULL, NULL),
(26, 'manage_purchase', 'Manage Purchase', NULL, NULL),
(27, 'add_purchase', 'Add Purchase', NULL, NULL),
(28, 'purchase', 'Purchase', NULL, NULL),
(29, 'paid_customer', 'Paid Customer', NULL, NULL),
(30, 'manage_customer', 'Manage Customer', NULL, NULL),
(31, 'add_customer', 'Add Customer', NULL, NULL),
(32, 'customer', 'Customer', NULL, NULL),
(33, 'supplier_payment_actual', 'Supplier Payment Ledger', NULL, NULL),
(34, 'supplier_sales_summary', 'Supplier Sales Summary', NULL, NULL),
(35, 'supplier_sales_details', 'Supplier Sales Details', NULL, NULL),
(36, 'supplier_ledger', 'Supplier Ledger', NULL, NULL),
(37, 'manage_supplier', 'Manage Supplier', NULL, NULL),
(38, 'add_supplier', 'Add Supplier', NULL, NULL),
(39, 'supplier', 'Supplier', NULL, NULL),
(40, 'product_statement', 'Product Statement', NULL, NULL),
(41, 'manage_product', 'Manage Product', NULL, NULL),
(42, 'add_product', 'Add Product', NULL, NULL),
(43, 'product', 'Product', NULL, NULL),
(44, 'manage_category', 'Manage Category', NULL, NULL),
(45, 'add_category', 'Add Category', NULL, NULL),
(46, 'category', 'Category', NULL, NULL),
(47, 'sales_report_product_wise', 'Sales Report (Product Wise)', NULL, NULL),
(48, 'purchase_report', 'Purchase Report', NULL, NULL),
(49, 'sales_report', 'Sales Report', NULL, NULL),
(50, 'todays_report', 'Todays Report', NULL, NULL),
(51, 'report', 'Report', NULL, NULL),
(52, 'dashboard', 'Dashboard', NULL, NULL),
(53, 'online', 'Online', NULL, NULL),
(54, 'logout', 'Logout', NULL, NULL),
(55, 'change_password', 'Change Password', NULL, NULL),
(56, 'total_purchase', 'Total Purchase', NULL, NULL),
(57, 'total_amount', 'Total Amount', NULL, NULL),
(58, 'supplier_name', 'Supplier Name', NULL, NULL),
(59, 'invoice_no', 'Invoice No', NULL, NULL),
(60, 'purchase_date', 'Purchase Date', NULL, NULL),
(61, 'todays_purchase_report', 'Todays Purchase Report', NULL, NULL),
(62, 'total_sales', 'Total Sales', NULL, NULL),
(63, 'customer_name', 'Customer Name', NULL, NULL),
(64, 'sales_date', 'Sales Date', NULL, NULL),
(65, 'todays_sales_report', 'Todays Sales Report', NULL, NULL),
(66, 'home', 'Home', NULL, NULL),
(67, 'todays_sales_and_purchase_report', 'Todays sales and purchase report', NULL, NULL),
(68, 'total_ammount', 'Total Amount', NULL, NULL),
(69, 'rate', 'Rate', NULL, NULL),
(70, 'product_model', 'Product Model', NULL, NULL),
(71, 'product_name', 'Product Name', NULL, NULL),
(72, 'search', 'Search', NULL, NULL),
(73, 'end_date', 'End Date', NULL, NULL),
(74, 'start_date', 'Start Date', NULL, NULL),
(75, 'total_purchase_report', 'Total Purchase Report', NULL, NULL),
(76, 'total_sales_report', 'Total Sales Report', NULL, NULL),
(77, 'total_seles', 'Total Sales', NULL, NULL),
(78, 'all_stock_report', 'All Stock Report', NULL, NULL),
(79, 'search_by_product', 'Search By Product', NULL, NULL),
(80, 'date', 'Date', NULL, NULL),
(81, 'print', 'Print', NULL, NULL),
(82, 'stock_date', 'Stock Date', NULL, NULL),
(83, 'print_date', 'Print Date', NULL, NULL),
(84, 'sales', 'Sales', NULL, NULL),
(85, 'price', 'Price', NULL, NULL),
(86, 'sl', 'SL.', NULL, NULL),
(87, 'add_new_category', 'Add new category', NULL, NULL),
(88, 'category_name', 'Category Name', NULL, NULL),
(89, 'save', 'Save', NULL, NULL),
(90, 'delete', 'Delete', NULL, NULL),
(91, 'update', 'Update', NULL, NULL),
(92, 'action', 'Action', NULL, NULL),
(93, 'manage_your_category', 'Manage your category ', NULL, NULL),
(94, 'category_edit', 'Category Edit', NULL, NULL),
(95, 'status', 'Status', NULL, NULL),
(96, 'active', 'Active', NULL, NULL),
(97, 'inactive', 'Inactive', NULL, NULL),
(98, 'save_changes', 'Save Changes', NULL, NULL),
(99, 'save_and_add_another', 'Save And Add Another', NULL, NULL),
(100, 'model', 'Model', NULL, NULL),
(101, 'supplier_price', 'Supplier Price', NULL, NULL),
(102, 'sell_price', 'Sale Price', NULL, NULL),
(103, 'image', 'Image', NULL, NULL),
(104, 'select_one', 'Select One', NULL, NULL),
(105, 'details', 'Details', NULL, NULL),
(106, 'new_product', 'New Product', NULL, NULL),
(107, 'add_new_product', 'Add new product', NULL, NULL),
(108, 'barcode', 'Barcode', NULL, NULL),
(109, 'qr_code', 'Qr-Code', NULL, NULL),
(110, 'product_details', 'Product Details', NULL, NULL),
(111, 'manage_your_product', 'Manage your product', NULL, NULL),
(112, 'product_edit', 'Product Edit', NULL, NULL),
(113, 'edit_your_product', 'Edit your product', NULL, NULL),
(114, 'cancel', 'Cancel', NULL, NULL),
(115, 'incl_vat', 'Incl. Vat', NULL, NULL),
(116, 'money', 'TK', NULL, NULL),
(117, 'grand_total', 'Grand Total', NULL, NULL),
(118, 'quantity', 'Qnty', NULL, NULL),
(119, 'product_report', 'Product Report', NULL, NULL),
(120, 'product_sales_and_purchase_report', 'Product sales and purchase report', NULL, NULL),
(121, 'previous_stock', 'Previous Stock', NULL, NULL),
(122, 'out', 'Out', NULL, NULL),
(123, 'in', 'In', NULL, NULL),
(124, 'to', 'To', NULL, NULL),
(125, 'previous_balance', 'Previous Credit Balance', NULL, NULL),
(126, 'customer_address', 'Customer Address', NULL, NULL),
(127, 'customer_mobile', 'Customer Mobile', NULL, NULL),
(128, 'customer_email', 'Customer Email', NULL, NULL),
(129, 'add_new_customer', 'Add new customer', NULL, NULL),
(130, 'balance', 'Balance', NULL, NULL),
(131, 'mobile', 'Mobile', NULL, NULL),
(132, 'address', 'Address', NULL, NULL),
(133, 'manage_your_customer', 'Manage your customer', NULL, NULL),
(134, 'customer_edit', 'Customer Edit', NULL, NULL),
(135, 'paid_customer_list', 'Paid Customer List', NULL, NULL),
(136, 'ammount', 'Amount', NULL, NULL),
(137, 'customer_ledger', 'Customer Ledger', NULL, NULL),
(138, 'manage_customer_ledger', 'Manage Customer Ledger', NULL, NULL),
(139, 'customer_information', 'Customer Information', NULL, NULL),
(140, 'debit_ammount', 'Debit Amount', NULL, NULL),
(141, 'credit_ammount', 'Credit Amount', NULL, NULL),
(142, 'balance_ammount', 'Balance Amount', NULL, NULL),
(143, 'receipt_no', 'Receipt NO', NULL, NULL),
(144, 'description', 'Description', NULL, NULL),
(145, 'debit', 'Debit', NULL, NULL),
(146, 'credit', 'Credit', NULL, NULL),
(147, 'item_information', 'Item Information', NULL, NULL),
(148, 'total', 'Total', NULL, NULL),
(149, 'please_select_supplier', 'Please Select Supplier', NULL, NULL),
(150, 'submit', 'Submit', NULL, NULL),
(151, 'submit_and_add_another', 'Submit And Add Another One', NULL, NULL),
(152, 'add_new_item', 'Add New Item', NULL, NULL),
(153, 'manage_your_purchase', 'Manage your purchase', NULL, NULL),
(154, 'purchase_edit', 'Purchase Edit', NULL, NULL),
(155, 'purchase_ledger', 'Purchase Ledger', NULL, NULL),
(156, 'invoice_information', 'Sale Information', NULL, NULL),
(157, 'paid_ammount', 'Paid Amount', NULL, NULL),
(158, 'discount', 'Dis./Pcs.', NULL, NULL),
(159, 'save_and_paid', 'Save And Paid', NULL, NULL),
(160, 'payee_name', 'Payee Name', NULL, NULL),
(161, 'manage_your_invoice', 'Manage your Sale', NULL, NULL),
(162, 'invoice_edit', 'Sale Edit', NULL, NULL),
(163, 'new_pos_invoice', 'New POS Sale', NULL, NULL),
(164, 'add_new_pos_invoice', 'Add new pos Sale', NULL, NULL),
(165, 'product_id', 'Product ID', NULL, NULL),
(166, 'paid_amount', 'Paid Amount', NULL, NULL),
(167, 'authorised_by', 'Authorised By', NULL, NULL),
(168, 'checked_by', 'Checked By', NULL, NULL),
(169, 'received_by', 'Received By', NULL, NULL),
(170, 'prepared_by', 'Prepared By', NULL, NULL),
(171, 'memo_no', 'Memo No', NULL, NULL),
(172, 'website', 'Website', NULL, NULL),
(173, 'email', 'Email', NULL, NULL),
(174, 'invoice_details', 'Sale Details', NULL, NULL),
(175, 'reset', 'Reset', NULL, NULL),
(176, 'payment_account', 'Payment Account', NULL, NULL),
(177, 'bank_name', 'Bank Name', NULL, NULL),
(178, 'cheque_or_pay_order_no', 'Cheque/Pay Order No', NULL, NULL),
(179, 'payment_type', 'Payment Type', NULL, NULL),
(180, 'payment_from', 'Payment From', NULL, NULL),
(181, 'payment_date', 'Payment Date', NULL, NULL),
(182, 'add_income', 'Add Income', NULL, NULL),
(183, 'cash', 'Cash', NULL, NULL),
(184, 'cheque', 'Cheque', NULL, NULL),
(185, 'pay_order', 'Pay Order', NULL, NULL),
(186, 'payment_to', 'Payment To', NULL, NULL),
(187, 'total_outflow_ammount', 'Total Expense Amount', NULL, NULL),
(188, 'transections', 'Transections', NULL, NULL),
(189, 'accounts_name', 'Accounts Name', NULL, NULL),
(190, 'outflow_report', 'Expense Report', NULL, NULL),
(191, 'inflow_report', 'Income Report', NULL, NULL),
(192, 'all', 'All', NULL, NULL),
(193, 'account', 'Account', NULL, NULL),
(194, 'from', 'From', NULL, NULL),
(195, 'account_summary_report', 'Account Summary Report', NULL, NULL),
(196, 'search_by_date', 'Search By Date', NULL, NULL),
(197, 'cheque_no', 'Cheque No', NULL, NULL),
(198, 'name', 'Name', NULL, NULL),
(199, 'closing_account', 'Closing Account', NULL, NULL),
(200, 'close_your_account', 'Close your account', NULL, NULL),
(201, 'last_day_closing', 'Last Day Closing', NULL, NULL),
(202, 'cash_in', 'Cash In', NULL, NULL),
(203, 'cash_out', 'Cash Out', NULL, NULL),
(204, 'cash_in_hand', 'Cash In Hand', NULL, NULL),
(205, 'add_new_bank', 'Add New Bank', NULL, NULL),
(206, 'day_closing', 'Day Closing', NULL, NULL),
(207, 'account_closing_report', 'Account Closing Report', NULL, NULL),
(208, 'last_day_ammount', 'Last Day Amount', NULL, NULL),
(209, 'adjustment', 'Adjustment', NULL, NULL),
(210, 'pay_type', 'Pay Type', NULL, NULL),
(211, 'customer_or_supplier', 'Customer,Supplier Or Others', NULL, NULL),
(212, 'transection_id', 'Transections ID', NULL, NULL),
(213, 'accounts_summary_report', 'Accounts Summary Report', NULL, NULL),
(214, 'bank_list', 'Bank List', NULL, NULL),
(215, 'bank_edit', 'Bank Edit', NULL, NULL),
(216, 'debit_plus', 'Debit (+)', NULL, NULL),
(217, 'credit_minus', 'Credit (-)', NULL, NULL),
(218, 'account_name', 'Account Name', NULL, NULL),
(219, 'account_type', 'Account Type', NULL, NULL),
(220, 'account_real_name', 'Account Real Name', NULL, NULL),
(221, 'manage_account', 'Manage Account', NULL, NULL),
(222, 'company_name', 'Niha International', NULL, NULL),
(223, 'edit_your_company_information', 'Edit your company information', NULL, NULL),
(224, 'company_edit', 'Company Edit', NULL, NULL),
(225, 'admin', 'Admin', NULL, NULL),
(226, 'user', 'User', NULL, NULL),
(227, 'password', 'Password', NULL, NULL),
(228, 'last_name', 'Last Name', NULL, NULL),
(229, 'first_name', 'First Name', NULL, NULL),
(230, 'add_new_user_information', 'Add new user information', NULL, NULL),
(231, 'user_type', 'User Type', NULL, NULL),
(232, 'user_edit', 'User Edit', NULL, NULL),
(233, 'rtr', 'RTR', NULL, NULL),
(234, 'ltr', 'LTR', NULL, NULL),
(235, 'ltr_or_rtr', 'LTR/RTR', NULL, NULL),
(236, 'footer_text', 'Footer Text', NULL, NULL),
(237, 'favicon', 'Favicon', NULL, NULL),
(238, 'logo', 'Logo', NULL, NULL),
(239, 'update_setting', 'Update Setting', NULL, NULL),
(240, 'update_your_web_setting', 'Update your web setting', NULL, NULL),
(241, 'login', 'Login', NULL, NULL),
(242, 'your_strong_password', 'Your strong password', NULL, NULL),
(243, 'your_unique_email', 'Your unique email', NULL, NULL),
(244, 'please_enter_your_login_information', 'Please enter your login information.', NULL, NULL),
(245, 'update_profile', 'Update Profile', NULL, NULL),
(246, 'your_profile', 'Your Profile', NULL, NULL),
(247, 're_type_password', 'Re-Type Password', NULL, NULL),
(248, 'new_password', 'New Password', NULL, NULL),
(249, 'old_password', 'Old Password', NULL, NULL),
(250, 'new_information', 'New Information', NULL, NULL),
(251, 'old_information', 'Old Information', NULL, NULL),
(252, 'change_your_information', 'Change your information', NULL, NULL),
(253, 'change_your_profile', 'Change your profile', NULL, NULL),
(254, 'profile', 'Profile', NULL, NULL),
(255, 'wrong_username_or_password', 'Wrong User Name Or Password !', NULL, NULL),
(256, 'successfully_updated', 'Successfully Updated.', NULL, NULL),
(257, 'blank_field_does_not_accept', 'Blank Field Does Not Accept !', NULL, NULL),
(258, 'successfully_changed_password', 'Successfully changed password.', NULL, NULL),
(259, 'you_are_not_authorised_person', 'You are not authorised person !', NULL, NULL),
(260, 'password_and_repassword_does_not_match', 'Passwor and re-password does not match !', NULL, NULL),
(261, 'new_password_at_least_six_character', 'New Password At Least 6 Character.', NULL, NULL),
(262, 'you_put_wrong_email_address', 'You put wrong email address !', NULL, NULL),
(263, 'cheque_ammount_asjusted', 'Cheque amount adjusted.', NULL, NULL),
(264, 'successfully_payment_paid', 'Successfully Payment Paid.', NULL, NULL),
(265, 'successfully_added', 'Successfully Added.', NULL, NULL),
(266, 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Amount Not Changeable.', NULL, NULL),
(267, 'successfully_payment_received', 'Successfully Payment Received.', NULL, NULL),
(268, 'already_inserted', 'Already Inserted !', NULL, NULL),
(269, 'successfully_delete', 'Successfully Delete.', NULL, NULL),
(270, 'successfully_created', 'Successfully Created.', NULL, NULL),
(271, 'logo_not_uploaded', 'Logo not uploaded !', NULL, NULL),
(272, 'favicon_not_uploaded', 'Favicon not uploaded !', NULL, NULL),
(273, 'supplier_mobile', 'Supplier Mobile', NULL, NULL),
(274, 'supplier_address', 'Supplier Address', NULL, NULL),
(275, 'supplier_details', 'Supplier Details', NULL, NULL),
(276, 'add_new_supplier', 'Add New Supplier', NULL, NULL),
(277, 'manage_suppiler', 'Manage Supplier', NULL, NULL),
(278, 'manage_your_supplier', 'Manage your supplier', NULL, NULL),
(279, 'manage_supplier_ledger', 'Manage supplier ledger', NULL, NULL),
(280, 'invoice_id', 'Invoice ID', NULL, NULL),
(281, 'deposite_id', 'Deposite ID', NULL, NULL),
(282, 'supplier_actual_ledger', 'Supplier Payment Ledger', NULL, NULL),
(283, 'supplier_information', 'Supplier Information', NULL, NULL),
(284, 'event', 'Event', NULL, NULL),
(285, 'add_new_income', 'Add New Income', NULL, NULL),
(286, 'add_expese', 'Add Expense', NULL, NULL),
(287, 'add_new_expense', 'Add New Expense', NULL, NULL),
(288, 'total_inflow_ammount', 'Total Income Amount', NULL, NULL),
(289, 'create_new_invoice', 'Create New Sale', NULL, NULL),
(290, 'create_pos_invoice', 'Create POS Sale', NULL, NULL),
(291, 'total_profit', 'Total Profit', NULL, NULL),
(292, 'monthly_progress_report', 'Monthly Progress Report', NULL, NULL),
(293, 'total_invoice', 'Total Sale', NULL, NULL),
(294, 'account_summary', 'Account Summary', NULL, NULL),
(295, 'total_supplier', 'Total Supplier', NULL, NULL),
(296, 'total_product', 'Total Product', NULL, NULL),
(297, 'total_customer', 'Total Customer', NULL, NULL),
(298, 'supplier_edit', 'Supplier Edit', NULL, NULL),
(299, 'add_new_invoice', 'Add New Sale', NULL, NULL),
(300, 'add_new_purchase', 'Add new purchase', NULL, NULL),
(301, 'currency', 'Currency', NULL, NULL),
(302, 'currency_position', 'Currency Position', NULL, NULL),
(303, 'left', 'Left', NULL, NULL),
(304, 'right', 'Right', NULL, NULL),
(305, 'add_tax', 'Add Tax', NULL, NULL),
(306, 'manage_tax', 'Manage Tax', NULL, NULL),
(307, 'add_new_tax', 'Add new tax', NULL, NULL),
(308, 'enter_tax', 'Enter Tax', NULL, NULL),
(309, 'already_exists', 'Already Exists !', NULL, NULL),
(310, 'successfully_inserted', 'Successfully Inserted.', NULL, NULL),
(311, 'tax', 'Tax', NULL, NULL),
(312, 'tax_edit', 'Tax Edit', NULL, NULL),
(313, 'product_not_added', 'Product not added !', NULL, NULL),
(314, 'total_tax', 'Total Tax', NULL, NULL),
(315, 'manage_your_supplier_details', 'Manage your supplier details.', NULL, NULL),
(316, 'invoice_description', 'Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', NULL, NULL),
(317, 'thank_you_for_choosing_us', 'Thank you very much for choosing us.', NULL, NULL),
(318, 'billing_date', 'Billing Date', NULL, NULL),
(319, 'billing_to', 'Billing To', NULL, NULL),
(320, 'billing_from', 'Billing From', NULL, NULL),
(321, 'you_cant_delete_this_product', 'Sorry !!  You can\'t delete this product.This product already used in calculation system!', NULL, NULL),
(322, 'old_customer', 'Old Customer', NULL, NULL),
(323, 'new_customer', 'New Customer', NULL, NULL),
(324, 'new_supplier', 'New Supplier', NULL, NULL),
(325, 'old_supplier', 'Old Supplier', NULL, NULL),
(326, 'credit_customer', 'Credit Customer', NULL, NULL),
(327, 'account_already_exists', 'This Account Already Exists !', NULL, NULL),
(328, 'edit_income', 'Edit Income', NULL, NULL),
(329, 'you_are_not_access_this_part', 'You are not authorised person !', NULL, NULL),
(330, 'account_edit', 'Account Edit', NULL, NULL),
(331, 'due', 'Due', NULL, NULL),
(332, 'expense_edit', 'Expense Edit', NULL, NULL),
(333, 'please_select_customer', 'Please select customer !', NULL, NULL),
(334, 'profit_report', 'Profit Report (Sale Wise)', NULL, NULL),
(335, 'total_profit_report', 'Total profit report', NULL, NULL),
(336, 'please_enter_valid_captcha', 'Please enter valid captcha.', NULL, NULL),
(337, 'category_not_selected', 'Category not selected.', NULL, NULL),
(338, 'supplier_not_selected', 'Supplier not selected.', NULL, NULL),
(339, 'please_select_product', 'Please select product.', NULL, NULL),
(340, 'product_model_already_exist', 'Product model already exist !', NULL, NULL),
(341, 'invoice_logo', 'Sale Logo', NULL, NULL),
(342, 'available_qnty', 'Av. Qnty.', NULL, NULL),
(343, 'you_can_not_buy_greater_than_available_cartoon', 'You can not select grater than available cartoon !', NULL, NULL),
(344, 'customer_details', 'Customer details', NULL, NULL),
(345, 'manage_customer_details', 'Manage customer details.', NULL, NULL),
(346, 'site_key', 'Captcha Site Key', NULL, NULL),
(347, 'secret_key', 'Captcha Secret Key', NULL, NULL),
(348, 'captcha', 'Captcha', NULL, NULL),
(349, 'cartoon_quantity', 'Cartoon Quantity', NULL, NULL),
(350, 'total_cartoon', 'Total Cartoon', NULL, NULL),
(351, 'cartoon', 'Cartoon', NULL, NULL),
(352, 'item_cartoon', 'Item/Cartoon', NULL, NULL),
(353, 'product_and_supplier_did_not_match', 'Product and supplier did not match !', NULL, NULL),
(354, 'if_you_update_purchase_first_select_supplier_then_product_and_then_quantity', 'If you update purchase,first select supplier then product and then update qnty.', NULL, NULL),
(355, 'item', 'Item', NULL, NULL),
(356, 'manage_your_credit_customer', 'Manage your credit customer', NULL, NULL),
(357, 'total_quantity', 'Total Quantity', NULL, NULL),
(358, 'quantity_per_cartoon', 'Quantity per cartoon', NULL, NULL),
(359, 'barcode_qrcode_scan_here', 'Barcode or QR-code scan here', NULL, NULL),
(360, 'synchronizer_setting', 'Synchronizer Setting', NULL, NULL),
(361, 'data_synchronizer', 'Data Synchronizer', NULL, NULL),
(362, 'hostname', 'Host name', NULL, NULL),
(363, 'username', 'User Name', NULL, NULL),
(364, 'ftp_port', 'FTP Port', NULL, NULL),
(365, 'ftp_debug', 'FTP Debug', NULL, NULL),
(366, 'project_root', 'Project Root', NULL, NULL),
(367, 'please_try_again', 'Please try again', NULL, NULL),
(368, 'save_successfully', 'Save successfully', NULL, NULL),
(369, 'synchronize', 'Synchronize', NULL, NULL),
(370, 'internet_connection', 'Internet Connection', NULL, NULL),
(371, 'outgoing_file', 'Outgoing File', NULL, NULL),
(372, 'incoming_file', 'Incoming File', NULL, NULL),
(373, 'ok', 'Ok', NULL, NULL),
(374, 'not_available', 'Not Available', NULL, NULL),
(375, 'available', 'Available', NULL, NULL),
(376, 'download_data_from_server', 'Download data from server', NULL, NULL),
(377, 'data_import_to_database', 'Data import to database', NULL, NULL),
(378, 'data_upload_to_server', 'Data uplod to server', NULL, NULL),
(379, 'please_wait', 'Please Wait', NULL, NULL),
(380, 'ooops_something_went_wrong', 'Oooops Something went wrong !', NULL, NULL),
(381, 'upload_successfully', 'Upload successfully', NULL, NULL),
(382, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file please check configuration', NULL, NULL),
(383, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', NULL, NULL),
(384, 'download_successfully', 'Download successfully', NULL, NULL),
(385, 'unable_to_download_file_please_check_configuration', 'Unable to download file please check configuration', NULL, NULL),
(386, 'data_import_first', 'Data import past', NULL, NULL),
(387, 'data_import_successfully', 'Data import successfully', NULL, NULL),
(388, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data please check config or sql file', NULL, NULL),
(389, 'total_sale_ctn', 'Total Sale Ctn', NULL, NULL),
(390, 'in_qnty', 'In Qnty.', NULL, NULL),
(391, 'out_qnty', 'Out Qnty.', NULL, NULL),
(392, 'stock_report_supplier_wise', 'Stock Report (Supplier Wise)', NULL, NULL),
(393, 'all_stock_report_supplier_wise', 'Stock Report (Suppler Wise)', NULL, NULL),
(394, 'select_supplier', 'Select Supplier', NULL, NULL),
(395, 'stock_report_product_wise', 'Stock Report (Product Wise)', NULL, NULL),
(396, 'phone', 'Phone', NULL, NULL),
(397, 'select_product', 'Select Product', NULL, NULL),
(398, 'in_quantity', 'In Qnty.', NULL, NULL),
(399, 'out_quantity', 'Out Qnty.', NULL, NULL),
(400, 'in_taka', 'In TK.', NULL, NULL),
(401, 'out_taka', 'Out TK.', NULL, NULL),
(402, 'commission', 'Commission', NULL, NULL),
(403, 'generate_commission', 'Generate Commssion', NULL, NULL),
(404, 'commission_rate', 'Commission Rate', NULL, NULL),
(405, 'total_ctn', 'Total Ctn.', NULL, NULL),
(406, 'per_pcs_commission', 'Per PCS Commission', NULL, NULL),
(407, 'total_commission', 'Total Commission', NULL, NULL),
(408, 'enter', 'Enter', NULL, NULL),
(409, 'please_add_walking_customer_for_default_customer', 'Please add \'Walking Customer\' for default customer.', NULL, NULL),
(410, 'supplier_ammount', 'Supplier Amount', NULL, NULL),
(411, 'my_sale_ammount', 'My Sale Amount', NULL, NULL),
(412, 'signature_pic', 'Signature Picture', NULL, NULL),
(413, 'branch', 'Branch', NULL, NULL),
(414, 'ac_no', 'A/C Number', NULL, NULL),
(415, 'ac_name', 'A/C Name', NULL, NULL),
(416, 'bank_transaction', 'Bank Transaction', NULL, NULL),
(417, 'bank', 'Bank', NULL, NULL),
(418, 'withdraw_deposite_id', 'Withdraw / Deposite ID', NULL, NULL),
(419, 'bank_ledger', 'Bank Ledger', NULL, NULL),
(420, 'note_name', 'Note Name', NULL, NULL),
(421, 'pcs', 'Pcs.', NULL, NULL),
(422, '1', '1', NULL, NULL),
(423, '2', '2', NULL, NULL),
(424, '5', '5', NULL, NULL),
(425, '10', '10', NULL, NULL),
(426, '20', '20', NULL, NULL),
(427, '50', '50', NULL, NULL),
(428, '100', '100', NULL, NULL),
(429, '500', '500', NULL, NULL),
(430, '1000', '1000', NULL, NULL),
(431, 'total_discount', 'Total Discount', NULL, NULL),
(432, 'product_not_found', 'Product not found !', NULL, NULL),
(433, 'this_is_not_credit_customer', 'This is not credit customer !', NULL, NULL),
(434, 'personal_loan', 'Personal Loan', NULL, NULL),
(435, 'add_person', 'Add Person', NULL, NULL),
(436, 'add_loan', 'Add Loan', NULL, NULL),
(437, 'add_payment', 'Add Payment', NULL, NULL),
(438, 'manage_person', 'Manage Person', NULL, NULL),
(439, 'personal_edit', 'Person Edit', NULL, NULL),
(440, 'person_ledger', 'Person Ledger', NULL, NULL),
(441, 'backup_restore', 'Backup ', NULL, NULL),
(442, 'database_backup', 'Database backup', NULL, NULL),
(443, 'file_information', 'File information', NULL, NULL),
(444, 'filename', 'Filename', NULL, NULL),
(445, 'size', 'Size', NULL, NULL),
(446, 'backup_date', 'Backup date', NULL, NULL),
(447, 'backup_now', 'Backup now', NULL, NULL),
(448, 'restore_now', 'Restore now', NULL, NULL),
(449, 'are_you_sure', 'Are you sure ?', NULL, NULL),
(450, 'download', 'Download', NULL, NULL),
(451, 'backup_and_restore', 'Backup', NULL, NULL),
(452, 'backup_successfully', 'Backup successfully', NULL, NULL),
(453, 'delete_successfully', 'Delete successfully', NULL, NULL),
(454, 'stock_ctn', 'Stock/Qnt', NULL, NULL),
(455, 'unit', 'Unit', NULL, NULL),
(456, 'meter_m', 'Meter (M)', NULL, NULL),
(457, 'piece_pc', 'Piece (Pc)', NULL, NULL),
(458, 'kilogram_kg', 'Kilogram (Kg)', NULL, NULL),
(459, 'stock_cartoon', 'Stock Cartoon', NULL, NULL),
(460, 'add_product_csv', 'Add Product (CSV)', NULL, NULL),
(461, 'import_product_csv', 'Import product (CSV)', NULL, NULL),
(462, 'close', 'Close', NULL, NULL),
(463, 'download_example_file', 'Download example file.', NULL, NULL),
(464, 'upload_csv_file', 'Upload CSV File', NULL, NULL),
(465, 'csv_file_informaion', 'CSV File Information', NULL, NULL),
(466, 'out_of_stock', 'Out Of Stock', NULL, NULL),
(467, 'others', 'Others', NULL, NULL),
(468, 'full_paid', 'Full Paid', NULL, NULL),
(469, 'successfully_saved', 'Your Data Successfully Saved', NULL, NULL),
(470, 'manage_loan', 'Manage Loan', NULL, NULL),
(471, 'receipt', 'Receipt', NULL, NULL),
(472, 'payment', 'Payment', NULL, NULL),
(473, 'cashflow', 'Daily Cash Flow', NULL, NULL),
(474, 'signature', 'Signature', NULL, NULL),
(475, 'supplier_reports', 'Supplier Reports', NULL, NULL),
(476, 'generate', 'Generate', NULL, NULL),
(477, 'todays_overview', 'Todays Overview', NULL, NULL),
(478, 'last_sales', 'Last Sales', NULL, NULL),
(479, 'manage_transaction', 'Manage Transaction', NULL, NULL),
(480, 'daily_summary', 'Daily Summary', NULL, NULL),
(481, 'daily_cash_flow', 'Daily Cash Flow', NULL, NULL),
(482, 'custom_report', 'Custom Report', NULL, NULL),
(483, 'transaction', 'Transaction', NULL, NULL),
(484, 'receipt_amount', 'Receipt Amount', NULL, NULL),
(485, 'transaction_details_datewise', 'Transaction Details Datewise', NULL, NULL),
(486, 'cash_closing', 'Cash Closing', NULL, NULL),
(487, 'you_can_not_buy_greater_than_available_qnty', 'You can not buy greater than available qnty.', NULL, NULL),
(488, 'supplier_id', 'Supplier ID', NULL, NULL),
(489, 'category_id', 'Category ID', NULL, NULL),
(490, 'select_report', 'Select Report', NULL, NULL),
(491, 'supplier_summary', 'Supplier summary', NULL, NULL),
(492, 'sales_payment_actual', 'Sales payment actual', NULL, NULL),
(493, 'today_already_closed', 'Today already closed.', NULL, NULL),
(494, 'root_account', 'Root Account', NULL, NULL),
(495, 'office', 'Office', NULL, NULL),
(496, 'loan', 'Loan', NULL, NULL),
(497, 'transaction_mood', 'Transaction Mood', NULL, NULL),
(498, 'select_account', 'Select Account', NULL, NULL),
(499, 'add_receipt', 'Add Receipt', NULL, NULL),
(500, 'update_transaction', 'Update Transaction', NULL, NULL),
(501, 'no_stock_found', 'No Stock Found !', NULL, NULL),
(502, 'admin_login_area', 'Admin Login Area', NULL, NULL),
(503, 'print_qr_code', 'Print QR Code', NULL, NULL),
(504, 'discount_type', 'Discount Type', NULL, NULL),
(505, 'discount_percentage', 'Discount', NULL, NULL),
(506, 'fixed_dis', 'Fixed Dis.', NULL, NULL),
(507, 'return', 'Return', NULL, NULL),
(508, 'stock_return_list', 'Stock Return List', NULL, NULL),
(509, 'wastage_return_list', 'Wastage Return List', NULL, NULL),
(510, 'return_invoice', 'Sale Return', NULL, NULL),
(511, 'sold_qty', 'Sold Qty', NULL, NULL),
(512, 'ret_quantity', 'Return Qty', NULL, NULL),
(513, 'deduction', 'Deduction', NULL, NULL),
(514, 'check_return', 'Check Return', NULL, NULL),
(515, 'reason', 'Reason', NULL, NULL),
(516, 'usablilties', 'Usability', NULL, NULL),
(517, 'adjs_with_stck', 'Adjust With Stock', NULL, NULL),
(518, 'return_to_supplier', 'Return To Supplier', NULL, NULL),
(519, 'wastage', 'Wastage', NULL, NULL),
(520, 'to_deduction', 'Total Deduction ', NULL, NULL),
(521, 'nt_return', 'Net Return Amount', NULL, NULL),
(522, 'return_list', 'Return List', NULL, NULL),
(523, 'add_return', 'Add Return', NULL, NULL),
(524, 'per_qty', 'Purchase Qty', NULL, NULL),
(525, 'return_supplier', 'Supplier Return', NULL, NULL),
(526, 'stock_purchase', 'Stock Purchase Price', NULL, NULL),
(527, 'stock_sale', 'Stock Sale Price', NULL, NULL),
(528, 'supplier_return', 'Supplier Return', NULL, NULL),
(529, 'purchase_id', 'Purchase ID', NULL, NULL),
(530, 'return_id', 'Return ID', NULL, NULL),
(531, 'supplier_return_list', 'Supplier Return List', NULL, NULL),
(532, 'c_r_slist', 'Stock Return Stock', NULL, NULL),
(533, 'wastage_list', 'Wastage List', NULL, NULL),
(534, 'please_input_correct_invoice_id', 'Please Input a Correct Sale ID', NULL, NULL),
(535, 'please_input_correct_purchase_id', 'Please Input Your Correct  Purchase ID', NULL, NULL),
(536, 'add_more', 'Add More', NULL, NULL),
(537, 'prouct_details', 'Product Details', NULL, NULL),
(538, 'prouct_detail', 'Product Details', NULL, NULL),
(539, 'stock_return', 'Stock Return', NULL, NULL),
(540, 'choose_transaction', 'Select Transaction', NULL, NULL),
(541, 'transection_category', 'Select  Category', NULL, NULL),
(542, 'transaction_categry', 'Select Category', NULL, NULL),
(543, 'search_supplier', 'Search Supplier', NULL, NULL),
(544, 'customer_id', 'Customer ID', NULL, NULL),
(545, 'search_customer', 'Search Customer Invoice', NULL, NULL),
(546, 'serial_no', 'SN', NULL, NULL),
(547, 'item_discount', 'Item Discount', NULL, NULL),
(548, 'invoice_discount', 'Sale Discount', NULL, NULL),
(549, 'add_unit', 'Add Unit', NULL, NULL),
(550, 'manage_unit', 'Manage Unit', NULL, NULL),
(551, 'add_new_unit', 'Add New Unit', NULL, NULL),
(552, 'unit_name', 'Unit Name', NULL, NULL),
(553, 'payment_amount', 'Payment Amount', NULL, NULL),
(554, 'manage_your_unit', 'Manage Your Unit', NULL, NULL),
(555, 'unit_id', 'Unit ID', NULL, NULL),
(556, 'unit_edit', 'Unit Edit', NULL, NULL),
(557, 'vat', 'Vat', NULL, NULL),
(558, 'sales_report_category_wise', 'Sales Report (Category wise)', NULL, NULL),
(559, 'purchase_report_category_wise', 'Purchase Report (Category wise)', NULL, NULL),
(560, 'category_wise_purchase_report', 'Category wise purchase report', NULL, NULL),
(561, 'category_wise_sales_report', 'Category wise sales report', NULL, NULL),
(562, 'best_sale_product', 'Best Sale Product', NULL, NULL),
(563, 'all_best_sales_product', 'All Best Sales Products', NULL, NULL),
(564, 'todays_customer_receipt', 'Todays Customer Receipt', NULL, NULL),
(565, 'not_found', 'Record not found', NULL, NULL),
(566, 'collection', 'Collection', NULL, NULL),
(567, 'increment', 'Increment', NULL, NULL),
(568, 'accounts_tree_view', 'Accounts Tree View', NULL, NULL),
(569, 'debit_voucher', 'Debit Voucher', NULL, NULL),
(570, 'voucher_no', 'Voucher No', NULL, NULL),
(571, 'credit_account_head', 'Credit Account Head', NULL, NULL),
(572, 'remark', 'Remark', NULL, NULL),
(573, 'code', 'Code', NULL, NULL),
(574, 'amount', 'Amount', NULL, NULL),
(575, 'approved', 'Approved', NULL, NULL),
(576, 'debit_account_head', 'Debit Account Head', NULL, NULL),
(577, 'credit_voucher', 'Credit Voucher', NULL, NULL),
(578, 'find', 'Find', NULL, NULL),
(579, 'transaction_date', 'Transaction Date', NULL, NULL),
(580, 'voucher_type', 'Voucher Type', NULL, NULL),
(581, 'particulars', 'Particulars', NULL, NULL),
(582, 'with_details', 'With Details', NULL, NULL),
(583, 'general_ledger', 'General Ledger', NULL, NULL),
(584, 'general_ledger_of', 'General ledger of', NULL, NULL),
(585, 'pre_balance', 'Pre Balance', NULL, NULL),
(586, 'current_balance', 'Current Balance', NULL, NULL),
(587, 'to_date', 'To Date', NULL, NULL),
(588, 'from_date', 'From Date', NULL, NULL),
(589, 'trial_balance', 'Trial Balance', NULL, NULL),
(590, 'authorized_signature', 'Authorized Signature', NULL, NULL),
(591, 'chairman', 'Chairman', NULL, NULL),
(592, 'total_income', 'Total Income', NULL, NULL),
(593, 'statement_of_comprehensive_income', 'Statement of Comprehensive Income', NULL, NULL),
(594, 'profit_loss', 'Profit Loss', NULL, NULL),
(595, 'cash_flow_report', 'Cash Flow Report', NULL, NULL),
(596, 'cash_flow_statement', 'Cash Flow Statement', NULL, NULL),
(597, 'amount_in_dollar', 'Amount In Dollar', NULL, NULL),
(598, 'opening_cash_and_equivalent', 'Opening Cash and Equivalent', NULL, NULL),
(599, 'coa_print', 'Coa Print', NULL, NULL),
(600, 'cash_flow', 'Cash Flow', NULL, NULL),
(601, 'cash_book', 'Cash Book', NULL, NULL),
(602, 'bank_book', 'Bank Book', NULL, NULL),
(603, 'c_o_a', 'Chart of Account', NULL, NULL),
(604, 'journal_voucher', 'Journal Voucher', NULL, NULL),
(605, 'contra_voucher', 'Contra Voucher', NULL, NULL),
(606, 'voucher_approval', 'Vouchar Approval', NULL, NULL),
(607, 'supplier_payment', 'Supplier Payment', NULL, NULL),
(608, 'customer_receive', 'Customer Receive', NULL, NULL),
(609, 'gl_head', 'General Head', NULL, NULL),
(610, 'account_code', 'Account Head', NULL, NULL),
(611, 'opening_balance', 'Opening Balance', NULL, NULL),
(612, 'head_of_account', 'Head of Account', NULL, NULL),
(613, 'inventory_ledger', 'Inventory Ledger', NULL, NULL),
(614, 'newpassword', 'New Password', NULL, NULL),
(615, 'password_recovery', 'Password Recovery', NULL, NULL),
(616, 'forgot_password', 'Forgot Password ??', NULL, NULL),
(617, 'send', 'Send', NULL, NULL),
(618, 'due_report', 'Due Report', NULL, NULL),
(619, 'due_amount', 'Due Amount', NULL, NULL),
(620, 'download_sample_file', 'Download Sample File', NULL, NULL),
(621, 'customer_csv_upload', 'Customer Csv Upload', NULL, NULL),
(622, 'csv_supplier', 'Csv Upload Supplier', NULL, NULL),
(623, 'csv_upload_supplier', 'Csv Upload Supplier', NULL, NULL),
(624, 'previous', 'Previous', NULL, NULL),
(625, 'net_total', 'Net Total', NULL, NULL),
(626, 'currency_list', 'Currency List', NULL, NULL),
(627, 'currency_name', 'Currency Name', NULL, NULL),
(628, 'currency_icon', 'Currency Symbol', NULL, NULL),
(629, 'add_currency', 'Add Currency', NULL, NULL),
(630, 'role_permission', 'Role Permission', NULL, NULL),
(631, 'role_list', 'Role List', NULL, NULL),
(632, 'user_assign_role', 'User Assign Role', NULL, NULL),
(633, 'permission', 'Permission', NULL, NULL),
(634, 'add_role', 'Add Role', NULL, NULL),
(635, 'add_module', 'Add Module', NULL, NULL),
(636, 'module_name', 'Module Name', NULL, NULL),
(637, 'office_loan', 'Office Loan', NULL, NULL),
(638, 'add_menu', 'Add Menu', NULL, NULL),
(639, 'menu_name', 'Menu Name', NULL, NULL),
(640, 'sl_no', 'Sl No', NULL, NULL),
(641, 'create', 'Create', NULL, NULL),
(642, 'read', 'Read', NULL, NULL),
(643, 'role_name', 'Role Name', NULL, NULL),
(644, 'qty', 'Quantity', NULL, NULL),
(645, 'max_rate', 'Max Rate', NULL, NULL),
(646, 'min_rate', 'Min Rate', NULL, NULL),
(647, 'avg_rate', 'Average Rate', NULL, NULL),
(648, 'role_permission_added_successfully', 'Role Permission Successfully Added', NULL, NULL),
(649, 'update_successfully', 'Successfully Updated', NULL, NULL),
(650, 'role_permission_updated_successfully', 'Role Permission Successfully Updated ', NULL, NULL),
(651, 'shipping_cost', 'Shipping Cost', NULL, NULL),
(652, 'in_word', 'In Word ', NULL, NULL),
(653, 'shipping_cost_report', 'Shipping Cost Report', NULL, NULL),
(654, 'cash_book_report', 'Cash Book Report', NULL, NULL),
(655, 'inventory_ledger_report', 'Inventory Ledger Report', NULL, NULL),
(656, 'trial_balance_with_opening_as_on', 'Trial Balance With Opening As On', NULL, NULL),
(657, 'type', 'Type', NULL, NULL),
(658, 'taka_only', 'Taka Only', NULL, NULL),
(659, 'item_description', 'Desc', NULL, NULL),
(660, 'sold_by', 'Sold By', NULL, NULL),
(661, 'user_wise_sales_report', 'User Wise Sales Report', NULL, NULL),
(662, 'user_name', 'User Name', NULL, NULL),
(663, 'total_sold', 'Total Sold', NULL, NULL),
(664, 'user_wise_sale_report', 'User Wise Sales Report', NULL, NULL),
(665, 'barcode_or_qrcode', 'Barcode/QR-code', NULL, NULL),
(666, 'category_csv_upload', 'Category Csv  Upload', NULL, NULL),
(667, 'unit_csv_upload', 'Unit Csv Upload', NULL, NULL),
(668, 'invoice_return_list', 'Sales Return list', NULL, NULL),
(669, 'invoice_return', 'Sales Return', NULL, NULL),
(670, 'tax_report', 'Tax Report', NULL, NULL),
(671, 'select_tax', 'Select Tax', NULL, NULL),
(672, 'hrm', 'HRM', NULL, NULL),
(673, 'employee', 'Employee', NULL, NULL),
(674, 'add_employee', 'Add Employee', NULL, NULL),
(675, 'manage_employee', 'Manage Employee', NULL, NULL),
(676, 'attendance', 'Attendance', NULL, NULL),
(677, 'add_attendance', 'Attendance', NULL, NULL),
(678, 'manage_attendance', 'Manage Attendance', NULL, NULL),
(679, 'payroll', 'Payroll', NULL, NULL),
(680, 'add_payroll', 'Payroll', NULL, NULL),
(681, 'manage_payroll', 'Manage Payroll', NULL, NULL),
(682, 'employee_type', 'Employee Type', NULL, NULL),
(683, 'employee_designation', 'Employee Designation', NULL, NULL),
(684, 'designation', 'Designation', NULL, NULL),
(685, 'add_designation', 'Add Designation', NULL, NULL),
(686, 'manage_designation', 'Manage Designation', NULL, NULL),
(687, 'designation_update_form', 'Designation Update form', NULL, NULL),
(688, 'picture', 'Picture', NULL, NULL),
(689, 'country', 'Country', NULL, NULL),
(690, 'blood_group', 'Blood Group', NULL, NULL),
(691, 'address_line_1', 'Address Line 1', NULL, NULL),
(692, 'address_line_2', 'Address Line 2', NULL, NULL),
(693, 'zip', 'Zip code', NULL, NULL),
(694, 'city', 'City', NULL, NULL),
(695, 'hour_rate_or_salary', 'Houre Rate/Salary', NULL, NULL),
(696, 'rate_type', 'Rate Type', NULL, NULL),
(697, 'hourly', 'Hourly', NULL, NULL),
(698, 'salary', 'Salary', NULL, NULL),
(699, 'employee_update', 'Employee Update', NULL, NULL),
(700, 'checkin', 'Check In', NULL, NULL),
(701, 'employee_name', 'Employee Name', NULL, NULL),
(702, 'checkout', 'Check Out', NULL, NULL),
(703, 'confirm_clock', 'Confirm Clock', NULL, NULL),
(704, 'stay', 'Stay Time', NULL, NULL),
(705, 'sign_in', 'Sign In', NULL, NULL),
(706, 'check_in', 'Check In', NULL, NULL),
(707, 'single_checkin', 'Single Check In', NULL, NULL),
(708, 'bulk_checkin', 'Bulk Check In', NULL, NULL),
(709, 'successfully_checkout', 'Successfully Checkout', NULL, NULL),
(710, 'attendance_report', 'Attendance Report', NULL, NULL),
(711, 'datewise_report', 'Date Wise Report', NULL, NULL),
(712, 'employee_wise_report', 'Employee Wise Report', NULL, NULL),
(713, 'date_in_time_report', 'Date In Time Report', NULL, NULL),
(714, 'request', 'Request', NULL, NULL),
(715, 'sign_out', 'Sign Out', NULL, NULL),
(716, 'work_hour', 'Work Hours', NULL, NULL),
(717, 's_time', 'Start Time', NULL, NULL),
(718, 'e_time', 'In Time', NULL, NULL),
(719, 'salary_benefits_type', 'Benefits Type', NULL, NULL),
(720, 'salary_benefits', 'Salary Benefits', NULL, NULL),
(721, 'beneficial_list', 'Benefit List', NULL, NULL),
(722, 'add_beneficial', 'Add Benefits', NULL, NULL),
(723, 'add_benefits', 'Add Benefits', NULL, NULL),
(724, 'benefits_list', 'Benefit List', NULL, NULL),
(725, 'benefit_type', 'Benefit Type', NULL, NULL),
(726, 'benefits', 'Benefit', NULL, NULL),
(727, 'manage_benefits', 'Manage Benefits', NULL, NULL),
(728, 'deduct', 'Deduct', NULL, NULL),
(729, 'add', 'Add', NULL, NULL),
(730, 'add_salary_setup', 'Add Salary Setup', NULL, NULL),
(731, 'manage_salary_setup', 'Manage Salary Setup', NULL, NULL),
(732, 'basic', 'Basic', NULL, NULL),
(733, 'salary_type', 'Salary Type', NULL, NULL),
(734, 'addition', 'Addition', NULL, NULL),
(735, 'gross_salary', 'Gross Salary', NULL, NULL),
(736, 'set', 'Set', NULL, NULL),
(737, 'salary_generate', 'Salary Generate', NULL, NULL),
(738, 'manage_salary_generate', 'Manage Salary Generate', NULL, NULL),
(739, 'sal_name', 'Salary Name', NULL, NULL),
(740, 'gdate', 'Generated Date', NULL, NULL),
(741, 'generate_by', 'Generated By', NULL, NULL),
(742, 'the_salary_of', 'The Salary of ', NULL, NULL),
(743, 'already_generated', ' Already Generated', NULL, NULL),
(744, 'salary_month', 'Salary Month', NULL, NULL),
(745, 'successfully_generated', 'Successfully Generated', NULL, NULL),
(746, 'salary_payment', 'Salary Payment', NULL, NULL),
(747, 'employee_salary_payment', 'Employee Salary Payment', NULL, NULL),
(748, 'total_salary', 'Total Salary', NULL, NULL),
(749, 'total_working_minutes', 'Total Working Hours', NULL, NULL),
(750, 'working_period', 'Working Period', NULL, NULL),
(751, 'paid_by', 'Paid By', NULL, NULL),
(752, 'pay_now', 'Pay Now ', NULL, NULL),
(753, 'confirm', 'Confirm', NULL, NULL),
(754, 'successfully_paid', 'Successfully Paid', NULL, NULL),
(755, 'add_incometax', 'Add Income Tax', NULL, NULL),
(756, 'setup_tax', 'Setup Tax', NULL, NULL),
(757, 'start_amount', 'Start Amount', NULL, NULL),
(758, 'end_amount', 'End Amount', NULL, NULL),
(759, 'tax_rate', 'Tax Rate', NULL, NULL),
(760, 'setup', 'Setup', NULL, NULL),
(761, 'manage_income_tax', 'Manage Income Tax', NULL, NULL),
(762, 'income_tax_updateform', 'Income tax Update form', NULL, NULL),
(763, 'positional_information', 'Positional Information', NULL, NULL),
(764, 'personal_information', 'Personal Information', NULL, NULL),
(765, 'timezone', 'Time Zone', NULL, NULL),
(766, 'sms', 'SMS', NULL, NULL),
(767, 'sms_configure', 'SMS Configure', NULL, NULL),
(768, 'url', 'URL', NULL, NULL),
(769, 'sender_id', 'Sender ID', NULL, NULL),
(770, 'api_key', 'Api Key', NULL, NULL),
(771, 'gui_pos', 'GUI POS', NULL, NULL),
(772, 'manage_service', 'Manage Service', NULL, NULL),
(773, 'service', 'Service', NULL, NULL),
(774, 'add_service', 'Add Service', NULL, NULL),
(775, 'service_edit', 'Service Edit', NULL, NULL),
(776, 'service_csv_upload', 'Service CSV Upload', NULL, NULL),
(777, 'service_name', 'Service Name', NULL, NULL),
(778, 'charge', 'Charge', NULL, NULL),
(779, 'service_invoice', 'Service Invoice', NULL, NULL),
(780, 'service_discount', 'Service Discount', NULL, NULL),
(781, 'hanging_over', 'ETD', NULL, NULL),
(782, 'service_details', 'Service Details', NULL, NULL),
(783, 'tax_settings', 'Tax Settings', NULL, NULL),
(784, 'default_value', 'Default Value', NULL, NULL),
(785, 'number_of_tax', 'Number of Tax', NULL, NULL),
(786, 'please_select_employee', 'Please Select Employee', NULL, NULL),
(787, 'manage_service_invoice', 'Manage Service Invoice', NULL, NULL),
(788, 'update_service_invoice', 'Update Service Invoice', NULL, NULL),
(789, 'customer_wise_tax_report', 'Customer Wise  Tax Report', NULL, NULL),
(790, 'service_id', 'Service Id', NULL, NULL),
(791, 'invoice_wise_tax_report', 'Invoice Wise Tax Report', NULL, NULL),
(792, 'reg_no', 'Reg No', NULL, NULL),
(793, 'update_now', 'Update Now', NULL, NULL),
(794, 'import', 'Import', NULL, NULL),
(795, 'add_expense_item', 'Add Expense Item', NULL, NULL),
(796, 'manage_expense_item', 'Manage Expense Item', NULL, NULL),
(797, 'add_expense', 'Add Expense', NULL, NULL),
(798, 'manage_expense', 'Manage Expense', NULL, NULL),
(799, 'expense_statement', 'Expense Statement', NULL, NULL),
(800, 'expense_type', 'Expense Type', NULL, NULL),
(801, 'expense_item_name', 'Expense Item Name', NULL, NULL),
(802, 'stock_purchase_price', 'Stock Purchase Price', NULL, NULL),
(803, 'purchase_price', 'Purchase Price', NULL, NULL),
(804, 'customer_advance', 'Customer Advance', NULL, NULL),
(805, 'advance_type', 'Advance Type', NULL, NULL),
(806, 'restore', 'Restore', NULL, NULL),
(807, 'supplier_advance', 'Supplier Advance', NULL, NULL),
(808, 'please_input_correct_invoice_no', 'Please Input Correct Invoice NO', NULL, NULL),
(809, 'backup', 'Back Up', NULL, NULL),
(810, 'app_setting', 'App Settings', NULL, NULL),
(811, 'local_server_url', 'Local Server Url', NULL, NULL),
(812, 'online_server_url', 'Online Server Url', NULL, NULL),
(813, 'connet_url', 'Connected Hotspot Ip/url', NULL, NULL),
(814, 'update_your_app_setting', 'Update Your App Setting', NULL, NULL),
(815, 'select_category', 'Select Category', NULL, NULL),
(816, 'mini_invoice', 'Mini Invoice', NULL, NULL),
(817, 'purchase_details', 'Purchase Details', NULL, NULL),
(818, 'disc', 'Dis %', NULL, NULL),
(819, 'serial', 'Serial', NULL, NULL),
(820, 'transaction_head', 'Transaction Head', NULL, NULL),
(821, 'transaction_type', 'Transaction Type', NULL, NULL),
(822, 'return_details', 'Return Details', NULL, NULL),
(823, 'return_to_customer', 'Return To Customer', NULL, NULL),
(824, 'sales_and_purchase_report_summary', 'Sales And Purchase Report Summary', NULL, NULL),
(825, 'add_person_officeloan', 'Add Person (Office Loan)', NULL, NULL),
(826, 'add_loan_officeloan', 'Add Loan (Office Loan)', NULL, NULL),
(827, 'add_payment_officeloan', 'Add Payment (Office Loan)', NULL, NULL),
(828, 'manage_loan_officeloan', 'Manage Loan (Office Loan)', NULL, NULL),
(829, 'add_person_personalloan', 'Add Person (Personal Loan)', NULL, NULL),
(830, 'add_loan_personalloan', 'Add Loan (Personal Loan)', NULL, NULL),
(831, 'add_payment_personalloan', 'Add Payment (Personal Loan)', NULL, NULL),
(832, 'manage_loan_personalloan', 'Manage Loan (Personal)', NULL, NULL),
(833, 'hrm_management', 'Human Resource', NULL, NULL),
(834, 'cash_adjustment', 'Cash Adjustment', NULL, NULL),
(835, 'adjustment_type', 'Adjustment Type', NULL, NULL),
(836, 'change', 'Change', NULL, NULL),
(837, 'sale_by', 'Sale By', NULL, NULL),
(838, 'salary_date', 'Salary Date', NULL, NULL),
(839, 'earnings', 'Earnings', NULL, NULL),
(840, 'total_addition', 'Total Addition', NULL, NULL),
(841, 'total_deduction', 'Total Deduction', NULL, NULL),
(842, 'net_salary', 'Net Salary', NULL, NULL),
(843, 'ref_number', 'Reference Number', NULL, NULL),
(844, 'name_of_bank', 'Name Of Bank', NULL, NULL),
(845, 'salary_slip', 'Salary Slip', NULL, NULL),
(846, 'basic_salary', 'Basic Salary', NULL, NULL),
(847, 'return_from_customer', 'Return From Customer', NULL, NULL),
(848, 'quotation', 'Quotation', NULL, NULL),
(849, 'add_quotation', 'Add Quotation', NULL, NULL),
(850, 'manage_quotation', 'Manage Quotation', NULL, NULL),
(851, 'terms', 'Terms', NULL, NULL),
(852, 'send_to_customer', 'Sent To Customer', NULL, NULL),
(853, 'quotation_no', 'Quotation No', NULL, NULL),
(854, 'quotation_date', 'Quotation Date', NULL, NULL),
(855, 'total_service_tax', 'Total Service Tax', NULL, NULL),
(856, 'totalservicedicount', 'Total Service Discount', NULL, NULL),
(857, 'item_total', 'Item Total', NULL, NULL),
(858, 'service_total', 'Service Total', NULL, NULL),
(859, 'quot_description', 'Quotation Description', NULL, NULL),
(860, 'sub_total', 'Sub Total', NULL, NULL),
(861, 'mail_setting', 'Mail Setting', NULL, NULL),
(862, 'mail_configuration', 'Mail Configuration', NULL, NULL),
(863, 'mail', 'Mail', NULL, NULL),
(864, 'protocol', 'Protocol', NULL, NULL),
(865, 'smtp_host', 'SMTP Host', NULL, NULL),
(866, 'smtp_port', 'SMTP Port', NULL, NULL),
(867, 'sender_mail', 'Sender Mail', NULL, NULL),
(868, 'mail_type', 'Mail Type', NULL, NULL),
(869, 'html', 'HTML', NULL, NULL),
(870, 'text', 'TEXT', NULL, NULL),
(871, 'expiry_date', 'Expiry Date', NULL, NULL),
(872, 'api_secret', 'Api Secret', NULL, NULL),
(873, 'please_config_your_mail_setting', NULL, NULL, NULL),
(874, 'quotation_successfully_added', 'Quotation Successfully Added', NULL, NULL),
(875, 'add_to_invoice', 'Add To Invoice', NULL, NULL),
(876, 'added_to_invoice', 'Added To Invoice', NULL, NULL),
(877, 'closing_balance', 'Closing Balance', NULL, NULL),
(878, 'contact', 'Contact', NULL, NULL),
(879, 'fax', 'Fax', NULL, NULL),
(880, 'state', 'State', NULL, NULL),
(881, 'discounts', 'Discount', NULL, NULL),
(882, 'address1', 'Address1', NULL, NULL),
(883, 'address2', 'Address2', NULL, NULL),
(884, 'receive', 'Receive', NULL, NULL),
(885, 'purchase_history', 'Purchase History', NULL, NULL),
(886, 'cash_payment', 'Cash Payment', NULL, NULL),
(887, 'bank_payment', 'Bank Payment', NULL, NULL),
(888, 'do_you_want_to_print', 'Do You Want to Print', NULL, NULL),
(889, 'yes', 'Yes', NULL, NULL),
(890, 'no', 'No', NULL, NULL),
(891, 'todays_sale', 'Today\'s Sales', NULL, NULL),
(892, 'or', 'OR', NULL, NULL),
(893, 'no_result_found', 'No Result Found', NULL, NULL),
(894, 'add_service_quotation', 'Add Service Quotation', NULL, NULL),
(895, 'add_to_invoice', 'Add To Invoice', NULL, NULL),
(896, 'item_quotation', 'Item Quotation', NULL, NULL),
(897, 'service_quotation', 'Service Quotation', NULL, NULL),
(898, 'return_from', 'Return Form', NULL, NULL),
(899, 'customer_return_list', 'Customer Return List', NULL, NULL),
(900, 'pdf', 'Pdf', NULL, NULL),
(901, 'note', 'Note', NULL, NULL),
(902, 'update_debit_voucher', 'Update Debit Voucher', NULL, NULL),
(903, 'update_credit_voucher', 'Update Credit voucher', NULL, NULL),
(904, 'on', 'On', NULL, NULL),
(905, '', '', NULL, NULL),
(906, 'total_expenses', 'Total Expense', NULL, NULL),
(907, 'already_exist', 'Already Exist', NULL, NULL),
(908, 'checked_out', 'Checked Out', NULL, NULL),
(909, 'update_salary_setup', 'Update Salary Setup', NULL, NULL),
(910, 'employee_signature', 'Employee Signature', NULL, NULL),
(911, 'payslip', 'Payslip', NULL, NULL),
(912, 'exsisting_role', 'Existing Role', NULL, NULL),
(913, 'filter', 'Filter', NULL, NULL),
(914, 'testinput', NULL, NULL, NULL),
(915, 'update_quotation', 'Update Quotation', NULL, NULL),
(916, 'quotation_successfully_updated', 'Quotation Successfully Updated', NULL, NULL),
(917, 'successfully_approved', 'Successfully Approved', NULL, NULL),
(918, 'expiry', 'Expiry', NULL, NULL),
(919, 'manage_size', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'invoice', NULL, NULL, NULL, 1),
(2, 'customer', NULL, NULL, NULL, 1),
(3, 'product', NULL, NULL, NULL, 1),
(4, 'supplier', NULL, NULL, NULL, 1),
(5, 'purchase', NULL, NULL, NULL, 1),
(6, 'stock', NULL, NULL, NULL, 1),
(7, 'return', NULL, NULL, NULL, 1),
(8, 'report', NULL, NULL, NULL, 1),
(9, 'accounts', NULL, NULL, NULL, 1),
(10, 'bank', NULL, NULL, NULL, 1),
(11, 'tax', NULL, NULL, NULL, 1),
(12, 'hrm_management', NULL, NULL, NULL, 1),
(13, 'service', NULL, NULL, NULL, 1),
(14, 'commission', NULL, NULL, NULL, 1),
(15, 'setting', NULL, NULL, NULL, 1),
(16, 'quotation', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_setup`
--

DROP TABLE IF EXISTS `payroll_tax_setup`;
CREATE TABLE IF NOT EXISTS `payroll_tax_setup` (
  `tax_setup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `start_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `end_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`tax_setup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `personal_loan`
--

DROP TABLE IF EXISTS `personal_loan`;
CREATE TABLE IF NOT EXISTS `personal_loan` (
  `per_loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(30) NOT NULL,
  `person_id` varchar(30) NOT NULL,
  `debit` decimal(12,2) DEFAULT '0.00',
  `credit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `date` varchar(30) NOT NULL,
  `details` varchar(100) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid',
  PRIMARY KEY (`per_loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_information`
--

DROP TABLE IF EXISTS `person_information`;
CREATE TABLE IF NOT EXISTS `person_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_ledger`
--

DROP TABLE IF EXISTS `person_ledger`;
CREATE TABLE IF NOT EXISTS `person_ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(50) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid',
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pesonal_loan_information`
--

DROP TABLE IF EXISTS `pesonal_loan_information`;
CREATE TABLE IF NOT EXISTS `pesonal_loan_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_id`, `category_name`, `image`, `status`) VALUES
(1, 'OBSALB9F2U4R557', 'Surgical Products ', './my-assets/image/category/fac2fe045a0942033899af2fdf9b48e4.jfif', 1),
(2, 'GS3WIFOJWTNB1NZ', 'Boby Care', './my-assets/image/category/d230fd7b2fa8ea04db294fa28a53bcc0.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_information`
--

DROP TABLE IF EXISTS `product_information`;
CREATE TABLE IF NOT EXISTS `product_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `tax` float DEFAULT NULL COMMENT 'Tax in %',
  `serial_no` varchar(200) DEFAULT NULL,
  `product_model` varchar(100) DEFAULT NULL,
  `product_details` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_information`
--

INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`) VALUES
(1, '81339912', '0', 'easy fix', 50, '', 0, '', 'small', 'easy fix', 'http://127.0.0.8\\/./my-assets/image/product/f32a733e9979e33f1e30f31b9bd694d9.jpeg', 1),
(2, '44826966', '', 'Friends Classic Adult Diapers Pants Style', 450, '', 0, '', ' - 10 Count (l) - Waist Size 30-56 Inch ; 76-142cm', '', 'http://127.0.0.8\\/./my-assets/image/product/72d66ac58df381e6338ed223be105ad8.jpg', 1),
(3, '151515', 'J15GJ6ESXUM3AP9', 'diaper', 500, 'pic', 0, '', 'diaper', '', 'http://127.0.0.8\\/my-assets/image/product.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase`
--

DROP TABLE IF EXISTS `product_purchase`;
CREATE TABLE IF NOT EXISTS `product_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` bigint(20) NOT NULL,
  `chalan_no` varchar(100) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `grand_total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) DEFAULT '0.00',
  `due_amount` decimal(10,2) DEFAULT '0.00',
  `total_discount` decimal(10,2) DEFAULT NULL,
  `purchase_date` varchar(50) DEFAULT NULL,
  `purchase_details` text,
  `status` int(2) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase`
--

INSERT INTO `product_purchase` (`id`, `purchase_id`, `chalan_no`, `supplier_id`, `grand_total_amount`, `paid_amount`, `due_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `bank_id`, `payment_type`) VALUES
(1, 20211113051541, 'TS/10805/21-22', 1, '2500.00', '0.00', '2500.00', '0.00', '2021-11-13', '', 1, '', 1),
(2, 20211113053417, 'TS/10805/21-22', 2, '2500.00', '0.00', '2500.00', '0.00', '2021-11-13', '', 1, '', 1),
(3, 20211113144020, 'TS/10810/21-22', 2, '20000.00', '20000.00', '0.00', '0.00', '2021-11-13', '', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_details`
--

DROP TABLE IF EXISTS `product_purchase_details`;
CREATE TABLE IF NOT EXISTS `product_purchase_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_detail_id` varchar(100) DEFAULT NULL,
  `purchase_id` bigint(20) DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase_details`
--

INSERT INTO `product_purchase_details` (`id`, `purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `discount`, `status`) VALUES
(1, 'DERw3EGLGUjWjsP', 20211113051541, '81339912', '50.00', '50.00', '2500.00', 0, 1),
(2, 'QFhNGlUBdyooTUS', 20211113053417, '81339912', '50.00', '50.00', '2500.00', 0, 1),
(3, 'JrOfRpV345sYeim', 20211113144020, '44826966', '50.00', '400.00', '20000.00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_return`
--

DROP TABLE IF EXISTS `product_return`;
CREATE TABLE IF NOT EXISTS `product_return` (
  `return_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `invoice_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `purchase_id` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `date_purchase` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date_return` varchar(30) CHARACTER SET latin1 NOT NULL,
  `byy_qty` float NOT NULL,
  `ret_qty` float NOT NULL,
  `customer_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `supplier_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deduction` float NOT NULL,
  `total_deduct` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_ret_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `net_total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reason` text CHARACTER SET latin1 NOT NULL,
  `usablity` int(5) NOT NULL,
  KEY `product_id` (`product_id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `customer_id` (`customer_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_return`
--

INSERT INTO `product_return` (`return_id`, `product_id`, `invoice_id`, `purchase_id`, `date_purchase`, `date_return`, `byy_qty`, `ret_qty`, `customer_id`, `supplier_id`, `product_rate`, `deduction`, `total_deduct`, `total_tax`, `total_ret_amount`, `net_total_amount`, `reason`, `usablity`) VALUES
('653517275596754', '81339912', '4225291832', NULL, '2021-11-13', '2021-11-13', 10, 5, '1', '', '50.00', 0, '0.00', '0.00', '250.00', '250.00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_service`
--

DROP TABLE IF EXISTS `product_service`;
CREATE TABLE IF NOT EXISTS `product_service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

DROP TABLE IF EXISTS `quotation`;
CREATE TABLE IF NOT EXISTS `quotation` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `quotation_id` varchar(30) NOT NULL,
  `quot_description` text NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `quotdate` date NOT NULL,
  `expire_date` date DEFAULT NULL,
  `item_total_amount` decimal(12,2) NOT NULL,
  `item_total_dicount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `service_total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `service_total_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `service_total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quot_dis_item` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quot_dis_service` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quot_no` varchar(50) NOT NULL,
  `create_by` varchar(30) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `cust_show` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quot_no` (`quot_no`),
  KEY `quotation_id` (`quotation_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_service_used`
--

DROP TABLE IF EXISTS `quotation_service_used`;
CREATE TABLE IF NOT EXISTS `quotation_service_used` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quot_id` varchar(20) NOT NULL,
  `service_id` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `quot_id` (`quot_id`),
  KEY `service_id` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_taxinfo`
--

DROP TABLE IF EXISTS `quotation_taxinfo`;
CREATE TABLE IF NOT EXISTS `quotation_taxinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `relation_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `quot_products_used`
--

DROP TABLE IF EXISTS `quot_products_used`;
CREATE TABLE IF NOT EXISTS `quot_products_used` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quot_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `used_qty` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `quot_id` (`quot_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE IF NOT EXISTS `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_generate`
--

DROP TABLE IF EXISTS `salary_sheet_generate`;
CREATE TABLE IF NOT EXISTS `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `gdate` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`ssg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_type`
--

DROP TABLE IF EXISTS `salary_type`;
CREATE TABLE IF NOT EXISTS `salary_type` (
  `salary_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `sal_name` varchar(100) NOT NULL,
  `salary_type` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`salary_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sec_role`
--

DROP TABLE IF EXISTS `sec_role`;
CREATE TABLE IF NOT EXISTS `sec_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sec_userrole`
--

DROP TABLE IF EXISTS `sec_userrole`;
CREATE TABLE IF NOT EXISTS `sec_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  UNIQUE KEY `ID` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice`
--

DROP TABLE IF EXISTS `service_invoice`;
CREATE TABLE IF NOT EXISTS `service_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `customer_id` varchar(30) NOT NULL,
  `total_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total_discount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `invoice_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `due_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `previous` decimal(10,2) NOT NULL DEFAULT '0.00',
  `details` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice_details`
--

DROP TABLE IF EXISTS `service_invoice_details`;
CREATE TABLE IF NOT EXISTS `service_invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `service_inv_id` varchar(30) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `service_id` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

DROP TABLE IF EXISTS `sms_settings`;
CREATE TABLE IF NOT EXISTS `sms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(100) DEFAULT NULL,
  `api_secret` varchar(100) DEFAULT NULL,
  `from` varchar(100) DEFAULT NULL,
  `isinvoice` int(11) NOT NULL DEFAULT '0',
  `isservice` int(11) NOT NULL DEFAULT '0',
  `isreceive` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `api_key`, `api_secret`, `from`, `isinvoice`, `isservice`, `isreceive`) VALUES
(1, '5d6db102011', '456452dfgdf', '8220460616', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_module`
--

DROP TABLE IF EXISTS `sub_module`;
CREATE TABLE IF NOT EXISTS `sub_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `directory` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_module`
--

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 1, 'new_invoice', NULL, NULL, 'new_invoice', 1),
(2, 1, 'manage_invoice', NULL, NULL, 'manage_invoice', 1),
(3, 1, 'pos_invoice', NULL, NULL, 'pos_invoice', 1),
(4, 9, 'c_o_a', NULL, NULL, 'show_tree', 1),
(5, 9, 'supplier_payment', NULL, NULL, 'supplier_payment', 1),
(6, 9, 'customer_receive', NULL, NULL, 'customer_receive', 1),
(7, 9, 'debit_voucher', NULL, NULL, 'debit_voucher', 1),
(8, 9, 'credit_voucher', NULL, NULL, 'credit_voucher', 1),
(9, 9, 'voucher_approval', NULL, NULL, 'aprove_v', 1),
(10, 9, 'contra_voucher', NULL, NULL, 'contra_voucher', 1),
(11, 9, 'journal_voucher', NULL, NULL, 'journal_voucher', 1),
(12, 9, 'report', NULL, NULL, 'ac_report', 1),
(13, 9, 'cash_book', NULL, NULL, 'cash_book', 1),
(14, 9, 'Inventory_ledger', NULL, NULL, 'inventory_ledger', 1),
(15, 9, 'bank_book', NULL, NULL, 'bank_book', 1),
(16, 9, 'general_ledger', NULL, NULL, 'general_ledger', 1),
(17, 9, 'trial_balance', NULL, NULL, 'trial_balance', 1),
(18, 9, 'cash_flow', NULL, NULL, 'cash_flow_report', 1),
(19, 9, 'coa_print', NULL, NULL, 'coa_print', 1),
(21, 3, 'category', NULL, NULL, 'manage_category', 1),
(22, 3, 'add_product', NULL, NULL, 'create_product', 1),
(23, 3, 'import_product_csv', NULL, NULL, 'add_product_csv', 1),
(24, 3, 'manage_product', NULL, NULL, 'manage_product', 1),
(25, 2, 'add_customer', NULL, NULL, 'add_customer', 1),
(26, 2, 'manage_customer', NULL, NULL, 'manage_customer', 1),
(27, 2, 'credit_customer', NULL, NULL, 'credit_customer', 1),
(28, 2, 'paid_customer', NULL, NULL, 'paid_customer', 1),
(30, 3, 'unit', NULL, NULL, 'manage_unit', 1),
(31, 4, 'add_supplier', NULL, NULL, 'add_supplier', 1),
(32, 4, 'manage_supplier', NULL, NULL, 'manage_supplier', 1),
(33, 4, 'supplier_ledger', NULL, NULL, 'supplier_ledger_report', 1),
(35, 5, 'add_purchase', NULL, NULL, 'add_purchase', 1),
(36, 5, 'manage_purchase', NULL, NULL, 'manage_purchase', 1),
(37, 7, 'return', NULL, NULL, 'add_return', 1),
(38, 7, 'stock_return_list', NULL, NULL, 'return_list', 1),
(39, 7, 'supplier_return_list', NULL, NULL, 'supplier_return_list', 1),
(40, 7, 'wastage_return_list', NULL, NULL, 'wastage_return_list', 1),
(41, 11, 'tax_settings', NULL, NULL, 'tax_settings', 1),
(43, 6, 'stock_report', NULL, NULL, 'stock_report', 1),
(46, 8, 'closing', NULL, NULL, 'add_closing', 1),
(47, 8, 'closing_report', NULL, NULL, 'closing_report', 1),
(48, 8, 'todays_report', NULL, NULL, 'all_report', 1),
(49, 8, 'todays_customer_receipt', NULL, NULL, 'todays_customer_receipt', 1),
(50, 8, 'sales_report', NULL, NULL, 'todays_sales_report', 1),
(51, 8, 'due_report', NULL, NULL, 'retrieve_dateWise_DueReports', 1),
(52, 8, 'purchase_report', NULL, NULL, 'todays_purchase_report', 1),
(53, 8, 'purchase_report_category_wise', NULL, NULL, 'purchase_report_category_wise', 1),
(54, 8, 'sales_report_product_wise', NULL, NULL, 'product_sales_reports_date_wise', 1),
(55, 8, 'sales_report_category_wise', NULL, NULL, 'sales_report_category_wise', 1),
(56, 10, 'add_new_bank', NULL, NULL, 'add_bank', 1),
(57, 10, 'bank_transaction', NULL, NULL, 'bank_transaction', 1),
(58, 10, 'manage_bank', NULL, NULL, 'bank_list', 1),
(59, 14, 'generate_commission', NULL, NULL, 'commission', 1),
(60, 12, 'add_designation', NULL, NULL, 'add_designation', 1),
(61, 12, 'manage_designation', NULL, NULL, 'manage_designation', 1),
(62, 12, 'add_employee', NULL, NULL, 'add_employee', 1),
(63, 12, 'manage_employee', NULL, NULL, 'manage_employee', 1),
(64, 12, 'add_attendance', NULL, NULL, 'add_attendance', 1),
(65, 12, 'manage_attendance', NULL, NULL, 'manage_attendance', 1),
(66, 12, 'attendance_report', NULL, NULL, 'attendance_report', 1),
(67, 12, 'add_benefits', NULL, NULL, 'add_benefits', 1),
(68, 12, 'manage_benefits', NULL, NULL, 'manage_benefits', 1),
(69, 12, 'add_salary_setup', NULL, NULL, 'add_salary_setup', 1),
(70, 12, 'manage_salary_setup', NULL, NULL, 'manage_salary_setup', 1),
(71, 12, 'salary_generate', NULL, NULL, 'salary_generate', 1),
(72, 12, 'manage_salary_generate', NULL, NULL, 'manage_salary_generate', 1),
(73, 12, 'salary_payment', NULL, NULL, 'salary_payment', 1),
(74, 12, 'add_expense_item', NULL, NULL, 'add_expense_item', 1),
(75, 12, 'manage_expense_item', NULL, NULL, 'manage_expense_item', 1),
(76, 12, 'add_expense', NULL, NULL, 'add_expense', 1),
(77, 12, 'manage_expense', NULL, NULL, 'manage_expense', 1),
(78, 12, 'expense_statement', NULL, NULL, 'expense_statement', 1),
(79, 12, 'add_person_officeloan', NULL, NULL, 'add1_person', 1),
(80, 12, 'add_loan_officeloan', NULL, NULL, 'add_office_loan', 1),
(81, 12, 'add_payment_officeloan', NULL, NULL, 'add_loan_payment', 1),
(82, 12, 'manage_loan_officeloan', NULL, NULL, 'manage1_person', 1),
(83, 12, 'add_person_personalloan', NULL, NULL, 'add_person', 1),
(84, 12, 'add_loan_personalloan', NULL, NULL, 'add_loan', 1),
(85, 12, 'add_payment_personalloan', NULL, NULL, 'add_payment', 1),
(86, 12, 'manage_loan_personalloan', NULL, NULL, 'manage_person', 1),
(87, 15, 'manage_company', NULL, NULL, 'manage_company', 1),
(88, 15, 'add_user', NULL, NULL, 'add_user', 1),
(89, 15, 'manage_users', NULL, NULL, 'manage_user', 1),
(90, 15, 'language', NULL, NULL, 'add_language', 1),
(91, 15, 'currency', NULL, NULL, 'add_currency', 1),
(92, 15, 'setting', NULL, NULL, 'soft_setting', 1),
(93, 15, 'add_role', NULL, NULL, 'add_role', 1),
(94, 15, 'role_list', NULL, NULL, 'role_list', 1),
(95, 15, 'user_assign_role', NULL, NULL, 'user_assign', 1),
(96, 15, 'Permission', NULL, NULL, NULL, 1),
(97, 8, 'shipping_cost_report', NULL, NULL, 'shipping_cost_report', 1),
(98, 8, 'user_wise_sales_report', NULL, NULL, 'user_wise_sales_report', 1),
(99, 8, 'invoice_return', NULL, NULL, 'invoice_return', 1),
(100, 8, 'supplier_return', NULL, NULL, 'supplier_return', 1),
(101, 8, 'tax_report', NULL, NULL, 'tax_report', 1),
(102, 8, 'profit_report', NULL, NULL, 'profit_report', 1),
(103, 11, 'add_incometax', NULL, NULL, 'add_incometax', 1),
(104, 11, 'manage_income_tax', NULL, NULL, 'manage_income_tax', 1),
(105, 13, 'add_service', NULL, NULL, 'create_service', 1),
(106, 13, 'manage_service', NULL, NULL, 'manage_service', 1),
(107, 13, 'service_invoice', NULL, NULL, 'service_invoice', 1),
(108, 13, 'manage_service_invoice', NULL, NULL, 'manage_service_invoice', 1),
(109, 11, 'tax_report', NULL, NULL, 'tax_report', 1),
(110, 11, 'invoice_wise_tax_report', NULL, NULL, 'invoice_wise_tax_report', 1),
(111, 2, 'customer_advance', NULL, NULL, 'customer_advance', 1),
(112, 4, 'supplier_advance', NULL, NULL, 'supplier_advance', 1),
(113, 2, 'customer_ledger', NULL, NULL, 'customer_ledger', 1),
(114, 1, 'gui_pos', NULL, NULL, 'gui_pos', 1),
(115, 15, 'sms_configure', NULL, NULL, 'sms_configure', 1),
(116, 15, 'backup_restore', NULL, NULL, 'back_up', 1),
(117, 15, 'import', NULL, NULL, 'sql_import', 1),
(118, 15, 'restore', NULL, NULL, 'restore', 1),
(119, 16, 'add_quotation', NULL, NULL, 'add_quotation', 1),
(120, 16, 'manage_quotation', NULL, NULL, 'manage_quotation', 1),
(121, 16, 'add_to_invoice', NULL, NULL, 'add_to_invoice', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_information`
--

DROP TABLE IF EXISTS `supplier_information`;
CREATE TABLE IF NOT EXISTS `supplier_information` (
  `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` text NOT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `emailnumber` varchar(200) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text,
  `state` text,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_information`
--

INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `address2`, `mobile`, `emailnumber`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `details`, `status`) VALUES
(1, 'muthu meena', '', '', '8220460616', '', '', '', '', '', '', '', '', '', '', 1),
(2, 'VINAYAGA', '', '', '', '', '', '', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product`
--

DROP TABLE IF EXISTS `supplier_product`;
CREATE TABLE IF NOT EXISTS `supplier_product` (
  `supplier_pr_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(30) CHARACTER SET utf8 NOT NULL,
  `products_model` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `supplier_price` float DEFAULT NULL,
  PRIMARY KEY (`supplier_pr_id`),
  KEY `product_id` (`product_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier_product`
--

INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES
(2, '81339912', NULL, 1, 50),
(3, '81339912', NULL, 2, 50),
(4, '44826966', ' - 10 Count (l) - Waist Size 3', 2, 400),
(5, '44826966', ' - 10 Count (l) - Waist Size 3', 1, 410),
(6, '151515', 'diaper', 2, 400);

-- --------------------------------------------------------

--
-- Table structure for table `synchronizer_setting`
--

DROP TABLE IF EXISTS `synchronizer_setting`;
CREATE TABLE IF NOT EXISTS `synchronizer_setting` (
  `id` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_collection`
--

DROP TABLE IF EXISTS `tax_collection`;
CREATE TABLE IF NOT EXISTS `tax_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `relation_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_collection`
--

INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`) VALUES
(1, '2021-11-13', '1', '4225291832'),
(2, '2021-11-13', '1', '9636723861'),
(3, '2021-11-13', '1', '9127798483');

-- --------------------------------------------------------

--
-- Table structure for table `tax_settings`
--

DROP TABLE IF EXISTS `tax_settings`;
CREATE TABLE IF NOT EXISTS `tax_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `unit_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_id`, `unit_name`, `status`) VALUES
(1, 'OPSE2QXK8FKLELN', 'pic', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(15) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `address` text,
  `phone` varchar(20) DEFAULT NULL,
  `gender` int(2) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES
(1, '2', 'User', 'Admin', NULL, NULL, NULL, NULL, NULL, 'http://localhost/saleserp_v9.8/assets/dist/img/profile_picture/profile.jpg', 1),
(2, '1', 'User', 'Admin', NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.8/assets/dist/img/profile_picture/profile.jpg', 1),
(3, 'dTnvOQptL9ngNZJ', 'srinivasan', 'baskar', NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.8\\/assets/dist/img/profile_picture/profile.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
CREATE TABLE IF NOT EXISTS `user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(2) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES
(1, '2', 'admin@example.com', '41d99b369894eb1ec3f461135132d8bb', 1, NULL, 1),
(2, '1', 'admin@gmail.com', '5ebe9dd4ea7517bd2c30bc46985ef823', 1, NULL, 1),
(3, 'dTnvOQptL9ngNZJ', 'baskarmca1990@gmail.com', '0f587a0534c4d2c6667d18f5aebb1371', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_setting`
--

DROP TABLE IF EXISTS `web_setting`;
CREATE TABLE IF NOT EXISTS `web_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL,
  `invoice_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) DEFAULT '1' COMMENT '0=active,1=inactive',
  `site_key` varchar(250) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT '1',
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_setting`
--

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `timezone`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `site_key`, `secret_key`, `discount_type`) VALUES
(1, 'http://127.0.0.8\\/./my-assets/image/logo/4b5450c1f9721e6aacd377f1fdeeb790.png', 'http://127.0.0.8\\/./my-assets/image/logo/60857d5801d8632e0f676f61696a962c.png', 'https://softest8.bdtask.com/saleserp_sas_v-2/my-assets/image/logo/0bb2ee8377d8672d55b553ef11f07d69.png', '₹', 'Asia/Kolkata', '0', 'Copyright © 2021-2022 Sri JB Healthcare. All rights reserved.', 'english', '0', 1, '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
