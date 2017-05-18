-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2017 at 09:52 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pav_foliage_v2300`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(5, 1, 'demo', 'demo', 'My company', 'Rio de Janeiro', 'New York', 'New York', '213', 220, 3496, ''),
(6, 6, 'demo', 'demo', '', 'Rio de Janeiro', '', 'Rio de Janeiro', '9988', 218, 3418, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(23, 'Default', '3J7C4HK88Z6CnQywUyfpKDTv9xUpNWu9fvt6blc6ABY1yaUwgRaVvcmCdZTAPofw7REPHBeSXUsp8d5ZCunEwuaa00W7jXgY4D5zmp0bcAdHOXb9Ko2O6mijl1olEXhWh71K8v9TMDPs4FrNdZosLDUJAfUQlQv3PoSLoXfBFnLWlSaIZQWBHaT5FDpOsA4CnWPF7PxqQneHJVkRcUiEtOP2kpgkQCyus5XA2MDPtrro8zS13fvB1dHTpFKwUurG', 1, '2016-08-12 04:36:53', '2016-08-12 04:36:53'),
(24, 'Default', 'wHZzy5oZaPZbBvpSivXHDGTPJKxwRVNX5vDmm9r9MSvVt4Icdhu1DTNrwGti2FhtkHdiWMrnp0mHLlQ3oeFiF4nVzesQz9COLdv2sHUNAGJNYZfj49ZeXWd4JFLuQWBe05uh5mqYsnzGSRIRwWODbBwjvaWsYYBHEBKENKRIizm767EMEm2vVBlQnuAaeWGLMTfhdnbnI5bhmxNlirmQliafDPybxb2ZpeER2hkdpkB8anaKOo3Aq7ispHOFvLjB', 1, '2016-10-28 04:54:07', '2016-10-28 04:54:07'),
(25, 'Default', 'Wtdw8qmQIZxZdanDNeuxAAMr8zTePsEzMopay17UlmeGFjeTZWIIrnETImILAsXcQoCaowWERiVnCXqstEeaS7eAsbtXblES80K8xj4SxyrTLg2bnqhnnUgeKFlRVrJTgYJDGLIM9aU3XuZdDxAIXsJP6SVSmamrtSlSwYZQ3HetiiObwUgZFkMwXArHJCJLLk4jzqj48Wlbvy77ep5aI4MfgTitiBypwGLTpm9RgmuDxtJ3V2OeWhDP0HyOkASv', 1, '2016-11-21 15:28:41', '2016-11-21 15:28:41'),
(26, 'Default', 'JwUQYv1Roifx8RsAgBvdHCzSLO3XZ7wTMYfo43tdORNRW2enoA4UQvt1U8HlPqdMRQ4sPTi3lyoHg99Su5wEJNOfqNhXhFVnhZ2qvr6IVvYr1WYD4UwZCvO7fn3kAmBEHJEZ70v4pCVd1EV3wNcxPsrytDhB40OlbVKzmpbf58HEz1bWO81woJuZ6fS1Yuth7IXN109Rqatb0GzzNtKSrmjo5W9UqZr7qD4LIwiqrTxtRh5lvacE4YPlXFSUURm6', 1, '2017-01-19 01:13:19', '2017-01-19 01:13:19'),
(27, 'Default', '5HyoIUB2ipz0ntDdnmQhlxc2FDm0CVvb1pEVMxfNMhtNpHQyEuk5PcRRMm35ivg3Gh7u6tXGquOd5sZafpoT8CwcF9pLALEqtjCShhjq2t1hh2SmUtlunUa0WlGNkM9yAbJfmqYer9vCks0NrZUdx5zQLwfQzQFLaU6vfcZKJ8fXHCX9goceuU1vCsup6QHnfYH5R3yxsPOLjuUguAA05gLp655yS1Gn0PyvL0QyXh1SIUws38eRSp7IDgtA0d8r', 1, '2017-01-21 02:14:22', '2017-01-21 02:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(13, 'Photos footer', 1),
(14, 'Manufacturer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(129, 13, 1, 'iPhone 6', '#', 'catalog/demo/banners/gallery-05.jpg', 0),
(128, 13, 1, 'iPhone 6', '#', 'catalog/demo/banners/gallery-04.jpg', 0),
(127, 13, 1, 'iPhone 6', '#', 'catalog/demo/banners/gallery-03.jpg', 0),
(126, 13, 1, 'iPhone 6', '#', 'catalog/demo/banners/gallery-02.jpg', 0),
(125, 13, 1, 'iPhone 6', '#', 'catalog/demo/banners/gallery-01.jpg', 0),
(130, 13, 1, 'iPhone 6', '#', 'catalog/demo/banners/gallery-06.jpg', 0),
(183, 14, 2, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_05.png', 4),
(182, 14, 2, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_04.png', 3),
(181, 14, 2, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_03.png', 2),
(180, 14, 2, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_02.png', 1),
(179, 14, 2, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_01.png', 0),
(178, 14, 1, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_06.png', 11),
(177, 14, 1, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_05.png', 10),
(176, 14, 1, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_04.png', 9),
(129, 13, 2, 'iPhone 6', '#', 'catalog/demo/banners/gallery-05.jpg', 0),
(128, 13, 2, 'iPhone 6', '#', 'catalog/demo/banners/gallery-04.jpg', 0),
(127, 13, 2, 'iPhone 6', '#', 'catalog/demo/banners/gallery-03.jpg', 0),
(126, 13, 2, 'iPhone 6', '#', 'catalog/demo/banners/gallery-02.jpg', 0),
(125, 13, 2, 'iPhone 6', '#', 'catalog/demo/banners/gallery-01.jpg', 0),
(130, 13, 2, 'iPhone 6', '#', 'catalog/demo/banners/gallery-06.jpg', 0),
(175, 14, 1, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_03.png', 8),
(174, 14, 1, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_02.png', 7),
(173, 14, 1, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_01.png', 6),
(172, 14, 1, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_06.png', 5),
(171, 14, 1, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_05.png', 4),
(170, 14, 1, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_04.png', 3),
(169, 14, 1, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_03.png', 2),
(168, 14, 1, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_02.png', 1),
(167, 14, 1, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_01.png', 0),
(184, 14, 2, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_06.png', 5),
(185, 14, 2, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_01.png', 6),
(186, 14, 2, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_02.png', 7),
(187, 14, 2, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_03.png', 8),
(188, 14, 2, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_04.png', 9),
(189, 14, 2, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_05.png', 10),
(190, 14, 2, 'iPhone 6', '#', 'catalog/demo/manufacture/logo_brand_06.png', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(85, 'catalog/demo/banners/banner-category.jpg', 77, 1, 1, 0, 1, '2015-09-15 17:13:59', '2017-01-12 22:57:40'),
(67, 'catalog/demo/banners/banner-category.jpg', 77, 1, 1, 0, 1, '2015-09-15 16:43:13', '2017-01-12 22:56:16'),
(69, 'catalog/demo/banners/banner-category.jpg', 0, 1, 1, 1, 1, '2015-09-15 16:46:56', '2017-01-12 22:54:54'),
(71, 'catalog/demo/banners/banner-category.jpg', 77, 1, 1, 0, 1, '2015-09-15 16:48:06', '2017-01-12 22:56:38'),
(74, 'catalog/demo/banners/banner-category.jpg', 0, 1, 1, 5, 1, '2015-09-15 16:52:11', '2017-01-12 22:57:09'),
(77, 'catalog/demo/banners/banner-category.jpg', 0, 1, 1, 0, 1, '2015-09-15 16:56:12', '2017-01-12 22:54:37'),
(78, 'catalog/demo/banners/banner-category.jpg', 77, 1, 1, 0, 1, '2015-09-15 16:57:52', '2016-11-12 15:56:48'),
(79, 'catalog/demo/banners/banner-category.jpg', 0, 1, 1, 4, 1, '2015-09-15 16:58:23', '2017-01-12 22:55:48'),
(80, 'catalog/demo/banners/banner-category.jpg', 77, 1, 1, 0, 1, '2015-09-15 17:01:51', '2016-11-12 15:55:49'),
(81, 'catalog/demo/banners/banner-category.jpg', 0, 1, 1, 3, 1, '2015-09-15 17:02:56', '2017-01-12 22:55:35'),
(64, 'catalog/demo/banners/banner-category.jpg', 0, 1, 1, 2, 1, '2015-09-15 16:39:46', '2017-01-12 22:55:13'),
(86, 'catalog/demo/banners/banner-category.jpg', 77, 1, 1, 0, 1, '2015-09-23 09:56:55', '2016-11-12 15:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(85, 2, 'Dresses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dresses', '', ''),
(86, 1, 'Rings', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Rings', '', ''),
(74, 2, 'Watches', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Watches', '', ''),
(78, 1, 'Pendants', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Pendants', '', ''),
(80, 2, 'Earrings', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Earrings', '', ''),
(64, 1, 'Home Living', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Home Living', '', ''),
(64, 2, 'Home Living', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Home Living', '', ''),
(67, 2, 'Bedroom', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bedroom', '', ''),
(71, 1, 'Baby Care', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Baby Care', '', ''),
(78, 2, 'Pendants', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Pendants', '', ''),
(79, 2, 'Sofas', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Sofas', '', ''),
(69, 2, 'Decor', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Decor', '', ''),
(86, 2, 'Rings', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Rings', '', ''),
(67, 1, 'Bedroom', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bedroom', '', ''),
(71, 2, 'Baby Care', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Baby Care', '', ''),
(69, 1, 'Decor', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Decor', '', ''),
(80, 1, 'Earrings', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Earrings', '', ''),
(74, 1, 'Watches', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Watches', '', ''),
(79, 1, 'Sofas', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Sofas', '', ''),
(81, 1, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories', '', ''),
(81, 2, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories', '', ''),
(77, 1, 'Women', '&lt;p class=&quot;space-35&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia.&lt;/p&gt;', 'Women', '', ''),
(77, 2, 'Women', '&lt;p class=&quot;space-35&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia.&lt;/p&gt;', 'Women', '', ''),
(85, 1, 'Dresses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dresses', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(64, 1),
(64, 2),
(64, 3),
(64, 4),
(64, 5),
(69, 1),
(69, 2),
(69, 3),
(69, 4),
(69, 5),
(74, 1),
(74, 2),
(74, 3),
(74, 4),
(74, 5),
(77, 1),
(77, 2),
(77, 3),
(77, 4),
(77, 5),
(78, 1),
(78, 2),
(78, 3),
(78, 4),
(78, 5),
(79, 1),
(79, 2),
(79, 3),
(79, 4),
(79, 5),
(80, 1),
(80, 2),
(80, 3),
(80, 4),
(80, 5),
(81, 1),
(81, 2),
(81, 3),
(81, 4),
(81, 5),
(85, 1),
(85, 2),
(85, 3),
(85, 4),
(85, 5);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(80, 77, 0),
(81, 81, 0),
(78, 77, 0),
(79, 79, 0),
(80, 80, 1),
(77, 77, 0),
(78, 78, 1),
(74, 74, 0),
(86, 86, 1),
(67, 67, 1),
(67, 77, 0),
(85, 77, 0),
(64, 64, 0),
(86, 77, 0),
(71, 77, 0),
(71, 71, 1),
(69, 69, 0),
(85, 85, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(74, 0, 0),
(64, 0, 0),
(71, 0, 0),
(69, 0, 0),
(67, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(85, 0, 0),
(86, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(64, 0),
(67, 0),
(69, 0),
(71, 0),
(74, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(85, 0),
(86, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.80820000, 1, '2017-01-21 03:25:32'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2017-01-21 04:03:58'),
(3, 'Euro', 'EUR', '', '€', '2', 0.93400002, 1, '2017-01-21 03:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `code`, `date_added`) VALUES
(6, 1, 0, 1, 'demo', 'demo', 'demo@gmail.com', '0123456789', '', '629c2bae16db10db5c8186616fa40bc130e393b1', 'gl35k6yW0', NULL, NULL, 0, 6, '', '::1', 1, 1, 0, '', '', '2016-08-12 17:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(6, 6, '::1', '2016-08-12 17:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(6, 96, '2017-01-19 12:46:07'),
(6, 95, '2017-01-19 12:46:11'),
(6, 93, '2017-01-19 12:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(140) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `date_added`) VALUES
(1, 'voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 0, '0000-00-00 00:00:00'),
(2, 'pp_login', 'catalog/controller/account/logout/after', 'extension/module/pp_login/logout', 1, '2016-08-06 10:21:40'),
(3, 'amazon_login', 'catalog/controller/account/logout/after', 'extension/module/amazon_login/logout', 1, '2016-08-06 10:21:40'),
(4, 'amazon_pay', 'catalog/controller/account/logout/after', 'extension/module/amazon_pay/logout', 1, '2016-08-06 10:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(20, 'theme', 'theme_default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'module', 'themecontrol'),
(30, 'module', 'pavmegamenu'),
(31, 'module', 'pavblogcategory'),
(32, 'module', 'pavblogcomment'),
(33, 'module', 'pavhomebuilder'),
(34, 'module', 'pavsliderlayer'),
(35, 'module', 'bestseller'),
(36, 'module', 'pavbloglatest'),
(37, 'module', 'pavnewsletter'),
(38, 'module', 'pavblog'),
(39, 'module', 'filter'),
(40, 'captcha', 'google_captcha'),
(41, 'captcha', 'basic_captcha'),
(42, 'module', 'pavdeals'),
(46, 'module', 'html'),
(59, 'module', 'featured'),
(60, 'module', 'banner'),
(61, 'module', 'special'),
(62, 'module', 'latest'),
(63, 'module', 'pavtestimonial');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(1, 2, 1, 'أسود'),
(1, 1, 1, 'Black'),
(2, 2, 1, 'أبيض'),
(2, 1, 1, 'White'),
(3, 2, 2, '$0.00 - $99.99'),
(3, 1, 2, '$0.00 - $99.99'),
(4, 2, 2, '$100.00 - $199.00'),
(4, 1, 2, '$100.00 - $199.00'),
(5, 2, 2, '$200.00 and above'),
(5, 1, 2, '$200.00 and above');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 2),
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 2, 'اللون'),
(1, 1, 'Color'),
(2, 2, 'السعر'),
(2, 1, 'Price');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 0, 1),
(2, 'Arabic', 'arabi', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home page'),
(2, 'Product detail page'),
(3, 'Category page'),
(4, 'Default'),
(5, 'Manufacturer page'),
(6, 'Account page'),
(16, 'Special page'),
(9, 'Sitemap page'),
(10, 'Affiliate page'),
(13, 'Search page'),
(14, 'Blog detail page'),
(15, 'Blog page'),
(17, 'Pav Blog');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2131, 15, 'pavblogcomment.52', 'column_right', 2),
(2850, 5, 'category', 'column_right', 0),
(3210, 1, 'html.86', 'footer_top', 0),
(2851, 16, 'category', 'column_right', 0),
(2849, 13, 'category', 'column_right', 0),
(1638, 14, 'pavblogcategory.51', 'column_right', 0),
(1639, 14, 'pavbloglatest.53', 'column_right', 1),
(1640, 14, 'pavblogcomment.52', 'column_right', 2),
(2130, 15, 'pavbloglatest.53', 'column_right', 1),
(1655, 6, 'account', 'column_right', 0),
(1629, 10, 'account', 'column_right', 1),
(3209, 1, 'pavhomebuilder.32', 'content_top', 0),
(2129, 15, 'pavblogcategory.51', 'column_right', 0),
(3083, 3, 'category', 'column_left', 0),
(3084, 3, 'filter', 'column_left', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(222, 6, 0, 'account/%'),
(203, 10, 0, 'affiliate/%'),
(742, 3, 0, 'product/category'),
(805, 1, 0, 'common/home'),
(706, 2, 0, 'product/product'),
(410, 15, 0, 'pavblog%'),
(625, 16, 0, 'product/special'),
(212, 9, 0, 'information/sitemap'),
(216, 4, 0, ''),
(624, 5, 0, 'product/manufacturer%'),
(623, 13, 0, 'product/search'),
(209, 14, 0, 'pavblog/blog'),
(688, 14, 0, 'pavblog/%');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'Mount', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Votico', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Bodelaire', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Curray', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Hockiry', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Carves guild', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu`
--

CREATE TABLE `oc_megamenu` (
  `megamenu_id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  `badges` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu`
--

INSERT INTO `oc_megamenu` (`megamenu_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`, `widget_id`, `badges`) VALUES
(1, '', 0, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 0, 0, '', '', 0, 'top', '', '', '', '', -5, 34, 47, 0, ''),
(40, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 1, 0, '?route=common/home', '', 0, 'top', 'home', '', '', '', 0, 0, 0, 0, ''),
(42, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 2, 0, 'index.php?route=product/category&amp;path=64', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(44, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 3, 0, 'index.php?route=product/category&amp;path=69', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(45, '', 44, 0, '', '', '', '', '71', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, 'index.php?route=product/category&amp;path=69', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(46, '', 44, 0, '', '', '', '', '67', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, 'index.php?route=product/category&amp;path=69_70', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(47, '', 44, 0, '', '', '', '', '85', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, 'index.php?route=product/category&amp;path=69_71', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(48, '', 44, 0, '', '', '', '', '80', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, 'index.php?route=product/category&amp;path=69_91', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(49, '', 48, 0, '', '', '', '', '78', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, 'index.php?route=product/category&amp;path=74', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(53, '', 48, 0, '', '', '', '', '86', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, 'index.php?route=product/category&amp;path=69_85', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(54, '', 48, 0, '', '', '', '', '69', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, 'index.php?route=product/category&amp;path=64_66', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(55, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 4, 0, 'index.php?route=pavdeals/deals', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(56, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 5, 0, '?route=pavblog/blogs', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(58, '', 48, 0, NULL, NULL, NULL, '', '64', '1', 'category', 0, 1, 'menu', 0, 1, 0, 99, 0, 'index.php?route=product/category&amp;path=81', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, ''),
(65, '', 1, 0, NULL, NULL, NULL, '', '79', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, '?route=information/contact', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_description`
--

CREATE TABLE `oc_megamenu_description` (
  `megamenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu_description`
--

INSERT INTO `oc_megamenu_description` (`megamenu_id`, `language_id`, `title`, `description`) VALUES
(42, 1, 'Shop', ''),
(44, 2, 'Services', ''),
(44, 1, 'Services', ''),
(45, 2, 'Baby Care', ''),
(46, 2, 'Bedroom', ''),
(47, 1, 'Dresses', ''),
(48, 2, 'Earrings', ''),
(54, 2, 'Decor', ''),
(53, 2, 'Rings', ''),
(54, 1, 'Decor', ''),
(55, 1, 'Deals', ''),
(56, 2, 'Blogs', ''),
(56, 1, 'Blogs', ''),
(42, 2, 'Shop', ''),
(40, 2, 'Home', ''),
(40, 1, 'Home', ''),
(47, 2, 'Dresses', ''),
(48, 1, 'Earrings', ''),
(45, 1, 'Baby Care', ''),
(46, 1, 'Bedroom', ''),
(49, 1, 'Pendants', ''),
(58, 1, 'Home Living', ''),
(53, 1, 'Rings', ''),
(55, 2, 'Deals', ''),
(58, 2, 'Home Living', ''),
(49, 2, 'Pendants', ''),
(65, 2, 'Contact', ''),
(65, 1, 'Contact', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_widgets`
--

CREATE TABLE `oc_megamenu_widgets` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu_widgets`
--

INSERT INTO `oc_megamenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(1, 'Video Opencart Installation', 'video_code', 'a:1:{s:10:"video_code";s:168:"&lt;iframe width=&quot;300&quot; height=&quot;315&quot; src=&quot;//www.youtube.com/embed/cUhPA5qIxDQ&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;";}', 0),
(2, 'Demo HTML Sample', 'html', 'a:1:{s:4:"html";a:1:{i:1;s:275:"Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel. Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel.";}}', 0),
(3, 'Products Latest', 'product_list', 'a:4:{s:9:"list_type";s:6:"newest";s:5:"limit";s:1:"6";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";}', 0),
(4, 'Products In Cat 20', 'product_category', 'a:4:{s:11:"category_id";s:2:"20";s:5:"limit";s:1:"6";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";}', 0),
(5, 'Manufactures', 'banner', 'a:4:{s:8:"group_id";s:1:"8";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:5:"limit";s:2:"12";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:"feed_url";s:55:"http://www.pavothemes.com/opencart-themes.feed?type=rss";}', 0),
(14, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"14";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:7:"Maku up";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Maku up";s:14:"widget_title_2";s:7:"Maku up";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(15, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:9:"Skin care";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Skin care";s:14:"widget_title_2";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(16, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:4:"Hair";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"Hair";s:14:"widget_title_2";s:4:"Hair";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"10";}', 0),
(10, '', 'html', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:19:"Welcome to the club";s:14:"widget_title_2";s:19:"Welcome to the club";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:386:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by \r\nDominique Mandonnaud in 1970. Sephora''s unique, open-sell environment \r\nfeatures an ever-increasing amount of classic and emerging brands across\r\n a broad range of product categories including skincare, color, \r\nfragrance, body, smilecare, and haircare, in addition to Sephora''s own \r\nprivate label.&lt;/p&gt;";s:13:"htmlcontent_2";s:386:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by \r\nDominique Mandonnaud in 1970. Sephora''s unique, open-sell environment \r\nfeatures an ever-increasing amount of classic and emerging brands across\r\n a broad range of product categories including skincare, color, \r\nfragrance, body, smilecare, and haircare, in addition to Sephora''s own \r\nprivate label.&lt;/p&gt;";}', 0),
(11, '', 'video', 'a:12:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"video";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Clip Care";s:14:"widget_title_2";s:9:"Clip Care";s:12:"addition_cls";s:0:"";s:10:"video_link";s:42:"http://www.youtube.com/watch?v=-rVKnZB6b5s";s:5:"width";s:4:"100%";s:6:"height";s:3:"300";s:9:"subinfo_1";s:3:"300";s:9:"subinfo_2";s:3:"300";}', 0),
(17, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"17";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:7:"Maku up";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Maku up";s:14:"widget_title_2";s:7:"Maku up";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(18, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"18";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:4:"Hair";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"Hair";s:14:"widget_title_2";s:4:"Hair";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"10";}', 0),
(19, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:9:"Skin care";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Skin care";s:14:"widget_title_2";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(20, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:7:"Make up";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Make up";s:14:"widget_title_2";s:7:"Make up";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(21, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:4:"Hair";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"Hair";s:14:"widget_title_2";s:4:"Hair";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"10";}', 0),
(22, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:9:"Skin care";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Skin care";s:14:"widget_title_2";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(23, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:5:"Nails";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:5:"Nails";s:14:"widget_title_2";s:5:"Nails";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"77";s:5:"limit";s:2:"10";}', 0),
(35, '', 'video', 'a:12:{s:4:"wkey";s:2:"35";s:5:"wtype";s:5:"video";s:11:"widget_name";s:5:"Video";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:5:"Video";s:14:"widget_title_2";s:5:"Video";s:12:"addition_cls";s:0:"";s:10:"video_link";s:43:"https://www.youtube.com/watch?v=tUrPdUr8388";s:5:"width";s:3:"450";s:6:"height";s:3:"248";s:9:"subinfo_1";s:3:"300";s:9:"subinfo_2";s:3:"300";}', 0),
(32, '', 'html', 'a:9:{s:4:"wkey";s:2:"32";s:5:"wtype";s:4:"html";s:11:"widget_name";s:8:"About us";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"About us";s:14:"widget_title_2";s:8:"About us";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:621:"The key is to drink coconut, fresh coconut, trust me. Learning is cool, but knowing is better, and i know the key to success. They don''t want us to win. You do know, you do know that they don''t want you to have lunch. I''m keeping it real with you, so what you going do is have lunch. The key is to drink coconut, fresh coconut, trust me. Learning is cool, but knowing is better, and i know the key to success. They don''t want us to win.&amp;nbsp;Sfresh coconut, trust me. Learning is cool, but knowing is better, and i know the key to success. They don''t want us to win. You do know, you do know that they don''t&amp;nbsp;";s:13:"htmlcontent_2";s:621:"The key is to drink coconut, fresh coconut, trust me. Learning is cool, but knowing is better, and i know the key to success. They don''t want us to win. You do know, you do know that they don''t want you to have lunch. I''m keeping it real with you, so what you going do is have lunch. The key is to drink coconut, fresh coconut, trust me. Learning is cool, but knowing is better, and i know the key to success. They don''t want us to win.&amp;nbsp;Sfresh coconut, trust me. Learning is cool, but knowing is better, and i know the key to success. They don''t want us to win. You do know, you do know that they don''t&amp;nbsp;";}', 0),
(34, '', 'video', 'a:12:{s:4:"wkey";s:2:"34";s:5:"wtype";s:5:"video";s:11:"widget_name";s:5:"Video";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:5:"Video";s:14:"widget_title_2";s:5:"Video";s:12:"addition_cls";s:0:"";s:10:"video_link";s:41:"https://www.youtube.com/embed/gUfocCGeTpg";s:5:"width";s:3:"430";s:6:"height";s:3:"230";s:9:"subinfo_1";s:3:"300";s:9:"subinfo_2";s:3:"300";}', 0),
(38, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:5:"Women";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:5:"Women";s:14:"widget_title_2";s:5:"Women";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"77";s:5:"limit";s:2:"15";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu`
--

CREATE TABLE `oc_menu` (
  `menu_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu_description`
--

CREATE TABLE `oc_menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu_module`
--

CREATE TABLE `oc_menu_module` (
  `menu_module_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(61, 'Best Sellers', 'bestseller', '{"name":"Best Sellers","limit":"5","width":"100","height":"100","status":"1"}'),
(87, 'Featured product - home 2', 'featured', '{"name":"Featured product - home 2","product_name":"","product":["76","57","69","82","83","66","88","89","60","72"],"limit":"10","width":"100","height":"100","status":"1"}'),
(90, 'Featured product - home 3', 'featured', '{"name":"Featured product - home 3","product_name":"","product":["76","57","82","73","63","56"],"limit":"6","width":"100","height":"100","status":"1"}'),
(86, 'Shipping block home 2', 'html', '{"name":"Shipping block home 2","module_description":{"1":{"title":"","description":"&lt;div class=&quot;col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center&quot;&gt;\\r\\n\\t&lt;strong&gt;Need we say more?&lt;\\/strong&gt;\\r\\n\\t&lt;p&gt;Free Shipping on Orders over $99.99&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center&quot;&gt;\\r\\n\\t&lt;strong&gt;Free exchanges&lt;\\/strong&gt;\\r\\n\\t&lt;p&gt;We''re commited to the perfect fit, always.&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center&quot;&gt;\\r\\n\\t&lt;strong&gt;30-Day return&lt;\\/strong&gt;\\r\\n\\t&lt;p&gt;If you don''t love it, you have 60 days to return it.&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;"},"2":{"title":"","description":"&lt;div class=&quot;col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center&quot;&gt;\\r\\n\\t&lt;strong&gt;Need we say more?&lt;\\/strong&gt;\\r\\n\\t&lt;p&gt;Free Shipping on Orders over $99.99&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center&quot;&gt;\\r\\n\\t&lt;strong&gt;Free exchanges&lt;\\/strong&gt;\\r\\n\\t&lt;p&gt;We''re commited to the perfect fit, always.&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center&quot;&gt;\\r\\n\\t&lt;strong&gt;30-Day return&lt;\\/strong&gt;\\r\\n\\t&lt;p&gt;If you don''t love it, you have 60 days to return it.&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;"}},"status":"1"}'),
(51, 'Blog page', 'pavblogcategory', '{"name":"Blog page","category_id":"1","status":"1","type":"default"}'),
(52, 'Blog page', 'pavblogcomment', '{"name":"Blog page","limit":"5","status":"1"}'),
(53, 'Blog page', 'pavbloglatest', '{"name":"Blog page","status":"1","description":{"1":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","2":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t"},"prefixclass":"prefix class","tabs":"latest","width":"100","height":"70","cols":"1","limit":"3"}'),
(82, 'deal page', 'pavdeals', '{"status":"1","name":"deal page","date_start":"2011-06-07","date_to":"2029-07-11","category_ids":["0","65","66","67","68","70","71","77","78","80","85","86","91","69","64","81","79","74"],"sort_deals":"p.sort_order__desc","limit":"4","cols":"4","itemsperpage":"4","prefix":"","width":"270","height":"290","auto_play":"0","interval":"1000"}'),
(32, 'Home 1', 'pavhomebuilder', 'a:5:{s:6:"status";s:1:"1";s:4:"name";s:6:"Home 1";s:5:"class";s:0:"";s:6:"layout";s:5693:"[{"cls":"hidden-xs","bgcolor":"","bgimage":"","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"drop-bottom","sfxcls":"","bgcolor":"","padding":"","margin":" ","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Layers Sliders > Slider home 1","module":"pavsliderlayer.65","type":"module"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow flipInX","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"featured_category.rQzycb","type":"featured_category"}],"rows":[]},{"index":0,"cls":"wow flipInX","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"featured_category.OtWzK4","type":"featured_category"}],"rows":[]},{"index":0,"cls":"wow flipInX","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"featured_category.wvnqlJ","type":"featured_category"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"100px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow bounceInLeft","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":6,"mdcol":6,"smcol":6,"xscol":12,"widgets":[{"module":"interactive_banner.RjXr2G","type":"interactive_banner"}],"rows":[]},{"index":0,"cls":"wow bounceInRight","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":6,"mdcol":6,"smcol":6,"xscol":12,"widgets":[{"module":"interactive_banner.GKpwIG","type":"interactive_banner"}],"rows":[]}]},{"cls":"hidden-sm hidden-xs","bgcolor":"","bgimage":"catalog/demo/banners/bg-icon-box.jpg","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"120px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow rotateInDownLeft","sfxcls":"","bgcolor":"","padding":" ","margin":" ","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Need we say more?","module":"icon_box.vj3eRw","type":"icon_box"}],"rows":[]},{"index":0,"cls":"wow rotateIn","sfxcls":"","bgcolor":"","padding":" ","margin":" ","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Free Exchanges","module":"icon_box.hVc4Nm","type":"icon_box"}],"rows":[]},{"index":0,"cls":"wow rotateInDownRight","sfxcls":"","bgcolor":"","padding":" ","margin":" ","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"60-Day Returns","module":"icon_box.4DmS80","type":"icon_box"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"90px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow slideInUp","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"module":"product_tabs.MXCj62","type":"product_tabs"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"90px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow bounceInLeft","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"interactive_banner.aBQeIt","type":"interactive_banner"}],"rows":[]},{"index":0,"cls":"wow fadeInUp","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"interactive_banner.Krff1Q","type":"interactive_banner"}],"rows":[]},{"index":0,"cls":"wow bounceInRight","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"interactive_banner.errrIc","type":"interactive_banner"}],"rows":[]}]},{"cls":"bg-white","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"90px 0px 70px 0px","margin":"120px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow zoomInLeft","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":6,"mdcol":6,"smcol":6,"xscol":12,"widgets":[{"name":"Pav Testimonial Manager > Home 1","module":"pavtestimonial.92","type":"module"}],"rows":[]},{"index":0,"cls":"wow zoomInRight","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":6,"mdcol":6,"smcol":6,"xscol":12,"widgets":[{"module":"manufacture.6GBlrk","type":"manufacture"}],"rows":[]}]},{"cls":"bg-white","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow fadeInUp","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Latest blogs","module":"bloglatest.2uDoZt","type":"bloglatest"}],"rows":[]}]}]";s:9:"module_id";s:2:"32";}'),
(83, 'Home 2', 'pavhomebuilder', 'a:5:{s:6:"status";s:1:"1";s:4:"name";s:6:"Home 2";s:5:"class";s:0:"";s:6:"layout";s:5392:"[{"cls":"hidden-xs","bgcolor":"","bgimage":"","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"drop-bottom","sfxcls":"","bgcolor":"","padding":"","margin":" ","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Layers Sliders > Slider home 2","module":"pavsliderlayer.84","type":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"wow flipInX","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"featured_category.uQHpH1","type":"featured_category"}],"rows":[]},{"index":0,"cls":"wow flipInX","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"featured_category.a5J0x5","type":"featured_category"}],"rows":[]},{"index":0,"cls":"wow flipInX","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"featured_category.1SebyQ","type":"featured_category"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"90px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow bounceInLeft","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":6,"mdcol":6,"smcol":6,"xscol":12,"widgets":[{"module":"interactive_banner.rGrUaK","type":"interactive_banner"}],"rows":[]},{"index":0,"cls":"wow bounceInRight","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":6,"mdcol":6,"smcol":6,"xscol":12,"widgets":[{"module":"interactive_banner.Q5koFU","type":"interactive_banner"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"wow rotateInDownLeft","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"interactive_banner.s9n7Ec","type":"interactive_banner"}],"rows":[]},{"index":0,"cls":"wow rotateIn","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"interactive_banner.g4eufz","type":"interactive_banner"}],"rows":[]},{"index":0,"cls":"wow rotateInDownRight","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"interactive_banner.nXV6II","type":"interactive_banner"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"90px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow slideInUp","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"module":"product_tabs_first.avv9vs","type":"product_tabs_first"}],"rows":[]}]},{"cls":"hidden-sm hidden-xs","bgcolor":"","bgimage":"catalog/demo/banners/bg-icon-box.jpg","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"120px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow bounceInLeft","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Need we say more?","module":"icon_box.8NGQJj","type":"icon_box"}],"rows":[]},{"index":0,"cls":"wow fadeInUp","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Free Exchanges","module":"icon_box.wgLhqX","type":"icon_box"}],"rows":[]},{"index":0,"cls":"wow bounceInRight","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"60-Day Returns","module":"icon_box.H55yLr","type":"icon_box"}],"rows":[]}]},{"cls":"bg-white","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"120px 0px 70px 0px","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow fadeInUp","sfxcls":"","bgcolor":"","padding":"","margin":" ","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Testimonial Manager > Home 2","module":"pavtestimonial.93","type":"module"}],"rows":[]}]},{"cls":"bg-white","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow fadeInUp","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Latest blogs","module":"bloglatest.xCoz8E","type":"bloglatest"}],"rows":[]}]}]";s:9:"module_id";s:2:"83";}'),
(88, 'Home 3', 'pavhomebuilder', 'a:5:{s:6:"status";s:1:"1";s:4:"name";s:6:"Home 3";s:5:"class";s:0:"";s:6:"layout";s:3971:"[{"cls":"hidden-xs","bgcolor":"","bgimage":"","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"drop-bottom","sfxcls":"","bgcolor":"","padding":"","margin":" ","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Layers Sliders > Slider home 3","module":"pavsliderlayer.89","type":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"wow flipInX","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"featured_category.N5OZum","type":"featured_category"}],"rows":[]},{"index":0,"cls":"wow flipInX","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"featured_category.BtpAiO","type":"featured_category"}],"rows":[]},{"index":0,"cls":"wow flipInX","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"featured_category.HvdvyO","type":"featured_category"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"90px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow slideInUp","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"module":"product_tabs_first.epDL75","type":"product_tabs_first"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"90px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow bounceInLeft","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Latest Products","module":"product_list.3QRC5f","type":"product_list"}],"rows":[]},{"index":0,"cls":"wow slideInUp","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Sale Off","module":"product_list.njx9w2","type":"product_list"}],"rows":[]},{"index":0,"cls":"wow bounceInRight","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Top Rate","module":"product_list.vxTSQQ","type":"product_list"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"90px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow bounceInLeft","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":6,"mdcol":6,"smcol":6,"xscol":12,"widgets":[{"module":"interactive_banner.7Eg8Th","type":"interactive_banner"}],"rows":[]},{"index":0,"cls":"wow bounceInRight","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":6,"mdcol":6,"smcol":6,"xscol":12,"widgets":[{"module":"interactive_banner.HgAoAR","type":"interactive_banner"}],"rows":[]}]},{"cls":"bg-white","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"120px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow fadeInUp","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Latest blogs","module":"bloglatest.CMYkc9","type":"bloglatest"}],"rows":[]}]}]";s:9:"module_id";s:2:"88";}'),
(76, 'Home1', 'pavnewsletter', '{"displaymode":"default","name":"Home1","status":"1","description":{"1":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;Sign up for our awesome newsletter&lt;\\/p&gt;&lt;p&gt;and get 10% coupon code&lt;\\/p&gt;\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","2":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;Sign up for our awesome newsletter&lt;\\/p&gt;&lt;p&gt;and get 10% coupon code&lt;\\/p&gt;\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t"},"social":{"1":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","2":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t"}}'),
(65, 'Slider home 1', 'pavsliderlayer', '{"name":"Slider home 1","status":"1","group_id":"3","pavsliderlayer_module":[]}'),
(84, 'Slider home 2', 'pavsliderlayer', '{"name":"Slider home 2","status":"1","group_id":"10","pavsliderlayer_module":[]}'),
(89, 'Slider home 3', 'pavsliderlayer', '{"name":"Slider home 3","status":"1","group_id":"11","pavsliderlayer_module":[]}'),
(92, 'Home 1', 'pavtestimonial', '{"name":"Home 1","status":"1","auto_play":"0","text_interval":"8000","width":"940","height":"350","column_item":"1","page_items":"2","class":"","testimonial_item":{"1":{"image":"","video_link":"","profile":{"1":"&lt;p&gt;Very hight quality products&lt;\\/p&gt;\\r\\n&lt;ul class=&quot;list-inline&quot;&gt;\\r\\n\\t&lt;li&gt;By: &lt;span class=&quot;client&quot;&gt;Anh Nguyen&lt;\\/span&gt;&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;Time: &lt;span class=&quot;time&quot;&gt;2016-06-22&lt;\\/span&gt;&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;","2":"&lt;p&gt;Very hight quality products&lt;\\/p&gt;\\r\\n&lt;ul class=&quot;list-inline&quot;&gt;\\r\\n\\t&lt;li&gt;By: &lt;span class=&quot;client&quot;&gt;Anh Nguyen&lt;\\/span&gt;&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;Time: &lt;span class=&quot;time&quot;&gt;2016-06-22&lt;\\/span&gt;&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;"},"description":{"1":"&lt;p&gt;&quot;This product have a excellent quality. We are very happy and we recomende you buy this product.&quot;&lt;\\/p&gt;","2":"&lt;p&gt;&quot;This product have a excellent quality. We are very happy and we recomende you buy this product.&quot;&lt;\\/p&gt;"}}}}'),
(93, 'Home 2', 'pavtestimonial', '{"name":"Home 2","status":"1","auto_play":"0","text_interval":"8000","width":"940","height":"350","column_item":"1","page_items":"2","class":"text-center","testimonial_item":{"1":{"image":"","video_link":"","profile":{"1":"&lt;p&gt;Very hight quality products&lt;\\/p&gt;\\r\\n&lt;ul class=&quot;list-inline&quot;&gt;\\r\\n\\t&lt;li&gt;By: &lt;span class=&quot;client&quot;&gt;Anh Nguyen&lt;\\/span&gt;&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;Time: &lt;span class=&quot;time&quot;&gt;2016-06-22&lt;\\/span&gt;&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;","2":"&lt;p&gt;Very hight quality products&lt;\\/p&gt;\\r\\n&lt;ul class=&quot;list-inline&quot;&gt;\\r\\n\\t&lt;li&gt;By: &lt;span class=&quot;client&quot;&gt;Anh Nguyen&lt;\\/span&gt;&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;Time: &lt;span class=&quot;time&quot;&gt;2016-06-22&lt;\\/span&gt;&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;"},"description":{"1":"&lt;p&gt;&quot;This product have a excellent quality. We are very happy and we recomende you buy this product.&quot;&lt;\\/p&gt;","2":"&lt;p&gt;&quot;This product have a excellent quality. We are very happy and we recomende you buy this product.&quot;&lt;\\/p&gt;"}}}}'),
(94, 'Home 4', 'pavhomebuilder', 'a:5:{s:6:"status";s:1:"1";s:4:"name";s:6:"Home 4";s:5:"class";s:0:"";s:6:"layout";s:4794:"[{"cls":"hidden-xs","bgcolor":"","bgimage":"","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Layers Sliders > Slider home 4","module":"pavsliderlayer.95","type":"module"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"90px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow slideInUp","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Best Seller","module":"product_list.ZeMleg","type":"product_list"}],"rows":[]}]},{"cls":"nopadding-inset","bgcolor":"","bgimage":"","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"120px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow flipInX","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"interactive_banner.cIQQV1","type":"interactive_banner"}],"rows":[]},{"index":0,"cls":"wow flipInX","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"interactive_banner.qmsz7X","type":"interactive_banner"}],"rows":[]},{"index":0,"cls":"wow flipInX","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"module":"interactive_banner.WY9NtW","type":"interactive_banner"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"90px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow zoomInLeft","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"module":"product_tabs_first.6TIG2a","type":"product_tabs_first"}],"rows":[]}]},{"cls":"hidden-sm hidden-xs","bgcolor":"","bgimage":"catalog/demo/banners/bg-icon-box.jpg","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"120px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow slideInUp","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Need we say more?","module":"icon_box.j2iaXE","type":"icon_box"}],"rows":[]},{"index":0,"cls":"wow slideInUp","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Free Exchanges","module":"icon_box.f2hcQF","type":"icon_box"}],"rows":[]},{"index":0,"cls":"wow slideInUp","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"60-Day Returns","module":"icon_box.yWNHnY","type":"icon_box"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"90px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow zoomInLeft","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Latest Products","module":"product_list.FGyUdK","type":"product_list"}],"rows":[]},{"index":0,"cls":"wow flipInX","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Sale Off","module":"product_list.1eUs1X","type":"product_list"}],"rows":[]},{"index":0,"cls":"wow zoomInRight","sfxcls":"","bgcolor":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Top Rate","module":"product_list.GDZgrC","type":"product_list"}],"rows":[]}]},{"cls":"bg-white","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"120px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"wow slideInUp","sfxcls":"","bgcolor":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Latest blogs","module":"bloglatest.cdgHj0","type":"bloglatest"}],"rows":[]}]}]";s:9:"module_id";s:2:"94";}'),
(95, 'Slider home 4', 'pavsliderlayer', '{"name":"Slider home 4","status":"1","group_id":"12","pavsliderlayer_module":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(7, 0, 'INV-2013-00', 0, 'Pavo Sunbox', 'http://localhost/pav_sunbox_v2200/', 1, 1, 'demo', 'demo', 'demo@gmail.com', '123123123123', '', '[]', 'demo', 'demo', 'My company', 'Rio de Janeiro', 'New York', 'New York', '213', 'Ukraine', 220, 'Poltavs''ka Oblast''', 3496, '', '[]', 'Cash On Delivery', 'cod', 'demo', 'demo', 'My company', 'Rio de Janeiro', 'New York', 'New York', '213', 'Ukraine', 220, 'Poltavs''ka Oblast''', 3496, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '2333.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2016-06-23 15:17:40', '2016-06-23 15:17:43'),
(8, 0, 'INV-2013-00', 0, 'Pavo Sunbox', 'http://localhost/pav_sunbox_v2200/', 1, 1, 'demo', 'demo', 'demo@gmail.com', '123123123123', '', '[]', 'demo', 'demo', 'My company', 'Rio de Janeiro', 'New York', 'New York', '213', 'Ukraine', 220, 'Poltavs''ka Oblast''', 3496, '', '[]', 'Cash On Delivery', 'cod', 'demo', 'demo', 'My company', 'Rio de Janeiro', 'New York', 'New York', '213', 'Ukraine', 220, 'Poltavs''ka Oblast''', 3496, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '651.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', 'vi-VN,vi;q=0.8,en-US;q=0.5,en;q=0.3', '2016-06-27 15:01:58', '2016-06-27 15:02:00'),
(9, 0, 'INV-2013-00', 0, 'Pavo Crafts', 'http://localhost/brainos/project/pav_crafts_v2200/', 0, 1, 'Demo', 'Demo', 'Demo@gmail.com', '0123456789', '', '[]', 'Demo', 'Demo', '', 'Demo city', '', 'demo', '1234', 'Syrian Arab Republic', 205, 'Ar Raqqah', 3124, '', '[]', 'Cash On Delivery', 'cod', 'Demo', 'Demo', '', 'Demo city', '', 'demo', '1234', 'Syrian Arab Republic', 205, 'Ar Raqqah', 3124, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '876.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2016-07-11 22:27:07', '2016-07-11 22:27:09'),
(10, 0, 'INV-2013-00', 0, 'Pav Foliage', 'http://localhost/brainos/project/pav_foliage_v2300/', 6, 1, 'demo', 'demo', 'demo@gmail.com', '0123456789', '', '', 'demo', 'demo', '', 'Rio de Janeiro', '', 'Rio de Janeiro', '9988', 'Tuvalu', 218, 'Funafuti', 3418, '', '[]', 'Cash On Delivery', 'cod', 'demo', 'demo', '', 'Rio de Janeiro', '', 'Rio de Janeiro', '9988', 'Tuvalu', 218, 'Funafuti', 3418, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '393.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 'vi-VN,vi;q=0.8,en-US;q=0.5,en;q=0.3', '2017-01-07 23:20:56', '2017-01-07 23:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(13, 7, 1, 0, '', '2016-06-23 15:17:43'),
(14, 8, 1, 0, '', '2016-06-27 15:02:00'),
(15, 9, 1, 0, '', '2016-07-11 22:27:09'),
(16, 10, 1, 0, '', '2017-01-07 23:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 7, 16, 228, 0, 'Date &amp; Time', '2015-07-27 10:28', 'datetime');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(20, 7, 75, 'Jones New York glasses', 'green', 1, '111.0000', '111.0000', '0.0000', 0),
(19, 7, 74, 'Elliot Sunglasses', 'red', 1, '120.0000', '120.0000', '0.0000', 0),
(18, 7, 73, 'DKNY 4664 glasses', 'red', 1, '120.0000', '120.0000', '0.0000', 0),
(17, 7, 72, 'Catherine acetate glasses ', 'gold', 1, '100.0000', '100.0000', '0.0000', 0),
(16, 7, 65, 'Adidas AR009 glasses', 'Red', 1, '99.0000', '99.0000', '0.0000', 0),
(15, 7, 64, 'Adidas AR001 glasses', 'Gold', 1, '300.0000', '300.0000', '0.0000', 0),
(12, 7, 52, 'Adidas AR003 glasses', 'White', 1, '80.0000', '80.0000', '0.0000', 0),
(13, 7, 59, 'Amsterdam tortoise sunglasses', 'Pink', 1, '200.0000', '200.0000', '0.0000', 0),
(14, 7, 61, 'Adidas AR000 glasses', 'White', 1, '150.0000', '150.0000', '0.0000', 0),
(21, 7, 76, 'Oakley flak 2.0 black', 'pink', 1, '100.0000', '100.0000', '0.0000', 0),
(22, 7, 77, 'Ottoto arezzo pink glasses', 'pink', 1, '160.0000', '160.0000', '0.0000', 0),
(23, 7, 78, 'RayBan blue &amp; green glasses', 'blue', 1, '180.0000', '180.0000', '0.0000', 0),
(24, 7, 79, 'RayBan gold sunglasses', 'gold', 1, '100.0000', '100.0000', '0.0000', 0),
(25, 7, 80, 'RayBan 3470L sunglasses', 'brow', 1, '88.0000', '88.0000', '0.0000', 0),
(26, 7, 81, 'Revel blythe sunglasses', 'gold', 1, '300.0000', '300.0000', '0.0000', 0),
(27, 7, 82, 'Reagan gunmetal glasses', 'black', 1, '120.0000', '120.0000', '0.0000', 0),
(28, 8, 64, 'Adidas AR001 glasses', 'Gold', 1, '300.0000', '300.0000', '0.0000', 0),
(29, 8, 52, 'Adidas AR003 glasses', 'White', 1, '80.0000', '80.0000', '0.0000', 0),
(30, 8, 89, 'Anya hindmarch', 'Blue', 1, '66.0000', '66.0000', '0.0000', 0),
(31, 8, 59, 'Amsterdam tortoise sunglasses', 'Pink', 1, '200.0000', '200.0000', '0.0000', 0),
(32, 9, 61, 'Adidas AR000 glasses', 'White', 1, '150.0000', '150.0000', '0.0000', 0),
(33, 9, 64, 'Adidas AR001 glasses', 'Gold', 1, '300.0000', '300.0000', '0.0000', 0),
(34, 9, 52, 'Adidas AR003 glasses', 'White', 1, '80.0000', '80.0000', '0.0000', 0),
(35, 9, 90, 'Bao bao issey miyake', 'red', 1, '41.0000', '41.0000', '0.0000', 0),
(36, 9, 68, 'Belts GG logo leather 2cm', 'Black &amp; white', 1, '300.0000', '300.0000', '0.0000', 0),
(37, 10, 64, 'Agate Gemstone Double Sided Ball Earrings', 'Gold', 1, '300.0000', '300.0000', '0.0000', 0),
(38, 10, 80, 'Emerald &amp; Jade Floral Carved Cocktail Ring', 'brow', 1, '88.0000', '88.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(21, 7, 'total', 'Total', '2333.0000', 9),
(20, 7, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(19, 7, 'sub_total', 'Sub-Total', '2328.0000', 1),
(22, 8, 'sub_total', 'Sub-Total', '646.0000', 1),
(23, 8, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(24, 8, 'total', 'Total', '651.0000', 9),
(25, 9, 'sub_total', 'Sub-Total', '871.0000', 1),
(26, 9, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(27, 9, 'total', 'Total', '876.0000', 9),
(28, 10, 'sub_total', 'Sub-Total', '388.0000', 1),
(29, 10, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(30, 10, 'total', 'Total', '393.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog`
--

CREATE TABLE `oc_pavblog_blog` (
  `blog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `date_modified` date NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_blog`
--

INSERT INTO `oc_pavblog_blog` (`blog_id`, `category_id`, `position`, `created`, `status`, `user_id`, `hits`, `image`, `meta_keyword`, `meta_description`, `meta_title`, `date_modified`, `video_code`, `params`, `tags`, `featured`, `keyword`) VALUES
(7, 21, 2, '2013-03-09', 1, 1, 83, 'catalog/demo/blogs/blog-6.jpg', '', '', '', '2016-11-17', '', '', 'joomla, prestashop, magento', 1, ''),
(9, 21, 0, '2013-03-09', 1, 1, 102, 'catalog/demo/blogs/blog-05.jpg', '', '', '', '2016-11-17', '', '', 'prestashop, magento', 0, ''),
(10, 21, 0, '2013-03-09', 1, 1, 383, 'catalog/demo/blogs/blog-02.jpg', 'test test', '', 'Custom SEO Titlte', '2016-11-17', '', '', 'prestashop', 0, ''),
(11, 21, 0, '2013-03-11', 1, 1, 212, 'catalog/demo/blogs/blog-03.jpg', '', '', '', '2016-11-17', '', '', 'opencart', 0, ''),
(12, 25, 0, '2016-06-22', 1, 1, 55, 'catalog/demo/blogs/blog-01.jpg', '', '', '', '2016-11-17', '', '', '', 0, ''),
(13, 23, 0, '2016-06-22', 1, 1, 94, 'catalog/demo/blogs/blog-4.jpg', '', '', '', '2016-11-17', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog_description`
--

CREATE TABLE `oc_pavblog_blog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_blog_description`
--

INSERT INTO `oc_pavblog_blog_description` (`blog_id`, `language_id`, `title`, `description`, `content`) VALUES
(7, 1, 'Aquam elit accumn wisi sit semper sceleris', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis. Sed quisque cum velit&lt;/p&gt;&lt;br&gt;', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla.&lt;/p&gt;&lt;br&gt;\r\n\r\n&lt;p&gt;Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue. Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae. Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque.&lt;/p&gt;&lt;br&gt;\r\n\r\n&lt;p&gt;Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae. Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(7, 2, 'Aquam elit accumn wisi sit semper sceleris', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis. Sed quisque cum velit&lt;/p&gt;&lt;br&gt;', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla.&lt;/p&gt;&lt;br&gt;\r\n\r\n&lt;p&gt;Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue. Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae. Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque.&lt;/p&gt;&lt;br&gt;\r\n\r\n&lt;p&gt;Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae. Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(13, 1, 'Morbi condi mentum molestie ', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;&lt;br&gt;', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue. Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae. Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Ac elit vitae. Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(13, 2, 'Morbi condi mentum molestie ', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;&lt;br&gt;', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue. Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae. Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Ac elit vitae. Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(12, 1, 'Fashion week spring/summer 2016', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;&lt;br&gt;', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae. Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae. Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(12, 2, 'Fashion week spring/summer 2016', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;&lt;br&gt;', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae. Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae. Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(11, 1, 'Lorem ipsum nunc fringilla', '&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;br&gt;', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;At risus pretium urna tortor metus fringilla interdum mauris tempor congue. Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Nam lacinia wisi tortor orci quis vitae. Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae. Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(11, 2, 'Lorem ipsum nunc fringilla', '&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;br&gt;', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;At risus pretium urna tortor metus fringilla interdum mauris tempor congue. Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Nam lacinia wisi tortor orci quis vitae. Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae. Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(9, 1, 'Lorem ipsum dolor amet', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;&lt;br&gt;', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;At risus pretium urna tortor metus fringilla interdum mauris tempor congue. Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Nam lacinia wisi tortor orci quis vitae. Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae. Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(9, 2, 'Lorem ipsum dolor amet', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;&lt;br&gt;', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;At risus pretium urna tortor metus fringilla interdum mauris tempor congue. Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Nam lacinia wisi tortor orci quis vitae. Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae. Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(10, 1, 'Lorem dolor sit amet', '&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;&lt;br&gt;', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;At risus pretium urna tortor metus fringilla interdum mauris tempor congue. Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Nam lacinia wisi tortor orci quis vitae. Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae. Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(10, 2, 'Lorem dolor sit amet', '&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;&lt;br&gt;', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;At risus pretium urna tortor metus fringilla interdum mauris tempor congue. Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;Nam lacinia wisi tortor orci quis vitae. Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae. Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus.&lt;/p&gt;&lt;br&gt;\r\n&lt;p&gt;At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category`
--

CREATE TABLE `oc_pavblog_category` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `meta_keyword` varchar(255) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `meta_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_category`
--

INSERT INTO `oc_pavblog_category` (`category_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `meta_keyword`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `meta_description`, `meta_title`, `level`, `left`, `right`, `keyword`) VALUES
(1, '', 0, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 0, 0, '', '', 0, 'top', '', '', '', '', -5, 34, 47, ''),
(20, 'data/pavblog/pav-c3.jpg', 22, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 3, 0, '', '', 0, 'top', 'test test', '', '', '', 0, 0, 0, ''),
(21, 'data/pavblog/pav-c1.jpg', 22, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 1, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(22, 'data/demo/canon_eos_5d_1.jpg', 1, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 1, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(23, 'data/pavblog/pav-c2.jpg', 22, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 2, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(24, 'data/logo.png', 1, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 2, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(25, '', 1, 2, '', '', '', '', '', '1', '', 2, 1, '', 0, 1, 0, 99, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(26, '', 1, 2, '', '', '', '', '', '1', '', 2, 1, '', 0, 1, 0, 99, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(27, '', 1, 2, '', '', '', '', '', '1', '', 2, 1, '', 0, 1, 0, 99, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(28, '', 25, 2, '', '', '', '', '', '1', '', 2, 1, '', 0, 1, 0, 99, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(29, '', 25, 2, '', '', '', '', '', '1', '', 2, 1, '', 0, 1, 0, 99, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category_description`
--

CREATE TABLE `oc_pavblog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_category_description`
--

INSERT INTO `oc_pavblog_category_description` (`category_id`, `language_id`, `title`, `description`) VALUES
(1, 1, 'ROOT', 'Menu Root'),
(22, 2, 'Vestibulum massa', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(24, 2, 'Sed fermentum', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(21, 2, 'Massage sauna', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(23, 2, 'For men', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(20, 2, 'For girl', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(25, 2, 'Turpis ipsum', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(25, 1, 'Turpis ipsum', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(26, 2, 'Fusce cursus', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(26, 1, 'Fusce cursus', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(27, 1, 'Curabitur faucibus', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(28, 2, 'For kid', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(28, 1, 'For kid', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(29, 1, 'For all', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(29, 2, 'For all', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(27, 2, 'Curabitur faucibus', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(24, 1, 'Sed fermentum', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n'),
(22, 1, 'Vestibulum massa', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n'),
(21, 1, 'Massage sauna', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n'),
(23, 1, 'For men', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n'),
(20, 1, 'For girl', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_comment`
--

CREATE TABLE `oc_pavblog_comment` (
  `comment_id` int(11) UNSIGNED NOT NULL,
  `blog_id` int(11) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_comment`
--

INSERT INTO `oc_pavblog_comment` (`comment_id`, `blog_id`, `comment`, `status`, `created`, `user`, `email`) VALUES
(6, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:23:09', 'ha cong tien', 'hatuhn@gmail.com'),
(7, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:25:19', 'ha cong tien', 'hatuhn@gmail.com'),
(8, 11, 'Curabitur mag Commodo laoreet Curabitur mag Commodo laoreetCurabitur mag Commodo laoreetCurabitur mag Commodo laoreetCurabitur mag Commodo laoreetCurabitur mag Commodo laoreet', 1, '2016-08-03 22:34:33', 'Meocon', 'meocon@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_draft`
--

CREATE TABLE `oc_pavnewsletter_draft` (
  `draft_id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT '0',
  `to` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text,
  `customer_group_id` int(11) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `affiliate` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_email`
--

CREATE TABLE `oc_pavnewsletter_email` (
  `email_id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `attach` varchar(200) DEFAULT NULL,
  `message` text,
  `customer_group_id` int(11) DEFAULT NULL,
  `affiliate` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `defined` varchar(255) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `latest` varchar(255) DEFAULT NULL,
  `popular` varchar(255) DEFAULT NULL,
  `defined_categories` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `defined_products` varchar(255) DEFAULT NULL,
  `defined_products_more` varchar(255) DEFAULT NULL,
  `only_selected_language` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `to` varchar(200) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_history`
--

CREATE TABLE `oc_pavnewsletter_history` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `public_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `subject` text,
  `message` text,
  `date_added` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_subscribe`
--

CREATE TABLE `oc_pavnewsletter_subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT '0',
  `store_id` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `action` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavnewsletter_subscribe`
--

INSERT INTO `oc_pavnewsletter_subscribe` (`subscribe_id`, `customer_id`, `store_id`, `email`, `action`) VALUES
(1, 0, 0, '', 1),
(2, 0, 0, '', 1),
(3, 0, 0, '', 1),
(4, 0, 0, '', 1),
(5, 0, 0, '', 1),
(6, 0, 0, '', 1),
(7, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_template`
--

CREATE TABLE `oc_pavnewsletter_template` (
  `template_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `hits` tinyint(4) DEFAULT '0',
  `template_file` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_template_description`
--

CREATE TABLE `oc_pavnewsletter_template_description` (
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `template_message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavoslidergroups`
--

CREATE TABLE `oc_pavoslidergroups` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavoslidergroups`
--

INSERT INTO `oc_pavoslidergroups` (`id`, `title`, `params`) VALUES
(3, 'Slider home 1', 'a:28:{s:5:"title";s:13:"Slider home 1";s:5:"delay";s:4:"9000";s:9:"fullwidth";s:9:"fullwidth";s:5:"width";s:4:"1920";s:6:"height";s:3:"700";s:12:"touch_mobile";s:1:"1";s:13:"stop_on_hover";s:1:"1";s:12:"shuffle_mode";s:1:"0";s:14:"image_cropping";s:1:"0";s:11:"shadow_type";s:1:"2";s:14:"show_time_line";s:1:"1";s:18:"time_line_position";s:3:"top";s:16:"background_color";s:7:"#d9d9d9";s:6:"margin";s:3:"0px";s:7:"padding";s:3:"0px";s:16:"background_image";s:1:"0";s:14:"background_url";s:0:"";s:14:"navigator_type";s:6:"bullet";s:16:"navigator_arrows";s:16:"verticalcentered";s:16:"navigation_style";s:5:"round";s:17:"offset_horizontal";s:1:"0";s:15:"offset_vertical";s:2:"20";s:14:"show_navigator";s:1:"0";s:20:"hide_navigator_after";s:3:"200";s:15:"thumbnail_width";s:3:"100";s:16:"thumbnail_height";s:2:"50";s:16:"thumbnail_amount";s:1:"5";s:17:"hide_screen_width";s:0:"";}'),
(11, 'Slider home 3', 'a:28:{s:5:"title";s:13:"Slider home 3";s:5:"delay";s:4:"9000";s:9:"fullwidth";s:9:"fullwidth";s:5:"width";s:4:"1920";s:6:"height";s:3:"700";s:12:"touch_mobile";s:1:"1";s:13:"stop_on_hover";s:1:"1";s:12:"shuffle_mode";s:1:"0";s:14:"image_cropping";s:1:"0";s:11:"shadow_type";s:1:"2";s:14:"show_time_line";s:1:"1";s:18:"time_line_position";s:3:"top";s:16:"background_color";s:7:"#d9d9d9";s:6:"margin";s:3:"0px";s:7:"padding";s:3:"0px";s:16:"background_image";s:1:"0";s:14:"background_url";s:0:"";s:14:"navigator_type";s:6:"bullet";s:16:"navigator_arrows";s:16:"verticalcentered";s:16:"navigation_style";s:5:"round";s:17:"offset_horizontal";s:1:"0";s:15:"offset_vertical";s:2:"20";s:14:"show_navigator";s:1:"0";s:20:"hide_navigator_after";s:3:"200";s:15:"thumbnail_width";s:3:"100";s:16:"thumbnail_height";s:2:"50";s:16:"thumbnail_amount";s:1:"5";s:17:"hide_screen_width";s:0:"";}'),
(10, 'Slider home 2', 'a:28:{s:5:"title";s:13:"Slider home 2";s:5:"delay";s:4:"9000";s:9:"fullwidth";s:9:"fullwidth";s:5:"width";s:4:"1920";s:6:"height";s:3:"700";s:12:"touch_mobile";s:1:"1";s:13:"stop_on_hover";s:1:"1";s:12:"shuffle_mode";s:1:"0";s:14:"image_cropping";s:1:"0";s:11:"shadow_type";s:1:"2";s:14:"show_time_line";s:1:"1";s:18:"time_line_position";s:3:"top";s:16:"background_color";s:7:"#d9d9d9";s:6:"margin";s:3:"0px";s:7:"padding";s:3:"0px";s:16:"background_image";s:1:"0";s:14:"background_url";s:0:"";s:14:"navigator_type";s:6:"bullet";s:16:"navigator_arrows";s:16:"verticalcentered";s:16:"navigation_style";s:5:"round";s:17:"offset_horizontal";s:1:"0";s:15:"offset_vertical";s:2:"20";s:14:"show_navigator";s:1:"0";s:20:"hide_navigator_after";s:3:"200";s:15:"thumbnail_width";s:3:"100";s:16:"thumbnail_height";s:2:"50";s:16:"thumbnail_amount";s:1:"5";s:17:"hide_screen_width";s:0:"";}'),
(12, 'Slider home 4', 'a:28:{s:5:"title";s:13:"Slider home 4";s:5:"delay";s:4:"9000";s:9:"fullwidth";s:9:"fullwidth";s:5:"width";s:4:"1920";s:6:"height";s:3:"700";s:12:"touch_mobile";s:1:"1";s:13:"stop_on_hover";s:1:"1";s:12:"shuffle_mode";s:1:"0";s:14:"image_cropping";s:1:"0";s:11:"shadow_type";s:1:"2";s:14:"show_time_line";s:1:"1";s:18:"time_line_position";s:3:"top";s:16:"background_color";s:7:"#d9d9d9";s:6:"margin";s:3:"0px";s:7:"padding";s:3:"0px";s:16:"background_image";s:1:"0";s:14:"background_url";s:0:"";s:14:"navigator_type";s:6:"bullet";s:16:"navigator_arrows";s:16:"verticalcentered";s:16:"navigation_style";s:5:"round";s:17:"offset_horizontal";s:1:"0";s:15:"offset_vertical";s:2:"20";s:14:"show_navigator";s:1:"0";s:20:"hide_navigator_after";s:3:"200";s:15:"thumbnail_width";s:3:"100";s:16:"thumbnail_height";s:2:"50";s:16:"thumbnail_amount";s:1:"5";s:17:"hide_screen_width";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavosliderlayers`
--

CREATE TABLE `oc_pavosliderlayers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `params` text NOT NULL,
  `layersparams` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `language_id` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavosliderlayers`
--

INSERT INTO `oc_pavosliderlayers` (`id`, `title`, `parent_id`, `group_id`, `params`, `layersparams`, `image`, `status`, `position`, `language_id`) VALUES
(133, 'slider01', 0, 10, 'a:18:{s:2:"id";s:3:"127";s:15:"slider_group_id";s:1:"3";s:12:"slider_title";s:8:"slider01";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"127";s:12:"slider_image";s:44:"catalog/demo/slider/home1/slider01-home1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"120";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:12:"easeOutQuint";s:10:"time_start";s:3:"295";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:20:"white caption-medium";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"152";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"269";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1276";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home1/slider01-home1.jpg', 1, 2, 1),
(129, 'slider01', 0, 3, 'a:18:{s:2:"id";s:3:"127";s:15:"slider_group_id";s:1:"3";s:12:"slider_title";s:8:"slider01";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"127";s:12:"slider_image";s:44:"catalog/demo/slider/home1/slider01-home1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"120";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:12:"easeOutQuint";s:10:"time_start";s:3:"295";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:20:"white caption-medium";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"152";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"269";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1276";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home1/slider01-home1.jpg', 1, 0, 2),
(130, 'slider02', 0, 3, 'a:18:{s:2:"id";s:3:"128";s:15:"slider_group_id";s:1:"3";s:12:"slider_title";s:8:"slider02";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"128";s:12:"slider_image";s:44:"catalog/demo/slider/home1/slider02-home1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"112";s:10:"layer_left";s:4:"1100";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:10:"easeInSine";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:20:"white caption-medium";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"140";s:10:"layer_left";s:4:"1100";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:7:"fadeout";s:15:"layer_endeasing";s:11:"easeOutSine";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"260";s:10:"layer_left";s:4:"1100";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:10:"easeInExpo";s:10:"time_start";s:4:"1200";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"315";s:10:"layer_left";s:4:"1100";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home1/slider02-home1.jpg', 1, 0, 2),
(127, 'slider01', 0, 3, 'a:18:{s:2:"id";s:3:"127";s:15:"slider_group_id";s:1:"3";s:12:"slider_title";s:8:"slider01";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"127";s:12:"slider_image";s:44:"catalog/demo/slider/home1/slider01-home1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"120";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:12:"easeOutQuint";s:10:"time_start";s:3:"295";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:20:"white caption-medium";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"152";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"269";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1276";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home1/slider01-home1.jpg', 1, 0, 1),
(128, 'slider02', 0, 3, 'a:18:{s:2:"id";s:3:"128";s:15:"slider_group_id";s:1:"3";s:12:"slider_title";s:8:"slider02";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"128";s:12:"slider_image";s:44:"catalog/demo/slider/home1/slider02-home1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"112";s:10:"layer_left";s:4:"1100";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:10:"easeInSine";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:20:"white caption-medium";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"140";s:10:"layer_left";s:4:"1100";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:7:"fadeout";s:15:"layer_endeasing";s:11:"easeOutSine";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"260";s:10:"layer_left";s:4:"1100";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:10:"easeInExpo";s:10:"time_start";s:4:"1200";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"315";s:10:"layer_left";s:4:"1100";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home1/slider02-home1.jpg', 1, 0, 1),
(141, 'slider01', 0, 11, 'a:18:{s:2:"id";s:3:"141";s:15:"slider_group_id";s:2:"11";s:12:"slider_title";s:8:"slider01";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"141";s:12:"slider_image";s:40:"catalog/demo/slider/home3/slider-003.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"120";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:12:"easeOutQuint";s:10:"time_start";s:3:"295";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:20:"white caption-medium";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"152";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"269";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1276";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home3/slider-003.jpg', 1, 1, 1),
(132, 'slider02', 0, 10, 'a:18:{s:2:"id";s:3:"132";s:15:"slider_group_id";s:2:"10";s:12:"slider_title";s:8:"slider02";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"132";s:12:"slider_image";s:44:"catalog/demo/slider/home1/slider02-home1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"112";s:10:"layer_left";s:3:"895";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:10:"easeInSine";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:32:"white caption-medium text-center";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"140";s:10:"layer_left";s:3:"800";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:7:"fadeout";s:15:"layer_endeasing";s:11:"easeOutSine";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"260";s:10:"layer_left";s:3:"835";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:10:"easeInExpo";s:10:"time_start";s:4:"1200";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"315";s:10:"layer_left";s:3:"910";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home1/slider02-home1.jpg', 1, 1, 1),
(137, 'slider01', 0, 10, 'a:18:{s:2:"id";s:3:"127";s:15:"slider_group_id";s:1:"3";s:12:"slider_title";s:8:"slider01";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"127";s:12:"slider_image";s:44:"catalog/demo/slider/home1/slider01-home1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"120";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:12:"easeOutQuint";s:10:"time_start";s:3:"295";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:20:"white caption-medium";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"152";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"269";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1276";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home1/slider01-home1.jpg', 1, 2, 2),
(138, 'slider02', 0, 10, 'a:18:{s:2:"id";s:3:"132";s:15:"slider_group_id";s:2:"10";s:12:"slider_title";s:8:"slider02";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"132";s:12:"slider_image";s:44:"catalog/demo/slider/home1/slider02-home1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"112";s:10:"layer_left";s:3:"895";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:10:"easeInSine";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:32:"white caption-medium text-center";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"140";s:10:"layer_left";s:3:"800";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:7:"fadeout";s:15:"layer_endeasing";s:11:"easeOutSine";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"260";s:10:"layer_left";s:3:"835";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:10:"easeInExpo";s:10:"time_start";s:4:"1200";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"315";s:10:"layer_left";s:3:"910";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home1/slider02-home1.jpg', 1, 1, 2),
(154, 'slider01', 0, 12, 'a:18:{s:2:"id";s:3:"141";s:15:"slider_group_id";s:2:"11";s:12:"slider_title";s:8:"slider01";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"141";s:12:"slider_image";s:40:"catalog/demo/slider/home3/slider-003.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"120";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:12:"easeOutQuint";s:10:"time_start";s:3:"295";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:20:"white caption-medium";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"152";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"269";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1276";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home3/slider-003.jpg', 1, 2, 2),
(151, 'slider01', 0, 12, 'a:18:{s:2:"id";s:3:"151";s:15:"slider_group_id";s:2:"12";s:12:"slider_title";s:8:"slider01";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"151";s:12:"slider_image";s:38:"catalog/demo/slider/home4/slider01.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"120";s:10:"layer_left";s:4:"1075";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:12:"easeOutQuint";s:10:"time_start";s:3:"295";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:20:"white caption-medium";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"152";s:10:"layer_left";s:4:"1075";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"269";s:10:"layer_left";s:4:"1075";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1276";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:4:"1075";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home4/slider01.jpg', 1, 1, 1),
(144, 'slider02', 0, 11, 'a:18:{s:2:"id";s:3:"132";s:15:"slider_group_id";s:2:"10";s:12:"slider_title";s:8:"slider02";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"132";s:12:"slider_image";s:44:"catalog/demo/slider/home1/slider02-home1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"112";s:10:"layer_left";s:3:"895";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:10:"easeInSine";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:32:"white caption-medium text-center";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"140";s:10:"layer_left";s:3:"800";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:7:"fadeout";s:15:"layer_endeasing";s:11:"easeOutSine";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"260";s:10:"layer_left";s:3:"835";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:10:"easeInExpo";s:10:"time_start";s:4:"1200";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"315";s:10:"layer_left";s:3:"910";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home1/slider02-home1.jpg', 1, 2, 2),
(143, 'slider01', 0, 11, 'a:18:{s:2:"id";s:3:"141";s:15:"slider_group_id";s:2:"11";s:12:"slider_title";s:8:"slider01";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"141";s:12:"slider_image";s:40:"catalog/demo/slider/home3/slider-003.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"120";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:12:"easeOutQuint";s:10:"time_start";s:3:"295";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:20:"white caption-medium";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"152";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"269";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1276";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home3/slider-003.jpg', 1, 1, 2);
INSERT INTO `oc_pavosliderlayers` (`id`, `title`, `parent_id`, `group_id`, `params`, `layersparams`, `image`, `status`, `position`, `language_id`) VALUES
(142, 'slider02', 0, 11, 'a:18:{s:2:"id";s:3:"132";s:15:"slider_group_id";s:2:"10";s:12:"slider_title";s:8:"slider02";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"132";s:12:"slider_image";s:44:"catalog/demo/slider/home1/slider02-home1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"112";s:10:"layer_left";s:3:"895";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:10:"easeInSine";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:32:"white caption-medium text-center";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"140";s:10:"layer_left";s:3:"800";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:7:"fadeout";s:15:"layer_endeasing";s:11:"easeOutSine";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"260";s:10:"layer_left";s:3:"835";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:10:"easeInExpo";s:10:"time_start";s:4:"1200";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"315";s:10:"layer_left";s:3:"910";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home1/slider02-home1.jpg', 1, 2, 1),
(149, 'slider01', 0, 12, 'a:18:{s:2:"id";s:3:"141";s:15:"slider_group_id";s:2:"11";s:12:"slider_title";s:8:"slider01";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"141";s:12:"slider_image";s:40:"catalog/demo/slider/home3/slider-003.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"120";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:12:"easeOutQuint";s:10:"time_start";s:3:"295";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:20:"white caption-medium";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"152";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"269";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1276";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"350";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home3/slider-003.jpg', 1, 1, 1),
(153, 'slider01', 0, 12, 'a:18:{s:2:"id";s:3:"151";s:15:"slider_group_id";s:2:"12";s:12:"slider_title";s:8:"slider01";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"151";s:12:"slider_image";s:38:"catalog/demo/slider/home4/slider01.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:20:"Foliage store online";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"120";s:10:"layer_left";s:4:"1075";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:12:"easeOutQuint";s:10:"time_start";s:3:"295";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:20:"white caption-medium";s:13:"layer_caption";s:55:"Get 10% off your order.&lt;br&gt;Pretty sweet, we know.";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:12:"easeOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"152";s:10:"layer_left";s:4:"1075";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"800";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"white caption-regular";s:13:"layer_caption";s:30:"Advertisers Embrace Rich Media";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"269";s:10:"layer_left";s:4:"1075";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1276";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:5:"white";s:13:"layer_caption";s:103:"&lt;a href=&quot;#&quot;&gt;View more &lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;&lt;/a&gt;";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:4:"1075";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/home4/slider01.jpg', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavwidget`
--

CREATE TABLE `oc_pavwidget` (
  `pavwidget_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  `module_id` int(11) NOT NULL,
  `key` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavwidget`
--

INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(15592, 'content', 'product_tabs.YDOnaW', 'YToyODp7czo0OiJyYW5kIjtzOjE4OiIwLjc1MTk5NDEyOTk2ODg1NzUiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X3RhYnMuWURPbmFXIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF90YWJzLllET25hVyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF90YWJzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNzoiRkVBVFVSRUQgUFJPRFVDVFMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTc6IkZFQVRVUkVEIFBST0RVQ1RTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNzoiRkVBVFVSRUQgUFJPRFVDVFMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6NjoiY29sdW1uIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjExOiJpY29uX25ld2VzdCI7czowOiIiO3M6MTM6ImVuYWJsZV9uZXdlc3QiO3M6MToiMCI7czoxMzoiaWNvbl9mZWF0dXJlZCI7czowOiIiO3M6MTA6InByb2R1Y3RfaWQiO3M6MjM6Ijc2LDkxLDY2LDg5LDgzLDYzLDU4LDcyIjtzOjE1OiJlbmFibGVfZmVhdHVyZWQiO3M6MToiMCI7czoxNToiaWNvbl9iZXN0c2VsbGVyIjtzOjA6IiI7czoxNzoiZW5hYmxlX2Jlc3RzZWxsZXIiO3M6MToiMSI7czoxMjoiaWNvbl9zcGVjaWFsIjtzOjA6IiI7czoxNDoiZW5hYmxlX3NwZWNpYWwiO3M6MToiMSI7czoxNDoiaWNvbl9tb3N0dmlld3MiO3M6MDoiIjtzOjE2OiJlbmFibGVfbW9zdHZpZXdzIjtzOjE6IjEiO3M6OToidGFic3N0eWxlIjtzOjY6InRhYi12MSI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMjcwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMjkwIjtzOjk6ImF1dG9fcGxheSI7czo0OiIzMDAwIjt9', 39, 0),
(15591, 'content', 'product_list_home2_v2.XxkK9q', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjcyODA5MTYyMDA0NTAxMzIiO3M6NjoibW9kdWxlIjtzOjI4OiJwcm9kdWN0X2xpc3RfaG9tZTJfdjIuWHhrSzlxIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyODoicHJvZHVjdF9saXN0X2hvbWUyX3YyLlh4a0s5cSI7czo1OiJ3dHlwZSI7czoyMToicHJvZHVjdF9saXN0X2hvbWUyX3YyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTGF0ZXN0IGl0ZW1zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJMQVRFU1QgSVRFTVMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJMQVRFU1QgSVRFTVMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM2MCI7czo5OiJsaXN0X3R5cGUiO3M6NjoibGF0ZXN0IjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 39, 0),
(15590, 'content', 'product_list_home2.lSn1hK', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjA4NzczODc5MjE4MDIyMjg1IjtzOjY6Im1vZHVsZSI7czoyNToicHJvZHVjdF9saXN0X2hvbWUyLmxTbjFoSyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6InByb2R1Y3RfbGlzdF9ob21lMi5sU24xaEsiO3M6NToid3R5cGUiO3M6MTg6InByb2R1Y3RfbGlzdF9ob21lMiI7czoxMToid2lkZ2V0X25hbWUiO3M6MTM6IlBvcHVsYXIgaXRlbXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IlBPUFVMQVIgSVRFTVMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEzOiJQT1BVTEFSIElURU1TIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjc6ImNhcHRpb24iO3M6MTE6IlNUQUZGIFBJQ0tTIjtzOjU6ImxpbWl0IjtzOjI6IjEyIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjIiO3M6NToid2lkdGgiO3M6MzoiMjcwIjtzOjY6ImhlaWdodCI7czozOiIzNjAiO3M6OToibGlzdF90eXBlIjtzOjc6InBvcHVsYXIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 39, 0),
(15589, 'content', 'product_list_home2.7HLJwP', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjE3ODI5OTI2NDgxODQ3NzU4IjtzOjY6Im1vZHVsZSI7czoyNToicHJvZHVjdF9saXN0X2hvbWUyLjdITEp3UCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6InByb2R1Y3RfbGlzdF9ob21lMi43SExKd1AiO3M6NToid3R5cGUiO3M6MTg6InByb2R1Y3RfbGlzdF9ob21lMiI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3Qgc2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQkVTVCBTRUxMRVJTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQkVTVCBTRUxMRVJTIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjc6ImNhcHRpb24iO3M6MTM6Ik1PU1RMWSBCT1VHSFQiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMiI7czo1OiJ3aWR0aCI7czozOiIyNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM2MCI7czo5OiJsaXN0X3R5cGUiO3M6MTA6ImJlc3RzZWxsZXIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 39, 0),
(15588, 'content', 'product_list.yc1Zfn', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU1Mzg5MjkxMzEzMTY5NTYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QueWMxWmZuIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LnljMVpmbiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiRmVhdHVyZSBwcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiRmVhdHVyZSBwcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IkZlYXR1cmUgcHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjYwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTMzIjtzOjk6Imxpc3RfdHlwZSI7czo3OiJwb3B1bGFyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 39, 0),
(15587, 'content', 'product_deal.NiAxww', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjg1OTQxMjg5NTM3MDk2NTMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuTmlBeHd3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLk5pQXh3dyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo5OiJPdXIgRGVhbHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6OToiT3VyIERlYWxzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo5OiJPdXIgRGVhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTAtMDItMDkiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMTktMTAtMjQiO3M6NToibGltaXQiO3M6MToiOCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjk6ImltZ193aWR0aCI7czozOiI2MDAiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiNTMzIjtzOjEyOiJjYXRlZ29yeV9pZHMiO2E6MTk6e2k6MDtzOjI6IjM1IjtpOjE7czoyOiIzNiI7aToyO3M6MjoiMzgiO2k6MztzOjI6IjQ1IjtpOjQ7czoyOiI0NiI7aTo1O3M6MjoiMjAiO2k6NjtzOjI6IjI2IjtpOjc7czoyOiIyOCI7aTo4O3M6MjoiMjkiO2k6OTtzOjI6IjMwIjtpOjEwO3M6MjoiMzEiO2k6MTE7czoyOiIzMiI7aToxMjtzOjI6IjE4IjtpOjEzO3M6MjoiMjciO2k6MTQ7czoyOiIyNSI7aToxNTtzOjI6IjU3IjtpOjE2O3M6MjoiMTciO2k6MTc7czoyOiIyNCI7aToxODtzOjI6IjMzIjt9fQ==', 39, 0),
(15586, 'content', 'interactive_banner.W0wmB0', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY1MDQzNjY0MjM2NzMyMzgiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuVzB3bUIwIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlcwd21CMCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxOToiTmF0dXJhbCBXb29sIEZpYmVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxOToiTmF0dXJhbCBXb29sIEZpYmVycyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTk6Ik5hdHVyYWwgV29vbCBGaWJlcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTAuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjExNzoiJmx0O2RpdiZndDtXb29sIFlhcm5zICBjYXJyaWVzIGEgd2lkZSByYW5nZSBvZiB3b29sIHlhcm4uIFNhdmUgdXAgdG8gMjUlIHdpdGggb3VyIHlhcm4gYW5kIGJvb2sgZGlzY291bnQhJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjExNzoiJmx0O2RpdiZndDtXb29sIFlhcm5zICBjYXJyaWVzIGEgd2lkZSByYW5nZSBvZiB3b29sIHlhcm4uIFNhdmUgdXAgdG8gMjUlIHdpdGggb3VyIHlhcm4gYW5kIGJvb2sgZGlzY291bnQhJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjQiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 39, 0),
(15585, 'content', 'interactive_banner.teJUgQ', 'YToyNjp7czo0OiJyYW5kIjtzOjE3OiIwLjQ0OTczODc3MjM2NjU3OCI7czo2OiJtb2R1bGUiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci50ZUpVZ1EiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIudGVKVWdRIjtzOjU6Ind0eXBlIjtzOjE4OiJpbnRlcmFjdGl2ZV9iYW5uZXIiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6IlNob3AgbWVuIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6InN1Yl90aXRsZSI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxLWhvbWUyLmpwZyI7czo1OiJ3aWR0aCI7czozOiI1NzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjQwMCI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3NToiJmx0O2EgaHJlZj0mcXVvdDsjJnF1b3Q7IGNsYXNzPSZxdW90O2J0biBidG4tdjQmcXVvdDsmZ3Q7U0hPUCBNRU4mbHQ7L2EmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjc1OiImbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsgY2xhc3M9JnF1b3Q7YnRuIGJ0bi12NCZxdW90OyZndDtTSE9QIE1FTiZsdDsvYSZndDsiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjA6IiI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MyI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 39, 0),
(15584, 'content', 'interactive_banner.qKkdut', 'YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjA2NjM4MDc0NDM5NjM1MTIyIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLnFLa2R1dCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5xS2tkdXQiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6NDA6IkNsYXNzaWMgeWFybnMgZm9yIGtuaXR0aW5nICZhbXA7IGNyb2NoZXQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NDA6IkNsYXNzaWMgeWFybnMgZm9yIGtuaXR0aW5nICZhbXA7IGNyb2NoZXQiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjQwOiJDbGFzc2ljIHlhcm5zIGZvciBrbml0dGluZyAmYW1wOyBjcm9jaGV0IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMSI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8yIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjExLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjMyMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxMTc6IiZsdDtkaXYmZ3Q7V29vbCBZYXJucyAgY2FycmllcyBhIHdpZGUgcmFuZ2Ugb2Ygd29vbCB5YXJuLiBTYXZlIHVwIHRvIDI1JSB3aXRoIG91ciB5YXJuIGFuZCBib29rIGRpc2NvdW50ISZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czoxMTc6IiZsdDtkaXYmZ3Q7V29vbCBZYXJucyAgY2FycmllcyBhIHdpZGUgcmFuZ2Ugb2Ygd29vbCB5YXJuLiBTYXZlIHVwIHRvIDI1JSB3aXRoIG91ciB5YXJuIGFuZCBib29rIGRpc2NvdW50ISZsdDsvZGl2Jmd0OyI7czoxMToidGl0bGVsaW5rXzEiO3M6MTE6Ik1vcmUgZGV0YWlsIjtzOjExOiJ0aXRsZWxpbmtfMiI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InY1IjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjEiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 39, 0),
(15583, 'content', 'interactive_banner.dcXvmm', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjkwMzU0OTMyMTAwMDQ2NjQiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuZGNYdm1tIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmRjWHZtbSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxODoiV29vbCBLbml0dGluZyBZYXJuIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE4OiJXb29sIEtuaXR0aW5nIFlhcm4iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE4OiJXb29sIEtuaXR0aW5nIFlhcm4iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyOS5qcGciO3M6NToid2lkdGgiO3M6MzoiMzcwIjtzOjY6ImhlaWdodCI7czozOiIzMjAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTE3OiImbHQ7ZGl2Jmd0O1dvb2wgWWFybnMgIGNhcnJpZXMgYSB3aWRlIHJhbmdlIG9mIHdvb2wgeWFybi4gU2F2ZSB1cCB0byAyNSUgd2l0aCBvdXIgeWFybiBhbmQgYm9vayBkaXNjb3VudCEmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTE3OiImbHQ7ZGl2Jmd0O1dvb2wgWWFybnMgIGNhcnJpZXMgYSB3aWRlIHJhbmdlIG9mIHdvb2wgeWFybi4gU2F2ZSB1cCB0byAyNSUgd2l0aCBvdXIgeWFybiBhbmQgYm9vayBkaXNjb3VudCEmbHQ7L2RpdiZndDsiO3M6MTE6InRpdGxlbGlua18xIjtzOjExOiJNb3JlIGRldGFpbCI7czoxMToidGl0bGVsaW5rXzIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2NCI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXYxIjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 39, 0),
(4663, 'content', 'product_list.AN82bq', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjg4NjYzMzUxMzE5NTE2NjgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuQU44MmJxIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LkFOODJicSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiVG9wIFJhdGluZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiVG9wIFJhdGluZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IlRvcCBSYXRpbmciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiNzEiO3M6OToibGlzdF90eXBlIjtzOjk6InRvcHJhdGluZyI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 36, 0),
(4664, 'content', 'product_list.CDZzjh', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjUwODM1NjM1NDkxMzc5MDQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuQ0RaempoIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LkNEWnpqaCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiNzEiO3M6OToibGlzdF90eXBlIjtzOjY6ImxhdGVzdCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjc6InByb2R1Y3QiO2E6MTp7aTowO3M6MjoiNDIiO319', 36, 0),
(4665, 'content', 'product_list.ET5ZRU', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjI2NTE1MDg5NjI5MjI2MjYzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LkVUNVpSVSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5FVDVaUlUiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3QgU2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTI6InBhbmVsLWNlbnRlciI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiOCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNjAwIjtzOjY6ImhlaWdodCI7czozOiI1MzMiO3M6OToibGlzdF90eXBlIjtzOjEwOiJiZXN0c2VsbGVyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 36, 0),
(4699, 'content', 'product_list.SAHlNn', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc2ODIxODEwNzI4ODcwMzMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuU0FIbE5uIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlNBSGxObiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMjoicGFuZWwtY2VudGVyIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiI2MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjUzMyI7czo5OiJsaXN0X3R5cGUiO3M6ODoiZmVhdHVyZWQiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7czo3OiJwcm9kdWN0IjthOjU6e2k6MDtzOjI6IjQyIjtpOjE7czoyOiIzMCI7aToyO3M6MjoiNDciO2k6MztzOjI6IjI4IjtpOjQ7czoyOiI0MSI7fX0=', 33, 0),
(4697, 'content', 'image.zW2brk', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjkzODMwNjcwMjkwMjI4OTUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS56VzJicmsiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS56VzJicmsiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(4696, 'content', 'image.WIa9ho', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjE0NDQxNjE1ODIzODEzNjgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5XSWE5aG8iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5XSWE5aG8iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjUuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(4695, 'content', 'image.t6fkta', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjI5MTMxMjQ0MzU5MDAzOTk0IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UudDZma3RhIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UudDZma3RhIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjQiO3M6OToiaW1hZ2VmaWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXI2LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 33, 0),
(4694, 'content', 'image.rQm21Q', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjc1MDg4NzgyMzMyNzEwMDIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5yUW0yMVEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5yUW0yMVEiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjcuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(4652, 'content', 'product_list.35Qlno', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjg3MDY0NzY5NzE4NzY1MDIiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuMzVRbG5vIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LjM1UWxubyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiRmVhdHVyZSBQcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiRmVhdHVyZSBQcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IkZlYXR1cmUgUHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjYwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTMzIjtzOjk6Imxpc3RfdHlwZSI7czo4OiJmZWF0dXJlZCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjc6InByb2R1Y3QiO2E6ODp7aTowO3M6MjoiMzYiO2k6MTtzOjI6IjI4IjtpOjI7czoyOiIyOSI7aTozO3M6MjoiNTAiO2k6NDtzOjI6IjM1IjtpOjU7czoyOiI1MSI7aTo2O3M6MjoiNDQiO2k6NztzOjI6IjQ1Ijt9fQ==', 37, 0),
(4662, 'content', 'interactive_banner.OOYEDE', 'YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjE3NTM3NTY0NDQ1OTUzMTU4IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLk9PWUVERSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5PT1lFREUiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MTc6Ikdvb2QgRGVzaWduIEF3YXJkIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE3OiJHb29kIERlc2lnbiBBd2FyZCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMSI7czo0OiJodWh1IjtzOjExOiJzdWJfdGl0bGVfMiI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxMC5qcGciO3M6NToid2lkdGgiO3M6MzoiMzcwIjtzOjY6ImhlaWdodCI7czozOiIzMjAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTc0OiImbHQ7ZGl2Jmd0O0NvbnN0cnVjdGVkIGZyb20gd29vZGVuIHBvbGVzIG9mIHRoZSBzYW1lIGRpYW1ldGVyLCB0aGUgY29hdCBzdGFuZCBoYXMgYSBuZWF0IGxvb2sgaW4gYWRkaXRpb24gdG8gYW4gZXhwYW5zaXZlIGltcHJlc3Npb24gcmVtaW5pc2NlbnQgb2YgZm9yZXN0IHRyZWVzLiAmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTc0OiImbHQ7ZGl2Jmd0O0NvbnN0cnVjdGVkIGZyb20gd29vZGVuIHBvbGVzIG9mIHRoZSBzYW1lIGRpYW1ldGVyLCB0aGUgY29hdCBzdGFuZCBoYXMgYSBuZWF0IGxvb2sgaW4gYWRkaXRpb24gdG8gYW4gZXhwYW5zaXZlIGltcHJlc3Npb24gcmVtaW5pc2NlbnQgb2YgZm9yZXN0IHRyZWVzLiAmbHQ7L2RpdiZndDsiO3M6MTE6InRpdGxlbGlua18xIjtzOjExOiJNb3JlIGRldGFpbCI7czoxMToidGl0bGVsaW5rXzIiO3M6MTE6Ik1vcmUgZGV0YWlsIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXYxIjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 36, 0),
(4666, 'content', 'product_list.yCyASo', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjUzNDQyMTYyMjIyNzAxNzYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QueUN5QVNvIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LnlDeUFTbyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJTcGVjaWFsIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlNwZWNpYWwiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlNwZWNpYWwiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyMToic2lkZWJhciBib3JkZXIteWVsbG93IjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiNzEiO3M6OToibGlzdF90eXBlIjtzOjc6InNwZWNpYWwiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 36, 0),
(4563, 'content', 'product_list_home3.Bmxd2m', 'YToyMTp7czo0OiJyYW5kIjtzOjE4OiIwLjYxMTEzODExNjk2OTczMDQiO3M6NjoibW9kdWxlIjtzOjI1OiJwcm9kdWN0X2xpc3RfaG9tZTMuQm14ZDJtIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToicHJvZHVjdF9saXN0X2hvbWUzLkJteGQybSI7czo1OiJ3dHlwZSI7czoxODoicHJvZHVjdF9saXN0X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6IjUwMCI7czo2OiJoZWlnaHQiO3M6MzoiNjAwIjtzOjk6Imxpc3RfdHlwZSI7czo2OiJsYXRlc3QiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7czo4OiJwb3NfdHlwZSI7czoxOiIxIjtzOjEwOiJiYW5uZXJfaW1nIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxMy5qcGciO3M6NzoiYl93aWR0aCI7czozOiIzMjAiO3M6ODoiYl9oZWlnaHQiO3M6MzoiMzI1Ijt9', 42, 0),
(4654, 'content', 'product_list.kmp6to', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc5MTczNDk5NjYxMjExNTIiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3Qua21wNnRvIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LmttcDZ0byI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiNzEiO3M6OToibGlzdF90eXBlIjtzOjY6ImxhdGVzdCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 37, 0),
(4655, 'content', 'product_list.lx6P1g', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjI0NDc2OTA4MzM1OTE4OTU3IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Lmx4NlAxZyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5seDZQMWciO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3Qgc2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQmVzdCBzZWxsZXJzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQmVzdCBzZWxsZXJzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Nzoic2lkZWJhciI7czo1OiJsaW1pdCI7czoxOiI2IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MjoiODAiO3M6NjoiaGVpZ2h0IjtzOjI6IjcxIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 37, 0),
(4657, 'content', 'icon_box.e0DIeh', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk1NDk3MzQ1MDAxOTUzMTkiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5lMERJZWgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5lMERJZWgiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjIyOiJTaGlwcGluZyAmYW1wOyBSZXR1cm5zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIyOiJTaGlwcGluZyAmYW1wOyBSZXR1cm5zIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMjoiU2hpcHBpbmcgJmFtcDsgUmV0dXJucyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12Mi5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4ODoiJmx0O2RpdiZndDtGcmVlIHJldHVybiBzaGlwcGluZyB3aXRoIHByZXBhaWQgbWFpbGVyIGZvciBhbGwgZG9tZXN0aWMgb3JkZXJzLiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo4ODoiJmx0O2RpdiZndDtGcmVlIHJldHVybiBzaGlwcGluZyB3aXRoIHByZXBhaWQgbWFpbGVyIGZvciBhbGwgZG9tZXN0aWMgb3JkZXJzLiZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 36, 0),
(4658, 'content', 'icon_box.XUdjal', 'YToxNzp7czo0OiJyYW5kIjtzOjIwOiIwLjAxMTg2MzE1MDM3NDA4NjU4NCI7czo2OiJtb2R1bGUiO3M6MTU6Imljb25fYm94LlhVZGphbCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTU6Imljb25fYm94LlhVZGphbCI7czo1OiJ3dHlwZSI7czo4OiJpY29uX2JveCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTM6IkN1c3RvbWVyIENhcmUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTM6IkN1c3RvbWVyIENhcmUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEzOiJDdXN0b21lciBDYXJlIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vbW9kdWxlL21pY29uLXYzLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjkwOiImbHQ7ZGl2Jmd0O0EgY2xlYXJhbmNlIHByaWNlIGlzIGNvbnNpZGVyZWQgNDAlIG9yIG1vcmUgb2ZmIHRoZSBvcmlnaW5hbCBwcmljZS4mbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6OTA6IiZsdDtkaXYmZ3Q7QSBjbGVhcmFuY2UgcHJpY2UgaXMgY29uc2lkZXJlZCA0MCUgb3IgbW9yZSBvZmYgdGhlIG9yaWdpbmFsIHByaWNlLiZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 36, 0),
(4659, 'content', 'icon_box.XxROnG', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU3MzI0MjY4MjE5MDc5MzMiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5YeFJPbkciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5YeFJPbkciO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjk6Ikd1YXJhbnRlZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo5OiJHdWFyYW50ZWUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjk6Ikd1YXJhbnRlZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4NjoiJmx0O2RpdiZndDtBbGwgaXRlbXMgZ3VhcmFudGVlZCBpbiBzdG9jayBpbiBzaXplcyBzaG93biwgb3IgeW91IHJlY2VpdmUgYSAmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6ODY6IiZsdDtkaXYmZ3Q7QWxsIGl0ZW1zIGd1YXJhbnRlZWQgaW4gc3RvY2sgaW4gc2l6ZXMgc2hvd24sIG9yIHlvdSByZWNlaXZlIGEgJmx0Oy9kaXYmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjIiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 36, 0),
(4656, 'content', 'product_list.uXnDpb', 'YToxNzp7czo0OiJyYW5kIjtzOjIwOiIwLjAyNTkyNDQzMjczMDA4MTYwNCI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfbGlzdC51WG5EcGIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X2xpc3QudVhuRHBiIjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X2xpc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6IlNhbGUgb2ZmIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjg6IlNhbGUgb2ZmIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo4OiJTYWxlIG9mZiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjIxOiJzaWRlYmFyIGJvcmRlci15ZWxsb3ciO3M6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NDoiY29scyI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjI6IjgwIjtzOjY6ImhlaWdodCI7czoyOiI3MSI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 37, 0),
(4693, 'content', 'image.pUpdi9', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjY1MDk0OTUyODYxMTgzNTMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5wVXBkaTkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5wVXBkaTkiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjguanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(4692, 'content', 'image.8AgYjI', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjkwODU3MDU1NzE4NjAyNjgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS44QWdZakkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS44QWdZakkiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjQuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(4689, 'content', 'icon_box.b0jWlu', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU1OTY5MDA4MTY0NjkyODciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5iMGpXbHUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5iMGpXbHUiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE3OiJHZW9tZXRyaWMgSmV3ZWxyeSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNzoiR2VvbWV0cmljIEpld2VscnkiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE3OiJHZW9tZXRyaWMgSmV3ZWxyeSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4ODoiJmx0O2RpdiZndDt3ZSBoYXZlIG5vdGljZWQgYSBodWdlIHRyZW5kIGluIGdlb21ldHJpYyBqZXdlbHJ5IGZvciB0aGlzIGZhbGwuICZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo4ODoiJmx0O2RpdiZndDt3ZSBoYXZlIG5vdGljZWQgYSBodWdlIHRyZW5kIGluIGdlb21ldHJpYyBqZXdlbHJ5IGZvciB0aGlzIGZhbGwuICZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYxIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 33, 0),
(4691, 'content', 'icon_box.Rx6k0K', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjExNzAxMTYxNzY5ODk2Njg0IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guUng2azBLIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guUng2azBLIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiU3RyZWV0IHN0eWxlIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJTdHJlZXQgc3R5bGUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJTdHJlZXQgc3R5bGUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9tb2R1bGUvbWljb24tdjMucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6OTE6IiZsdDtkaXYmZ3Q7QSBjcmFmdCB0aGF0IHByaW1hcmlseSB1c2VzIGNpcmN1bGFyIGp1bXAgcmluZ3MgdG8gY29tZSB0b2dldGhlciBtYXkmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6OTE6IiZsdDtkaXYmZ3Q7QSBjcmFmdCB0aGF0IHByaW1hcmlseSB1c2VzIGNpcmN1bGFyIGp1bXAgcmluZ3MgdG8gY29tZSB0b2dldGhlciBtYXkmbHQ7L2RpdiZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 33, 0),
(4690, 'content', 'icon_box.pVLulh', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk0Nzc4NzA4MDQ2NDczODciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5wVkx1bGgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5wVkx1bGgiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJDb250ZXN0IHdpbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiQ29udGVzdCB3aW5uZXIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJDb250ZXN0IHdpbm5lciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12Mi5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4NjoiJmx0O2RpdiZndDtUcmlhbmdsZXMsIGNoZXZyb25zLCBkaWFtb25kcyAtIHlvdSBuYW1lIGl0LCBqZXdlbHJ5IGlzIGdldHRpbmcmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6ODY6IiZsdDtkaXYmZ3Q7VHJpYW5nbGVzLCBjaGV2cm9ucywgZGlhbW9uZHMgLSB5b3UgbmFtZSBpdCwgamV3ZWxyeSBpcyBnZXR0aW5nJmx0Oy9kaXYmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 33, 0),
(4661, 'content', 'interactive_banner.lRB2a4', 'YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjI0MzEyMjU5MDY5NTU4MTE4IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmxSQjJhNCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5sUkIyYTQiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MzQ6IlRoZSBTa2lsbCBvZiBUaGlzIFdvb2RlbiBTdHJ1Y3R1cmUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzQ6IlRoZSBTa2lsbCBvZiBUaGlzIFdvb2RlbiBTdHJ1Y3R1cmUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM0OiJUaGUgU2tpbGwgb2YgVGhpcyBXb29kZW4gU3RydWN0dXJlIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMSI7czo0OiJodWh1IjtzOjExOiJzdWJfdGl0bGVfMiI7czo0OiJodWh1IjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTEuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjE3NDoiJmx0O2RpdiZndDtDb25zdHJ1Y3RlZCBmcm9tIHdvb2RlbiBwb2xlcyBvZiB0aGUgc2FtZSBkaWFtZXRlciwgdGhlIGNvYXQgc3RhbmQgaGFzIGEgbmVhdCBsb29rIGluIGFkZGl0aW9uIHRvIGFuIGV4cGFuc2l2ZSBpbXByZXNzaW9uIHJlbWluaXNjZW50IG9mIGZvcmVzdCB0cmVlcy4gJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjE3NDoiJmx0O2RpdiZndDtDb25zdHJ1Y3RlZCBmcm9tIHdvb2RlbiBwb2xlcyBvZiB0aGUgc2FtZSBkaWFtZXRlciwgdGhlIGNvYXQgc3RhbmQgaGFzIGEgbmVhdCBsb29rIGluIGFkZGl0aW9uIHRvIGFuIGV4cGFuc2l2ZSBpbXByZXNzaW9uIHJlbWluaXNjZW50IG9mIGZvcmVzdCB0cmVlcy4gJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjExOiJNb3JlIGRldGFpbCI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 36, 0),
(4660, 'content', 'interactive_banner.7sywgK', 'YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjE0MTU0OTAwOTk0MzQwMTkyIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjdzeXdnSyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci43c3l3Z0siO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MTQ6IkludGVyaW9ycyBTaG93IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE0OiJJbnRlcmlvcnMgU2hvdyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTQ6IkludGVyaW9ycyBTaG93IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMSI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8yIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjkuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjE3NDoiJmx0O2RpdiZndDtDb25zdHJ1Y3RlZCBmcm9tIHdvb2RlbiBwb2xlcyBvZiB0aGUgc2FtZSBkaWFtZXRlciwgdGhlIGNvYXQgc3RhbmQgaGFzIGEgbmVhdCBsb29rIGluIGFkZGl0aW9uIHRvIGFuIGV4cGFuc2l2ZSBpbXByZXNzaW9uIHJlbWluaXNjZW50IG9mIGZvcmVzdCB0cmVlcy4gJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjE3NDoiJmx0O2RpdiZndDtDb25zdHJ1Y3RlZCBmcm9tIHdvb2RlbiBwb2xlcyBvZiB0aGUgc2FtZSBkaWFtZXRlciwgdGhlIGNvYXQgc3RhbmQgaGFzIGEgbmVhdCBsb29rIGluIGFkZGl0aW9uIHRvIGFuIGV4cGFuc2l2ZSBpbXByZXNzaW9uIHJlbWluaXNjZW50IG9mIGZvcmVzdCB0cmVlcy4gJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 36, 0),
(4651, 'content', 'interactive_banner.XojwT6', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjUzNDUwNjY2MzkzMzA0NjIiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuWG9qd1Q2IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlhvandUNiI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiQ2VyYW1pY3MgQ29sbGFiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiJDZXJhbWljcyBDb2xsYWIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJDZXJhbWljcyBDb2xsYWIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTUuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjEwNDoiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTA0OiImbHQ7ZGl2Jmd0O1dlIHNvdXJjZSB1bmlxdWUsIGxpbWl0ZWQgZWRpdGlvbiBhbmQgZGVzaWduZXIgbWFkZSBwcm9kdWN0IGZyb20gYXJvdW5kIHRoZSBnbG9iZSZsdDsvZGl2Jmd0OyI7czoxMToidGl0bGVsaW5rXzEiO3M6MTE6Ik1vcmUgZGV0YWlsIjtzOjExOiJ0aXRsZWxpbmtfMiI7czoxMToiTW9yZSBkZXRhaWwiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYyIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjEiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 37, 0),
(4650, 'content', 'interactive_banner.nuJOwQ', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjkzMzY4NTg4NDY1OTY1OTEiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIubnVKT3dRIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLm51Sk93USI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozNDoiVGhlIFNraWxsIG9mIFRoaXMgV29vZGVuIFN0cnVjdHVyZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozNDoiVGhlIFNraWxsIG9mIFRoaXMgV29vZGVuIFN0cnVjdHVyZSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzQ6IlRoZSBTa2lsbCBvZiBUaGlzIFdvb2RlbiBTdHJ1Y3R1cmUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTAuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjEwNToiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUuJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjEwNToiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUuJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjExOiJNb3JlIGRldGFpbCI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 37, 0),
(4647, 'content', 'image.JX16EK', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjQ5OTE4NzcwNTY0NTQ3MTU1IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuSlgxNkVLIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuSlgxNkVLIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjQiO3M6OToiaW1hZ2VmaWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 37, 0),
(4645, 'content', 'image.eOjh0h', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjEyMzU1NzgxMDQ2NzcxMDY0IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuZU9qaDBoIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuZU9qaDBoIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjQiO3M6OToiaW1hZ2VmaWxlIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxNy5qcGciO3M6NDoic2l6ZSI7czo4OiIxMTcweDIwMCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 37, 0),
(4646, 'content', 'image.HrYNgL', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU4NzU2NTU3NDQyNjU0NjciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5IcllOZ0wiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5IcllOZ0wiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjEzLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 37, 0),
(4649, 'content', 'interactive_banner.inGmAN', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY0MzEyMjYzMjMwMjYyNDkiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuaW5HbUFOIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmluR21BTiI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNDoicGFzdGVsIEJsYW5rZXQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTQ6InBhc3RlbCBCbGFua2V0IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNDoicGFzdGVsIEJsYW5rZXQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTYuanBnIjtzOjU6IndpZHRoIjtzOjQ6IjExNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoyOToiJmx0O3AmZ3Q7Jmx0O2JyJmd0OyZsdDsvcCZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6Mjk6IiZsdDtwJmd0OyZsdDticiZndDsmbHQ7L3AmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czo4OiJTSE9QIE5PVyI7czoxMToidGl0bGVsaW5rXzIiO3M6ODoiU0hPUCBOT1ciO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYzIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 37, 0),
(4648, 'content', 'interactive_banner.6JDvNd', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjIzMjA3NzQ2OTI1ODA1NzYiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuNkpEdk5kIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjZKRHZOZCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMToiR2VvbWV0cmljIERlY29yYXRpb25zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIxOiJHZW9tZXRyaWMgRGVjb3JhdGlvbnMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIxOiJHZW9tZXRyaWMgRGVjb3JhdGlvbnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTQuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjEwNToiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUuJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjEwNToiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUuJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjExOiJNb3JlIGRldGFpbCI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjIiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 37, 0),
(4641, 'content', 'icon_box.7xmZqn', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjkwNjEzNTY5MTM3MjMxMDIiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC43eG1acW4iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC43eG1acW4iO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEwOiJHdWFyYW50ZWUgIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEwOiJHdWFyYW50ZWUgIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMDoiR3VhcmFudGVlICI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4NjoiJmx0O2RpdiZndDtBbGwgaXRlbXMgZ3VhcmFudGVlZCBpbiBzdG9jayBpbiBzaXplcyBzaG93biwgb3IgeW91IHJlY2VpdmUgYSAmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6ODY6IiZsdDtkaXYmZ3Q7QWxsIGl0ZW1zIGd1YXJhbnRlZWQgaW4gc3RvY2sgaW4gc2l6ZXMgc2hvd24sIG9yIHlvdSByZWNlaXZlIGEgJmx0Oy9kaXYmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 37, 0),
(4644, 'content', 'image.d4MbY6', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjMzNTg5NTYzNDQ2NDQ4NjgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5kNE1iWTYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5kNE1iWTYiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjEyLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 37, 0),
(4643, 'content', 'icon_box.sByv4o', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjUwMTc1NjM4ODYxODk3ODYiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5zQnl2NG8iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5zQnl2NG8iO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJDdXN0b21lciBDYXJlICI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiQ3VzdG9tZXIgQ2FyZSAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJDdXN0b21lciBDYXJlICI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12My5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo5MDoiJmx0O2RpdiZndDtBIGNsZWFyYW5jZSBwcmljZSBpcyBjb25zaWRlcmVkIDQwJSBvciBtb3JlIG9mZiB0aGUgb3JpZ2luYWwgcHJpY2UuJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjkwOiImbHQ7ZGl2Jmd0O0EgY2xlYXJhbmNlIHByaWNlIGlzIGNvbnNpZGVyZWQgNDAlIG9yIG1vcmUgb2ZmIHRoZSBvcmlnaW5hbCBwcmljZS4mbHQ7L2RpdiZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 37, 0),
(4559, 'content', 'product_list.8S9IXs', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjEzMzU5NzUyNzg1Njk0NjkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuOFM5SVhzIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LjhTOUlYcyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjYwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTMzIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 42, 0),
(4560, 'content', 'product_list.HEHZ9A', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjQ5OTAwMTg4MDUwODQxOTc2IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LkhFSFo5QSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5IRUhaOUEiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTY6IlBvcHVsYXIgcHJvZHVjdHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTY6IlBvcHVsYXIgcHJvZHVjdHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE2OiJQb3B1bGFyIHByb2R1Y3RzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Nzoic2lkZWJhciI7czo1OiJsaW1pdCI7czoyOiIxMiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjYiO3M6NDoiY29scyI7czoxOiI2IjtzOjU6IndpZHRoIjtzOjI6IjgwIjtzOjY6ImhlaWdodCI7czoyOiI5NiI7czo5OiJsaXN0X3R5cGUiO3M6NzoicG9wdWxhciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 42, 0),
(4561, 'content', 'product_list.IVhb5T', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjgwMDQzNDA3NzYxNTc0NDYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuSVZoYjVUIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LklWaGI1VCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo5OiJUb3BSYXRpbmciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6OToiVG9wUmF0aW5nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo5OiJUb3BSYXRpbmciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMyI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiOTYiO3M6OToibGlzdF90eXBlIjtzOjk6InRvcHJhdGluZyI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 42, 0),
(4562, 'content', 'product_list.m15Kkj', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIyMTIwNzE4MDQ3Mzg1MDY4IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Lm0xNUtraiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5tMTVLa2oiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTU6IlNwZWNpYWwgUHJvZHVjdCI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNToiU3BlY2lhbCBQcm9kdWN0IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNToiU3BlY2lhbCBQcm9kdWN0IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiI2MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjUzMyI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 42, 0),
(4551, 'content', 'image.AdBMgr', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjQ3MDQ5MTQwNTU3OTk3NDUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5BZEJNZ3IiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5BZEJNZ3IiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjE4OiJlZmZlY3QtdjQgc3BhY2UtNjAiO3M6OToiaW1hZ2VmaWxlIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxMi5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjI5OiImbHQ7cCZndDsmbHQ7YnImZ3Q7Jmx0Oy9wJmd0OyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czoyOToiJmx0O3AmZ3Q7Jmx0O2JyJmd0OyZsdDsvcCZndDsiO3M6ODoic2hvd19kZXMiO3M6MToiMSI7fQ==', 42, 0),
(4552, 'content', 'image.f1cWgm', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjk5MjY2MjcyNjE3NDM0MjciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5mMWNXZ20iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5mMWNXZ20iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMyLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(4553, 'content', 'image.IhUiUp', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjIwOTMzMDA0NTYwNTYxMjMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5JaFVpVXAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5JaFVpVXAiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(15582, 'content', 'interactive_banner.AuH7PI', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjgwMDUxMjUwNTA4OTk0NDIiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuQXVIN1BJIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLkF1SDdQSSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiU2hvcCB3b21lbiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNi1ob21lMi5qcGciO3M6NToid2lkdGgiO3M6MzoiNTcwIjtzOjY6ImhlaWdodCI7czozOiI0MDAiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6Nzc6IiZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyBjbGFzcz0mcXVvdDtidG4gYnRuLXY0JnF1b3Q7Jmd0O1NIT1AgV09NRU4mbHQ7L2EmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjc3OiImbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsgY2xhc3M9JnF1b3Q7YnRuIGJ0bi12NCZxdW90OyZndDtTSE9QIFdPTUVOJmx0Oy9hJmd0OyI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MyI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 39, 0),
(15581, 'content', 'image.Z74G0F', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjg5OTM1MzQzNDg4NjkwNDYiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5aNzRHMEYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5aNzRHMEYiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDE6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci1ob21lLTItMDIuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjEwIjt9', 39, 0),
(15580, 'content', 'image.UvAKFY', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjQ4NzQxODU1MDE3MjU0OTY1IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuVXZBS0ZZIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuVXZBS0ZZIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjQxOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItaG9tZS0yLTAxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 39, 0),
(15579, 'content', 'image.kO6doG', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU5MjgxNzUxMzY4NDg1MjIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5rTzZkb0ciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5rTzZkb0ciO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjY6InN0eWxlMSI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9tb2R1bGUvYmctdjEucG5nIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 39, 0),
(15578, 'content', 'image.gDq1kx', 'YToyMDp7czo0OiJyYW5kIjtzOjE2OiIwLjY1MzkxOTk5MTA5NDk3IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuZ0RxMWt4IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuZ0RxMWt4IjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM2OiJjYXRhbG9nL2RlbW8vYmFubmVycy9hZHYwMS1ob21lMi5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 39, 0),
(15577, 'content', 'image.erZjW8', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjExNzU5MDkxNTgyNjM4NDU5IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuZXJaalc4IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuZXJaalc4IjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjQxOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItaG9tZS0yLTAzLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 39, 0),
(4556, 'content', 'image.Rzntb0', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjYwOTcyOTc5MDEwNzU5NDkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5Sem50YjAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5Sem50YjAiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEwOiJlZmZlY3QtdjEwIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMzQuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 42, 0),
(4554, 'content', 'image.lLZE1u', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjQyNzY5ODY5Mzc4NjYwMjEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5sTFpFMXUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5sTFpFMXUiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjI4LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(4555, 'content', 'image.mGFxD7', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjA1MjYzODAxNjc2ODIwNDc5IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UubUdGeEQ3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UubUdGeEQ3IjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjQiO3M6OToiaW1hZ2VmaWxlIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyOS5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9', 42, 0),
(4564, 'content', 'product_list_home3.uiwhtC', 'YToyMTp7czo0OiJyYW5kIjtzOjE4OiIwLjgyOTY2MzkyNjQ1MDE4MDYiO3M6NjoibW9kdWxlIjtzOjI1OiJwcm9kdWN0X2xpc3RfaG9tZTMudWl3aHRDIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToicHJvZHVjdF9saXN0X2hvbWUzLnVpd2h0QyI7czo1OiJ3dHlwZSI7czoxODoicHJvZHVjdF9saXN0X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiQmVzdCBTZWxsZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IkJlc3QgU2VsbGVyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiQmVzdCBTZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6IjUwMCI7czo2OiJoZWlnaHQiO3M6MzoiNjAwIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjg6InBvc190eXBlIjtzOjE6IjAiO3M6MTA6ImJhbm5lcl9pbWciO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjE0LmpwZyI7czo3OiJiX3dpZHRoIjtzOjM6IjMyMCI7czo4OiJiX2hlaWdodCI7czozOiIzMjUiO30=', 42, 0),
(4558, 'content', 'product_deal.sqQXa1', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjgzMjU0NTAyNDM3NjM4MzkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuc3FRWGExIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLnNxUVhhMSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiVG9kYXkgRGVhbHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IlRvZGF5IERlYWxzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiVG9kYXkgRGVhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoicHJvZHVjdGRlYWxzLXYxIHNwYWNlLTYwIjtzOjEwOiJzdGFydF9kYXRlIjtzOjEwOiIyMDA5LTAyLTAyIjtzOjg6ImVuZF9kYXRlIjtzOjEwOiIyMDE3LTA2LTA2IjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo5OiJpbWdfd2lkdGgiO3M6MzoiNTAwIjtzOjEwOiJpbWdfaGVpZ2h0IjtzOjM6IjYwMCI7czoxMjoiY2F0ZWdvcnlfaWRzIjthOjM3OntpOjA7czoyOiIzNSI7aToxO3M6MjoiMzYiO2k6MjtzOjI6IjM3IjtpOjM7czoyOiIzOCI7aTo0O3M6MjoiMzkiO2k6NTtzOjI6IjQwIjtpOjY7czoyOiI0MSI7aTo3O3M6MjoiNDIiO2k6ODtzOjI6IjQzIjtpOjk7czoyOiI0NCI7aToxMDtzOjI6IjQ1IjtpOjExO3M6MjoiNDYiO2k6MTI7czoyOiI0NyI7aToxMztzOjI6IjQ4IjtpOjE0O3M6MjoiNDkiO2k6MTU7czoyOiI1MCI7aToxNjtzOjI6IjUxIjtpOjE3O3M6MjoiNTIiO2k6MTg7czoyOiI1MyI7aToxOTtzOjI6IjU0IjtpOjIwO3M6MjoiNTUiO2k6MjE7czoyOiI1NiI7aToyMjtzOjI6IjU4IjtpOjIzO3M6MjoiMjAiO2k6MjQ7czoyOiIyNiI7aToyNTtzOjI6IjI4IjtpOjI2O3M6MjoiMjkiO2k6Mjc7czoyOiIzMCI7aToyODtzOjI6IjMxIjtpOjI5O3M6MjoiMzIiO2k6MzA7czoyOiIxOCI7aTozMTtzOjI6IjI3IjtpOjMyO3M6MjoiMjUiO2k6MzM7czoyOiI1NyI7aTozNDtzOjI6IjE3IjtpOjM1O3M6MjoiMjQiO2k6MzY7czoyOiIzMyI7fX0=', 42, 0),
(4557, 'content', 'image.ZssEUM', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjc4MTI0OTg4NDA0OTkyNDMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5ac3NFVU0iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5ac3NFVU0iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMwLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(4543, 'content', 'icon_box.0TXe2c', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjkyMzUyMjMzODA5MDM5NzIiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC4wVFhlMmMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC4wVFhlMmMiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE2OiIyNC83IEhlbHAgQ2VudGVyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE2OiIyNC83IEhlbHAgQ2VudGVyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNjoiMjQvNyBIZWxwIENlbnRlciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12My5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3OToiJmx0O3AmZ3Q7Um91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgc21vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3OToiJmx0O3AmZ3Q7Um91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgc21vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYxIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 42, 0),
(4544, 'content', 'icon_box.Axkdek', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjE5Nzg5MDYyMzEzNDcyOTk0IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guQXhrZGVrIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guQXhrZGVrIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyNDoiS25pdHRpbmcgV29vbCAmYW1wOyBZYXJuIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjI0OiJLbml0dGluZyBXb29sICZhbXA7IFlhcm4iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjI0OiJLbml0dGluZyBXb29sICZhbXA7IFlhcm4iO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxODoic3BhY2UtbWFyZ2luLWwtNDAgIjtzOjg6Imljb25maWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vbW9kdWxlL21pY29uLXYxLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjkwOiImbHQ7ZGl2Jmd0O0NsYXNzaWMgeWFybnMgZm9yIGtuaXR0aW5nICZhbXA7IGNyb2NoZXQgaW4gYSBzZWxlY3Rpb24gb2YgbmF0dXJhbCAmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6OTA6IiZsdDtkaXYmZ3Q7Q2xhc3NpYyB5YXJucyBmb3Iga25pdHRpbmcgJmFtcDsgY3JvY2hldCBpbiBhIHNlbGVjdGlvbiBvZiBuYXR1cmFsICZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 42, 0),
(4545, 'content', 'icon_box.dWKtaH', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjYyNzYzMzQ5NDQ1NzYzODciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5kV0t0YUgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5kV0t0YUgiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJWLkkuUCBtZW1iZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IlYuSS5QIG1lbWJlciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IlYuSS5QIG1lbWJlciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12NC5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3MjoiJmx0O3AmZ3Q7U2ltcGx5IGFkZCB0aGUgaXRlbSB0byB5b3VyIHNob3BwaW5nIGJhZyBhbmQgcHJvY2VlZC4mbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjcyOiImbHQ7cCZndDtTaW1wbHkgYWRkIHRoZSBpdGVtIHRvIHlvdXIgc2hvcHBpbmcgYmFnIGFuZCBwcm9jZWVkLiZsdDsvcCZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 42, 0),
(4546, 'content', 'icon_box.E0GR2C', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU3NDgzMjE3OTI4ODQwMDEiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5FMEdSMkMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5FMEdSMkMiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJQZXJmZWN0IENob2ljZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiUGVyZmVjdCBDaG9pY2UiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJQZXJmZWN0IENob2ljZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjE4OiJzcGFjZS1tYXJnaW4tci00MCAiO3M6ODoiaWNvbmZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9tb2R1bGUvbWljb24tdjMucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6ODM6IiZsdDtkaXYmZ3Q7QmxhY2sgU2hlZXAgV29vbHMgYXJlIG9uZSBvZiB0aGUgVUsncyB0b3AgcmV0YWlsZXJzIG9mIHlhcm4uJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjgzOiImbHQ7ZGl2Jmd0O0JsYWNrIFNoZWVwIFdvb2xzIGFyZSBvbmUgb2YgdGhlIFVLJ3MgdG9wIHJldGFpbGVycyBvZiB5YXJuLiZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 42, 0),
(4547, 'content', 'icon_box.mWVY76', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjQ0NjMzNzc5MDE1NzUxODMiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5tV1ZZNzYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5tV1ZZNzYiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiIxMDAlIFdvb2wgWWFybiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiMTAwJSBXb29sIFlhcm4iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiIxMDAlIFdvb2wgWWFybiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12Mi5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4MjoiJmx0O2RpdiZndDtXb29sIGlzIGFuIHVucGFyYWxsZWxlZCBjaG9pY2UgZm9yIGtuaXR0ZXJzIGFuZCBjcm9jaGV0ZXJzLiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo4MjoiJmx0O2RpdiZndDtXb29sIGlzIGFuIHVucGFyYWxsZWxlZCBjaG9pY2UgZm9yIGtuaXR0ZXJzIGFuZCBjcm9jaGV0ZXJzLiZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 42, 0),
(4548, 'content', 'icon_box.TptTDz', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIzMTY4ODM5MDc3ODQ3NzM2IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guVHB0VER6IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guVHB0VER6IjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxODoiV29ybGR3aWRlIERlbGl2ZXJ5IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE4OiJXb3JsZHdpZGUgRGVsaXZlcnkiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE4OiJXb3JsZHdpZGUgRGVsaXZlcnkiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9tb2R1bGUvbWljb24tdjIucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6OTA6IiZsdDtwJmd0O1dpdGggc2l0ZXMgaW4gNSBsYW5ndWFnZXMsIHdlIHNoaXAgdG8gb3ZlciAyMDAgY291bnRyaWVzICZhbXA7IHJlZ2lvbnMuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo5MDoiJmx0O3AmZ3Q7V2l0aCBzaXRlcyBpbiA1IGxhbmd1YWdlcywgd2Ugc2hpcCB0byBvdmVyIDIwMCBjb3VudHJpZXMgJmFtcDsgcmVnaW9ucy4mbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 42, 0),
(4549, 'content', 'image.0QqtqB', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjc2NzE1MTQ1NDU1MzAwMTciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS4wUXF0cUIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS4wUXF0cUIiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMzLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(4550, 'content', 'image.6rFvAA', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU2MzcwMDA5MzAzNTc5MjkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS42ckZ2QUEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS42ckZ2QUEiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjI1LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(4541, 'content', 'html.6R0d7U', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjQ4NTM5MTE3OTU4NTk0NTgiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLjZSMGQ3VSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuNlIwZDdVIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjIzOiJXaW50ZXIgSGF0IFNjYXJmIENvdXBsZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyMzoiV2ludGVyIEhhdCBTY2FyZiBDb3VwbGUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIzOiJXaW50ZXIgSGF0IFNjYXJmIENvdXBsZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxOTc6IiZsdDtkaXYmZ3Q7V2hhdCB0byBkbyB3aXRoIGFsbCB0aGUgc2NhcnZlcyB5b3UgaGF2ZSB0dW1ibGVkIHRvZ2V0aGVyIGluIGEgZHJhd2VyIG9yIGJhc2tldCxJZiB5b3UgYXJlIG9uZSBvZiB0aG9zZSB3aG8gY2FuIG5vdCAgYmUgYXNrZWQsIHRvIG5lYXRseSBmb2xkIGV2ZXJ5IGl0ZW0gYW5kIHNlY3VyZSB0aGVtIGZyb20gJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjE5NzoiJmx0O2RpdiZndDtXaGF0IHRvIGRvIHdpdGggYWxsIHRoZSBzY2FydmVzIHlvdSBoYXZlIHR1bWJsZWQgdG9nZXRoZXIgaW4gYSBkcmF3ZXIgb3IgYmFza2V0LElmIHlvdSBhcmUgb25lIG9mIHRob3NlIHdobyBjYW4gbm90ICBiZSBhc2tlZCwgdG8gbmVhdGx5IGZvbGQgZXZlcnkgaXRlbSBhbmQgc2VjdXJlIHRoZW0gZnJvbSAmbHQ7L2RpdiZndDsiO30=', 42, 0),
(4542, 'content', 'icon_box.0ApLAK', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk1MzA5MTczNDY4MTQyODYiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC4wQXBMQUsiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC4wQXBMQUsiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJTYWZlIFBheW1lbnQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IlNhZmUgUGF5bWVudCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IlNhZmUgUGF5bWVudCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjU6ImZpcnN0IjtzOjg6Imljb25maWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vbW9kdWxlL21pY29uLXYxLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjc5OiImbHQ7cCZndDtQYXkgd2l0aCB0aGUgd29ybGRzIG1vc3QgcG9wdWxhciBhbmQgc2VjdXJlIHBheW1lbnQgbWV0aG9kcy4mbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjc5OiImbHQ7cCZndDtQYXkgd2l0aCB0aGUgd29ybGRzIG1vc3QgcG9wdWxhciBhbmQgc2VjdXJlIHBheW1lbnQgbWV0aG9kcy4mbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 42, 0),
(4539, 'content', 'bloglatest.k5LmEn', 'YToxNDp7czo0OiJyYW5kIjtzOjE3OiIwLjczNzE2MTg5NzAwNDMyNSI7czo2OiJtb2R1bGUiO3M6MTc6ImJsb2dsYXRlc3QuazVMbUVuIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNzoiYmxvZ2xhdGVzdC5rNUxtRW4iO3M6NToid3R5cGUiO3M6MTA6ImJsb2dsYXRlc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjExOiJMYXRlc3QgYmxvZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMToiTGF0ZXN0IGJsb2ciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjExOiJMYXRlc3QgYmxvZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEzOiJub25lLXJlYWRtb3JlIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjEzNSI7czo0OiJjb2xzIjtzOjE6IjMiO30=', 42, 0),
(4540, 'content', 'featured_category.OSYS7K', 'YToxNDp7czo0OiJyYW5kIjtzOjE4OiIwLjg0ODgwNjgxMDgxMjE3NzEiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5PU1lTN0siO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5PU1lTN0siO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiY29sbGVjdGlvbiAwMSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMzoiY29sbGVjdGlvbiAwMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6ImNvbGxlY3Rpb24gMDEiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6Mzp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNC5qcGciO3M6MjoiaWQiO3M6MjoiMjUiO31pOjE7YToyOntzOjU6ImltYWdlIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIzLmpwZyI7czoyOiJpZCI7czoyOiIzNCI7fWk6MjthOjI6e3M6NToiaW1hZ2UiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjYuanBnIjtzOjI6ImlkIjtzOjI6IjM0Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjMyMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjE2MCI7czo0OiJjb2xzIjtzOjE6IjMiO30=', 42, 0),
(4653, 'content', 'product_list.HGlsc2', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjMxMzMzNTM5OTA4MDQ2MzE1IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LkhHbHNjMiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5IR2xzYzIiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTE6IkJlc3QgU2VsbGVyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjExOiJCZXN0IFNlbGxlciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTE6IkJlc3QgU2VsbGVyIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTI6InBhbmVsLWNlbnRlciI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNjAwIjtzOjY6ImhlaWdodCI7czozOiI1MzMiO3M6OToibGlzdF90eXBlIjtzOjEwOiJiZXN0c2VsbGVyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 37, 0),
(4642, 'content', 'icon_box.BehSiR', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjM1NDc0MzA2NzM3MTI4MzI1IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guQmVoU2lSIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guQmVoU2lSIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMzoiU2hpcHBpbmcgJmFtcDsgUmV0dXJucyAiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjM6IlNoaXBwaW5nICZhbXA7IFJldHVybnMgIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMzoiU2hpcHBpbmcgJmFtcDsgUmV0dXJucyAiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9tb2R1bGUvbWljb24tdjIucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6ODg6IiZsdDtkaXYmZ3Q7RnJlZSByZXR1cm4gc2hpcHBpbmcgd2l0aCBwcmVwYWlkIG1haWxlciBmb3IgYWxsIGRvbWVzdGljIG9yZGVycy4mbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6ODg6IiZsdDtkaXYmZ3Q7RnJlZSByZXR1cm4gc2hpcHBpbmcgd2l0aCBwcmVwYWlkIG1haWxlciBmb3IgYWxsIGRvbWVzdGljIG9yZGVycy4mbHQ7L2RpdiZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 37, 0),
(4698, 'content', 'product_list.drZcjK', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjI2MTg4NzgzMTg0NjI1MjEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuZHJaY2pLIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LmRyWmNqSyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiTGF0ZXN0IFByb2R1Y3RzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJMYXRlc3QgUHJvZHVjdHMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE2OiJGZWF0dXJlIFByb2R1Y3RzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTI6InBhbmVsLWNlbnRlciI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiOCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNjAwIjtzOjY6ImhlaWdodCI7czozOiI1MzMiO3M6OToibGlzdF90eXBlIjtzOjg6ImZlYXR1cmVkIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO3M6NzoicHJvZHVjdCI7YTo1OntpOjA7czoyOiIzMCI7aToxO3M6MjoiNDIiO2k6MjtzOjI6IjQ3IjtpOjM7czoyOiIyOCI7aTo0O3M6MjoiNDEiO319', 33, 0),
(20321, 'content', 'icon_box.4DmS80', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIxNDk0MzAwODI2NjYxNzI3IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guNERtUzgwIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guNERtUzgwIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNDoiNjAtRGF5IFJldHVybnMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTQ6IjYwLURheSBSZXR1cm5zIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNDoiNjAtRGF5IFJldHVybnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzY6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ljb24tc2VsbGVyLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjcxOiImbHQ7cCZndDtJZiB5b3UgZG9uJ3QgbG92ZSBpdCwgeW91IGhhdmUgNjAgZGF5cyB0byByZXR1cm4gaXQuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3MToiJmx0O3AmZ3Q7SWYgeW91IGRvbid0IGxvdmUgaXQsIHlvdSBoYXZlIDYwIGRheXMgdG8gcmV0dXJuIGl0LiZsdDsvcCZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjA6IiI7czoxMDoidGV4dF9hbGlnbiI7czoxODoiZmVhdHVyZS1ib3gtY2VudGVyIjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 32, 0),
(20317, 'content', 'featured_category.OtWzK4', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjk5NDQ0OTM5NjE4MjI5MTgiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5PdFd6SzQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5PdFd6SzQiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhcnR1cmVkMDItaG9tZTEuanBnIjtzOjI6ImlkIjtzOjI6IjY3Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjM3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjM3MCI7fQ==', 32, 0),
(20318, 'content', 'featured_category.rQzycb', 'YToxMzp7czo0OiJyYW5kIjtzOjE3OiIwLjk4MTY4OTc3OTcyMDc0OCI7czo2OiJtb2R1bGUiO3M6MjQ6ImZlYXR1cmVkX2NhdGVnb3J5LnJRenljYiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjQ6ImZlYXR1cmVkX2NhdGVnb3J5LnJRenljYiI7czo1OiJ3dHlwZSI7czoxNzoiZmVhdHVyZWRfY2F0ZWdvcnkiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxOToiY2F0ZWdvcmllc19mZWF0dXJlZCI7YToxOntpOjA7YToyOntzOjU6ImltYWdlIjtzOjQyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9mZWFydHVyZWQwMS1ob21lMS5qcGciO3M6MjoiaWQiO3M6MjoiODUiO319czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMzcwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMzcwIjt9', 32, 0),
(20319, 'content', 'featured_category.wvnqlJ', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjI2NDg0NDEwMzgxOTU1MDYiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS53dm5xbEoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS53dm5xbEoiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhcnR1cmVkMDMtaG9tZTEuanBnIjtzOjI6ImlkIjtzOjI6IjY0Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjM3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjM3MCI7fQ==', 32, 0),
(20320, 'content', 'html.cLuvI0', 'YToxMjp7czo0OiJyYW5kIjtzOjIwOiIwLjAwMzk4NTIzOTc1NzIxMzA5OSI7czo2OiJtb2R1bGUiO3M6MTE6Imh0bWwuY0x1dkkwIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMToiaHRtbC5jTHV2STAiO3M6NToid3R5cGUiO3M6NDoiaHRtbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjQwOToiJmx0O2RpdiBjbGFzcz0mcXVvdDtiZy1yZWQgY29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyJnF1b3Q7Jmd0OwkJJmx0O3AmZ3Q7RlJFRSBXT1JMRFdJREUgU0hJUFBJTkcmbHQ7L3AmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtiZy1nb2xkIGNvbC1sZy00IGNvbC1tZC00IGNvbC1zbS00IGNvbC14cy0xMiZxdW90OyZndDsJCSZsdDtwJmd0O0JVWSBPTkxJTkUgLSBQSUNLIFVQIEFUIFNUT1JFJmx0Oy9wJmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7YmctYmx1ZSBjb2wtbGctNCBjb2wtbWQtNCBjb2wtc20tNCBjb2wteHMtMTImcXVvdDsmZ3Q7CQkmbHQ7cCZndDtPTkxJTkUgQk9PS0lORyBTRVJWSUNFJmx0Oy9wJmd0Ow0KCSZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo0MDk6IiZsdDtkaXYgY2xhc3M9JnF1b3Q7YmctcmVkIGNvbC1sZy00IGNvbC1tZC00IGNvbC1zbS00IGNvbC14cy0xMiZxdW90OyZndDsJCSZsdDtwJmd0O0ZSRUUgV09STERXSURFIFNISVBQSU5HJmx0Oy9wJmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7YmctZ29sZCBjb2wtbGctNCBjb2wtbWQtNCBjb2wtc20tNCBjb2wteHMtMTImcXVvdDsmZ3Q7CQkmbHQ7cCZndDtCVVkgT05MSU5FIC0gUElDSyBVUCBBVCBTVE9SRSZsdDsvcCZndDsNCgkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2JnLWJsdWUgY29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyJnF1b3Q7Jmd0OwkJJmx0O3AmZ3Q7T05MSU5FIEJPT0tJTkcgU0VSVklDRSZsdDsvcCZndDsNCgkmbHQ7L2RpdiZndDsiO30=', 32, 0),
(20314, 'content', 'bloglatest.2uDoZt', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjk5NzMyOTkzNDQxMTcwMjEiO3M6NjoibW9kdWxlIjtzOjE3OiJibG9nbGF0ZXN0LjJ1RG9adCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6ImJsb2dsYXRlc3QuMnVEb1p0IjtzOjU6Ind0eXBlIjtzOjEwOiJibG9nbGF0ZXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTGF0ZXN0IGJsb2dzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJMYXRlc3QgYmxvZ3MiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJMYXRlc3QgYmxvZ3MiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMyI7czo1OiJsaW1pdCI7czoxOiI2IjtzOjU6IndpZHRoIjtzOjM6IjM1MCI7czo2OiJoZWlnaHQiO3M6MzoiMjQ2Ijt9', 32, 0),
(20315, 'content', 'bloglatest.ImSXkx', 'YToxNTp7czo0OiJyYW5kIjtzOjE5OiIwLjIzMzA0MzI3NTI2MDc0Mzg3IjtzOjY6Im1vZHVsZSI7czoxNzoiYmxvZ2xhdGVzdC5JbVNYa3giO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE3OiJibG9nbGF0ZXN0LkltU1hreCI7czo1OiJ3dHlwZSI7czoxMDoiYmxvZ2xhdGVzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTM6IkZyb20gb3VyIGJsb2ciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IkZST00gT1VSIEJMT0ciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEzOiJGUk9NIE9VUiBCTE9HIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMiI7czo0OiJjb2xzIjtzOjE6IjIiO3M6NToibGltaXQiO3M6MToiNiI7czo1OiJ3aWR0aCI7czozOiI0OTAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI1MCI7fQ==', 32, 0),
(15576, 'content', 'image.A7EJiI', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjM5NDQ5MzYwNjczNTIxNDA1IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuQTdFSmlJIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuQTdFSmlJIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjQxOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItaG9tZS0yLTA0LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 39, 0),
(15575, 'content', 'icon_box.YLULgF', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc1NjM4NDE4MTM2NzEyMTMiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5ZTFVMZ0YiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5ZTFVMZ0YiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJQZXJmZWN0IENob2ljZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiUGVyZmVjdCBDaG9pY2UiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJQZXJmZWN0IENob2ljZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12My5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3OToiJmx0O3AmZ3Q7Um91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgc21vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3OToiJmx0O3AmZ3Q7Um91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgc21vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 39, 0),
(15574, 'content', 'icon_box.wOE7CT', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjE0NjQzODUwMjkzMjM5NjkiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC53T0U3Q1QiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC53T0U3Q1QiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE2OiIxNS4wMDArIFByb2R1Y3RzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE2OiIxNS4wMDArIFBST0RVQ1RTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiMTUuMDAwKyBQUk9EVUNUUyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjEwOiJmYSBmYS10YWdzIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjI1ODoiJmx0O3AgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7CVRoaXMgaXMgUGhvdG9zaG9wJ3MgdmVyc2lvbiBvZiBMb3JlbSBJcHN1bS4gUHJvaW4gZ3JhdmlkYSBuaWJoIHZlbGl0IGF1Y3RvciBhbGlxdWV0ICZsdDsvcCZndDsNCiZsdDthIGNsYXNzPSZxdW90O3ZpZXdzJnF1b3Q7IGhyZWY9JnF1b3Q7aW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvY2F0ZWdvcnkmYW1wO2FtcDtwYXRoPTg1JnF1b3Q7Jmd0OysgTU9SRSBERVRBSUwmbHQ7L2EmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjI1ODoiJmx0O3AgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7CVRoaXMgaXMgUGhvdG9zaG9wJ3MgdmVyc2lvbiBvZiBMb3JlbSBJcHN1bS4gUHJvaW4gZ3JhdmlkYSBuaWJoIHZlbGl0IGF1Y3RvciBhbGlxdWV0ICZsdDsvcCZndDsNCiZsdDthIGNsYXNzPSZxdW90O3ZpZXdzJnF1b3Q7IGhyZWY9JnF1b3Q7aW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvY2F0ZWdvcnkmYW1wO2FtcDtwYXRoPTg1JnF1b3Q7Jmd0OysgTU9SRSBERVRBSUwmbHQ7L2EmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjMiO3M6MTA6InRleHRfYWxpZ24iO3M6MTg6ImZlYXR1cmUtYm94LWNlbnRlciI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 39, 0),
(15573, 'content', 'icon_box.VXaWmq', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjEwNjczMjkxMjcwNDExODMzIjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guVlhhV21xIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guVlhhV21xIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxOToiMjQvNyBTVVBQT1JUIE9OTElORSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxOToiMjQvNyBTVVBQT1JUIE9OTElORSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTk6IjI0LzcgU1VQUE9SVCBPTkxJTkUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzU6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ljb24tYm94LTMucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NzU6IiZsdDtwJmd0O1N1cnJvdW5kIHlvdXJzZWxmIHdpdGggYW5nZWxzLiBUaGV5IGRvbid0IHdhbnQgdXMgdG8gZWF0Jmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3NToiJmx0O3AmZ3Q7U3Vycm91bmQgeW91cnNlbGYgd2l0aCBhbmdlbHMuIFRoZXkgZG9uJ3Qgd2FudCB1cyB0byBlYXQmbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czowOiIiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 39, 0),
(15572, 'content', 'icon_box.il03iG', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU2NjIxNzA4NTc0ODM0OTciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5pbDAzaUciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5pbDAzaUciO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE3OiJSRVNQT05TSVZFIERFU0lHTiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNzoiUkVTUE9OU0lWRSBERVNJR04iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE3OiJSRVNQT05TSVZFIERFU0lHTiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozNToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaWNvbi1ib3gtMi5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3NToiJmx0O3AmZ3Q7U3Vycm91bmQgeW91cnNlbGYgd2l0aCBhbmdlbHMuIFRoZXkgZG9uJ3Qgd2FudCB1cyB0byBlYXQmbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjc1OiImbHQ7cCZndDtTdXJyb3VuZCB5b3Vyc2VsZiB3aXRoIGFuZ2Vscy4gVGhleSBkb24ndCB3YW50IHVzIHRvIGVhdCZsdDsvcCZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjA6IiI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 39, 0),
(15571, 'content', 'icon_box.IAjfqf', 'YToxNzp7czo0OiJyYW5kIjtzOjE3OiIwLjYwMjQ3NzI5OTQyMDk4NSI7czo2OiJtb2R1bGUiO3M6MTU6Imljb25fYm94LklBamZxZiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTU6Imljb25fYm94LklBamZxZiI7czo1OiJ3dHlwZSI7czo4OiJpY29uX2JveCI7czoxMToid2lkZ2V0X25hbWUiO3M6MjM6IkZyZWUgd29ybGR3aWRlIHNoaXBwaW5nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIzOiJGUkVFIFdPUkxEV0lERSBTSElQUElORyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjM6IkZSRUUgV09STERXSURFIFNISVBQSU5HIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjA6IiI7czo5OiJpY29uY2xhc3MiO3M6MTk6ImZhIGZhLXBhcGVyLXBsYW5lLW8iO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MjM2OiImbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDsJVGhpcyBpcyBQaG90b3Nob3AncyB2ZXJzaW9uIG9mIExvcmVtIElwc3VtLiBQcm9pbiBncmF2aWRhIG5pYmggdmVsaXQgYXVjdG9yIGFsaXF1ZXQgJmx0Oy9wJmd0Ow0KJmx0O2EgY2xhc3M9JnF1b3Q7dmlld3MmcXVvdDsgaHJlZj0mcXVvdDs/cm91dGU9aW5mb3JtYXRpb24vY29udGFjdCZxdW90OyZndDsrIE1PUkUgREVUQUlMJmx0Oy9hJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoyMzY6IiZsdDtwIGNsYXNzPSZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7Jmd0OwlUaGlzIGlzIFBob3Rvc2hvcCdzIHZlcnNpb24gb2YgTG9yZW0gSXBzdW0uIFByb2luIGdyYXZpZGEgbmliaCB2ZWxpdCBhdWN0b3IgYWxpcXVldCAmbHQ7L3AmZ3Q7DQombHQ7YSBjbGFzcz0mcXVvdDt2aWV3cyZxdW90OyBocmVmPSZxdW90Oz9yb3V0ZT1pbmZvcm1hdGlvbi9jb250YWN0JnF1b3Q7Jmd0OysgTU9SRSBERVRBSUwmbHQ7L2EmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjMiO3M6MTA6InRleHRfYWxpZ24iO3M6MTg6ImZlYXR1cmUtYm94LWNlbnRlciI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 39, 0),
(15570, 'content', 'icon_box.iA2bG5', 'YToxNzp7czo0OiJyYW5kIjtzOjE3OiIwLjkwODUyNjY1ODAxNTk4MSI7czo2OiJtb2R1bGUiO3M6MTU6Imljb25fYm94LmlBMmJHNSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTU6Imljb25fYm94LmlBMmJHNSI7czo1OiJ3dHlwZSI7czo4OiJpY29uX2JveCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTM6IkZSRUUgU0hJUFBJTkciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTM6IkZSRUUgU0hJUFBJTkciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEzOiJGUkVFIFNISVBQSU5HIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjM1OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pY29uLWJveC0xLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjc1OiImbHQ7cCZndDtTdXJyb3VuZCB5b3Vyc2VsZiB3aXRoIGFuZ2Vscy4gVGhleSBkb24ndCB3YW50IHVzIHRvIGVhdCZsdDsvcCZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NzU6IiZsdDtwJmd0O1N1cnJvdW5kIHlvdXJzZWxmIHdpdGggYW5nZWxzLiBUaGV5IGRvbid0IHdhbnQgdXMgdG8gZWF0Jmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MDoiIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 39, 0),
(15569, 'content', 'icon_box.c9ISsB', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjQxNDY4Mzc2NzI2OTIxNjUiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5jOUlTc0IiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5jOUlTc0IiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjIwOiJPbmxpbmUgb3JkZXIgc2VydmljZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMDoiT05MSU5FIE9SREVSIFNFUlZJQ0UiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIwOiJPTkxJTkUgT1JERVIgU0VSVklDRSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjEyOiJmYSBmYS1tb2JpbGUiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MjQwOiImbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDsJVGhpcyBpcyBQaG90b3Nob3AncyB2ZXJzaW9uIG9mIExvcmVtIElwc3VtLiBQcm9pbiBncmF2aWRhIG5pYmggdmVsaXQgYXVjdG9yIGFsaXF1ZXQgJmx0Oy9wJmd0Ow0KJmx0O2EgY2xhc3M9JnF1b3Q7dmlld3MmcXVvdDsgaHJlZj0mcXVvdDtpbmRleC5waHA/cm91dGU9cGF2ZGVhbHMvZGVhbHMmcXVvdDsmZ3Q7KyBNT1JFIERFVEFJTCZsdDsvYSZndDsiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MjQwOiImbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDsJVGhpcyBpcyBQaG90b3Nob3AncyB2ZXJzaW9uIG9mIExvcmVtIElwc3VtLiBQcm9pbiBncmF2aWRhIG5pYmggdmVsaXQgYXVjdG9yIGFsaXF1ZXQgJmx0Oy9wJmd0Ow0KJmx0O2EgY2xhc3M9JnF1b3Q7dmlld3MmcXVvdDsgaHJlZj0mcXVvdDtpbmRleC5waHA/cm91dGU9cGF2ZGVhbHMvZGVhbHMmcXVvdDsmZ3Q7KyBNT1JFIERFVEFJTCZsdDsvYSZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MyI7czoxMDoidGV4dF9hbGlnbiI7czoxODoiZmVhdHVyZS1ib3gtY2VudGVyIjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 39, 0),
(15568, 'content', 'icon_box.8wJ50j', 'YToxNzp7czo0OiJyYW5kIjtzOjE3OiIwLjY3MTMzNjc5MjYzMDU1NCI7czo2OiJtb2R1bGUiO3M6MTU6Imljb25fYm94Ljh3SjUwaiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTU6Imljb25fYm94Ljh3SjUwaiI7czo1OiJ3dHlwZSI7czo4OiJpY29uX2JveCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTg6Ildvcmxkd2lkZSBEZWxpdmVyeSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxODoiV29ybGR3aWRlIERlbGl2ZXJ5IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxODoiV29ybGR3aWRlIERlbGl2ZXJ5IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vbW9kdWxlL21pY29uLXYyLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjkwOiImbHQ7cCZndDtXaXRoIHNpdGVzIGluIDUgbGFuZ3VhZ2VzLCB3ZSBzaGlwIHRvIG92ZXIgMjAwIGNvdW50cmllcyAmYW1wOyByZWdpb25zLiZsdDsvcCZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6OTA6IiZsdDtwJmd0O1dpdGggc2l0ZXMgaW4gNSBsYW5ndWFnZXMsIHdlIHNoaXAgdG8gb3ZlciAyMDAgY291bnRyaWVzICZhbXA7IHJlZ2lvbnMuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 39, 0),
(15567, 'content', 'icon_box.8vako2', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjgzNDU0MTc5NzQ3MDc2NzYiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC44dmFrbzIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC44dmFrbzIiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJTYWZlIFBheW1lbnQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IlNhZmUgUGF5bWVudCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IlNhZmUgUGF5bWVudCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3OToiJmx0O3AmZ3Q7UGF5IHdpdGggdGhlIHdvcmxkcyBtb3N0IHBvcHVsYXIgYW5kIHNlY3VyZSBwYXltZW50IG1ldGhvZHMuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3OToiJmx0O3AmZ3Q7UGF5IHdpdGggdGhlIHdvcmxkcyBtb3N0IHBvcHVsYXIgYW5kIHNlY3VyZSBwYXltZW50IG1ldGhvZHMuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 39, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(15566, 'content', 'html_home_2.huOIgo', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjE4NjExMjU0MDYzMDM1NzIiO3M6NjoibW9kdWxlIjtzOjE4OiJodG1sX2hvbWVfMi5odU9JZ28iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE4OiJodG1sX2hvbWVfMi5odU9JZ28iO3M6NToid3R5cGUiO3M6MTE6Imh0bWxfaG9tZV8yIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNDoiT3VyIGNvbGxlY3Rpb24iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTQ6Ik9VUiBDT0xMRUNUSU9OIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiT1VSIENPTExFQ1RJT04iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NzoiY2FwdGlvbiI7czoxMjoiU0hPUCBCWSBMT09LIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjIyMzY6IiZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyIHNwYWNlLTE1IHNwYWNlLXRvcC0xNSZxdW90OyZndDsJJmx0O2RpdiBjbGFzcz0mcXVvdDtpbWFnZS1sb29rIGVmZmVjdC12MTAmcXVvdDsmZ3Q7CQkmbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7CQkJJmx0O2ltZyBjbGFzcz0mcXVvdDtpbWctcmVzcG9uc2l2ZSZxdW90OyBhbHQ9JnF1b3Q7JnF1b3Q7IHRpdGxlPSZxdW90OyZxdW90OyBzcmM9JnF1b3Q7aW1hZ2UvY2F0YWxvZy9kZW1vL2Jhbm5lcnMvbG9vay0xLmpwZyZxdW90OyZndDsJCSZsdDsvYSZndDsJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtsb29rLW1ldGEmcXVvdDsmZ3Q7CQkmbHQ7aDQgY2xhc3M9JnF1b3Q7dGl0bGUmcXVvdDsmZ3Q7CQkJJmx0O2EgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OwkJCQlMT09LQk9PSzogUFJFLUZBTEwgMjAxNQkJCSZsdDsvYSZndDsJCSZsdDsvaDQmZ3Q7DQoJCSZsdDtwIGNsYXNzPSZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7Jmd0OwkJCVRoaXMgaXMgUGhvdG9zaG9wJ3MgdmVyc2lvbiBvZiBMb3JlbSBJcHN1bS4gUHJvaW4gZ3JhdmlkYSBuaWJoIHZlbGl0IGF1Y3RvciBhbGlxdWV0CQkmbHQ7L3AmZ3Q7DQoJCSZsdDthIGNsYXNzPSZxdW90O3ZpZXdzJnF1b3Q7IGhyZWY9JnF1b3Q7IyZxdW90OyZndDsrIFNIT1AgVEhJUyBMT09LJmx0Oy9hJmd0OwkmbHQ7L2RpdiZndDsNCiZsdDsvZGl2Jmd0Ow0KJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctNCBjb2wtbWQtNCBjb2wtc20tNCBjb2wteHMtMTIgc3BhY2UtMTUgc3BhY2UtdG9wLTE1JnF1b3Q7Jmd0OwkmbHQ7ZGl2IGNsYXNzPSZxdW90O2ltYWdlLWxvb2sgZWZmZWN0LXYxMCZxdW90OyZndDsJCSZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyZndDsJCQkmbHQ7aW1nIGNsYXNzPSZxdW90O2ltZy1yZXNwb25zaXZlJnF1b3Q7IGFsdD0mcXVvdDsmcXVvdDsgdGl0bGU9JnF1b3Q7JnF1b3Q7IHNyYz0mcXVvdDtpbWFnZS9jYXRhbG9nL2RlbW8vYmFubmVycy9sb29rLTIuanBnJnF1b3Q7Jmd0OwkJJmx0Oy9hJmd0OwkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2xvb2stbWV0YSZxdW90OyZndDsJCSZsdDtoNCBjbGFzcz0mcXVvdDt0aXRsZSZxdW90OyZndDsJCQkmbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7CQkJCUxPT0tCT09LOiBQUkUtRkFMTCAyMDE1CQkJJmx0Oy9hJmd0OwkJJmx0Oy9oNCZndDsNCgkJJmx0O3AgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7CQkJVGhpcyBpcyBQaG90b3Nob3AncyB2ZXJzaW9uIG9mIExvcmVtIElwc3VtLiBQcm9pbiBncmF2aWRhIG5pYmggdmVsaXQgYXVjdG9yIGFsaXF1ZXQJCSZsdDsvcCZndDsNCgkJJmx0O2EgY2xhc3M9JnF1b3Q7dmlld3MmcXVvdDsgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OysgU0hPUCBUSElTIExPT0smbHQ7L2EmZ3Q7CSZsdDsvZGl2Jmd0Ow0KJmx0Oy9kaXYmZ3Q7DQombHQ7ZGl2IGNsYXNzPSZxdW90O2NvbC1sZy00IGNvbC1tZC00IGNvbC1zbS00IGNvbC14cy0xMiBzcGFjZS0xNSBzcGFjZS10b3AtMTUmcXVvdDsmZ3Q7CSZsdDtkaXYgY2xhc3M9JnF1b3Q7aW1hZ2UtbG9vayBlZmZlY3QtdjEwJnF1b3Q7Jmd0OwkJJmx0O2EgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OwkJCSZsdDtpbWcgY2xhc3M9JnF1b3Q7aW1nLXJlc3BvbnNpdmUmcXVvdDsgYWx0PSZxdW90OyZxdW90OyB0aXRsZT0mcXVvdDsmcXVvdDsgc3JjPSZxdW90O2ltYWdlL2NhdGFsb2cvZGVtby9iYW5uZXJzL2xvb2stMy5qcGcmcXVvdDsmZ3Q7CQkmbHQ7L2EmZ3Q7CSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7bG9vay1tZXRhJnF1b3Q7Jmd0OwkJJmx0O2g0IGNsYXNzPSZxdW90O3RpdGxlJnF1b3Q7Jmd0OwkJCSZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyZndDsJCQkJTE9PS0JPT0s6IFBSRS1GQUxMIDIwMTUJCQkmbHQ7L2EmZ3Q7CQkmbHQ7L2g0Jmd0Ow0KCQkmbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDsJCQlUaGlzIGlzIFBob3Rvc2hvcCdzIHZlcnNpb24gb2YgTG9yZW0gSXBzdW0uIFByb2luIGdyYXZpZGEgbmliaCB2ZWxpdCBhdWN0b3IgYWxpcXVldAkJJmx0Oy9wJmd0Ow0KCQkmbHQ7YSBjbGFzcz0mcXVvdDt2aWV3cyZxdW90OyBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7KyBTSE9QIFRISVMgTE9PSyZsdDsvYSZndDsJJmx0Oy9kaXYmZ3Q7DQombHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MjIzNjoiJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctNCBjb2wtbWQtNCBjb2wtc20tNCBjb2wteHMtMTIgc3BhY2UtMTUgc3BhY2UtdG9wLTE1JnF1b3Q7Jmd0OwkmbHQ7ZGl2IGNsYXNzPSZxdW90O2ltYWdlLWxvb2sgZWZmZWN0LXYxMCZxdW90OyZndDsJCSZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyZndDsJCQkmbHQ7aW1nIGNsYXNzPSZxdW90O2ltZy1yZXNwb25zaXZlJnF1b3Q7IGFsdD0mcXVvdDsmcXVvdDsgdGl0bGU9JnF1b3Q7JnF1b3Q7IHNyYz0mcXVvdDtpbWFnZS9jYXRhbG9nL2RlbW8vYmFubmVycy9sb29rLTEuanBnJnF1b3Q7Jmd0OwkJJmx0Oy9hJmd0OwkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2xvb2stbWV0YSZxdW90OyZndDsJCSZsdDtoNCBjbGFzcz0mcXVvdDt0aXRsZSZxdW90OyZndDsJCQkmbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7CQkJCUxPT0tCT09LOiBQUkUtRkFMTCAyMDE1CQkJJmx0Oy9hJmd0OwkJJmx0Oy9oNCZndDsNCgkJJmx0O3AgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7CQkJVGhpcyBpcyBQaG90b3Nob3AncyB2ZXJzaW9uIG9mIExvcmVtIElwc3VtLiBQcm9pbiBncmF2aWRhIG5pYmggdmVsaXQgYXVjdG9yIGFsaXF1ZXQJCSZsdDsvcCZndDsNCgkJJmx0O2EgY2xhc3M9JnF1b3Q7dmlld3MmcXVvdDsgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OysgU0hPUCBUSElTIExPT0smbHQ7L2EmZ3Q7CSZsdDsvZGl2Jmd0Ow0KJmx0Oy9kaXYmZ3Q7DQombHQ7ZGl2IGNsYXNzPSZxdW90O2NvbC1sZy00IGNvbC1tZC00IGNvbC1zbS00IGNvbC14cy0xMiBzcGFjZS0xNSBzcGFjZS10b3AtMTUmcXVvdDsmZ3Q7CSZsdDtkaXYgY2xhc3M9JnF1b3Q7aW1hZ2UtbG9vayBlZmZlY3QtdjEwJnF1b3Q7Jmd0OwkJJmx0O2EgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OwkJCSZsdDtpbWcgY2xhc3M9JnF1b3Q7aW1nLXJlc3BvbnNpdmUmcXVvdDsgYWx0PSZxdW90OyZxdW90OyB0aXRsZT0mcXVvdDsmcXVvdDsgc3JjPSZxdW90O2ltYWdlL2NhdGFsb2cvZGVtby9iYW5uZXJzL2xvb2stMi5qcGcmcXVvdDsmZ3Q7CQkmbHQ7L2EmZ3Q7CSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7bG9vay1tZXRhJnF1b3Q7Jmd0OwkJJmx0O2g0IGNsYXNzPSZxdW90O3RpdGxlJnF1b3Q7Jmd0OwkJCSZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyZndDsJCQkJTE9PS0JPT0s6IFBSRS1GQUxMIDIwMTUJCQkmbHQ7L2EmZ3Q7CQkmbHQ7L2g0Jmd0Ow0KCQkmbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDsJCQlUaGlzIGlzIFBob3Rvc2hvcCdzIHZlcnNpb24gb2YgTG9yZW0gSXBzdW0uIFByb2luIGdyYXZpZGEgbmliaCB2ZWxpdCBhdWN0b3IgYWxpcXVldAkJJmx0Oy9wJmd0Ow0KCQkmbHQ7YSBjbGFzcz0mcXVvdDt2aWV3cyZxdW90OyBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7KyBTSE9QIFRISVMgTE9PSyZsdDsvYSZndDsJJmx0Oy9kaXYmZ3Q7DQombHQ7L2RpdiZndDsNCiZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyIHNwYWNlLTE1IHNwYWNlLXRvcC0xNSZxdW90OyZndDsJJmx0O2RpdiBjbGFzcz0mcXVvdDtpbWFnZS1sb29rIGVmZmVjdC12MTAmcXVvdDsmZ3Q7CQkmbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7CQkJJmx0O2ltZyBjbGFzcz0mcXVvdDtpbWctcmVzcG9uc2l2ZSZxdW90OyBhbHQ9JnF1b3Q7JnF1b3Q7IHRpdGxlPSZxdW90OyZxdW90OyBzcmM9JnF1b3Q7aW1hZ2UvY2F0YWxvZy9kZW1vL2Jhbm5lcnMvbG9vay0zLmpwZyZxdW90OyZndDsJCSZsdDsvYSZndDsJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtsb29rLW1ldGEmcXVvdDsmZ3Q7CQkmbHQ7aDQgY2xhc3M9JnF1b3Q7dGl0bGUmcXVvdDsmZ3Q7CQkJJmx0O2EgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OwkJCQlMT09LQk9PSzogUFJFLUZBTEwgMjAxNQkJCSZsdDsvYSZndDsJCSZsdDsvaDQmZ3Q7DQoJCSZsdDtwIGNsYXNzPSZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7Jmd0OwkJCVRoaXMgaXMgUGhvdG9zaG9wJ3MgdmVyc2lvbiBvZiBMb3JlbSBJcHN1bS4gUHJvaW4gZ3JhdmlkYSBuaWJoIHZlbGl0IGF1Y3RvciBhbGlxdWV0CQkmbHQ7L3AmZ3Q7DQoJCSZsdDthIGNsYXNzPSZxdW90O3ZpZXdzJnF1b3Q7IGhyZWY9JnF1b3Q7IyZxdW90OyZndDsrIFNIT1AgVEhJUyBMT09LJmx0Oy9hJmd0OwkmbHQ7L2RpdiZndDsNCiZsdDsvZGl2Jmd0OyI7fQ==', 39, 0),
(15564, 'content', 'featured_category.pKsH1S', 'YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjQzMjUyODUzNTM4NTM1MTYzIjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkucEtzSDFTIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkucEtzSDFTIjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6NDoidmVyMiI7czoxOToiY2F0ZWdvcmllc19mZWF0dXJlZCI7YToxOntpOjA7YToyOntzOjU6ImltYWdlIjtzOjQyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9mZWF0dXJlZC0wMy1ob21lMi5qcGciO3M6MjoiaWQiO3M6MjoiNzciO319czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMzcwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMzMzIjt9', 39, 0),
(15565, 'content', 'html.vr8q0r', 'YToxMjp7czo0OiJyYW5kIjtzOjE5OiIwLjEzMzM2OTc2MDk3OTE1MTc2IjtzOjY6Im1vZHVsZSI7czoxMToiaHRtbC52cjhxMHIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjExOiJodG1sLnZyOHEwciI7czo1OiJ3dHlwZSI7czo0OiJodG1sIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxODoiU0hPUCBCWSBDQVRFR09SSUVTIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjE0NToiJmx0O2RpdiBjbGFzcz0mcXVvdDtwYW5lbC1oZWFkaW5nIHRleHQtY2VudGVyJnF1b3Q7Jmd0OyZsdDtoNCBjbGFzcz0mcXVvdDtwYW5lbC10aXRsZSBwYW5lbC12MSZxdW90OyZndDtTSE9QIEJZIENBVEVHT1JJRVMmbHQ7L2g0Jmd0OyZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czoxNDU6IiZsdDtkaXYgY2xhc3M9JnF1b3Q7cGFuZWwtaGVhZGluZyB0ZXh0LWNlbnRlciZxdW90OyZndDsmbHQ7aDQgY2xhc3M9JnF1b3Q7cGFuZWwtdGl0bGUgcGFuZWwtdjEmcXVvdDsmZ3Q7U0hPUCBCWSBDQVRFR09SSUVTJmx0Oy9oNCZndDsmbHQ7L2RpdiZndDsiO30=', 39, 0),
(15563, 'content', 'featured_category.7124L1', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjg3MDQ2NjY5MTMzNzA1NjciO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS43MTI0TDEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS43MTI0TDEiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo0OiJ2ZXIyIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjE6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ZlYXR1cmVkLTAxLWhvbWUyLmpwZyI7czoyOiJpZCI7czoyOiI2NCI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIzNzAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIzMzMiO30=', 39, 0),
(15562, 'content', 'featured_category.2RZ4nW', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjcxMzk1Mzc0NTkxNzg5MzEiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS4yUlo0blciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS4yUlo0blciO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo0OiJ2ZXIyIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjE6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ZlYXR1cmVkLTAyLWhvbWUyLmpwZyI7czoyOiJpZCI7czoyOiI2OSI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIzNzAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIzMzMiO30=', 39, 0),
(15561, 'content', 'bloglatest_version_2.phFn6s', 'YToxNTp7czo0OiJyYW5kIjtzOjE5OiIwLjE0MjEzNjM5MDY1NjUxNzg0IjtzOjY6Im1vZHVsZSI7czoyNzoiYmxvZ2xhdGVzdF92ZXJzaW9uXzIucGhGbjZzIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNzoiYmxvZ2xhdGVzdF92ZXJzaW9uXzIucGhGbjZzIjtzOjU6Ind0eXBlIjtzOjIwOiJibG9nbGF0ZXN0X3ZlcnNpb25fMiI7czoxMToid2lkZ2V0X25hbWUiO3M6MTE6Ik9OIFRIRSBCTE9HIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjExOiJPTiBUSEUgQkxPRyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTE6Ik9OIFRIRSBCTE9HIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMiI7czo0OiJjb2xzIjtzOjE6IjIiO3M6NToibGltaXQiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyNjIiO3M6NjoiaGVpZ2h0IjtzOjM6IjE4NCI7fQ==', 39, 0),
(15560, 'content', 'bloglatest_home2.dEhsRl', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjYzMjU4NTk2MjU5Mjc2MzIiO3M6NjoibW9kdWxlIjtzOjIzOiJibG9nbGF0ZXN0X2hvbWUyLmRFaHNSbCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjM6ImJsb2dsYXRlc3RfaG9tZTIuZEVoc1JsIjtzOjU6Ind0eXBlIjtzOjE2OiJibG9nbGF0ZXN0X2hvbWUyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiRnJvbSBvdXIgYmxvZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMzoiRlJPTSBPVVIgQkxPRyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTM6IkZST00gT1VSIEJMT0ciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIyIjtzOjQ6ImNvbHMiO3M6MToiMiI7czo1OiJsaW1pdCI7czoxOiI2IjtzOjU6IndpZHRoIjtzOjM6IjQ5MCI7czo2OiJoZWlnaHQiO3M6MzoiMjUwIjt9', 39, 0),
(15620, 'content', 'product_list_home3.mLCvNE', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjUzNDI4NTM0OTkwNDU3MjMiO3M6NjoibW9kdWxlIjtzOjI1OiJwcm9kdWN0X2xpc3RfaG9tZTMubUxDdk5FIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToicHJvZHVjdF9saXN0X2hvbWUzLm1MQ3ZORSI7czo1OiJ3dHlwZSI7czoxODoicHJvZHVjdF9saXN0X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJQb3B1bGFyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlBPUFVMQVIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlBPUFVMQVIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTAiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI1IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI3NSI7czo2OiJoZWlnaHQiO3M6MzoiMTAwIjtzOjk6Imxpc3RfdHlwZSI7czo3OiJwb3B1bGFyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 41, 0),
(15621, 'content', 'product_tabs.1WGHy9', 'YToyODp7czo0OiJyYW5kIjtzOjE4OiIwLjU5NTc0OTAwMjYwMDQ4MDEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X3RhYnMuMVdHSHk5IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF90YWJzLjFXR0h5OSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF90YWJzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNzoiRkVBVFVSRUQgUFJPRFVDVFMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTc6IkZFQVRVUkVEIFBST0RVQ1RTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNzoiRkVBVFVSRUQgUFJPRFVDVFMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6NjoiY29sdW1uIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjExOiJpY29uX25ld2VzdCI7czowOiIiO3M6MTM6ImVuYWJsZV9uZXdlc3QiO3M6MToiMCI7czoxMzoiaWNvbl9mZWF0dXJlZCI7czowOiIiO3M6MTA6InByb2R1Y3RfaWQiO3M6MjM6Ijc2LDkxLDY2LDg5LDgzLDYzLDU4LDcyIjtzOjE1OiJlbmFibGVfZmVhdHVyZWQiO3M6MToiMCI7czoxNToiaWNvbl9iZXN0c2VsbGVyIjtzOjA6IiI7czoxNzoiZW5hYmxlX2Jlc3RzZWxsZXIiO3M6MToiMSI7czoxMjoiaWNvbl9zcGVjaWFsIjtzOjA6IiI7czoxNDoiZW5hYmxlX3NwZWNpYWwiO3M6MToiMSI7czoxNDoiaWNvbl9tb3N0dmlld3MiO3M6MDoiIjtzOjE2OiJlbmFibGVfbW9zdHZpZXdzIjtzOjE6IjEiO3M6OToidGFic3N0eWxlIjtzOjY6InRhYi12MSI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMjcwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMjkwIjtzOjk6ImF1dG9fcGxheSI7czo0OiIzMDAwIjt9', 41, 0),
(15619, 'content', 'product_list.SlnCxg', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU5MzYzMTc5NDg3NDEwOTQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuU2xuQ3hnIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlNsbkN4ZyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiUG9wdWxhciBQcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiUG9wdWxhciBQcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IlBvcHVsYXIgUHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjYwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTMzIjtzOjk6Imxpc3RfdHlwZSI7czo3OiJwb3B1bGFyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 41, 0),
(15618, 'content', 'product_list.q0Co3B', 'YToxNzp7czo0OiJyYW5kIjtzOjE2OiIwLjI2NjA2MTYzNzM4MjUxIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LnEwQ28zQiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5xMENvM0IiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3QgU2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI4IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiI2MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjUzMyI7czo5OiJsaXN0X3R5cGUiO3M6MTA6ImJlc3RzZWxsZXIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 41, 0),
(15616, 'content', 'manufacture.vFZdsd', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjQ3NTE3MTgwNDA2OTUzMTYzIjtzOjY6Im1vZHVsZSI7czoxODoibWFudWZhY3R1cmUudkZaZHNkIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxODoibWFudWZhY3R1cmUudkZaZHNkIjtzOjU6Ind0eXBlIjtzOjExOiJtYW51ZmFjdHVyZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjY6InRhcmdldCI7czoyOiIxNCI7czo1OiJsaW1pdCI7czoyOiIxMiI7czo3OiJjb2x1bW5zIjtzOjE6IjYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI2IjtzOjU6IndpZHRoIjtzOjM6IjE2MCI7czo2OiJoZWlnaHQiO3M6MjoiNjAiO30=', 41, 0),
(15617, 'content', 'product_deal.0hCF8V', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjg4ODQwNzg2MTAwNjQ2MzQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuMGhDRjhWIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLjBoQ0Y4ViI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiVE9EQVkgREVBTFMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IlRPREFZIERFQUxTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiVE9EQVkgREVBTFMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTAtMDItMDMiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMjktMDctMDUiO3M6NToibGltaXQiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIyIjtzOjk6ImltZ193aWR0aCI7czozOiIzMDUiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiMzI4IjtzOjEyOiJjYXRlZ29yeV9pZHMiO2E6MTc6e2k6MDtzOjI6IjcwIjtpOjE7czoyOiI3MSI7aToyO3M6MjoiNzciO2k6MztzOjI6Ijc4IjtpOjQ7czoyOiI4MCI7aTo1O3M6MjoiODUiO2k6NjtzOjI6Ijg2IjtpOjc7czoyOiI5MSI7aTo4O3M6MjoiNjUiO2k6OTtzOjI6IjY2IjtpOjEwO3M6MjoiNjciO2k6MTE7czoyOiI2OCI7aToxMjtzOjI6IjY5IjtpOjEzO3M6MjoiNjQiO2k6MTQ7czoyOiI4MSI7aToxNTtzOjI6Ijc5IjtpOjE2O3M6MjoiNzQiO319', 41, 0),
(15615, 'content', 'listproduct_home3.YjI8D4', 'YToyODp7czo0OiJyYW5kIjtzOjE5OiIwLjM4NzUwOTQ3MjI0OTgzNTU2IjtzOjY6Im1vZHVsZSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTMuWWpJOEQ0IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTMuWWpJOEQ0IjtzOjU6Ind0eXBlIjtzOjE3OiJsaXN0cHJvZHVjdF9ob21lMyI7czoxMToid2lkZ2V0X25hbWUiO3M6MTg6IkRpZXQgJmFtcDsgZml0bmVzcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxODoiRElFVCAmYW1wOyBGSVRORVNTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTU6Imxpbmtfdmlld19hbGxfMSI7czoxOiIjIjtzOjE1OiJsaW5rX3ZpZXdfYWxsXzIiO3M6MToiIyI7czo5OiJ0aXRsZV8xXzEiO3M6ODoiRmVhdHVyZWQiO3M6OToidGl0bGVfMV8yIjtzOjg6IkZlYXR1cmVkIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8xIjtzOjA6IiI7czo5OiJwcm9kdWN0XzEiO2E6NTp7aTowO3M6MjoiNjQiO2k6MTtzOjI6IjYxIjtpOjI7czoyOiI1NiI7aTozO3M6MjoiNjUiO2k6NDtzOjI6IjYzIjt9czo5OiJ0aXRsZV8yXzEiO3M6MTI6Ik5ldyBBcnJpdmFscyI7czo5OiJ0aXRsZV8yXzIiO3M6MTI6Ik5ldyBBcnJpdmFscyI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMiI7czowOiIiO3M6OToicHJvZHVjdF8yIjthOjQ6e2k6MDtzOjI6IjU2IjtpOjE7czoyOiI3MCI7aToyO3M6MjoiNTgiO2k6MztzOjI6IjYwIjt9czo5OiJ0aXRsZV8zXzEiO3M6ODoiU2FsZSBPZmYiO3M6OToidGl0bGVfM18yIjtzOjg6IlNhbGUgT2ZmIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8zIjtzOjA6IiI7czo5OiJwcm9kdWN0XzMiO2E6NDp7aTowO3M6MjoiNjkiO2k6MTtzOjI6IjY4IjtpOjI7czoyOiI2MiI7aTozO3M6MjoiNTQiO31zOjk6InRpdGxlXzRfMSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjk6InRpdGxlXzRfMiI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF80IjtzOjA6IiI7czo5OiJwcm9kdWN0XzQiO2E6NDp7aTowO3M6MjoiNjEiO2k6MTtzOjI6IjYzIjtpOjI7czoyOiI2NCI7aTozO3M6MjoiNTYiO319', 41, 0),
(20336, 'content', 'product_tabs.MXCj62', 'YToyODp7czo0OiJyYW5kIjtzOjE4OiIwLjg3OTAwODA5NDgxNzgwMjMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X3RhYnMuTVhDajYyIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF90YWJzLk1YQ2o2MiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF90YWJzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTYiO3M6NjoiY29sdW1uIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI4IjtzOjExOiJpY29uX25ld2VzdCI7czowOiIiO3M6MTM6ImVuYWJsZV9uZXdlc3QiO3M6MToiMSI7czoxMzoiaWNvbl9mZWF0dXJlZCI7czowOiIiO3M6MTA6InByb2R1Y3RfaWQiO3M6NTM6IjUyLDU0LDY1LDc0LDYxLDc2LDY5LDU5LDgzLDc5LDgyLDUzLDkzLDgwLDY3LDc1LDc3LDc0IjtzOjE1OiJlbmFibGVfZmVhdHVyZWQiO3M6MToiMCI7czoxNToiaWNvbl9iZXN0c2VsbGVyIjtzOjA6IiI7czoxNzoiZW5hYmxlX2Jlc3RzZWxsZXIiO3M6MToiMSI7czoxMjoiaWNvbl9zcGVjaWFsIjtzOjA6IiI7czoxNDoiZW5hYmxlX3NwZWNpYWwiO3M6MToiMSI7czoxNDoiaWNvbl9tb3N0dmlld3MiO3M6MDoiIjtzOjE2OiJlbmFibGVfbW9zdHZpZXdzIjtzOjE6IjAiO3M6OToidGFic3N0eWxlIjtzOjY6InRhYi12MSI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMzAwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMzAwIjtzOjk6ImF1dG9fcGxheSI7czo0OiIzMDAwIjt9', 32, 0),
(20335, 'content', 'product_list_v2.vfGYBd', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjg5NzMxOTA2ODI3MzYwNzQiO3M6NjoibW9kdWxlIjtzOjIyOiJwcm9kdWN0X2xpc3RfdjIudmZHWUJkIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMjoicHJvZHVjdF9saXN0X3YyLnZmR1lCZCI7czo1OiJ3dHlwZSI7czoxNToicHJvZHVjdF9saXN0X3YyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTGF0ZXN0IGl0ZW1zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJMQVRFU1QgSVRFTVMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJMQVRFU1QgSVRFTVMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM2MCI7czo5OiJsaXN0X3R5cGUiO3M6NjoibGF0ZXN0IjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 32, 0),
(20334, 'content', 'product_list.VqxtHw', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjA5MjQ3NTUyNjc3NDI4MzgzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LlZxeHRIdyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5WcXh0SHciO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3Qgc2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQkVTVCBTRUxMRVJTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQkVTVCBTRUxMRVJTIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjc6ImNhcHRpb24iO3M6MTM6Ik1PU1RMWSBCT1VHSFQiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMiI7czo1OiJ3aWR0aCI7czozOiIyNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM2MCI7czo5OiJsaXN0X3R5cGUiO3M6MTA6ImJlc3RzZWxsZXIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 32, 0),
(20333, 'content', 'product_list.640z0N', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjQwMjUyMzMwNjc5MjU3NTUzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LjY0MHowTiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC42NDB6ME4iO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTM6IlBvcHVsYXIgaXRlbXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IlBPUFVMQVIgSVRFTVMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEzOiJQT1BVTEFSIElURU1TIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjc6ImNhcHRpb24iO3M6MTE6IlNUQUZGIFBJQ0tTIjtzOjU6ImxpbWl0IjtzOjI6IjEyIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjIiO3M6NToid2lkdGgiO3M6MzoiMjcwIjtzOjY6ImhlaWdodCI7czozOiIzNjAiO3M6OToibGlzdF90eXBlIjtzOjc6InBvcHVsYXIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 32, 0),
(20332, 'content', 'manufacture.6GBlrk', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjA3MTYyODI0ODg0NDg0OTg2IjtzOjY6Im1vZHVsZSI7czoxODoibWFudWZhY3R1cmUuNkdCbHJrIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxODoibWFudWZhY3R1cmUuNkdCbHJrIjtzOjU6Ind0eXBlIjtzOjExOiJtYW51ZmFjdHVyZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjY6InRhcmdldCI7czoyOiIxNCI7czo1OiJsaW1pdCI7czoyOiIxMiI7czo3OiJjb2x1bW5zIjtzOjE6IjMiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI2IjtzOjU6IndpZHRoIjtzOjM6IjE1MCI7czo2OiJoZWlnaHQiO3M6MjoiNjAiO30=', 32, 0),
(20331, 'content', 'interactive_banner.RjXr2G', 'YToyNDp7czo0OiJyYW5kIjtzOjE5OiIwLjQwMDQwMzM1Nzc3Mzk2Mjk2IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlJqWHIyRyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5SalhyMkciO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2MDEtaG9tZS0xLmpwZyI7czo1OiJ3aWR0aCI7czozOiI1NzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM3MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3MDoiJmx0O3AmZ3Q7S25vdyBZb3Vyc2VsZiAgWW91ciZsdDsvcCZndDsNCiZsdDtwJmd0O0lubmVyIFBvd2VyJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3MDoiJmx0O3AmZ3Q7S25vdyBZb3Vyc2VsZiAgWW91ciZsdDsvcCZndDsNCiZsdDtwJmd0O0lubmVyIFBvd2VyJmx0Oy9wJmd0OyI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTEiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fQ==', 32, 0),
(20330, 'content', 'interactive_banner.Krff1Q', 'YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjU1ODM2ODIzNDIxMDQ2NjEiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuS3JmZjFRIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLktyZmYxUSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM3OiJjYXRhbG9nL2RlbW8vYmFubmVycy9hZHYwNC1ob21lLTEuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzcwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjk4OiImbHQ7cCZndDtDb3VudGluZyBZb3VyJmx0Oy9wJmd0Ow0KJmx0O3AmZ3Q7Q2hpY2tlbiBCZWZvcmUgVGhleSZsdDsvcCZndDsNCiZsdDtwJmd0O0hhdGNoJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo5ODoiJmx0O3AmZ3Q7Q291bnRpbmcgWW91ciZsdDsvcCZndDsNCiZsdDtwJmd0O0NoaWNrZW4gQmVmb3JlIFRoZXkmbHQ7L3AmZ3Q7DQombHQ7cCZndDtIYXRjaCZsdDsvcCZndDsiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjExIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO30=', 32, 0),
(20329, 'content', 'interactive_banner.GKpwIG', 'YToyNDp7czo0OiJyYW5kIjtzOjE5OiIwLjA0NDMxMTkxMzY2MzgwMzA1IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLkdLcHdJRyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5HS3B3SUciO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2MDItaG9tZS0xLmpwZyI7czo1OiJ3aWR0aCI7czozOiI1NzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM3MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3MToiJmx0O3AmZ3Q7SGFybmVzcyBUaGUgUG93ZXImbHQ7L3AmZ3Q7DQombHQ7cCZndDtPZiBZb3VyIERyZWFtcyZsdDsvcCZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NzE6IiZsdDtwJmd0O0hhcm5lc3MgVGhlIFBvd2VyJmx0Oy9wJmd0Ow0KJmx0O3AmZ3Q7T2YgWW91ciBEcmVhbXMmbHQ7L3AmZ3Q7IjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMSI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9', 32, 0),
(20327, 'content', 'image.RHcrFC', 'YToyMDp7czo0OiJyYW5kIjtzOjE3OiIwLjU2NjYyNjM2Nzc3MTk1MSI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLlJIY3JGQyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLlJIY3JGQyI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiYWR2IGhvbWUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyLWhvbWUxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIxIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 32, 0),
(20328, 'content', 'interactive_banner.aBQeIt', 'YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjk4MTMwNTkzNjg0ODU2MjgiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuYUJRZUl0IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmFCUWVJdCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM3OiJjYXRhbG9nL2RlbW8vYmFubmVycy9hZHYwMy1ob21lLTEuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzcwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjcwOiImbHQ7cCZndDtDaG9vc2luZyBUaGUgQmVzdCZsdDsvcCZndDsNCiZsdDtwJmd0O1Bob3RvIFByaW50ZXImbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjcwOiImbHQ7cCZndDtDaG9vc2luZyBUaGUgQmVzdCZsdDsvcCZndDsNCiZsdDtwJmd0O1Bob3RvIFByaW50ZXImbHQ7L3AmZ3Q7IjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMSI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9', 32, 0),
(20326, 'content', 'image.ea9Nld', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjE2NTQ1NDYzMTE1MTExMjAzIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuZWE5TmxkIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuZWE5TmxkIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMtaG9tZTEuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjEwIjt9', 32, 0),
(20325, 'content', 'image.1nJrbv', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjgwMTExOTY5OTc0MjkxNzEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS4xbkpyYnYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS4xbkpyYnYiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6ImFkdiBob21lIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNC1ob21lMS5wbmciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMSI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 32, 0),
(20324, 'content', 'image.05ga1R', 'YToyMDp7czo0OiJyYW5kIjtzOjIwOiIwLjAyNzE2NDI0MDY3ODA4MjA5NyI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLjA1Z2ExUiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLjA1Z2ExUiI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiYWR2IGhvbWUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxLWhvbWUxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIxIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 32, 0),
(20323, 'content', 'icon_box.vj3eRw', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjEyMDEzMjQ1ODg4MTIyMDI2IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3gudmozZVJ3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3gudmozZVJ3IjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNzoiTmVlZCB3ZSBzYXkgbW9yZT8iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTc6Ik5lZWQgd2Ugc2F5IG1vcmU/IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNzoiTmVlZCB3ZSBzYXkgbW9yZT8iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ljb24tZnJlZXNoaXAucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NTE6IiZsdDtwJmd0O0ZyZWUgU2hpcHBpbmcgb24gT3JkZXJzIG92ZXIgJDQ5Jmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo1MToiJmx0O3AmZ3Q7RnJlZSBTaGlwcGluZyBvbiBPcmRlcnMgb3ZlciAkNDkmbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czowOiIiO3M6MTA6InRleHRfYWxpZ24iO3M6MTg6ImZlYXR1cmUtYm94LWNlbnRlciI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 32, 0),
(15614, 'content', 'listproduct_home3.F99H65', 'YToyODp7czo0OiJyYW5kIjtzOjE4OiIwLjI4OTM2MzE5NDIwOTY4OTkiO3M6NjoibW9kdWxlIjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMy5GOTlINjUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMy5GOTlINjUiO3M6NToid3R5cGUiO3M6MTc6Imxpc3Rwcm9kdWN0X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiU2V4dWFsIGhlYWx0aCI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMzoiU0VYVUFMIEhFQUxUSCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IlNFWFVBTCBIRUFMVEgiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTU6Imxpbmtfdmlld19hbGxfMSI7czoxOiIjIjtzOjE1OiJsaW5rX3ZpZXdfYWxsXzIiO3M6MToiIyI7czo5OiJ0aXRsZV8xXzEiO3M6ODoiRmVhdHVyZWQiO3M6OToidGl0bGVfMV8yIjtzOjg6IkZlYXR1cmVkIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8xIjtzOjA6IiI7czo5OiJwcm9kdWN0XzEiO2E6NDp7aTowO3M6MjoiNjUiO2k6MTtzOjI6IjUyIjtpOjI7czoyOiI2NiI7aTozO3M6MjoiNTUiO31zOjk6InRpdGxlXzJfMSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjk6InRpdGxlXzJfMiI7czoxMjoiTmV3IEFycml2YWxzIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8yIjtzOjA6IiI7czo5OiJwcm9kdWN0XzIiO2E6NDp7aTowO3M6MjoiNjEiO2k6MTtzOjI6IjYzIjtpOjI7czoyOiI2NCI7aTozO3M6MjoiNTYiO31zOjk6InRpdGxlXzNfMSI7czo4OiJTYWxlIE9mZiI7czo5OiJ0aXRsZV8zXzIiO3M6ODoiU2FsZSBPZmYiO3M6MTY6ImNob29zZV9wcm9kdWN0XzMiO3M6MDoiIjtzOjk6InByb2R1Y3RfMyI7YTo0OntpOjA7czoyOiI2MSI7aToxO3M6MjoiNTYiO2k6MjtzOjI6IjUyIjtpOjM7czoyOiI3MSI7fXM6OToidGl0bGVfNF8xIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6OToidGl0bGVfNF8yIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6MTY6ImNob29zZV9wcm9kdWN0XzQiO3M6MDoiIjtzOjk6InByb2R1Y3RfNCI7YTo1OntpOjA7czoyOiI2NCI7aToxO3M6MjoiNTYiO2k6MjtzOjI6IjY4IjtpOjM7czoyOiI2MCI7aTo0O3M6MjoiNjkiO319', 41, 0),
(15613, 'content', 'listproduct_home3.8oPaFm', 'YToyODp7czo0OiJyYW5kIjtzOjE4OiIwLjgzOTMzNTYyMjkzNjQ0MTUiO3M6NjoibW9kdWxlIjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMy44b1BhRm0iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMy44b1BhRm0iO3M6NToid3R5cGUiO3M6MTc6Imxpc3Rwcm9kdWN0X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMToiTWVkaWNpbmUgJmFtcDsgaGVhbHRoIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIxOiJNRURJQ0lORSAmYW1wOyBIRUFMVEgiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIxOiJNRURJQ0lORSAmYW1wOyBIRUFMVEgiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTU6Imxpbmtfdmlld19hbGxfMSI7czoxOiIjIjtzOjE1OiJsaW5rX3ZpZXdfYWxsXzIiO3M6MToiIyI7czo5OiJ0aXRsZV8xXzEiO3M6ODoiRmVhdHVyZWQiO3M6OToidGl0bGVfMV8yIjtzOjg6IkZlYXR1cmVkIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8xIjtzOjA6IiI7czo5OiJwcm9kdWN0XzEiO2E6Njp7aTowO3M6MjoiNjEiO2k6MTtzOjI6IjYzIjtpOjI7czoyOiI2NCI7aTozO3M6MjoiNTYiO2k6NDtzOjI6IjY1IjtpOjU7czoyOiI2NyI7fXM6OToidGl0bGVfMl8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6OToidGl0bGVfMl8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTY6ImNob29zZV9wcm9kdWN0XzIiO3M6MDoiIjtzOjk6InByb2R1Y3RfMiI7YTo0OntpOjA7czoyOiI2NSI7aToxO3M6MjoiNTIiO2k6MjtzOjI6IjY2IjtpOjM7czoyOiI1NSI7fXM6OToidGl0bGVfM18xIjtzOjg6IlNhbGUgT2ZmIjtzOjk6InRpdGxlXzNfMiI7czo4OiJTYWxlIE9mZiI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMyI7czowOiIiO3M6OToicHJvZHVjdF8zIjthOjQ6e2k6MDtzOjI6IjYyIjtpOjE7czoyOiI1NSI7aToyO3M6MjoiNTkiO2k6MztzOjI6IjU4Ijt9czo5OiJ0aXRsZV80XzEiO3M6MTI6IkJlc3QgU2VsbGVycyI7czo5OiJ0aXRsZV80XzIiO3M6MTI6IkJlc3QgU2VsbGVycyI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfNCI7czowOiIiO3M6OToicHJvZHVjdF80IjthOjQ6e2k6MDtzOjI6IjY3IjtpOjE7czoyOiI1NSI7aToyO3M6MjoiNTkiO2k6MztzOjI6IjU4Ijt9fQ==', 41, 0),
(15612, 'content', 'listproduct_home3.2fqOaM', 'YToyODp7czo0OiJyYW5kIjtzOjE3OiIwLjMxNzc3MDY2OTEyOTU1OSI7czo2OiJtb2R1bGUiO3M6MjQ6Imxpc3Rwcm9kdWN0X2hvbWUzLjJmcU9hTSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjQ6Imxpc3Rwcm9kdWN0X2hvbWUzLjJmcU9hTSI7czo1OiJ3dHlwZSI7czoxNzoibGlzdHByb2R1Y3RfaG9tZTMiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEwOiJCYWJ5IG5lZWRzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEwOiJCQUJZIE5FRURTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMDoiQkFCWSBORUVEUyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxNToibGlua192aWV3X2FsbF8xIjtzOjE6IiMiO3M6MTU6Imxpbmtfdmlld19hbGxfMiI7czoxOiIjIjtzOjk6InRpdGxlXzFfMSI7czo4OiJGZWF0dXJlZCI7czo5OiJ0aXRsZV8xXzIiO3M6ODoiRmVhdHVyZWQiO3M6MTY6ImNob29zZV9wcm9kdWN0XzEiO3M6MDoiIjtzOjk6InByb2R1Y3RfMSI7YTo1OntpOjA7czoyOiI2MiI7aToxO3M6MjoiNTQiO2k6MjtzOjI6IjYzIjtpOjM7czoyOiI1NiI7aTo0O3M6MjoiNjUiO31zOjk6InRpdGxlXzJfMSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjk6InRpdGxlXzJfMiI7czoxMjoiTmV3IEFycml2YWxzIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8yIjtzOjA6IiI7czo5OiJwcm9kdWN0XzIiO2E6Mzp7aTowO3M6MjoiNjUiO2k6MTtzOjI6IjUyIjtpOjI7czoyOiI1NSI7fXM6OToidGl0bGVfM18xIjtzOjg6IlNhbGUgT2ZmIjtzOjk6InRpdGxlXzNfMiI7czo4OiJTYWxlIE9mZiI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMyI7czowOiIiO3M6OToicHJvZHVjdF8zIjthOjQ6e2k6MDtzOjI6IjU1IjtpOjE7czoyOiI1OSI7aToyO3M6MjoiNzAiO2k6MztzOjI6IjUzIjt9czo5OiJ0aXRsZV80XzEiO3M6MTI6IkJlc3QgU2VsbGVycyI7czo5OiJ0aXRsZV80XzIiO3M6MTI6IkJlc3QgU2VsbGVycyI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfNCI7czowOiIiO3M6OToicHJvZHVjdF80IjthOjU6e2k6MDtzOjI6IjY0IjtpOjE7czoyOiI1NiI7aToyO3M6MjoiNjMiO2k6MztzOjI6IjY1IjtpOjQ7czoyOiI2MSI7fX0=', 41, 0),
(15611, 'content', 'image.ZsgOjQ', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjczNzQ4ODEzNDAyODQ5NzgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5ac2dPalEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5ac2dPalEiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDE6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci0wMS1ob21lLTMuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 41, 0),
(15610, 'content', 'image.Zbkj8a', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjE0ODM3NjEzMjA4ODczMzM1IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuWmJrajhhIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuWmJrajhhIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjQxOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItMDUtaG9tZS0zLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 41, 0),
(15609, 'content', 'image.W90h2u', 'YToxNjp7czo0OiJyYW5kIjtzOjIwOiIwLjAxMzQzNTE3OTc1OTY1NjI0NiI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLlc5MGgydSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLlc5MGgydSI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiaW1nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzoiaW1nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6OToiZWZmZWN0LXY0IjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMjAuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 41, 0),
(15652, 'content', 'product_tabs.kUtfyN', 'YToyODp7czo0OiJyYW5kIjtzOjE4OiIwLjk4MTk4Mjg3NzQyMTY1NDEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X3RhYnMua1V0ZnlOIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF90YWJzLmtVdGZ5TiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF90YWJzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNzoiRkVBVFVSRUQgUFJPRFVDVFMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTc6IkZFQVRVUkVEIFBST0RVQ1RTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNzoiRkVBVFVSRUQgUFJPRFVDVFMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMjoiYm9kZXItYm90dG9tIjtzOjU6ImxpbWl0IjtzOjI6IjEyIjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czoxMToiaWNvbl9uZXdlc3QiO3M6MDoiIjtzOjEzOiJlbmFibGVfbmV3ZXN0IjtzOjE6IjAiO3M6MTM6Imljb25fZmVhdHVyZWQiO3M6MDoiIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjIzOiI3Niw5MSw2Niw4OSw4Myw2Myw1OCw3MiI7czoxNToiZW5hYmxlX2ZlYXR1cmVkIjtzOjE6IjAiO3M6MTU6Imljb25fYmVzdHNlbGxlciI7czowOiIiO3M6MTc6ImVuYWJsZV9iZXN0c2VsbGVyIjtzOjE6IjEiO3M6MTI6Imljb25fc3BlY2lhbCI7czowOiIiO3M6MTQ6ImVuYWJsZV9zcGVjaWFsIjtzOjE6IjEiO3M6MTQ6Imljb25fbW9zdHZpZXdzIjtzOjA6IiI7czoxNjoiZW5hYmxlX21vc3R2aWV3cyI7czoxOiIxIjtzOjk6InRhYnNzdHlsZSI7czo2OiJ0YWItdjEiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjI3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjI5MCI7czo5OiJhdXRvX3BsYXkiO3M6NDoiMzAwMCI7fQ==', 70, 0),
(15651, 'content', 'product_list.xxTCIR', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjMzMzA1OTIzMTM4NjQ4MzUiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QueHhUQ0lSIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0Lnh4VENJUiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiRmVhdHVyZSBQcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiRmVhdHVyZSBQcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IkZlYXR1cmUgUHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6IjI3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzYwIjtzOjk6Imxpc3RfdHlwZSI7czo4OiJmZWF0dXJlZCI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO3M6NzoicHJvZHVjdCI7YTo2OntpOjA7czoyOiI2MSI7aToxO3M6MjoiNjQiO2k6MjtzOjI6IjUyIjtpOjM7czoyOiI2NSI7aTo0O3M6MjoiNTkiO2k6NTtzOjI6IjgwIjt9fQ==', 70, 0),
(15650, 'content', 'product_list.xWvJZm', 'YToxNzp7czo0OiJyYW5kIjtzOjIxOiIwLjAwMTA3NjE1OTE4NTg4NjEwNTMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QueFd2SlptIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LnhXdkpabSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJQb3B1bGFyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlBvcHVsYXIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlBvcHVsYXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxNjoiY2Fyb3VzZWwtc2lkZWJhciI7czo1OiJsaW1pdCI7czoyOiIxNSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjUiO3M6NDoiY29scyI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjI6IjgwIjtzOjY6ImhlaWdodCI7czozOiIxMDciO3M6OToibGlzdF90eXBlIjtzOjc6InBvcHVsYXIiO3M6MTY6ImNob29zZV9wcm9kdWN0XzAiO3M6MDoiIjt9', 70, 0),
(15649, 'content', 'product_list.r2bfSR', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIwNjkzMjIyMDUzMTI3OTEzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LnIyYmZTUiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5yMmJmU1IiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiT24gU2FsZXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6ODoiT24gU2FsZXMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjg6Ik9uIFNhbGVzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTY6ImNhcm91c2VsLXNpZGViYXIiO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI1IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MzoiMTA3IjtzOjk6Imxpc3RfdHlwZSI7czo3OiJzcGVjaWFsIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7fQ==', 70, 0),
(15648, 'content', 'product_list.eJNrB0', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjg5ODk2MDczOTY4NDA3MjIiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuZUpOckIwIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LmVKTnJCMCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6IjI3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzYwIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 70, 0),
(15647, 'content', 'product_deal.XKNuqc', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjkxOTAxNzEzODI2NjU0OTMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuWEtOdXFjIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLlhLTnVxYyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo5OiJIb3QgRGVhbHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6OToiSG90IERlYWxzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo5OiJIb3QgRGVhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJ2ZXJzaW9uLTIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTYtMDYtMTYiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwNDUtMDctMDYiO3M6NToibGltaXQiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjEiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIxIjtzOjk6ImltZ193aWR0aCI7czozOiIzNTAiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiNDY3Ijt9', 70, 0),
(15646, 'content', 'product_deal.iJdCcj', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjc4OTI0NDk5NDYxODMwNDciO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuaUpkQ2NqIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLmlKZENjaiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiVE9EQVkgREVBTFMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IlRPREFZIERFQUxTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiVE9EQVkgREVBTFMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTAtMDItMDMiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMjktMDctMDUiO3M6NToibGltaXQiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIyIjtzOjk6ImltZ193aWR0aCI7czozOiIzMDUiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiMzI4IjtzOjEyOiJjYXRlZ29yeV9pZHMiO2E6MTc6e2k6MDtzOjI6IjcwIjtpOjE7czoyOiI3MSI7aToyO3M6MjoiNzciO2k6MztzOjI6Ijc4IjtpOjQ7czoyOiI4MCI7aTo1O3M6MjoiODUiO2k6NjtzOjI6Ijg2IjtpOjc7czoyOiI5MSI7aTo4O3M6MjoiNjUiO2k6OTtzOjI6IjY2IjtpOjEwO3M6MjoiNjciO2k6MTE7czoyOiI2OCI7aToxMjtzOjI6IjY5IjtpOjEzO3M6MjoiNjQiO2k6MTQ7czoyOiI4MSI7aToxNTtzOjI6Ijc5IjtpOjE2O3M6MjoiNzQiO319', 70, 0),
(15645, 'content', 'image.w1m1io', 'YToyMDp7czo0OiJyYW5kIjtzOjE3OiIwLjU3NjE4MDQ5NzU3MTQzOCI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLncxbTFpbyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLncxbTFpbyI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2MDMtaG9tZS0xLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 70, 0),
(15644, 'content', 'image.uckMYJ', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjg1MTY3OTc3MzA3MjAxNDkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS51Y2tNWUoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS51Y2tNWUoiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6ImJhbm5lciAzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czo0MDoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyLTMtaG9tZS0xLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 70, 0),
(15643, 'content', 'image.rgvB25', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjExMjM1NDU4MTg2ODE2MTUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5yZ3ZCMjUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5yZ3ZCMjUiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjAxLWhvbWU0LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 70, 0),
(15642, 'content', 'image.O1rSeA', 'YToyMDp7czo0OiJyYW5kIjtzOjE3OiIwLjU0MTUxMDY5NjkxMTc0NiI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLk8xclNlQSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLk8xclNlQSI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiYmFubmVyIDEiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjQwOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItMS1ob21lLTEuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 70, 0),
(15641, 'content', 'image.nT6VIS', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjE1MTY5MTI3Mzg2ODMyNDA0IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UublQ2VklTIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UublQ2VklTIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJiYW5uZXIgMiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDA6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci0yLWhvbWUtMS5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjEwIjt9', 70, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(15640, 'content', 'image.kugP3l', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjg2Nzc3NzczNzc3NDIxMDkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5rdWdQM2wiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5rdWdQM2wiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzc6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2FkdjAxLWhvbWUtMS5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 70, 0),
(15639, 'content', 'image.gYiuvk', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjQ5MTIzMjA3ODgzODA4MTUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5nWWl1dmsiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5nWWl1dmsiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzc6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2FkdjAyLWhvbWUtMS5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 70, 0),
(15674, 'content', 'product_tabs.dkICPV', 'YToyODp7czo0OiJyYW5kIjtzOjE3OiIwLjgwNzAwOTk2NTkxNTE5NSI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfdGFicy5ka0lDUFYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X3RhYnMuZGtJQ1BWIjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X3RhYnMiO3M6MTE6IndpZGdldF9uYW1lIjtzOjE3OiJGRUFUVVJFRCBQUk9EVUNUUyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNzoiRkVBVFVSRUQgUFJPRFVDVFMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE3OiJGRUFUVVJFRCBQUk9EVUNUUyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo1OiJsaW1pdCI7czoyOiIxMiI7czo2OiJjb2x1bW4iO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6MTE6Imljb25fbmV3ZXN0IjtzOjA6IiI7czoxMzoiZW5hYmxlX25ld2VzdCI7czoxOiIwIjtzOjEzOiJpY29uX2ZlYXR1cmVkIjtzOjA6IiI7czoxMDoicHJvZHVjdF9pZCI7czoyMzoiNzYsOTEsNjYsODksODMsNjMsNTgsNzIiO3M6MTU6ImVuYWJsZV9mZWF0dXJlZCI7czoxOiIwIjtzOjE1OiJpY29uX2Jlc3RzZWxsZXIiO3M6MDoiIjtzOjE3OiJlbmFibGVfYmVzdHNlbGxlciI7czoxOiIxIjtzOjEyOiJpY29uX3NwZWNpYWwiO3M6MDoiIjtzOjE0OiJlbmFibGVfc3BlY2lhbCI7czoxOiIxIjtzOjE0OiJpY29uX21vc3R2aWV3cyI7czowOiIiO3M6MTY6ImVuYWJsZV9tb3N0dmlld3MiO3M6MToiMSI7czo5OiJ0YWJzc3R5bGUiO3M6NjoidGFiLXYxIjtzOjExOiJpbWFnZV93aWR0aCI7czozOiIyNzAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyOTAiO3M6OToiYXV0b19wbGF5IjtzOjQ6IjMwMDAiO30=', 72, 0),
(15673, 'content', 'product_list.iPsiFA', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjE0NTUxMjc1NzE1ODEzNzE2IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LmlQc2lGQSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5pUHNpRkEiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6NjoiTEFURVNUIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjY6IkxBVEVTVCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6NjoiTEFURVNUIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIxMTAiO3M6NjoiaGVpZ2h0IjtzOjM6IjExOCI7czo5OiJsaXN0X3R5cGUiO3M6NjoibGF0ZXN0IjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7fQ==', 72, 0),
(15672, 'content', 'product_list.Ddjy89', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjYyMjI1OTUyNzUwMTg2ODEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuRGRqeTg5IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LkRkank4OSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiTGF0ZXN0IFByb2R1Y3RzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiJMYXRlc3QgUHJvZHVjdHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJMYXRlc3QgUHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI4IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM2MCI7czo5OiJsaXN0X3R5cGUiO3M6NjoibGF0ZXN0IjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7fQ==', 72, 0),
(15671, 'content', 'product_list.9v0W5Z', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjEyNzA2MzAxNzQ4OTcyMDkzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Ljl2MFc1WiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC45djBXNVoiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiRkVBVFVSRUQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6ODoiRkVBVFVSRUQiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjg6IkZFQVRVUkVEIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIxMTAiO3M6NjoiaGVpZ2h0IjtzOjM6IjExOCI7czo5OiJsaXN0X3R5cGUiO3M6ODoiZmVhdHVyZWQiO3M6MTY6ImNob29zZV9wcm9kdWN0XzAiO3M6MDoiIjtzOjc6InByb2R1Y3QiO2E6Nzp7aTowO3M6MjoiNjEiO2k6MTtzOjI6IjY0IjtpOjI7czoyOiI1MiI7aTozO3M6MjoiNjUiO2k6NDtzOjI6IjU5IjtpOjU7czoyOiI3MSI7aTo2O3M6MjoiNjAiO319', 72, 0),
(15670, 'content', 'product_list.1ZkEwY', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjQwNzAzMTMyMzA0MzUxNzQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuMVprRXdZIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LjFaa0V3WSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiQkVTVCBTRUxMRVJTIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJCRVNUIFNFTExFUlMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJCRVNUIFNFTExFUlMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjM6IjExMCI7czo2OiJoZWlnaHQiO3M6MzoiMTE4IjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 72, 0),
(15669, 'content', 'product_deal.rj9jrL', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjE4ODQ3NjA5MTU2NDkzNzcyIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9kZWFsLnJqOWpyTCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfZGVhbC5yajlqckwiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfZGVhbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTE6IlRPREFZIERFQUxTIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjExOiJUT0RBWSBERUFMUyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTE6IlRPREFZIERFQUxTIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEwOiJzdGFydF9kYXRlIjtzOjEwOiIyMDEwLTAyLTAzIjtzOjg6ImVuZF9kYXRlIjtzOjEwOiIyMDI5LTA3LTA1IjtzOjU6ImxpbWl0IjtzOjE6IjQiO3M6NDoiY29scyI7czoxOiIyIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMiI7czo5OiJpbWdfd2lkdGgiO3M6MzoiMzA1IjtzOjEwOiJpbWdfaGVpZ2h0IjtzOjM6IjMyOCI7czoxMjoiY2F0ZWdvcnlfaWRzIjthOjE3OntpOjA7czoyOiI3MCI7aToxO3M6MjoiNzEiO2k6MjtzOjI6Ijc3IjtpOjM7czoyOiI3OCI7aTo0O3M6MjoiODAiO2k6NTtzOjI6Ijg1IjtpOjY7czoyOiI4NiI7aTo3O3M6MjoiOTEiO2k6ODtzOjI6IjY1IjtpOjk7czoyOiI2NiI7aToxMDtzOjI6IjY3IjtpOjExO3M6MjoiNjgiO2k6MTI7czoyOiI2OSI7aToxMztzOjI6IjY0IjtpOjE0O3M6MjoiODEiO2k6MTU7czoyOiI3OSI7aToxNjtzOjI6Ijc0Ijt9fQ==', 72, 0),
(15608, 'content', 'image.RJAfgm', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjcxNjI3MTM5MzgxMzYwMjciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5SSkFmZ20iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5SSkFmZ20iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDE6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci0wNC1ob21lLTMuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjEwIjt9', 41, 0),
(15607, 'content', 'image.PD9WQh', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjg2NjEyNDUwMzgzOTUwOTIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5QRDlXUWgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5QRDlXUWgiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEwOiJlZmZlY3QtdjEwIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMjcuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 41, 0),
(15606, 'content', 'image.PaOEpe', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjI2MjEzNjgzMzc5ODg1NTkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5QYU9FcGUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5QYU9FcGUiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDE6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci0wMi1ob21lLTMuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 41, 0),
(15605, 'content', 'image.MiXyVZ', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjg3MTU3MTAxODc4NzY3NDgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5NaVh5VloiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5NaVh5VloiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDE6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci0wMy1ob21lLTMuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjEwIjt9', 41, 0),
(15604, 'content', 'image.laA8AJ', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjA3MTUzMzYzMTY1OTQ0MDYiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5sYUE4QUoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5sYUE4QUoiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjIzLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 41, 0),
(15603, 'content', 'image.i6xgcC', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjYwNTM2NDQ1NzY1NjIxNzkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5pNnhnY0MiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5pNnhnY0MiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjI2LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 41, 0),
(20322, 'content', 'icon_box.hVc4Nm', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjA2NzUyNDkxMTAyMTI4ODU1IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guaFZjNE5tIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guaFZjNE5tIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNDoiRnJlZSBFeGNoYW5nZXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTQ6IkZyZWUgRXhjaGFuZ2VzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNDoiRnJlZSBFeGNoYW5nZXMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ljb24tZXhjaGFuZ2UucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NjE6IiZsdDtwJmd0O1dlJ3JlIGNvbW1pdGVkIHRvIHRoZSBwZXJmZWN0IGZpdCwgYWx3YXlzLiZsdDsvcCZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NjE6IiZsdDtwJmd0O1dlJ3JlIGNvbW1pdGVkIHRvIHRoZSBwZXJmZWN0IGZpdCwgYWx3YXlzLiZsdDsvcCZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjA6IiI7czoxMDoidGV4dF9hbGlnbiI7czoxODoiZmVhdHVyZS1ib3gtY2VudGVyIjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 32, 0),
(15602, 'content', 'image.hYey2N', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjM5NjY4MjE0MDAwMDY1MTQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5oWWV5Mk4iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5oWWV5Mk4iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjIxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 41, 0),
(15601, 'content', 'image.E1M8lP', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjUxNDMwMjM3NTA3Mzg1OTEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5FMU04bFAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5FMU04bFAiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjI0LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 41, 0),
(15600, 'content', 'image.2zKx2a', 'YToxNjp7czo0OiJyYW5kIjtzOjE3OiIwLjgyODc3OTY4ODYwODk3NSI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLjJ6S3gyYSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLjJ6S3gyYSI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiaW1nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzoiaW1nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6OToiZWZmZWN0LXY0IjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMjIuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 41, 0),
(15599, 'content', 'icon_box.L7hRuZ', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjI4MjkwNDkzOTc4MTAyMTciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5MN2hSdVoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5MN2hSdVoiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjExOiJPZGVyIG9ubGluZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiT1JERVIgT05MSU5FIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiT1JERVIgT05MSU5FIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjA6IiI7czo5OiJpY29uY2xhc3MiO3M6MTI6ImZhIGZhLW1vYmlsZSI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo0MzoiJmx0O3AmZ3Q7Q2FsbCB1czogKDAxNjkpLTM4OC0xNTU0Jmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo0MzoiJmx0O3AmZ3Q7Q2FsbCB1czogKDAxNjkpLTM4OC0xNTU0Jmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYxIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 41, 0),
(15598, 'content', 'icon_box.KAuB1e', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjM0NTY2NTI2MDc4NzQwOTMzIjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guS0F1QjFlIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guS0F1QjFlIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiMTAwJSBNb25leSBiYWNrIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiIxMDAlIE1PTkVZIEJBQ0siO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiIxMDAlIE1PTkVZIEJBQ0siO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MDoiIjtzOjk6Imljb25jbGFzcyI7czoxMToiZmEgZmEtbW9uZXkiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MzY6IiZsdDtwJmd0OzMwIERheXMgR3VhcmFudGVlJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czozNjoiJmx0O3AmZ3Q7MzAgRGF5cyBHdWFyYW50ZWUmbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 41, 0),
(15597, 'content', 'icon_box.dfHL3h', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjg2MzIzMDczOTQ0NjcyMjciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5kZkhMM2giO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5kZkhMM2giO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjIyOiJHZXQgMTAlIG9mZiBvbiByZW9yZGVyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIyOiJHRVQgMTAlIE9GRiBPTiBSRU9SREVSIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyMjoiR0VUIDEwJSBPRkYgT04gUkVPUkRFUiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjk6ImZhIGZhLXRhZyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czozOToiJmx0O3AmZ3Q7TW9uZXkgU2F2aW5nIFByb2dhbXMmbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjM5OiImbHQ7cCZndDtNb25leSBTYXZpbmcgUHJvZ2FtcyZsdDsvcCZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 41, 0),
(15596, 'content', 'icon_box.a4NAu9', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU0MDI2MjM5MjkxNjM3MTkiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5hNE5BdTkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5hNE5BdTkiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjI1OiJTYWZlICZhbXA7IHNlY3VyZSBwYXltZW50IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjI1OiJTQUZFICZhbXA7IFNFQ1VSRSBQQVlNRU5UIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyNToiU0FGRSAmYW1wOyBTRUNVUkUgUEFZTUVOVCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjEwOiJmYSBmYS1sb2NrIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjQ0OiImbHQ7cCZndDsxMjgtYml0IFNlY3VyZSBFbmNyeXB0aW9uJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo0NDoiJmx0O3AmZ3Q7MTI4LWJpdCBTZWN1cmUgRW5jcnlwdGlvbiZsdDsvcCZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 41, 0),
(15595, 'content', 'html.WR6CLr', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjMwODM0NTQ4NTk5MDY3NzEiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLldSNkNMciI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuV1I2Q0xyIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjI0OiJUZWFwb3QgLSBBa2loaXJvIE5pa2FpZG8iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjQ6IlRlYXBvdCAtIEFraWhpcm8gTmlrYWlkbyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjQ6IlRlYXBvdCAtIEFraWhpcm8gTmlrYWlkbyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxOTA6IiZsdDtkaXYmZ3Q7QSBiZWF1dGlmdWwgdGVhcG90IGhhbmRtYWRlIGJ5IEFraWhpcm8gTmlrYWlkbyBhdCBoaXMgc3R1ZGlvIGluIE1hc2hpa28sIEphcGFuLiBBcyBwYXJ0IG9mIGhpcyAnTWlzdCcgY29sbGVjdGlvbiB0aGlzIHRlYXBvdCBmZWF0dXJlcyBhIHVuaXF1ZSBnbGF6ZSB0aGF0J3MgcXVpdGUgd2lzcHkmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTkwOiImbHQ7ZGl2Jmd0O0EgYmVhdXRpZnVsIHRlYXBvdCBoYW5kbWFkZSBieSBBa2loaXJvIE5pa2FpZG8gYXQgaGlzIHN0dWRpbyBpbiBNYXNoaWtvLCBKYXBhbi4gQXMgcGFydCBvZiBoaXMgJ01pc3QnIGNvbGxlY3Rpb24gdGhpcyB0ZWFwb3QgZmVhdHVyZXMgYSB1bmlxdWUgZ2xhemUgdGhhdCdzIHF1aXRlIHdpc3B5Jmx0Oy9kaXYmZ3Q7Ijt9', 41, 0),
(15594, 'content', 'html.PKfliD', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjc2ODcxNTEyMjAxNDk0NzYiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLlBLZmxpRCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuUEtmbGlEIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjk6IkhhbmQgTWFkZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo5OiJIYW5kIE1hZGUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjk6IkhhbmQgTWFkZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxNjI6IiZsdDtwJmd0O0EgY2VyYW1pYyBpcyBhbiBpbm9yZ2FuaWMsIG5vbm1ldGFsbGljIHNvbGlkIG1hdGVyaWFsIGNvbXByaXNpbmcgbWV0YWwsIG5vbm1ldGFsIG9yIG1ldGFsbG9pZCBhdG9tcyBwcmltYXJpbHkgaGVsZCBpbiBpb25pYyBhbmQgY292YWxlbnQgYm9uZHMuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czoxNjI6IiZsdDtwJmd0O0EgY2VyYW1pYyBpcyBhbiBpbm9yZ2FuaWMsIG5vbm1ldGFsbGljIHNvbGlkIG1hdGVyaWFsIGNvbXByaXNpbmcgbWV0YWwsIG5vbm1ldGFsIG9yIG1ldGFsbG9pZCBhdG9tcyBwcmltYXJpbHkgaGVsZCBpbiBpb25pYyBhbmQgY292YWxlbnQgYm9uZHMuJmx0Oy9wJmd0OyI7fQ==', 41, 0),
(15593, 'content', 'bloglatest.H2GvTY', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjQwNzk4NDYyMDcwNTcxMDMiO3M6NjoibW9kdWxlIjtzOjE3OiJibG9nbGF0ZXN0LkgyR3ZUWSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6ImJsb2dsYXRlc3QuSDJHdlRZIjtzOjU6Ind0eXBlIjtzOjEwOiJibG9nbGF0ZXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiT04gVEhFIEJMT0ciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6Ik9OIFRIRSBCTE9HIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiT04gVEhFIEJMT0ciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIyIjtzOjQ6ImNvbHMiO3M6MToiMiI7czo1OiJsaW1pdCI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjI2MCI7czo2OiJoZWlnaHQiO3M6MzoiMTg1Ijt9', 41, 0),
(15638, 'content', 'image.Di5HZH', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjkyNjQ3MjI5NDk0MjIwMjIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5EaTVIWkgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5EaTVIWkgiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6ImJhbm5lciA3IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czo0OToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyLWNvbHVtbi1jYXRlZ29yeS0yLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 70, 0),
(15637, 'content', 'image.ceUxoL', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjM2NDEwNzE5NzA4Mzk0ODIzIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuY2VVeG9MIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuY2VVeG9MIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJiYW5uZXIgOCI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci1jb2x1bW4tbGFzdC1ob21lNC5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjEwIjt9', 70, 0),
(15636, 'content', 'image.AZrTaD', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjI5MDk0NjA2NzY4MzM2MTMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5BWnJUYUQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5BWnJUYUQiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6ImJhbm5lciA0IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czo0MToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyLWhvbWUtNC0wMS5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjEwIjt9', 70, 0),
(15635, 'content', 'image.AChrHf', 'YToyMDp7czo0OiJyYW5kIjtzOjE3OiIwLjgwODQzNzQ5NTE4MTg5NCI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLkFDaHJIZiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLkFDaHJIZiI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiYmFubmVyIDUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjQxOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItaG9tZS00LTAyLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 70, 0),
(15634, 'content', 'image.7NzkPD', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjY5OTEyNDcxNDU0MTc3MDciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS43TnprUEQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS43TnprUEQiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6ImJhbm5lciA2IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czo0NzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyLWNvbHVtbi1jYXRlZ29yeS5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjEwIjt9', 70, 0),
(15633, 'content', 'icon_box.m5btRX', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU2NTQ1Mjk4NTU2Mzk3NDUiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5tNWJ0UlgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5tNWJ0UlgiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEzOiJGUkVFIFNISVBQSU5HIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEzOiJGUkVFIFNISVBQSU5HIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMzoiRlJFRSBTSElQUElORyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozNToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaWNvbi1ib3gtMS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3NToiJmx0O3AmZ3Q7U3Vycm91bmQgeW91cnNlbGYgd2l0aCBhbmdlbHMuIFRoZXkgZG9uJ3Qgd2FudCB1cyB0byBlYXQmbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjc1OiImbHQ7cCZndDtTdXJyb3VuZCB5b3Vyc2VsZiB3aXRoIGFuZ2Vscy4gVGhleSBkb24ndCB3YW50IHVzIHRvIGVhdCZsdDsvcCZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjA6IiI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 70, 0),
(15632, 'content', 'icon_box.gJl5A5', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIwODM0MDk0Njk4MzkzNzY4IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guZ0psNUE1IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guZ0psNUE1IjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNzoiUkVTUE9OU0lWRSBERVNJR04iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTc6IlJFU1BPTlNJVkUgREVTSUdOIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNzoiUkVTUE9OU0lWRSBERVNJR04iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzU6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ljb24tYm94LTIucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NzU6IiZsdDtwJmd0O1N1cnJvdW5kIHlvdXJzZWxmIHdpdGggYW5nZWxzLiBUaGV5IGRvbid0IHdhbnQgdXMgdG8gZWF0Jmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3NToiJmx0O3AmZ3Q7U3Vycm91bmQgeW91cnNlbGYgd2l0aCBhbmdlbHMuIFRoZXkgZG9uJ3Qgd2FudCB1cyB0byBlYXQmbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czowOiIiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 70, 0),
(15631, 'content', 'icon_box.5t2JKW', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjE5NTE3NDc0MzY1MTEwMTc3IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guNXQySktXIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guNXQySktXIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxOToiMjQvNyBTVVBQT1JUIE9OTElORSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxOToiMjQvNyBTVVBQT1JUIE9OTElORSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTk6IjI0LzcgU1VQUE9SVCBPTkxJTkUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzU6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ljb24tYm94LTMucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NzU6IiZsdDtwJmd0O1N1cnJvdW5kIHlvdXJzZWxmIHdpdGggYW5nZWxzLiBUaGV5IGRvbid0IHdhbnQgdXMgdG8gZWF0Jmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3NToiJmx0O3AmZ3Q7U3Vycm91bmQgeW91cnNlbGYgd2l0aCBhbmdlbHMuIFRoZXkgZG9uJ3Qgd2FudCB1cyB0byBlYXQmbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czowOiIiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 70, 0),
(15629, 'content', 'featured_category.vma2JA', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY5MzkxNjA3Nzg0NDAzMzIiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS52bWEySkEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS52bWEySkEiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo0OiJ2ZXIyIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjE6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ZlYXJ0dXJlLTAyLWhvbWUxLmpwZyI7czoyOiJpZCI7czoyOiI2OSI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIyNzAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIxODUiO30=', 70, 0),
(15630, 'content', 'html.xfFOma', 'YToxMjp7czo0OiJyYW5kIjtzOjE5OiIwLjA2NTc3MjE0MjcxOTcxNjg4IjtzOjY6Im1vZHVsZSI7czoxMToiaHRtbC54ZkZPbWEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjExOiJodG1sLnhmRk9tYSI7czo1OiJ3dHlwZSI7czo0OiJodG1sIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxODoiU0hPUCBCWSBDQVRFR09SSUVTIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjE0NToiJmx0O2RpdiBjbGFzcz0mcXVvdDtwYW5lbC1oZWFkaW5nIHRleHQtY2VudGVyJnF1b3Q7Jmd0OyZsdDtoNCBjbGFzcz0mcXVvdDtwYW5lbC10aXRsZSBwYW5lbC12MSZxdW90OyZndDtTSE9QIEJZIENBVEVHT1JJRVMmbHQ7L2g0Jmd0OyZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czoxNDU6IiZsdDtkaXYgY2xhc3M9JnF1b3Q7cGFuZWwtaGVhZGluZyB0ZXh0LWNlbnRlciZxdW90OyZndDsmbHQ7aDQgY2xhc3M9JnF1b3Q7cGFuZWwtdGl0bGUgcGFuZWwtdjEmcXVvdDsmZ3Q7U0hPUCBCWSBDQVRFR09SSUVTJmx0Oy9oNCZndDsmbHQ7L2RpdiZndDsiO30=', 70, 0),
(15628, 'content', 'featured_category.uaPwn7', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjgwODM2NTQ5MTE3MjYzODEiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS51YVB3bjciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS51YVB3bjciO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiRmVhdHVyZSBNZW4iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaW1hZ2UtZmVhcnR1cmVkLTAzLmpwZyI7czoyOiJpZCI7czoyOiI3NCI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIzNzAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIzNzAiO30=', 70, 0),
(15627, 'content', 'featured_category.OCqb7u', 'YToxMzp7czo0OiJyYW5kIjtzOjE3OiIwLjg5NTY4NzQ1ODYzNjMyMyI7czo2OiJtb2R1bGUiO3M6MjQ6ImZlYXR1cmVkX2NhdGVnb3J5Lk9DcWI3dSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjQ6ImZlYXR1cmVkX2NhdGVnb3J5Lk9DcWI3dSI7czo1OiJ3dHlwZSI7czoxNzoiZmVhdHVyZWRfY2F0ZWdvcnkiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEzOiJGZWF0dXJlIFdvbWVuIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjE6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6NDM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ltYWdlLWZlYXJ0dXJlZC0wMi5qcGciO3M6MjoiaWQiO3M6MjoiODEiO319czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMzcwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMzcwIjt9', 70, 0),
(15626, 'content', 'featured_category.hwTr71', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjQxOTc2NDc0Mzg2OTI5OTUiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5od1RyNzEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5od1RyNzEiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo0OiJ2ZXIyIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjE6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ZlYXJ0dXJlLTAzLWhvbWUxLmpwZyI7czoyOiJpZCI7czoyOiI3NCI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIyNzAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIxODUiO30=', 70, 0),
(15625, 'content', 'featured_category.eIxAuw', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjgxMTg0MTE4NTcyNzYxMjQiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5lSXhBdXciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5lSXhBdXciO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhcnR1cmUtMDEtaG9tZTEuanBnIjtzOjI6ImlkIjtzOjI6IjY0Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjU3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjQwNCI7fQ==', 70, 0),
(15624, 'content', 'featured_category.6kAiOl', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjcyNTM4ODg1MzYzOTQwOTciO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS42a0FpT2wiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS42a0FpT2wiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxOToiRmVhdHVyZSBBY2Nlc3NvcmllcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxOToiY2F0ZWdvcmllc19mZWF0dXJlZCI7YToxOntpOjA7YToyOntzOjU6ImltYWdlIjtzOjQzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWFnZS1mZWFydHVyZWQtMDEuanBnIjtzOjI6ImlkIjtzOjI6IjY0Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjM3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjM3MCI7fQ==', 70, 0),
(15623, 'content', 'featured_category.5fBobU', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjQ2MzIyMzg5MDM1NjIxNTgiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS41ZkJvYlUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS41ZkJvYlUiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxNzoidmVyMyBzcGFjZS10b3AtMzAiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhcnR1cmUtMDQtaG9tZTEuanBnIjtzOjI6ImlkIjtzOjI6Ijc3Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjU3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjE4OSI7fQ==', 70, 0),
(15622, 'content', 'bloglatest.n5MW2B', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjI3NTI3MTA0ODA3OTM5OTYiO3M6NjoibW9kdWxlIjtzOjE3OiJibG9nbGF0ZXN0Lm41TVcyQiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6ImJsb2dsYXRlc3QubjVNVzJCIjtzOjU6Ind0eXBlIjtzOjEwOiJibG9nbGF0ZXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiT04gVEhFIEJMT0ciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6Ik9OIFRIRSBCTE9HIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiT04gVEhFIEJMT0ciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIyIjtzOjQ6ImNvbHMiO3M6MToiMiI7czo1OiJsaW1pdCI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjI2MCI7czo2OiJoZWlnaHQiO3M6MzoiMTg1Ijt9', 70, 0),
(15668, 'content', 'image.WOXdkU', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjQwMjU0ODQ0NjIyMjMxNjU2IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuV09YZGtVIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuV09YZGtVIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJiYW5uZXIgMiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JhbmVyLTItaG9tZTUucG5nIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 72, 0),
(15667, 'content', 'image.why2Um', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjA3ODE5NDIzMzk2ODQ0NTYiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS53aHkyVW0iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS53aHkyVW0iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDE6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci0wMi1ob21lLTUuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjEwIjt9', 72, 0),
(15666, 'content', 'image.W6YpgR', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjI0ODcwMzQ5MTA1Mjc3OTQ1IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuVzZZcGdSIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuVzZZcGdSIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjQxOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItMDEtaG9tZS01LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 72, 0),
(15665, 'content', 'image.V8gJD3', 'YToyMDp7czo0OiJyYW5kIjtzOjE3OiIwLjM0Nzk2NjgwMDMzMzAwMSI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLlY4Z0pEMyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLlY4Z0pEMyI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czo0MToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyLTAzLWhvbWUtNS5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 72, 0),
(15664, 'content', 'image.qPgX7W', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjA2NzA5NDAwNjY0NTI2MTIyIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UucVBnWDdXIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UucVBnWDdXIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJiYW5uZXIgMSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjIwOiJiYW5uZXItZ3JvdXAtZmVhdHVyZSI7czo5OiJpbWFnZWZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JhbmVyLTEtaG9tZTUuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 72, 0),
(15663, 'content', 'icon_box.vZu77T', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjY5MDk5NjM4MTk1NDg1MjQiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC52WnU3N1QiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC52WnU3N1QiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE3OiJSRVNQT05TSVZFIERFU0lHTiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNzoiUkVTUE9OU0lWRSBERVNJR04iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE3OiJSRVNQT05TSVZFIERFU0lHTiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaWNvbi1ib3gtMi1ob21lLTUucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NzU6IiZsdDtwJmd0O1N1cnJvdW5kIHlvdXJzZWxmIHdpdGggYW5nZWxzLiBUaGV5IGRvbid0IHdhbnQgdXMgdG8gZWF0Jmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3NToiJmx0O3AmZ3Q7U3Vycm91bmQgeW91cnNlbGYgd2l0aCBhbmdlbHMuIFRoZXkgZG9uJ3Qgd2FudCB1cyB0byBlYXQmbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czowOiIiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 72, 0),
(15662, 'content', 'icon_box.JBtz3V', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjA5OTUzMTUwMDU5MTM2OTI4IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guSkJ0ejNWIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guSkJ0ejNWIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxOToiMjQvNyBTVVBQT1JUIE9OTElORSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxOToiMjQvNyBTVVBQT1JUIE9OTElORSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTk6IjI0LzcgU1VQUE9SVCBPTkxJTkUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ljb24tYm94LTMtaG9tZS01LnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjc1OiImbHQ7cCZndDtTdXJyb3VuZCB5b3Vyc2VsZiB3aXRoIGFuZ2Vscy4gVGhleSBkb24ndCB3YW50IHVzIHRvIGVhdCZsdDsvcCZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NzU6IiZsdDtwJmd0O1N1cnJvdW5kIHlvdXJzZWxmIHdpdGggYW5nZWxzLiBUaGV5IGRvbid0IHdhbnQgdXMgdG8gZWF0Jmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MDoiIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 72, 0),
(15661, 'content', 'icon_box.26CfDR', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjE5MTA0MzIwMTkwODI2MDQiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC4yNkNmRFIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC4yNkNmRFIiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEzOiJGUkVFIFNISVBQSU5HIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEzOiJGUkVFIFNISVBQSU5HIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMzoiRlJFRSBTSElQUElORyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaWNvbi1ib3gtMS1ob21lLTUucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NzU6IiZsdDtwJmd0O1N1cnJvdW5kIHlvdXJzZWxmIHdpdGggYW5nZWxzLiBUaGV5IGRvbid0IHdhbnQgdXMgdG8gZWF0Jmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3NToiJmx0O3AmZ3Q7U3Vycm91bmQgeW91cnNlbGYgd2l0aCBhbmdlbHMuIFRoZXkgZG9uJ3Qgd2FudCB1cyB0byBlYXQmbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czowOiIiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 72, 0),
(15660, 'content', 'html.6x9pPW', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjQ0ODIyNDk5MTc0MzM1OTQiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLjZ4OXBQVyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuNng5cFBXIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjE4OiJTSE9QIEJZIENBVEVHT1JJRVMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTQ1OiImbHQ7ZGl2IGNsYXNzPSZxdW90O3BhbmVsLWhlYWRpbmcgdGV4dC1jZW50ZXImcXVvdDsmZ3Q7Jmx0O2g0IGNsYXNzPSZxdW90O3BhbmVsLXRpdGxlIHBhbmVsLXYxJnF1b3Q7Jmd0O1NIT1AgQlkgQ0FURUdPUklFUyZsdDsvaDQmZ3Q7Jmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjE0NToiJmx0O2RpdiBjbGFzcz0mcXVvdDtwYW5lbC1oZWFkaW5nIHRleHQtY2VudGVyJnF1b3Q7Jmd0OyZsdDtoNCBjbGFzcz0mcXVvdDtwYW5lbC10aXRsZSBwYW5lbC12MSZxdW90OyZndDtTSE9QIEJZIENBVEVHT1JJRVMmbHQ7L2g0Jmd0OyZsdDsvZGl2Jmd0OyI7fQ==', 72, 0),
(15659, 'content', 'featured_category.t8DjUt', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY3MTY0NzAwODA5NTEyNTYiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS50OERqVXQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS50OERqVXQiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo0OiJ2ZXIyIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjE6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ZlYXR1cmVkLTAyLWhvbWUyLmpwZyI7czoyOiJpZCI7czoyOiI2OSI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIzNzAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIzMzMiO30=', 72, 0),
(15658, 'content', 'featured_category.t7BsBV', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjU2MzA5NTM0NjMyMDU0ODYiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS50N0JzQlYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS50N0JzQlYiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo0OiJ2ZXIyIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjE6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ZlYXR1cmVkLTAxLWhvbWUyLmpwZyI7czoyOiJpZCI7czoyOiI2NCI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIzNzAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIzMzMiO30=', 72, 0),
(15657, 'content', 'featured_category.rPFNKX', 'YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjA5OTIyNTkyMDcxNTg0NzI0IjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuclBGTktYIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuclBGTktYIjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6MTk6IkZlYXR1cmUgQWNjZXNzb3JpZXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo4OiJ2ZXJzaW9uMiI7czoxOToiY2F0ZWdvcmllc19mZWF0dXJlZCI7YToxOntpOjA7YToyOntzOjU6ImltYWdlIjtzOjQxOiJjYXRhbG9nL2RlbW8vYmFubmVycy9mZWF0dXJlLTAxLWhvbWU1LmpwZyI7czoyOiJpZCI7czoyOiI2NCI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiI2MDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiI2MDAiO30=', 72, 0),
(15656, 'content', 'featured_category.OOnYta', 'YToxMzp7czo0OiJyYW5kIjtzOjE2OiIwLjU5MjYzODEwNDMwNTIyIjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuT09uWXRhIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuT09uWXRhIjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6MTM6IkZlYXR1cmUgV29tZW4iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo4OiJ2ZXJzaW9uMiI7czoxOToiY2F0ZWdvcmllc19mZWF0dXJlZCI7YToxOntpOjA7YToyOntzOjU6ImltYWdlIjtzOjQxOiJjYXRhbG9nL2RlbW8vYmFubmVycy9mZWF0dXJlLTAyLWhvbWU1LmpwZyI7czoyOiJpZCI7czoyOiI4MSI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiI2MDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiI2MDAiO30=', 72, 0),
(15655, 'content', 'featured_category.dILOBQ', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjc3NjMxMDkzNTMzMDc2MzEiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5kSUxPQlEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5kSUxPQlEiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo0OiJ2ZXIyIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjE6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ZlYXR1cmVkLTAzLWhvbWUyLmpwZyI7czoyOiJpZCI7czoyOiI3NyI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIzNzAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIzMzMiO30=', 72, 0),
(15653, 'content', 'bloglatest.s6qWzP', 'YToxNTp7czo0OiJyYW5kIjtzOjE5OiIwLjQyMzc4MjMzMTQ1OTA4Njk1IjtzOjY6Im1vZHVsZSI7czoxNzoiYmxvZ2xhdGVzdC5zNnFXelAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE3OiJibG9nbGF0ZXN0LnM2cVd6UCI7czo1OiJ3dHlwZSI7czoxMDoiYmxvZ2xhdGVzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkxhdGVzdCBCbG9ncyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiTGF0ZXN0IEJsb2dzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiTGF0ZXN0IEJsb2dzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo0OiJjb2xzIjtzOjE6IjMiO3M6NToibGltaXQiO3M6MToiNiI7czo1OiJ3aWR0aCI7czozOiIzNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjE4OSI7fQ==', 72, 0),
(15654, 'content', 'featured_category.DbJr8y', 'YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjA1ODYxODA0MTg2MzU0MTE0IjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuRGJKcjh5IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuRGJKcjh5IjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6MjI6IkZlYXR1cmUgQ29zbWV0aWMgY2FzZXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxOToidmVyc2lvbjIgZmVhcnR1cmVkMiI7czoxOToiY2F0ZWdvcmllc19mZWF0dXJlZCI7YToxOntpOjA7YToyOntzOjU6ImltYWdlIjtzOjQxOiJjYXRhbG9nL2RlbW8vYmFubmVycy9mZWF0dXJlLTAzLWhvbWU1LmpwZyI7czoyOiJpZCI7czoyOiI2NSI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiI2MDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyODUiO30=', 72, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(20432, 'content', 'interactive_banner.s9n7Ec', 'YToyNDp7czo0OiJyYW5kIjtzOjE5OiIwLjA4NzEzNTA3OTA5MDY2MDQzIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLnM5bjdFYyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5zOW43RWMiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2MDMtaG9tZS0xLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM3MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3MDoiJmx0O3AmZ3Q7Q2hvb3NpbmcgVGhlIEJlc3QmbHQ7L3AmZ3Q7DQombHQ7cCZndDtQaG90byBQcmludGVyJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3MDoiJmx0O3AmZ3Q7Q2hvb3NpbmcgVGhlIEJlc3QmbHQ7L3AmZ3Q7DQombHQ7cCZndDtQaG90byBQcmludGVyJmx0Oy9wJmd0OyI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTEiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fQ==', 83, 0),
(20433, 'content', 'product_tabs_first.avv9vs', 'YToyODp7czo0OiJyYW5kIjtzOjE4OiIwLjY3OTMzMTk5MjAxNjI1NzMiO3M6NjoibW9kdWxlIjtzOjI1OiJwcm9kdWN0X3RhYnNfZmlyc3QuYXZ2OXZzIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToicHJvZHVjdF90YWJzX2ZpcnN0LmF2djl2cyI7czo1OiJ3dHlwZSI7czoxODoicHJvZHVjdF90YWJzX2ZpcnN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6NjoiY29sdW1uIjtzOjE6IjIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjExOiJpY29uX25ld2VzdCI7czowOiIiO3M6MTM6ImVuYWJsZV9uZXdlc3QiO3M6MToiMSI7czoxMzoiaWNvbl9mZWF0dXJlZCI7czowOiIiO3M6MTA6InByb2R1Y3RfaWQiO3M6MDoiIjtzOjE1OiJlbmFibGVfZmVhdHVyZWQiO3M6MToiMSI7czoxNToiaWNvbl9iZXN0c2VsbGVyIjtzOjA6IiI7czoxNzoiZW5hYmxlX2Jlc3RzZWxsZXIiO3M6MToiMSI7czoxMjoiaWNvbl9zcGVjaWFsIjtzOjA6IiI7czoxNDoiZW5hYmxlX3NwZWNpYWwiO3M6MToiMSI7czoxNDoiaWNvbl9tb3N0dmlld3MiO3M6MDoiIjtzOjE2OiJlbmFibGVfbW9zdHZpZXdzIjtzOjE6IjAiO3M6OToidGFic3N0eWxlIjtzOjY6InRhYi12MSI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiNTcwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiNTcwIjtzOjk6ImF1dG9fcGxheSI7czo0OiIzMDAwIjt9', 83, 0),
(20434, 'content', 'interactive_banner.nXV6II', 'YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjU4MDYzNjA2MDUwMzAzOTQiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIublhWNklJIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLm5YVjZJSSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM3OiJjYXRhbG9nL2RlbW8vYmFubmVycy9hZHYwNS1ob21lLTEuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzcwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjYyOiImbHQ7cCZndDtQaGlsb3NvcGh5IEFzIEEmbHQ7L3AmZ3Q7DQombHQ7cCZndDtTY2llbmNlJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo2MjoiJmx0O3AmZ3Q7UGhpbG9zb3BoeSBBcyBBJmx0Oy9wJmd0Ow0KJmx0O3AmZ3Q7U2NpZW5jZSZsdDsvcCZndDsiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjExIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO30=', 83, 0),
(20431, 'content', 'interactive_banner.rGrUaK', 'YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjU3MzE2MDU3MTY3NjMzMjgiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuckdyVWFLIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLnJHclVhSyI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM3OiJjYXRhbG9nL2RlbW8vYmFubmVycy9hZHYwMS1ob21lLTEuanBnIjtzOjU6IndpZHRoIjtzOjM6IjU3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzcwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjcwOiImbHQ7cCZndDtLbm93IFlvdXJzZWxmICBZb3VyJmx0Oy9wJmd0Ow0KJmx0O3AmZ3Q7SW5uZXIgUG93ZXImbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjcwOiImbHQ7cCZndDtLbm93IFlvdXJzZWxmICBZb3VyJmx0Oy9wJmd0Ow0KJmx0O3AmZ3Q7SW5uZXIgUG93ZXImbHQ7L3AmZ3Q7IjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMSI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9', 83, 0),
(20421, 'content', 'bloglatest.xCoz8E', 'YToxNTp7czo0OiJyYW5kIjtzOjE5OiIwLjQxNjUwNzM1NDczMzYwNTU2IjtzOjY6Im1vZHVsZSI7czoxNzoiYmxvZ2xhdGVzdC54Q296OEUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE3OiJibG9nbGF0ZXN0LnhDb3o4RSI7czo1OiJ3dHlwZSI7czoxMDoiYmxvZ2xhdGVzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkxhdGVzdCBibG9ncyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiTGF0ZXN0IGJsb2dzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiTGF0ZXN0IGJsb2dzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo0OiJjb2xzIjtzOjE6IjMiO3M6NToibGltaXQiO3M6MToiNiI7czo1OiJ3aWR0aCI7czozOiIzNTAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI0NiI7fQ==', 83, 0),
(20422, 'content', 'featured_category.1SebyQ', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY0ODM0NzAzNTg4NzUwMDEiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS4xU2VieVEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS4xU2VieVEiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhcnR1cmVkMDMtaG9tZTEuanBnIjtzOjI6ImlkIjtzOjI6IjY0Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjM3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjM3MCI7fQ==', 83, 0),
(20450, 'content', 'interactive_banner.7Eg8Th', 'YToyNDp7czo0OiJyYW5kIjtzOjE5OiIwLjA1MDgzMTQxODA0MjgzODY0IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjdFZzhUaCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci43RWc4VGgiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2MDEtaG9tZS0xLmpwZyI7czo1OiJ3aWR0aCI7czozOiI1NzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM3MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3MDoiJmx0O3AmZ3Q7S25vdyBZb3Vyc2VsZiAgWW91ciZsdDsvcCZndDsNCiZsdDtwJmd0O0lubmVyIFBvd2VyJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3MDoiJmx0O3AmZ3Q7S25vdyBZb3Vyc2VsZiAgWW91ciZsdDsvcCZndDsNCiZsdDtwJmd0O0lubmVyIFBvd2VyJmx0Oy9wJmd0OyI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTEiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fQ==', 88, 0),
(20449, 'content', 'product_tabs_first.epDL75', 'YToyODp7czo0OiJyYW5kIjtzOjE5OiIwLjA4NTAwNDk2Njg0NzQxOTMyIjtzOjY6Im1vZHVsZSI7czoyNToicHJvZHVjdF90YWJzX2ZpcnN0LmVwREw3NSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6InByb2R1Y3RfdGFic19maXJzdC5lcERMNzUiO3M6NToid3R5cGUiO3M6MTg6InByb2R1Y3RfdGFic19maXJzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjI6IjEyIjtzOjY6ImNvbHVtbiI7czoxOiIyIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czoxMToiaWNvbl9uZXdlc3QiO3M6MDoiIjtzOjEzOiJlbmFibGVfbmV3ZXN0IjtzOjE6IjEiO3M6MTM6Imljb25fZmVhdHVyZWQiO3M6MDoiIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjUzOiI5Myw1Miw1NCw2NSw3NCw2MSw3Niw2OSw1OSw4Myw3OSw4Miw1Myw4MCw2Nyw3NSw3Nyw3NCI7czoxNToiZW5hYmxlX2ZlYXR1cmVkIjtzOjE6IjAiO3M6MTU6Imljb25fYmVzdHNlbGxlciI7czowOiIiO3M6MTc6ImVuYWJsZV9iZXN0c2VsbGVyIjtzOjE6IjEiO3M6MTI6Imljb25fc3BlY2lhbCI7czowOiIiO3M6MTQ6ImVuYWJsZV9zcGVjaWFsIjtzOjE6IjAiO3M6MTQ6Imljb25fbW9zdHZpZXdzIjtzOjA6IiI7czoxNjoiZW5hYmxlX21vc3R2aWV3cyI7czoxOiIwIjtzOjk6InRhYnNzdHlsZSI7czo2OiJ0YWItdjEiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjU3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjU3MCI7czo5OiJhdXRvX3BsYXkiO3M6NDoiMzAwMCI7fQ==', 88, 0),
(20448, 'content', 'product_list.vxTSQQ', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjU2MzY4MTk5OTgxNDI0MTciO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QudnhUU1FRIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LnZ4VFNRUSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJUb3AgUmF0ZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo4OiJUb3AgUmF0ZSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6ODoiVG9wIFJhdGUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6IndpZGdldF9zdHlsZSI7czoxNToicHJvZHVjdHMtbW9kdWxlIjtzOjU6ImxpbWl0IjtzOjE6IjIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIyIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIzMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjMwMCI7czo5OiJsaXN0X3R5cGUiO3M6OToidG9wcmF0aW5nIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7fQ==', 88, 0),
(20447, 'content', 'product_list.njx9w2', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjQyMzk4NDI4MjM3ODM4OTAzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Lm5qeDl3MiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5uang5dzIiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiU2FsZSBPZmYiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6ODoiU2FsZSBPZmYiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjg6IlNhbGUgT2ZmIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEyOiJ3aWRnZXRfc3R5bGUiO3M6MTU6InByb2R1Y3RzLW1vZHVsZSI7czo1OiJsaW1pdCI7czoxOiIyIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMiI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMzAwIjtzOjY6ImhlaWdodCI7czozOiIzMDAiO3M6OToibGlzdF90eXBlIjtzOjc6InNwZWNpYWwiO3M6MTY6ImNob29zZV9wcm9kdWN0XzAiO3M6MDoiIjt9', 88, 0),
(20446, 'content', 'product_list.3QRC5f', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjE4NDc0OTk5NDk1MzUzODcyIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LjNRUkM1ZiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC4zUVJDNWYiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTU6IkxhdGVzdCBQcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNToiTGF0ZXN0IFByb2R1Y3RzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNToiTGF0ZXN0IFByb2R1Y3RzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEyOiJ3aWRnZXRfc3R5bGUiO3M6MTU6InByb2R1Y3RzLW1vZHVsZSI7czo1OiJsaW1pdCI7czoxOiIyIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMiI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMzAwIjtzOjY6ImhlaWdodCI7czozOiIzMDAiO3M6OToibGlzdF90eXBlIjtzOjY6ImxhdGVzdCI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 88, 0),
(20430, 'content', 'interactive_banner.Q5koFU', 'YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjY5NzExNTYwNjI0NjgxOTMiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuUTVrb0ZVIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlE1a29GVSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM3OiJjYXRhbG9nL2RlbW8vYmFubmVycy9hZHYwMi1ob21lLTEuanBnIjtzOjU6IndpZHRoIjtzOjM6IjU3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzcwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjcxOiImbHQ7cCZndDtIYXJuZXNzIFRoZSBQb3dlciZsdDsvcCZndDsNCiZsdDtwJmd0O09mIFlvdXIgRHJlYW1zJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3MToiJmx0O3AmZ3Q7SGFybmVzcyBUaGUgUG93ZXImbHQ7L3AmZ3Q7DQombHQ7cCZndDtPZiBZb3VyIERyZWFtcyZsdDsvcCZndDsiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjExIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO30=', 83, 0),
(20425, 'content', 'html.jFMhPQ', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjcwNzM5ODk4MzQyNDU4NTUiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLmpGTWhQUSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuakZNaFBRIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo2MTU6IiZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyIHRleHQtY2VudGVyJnF1b3Q7Jmd0Ow0KCSZsdDtzdHJvbmcmZ3Q7TmVlZCB3ZSBzYXkgbW9yZT8mbHQ7L3N0cm9uZyZndDsNCgkmbHQ7cCZndDtGcmVlIFNoaXBwaW5nIG9uIE9yZGVycyBvdmVyICQ5OS45OSZsdDsvcCZndDsNCiZsdDsvZGl2Jmd0Ow0KJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctNCBjb2wtbWQtNCBjb2wtc20tNCBjb2wteHMtMTIgdGV4dC1jZW50ZXImcXVvdDsmZ3Q7DQoJJmx0O3N0cm9uZyZndDtGcmVlIGV4Y2hhbmdlcyZsdDsvc3Ryb25nJmd0Ow0KCSZsdDtwJmd0O1dlJ3JlIGNvbW1pdGVkIHRvIHRoZSBwZXJmZWN0IGZpdCwgYWx3YXlzLiZsdDsvcCZndDsNCiZsdDsvZGl2Jmd0Ow0KJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctNCBjb2wtbWQtNCBjb2wtc20tNCBjb2wteHMtMTIgdGV4dC1jZW50ZXImcXVvdDsmZ3Q7DQoJJmx0O3N0cm9uZyZndDszMC1EYXkgcmV0dXJuJmx0Oy9zdHJvbmcmZ3Q7DQoJJmx0O3AmZ3Q7SWYgeW91IGRvbid0IGxvdmUgaXQsIHlvdSBoYXZlIDYwIGRheXMgdG8gcmV0dXJuIGl0LiZsdDsvcCZndDsNCiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo2MTU6IiZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyIHRleHQtY2VudGVyJnF1b3Q7Jmd0Ow0KCSZsdDtzdHJvbmcmZ3Q7TmVlZCB3ZSBzYXkgbW9yZT8mbHQ7L3N0cm9uZyZndDsNCgkmbHQ7cCZndDtGcmVlIFNoaXBwaW5nIG9uIE9yZGVycyBvdmVyICQ5OS45OSZsdDsvcCZndDsNCiZsdDsvZGl2Jmd0Ow0KJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctNCBjb2wtbWQtNCBjb2wtc20tNCBjb2wteHMtMTIgdGV4dC1jZW50ZXImcXVvdDsmZ3Q7DQoJJmx0O3N0cm9uZyZndDtGcmVlIGV4Y2hhbmdlcyZsdDsvc3Ryb25nJmd0Ow0KCSZsdDtwJmd0O1dlJ3JlIGNvbW1pdGVkIHRvIHRoZSBwZXJmZWN0IGZpdCwgYWx3YXlzLiZsdDsvcCZndDsNCiZsdDsvZGl2Jmd0Ow0KJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctNCBjb2wtbWQtNCBjb2wtc20tNCBjb2wteHMtMTIgdGV4dC1jZW50ZXImcXVvdDsmZ3Q7DQoJJmx0O3N0cm9uZyZndDszMC1EYXkgcmV0dXJuJmx0Oy9zdHJvbmcmZ3Q7DQoJJmx0O3AmZ3Q7SWYgeW91IGRvbid0IGxvdmUgaXQsIHlvdSBoYXZlIDYwIGRheXMgdG8gcmV0dXJuIGl0LiZsdDsvcCZndDsNCiZsdDsvZGl2Jmd0OyI7fQ==', 83, 0),
(20426, 'content', 'icon_box.8NGQJj', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjg4OTExNTkyMTUyMTI0NjMiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC44TkdRSmoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC44TkdRSmoiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE3OiJOZWVkIHdlIHNheSBtb3JlPyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNzoiTmVlZCB3ZSBzYXkgbW9yZT8iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE3OiJOZWVkIHdlIHNheSBtb3JlPyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaWNvbi1mcmVlc2hpcC5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo1MToiJmx0O3AmZ3Q7RnJlZSBTaGlwcGluZyBvbiBPcmRlcnMgb3ZlciAkNDkmbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjUxOiImbHQ7cCZndDtGcmVlIFNoaXBwaW5nIG9uIE9yZGVycyBvdmVyICQ0OSZsdDsvcCZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjA6IiI7czoxMDoidGV4dF9hbGlnbiI7czoxODoiZmVhdHVyZS1ib3gtY2VudGVyIjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 83, 0),
(20427, 'content', 'icon_box.H55yLr', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjg2NzE5OTIwMTA4Mzc3MzciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5INTV5THIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5INTV5THIiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiI2MC1EYXkgUmV0dXJucyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiNjAtRGF5IFJldHVybnMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiI2MC1EYXkgUmV0dXJucyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozNjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaWNvbi1zZWxsZXIucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NzE6IiZsdDtwJmd0O0lmIHlvdSBkb24ndCBsb3ZlIGl0LCB5b3UgaGF2ZSA2MCBkYXlzIHRvIHJldHVybiBpdC4mbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjcxOiImbHQ7cCZndDtJZiB5b3UgZG9uJ3QgbG92ZSBpdCwgeW91IGhhdmUgNjAgZGF5cyB0byByZXR1cm4gaXQuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MDoiIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE4OiJmZWF0dXJlLWJveC1jZW50ZXIiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 83, 0),
(20428, 'content', 'icon_box.wgLhqX', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjM0NTAyNjAxMjQ2MzA2ODIiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC53Z0xocVgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC53Z0xocVgiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJGcmVlIEV4Y2hhbmdlcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiRnJlZSBFeGNoYW5nZXMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJGcmVlIEV4Y2hhbmdlcyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaWNvbi1leGNoYW5nZS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo2MToiJmx0O3AmZ3Q7V2UncmUgY29tbWl0ZWQgdG8gdGhlIHBlcmZlY3QgZml0LCBhbHdheXMuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo2MToiJmx0O3AmZ3Q7V2UncmUgY29tbWl0ZWQgdG8gdGhlIHBlcmZlY3QgZml0LCBhbHdheXMuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MDoiIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE4OiJmZWF0dXJlLWJveC1jZW50ZXIiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 83, 0),
(20445, 'content', 'product_deal.yv4lYU', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjUzMDA2MzAyOTc0ODY5ODYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwueXY0bFlVIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLnl2NGxZVSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiQmVzdCBvZmZlcnMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IkJlc3Qgb2ZmZXJzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiQmVzdCBvZmZlcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMjoid293IGZhZGVJblVwIjtzOjEwOiJzdGFydF9kYXRlIjtzOjEwOiIyMDA1LTAzLTAyIjtzOjg6ImVuZF9kYXRlIjtzOjEwOiIyMDI2LTAyLTI2IjtzOjU6ImxpbWl0IjtzOjE6IjYiO3M6NDoiY29scyI7czoxOiIzIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo5OiJpbWdfd2lkdGgiO3M6MzoiMzAwIjtzOjEwOiJpbWdfaGVpZ2h0IjtzOjM6IjMwMCI7czoxMjoiY2F0ZWdvcnlfaWRzIjthOjE3OntpOjA7czoyOiI2NSI7aToxO3M6MjoiNjYiO2k6MjtzOjI6IjY3IjtpOjM7czoyOiI2OCI7aTo0O3M6MjoiNzAiO2k6NTtzOjI6IjcxIjtpOjY7czoyOiI3NyI7aTo3O3M6MjoiNzgiO2k6ODtzOjI6IjgwIjtpOjk7czoyOiI4NSI7aToxMDtzOjI6Ijg2IjtpOjExO3M6MjoiOTEiO2k6MTI7czoyOiI2OSI7aToxMztzOjI6IjY0IjtpOjE0O3M6MjoiODEiO2k6MTU7czoyOiI3OSI7aToxNjtzOjI6Ijc0Ijt9fQ==', 88, 0),
(20444, 'content', 'image.RsQPbu', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjQ5Nzg4OTE5NDA0MTc0MDUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5Sc1FQYnUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5Sc1FQYnUiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjE0OiJzcGFjZS10b3AtYmFzZSI7czo5OiJpbWFnZWZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Fkdi0wMi1ob21lLTMuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NiI7fQ==', 88, 0),
(20443, 'content', 'image.1vbiJQ', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjgyMjYzMzcxODc1NzcyOTMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS4xdmJpSlEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS4xdmJpSlEiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Fkdi0wMS1ob21lLTMuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NiI7fQ==', 88, 0),
(20442, 'content', 'featured_category.N5OZum', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjk3OTM1OTc5NjMxMDYxNzEiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5ONU9adW0iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5ONU9adW0iO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhcnR1cmVkMDEtaG9tZTEuanBnIjtzOjI6ImlkIjtzOjI6Ijg1Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjM3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjM3MCI7fQ==', 88, 0),
(20441, 'content', 'featured_category.HvdvyO', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjI3NjI4MTM4ODYzMTQzNDYiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5IdmR2eU8iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5IdmR2eU8iO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhcnR1cmVkMDMtaG9tZTEuanBnIjtzOjI6ImlkIjtzOjI6IjY0Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjM3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjM3MCI7fQ==', 88, 0),
(20440, 'content', 'featured_category.BtpAiO', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjcxNzU5MzQyODU4NTkyMzgiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5CdHBBaU8iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5CdHBBaU8iO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhcnR1cmVkMDItaG9tZTEuanBnIjtzOjI6ImlkIjtzOjI6IjY3Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjM3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjM3MCI7fQ==', 88, 0),
(20439, 'content', 'emarket_listproduct.ptxLfq', 'YToyMTp7czo0OiJyYW5kIjtzOjE5OiIwLjIxNDUxODkyNjQ1MjU1MjY2IjtzOjY6Im1vZHVsZSI7czoyNjoiZW1hcmtldF9saXN0cHJvZHVjdC5wdHhMZnEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI2OiJlbWFya2V0X2xpc3Rwcm9kdWN0LnB0eExmcSI7czo1OiJ3dHlwZSI7czoxOToiZW1hcmtldF9saXN0cHJvZHVjdCI7czoxMToid2lkZ2V0X25hbWUiO3M6OToiSG90IGl0ZW1zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjk6IkhvdCBpdGVtcyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6OToiSG90IGl0ZW1zIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MjU6InNwYWNlLXRvcC01NSB3b3cgZmFkZUluVXAiO3M6NToibGlua3MiO2E6NDp7aTowO3M6MjoiNjUiO2k6MTtzOjI6IjY3IjtpOjI7czoyOiI3MCI7aTozO3M6MjoiNzciO31zOjU6ImxpbWl0IjtzOjE6IjYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMyI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMjQwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMjQwIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjE3OiI1Nyw2MCw5Myw3MCw2Miw4MCI7czoxMDoiYmFubmVyX2ltZyI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyLWVtYXJrZXQtMDQuanBnIjtzOjk6ImltZ19jbGFzcyI7czoxOiI0IjtzOjc6ImJfd2lkdGgiO3M6MzoiMjg4IjtzOjg6ImJfaGVpZ2h0IjtzOjM6IjMxMyI7fQ==', 88, 0),
(20435, 'content', 'bloglatest.CMYkc9', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjcwOTE4MjI1NjgzMzA2MzUiO3M6NjoibW9kdWxlIjtzOjE3OiJibG9nbGF0ZXN0LkNNWWtjOSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6ImJsb2dsYXRlc3QuQ01Za2M5IjtzOjU6Ind0eXBlIjtzOjEwOiJibG9nbGF0ZXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTGF0ZXN0IGJsb2dzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJMYXRlc3QgYmxvZ3MiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJMYXRlc3QgYmxvZ3MiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMyI7czo1OiJsaW1pdCI7czoxOiI2IjtzOjU6IndpZHRoIjtzOjM6IjM1MCI7czo2OiJoZWlnaHQiO3M6MzoiMjQ2Ijt9', 88, 0),
(20436, 'content', 'bloglatest_version_2.yrElL9', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjg2ODU2ODU0MzUwODg3MTkiO3M6NjoibW9kdWxlIjtzOjI3OiJibG9nbGF0ZXN0X3ZlcnNpb25fMi55ckVsTDkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI3OiJibG9nbGF0ZXN0X3ZlcnNpb25fMi55ckVsTDkiO3M6NToid3R5cGUiO3M6MjA6ImJsb2dsYXRlc3RfdmVyc2lvbl8yIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTGF0ZXN0IGJsb2dzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJMYXRlc3QgYmxvZ3MiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjExOiJCbG9nIGxhdGVzdCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEwOiJibG9nLWhvbWUzIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMiI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToibGltaXQiO3M6MToiMiI7czo1OiJ3aWR0aCI7czozOiI2MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjQyMSI7fQ==', 88, 0),
(20437, 'content', 'emarket_listproduct.cLMLot', 'YToyMTp7czo0OiJyYW5kIjtzOjE4OiIwLjkzODc5OTIwNTIzMDY5NzkiO3M6NjoibW9kdWxlIjtzOjI2OiJlbWFya2V0X2xpc3Rwcm9kdWN0LmNMTUxvdCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjY6ImVtYXJrZXRfbGlzdHByb2R1Y3QuY0xNTG90IjtzOjU6Ind0eXBlIjtzOjE5OiJlbWFya2V0X2xpc3Rwcm9kdWN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo5OiJOZXcgaXRlbXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6OToiTmV3IGl0ZW1zIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo5OiJOZXcgaXRlbXMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNToic3BhY2UtdG9wLTU1IHdvdyBmYWRlSW5VcCI7czo1OiJsaW5rcyI7YTo0OntpOjA7czoyOiI2NiI7aToxO3M6MjoiNjgiO2k6MjtzOjI6IjcxIjtpOjM7czoyOiI3OCI7fXM6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjExOiJpbWFnZV93aWR0aCI7czozOiIyNDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyNDAiO3M6MTA6InByb2R1Y3RfaWQiO3M6MTc6IjY2LDg4LDcyLDk2LDk1LDk0IjtzOjEwOiJiYW5uZXJfaW1nIjtzOjQyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItZW1hcmtldC0wNS5qcGciO3M6OToiaW1nX2NsYXNzIjtzOjE6IjQiO3M6NzoiYl93aWR0aCI7czozOiIyODgiO3M6ODoiYl9oZWlnaHQiO3M6MzoiMzEzIjt9', 88, 0),
(20438, 'content', 'emarket_listproduct.mF9M5C', 'YToyMTp7czo0OiJyYW5kIjtzOjE4OiIwLjg1ODkzMTEwMzUxMzQzNDQiO3M6NjoibW9kdWxlIjtzOjI2OiJlbWFya2V0X2xpc3Rwcm9kdWN0Lm1GOU01QyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjY6ImVtYXJrZXRfbGlzdHByb2R1Y3QubUY5TTVDIjtzOjU6Ind0eXBlIjtzOjE5OiJlbWFya2V0X2xpc3Rwcm9kdWN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJTYWxlIG9mZiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo4OiJTYWxlIG9mZiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6ODoiU2FsZSBvZmYiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNToic3BhY2UtdG9wLTU1IHdvdyBmYWRlSW5VcCI7czo1OiJsaW5rcyI7YTo0OntpOjA7czoyOiI4MCI7aToxO3M6MjoiODUiO2k6MjtzOjI6IjY0IjtpOjM7czoyOiI3NCI7fXM6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjExOiJpbWFnZV93aWR0aCI7czozOiIyNDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyNDAiO3M6MTA6InByb2R1Y3RfaWQiO3M6MTc6IjcyLDcwLDYyLDc0LDc1LDUyIjtzOjEwOiJiYW5uZXJfaW1nIjtzOjQyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItZW1hcmtldC0wNi5qcGciO3M6OToiaW1nX2NsYXNzIjtzOjE6IjQiO3M6NzoiYl93aWR0aCI7czozOiIyODgiO3M6ODoiYl9oZWlnaHQiO3M6MzoiMzEzIjt9', 88, 0),
(20462, 'content', 'interactive_banner.qmsz7X', 'YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjQ2OTYwODkxNDUxMTk4NjYiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIucW1zejdYIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLnFtc3o3WCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM3OiJjYXRhbG9nL2RlbW8vYmFubmVycy9hZHYtaG9tZTQtMDIuanBnIjtzOjU6IndpZHRoIjtzOjM6IjY0MCI7czo2OiJoZWlnaHQiO3M6MzoiMzcwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjcwOiImbHQ7cCZndDtLbm93IFlvdXJzZWxmICBZb3VyJmx0Oy9wJmd0Ow0KJmx0O3AmZ3Q7SW5uZXIgUG93ZXImbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjcwOiImbHQ7cCZndDtLbm93IFlvdXJzZWxmICBZb3VyJmx0Oy9wJmd0Ow0KJmx0O3AmZ3Q7SW5uZXIgUG93ZXImbHQ7L3AmZ3Q7IjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMSI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9', 94, 0),
(20461, 'content', 'interactive_banner.cIQQV1', 'YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjM2MjQ1OTgwNjMyOTY0NjUiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuY0lRUVYxIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmNJUVFWMSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM3OiJjYXRhbG9nL2RlbW8vYmFubmVycy9hZHYtaG9tZTQtMDEuanBnIjtzOjU6IndpZHRoIjtzOjM6IjY0MCI7czo2OiJoZWlnaHQiO3M6MzoiMzcwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjcyOiImbHQ7cCZndDtEZWNvcmF0ZSBGb3IgTGVzcyBXaXRoIEFydCZsdDsvcCZndDsNCiZsdDtwJmd0O1Bvc3RlciZsdDsvcCZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NzI6IiZsdDtwJmd0O0RlY29yYXRlIEZvciBMZXNzIFdpdGggQXJ0Jmx0Oy9wJmd0Ow0KJmx0O3AmZ3Q7UG9zdGVyJmx0Oy9wJmd0OyI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTEiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fQ==', 94, 0),
(20460, 'content', 'product_tabs_first.6TIG2a', 'YToyODp7czo0OiJyYW5kIjtzOjE5OiIwLjA5NDc2MzIwMDA0NTQ3NjExIjtzOjY6Im1vZHVsZSI7czoyNToicHJvZHVjdF90YWJzX2ZpcnN0LjZUSUcyYSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6InByb2R1Y3RfdGFic19maXJzdC42VElHMmEiO3M6NToid3R5cGUiO3M6MTg6InByb2R1Y3RfdGFic19maXJzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6NToicmlnaHQiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6NjoiY29sdW1uIjtzOjE6IjIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjExOiJpY29uX25ld2VzdCI7czowOiIiO3M6MTM6ImVuYWJsZV9uZXdlc3QiO3M6MToiMSI7czoxMzoiaWNvbl9mZWF0dXJlZCI7czowOiIiO3M6MTA6InByb2R1Y3RfaWQiO3M6NTM6IjkzLDUyLDU0LDY1LDc0LDYxLDc2LDY5LDU5LDgzLDc5LDgyLDUzLDgwLDY3LDc1LDc3LDc0IjtzOjE1OiJlbmFibGVfZmVhdHVyZWQiO3M6MToiMCI7czoxNToiaWNvbl9iZXN0c2VsbGVyIjtzOjA6IiI7czoxNzoiZW5hYmxlX2Jlc3RzZWxsZXIiO3M6MToiMCI7czoxMjoiaWNvbl9zcGVjaWFsIjtzOjA6IiI7czoxNDoiZW5hYmxlX3NwZWNpYWwiO3M6MToiMCI7czoxNDoiaWNvbl9tb3N0dmlld3MiO3M6MDoiIjtzOjE2OiJlbmFibGVfbW9zdHZpZXdzIjtzOjE6IjAiO3M6OToidGFic3N0eWxlIjtzOjY6InRhYi12MSI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiNTcwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiNTcwIjtzOjk6ImF1dG9fcGxheSI7czo0OiIzMDAwIjt9', 94, 0),
(20459, 'content', 'product_list.ZeMleg', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjI5Mzk4OTQ4NDUyNDY5MzMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuWmVNbGVnIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlplTWxlZyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiQmVzdCBTZWxsZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IkJlc3QgU2VsbGVyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiQmVzdCBTZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6IndpZGdldF9zdHlsZSI7czowOiIiO3M6NToibGltaXQiO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjMwMCI7czo2OiJoZWlnaHQiO3M6MzoiMzAwIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 94, 0),
(20458, 'content', 'product_list.GDZgrC', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjM4NjgxODA5MjgxNzU5ODgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuR0RaZ3JDIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LkdEWmdyQyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJUb3AgUmF0ZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo4OiJUb3AgUmF0ZSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6ODoiVG9wIFJhdGUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6IndpZGdldF9zdHlsZSI7czoxNToicHJvZHVjdHMtbW9kdWxlIjtzOjU6ImxpbWl0IjtzOjE6IjIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIyIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIzMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjMwMCI7czo5OiJsaXN0X3R5cGUiO3M6OToidG9wcmF0aW5nIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7fQ==', 94, 0),
(20457, 'content', 'product_list.FGyUdK', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjM1NTM1OTc1MDM3NjYyMzI2IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LkZHeVVkSyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5GR3lVZEsiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTU6IkxhdGVzdCBQcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNToiTGF0ZXN0IFByb2R1Y3RzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNToiTGF0ZXN0IFByb2R1Y3RzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEyOiJ3aWRnZXRfc3R5bGUiO3M6MTU6InByb2R1Y3RzLW1vZHVsZSI7czo1OiJsaW1pdCI7czoxOiIyIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMiI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMzAwIjtzOjY6ImhlaWdodCI7czozOiIzMDAiO3M6OToibGlzdF90eXBlIjtzOjY6ImxhdGVzdCI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 94, 0),
(20456, 'content', 'product_list.1eUs1X', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjU5NTg0MTQ3MDI5NDU1OTEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuMWVVczFYIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LjFlVXMxWCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJTYWxlIE9mZiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo4OiJTYWxlIE9mZiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6ODoiU2FsZSBPZmYiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6IndpZGdldF9zdHlsZSI7czoxNToicHJvZHVjdHMtbW9kdWxlIjtzOjU6ImxpbWl0IjtzOjE6IjIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIyIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIzMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjMwMCI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 94, 0),
(20455, 'content', 'icon_box.yWNHnY', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjQxNjczOTY3NzQzMTc5MTUiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC55V05IblkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC55V05IblkiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiI2MC1EYXkgUmV0dXJucyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiNjAtRGF5IFJldHVybnMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiI2MC1EYXkgUmV0dXJucyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozNjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaWNvbi1zZWxsZXIucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NzE6IiZsdDtwJmd0O0lmIHlvdSBkb24ndCBsb3ZlIGl0LCB5b3UgaGF2ZSA2MCBkYXlzIHRvIHJldHVybiBpdC4mbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjcxOiImbHQ7cCZndDtJZiB5b3UgZG9uJ3QgbG92ZSBpdCwgeW91IGhhdmUgNjAgZGF5cyB0byByZXR1cm4gaXQuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MDoiIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE4OiJmZWF0dXJlLWJveC1jZW50ZXIiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 94, 0),
(20454, 'content', 'icon_box.j2iaXE', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc3MzQ5NjYyNDkwMzgxMzUiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5qMmlhWEUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5qMmlhWEUiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE3OiJOZWVkIHdlIHNheSBtb3JlPyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNzoiTmVlZCB3ZSBzYXkgbW9yZT8iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE3OiJOZWVkIHdlIHNheSBtb3JlPyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaWNvbi1leGNoYW5nZS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo1MToiJmx0O3AmZ3Q7RnJlZSBTaGlwcGluZyBvbiBPcmRlcnMgb3ZlciAkNDkmbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjUxOiImbHQ7cCZndDtGcmVlIFNoaXBwaW5nIG9uIE9yZGVycyBvdmVyICQ0OSZsdDsvcCZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjA6IiI7czoxMDoidGV4dF9hbGlnbiI7czoxODoiZmVhdHVyZS1ib3gtY2VudGVyIjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 94, 0),
(20453, 'content', 'icon_box.f2hcQF', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk1MzQ0MzUwNDMzNjI2MzIiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5mMmhjUUYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5mMmhjUUYiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJGcmVlIEV4Y2hhbmdlcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiRnJlZSBFeGNoYW5nZXMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJGcmVlIEV4Y2hhbmdlcyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaWNvbi1leGNoYW5nZS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo2MToiJmx0O3AmZ3Q7V2UncmUgY29tbWl0ZWQgdG8gdGhlIHBlcmZlY3QgZml0LCBhbHdheXMuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo2MToiJmx0O3AmZ3Q7V2UncmUgY29tbWl0ZWQgdG8gdGhlIHBlcmZlY3QgZml0LCBhbHdheXMuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MDoiIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE4OiJmZWF0dXJlLWJveC1jZW50ZXIiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 94, 0),
(20452, 'content', 'bloglatest.cdgHj0', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjgxNDY4NjQ1MTI4ODI2MDMiO3M6NjoibW9kdWxlIjtzOjE3OiJibG9nbGF0ZXN0LmNkZ0hqMCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6ImJsb2dsYXRlc3QuY2RnSGowIjtzOjU6Ind0eXBlIjtzOjEwOiJibG9nbGF0ZXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTGF0ZXN0IGJsb2dzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJMYXRlc3QgYmxvZ3MiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJMYXRlc3QgYmxvZ3MiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMyI7czo1OiJsaW1pdCI7czoxOiI2IjtzOjU6IndpZHRoIjtzOjM6IjM1MCI7czo2OiJoZWlnaHQiO3M6MzoiMjQ2Ijt9', 94, 0),
(20337, 'content', 'interactive_banner.errrIc', 'YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjMwMjQ0MTg5MDIyOTEzNjYiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuZXJyckljIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmVycnJJYyI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM3OiJjYXRhbG9nL2RlbW8vYmFubmVycy9hZHYwNS1ob21lLTEuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzcwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjYyOiImbHQ7cCZndDtQaGlsb3NvcGh5IEFzIEEmbHQ7L3AmZ3Q7DQombHQ7cCZndDtTY2llbmNlJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo2MjoiJmx0O3AmZ3Q7UGhpbG9zb3BoeSBBcyBBJmx0Oy9wJmd0Ow0KJmx0O3AmZ3Q7U2NpZW5jZSZsdDsvcCZndDsiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjExIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO30=', 32, 0),
(20429, 'content', 'interactive_banner.g4eufz', 'YToyNDp7czo0OiJyYW5kIjtzOjE5OiIwLjE3ODM1ODQ3NzU5NjczMzA3IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmc0ZXVmeiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5nNGV1ZnoiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2MDQtaG9tZS0xLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM3MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo5ODoiJmx0O3AmZ3Q7Q291bnRpbmcgWW91ciZsdDsvcCZndDsNCiZsdDtwJmd0O0NoaWNrZW4gQmVmb3JlIFRoZXkmbHQ7L3AmZ3Q7DQombHQ7cCZndDtIYXRjaCZsdDsvcCZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6OTg6IiZsdDtwJmd0O0NvdW50aW5nIFlvdXImbHQ7L3AmZ3Q7DQombHQ7cCZndDtDaGlja2VuIEJlZm9yZSBUaGV5Jmx0Oy9wJmd0Ow0KJmx0O3AmZ3Q7SGF0Y2gmbHQ7L3AmZ3Q7IjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMSI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9', 83, 0),
(20451, 'content', 'interactive_banner.HgAoAR', 'YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjMxMjgzNzM0MzQzNTEyMDgiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuSGdBb0FSIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLkhnQW9BUiI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM3OiJjYXRhbG9nL2RlbW8vYmFubmVycy9hZHYwMi1ob21lLTEuanBnIjtzOjU6IndpZHRoIjtzOjM6IjU3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzcwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjcxOiImbHQ7cCZndDtIYXJuZXNzIFRoZSBQb3dlciZsdDsvcCZndDsNCiZsdDtwJmd0O09mIFlvdXIgRHJlYW1zJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czowOiIiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjExIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO30=', 88, 0),
(20316, 'content', 'featured_category.KaVf9D', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjkyNDA0MDAwNjA2MzY2MDkiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5LYVZmOUQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5LYVZmOUQiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNDoiT3VyIGNhdGVnb3JpZXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTQ6Ik9VUiBDT0xMRUNUSU9OIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiT1VSIENBVEVHT1JJRVMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6NDp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0NToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhdHVyZS1jYXRlZ29yeS1kb2cucG5nIjtzOjI6ImlkIjtzOjI6IjcxIjt9aToxO2E6Mjp7czo1OiJpbWFnZSI7czo0NToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhdHVyZS1jYXRlZ29yeS1jYXQucG5nIjtzOjI6ImlkIjtzOjI6Ijg2Ijt9aToyO2E6Mjp7czo1OiJpbWFnZSI7czo0NzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhdHVyZS1jYXRlZ29yeS1iaXJ0aC5wbmciO3M6MjoiaWQiO3M6MjoiNzUiO31pOjM7YToyOntzOjU6ImltYWdlIjtzOjQ4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9mZWF0dXJlLWNhdGVnb3J5LWZpc2hlZC5wbmciO3M6MjoiaWQiO3M6MjoiOTAiO319czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMjQ4IjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMjQ4Ijt9', 32, 0),
(20424, 'content', 'featured_category.uQHpH1', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY5MzkwNTA5OTgzMTUyMDIiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS51UUhwSDEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS51UUhwSDEiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhcnR1cmVkMDEtaG9tZTEuanBnIjtzOjI6ImlkIjtzOjI6Ijg1Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjM3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjM3MCI7fQ==', 83, 0),
(20423, 'content', 'featured_category.a5J0x5', 'YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjAzNTUzODE4NDA4MjQ5NDQzIjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuYTVKMHg1IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuYTVKMHg1IjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjE6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ZlYXJ0dXJlZDAyLWhvbWUxLmpwZyI7czoyOiJpZCI7czoyOiI2NyI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIzNzAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIzNzAiO30=', 83, 0),
(20463, 'content', 'interactive_banner.WY9NtW', 'YToyNDp7czo0OiJyYW5kIjtzOjE3OiIwLjkwMDIyMjc3MTAyNTgyMyI7czo2OiJtb2R1bGUiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5XWTlOdFciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuV1k5TnRXIjtzOjU6Ind0eXBlIjtzOjE4OiJpbnRlcmFjdGl2ZV9iYW5uZXIiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzc6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Fkdi1ob21lNC0wMy5qcGciO3M6NToid2lkdGgiO3M6MzoiNjQwIjtzOjY6ImhlaWdodCI7czozOiIzNzAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NzE6IiZsdDtwJmd0O0hhcm5lc3MgVGhlIFBvd2VyJmx0Oy9wJmd0Ow0KJmx0O3AmZ3Q7T2YgWW91ciBEcmVhbXMmbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjcxOiImbHQ7cCZndDtIYXJuZXNzIFRoZSBQb3dlciZsdDsvcCZndDsNCiZsdDtwJmd0O09mIFlvdXIgRHJlYW1zJmx0Oy9wJmd0OyI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTEiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fQ==', 94, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(66, 'White', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/020.jpg', 10, 1, '150.0000', 0, 9, '2015-09-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-09-16 10:36:55', '2017-01-12 23:20:22'),
(67, 'Black', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/008.jpg', 8, 1, '150.0000', 0, 9, '2015-09-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-09-16 10:48:19', '2017-01-12 23:12:03'),
(53, 'Green light', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/002.jpg', 10, 1, '100.0000', 0, 9, '2015-09-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-09-16 08:48:26', '2017-01-12 23:02:10'),
(54, 'White', '', '', '', '', '', '', '', 992, 6, 'catalog/demo/product/011.jpg', 6, 1, '100.0000', 4, 9, '2015-09-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-09-16 08:54:23', '2017-01-12 23:17:25'),
(59, 'Pink', '', '', '', '', '', '', '', 997, 6, 'catalog/demo/product/010.jpg', 7, 1, '220.0000', 0, 9, '2015-09-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2015-09-16 09:45:17', '2017-01-12 23:17:15'),
(61, 'White', '', '', '', '', '', '', '', 997, 6, 'catalog/demo/product/016.jpg', 7, 1, '180.0000', 0, 9, '2015-09-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2015-09-16 09:54:04', '2017-01-12 23:18:47'),
(65, 'Red', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/012.jpg', 9, 1, '99.0000', 0, 9, '2015-09-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-09-16 10:28:56', '2017-01-12 23:17:38'),
(52, 'White', '', '', '', '', '', '', '', 996, 6, 'catalog/demo/product/004.jpg', 8, 1, '100.0000', 0, 9, '2015-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2015-09-15 17:27:04', '2017-01-12 23:02:49'),
(69, 'Gold', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/009.jpg', 10, 1, '150.0000', 0, 9, '2015-09-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-09-16 11:00:20', '2017-01-12 23:12:14'),
(72, 'gold', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/001.jpg', 6, 1, '100.0000', 0, 9, '2016-06-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-06-21 23:41:29', '2017-01-12 23:02:01'),
(73, 'red', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/021.jpg', 9, 1, '120.0000', 0, 9, '2016-06-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-06-21 23:46:27', '2017-01-12 23:20:38'),
(74, 'red', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/015.jpg', 7, 1, '120.0000', 0, 9, '2016-06-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-06-21 23:48:52', '2017-01-12 23:18:31'),
(75, 'green', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/007.jpg', 6, 1, '111.0000', 0, 9, '2016-06-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-06-21 23:50:51', '2017-01-12 23:11:38'),
(76, 'pink', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/012.jpg', 7, 1, '100.0000', 0, 9, '2016-06-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 5, '2016-06-21 23:52:51', '2017-01-12 23:01:01'),
(77, 'pink', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/013.jpg', 8, 1, '160.0000', 0, 9, '2016-06-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-06-21 23:55:01', '2017-01-12 23:17:59'),
(79, 'gold', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/018.jpg', 5, 1, '100.0000', 0, 9, '2016-06-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-06-22 00:00:57', '2017-01-12 23:19:22'),
(80, 'brow', '', '', '', '', '', '', '', 998, 6, 'catalog/demo/product/005.jpg', 9, 1, '88.0000', 0, 9, '2016-06-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-06-22 00:02:46', '2017-01-12 23:03:09'),
(82, 'black', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/023.jpg', 6, 1, '120.0000', 0, 9, '2016-06-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-06-22 00:07:43', '2017-01-12 23:21:31'),
(83, 'white', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/017.jpg', 8, 1, '50.0000', 0, 9, '2016-06-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-06-25 00:26:49', '2017-01-12 23:19:02'),
(84, 'Red', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/024.jpg', 9, 1, '40.0000', 0, 9, '2016-06-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-06-25 00:36:38', '2017-01-12 23:21:58'),
(86, 'white', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/019.jpg', 5, 1, '70.0000', 0, 9, '2016-06-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-06-25 00:48:18', '2017-01-12 23:20:02'),
(93, 'seven color', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/003.jpg', 5, 1, '32.0000', 0, 9, '2016-08-02', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-08-02 22:32:39', '2017-01-12 23:02:30'),
(95, 'black', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/014.jpg', 7, 1, '222.0000', 0, 9, '2016-08-02', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-08-02 22:45:01', '2017-01-12 23:18:22'),
(96, 'white', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/006.jpg', 10, 1, '180.0000', 0, 9, '2016-08-02', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2016-08-02 22:48:51', '2017-01-12 23:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(72, 1, 'Art Deco Green Jade Designer Dangle Earrings', '&lt;p&gt;The precedent for the furniture designed by Salvador Dalí is the famous sofa in the shape of a mouth, which the artist created together with Oscar Tusquets in 1972 for the Mae West room at the Dalí Museum in Figueres.&lt;/p&gt;', '', 'Art Deco Green Jade Designer Dangle Earrings', '', ''),
(73, 2, 'White Gold Natural Geode Charm Pendant', '&lt;p&gt;When Sadi Ozis first designed the Fishnet chair in Turkey in 1959 it was ahead of its time. Today, its timeless character is evident. Sadi Ozis wove fishnet between the bent tubular steel framework, using innovation due to the lack of available materials due to the Second World War.&lt;/p&gt;', '', 'White Gold Natural Geode Charm Pendant', '', ''),
(73, 1, 'White Gold Natural Geode Charm Pendant', '&lt;p&gt;When Sadi Ozis first designed the Fishnet chair in Turkey in 1959 it was ahead of its time. Today, its timeless character is evident. Sadi Ozis wove fishnet between the bent tubular steel framework, using innovation due to the lack of available materials due to the Second World War.&lt;/p&gt;', '', 'White Gold Natural Geode Charm Pendant', '', ''),
(54, 1, 'Handmade Geode Pave Diamond Bangle Jewelry', '&lt;p&gt;Along with his colleagues Charles and Ray Eames and George Nelson, Alexander Girard was one of the leading figures in American design during the postwar era. While textile design was the primary focus of Girard''s oeuvre, he was also admired for his work in the graphic arts as well as furniture, exhibition and interior design.&lt;/p&gt;', '', 'Handmade Geode Pave Diamond Bangle Jewelry', '', ''),
(54, 2, 'Handmade Geode Pave Diamond Bangle Jewelry', '&lt;p&gt;Along with his colleagues Charles and Ray Eames and George Nelson, Alexander Girard was one of the leading figures in American design during the postwar era. While textile design was the primary focus of Girard''s oeuvre, he was also admired for his work in the graphic arts as well as furniture, exhibition and interior design.&lt;/p&gt;', '', 'Handmade Geode Pave Diamond Bangle Jewelry', '', ''),
(93, 1, 'Blue Sapphire Double Sided Ball Earrings', '&lt;p&gt;In the mid-1940s, Charles and Ray Eames began designing toys and furniture for children, including moulded plywood animals, colorful building blocks and whimsical masks. “We have to take pleasure seriously,” said Charles Eames, and the Hang-It-All is an example of this mantra.&lt;/p&gt;', '', 'Blue Sapphire Double Sided Ball Earrings', '', ''),
(93, 2, 'Blue Sapphire Double Sided Ball Earrings', '&lt;p&gt;In the mid-1940s, Charles and Ray Eames began designing toys and furniture for children, including moulded plywood animals, colorful building blocks and whimsical masks. “We have to take pleasure seriously,” said Charles Eames, and the Hang-It-All is an example of this mantra.&lt;/p&gt;', '', 'Blue Sapphire Double Sided Ball Earrings', '', ''),
(96, 1, 'Especial Women Opal Pave Diamond Stud Earrings', '&lt;p&gt;The sofa compact''s striking profile and crisp, light scale evolved from a built-in sofa that Charles &amp;amp; Ray Eames designed for the living room of their Pacific Palisades home. Knowing this makes the name ''Compact'' seem less curious for a sofa that''s over 1800mm long and provides such comfortable support from shoulders to knees.&lt;/p&gt;', '', 'Especial Women Opal Pave Diamond Stud Earrings', '', ''),
(59, 1, 'Grey Agate Pave Diamond Double Ball Tunnel Earrings', '&lt;p&gt;The Utility Collection is a series of seating inspired by a sense of utility, representing the word’s economic definition for a preference over something good for service, function and efficiency.&lt;/p&gt;', '', 'Grey Agate Pave Diamond Double Ball Tunnel Earrings', '', ''),
(59, 2, 'Grey Agate Pave Diamond Double Ball Tunnel Earrings', '&lt;p&gt;The Utility Collection is a series of seating inspired by a sense of utility, representing the word’s economic definition for a preference over something good for service, function and efficiency.&lt;/p&gt;', '', 'Grey Agate Pave Diamond Double Ball Tunnel Earrings', '', ''),
(61, 1, 'Rose Gold Baguette Ruby Stud Earrings', '&lt;p&gt;Designed by George Nelson, Vitra’s Wall Clocks are icons of modern design. Sunburst features arms made from beech wood and an acrylic-lacquered metal body. Nelson created his Wall Clocks between 1948 and 1960 as part of his aim of bringing modern design into the home.&lt;/p&gt;', 'Acqua', 'Rose Gold Baguette Ruby Stud Earrings', '', ''),
(61, 2, 'Rose Gold Baguette Ruby Stud Earrings', '&lt;p&gt;Designed by George Nelson, Vitra’s Wall Clocks are icons of modern design. Sunburst features arms made from beech wood and an acrylic-lacquered metal body. Nelson created his Wall Clocks between 1948 and 1960 as part of his aim of bringing modern design into the home.&lt;/p&gt;', '', 'Rose Gold Baguette Ruby Stud Earrings', '', ''),
(66, 1, 'White Gold Jade Carved Women Stud Earrings', '&lt;p&gt;Bolster Sofa Group is an inviting and versatile range. The sofa''s horizontal proportions project lightness and airiness while still anchoring the room. Within the seat, multiple types of foam offer exceptional support for upright sitting, while a long, slim top cushion adds softness for lounging.&lt;/p&gt;', '', 'Bolster Sofa Group Club Setee', '', ''),
(53, 2, 'Black Onyx &amp; Jade Carved Dangle Earrings Jewelry', '&lt;p&gt;The architect and designer Alexander Girard was one of the leading figures in American design during the postwar era. His passion for colours, patterns and textures found expression in the field of textile design, which was a focal part of his oeuvre.&lt;/p&gt;', '', 'Black Onyx &amp; Jade Carved Dangle Earrings Jewelry', '', ''),
(53, 1, 'Black Onyx &amp; Jade Carved Dangle Earrings Jewelry', '&lt;p&gt;The architect and designer Alexander Girard was one of the leading figures in American design during the postwar era. His passion for colours, patterns and textures found expression in the field of textile design, which was a focal part of his oeuvre.&lt;/p&gt;', '', 'Black Onyx &amp; Jade Carved Dangle Earrings Jewelry', '', ''),
(69, 1, 'Gold Pave Diamond Jade Carved Stud Earrings', '&lt;p&gt;The Anywhere Case is an agile work tool that allows you to work more effectively in different working environments or locations. It provides a personal area to organise your desk top efficiently, especially in shared working environments which focus on activity based working.&lt;/p&gt;', '', 'Gold Pave Diamond Jade Carved Stud Earrings', '', ''),
(69, 2, 'Gold Pave Diamond Jade Carved Stud Earrings', '&lt;p&gt;The Anywhere Case is an agile work tool that allows you to work more effectively in different working environments or locations. It provides a personal area to organise your desk top efficiently, especially in shared working environments which focus on activity based working.&lt;/p&gt;', '', 'Gold Pave Diamond Jade Carved Stud Earrings', '', ''),
(67, 1, 'Gold Geode Designer Ruby Dangle Earrings', '&lt;p&gt;Jaime Hayon is the most intriguing figure in new Spanish design. He has energy, talent and a style of his own, which are all distilled into the Showtime collection he has designed for BD Barcelona Design, the most prestigious Spanish design company.&lt;/p&gt;', '', 'Gold Geode Designer Ruby Dangle Earrings', '', ''),
(67, 2, 'Gold Geode Designer Ruby Dangle Earrings', '&lt;p&gt;Jaime Hayon is the most intriguing figure in new Spanish design. He has energy, talent and a style of his own, which are all distilled into the Showtime collection he has designed for BD Barcelona Design, the most prestigious Spanish design company.&lt;/p&gt;', '', 'Gold Geode Designer Ruby Dangle Earrings', '', ''),
(52, 1, 'Aquamarine Double Sided Ball Earrings', '&lt;p&gt;The textile of the TILE cushions are especially developed with the skilled designers and crafts people of the Norwegian textile mill Gudbrandsdalens Uldvarefabrik, who have been weaving premium quality wool textiles in the factory since 1884.&lt;/p&gt;', '', 'Aquamarine Double Sided Ball Earrings', '', ''),
(52, 2, 'Aquamarine Double Sided Ball Earrings', '&lt;p&gt;The textile of the TILE cushions are especially developed with the skilled designers and crafts people of the Norwegian textile mill Gudbrandsdalens Uldvarefabrik, who have been weaving premium quality wool textiles in the factory since 1884.&lt;/p&gt;', '', 'Aquamarine Double Sided Ball Earrings', '', ''),
(65, 1, 'Jade Carved Designer Butterfly Ring', '&lt;p&gt;In the mid-1960s, Alexander Girard designed this richly hued throw blanket as part of an astounding 17,543-item brand identity system—from logo to lounge furniture to bag tags—for Braniff International Airways.&lt;/p&gt;', '', 'Jade Carved Designer Butterfly Ring', '', ''),
(65, 2, 'Jade Carved Designer Butterfly Ring', '&lt;p&gt;In the mid-1960s, Alexander Girard designed this richly hued throw blanket as part of an astounding 17,543-item brand identity system—from logo to lounge furniture to bag tags—for Braniff International Airways.&lt;/p&gt;', '', 'Jade Carved Designer Butterfly Ring', '', ''),
(74, 1, 'Pearl Ruby Pave Double Sided Stud Earrings', '&lt;p&gt;With its distinctive eye-shaped design, this wall clock by George Nelson is as much an artwork and decorative object as a timepiece. It’s made from satin brass, with a walnut crossbar, black centrepiece and hour markers, a white hour hand and orange minute hands.&lt;/p&gt;', '', 'Pearl Ruby Pave Double Sided Stud Earrings', '', ''),
(74, 2, 'Pearl Ruby Pave Double Sided Stud Earrings', '&lt;p&gt;With its distinctive eye-shaped design, this wall clock by George Nelson is as much an artwork and decorative object as a timepiece. It’s made from satin brass, with a walnut crossbar, black centrepiece and hour markers, a white hour hand and orange minute hands.&lt;/p&gt;', '', 'Pearl Ruby Pave Double Sided Stud Earrings', '', ''),
(75, 1, 'Geode Designer Bangle Jewelry For Women', '&lt;p&gt;France is a hyper graphic rug, typical of Nathalie du Pasquier bold and colorful style.&lt;/p&gt;', '', 'Geode Designer Bangle Jewelry For Women', '', ''),
(75, 2, 'Geode Designer Bangle Jewelry For Women', '&lt;p&gt;France is a hyper graphic rug, typical of Nathalie du Pasquier bold and colorful style.&lt;/p&gt;', '', 'Geode Designer Bangle Jewelry For Women', '', ''),
(77, 1, 'New Arrival Opal Doublet Pave Diamond Dangle Earrings', '&lt;p&gt;TINA RATZER ON THE DESIGN “The idea was to create a geometric rug with multiple layers and dimensions. I wanted to give the first layer an easy understandable language and balanced color scheme.&lt;/p&gt;', '', 'New Arrival Opal Doublet Pave Diamond Dangle Earrings', '', ''),
(77, 2, 'New Arrival Opal Doublet Pave Diamond Dangle Earrings', '&lt;p&gt;TINA RATZER ON THE DESIGN “The idea was to create a geometric rug with multiple layers and dimensions. I wanted to give the first layer an easy understandable language and balanced color scheme.&lt;/p&gt;', '', 'New Arrival Opal Doublet Pave Diamond Dangle Earrings', '', ''),
(79, 2, 'Vintage 18k Gold Geode Pendant Jewelry', '&lt;p&gt;StandAlone is the newest family member of the Niche and PhoneBox. The acoustic base is upholstered in fabric and available in a range of vibrant colours and qualities. PROOFF #009 StandAlone only takes approximately 1 m2 of space and is equipped with a worksheet; a charging point and lighting are optional.&lt;/p&gt;', '', 'Vintage 18k Gold Geode Pendant Jewelry', '', ''),
(79, 1, 'Vintage 18k Gold Geode Pendant Jewelry', '&lt;p&gt;StandAlone is the newest family member of the Niche and PhoneBox. The acoustic base is upholstered in fabric and available in a range of vibrant colours and qualities. PROOFF #009 StandAlone only takes approximately 1 m2 of space and is equipped with a worksheet; a charging point and lighting are optional.&lt;/p&gt;', '', 'Vintage 18k Gold Geode Pendant Jewelry', '', ''),
(95, 1, 'New Designer Gemstone Opal Dangle Earrings', '&lt;p&gt;The Eames® sofa is the last piece of furniture produced by the Eames Office, which completed the design after Charles Eames died in 1978. Charles and Ray Eames designed the sofa to complement their plush soft pad chairs and the sleek chaise.&lt;/p&gt;', '', 'New Designer Gemstone Opal Dangle Earrings', '', ''),
(95, 2, 'New Designer Gemstone Opal Dangle Earrings', '&lt;p&gt;The Eames® sofa is the last piece of furniture produced by the Eames Office, which completed the design after Charles Eames died in 1978. Charles and Ray Eames designed the sofa to complement their plush soft pad chairs and the sleek chaise.&lt;/p&gt;', '', 'New Designer Gemstone Opal Dangle Earrings', '', ''),
(80, 1, 'Emerald &amp; Jade Floral Carved Cocktail Ring', '&lt;p&gt;The GRAIN lamp brings a new perspective to the pendant lamp genre by combining a classic minimalistic design with the use of innovative new materials. The original composite used in the lamp’s construction adds an unexpected softness and warmth to GRAIN, giving its simple form lots of character.&lt;/p&gt;', '', 'Emerald &amp; Jade Floral Carved Cocktail Ring', '', ''),
(80, 2, 'Emerald &amp; Jade Floral Carved Cocktail Ring', '&lt;p&gt;The GRAIN lamp brings a new perspective to the pendant lamp genre by combining a classic minimalistic design with the use of innovative new materials. The original composite used in the lamp’s construction adds an unexpected softness and warmth to GRAIN, giving its simple form lots of character.&lt;/p&gt;', '', 'Emerald &amp; Jade Floral Carved Cocktail Ring', '', ''),
(82, 1, 'White Jade Designer Floral Carved Earrings', '&lt;p&gt;A miniature version of Eero Aarnio’s Ball Chair, which the Finnish designed as a sphere with one side cut off.&lt;/p&gt;', '', 'White Jade Designer Floral Carved Earrings', '', ''),
(83, 1, 'Rose Gold Green Jade Carved Dangle Earrings', '&lt;p&gt;BeTween has a trunk that performs as a seat with a branch to lean against or rest your laptop on. The tree seat helps transform an entrance hall into a public landscape, providing visitors with comfort.&lt;/p&gt;', '', 'Rose Gold Green Jade Carved Dangle Earrings', '', ''),
(83, 2, 'Rose Gold Green Jade Carved Dangle Earrings', '&lt;p&gt;BeTween has a trunk that performs as a seat with a branch to lean against or rest your laptop on. The tree seat helps transform an entrance hall into a public landscape, providing visitors with comfort.&lt;/p&gt;', '', 'Rose Gold Green Jade Carved Dangle Earrings', '', ''),
(84, 1, 'Yellow Gold Emerald Baguette Stud Earrings', '&lt;p&gt;The Tanne is a handwoven rug series made from New Zealand wool on cotton warp. Available in three sizes, with custom sizes available by request .&lt;/p&gt;', '', 'Yellow Gold Emerald Baguette Stud Earrings', '', ''),
(84, 2, 'Yellow Gold Emerald Baguette Stud Earrings', '&lt;p&gt;The Tanne is a handwoven rug series made from New Zealand wool on cotton warp. Available in three sizes, with custom sizes available by request .&lt;/p&gt;', '', 'Yellow Gold Emerald Baguette Stud Earrings', '', ''),
(86, 1, 'White Gold Diamond Geode Stud Earrings', '&lt;p&gt;With rows of tailored strips set across a soft pentagon shape, the Anderssen &amp;amp; Voll designed pouf evokes visions of lines of neatly ploughed fields.&lt;/p&gt;', '', 'White Gold Diamond Geode Stud Earrings', '', ''),
(86, 2, 'White Gold Diamond Geode Stud Earrings', '&lt;p&gt;With rows of tailored strips set across a soft pentagon shape, the Anderssen &amp;amp; Voll designed pouf evokes visions of lines of neatly ploughed fields.&lt;/p&gt;', '', 'White Gold Diamond Geode Stud Earrings', '', ''),
(76, 1, 'White Gold Ice Diamond Bangle', '&lt;p&gt;Crafted with playful features and foldable limbs, MR B is inspired by e15''s modern design classic, the solid wood table BIGFOOT™ and its patron, Bigfoot, believed to roam the forests of North America.&lt;/p&gt;', '', 'White Gold Ice Diamond Bangle', '', ''),
(76, 2, 'White Gold Ice Diamond Bangle', '&lt;p&gt;Crafted with playful features and foldable limbs, MR B is inspired by e15''s modern design classic, the solid wood table BIGFOOT™ and its patron, Bigfoot, believed to roam the forests of North America.&lt;/p&gt;', '', 'White Gold Ice Diamond Bangle', '', ''),
(82, 2, 'White Jade Designer Floral Carved Earrings', '&lt;p&gt;A miniature version of Eero Aarnio’s Ball Chair, which the Finnish designed as a sphere with one side cut off.&lt;/p&gt;', '', 'White Jade Designer Floral Carved Earrings', '', ''),
(66, 2, 'White Gold Jade Carved Women Stud Earrings', '&lt;p&gt;Bolster Sofa Group is an inviting and versatile range. The sofa''s horizontal proportions project lightness and airiness while still anchoring the room. Within the seat, multiple types of foam offer exceptional support for upright sitting, while a long, slim top cushion adds softness for lounging.&lt;/p&gt;', '', 'Bolster Sofa Group Club Setee', '', ''),
(72, 2, 'Art Deco Green Jade Designer Dangle Earrings', '&lt;p&gt;The precedent for the furniture designed by Salvador Dalí is the famous sofa in the shape of a mouth, which the artist created together with Oscar Tusquets in 1972 for the Mae West room at the Dalí Museum in Figueres.&lt;/p&gt;', '', 'Art Deco Green Jade Designer Dangle Earrings', '', ''),
(96, 2, 'Especial Women Opal Pave Diamond Stud Earrings', '&lt;p&gt;The sofa compact''s striking profile and crisp, light scale evolved from a built-in sofa that Charles &amp;amp; Ray Eames designed for the living room of their Pacific Palisades home. Knowing this makes the name ''Compact'' seem less curious for a sofa that''s over 1800mm long and provides such comfortable support from shoulders to knees.&lt;/p&gt;', '', 'Especial Women Opal Pave Diamond Stud Earrings', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(515, 76, 1, 0, 0, '0.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(52, 2),
(52, 4),
(53, 2),
(53, 4),
(54, 2),
(54, 4),
(59, 2),
(59, 5),
(61, 2),
(61, 4),
(65, 1),
(65, 3),
(66, 2),
(66, 4),
(67, 2),
(67, 4),
(69, 2),
(69, 4),
(72, 2),
(72, 4),
(73, 1),
(73, 4),
(74, 1),
(74, 4),
(75, 1),
(75, 4),
(76, 1),
(76, 4),
(77, 2),
(77, 4),
(79, 2),
(79, 4),
(80, 1),
(80, 2),
(80, 3),
(82, 2),
(82, 4),
(83, 2),
(83, 3),
(84, 2),
(84, 3),
(86, 1),
(86, 3),
(93, 2),
(93, 3),
(95, 1),
(95, 5),
(96, 2),
(96, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(3947, 76, 'catalog/demo/product/017.jpg', 0),
(3992, 83, 'catalog/demo/product/022.jpg', 0),
(3993, 83, 'catalog/demo/product/024.jpg', 0),
(3959, 52, 'catalog/demo/product/005.jpg', 0),
(3958, 52, 'catalog/demo/product/006.jpg', 0),
(3975, 59, 'catalog/demo/product/012.jpg', 0),
(3946, 76, 'catalog/demo/product/016.jpg', 0),
(3977, 54, 'catalog/demo/product/015.jpg', 0),
(4000, 66, 'catalog/demo/product/001.jpg', 0),
(4001, 66, 'catalog/demo/product/003.jpg', 0),
(3945, 76, 'catalog/demo/product/014.jpg', 0),
(3944, 76, 'catalog/demo/product/013.jpg', 0),
(3990, 83, 'catalog/demo/product/021.jpg', 0),
(3991, 83, 'catalog/demo/product/023.jpg', 0),
(3943, 76, 'catalog/demo/product/015.jpg', 0),
(3997, 86, 'catalog/demo/product/021.jpg', 0),
(3998, 86, 'catalog/demo/product/017.jpg', 0),
(3999, 86, 'catalog/demo/product/002.jpg', 0),
(3951, 72, 'catalog/demo/product/005.jpg', 0),
(3950, 72, 'catalog/demo/product/004.jpg', 0),
(3948, 72, 'catalog/demo/product/002.jpg', 0),
(3949, 72, 'catalog/demo/product/003.jpg', 0),
(3952, 53, 'catalog/demo/product/009.jpg', 0),
(3953, 53, 'catalog/demo/product/011.jpg', 0),
(3954, 93, 'catalog/demo/product/004.jpg', 0),
(3955, 93, 'catalog/demo/product/005.jpg', 0),
(3961, 80, 'catalog/demo/product/007.jpg', 0),
(3960, 80, 'catalog/demo/product/006.jpg', 0),
(3965, 96, 'catalog/demo/product/023.jpg', 0),
(3964, 96, 'catalog/demo/product/022.jpg', 0),
(3962, 96, 'catalog/demo/product/007.jpg', 0),
(3963, 96, 'catalog/demo/product/009.jpg', 0),
(3971, 67, 'catalog/demo/product/011.jpg', 0),
(3967, 75, 'catalog/demo/product/002.jpg', 0),
(3966, 75, 'catalog/demo/product/010.jpg', 0),
(3970, 67, 'catalog/demo/product/010.jpg', 0),
(3969, 67, 'catalog/demo/product/009.jpg', 0),
(3968, 67, 'catalog/demo/product/007.jpg', 0),
(3973, 69, 'catalog/demo/product/019.jpg', 0),
(3972, 69, 'catalog/demo/product/015.jpg', 0),
(3974, 59, 'catalog/demo/product/011.jpg', 0),
(3976, 54, 'catalog/demo/product/010.jpg', 0),
(3981, 65, 'catalog/demo/product/023.jpg', 0),
(3980, 65, 'catalog/demo/product/003.jpg', 0),
(3979, 65, 'catalog/demo/product/002.jpg', 0),
(3978, 65, 'catalog/demo/product/001.jpg', 0),
(3983, 77, 'catalog/demo/product/015.jpg', 0),
(3982, 77, 'catalog/demo/product/014.jpg', 0),
(3985, 95, 'catalog/demo/product/016.jpg', 0),
(3984, 95, 'catalog/demo/product/015.jpg', 0),
(3987, 74, 'catalog/demo/product/009.jpg', 0),
(3986, 74, 'catalog/demo/product/011.jpg', 0),
(3989, 61, 'catalog/demo/product/011.jpg', 0),
(3988, 61, 'catalog/demo/product/002.jpg', 0),
(3996, 86, 'catalog/demo/product/020.jpg', 0),
(3995, 79, 'catalog/demo/product/002.jpg', 0),
(3994, 79, 'catalog/demo/product/004.jpg', 0),
(4003, 73, 'catalog/demo/product/011.jpg', 0),
(4002, 73, 'catalog/demo/product/005.jpg', 0),
(4007, 82, 'catalog/demo/product/009.jpg', 0),
(4006, 82, 'catalog/demo/product/024.jpg', 0),
(4005, 82, 'catalog/demo/product/003.jpg', 0),
(4004, 82, 'catalog/demo/product/022.jpg', 0),
(4011, 84, 'catalog/demo/product/014.jpg', 0),
(4010, 84, 'catalog/demo/product/008.jpg', 0),
(4008, 84, 'catalog/demo/product/005.jpg', 0),
(4009, 84, 'catalog/demo/product/011.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(228, 65, 10, '2015-07-27 10:28', 1),
(259, 76, 6, '', 1),
(258, 76, 4, '', 1),
(257, 76, 11, '', 1),
(256, 76, 7, '', 1),
(255, 76, 12, '', 1),
(254, 76, 10, '', 1),
(253, 76, 10, '', 1),
(252, 76, 8, '', 1),
(251, 76, 2, '', 1),
(247, 76, 5, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(45, 257, 76, 11, 48, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(46, 257, 76, 11, 47, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(47, 257, 76, 11, 46, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(41, 251, 76, 2, 23, 120, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(44, 251, 76, 2, 23, 123, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(43, 251, 76, 2, 23, 122, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(42, 251, 76, 2, 23, 121, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(31, 247, 76, 5, 42, 198, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(29, 247, 76, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(32, 247, 76, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(30, 247, 76, 5, 39, 88, 1, '4.0000', '+', 0, '+', '4.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_recurring`
--

INSERT INTO `oc_product_recurring` (`product_id`, `recurring_id`, `customer_group_id`) VALUES
(61, 0, 1),
(76, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(52, 61),
(52, 67),
(53, 59),
(59, 53),
(59, 96),
(61, 52),
(61, 65),
(61, 67),
(61, 69),
(65, 61),
(65, 67),
(65, 69),
(67, 52),
(67, 61),
(67, 65),
(69, 61),
(69, 65),
(69, 76),
(69, 96),
(76, 69),
(76, 76),
(76, 82),
(76, 83),
(76, 96),
(82, 76),
(82, 96),
(83, 76),
(83, 96),
(96, 59),
(96, 69),
(96, 76),
(96, 82),
(96, 83);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(684, 54, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(727, 59, 1, 220, '200.0000', '2015-09-16', '2019-07-16'),
(728, 65, 1, 0, '20.0000', '2016-06-25', '2024-07-11'),
(725, 52, 1, 100, '80.0000', '2015-09-15', '2018-04-13'),
(730, 61, 1, 180, '150.0000', '2014-09-01', '2020-07-31'),
(731, 73, 1, 0, '50.0000', '2016-06-25', '2022-07-07'),
(726, 75, 1, 0, '77.0000', '2016-06-25', '2026-07-09'),
(723, 72, 1, 0, '50.0000', '2016-06-25', '2024-11-21'),
(729, 74, 1, 0, '44.0000', '2016-06-25', '2023-07-13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(52, 77),
(52, 78),
(53, 64),
(54, 77),
(54, 86),
(59, 69),
(59, 85),
(61, 77),
(61, 80),
(65, 77),
(65, 78),
(66, 81),
(67, 64),
(69, 69),
(69, 71),
(72, 80),
(72, 81),
(73, 79),
(74, 77),
(74, 80),
(75, 74),
(76, 67),
(76, 77),
(77, 74),
(79, 69),
(79, 71),
(80, 64),
(82, 69),
(82, 85),
(83, 69),
(83, 71),
(84, 74),
(86, 79),
(93, 64),
(95, 81),
(96, 81);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(66, 0, 0),
(52, 0, 0),
(54, 0, 0),
(65, 0, 0),
(61, 0, 0),
(59, 0, 0),
(53, 0, 0),
(67, 0, 0),
(69, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(79, 0, 0),
(80, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(86, 0, 0),
(93, 0, 0),
(95, 0, 0),
(96, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(52, 0),
(53, 0),
(54, 0),
(59, 0),
(61, 0),
(65, 0),
(66, 0),
(67, 0),
(69, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(79, 0),
(80, 0),
(82, 0),
(83, 0),
(84, 0),
(86, 0),
(93, 0),
(95, 0),
(96, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(2, 65, 0, 'John', 'Good jobbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb !', 2, 1, '2015-11-23 11:44:40', '2015-11-23 11:52:57'),
(3, 66, 0, 'John', 'Nice jobbbbbbbbbbbbbbbbbbbbbbbbbb !', 1, 1, '2015-11-24 09:54:27', '2015-11-24 10:00:55'),
(6, 59, 0, 'Paris', 'Nice jobbbbbbbbbbbbbbbbbbbbbbbbbb !', 4, 1, '2015-11-24 09:55:15', '2015-11-24 10:00:38'),
(8, 69, 0, 'Paris', 'Nice jobbbbbbbbbbbbbbbbbbbbbbbbbb !', 1, 1, '2015-11-24 09:55:39', '2015-11-24 10:00:24'),
(9, 53, 0, 'Paris', 'Nice jobbbbbbbbbbbbbbbbbbbbbbbbbb !', 2, 1, '2015-11-24 09:55:54', '2015-11-24 10:00:17'),
(11, 52, 0, 'Paris', 'Nice jobbbbbbbbbbbbbbbbbbbbbbbbbb !', 4, 1, '2015-11-24 09:56:19', '2015-11-24 10:00:08'),
(13, 54, 0, 'LonDon', 'Nice jobbbbbbbbbbbbbbbbbbbbbbbbbb !', 1, 1, '2015-11-24 09:56:47', '2015-11-24 09:59:59'),
(15, 61, 0, 'LonDon', 'Nice jobbbbbbbbbbbbbbbbbbbbbbbbbb !', 5, 1, '2015-11-24 10:02:42', '2016-06-29 11:17:52'),
(18, 67, 0, 'LonDon', 'Nice jobbbbbbbbbbbbbbbbbbbbbbbbbb !', 2, 1, '2015-11-24 10:03:39', '2015-11-24 10:04:15'),
(21, 61, 0, 'LonDon', 'Nice jobbbbbbbbbbbbbbbbbbbbbbbbbb !', 3, 1, '2015-11-24 10:04:59', '2015-11-24 10:05:27'),
(35, 53, 0, 'Alex', 'Nice GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 4, 1, '2016-06-29 11:26:11', '2016-06-29 11:35:13'),
(36, 67, 0, 'Zunny', 'Nice GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 5, 1, '2016-06-29 11:26:40', '2016-06-29 11:35:09'),
(37, 67, 0, 'Beetae', 'Nice GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 5, 1, '2016-06-29 11:27:27', '2016-06-29 11:35:06'),
(43, 66, 0, 'Lotica', 'Nice GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 5, 1, '2016-06-29 11:31:22', '2016-06-29 11:34:36'),
(46, 86, 0, 'Jacky', 'Nice GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 2, 1, '2016-06-29 11:36:32', '2016-06-29 14:01:31'),
(47, 86, 0, 'Jun', 'Good GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 4, 1, '2016-06-29 11:38:54', '2016-06-29 14:01:27'),
(50, 83, 0, 'Belley', 'Good GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 3, 1, '2016-06-29 11:42:07', '2016-06-29 14:01:18'),
(51, 83, 0, 'Bunny', 'Good GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 2, 1, '2016-06-29 11:45:27', '2016-06-29 14:01:14'),
(52, 84, 0, 'Kiss', 'thê a Hiếu sướng hay khổ cũng là do chồng a sau này à :-s', 3, 1, '2016-06-29 11:47:51', '2016-06-29 14:01:11'),
(53, 84, 0, 'Chuckle', 'Good GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 5, 1, '2016-06-29 11:49:16', '2016-06-29 14:01:08'),
(56, 72, 0, 'Busty', 'Good GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 3, 1, '2016-06-29 11:50:56', '2016-06-29 14:00:56'),
(57, 73, 0, 'Seate', 'Good GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 2, 1, '2016-06-29 11:51:17', '2016-06-29 14:00:52'),
(58, 74, 0, 'Killar', 'Good GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 5, 1, '2016-06-29 11:53:20', '2016-06-29 14:00:24'),
(59, 75, 0, 'Youtu', 'Good GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 3, 1, '2016-06-29 11:55:07', '2016-06-29 14:00:20'),
(60, 82, 0, 'Gent', 'GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 2, 1, '2016-08-02 22:03:16', '2016-08-02 22:03:31'),
(61, 80, 0, 'John O', 'GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 4, 1, '2016-08-02 22:26:43', '2016-08-02 22:35:13'),
(63, 93, 0, 'Marry', 'GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!', 2, 1, '2016-08-02 22:34:12', '2016-08-02 22:35:06'),
(65, 96, 0, 'BVsing', 'GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 4, 1, '2016-08-02 22:51:12', '2016-08-02 22:52:33'),
(66, 95, 0, 'Minky', 'GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!', 4, 1, '2016-08-02 22:52:16', '2016-08-02 22:52:29'),
(67, 76, 0, 'Roy', 'GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 5, 1, '2016-08-03 09:27:12', '2016-08-03 09:50:25'),
(68, 79, 0, 'Kuous', 'GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 4, 1, '2016-08-03 09:48:08', '2016-08-03 09:50:19'),
(71, 77, 0, 'Clyne C', 'GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 1, 1, '2016-08-07 23:03:39', '2016-08-07 23:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(0, 0, 'shipping', 'shipping_sort_order', '3', 0),
(0, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(0, 0, 'sub_total', 'sub_total_status', '1', 0),
(0, 0, 'tax', 'tax_status', '1', 0),
(0, 0, 'total', 'total_sort_order', '9', 0),
(0, 0, 'total', 'total_status', '1', 0),
(0, 0, 'tax', 'tax_sort_order', '5', 0),
(0, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(0, 0, 'cod', 'cod_sort_order', '5', 0),
(0, 0, 'cod', 'cod_total', '0.01', 0),
(0, 0, 'cod', 'cod_order_status_id', '1', 0),
(0, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(0, 0, 'cod', 'cod_status', '1', 0),
(0, 0, 'shipping', 'shipping_status', '1', 0),
(0, 0, 'shipping', 'shipping_estimator', '1', 0),
(0, 0, 'coupon', 'coupon_sort_order', '4', 0),
(0, 0, 'coupon', 'coupon_status', '1', 0),
(0, 0, 'flat', 'flat_sort_order', '1', 0),
(0, 0, 'flat', 'flat_status', '1', 0),
(0, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(0, 0, 'flat', 'flat_tax_class_id', '9', 0),
(0, 0, 'flat', 'flat_cost', '5.00', 0),
(0, 0, 'credit', 'credit_sort_order', '7', 0),
(0, 0, 'credit', 'credit_status', '1', 0),
(0, 0, 'reward', 'reward_sort_order', '2', 0),
(0, 0, 'reward', 'reward_status', '1', 0),
(0, 0, 'category', 'category_status', '1', 0),
(0, 0, 'account', 'account_status', '1', 0),
(0, 0, 'affiliate', 'affiliate_status', '1', 0),
(0, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(0, 0, 'voucher', 'voucher_sort_order', '8', 0),
(0, 0, 'voucher', 'voucher_status', '1', 0),
(0, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(0, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(0, 0, 'pavdeals', 'pavdeals_config', '{"order_status_id":"5","saleoff_icon":"http:\\/\\/localhost\\/lexus_ceramix_v2200\\/image\\/cache\\/data\\/saleoff-150x150.png","today_deal":"10","time_end":"","enable_available":"1","enable_pass":"1","icon_width":"180","icon_height":"180","limit":"12","cols":"4","width":"400","height":"400"}', 1),
(0, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(0, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(0, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(0, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(0, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(0, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(0, 0, 'theme_default', 'theme_default_image_related_width', '500', 0),
(0, 0, 'theme_default', 'theme_default_image_related_height', '500', 0),
(0, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(0, 0, 'theme_default', 'theme_default_image_additional_height', '70', 0),
(0, 0, 'theme_default', 'theme_default_image_additional_width', '70', 0),
(0, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(0, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(0, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(0, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(0, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(0, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(0, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(0, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(0, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(0, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(0, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(0, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(0, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(0, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(0, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(0, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(0, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(0, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(0, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(0, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(0, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(0, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(0, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(0, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(0, 0, 'basic_captcha', 'basic_captcha_status', '1', 0),
(0, 0, 'theme_default', 'theme_default_image_product_height', '500', 0),
(0, 0, 'theme_default', 'theme_default_image_product_width', '500', 0),
(0, 0, 'pavblog', 'pavblog', '{"general_lwidth":"350","general_lheight":"246","general_swidth":"350","general_sheight":"246","general_xwidth":"350","general_xheight":"246","rss_limit_item":"12","keyword_listing_blogs_page":"blogs","children_columns":"3","general_cwidth":"250","general_cheight":"250","cat_limit_leading_blog":"1","cat_limit_secondary_blog":"5","cat_leading_image_type":"l","cat_secondary_image_type":"s","cat_columns_leading_blog":"1","cat_columns_secondary_blogs":"2","cat_show_title":"1","cat_show_description":"1","cat_show_readmore":"1","cat_show_image":"1","cat_show_author":"1","cat_show_category":"1","cat_show_created":"1","cat_show_hits":"1","cat_show_comment_counter":"1","blog_image_type":"l","blog_show_title":"1","blog_show_image":"1","blog_show_author":"1","blog_show_category":"1","blog_show_created":"1","blog_show_comment_counter":"1","blog_show_hits":"1","blog_show_comment_form":"1","comment_engine":"local","diquis_account":"pavothemes","facebook_appid":"100858303516","comment_limit":"10","facebook_width":"600","auto_publish_comment":"0","enable_recaptcha":"1"}', 1),
(0, 0, 'filter', 'filter_status', '1', 0),
(0, 0, 'google_captcha', 'google_captcha_secret', '6LdMxwYTAAAAALRM6bHENCGIRO6thJRXNlYl0XAR', 0),
(0, 0, 'pavverticalmenu_params', 'params', '[{"submenu":1,"subwidth":400,"cols":1,"group":0,"id":72,"rows":[{"cols":[{"widgets":"wid-94|wid-97","colwidth":6},{"widgets":"wid-95|wid-98","colwidth":6}]}]},{"submenu":1,"subwidth":800,"id":73,"cols":1,"group":0,"rows":[{"cols":[{"widgets":"wid-96","colwidth":12}]}]},{"submenu":1,"cols":1,"group":0,"id":74,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"submenu":1,"id":75,"cols":1,"group":0,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"submenu":1,"id":76,"cols":1,"group":0,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]}]', 0),
(0, 0, 'google_captcha', 'google_captcha_key', '6LdMxwYTAAAAAPfQS6XqEkGGBsjGLe1HMpRlR2hn', 0),
(0, 0, 'theme_default', 'theme_default_image_thumb_height', '570', 0),
(0, 0, 'theme_default', 'theme_default_image_popup_width', '750', 0),
(0, 0, 'theme_default', 'theme_default_image_popup_height', '750', 0),
(0, 0, 'theme_default', 'theme_default_image_category_height', '338', 0),
(0, 0, 'config', 'config_error_log', '1', 0),
(0, 0, 'config', 'config_error_filename', 'error.log', 0),
(0, 0, 'theme_default', 'theme_default_image_thumb_width', '570', 0),
(0, 0, 'config', 'config_file_max_size', '300000', 0),
(0, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(0, 0, 'config', 'config_compression', '0', 0),
(0, 0, 'config', 'config_secure', '0', 0),
(0, 0, 'config', 'config_password', '1', 0),
(0, 0, 'config', 'config_shared', '0', 0),
(0, 0, 'config', 'config_encryption', 'u8hXkGCdjDCOtMFFE6hWgmWFppVwb8zysY8NJsOZC3OHewJAwVq902IbziaRe29rlxuEIH9Ol7FrQX6bYEf2JnqZ2V6sUHfSgvw2huIwAMiaeGhCGLOwHrtKyScBvcjkIQ0Xmobzhcl01a4P73EZjv1RMbK6mvikY7R2OdSsZPWvqUrUhtUqTeB7DN3ANj8Su3gBMfZ4WhENPyVTV1UWcK3difnWx8C4r3LKWK4mg6ZW1jZbvucXFuhTAKknbhNyHzVtmdI1vQ1pP3NYqxLseEhlP2HE941T94gpQbq05eDIEKyXq7HlwM3D7BK85BgxGKyqrKhA4t5fJWMDAv5rBjjlO6brAwq5IwS4Y3LLFcBvBiFoYnZSgwQpoNm6iN0wrXhs0zVHJmh0BOM4hOAU0ze5Mb4QD5DyTrp9guaeOfudGurdpv1j5mRDmV71HzYSyVeTfDNNjYGLH3NHYhqml3NJfWtPCCNYoinlica3jD6ThEbXJHOHyd4jIfxMsB83ZJjSBH9qQmsEZCST3JOr3ScCTrkQYUEvifRw80VUqYF1CFTJQnSuGMV9biw739wbLxPNS3ocVFtNZlNuWdz0KuCLZXq46lnMLOBhFVwLJAXt9gO6iZaWRgK670G8n7Kq1Oi71hG0TzI5XMdmHm9LjRR2Yr1KlZmZRjDLsKsCIoqK1wGmWhJLQLWpvSYzA9j5ULIAaHJmE7HzjRqbTP9vX5zKhYAqecx9wiprkNtc7J5pFXBpOgR3pR9DYoas4Jt3MyiaS1z02GjGiibmOhDrbFle6JLbqsEuFRRYTG2gY8fSW9EcbImsigOn7Eu5343h2h9VETaOcMXEerlhzMlIL0OOwDZVvbmuVlsA3E4Ep4YSTi3PhI7CnajUg4otqFkNQ1r19th48ufgYPW9n5GHgWxgJmXb5AoYiaf2vuj9ZJeIy9NX4lfBZWxdidDPb7SnVF5RhxI7FIFutiuHu6kEEuFpPFjMXJSOf5s7N5xLPLsdXosIMNl2Ua5VZCWqFQye', 0),
(0, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(0, 0, 'config', 'config_error_display', '1', 0),
(0, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(0, 0, 'config', 'config_seo_url', '0', 0),
(0, 0, 'config', 'config_maintenance', '0', 0),
(0, 0, 'config', 'config_mail_alert_email', '', 0),
(0, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(0, 0, 'config', 'config_mail_smtp_port', '25', 0),
(0, 0, 'config', 'config_mail_smtp_password', '', 0),
(0, 0, 'config', 'config_mail_smtp_username', '', 0),
(0, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(0, 0, 'config', 'config_mail_parameter', '', 0),
(0, 0, 'config', 'config_mail_protocol', 'mail', 0),
(0, 0, 'config', 'config_ftp_status', '0', 0),
(0, 0, 'config', 'config_ftp_root', '', 0),
(0, 0, 'config', 'config_ftp_password', '', 0),
(0, 0, 'config', 'config_ftp_username', '', 0),
(0, 0, 'google_captcha', 'google_captcha_status', '1', 0),
(0, 0, 'theme_default', 'theme_default_image_category_width', '870', 0),
(0, 0, 'config', 'config_ftp_port', '21', 0),
(0, 0, 'config', 'config_ftp_hostname', 'localhost', 0),
(0, 0, 'config', 'config_icon', 'catalog/favicon.png', 0),
(0, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(0, 0, 'config', 'config_captcha', 'basic_captcha', 0),
(0, 0, 'config', 'config_captcha_page', '["register","guest","review","return","contact"]', 1),
(0, 0, 'config', 'config_return_status_id', '2', 0),
(0, 0, 'config', 'config_affiliate_id', '4', 0),
(0, 0, 'config', 'config_return_id', '0', 0),
(0, 0, 'config', 'config_affiliate_commission', '5', 0),
(0, 0, 'config', 'config_affiliate_auto', '0', 0),
(0, 0, 'config', 'config_affiliate_approval', '0', 0),
(0, 0, 'pavmegamenu_params', 'pavmegamenu_params', '[{"submenu":1,"subwidth":800,"id":42,"align":"aligned-fullwidth","cols":1,"group":0,"rows":[{"cols":[{"widgets":"wid-38","colwidth":3},{"widgets":"wid-32","colwidth":4},{"widgets":"wid-33|wid-35","colwidth":5}]}]},{"align":"aligned-left","submenu":1,"cols":1,"group":0,"id":44,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"align":"aligned-left","submenu":1,"cols":1,"group":0,"id":48,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]}]', 0),
(0, 0, 'config', 'config_stock_checkout', '0', 0),
(0, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(0, 0, 'theme_default', 'theme_default_product_limit', '9', 0),
(0, 0, 'theme_default', 'theme_default_status', '1', 0),
(0, 0, 'theme_default', 'theme_default_directory', 'pav_foliage', 0),
(0, 0, 'config', 'config_stock_warning', '0', 0),
(0, 0, 'themecontrol', 'themecontrol', '{"layout_id":"1","position":"1","cateogry_display_mode":"grid","listing_products_columns":"0","listing_products_columns_small":"2","listing_products_columns_minismall":"1","category_pzoom":"1","product_enablezoom":"1","product_zoomgallery":"slider","product_zoommode":"basic","product_zoomlenssize":"150","product_zoomeasing":"1","product_zoomlensshape":"basic","product_related_column":"0","enable_product_customtab":"0","product_customtab_name":{"1":"111","2":"111"},"product_customtab_content":{"1":"&lt;p&gt;222&lt;br&gt;&lt;\\/p&gt;","2":"&lt;p&gt;222&lt;\\/p&gt;"},"location_address":"79-99 Beaver Street, New York, NY 10005, USA","location_latitude":"40.705423","location_longitude":"-74.008616","contact_customhtml":{"1":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;","2":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;"},"skin":"","theme_width":"auto","enable_custom_copyright":"1","copyright":"Powered by Opencart \\u00a9 2017 - Pav Foliage","enable_offsidebars":"1","enable_paneltool":"1","quickview":"1","logo_type":"logo-theme","header_layout":"headerv1","footer_layout":"footerv1","offcanvas":"megamenu","home_container_full":"1","layout":"fullwidth","widget_paypal":{"1":"&lt;img src=&quot;image\\/catalog\\/demo\\/payment.png&quot; alt=&quot;&quot;&gt;","2":"&lt;img src=&quot;image\\/catalog\\/demo\\/payment.png&quot; alt=&quot;&quot;&gt;"},"widget_social_network":{"1":"&lt;ul class=&quot;list-inline&quot;&gt;\\r\\n&lt;li&gt;&lt;a class=&quot;facebook&quot; href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li&gt;&lt;a class=&quot;twitter&quot; href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li&gt;&lt;a class=&quot;instagram&quot; href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-instagram&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li&gt;&lt;a class=&quot;pinterest&quot; href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-pinterest-p&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li&gt;&lt;a class=&quot;youtube&quot; href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-youtube-play&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;","2":"&lt;ul class=&quot;list-inline&quot;&gt;\\r\\n&lt;li&gt;&lt;a class=&quot;facebook&quot; href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li&gt;&lt;a class=&quot;twitter&quot; href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li&gt;&lt;a class=&quot;instagram&quot; href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-instagram&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li&gt;&lt;a class=&quot;pinterest&quot; href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-pinterest-p&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li&gt;&lt;a class=&quot;youtube&quot; href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-youtube-play&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;"},"enable_customfont":"0","type_fonts1":"google","normal_fonts1":"inherit","google_url1":"","google_family1":"","fontsize1":"inherit","type_fonts2":"standard","normal_fonts2":"inherit","google_url2":"","google_family2":"","fontsize2":"inherit","type_fonts3":"standard","normal_fonts3":"inherit","google_url3":"","google_family3":"","fontsize3":"inherit","type_fonts4":"standard","normal_fonts4":"Verdana, Geneva, sans-serif","google_url4":"","google_family4":"","body_selector4":"","block_showcase":"","block_promotion":"","block_footer_top":"","block_footer_center":"","block_footer_bottom":"","enable_compress_css":"","exclude_css_files":"bootstrap.css","customize_theme":"","custom_css":"","custom_javascript":""}', 1),
(0, 0, 'config', 'config_stock_display', '0', 0),
(0, 0, 'config', 'config_api_id', '27', 0),
(0, 0, 'config', 'config_fraud_status_id', '7', 0),
(0, 0, 'config', 'config_complete_status', '["5","3"]', 1),
(0, 0, 'config', 'config_processing_status', '["5","1","2","12","3"]', 1),
(0, 0, 'config', 'config_order_status_id', '1', 0),
(0, 0, 'config', 'config_checkout_id', '5', 0),
(0, 0, 'config', 'config_checkout_guest', '1', 0),
(0, 0, 'config', 'config_cart_weight', '1', 0),
(0, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(0, 0, 'config', 'config_account_id', '3', 0),
(0, 0, 'config', 'config_customer_price', '0', 0),
(0, 0, 'config', 'config_login_attempts', '5', 0),
(0, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(0, 0, 'config', 'config_customer_group_id', '1', 0),
(0, 0, 'config', 'config_customer_search', '0', 0),
(0, 0, 'config', 'config_customer_activity', '0', 0),
(0, 0, 'config', 'config_customer_online', '0', 0),
(0, 0, 'config', 'config_tax_customer', 'shipping', 0),
(0, 0, 'config', 'config_tax_default', 'shipping', 0),
(0, 0, 'config', 'config_tax', '1', 0),
(0, 0, 'config', 'config_voucher_max', '1000', 0),
(0, 0, 'config', 'config_voucher_min', '1', 0),
(0, 0, 'config', 'config_review_guest', '1', 0),
(0, 0, 'config', 'config_review_status', '1', 0),
(0, 0, 'config', 'config_limit_admin', '12', 0),
(0, 0, 'config', 'config_product_count', '1', 0),
(0, 0, 'config', 'config_weight_class_id', '1', 0),
(0, 0, 'config', 'config_length_class_id', '1', 0),
(0, 0, 'config', 'config_currency_auto', '1', 0),
(0, 0, 'config', 'config_currency', 'USD', 0),
(0, 0, 'config', 'config_admin_language', 'en-gb', 0),
(0, 0, 'config', 'config_language', 'en-gb', 0),
(0, 0, 'config', 'config_zone_id', '3563', 0),
(0, 0, 'config', 'config_country_id', '222', 0),
(0, 0, 'config', 'config_open', 'Mon - Fri: --------------- 8am - 5pm\r\nSat: -------------------- 8am - 11am\r\nSun: --------------------- Closed\r\nWe work all the holidays', 0),
(0, 0, 'config', 'config_comment', '', 0),
(0, 0, 'config', 'config_fax', '+09 686 886 / +09 686 887', 0),
(0, 0, 'config', 'config_image', '', 0),
(0, 0, 'config', 'config_telephone', '+09 123 456 78 / +09 123 456 79', 0),
(0, 0, 'config', 'config_email', 'admin@gmail.com', 0),
(0, 0, 'config', 'config_geocode', '', 0),
(0, 0, 'config', 'config_owner', 'Pav Foliage', 0),
(0, 0, 'config', 'config_address', 'PO Box 16122 Collins Street West Victoria 8007 Australia?', 0),
(0, 0, 'config', 'config_name', 'Pav Foliage', 0),
(0, 0, 'config', 'config_theme', 'theme_default', 0),
(0, 0, 'config', 'config_layout_id', '4', 0),
(0, 0, 'config', 'config_meta_keyword', '', 0),
(0, 0, 'config', 'config_meta_description', 'Pav Foliage - Responsive Opencart themes', 0),
(0, 0, 'config', 'config_meta_title', 'Pav Foliage - Responsive Opencart themes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(824, 'product_id=48', 'ipod-classic'),
(836, 'category_id=20', 'desktops'),
(834, 'category_id=26', 'pc'),
(835, 'category_id=27', 'mac'),
(911, 'manufacturer_id=8', 'Curray'),
(772, 'information_id=4', 'about_us'),
(768, 'product_id=42', 'test'),
(789, 'category_id=34', 'mp3-players'),
(781, 'category_id=36', 'test2'),
(774, 'category_id=18', 'laptop-notebook'),
(775, 'category_id=46', 'macs'),
(776, 'category_id=45', 'windows'),
(777, 'category_id=25', 'component'),
(778, 'category_id=29', 'mouse'),
(779, 'category_id=28', 'monitor'),
(780, 'category_id=35', 'test1'),
(782, 'category_id=30', 'printer'),
(783, 'category_id=31', 'scanner'),
(784, 'category_id=32', 'web-camera'),
(785, 'category_id=57', 'tablet'),
(786, 'category_id=17', 'software'),
(787, 'category_id=24', 'smartphone'),
(788, 'category_id=33', 'camera'),
(790, 'category_id=43', 'test11'),
(791, 'category_id=44', 'test12'),
(792, 'category_id=47', 'test15'),
(793, 'category_id=48', 'test16'),
(794, 'category_id=49', 'test17'),
(795, 'category_id=50', 'test18'),
(796, 'category_id=51', 'test19'),
(797, 'category_id=52', 'test20'),
(798, 'category_id=58', 'test25'),
(799, 'category_id=53', 'test21'),
(800, 'category_id=54', 'test22'),
(801, 'category_id=55', 'test23'),
(802, 'category_id=56', 'test24'),
(803, 'category_id=38', 'test4'),
(804, 'category_id=37', 'test5'),
(805, 'category_id=39', 'test6'),
(806, 'category_id=40', 'test7'),
(807, 'category_id=41', 'test8'),
(808, 'category_id=42', 'test9'),
(809, 'product_id=30', 'canon-eos-5d'),
(840, 'product_id=47', 'hp-lp3065'),
(811, 'product_id=28', 'htc-touch-hd'),
(812, 'product_id=43', 'macbook'),
(813, 'product_id=44', 'macbook-air'),
(814, 'product_id=45', 'macbook-pro'),
(816, 'product_id=31', 'nikon-d300'),
(817, 'product_id=29', 'palm-treo-pro'),
(818, 'product_id=35', 'product-8'),
(819, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 'product_id=46', 'sony-vaio'),
(837, 'product_id=41', 'imac'),
(823, 'product_id=40', 'iphone'),
(825, 'product_id=36', 'ipod-nano'),
(826, 'product_id=34', 'ipod-shuffle'),
(827, 'product_id=32', 'ipod-touch'),
(912, 'manufacturer_id=9', 'Hockiry'),
(914, 'manufacturer_id=5', 'Mount'),
(913, 'manufacturer_id=7', 'Bodelaire'),
(915, 'manufacturer_id=6', 'Votico'),
(916, 'manufacturer_id=10', 'Carves guild'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms'),
(926, 'blog_id=7', ''),
(930, 'blog_id=9', ''),
(931, 'blog_id=10', ''),
(929, 'blog_id=11', ''),
(928, 'blog_id=12', ''),
(927, 'blog_id=13', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '48cca3f5666fb7873bdc357d02a2ac224458d7c0', '4G4ln4Qmc', 'John', 'Doe', 'admin@gmail.com', '', '', '::1', 1, '2017-01-21 02:14:22'),
(2, 10, 'demo', '7f1bd9bf4c852d1d4a22bc628d062e16b04cf391', 'b1f9SsGue', 'demo', 'demo', 'demo@gmail.com', '', '', '', 1, '2016-03-24 11:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{"access":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/menu","design\\/theme","design\\/translation","event\\/compatibility","event\\/theme","extension\\/analytics\\/google_analytics","extension\\/captcha\\/basic_captcha","extension\\/captcha\\/google_captcha","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/event","extension\\/extension","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/installer","extension\\/modification","extension\\/module\\/account","extension\\/module\\/affiliate","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/pavblog","extension\\/module\\/pavblogcategory","extension\\/module\\/pavblogcomment","extension\\/module\\/pavbloglatest","extension\\/module\\/pavdeals","extension\\/module\\/pavhomebuilder","extension\\/module\\/pavmegamenu","extension\\/module\\/pavnewsletter","extension\\/module\\/pavsliderlayer","extension\\/module\\/pavverticalmenu","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/module\\/themecontrol","extension\\/openbay","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/worldpay","extension\\/shipping\\/auspost","extension\\/shipping\\/citylink","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/store","extension\\/theme\\/theme_default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/customer_search","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/compatibility","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission","extension\\/module\\/banner","extension\\/module\\/special","extension\\/module\\/latest","extension\\/module\\/pavtestimonial"],"modify":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/menu","design\\/theme","design\\/translation","event\\/compatibility","event\\/theme","extension\\/analytics\\/google_analytics","extension\\/captcha\\/basic_captcha","extension\\/captcha\\/google_captcha","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/event","extension\\/extension","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/installer","extension\\/modification","extension\\/module\\/account","extension\\/module\\/affiliate","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/pavblog","extension\\/module\\/pavblogcategory","extension\\/module\\/pavblogcomment","extension\\/module\\/pavbloglatest","extension\\/module\\/pavdeals","extension\\/module\\/pavhomebuilder","extension\\/module\\/pavmegamenu","extension\\/module\\/pavnewsletter","extension\\/module\\/pavsliderlayer","extension\\/module\\/pavverticalmenu","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/module\\/themecontrol","extension\\/openbay","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/worldpay","extension\\/shipping\\/auspost","extension\\/shipping\\/citylink","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/store","extension\\/theme\\/theme_default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/customer_search","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/compatibility","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission","extension\\/module\\/banner","extension\\/module\\/special","extension\\/module\\/latest","extension\\/module\\/pavtestimonial"]}'),
(10, 'Demonstration', '{"access":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/menu","design\\/theme","design\\/translation","event\\/compatibility","event\\/theme","extension\\/analytics\\/google_analytics","extension\\/captcha\\/basic_captcha","extension\\/captcha\\/google_captcha","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/event","extension\\/extension","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/installer","extension\\/modification","extension\\/module\\/account","extension\\/module\\/affiliate","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/pavblog","extension\\/module\\/pavblogcategory","extension\\/module\\/pavblogcomment","extension\\/module\\/pavbloglatest","extension\\/module\\/pavdeals","extension\\/module\\/pavhomebuilder","extension\\/module\\/pavmegamenu","extension\\/module\\/pavnewsletter","extension\\/module\\/pavsliderlayer","extension\\/module\\/pavverticalmenu","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/module\\/themecontrol","extension\\/openbay","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/worldpay","extension\\/shipping\\/auspost","extension\\/shipping\\/citylink","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/store","extension\\/theme\\/theme_default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/customer_search","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/compatibility","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission"]}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu`
--

CREATE TABLE `oc_verticalmenu` (
  `verticalmenu_id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  `icon` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_verticalmenu`
--

INSERT INTO `oc_verticalmenu` (`verticalmenu_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`, `widget_id`, `icon`) VALUES
(1, '', 0, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 0, 0, '', '', 0, 'top', '', '', '', '', -5, 34, 47, 0, ''),
(45, '', 0, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 0, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, 0, ''),
(72, '', 1, 0, NULL, NULL, NULL, '', '74', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(73, '', 1, 0, NULL, NULL, NULL, '', '81', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(74, '', 1, 0, NULL, NULL, NULL, '', '77', '1', 'url', 0, 1, 'menu', 0, 1, 0, 3, 0, 'index.php?route=product/category&amp;path=77', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(75, '', 1, 0, NULL, NULL, NULL, '', '69', '1', 'url', 0, 1, 'menu', 0, 1, 0, 5, 0, 'index.php?route=product/category&amp;path=69', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(79, '', 1, 0, NULL, NULL, NULL, '', '66', '1', 'url', 0, 1, 'menu', 0, 1, 0, 4, 0, 'index.php?route=product/category&amp;path=64_66', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(80, '', 1, 0, NULL, NULL, NULL, '', '68', '1', 'url', 0, 1, 'menu', 0, 1, 0, 6, 0, 'index.php?route=product/category&amp;path=64_65', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(85, '', 75, 0, NULL, NULL, NULL, '', '85', '1', 'url', 0, 1, 'menu', 0, 1, 0, 1, 0, 'index.php?route=product/category&amp;path=64', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(86, '', 75, 0, NULL, NULL, NULL, '', '89', '1', 'url', 0, 1, 'menu', 0, 1, 0, 2, 0, 'index.php?route=product/category&amp;path=81', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(89, '', 75, 0, NULL, NULL, NULL, '', '82', '1', 'url', 0, 1, 'menu', 0, 1, 0, 3, 0, 'index.php?route=product/category&amp;path=74', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(90, '', 75, 0, NULL, NULL, NULL, '', '91', '1', 'url', 0, 1, 'menu', 0, 1, 0, 4, 0, 'index.php?route=product/category&amp;path=79', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(95, '', 74, 0, NULL, NULL, NULL, '', '67', '1', 'url', 0, 1, 'menu', 0, 1, 0, 1, 0, 'index.php?route=product/category&amp;path=77_67', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(96, '', 74, 0, NULL, NULL, NULL, '', '86', '1', 'url', 0, 1, 'menu', 0, 1, 0, 2, 0, 'index.php?route=product/category&amp;path=77_80', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(97, '', 74, 0, NULL, NULL, NULL, '', '78', '1', 'url', 0, 1, 'menu', 0, 1, 0, 3, 0, 'index.php?route=product/category&amp;path=77_78', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(98, '', 74, 0, NULL, NULL, NULL, '', '79', '1', 'url', 0, 1, 'menu', 0, 1, 0, 4, 0, 'index.php?route=product/category&amp;path=77_86', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, ''),
(100, '', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, 'index.php?route=product/category&amp;path=74', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu_description`
--

CREATE TABLE `oc_verticalmenu_description` (
  `verticalmenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_verticalmenu_description`
--

INSERT INTO `oc_verticalmenu_description` (`verticalmenu_id`, `language_id`, `title`, `description`) VALUES
(100, 1, 'Accessories', ''),
(75, 1, 'Red Diamond', ''),
(74, 2, 'Amethyst', ''),
(73, 1, 'Collections', ''),
(72, 1, 'Gemstones', ''),
(79, 1, 'Necklaces', ''),
(80, 1, 'Charms', ''),
(100, 2, 'Accessories', ''),
(85, 1, 'Ice Diamond Jewelry', ''),
(86, 1, 'Jade Jewelry', ''),
(89, 2, 'Pave Jewelry', ''),
(89, 1, 'Pave Jewelry', ''),
(90, 2, 'Opal Jewelry', ''),
(90, 1, 'Opal Jewelry', ''),
(80, 2, 'Charms', ''),
(79, 2, 'Necklaces', ''),
(95, 1, 'Bangles', ''),
(96, 2, 'Earrings', ''),
(96, 1, 'Earrings', ''),
(97, 2, 'Pendants', ''),
(97, 1, 'Pendants', ''),
(98, 2, 'Rings', ''),
(75, 2, 'Red Diamond', ''),
(98, 1, 'Rings', ''),
(72, 2, 'Gemstones', ''),
(73, 2, 'Collections', ''),
(74, 1, 'Amethyst', ''),
(95, 2, 'Bangles', ''),
(85, 2, 'Ice Diamond Jewelry', ''),
(86, 2, 'Jade Jewelry', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu_widgets`
--

CREATE TABLE `oc_verticalmenu_widgets` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_verticalmenu_widgets`
--

INSERT INTO `oc_verticalmenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(2, 'Dermo HTML Sample', 'html', 'a:1:{s:4:"html";a:1:{i:1;s:275:"Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel. Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel.";}}', 0),
(4, 'Products In Cat 20', 'product_category', 'a:4:{s:11:"category_id";s:2:"20";s:5:"limit";s:1:"6";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";}', 0),
(5, 'Manufactures', 'banner', 'a:4:{s:8:"group_id";s:1:"8";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:5:"limit";s:2:"12";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:"feed_url";s:55:"http://www.pavothemes.com/opencart-themes.feed?type=rss";}', 0),
(10, '', 'video', 'a:12:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"video";s:11:"widget_name";s:27:"Video Opencart Installation";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:27:"Video Opencart Installation";s:12:"addition_cls";s:0:"";s:10:"video_link";s:40:"http://www.youtube.com/embed/cUhPA5qIxDQ";s:5:"width";s:3:"500";s:6:"height";s:3:"281";s:9:"subinfo_3";s:3:"300";s:9:"subinfo_1";s:3:"300";}', 0),
(8, '', 'html', 'a:9:{s:4:"wkey";s:1:"8";s:5:"wtype";s:4:"html";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_3";s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";s:13:"htmlcontent_1";s:991:"&lt;ul class=&quot;list&quot;&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=62&quot;&gt;Dresses&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=63&quot;&gt;New&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=64&quot;&gt;Accessories&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=65&quot;&gt;Tops&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=66&quot;&gt;Bottoms&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=67&quot;&gt;Jewellery&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=68&quot;&gt;Hair Accessories&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=69&quot;&gt;Sunglasses&lt;/a&gt;  &lt;/li&gt;&lt;/ul&gt;";}', 0),
(9, '', 'product', 'a:10:{s:4:"wkey";s:1:"0";s:5:"wtype";s:7:"product";s:11:"widget_name";s:15:"Products Latest";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:15:"Products Latest";s:12:"addition_cls";s:7:"sidebar";s:10:"product_id";s:2:"34";s:11:"image_width";s:3:"200";s:12:"image_height";s:3:"200";}', 0),
(11, '', 'categories_list', 'a:8:{s:4:"wkey";s:2:"11";s:5:"wtype";s:15:"categories_list";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:4:"list";s:6:"catids";s:23:"17,34,24,33,25,26,27,57";}', 0),
(15, '', 'product_list', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"3";s:9:"list_type";s:6:"newest";}', 0),
(16, '', 'product_list', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:15:"Products Latest";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:15:"Products Latest";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"3";s:9:"list_type";s:7:"special";}', 0),
(17, '', 'video', 'a:12:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"video";s:11:"widget_name";s:27:"Video Opencart Installation";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:27:"Video Opencart Installation";s:12:"addition_cls";s:0:"";s:10:"video_link";s:40:"http://www.youtube.com/embed/cUhPA5qIxDQ";s:5:"width";s:3:"500";s:6:"height";s:3:"281";s:9:"subinfo_3";s:3:"300";s:9:"subinfo_1";s:3:"300";}', 0),
(18, '', 'categories_list', 'a:8:{s:4:"wkey";s:1:"0";s:5:"wtype";s:15:"categories_list";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:0:"";s:6:"catids";s:20:"17,34,24,33,25,26,57";}', 0),
(19, '', 'product_list', 'a:15:{s:4:"wkey";s:2:"19";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:16:"Products Spacial";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:15:"Products Latest";s:14:"widget_title_2";s:15:"Products Latest";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:0:"";s:4:"size";s:0:"";s:5:"limit";s:1:"4";s:6:"column";s:1:"4";s:12:"itemsperpage";s:1:"4";s:5:"width";s:3:"100";s:6:"height";s:3:"100";s:9:"list_type";s:10:"bestseller";}', 0),
(58, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"58";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:10:"Automative";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:10:"Automative";s:14:"widget_title_2";s:10:"Automative";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"8";}', 0),
(21, '', 'html', 'a:9:{s:4:"wkey";s:2:"21";s:5:"wtype";s:4:"html";s:11:"widget_name";s:17:"Makes a photoshop";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:17:"Makes a photoshop";s:14:"widget_title_2";s:17:"Makes a photoshop";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:295:"&lt;div class=&quot;content &quot;&gt;    &lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula.&lt;/p&gt;&lt;/div&gt;";s:13:"htmlcontent_2";s:293:"&lt;div class=&quot;content &quot;&gt;    &lt;h3 class=&quot;widget-title&quot;&gt;&lt;span&gt;Makes a photoshop&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;&lt;/div&gt;";}', 0),
(23, '', 'html', 'a:9:{s:4:"wkey";s:2:"23";s:5:"wtype";s:4:"html";s:11:"widget_name";s:17:"Makes a photoshop";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:17:"Makes a photoshop";s:14:"widget_title_4";s:17:"Makes a photoshop";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:145:"&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;";s:13:"htmlcontent_4";s:145:"&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;";}', 0),
(27, '', 'categories_list', 'a:8:{s:4:"wkey";s:2:"27";s:5:"wtype";s:15:"categories_list";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:10:"categories";s:14:"widget_title_4";s:10:"categories";s:12:"addition_cls";s:7:"bullets";s:6:"catids";s:20:"17,24,33,42,45,46,57";}', 0),
(29, '', 'product_list', 'a:9:{s:4:"wkey";s:2:"29";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:16:"Products Special";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:16:"Products Special";s:14:"widget_title_4";s:16:"Products Special";s:12:"addition_cls";s:7:"sidebar";s:5:"limit";s:1:"3";s:9:"list_type";s:7:"special";}', 0),
(31, '', 'video', 'a:12:{s:4:"wkey";s:2:"31";s:5:"wtype";s:5:"video";s:11:"widget_name";s:20:"Video Install Widget";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:20:"Video Install Widget";s:14:"widget_title_4";s:20:"Video Install Widget";s:12:"addition_cls";s:0:"";s:10:"video_link";s:42:"http://www.youtube.com/watch?v=lzY4lkT8ElU";s:5:"width";s:5:"465px";s:6:"height";s:5:"281px";s:9:"subinfo_1";s:3:"300";s:9:"subinfo_4";s:3:"300";}', 0),
(32, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"10";}', 0),
(33, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"10";}', 0),
(34, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"11";}', 0),
(35, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"11";}', 0),
(36, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(37, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(38, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(39, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(40, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(41, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(42, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(43, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:8:"asdfasdf";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"asdfadsf";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(44, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(45, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(46, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(47, '', 'button', 'a:13:{s:4:"wkey";s:1:"0";s:5:"wtype";s:6:"button";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:12:"button_title";s:4:"Save";s:4:"href";s:23:"http://www.leotheme.com";s:12:"color_button";s:11:"btn-default";s:4:"icon";s:0:"";s:4:"size";s:6:"btn-sm";s:8:"el_class";s:0:"";}', 0),
(48, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(49, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(50, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(51, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(52, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(53, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(54, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(55, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"55";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:11:"Electronics";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"8";}', 0),
(56, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"56";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:11:"Electronics";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"8";}', 0),
(60, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"60";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:6:"Makeup";s:14:"widget_title_2";s:6:"Makeup";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(62, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"62";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Skin care";s:14:"widget_title_2";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(63, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"Hair";s:14:"widget_title_2";s:4:"Hair";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"10";}', 0),
(67, '', 'product_list', 'a:14:{s:4:"wkey";s:2:"67";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Popular";s:14:"widget_title_2";s:7:"Popular";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"4";s:12:"itemsperpage";s:1:"4";s:4:"cols";s:1:"1";s:5:"width";s:3:"100";s:6:"height";s:3:"100";s:9:"list_type";s:7:"popular";s:14:"choose_product";s:0:"";}', 0),
(69, '', 'html', 'a:9:{s:4:"wkey";s:2:"69";s:5:"wtype";s:4:"html";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:19:"WELCOME TO THE CLUB";s:14:"widget_title_2";s:19:"WELCOME TO THE CLUB";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:853:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by Dominique Mandonnaud in 1970. Sephora''s unique, open-sell environment features an ever-increasing amount of classic and emerging brands across a broad range of product categories including skincare, color, fragrance, body, smilecare, and haircare, in addition to Sephora''s own private label.&lt;/p&gt;&lt;p&gt; Today, Sephora is not only the leading chain of perfume and cosmetics stores in France, but also a powerful beauty presence in countries around the world. To build the most knowledgeable and professional team of product consultants in the beauty industry, Sephora developed &quot;Science of Sephora.&quot; This program ensures that our team is skilled to identify skin types, have knowledge of skin physiology, the history of makeup, application techniques.&lt;/p&gt;";s:13:"htmlcontent_2";s:852:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by Dominique Mandonnaud in 1970. Sephora''s unique, open-sell environment features an ever-increasing amount of classic and emerging brands across a broad range of product categories including skincare, color, fragrance, body, smilecare, and haircare, in addition to Sephora''s own private label.&lt;/p&gt;&lt;p&gt;Today, Sephora is not only the leading chain of perfume and cosmetics stores in France, but also a powerful beauty presence in countries around the world. To build the most knowledgeable and professional team of product consultants in the beauty industry, Sephora developed &quot;Science of Sephora.&quot; This program ensures that our team is skilled to identify skin types, have knowledge of skin physiology, the history of makeup, application techniques.&lt;/p&gt;";}', 0),
(70, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:27:"Styling product &amp; tools";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"15";}', 0),
(71, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:6:"Makeup";s:14:"widget_title_2";s:6:"Makeup";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(72, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Skin care";s:14:"widget_title_2";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(73, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"Hair";s:14:"widget_title_2";s:4:"Hair";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"10";}', 0),
(74, '', 'product_list', 'a:14:{s:4:"wkey";s:2:"74";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Popular";s:14:"widget_title_2";s:7:"Popular";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"4";s:12:"itemsperpage";s:1:"4";s:4:"cols";s:1:"1";s:5:"width";s:3:"100";s:6:"height";s:3:"100";s:9:"list_type";s:7:"special";s:14:"choose_product";s:0:"";}', 0),
(75, '', 'html', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:19:"WELCOME TO THE CLUB";s:14:"widget_title_2";s:19:"WELCOME TO THE CLUB";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:875:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by \r\nDominique Mandonnaud in 1970. Sephora''s unique, open-sell environment \r\nfeatures an ever-increasing amount of classic and emerging brands across\r\n a broad range of product categories including skincare, color, \r\nfragrance, body, smilecare, and haircare, in addition to Sephora''s own \r\nprivate label.&lt;/p&gt;&lt;p&gt; Today, Sephora is not only the leading chain of \r\nperfume and cosmetics stores in France, but also a powerful beauty \r\npresence in countries around the world. To build the most knowledgeable \r\nand professional team of product consultants in the beauty industry, \r\nSephora developed &quot;Science of Sephora.&quot; This program ensures that our \r\nteam is skilled to identify skin types, have knowledge of skin \r\nphysiology, the history of makeup, application techniques.&lt;/p&gt;";s:13:"htmlcontent_2";s:875:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by \r\nDominique Mandonnaud in 1970. Sephora''s unique, open-sell environment \r\nfeatures an ever-increasing amount of classic and emerging brands across\r\n a broad range of product categories including skincare, color, \r\nfragrance, body, smilecare, and haircare, in addition to Sephora''s own \r\nprivate label.&lt;/p&gt;&lt;p&gt; Today, Sephora is not only the leading chain of \r\nperfume and cosmetics stores in France, but also a powerful beauty \r\npresence in countries around the world. To build the most knowledgeable \r\nand professional team of product consultants in the beauty industry, \r\nSephora developed &quot;Science of Sephora.&quot; This program ensures that our \r\nteam is skilled to identify skin types, have knowledge of skin \r\nphysiology, the history of makeup, application techniques.&lt;/p&gt;";}', 0),
(76, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:27:"Styling product &amp; tools";s:14:"widget_title_2";s:27:"Styling product &amp; tools";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"15";}', 0),
(77, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:6:"Makeup";s:14:"widget_title_2";s:6:"Makeup";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(78, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Skin care";s:14:"widget_title_2";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(79, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"Hair";s:14:"widget_title_2";s:4:"Hair";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"10";}', 0),
(80, '', 'product_list', 'a:14:{s:4:"wkey";s:1:"0";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Popular";s:14:"widget_title_2";s:7:"Popular";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"4";s:12:"itemsperpage";s:1:"4";s:4:"cols";s:1:"1";s:5:"width";s:3:"100";s:6:"height";s:3:"100";s:9:"list_type";s:7:"popular";s:14:"choose_product";s:0:"";}', 0),
(81, '', 'html', 'a:9:{s:4:"wkey";s:2:"81";s:5:"wtype";s:4:"html";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:19:"WELCOME TO THE CLUB";s:14:"widget_title_2";s:19:"WELCOME TO THE CLUB";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:386:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by \r\nDominique Mandonnaud in 1970. Sephora''s unique, open-sell environment \r\nfeatures an ever-increasing amount of classic and emerging brands across\r\n a broad range of product categories including skincare, color, \r\nfragrance, body, smilecare, and haircare, in addition to Sephora''s own \r\nprivate label.&lt;/p&gt;";s:13:"htmlcontent_2";s:396:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by \r\nDominique Mandonnaud in 1970. Sephora''s unique, open-sell environment \r\nfeatures an ever-increasing amount of classic and emerging brands across\r\n a broad range of product categories including skincare, color, \r\nfragrance, body, smilecare, and haircare, in addition to Sephora''s own \r\nprivate label.&lt;br&gt;&lt;/p&gt;";}', 0),
(82, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:27:"Styling product &amp; tools";s:14:"widget_title_2";s:27:"Styling product &amp; tools";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"15";}', 0),
(83, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:9:"Skin care";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Skin care";s:14:"widget_title_2";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(84, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:7:"Make up";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Make up";s:14:"widget_title_2";s:7:"Make up";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(85, '', 'html', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:8:"Pharmacy";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"Pharmacy";s:14:"widget_title_2";s:8:"Pharmacy";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:258:"&lt;p&gt;Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris. Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris.&lt;/p&gt;";s:13:"htmlcontent_2";s:258:"&lt;p&gt;Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris. Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris.&lt;/p&gt;";}', 0),
(86, '', 'product_category', 'a:12:{s:4:"wkey";s:2:"86";s:5:"wtype";s:16:"product_category";s:11:"widget_name";s:12:"Best sellers";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:12:"Best sellers";s:14:"widget_title_2";s:12:"Best sellers";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:1:"3";s:6:"column";s:1:"3";s:11:"image_width";s:3:"270";s:12:"image_height";s:3:"360";}', 0),
(87, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:9:"Skin care";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:9:"Skin care";s:14:"widget_title_1";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(88, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:9:"Skin care";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:9:"Skin care";s:14:"widget_title_1";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(89, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:7:"Make up";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:7:"Make up";s:14:"widget_title_1";s:7:"Make up";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(90, '', 'html', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:8:"Pharmacy";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:8:"Pharmacy";s:14:"widget_title_1";s:8:"Pharmacy";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_2";s:264:"&lt;p&gt;Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum \r\nodio sit Amet nibh ulpate Cursus a sit amet mauris. Proin gravida nibh \r\nVelit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh \r\nulpate Cursus a sit amet mauris.&lt;/p&gt;";s:13:"htmlcontent_1";s:264:"&lt;p&gt;Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum \r\nodio sit Amet nibh ulpate Cursus a sit amet mauris. Proin gravida nibh \r\nVelit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh \r\nulpate Cursus a sit amet mauris.&lt;/p&gt;";}', 0),
(93, '', 'product_category', 'a:12:{s:4:"wkey";s:2:"93";s:5:"wtype";s:16:"product_category";s:11:"widget_name";s:12:"Best sellers";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:12:"BEST SELLERS";s:14:"widget_title_1";s:12:"BEST SELLERS";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:1:"3";s:6:"column";s:1:"3";s:11:"image_width";s:3:"270";s:12:"image_height";s:3:"360";}', 0),
(98, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"98";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:13:"Geode Jewelry";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:13:"Geode Jewelry";s:14:"widget_title_2";s:13:"Geode Jewelry";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(96, '', 'product_list', 'a:14:{s:4:"wkey";s:2:"96";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:8:"Sale off";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"Sale off";s:14:"widget_title_2";s:8:"Sale off";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"3";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"width";s:3:"240";s:6:"height";s:3:"240";s:9:"list_type";s:7:"special";s:16:"choose_product_0";s:0:"";}', 0),
(97, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"97";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:15:"Carving Jewelry";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:15:"Carving Jewelry";s:14:"widget_title_2";s:15:"Carving Jewelry";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"77";s:5:"limit";s:2:"10";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1),
(3485, 220, 'Donets''ka Oblast''', '14', 1),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1),
(3487, 220, 'Khersons''ka Oblast''', '65', 1),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1),
(3492, 220, 'Luhans''ka Oblast''', '09', 1),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1),
(3495, 220, 'Odes''ka Oblast''', '51', 1),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1),
(3498, 220, 'Sevastopol''', '40', 1),
(3499, 220, 'Sums''ka Oblast''', '59', 1),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1),
(3502, 220, 'Volyns''ka Oblast''', '07', 1),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`affiliate_activity_id`);

--
-- Indexes for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`,`parent_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_megamenu`
--
ALTER TABLE `oc_megamenu`
  ADD PRIMARY KEY (`megamenu_id`);

--
-- Indexes for table `oc_megamenu_description`
--
ALTER TABLE `oc_megamenu_description`
  ADD PRIMARY KEY (`megamenu_id`,`language_id`),
  ADD KEY `name` (`title`);

--
-- Indexes for table `oc_megamenu_widgets`
--
ALTER TABLE `oc_megamenu_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_menu`
--
ALTER TABLE `oc_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `oc_menu_description`
--
ALTER TABLE `oc_menu_description`
  ADD PRIMARY KEY (`menu_id`,`language_id`);

--
-- Indexes for table `oc_menu_module`
--
ALTER TABLE `oc_menu_module`
  ADD PRIMARY KEY (`menu_module_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_pavblog_blog`
--
ALTER TABLE `oc_pavblog_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `oc_pavblog_category`
--
ALTER TABLE `oc_pavblog_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `oc_pavblog_category_description`
--
ALTER TABLE `oc_pavblog_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`title`);

--
-- Indexes for table `oc_pavblog_comment`
--
ALTER TABLE `oc_pavblog_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `FK_blog_comment` (`blog_id`);

--
-- Indexes for table `oc_pavnewsletter_draft`
--
ALTER TABLE `oc_pavnewsletter_draft`
  ADD PRIMARY KEY (`draft_id`);

--
-- Indexes for table `oc_pavnewsletter_email`
--
ALTER TABLE `oc_pavnewsletter_email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `oc_pavnewsletter_history`
--
ALTER TABLE `oc_pavnewsletter_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_pavnewsletter_subscribe`
--
ALTER TABLE `oc_pavnewsletter_subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `oc_pavnewsletter_template`
--
ALTER TABLE `oc_pavnewsletter_template`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `oc_pavoslidergroups`
--
ALTER TABLE `oc_pavoslidergroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_pavosliderlayers`
--
ALTER TABLE `oc_pavosliderlayers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `oc_pavwidget`
--
ALTER TABLE `oc_pavwidget`
  ADD PRIMARY KEY (`pavwidget_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_verticalmenu`
--
ALTER TABLE `oc_verticalmenu`
  ADD PRIMARY KEY (`verticalmenu_id`);

--
-- Indexes for table `oc_verticalmenu_description`
--
ALTER TABLE `oc_verticalmenu_description`
  ADD PRIMARY KEY (`verticalmenu_id`,`language_id`),
  ADD KEY `name` (`title`);

--
-- Indexes for table `oc_verticalmenu_widgets`
--
ALTER TABLE `oc_verticalmenu_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3211;
--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=806;
--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_megamenu`
--
ALTER TABLE `oc_megamenu`
  MODIFY `megamenu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `oc_megamenu_widgets`
--
ALTER TABLE `oc_megamenu_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `oc_menu`
--
ALTER TABLE `oc_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavblog_blog`
--
ALTER TABLE `oc_pavblog_blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `oc_pavblog_category`
--
ALTER TABLE `oc_pavblog_category`
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `oc_pavblog_comment`
--
ALTER TABLE `oc_pavblog_comment`
  MODIFY `comment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_draft`
--
ALTER TABLE `oc_pavnewsletter_draft`
  MODIFY `draft_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_email`
--
ALTER TABLE `oc_pavnewsletter_email`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_history`
--
ALTER TABLE `oc_pavnewsletter_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_subscribe`
--
ALTER TABLE `oc_pavnewsletter_subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_template`
--
ALTER TABLE `oc_pavnewsletter_template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavoslidergroups`
--
ALTER TABLE `oc_pavoslidergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_pavosliderlayers`
--
ALTER TABLE `oc_pavosliderlayers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `oc_pavwidget`
--
ALTER TABLE `oc_pavwidget`
  MODIFY `pavwidget_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20464;
--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;
--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4012;
--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;
--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=685;
--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=732;
--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=932;
--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_verticalmenu`
--
ALTER TABLE `oc_verticalmenu`
  MODIFY `verticalmenu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `oc_verticalmenu_widgets`
--
ALTER TABLE `oc_verticalmenu_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4236;
--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
