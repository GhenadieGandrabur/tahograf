-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2024 at 09:44 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tahograf_accounting`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Tahografe'),
(2, 'Incalzitoare'),
(3, 'Radio CB'),
(4, 'Radio VHF/UHF'),
(6, 'Acesorii');

-- --------------------------------------------------------

--
-- Table structure for table `constant`
--

CREATE TABLE `constant` (
  `id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `constant_name_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `unit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constant`
--

INSERT INTO `constant` (`id`, `start_date`, `constant_name_id`, `value`, `unit`) VALUES
(1, '2020-01-01', 1, '20', '%'),
(2, '2020-01-01', 2, '30', '%'),
(4, '2020-01-01', 3, '500', 'lei');

-- --------------------------------------------------------

--
-- Table structure for table `constant_name`
--

CREATE TABLE `constant_name` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constant_name`
--

INSERT INTO `constant_name` (`id`, `name`, `code`) VALUES
(1, 'VAT', 'vat'),
(2, 'Default margin', 'margin'),
(3, 'Norm time', 'norm_time');

-- --------------------------------------------------------

--
-- Table structure for table `costs`
--

CREATE TABLE `costs` (
  `id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `costs`
--

INSERT INTO `costs` (`id`, `name`) VALUES
(1, 'Transport'),
(2, 'Taxe vamale import'),
(3, 'Proceduri vamale'),
(4, 'Servicii brocker'),
(5, 'Declaratia'),
(6, 'Taxe ecologice'),
(7, 'Terminal');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`) VALUES
(1, 'LEU'),
(2, 'EUR'),
(3, 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `exchange`
--

CREATE TABLE `exchange` (
  `id` int(11) NOT NULL,
  `currency_id` int(8) NOT NULL,
  `buy` decimal(10,4) NOT NULL,
  `sell` decimal(10,4) NOT NULL,
  `bnm` decimal(10,4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exchange`
--

INSERT INTO `exchange` (`id`, `currency_id`, `buy`, `sell`, `bnm`, `created`) VALUES
(1, 1, '1.0000', '1.0000', '1.0000', '2023-05-25 17:49:55'),
(2, 2, '19.9000', '19.9000', '19.3000', '2023-05-25 18:05:38'),
(3, 3, '18.0000', '18.8888', '17.3000', '2023-05-25 18:06:12'),
(4, 2, '20.0000', '0.0000', '20.0000', '2022-01-01 00:00:00'),
(5, 1, '1.0000', '0.0000', '1.0000', '2022-01-01 00:00:00'),
(6, 3, '15.0000', '18.0000', '15.0000', '2022-01-01 00:00:00'),
(7, 2, '20.0000', '19.9900', '19.1267', '2023-09-19 00:00:00'),
(8, 2, '20.0000', '19.0000', '19.2850', '2023-09-13 00:00:00'),
(9, 2, '20.0000', '19.0000', '19.2850', '2023-09-16 00:00:00'),
(11, 2, '20.0000', '0.0000', '19.2070', '2023-09-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `docname` varchar(127) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `partner_name` varchar(255) NOT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `type` smallint(6) NOT NULL DEFAULT 0,
  `amount` decimal(10,2) NOT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `docname`, `partner_id`, `partner_name`, `created`, `type`, `amount`, `currency_id`) VALUES
(2, 'Seller 01 ', 3, 'Lontex', '2023-09-01 11:51:55', 0, '2684.00', 2),
(3, 'Order #3 from 13.09.2023', 7, 'SVITTAHO', '2023-09-13 00:00:00', 1, '195139.53', 2),
(4, '', 5, 'WEBCO', '2023-08-24 09:45:35', 0, '22000.00', 2),
(5, '', 5, '', '2023-08-24 10:04:17', 0, '123.00', 0),
(6, '', 5, '', '2023-08-24 10:09:54', 0, '123.00', 0),
(7, 'Order #7 from 24.08.2023', 5, '', '2023-08-24 10:11:04', 0, '123.00', 0),
(8, 'Order #8 from 24.08.2023', 5, '', '2023-08-24 10:15:13', 0, '123.00', 0),
(9, 'Order #9 from 24.08.2023', 2, 'Webasto', '2023-08-24 10:22:51', 0, '123.00', 0),
(10, 'Order #10 from 24.08.2023', 2, 'Webasto', '2023-08-24 10:23:28', 0, '123.00', 0),
(11, 'Order #0 from 25.08.2023', 2, 'Webasto', '2023-08-25 16:50:47', 0, '0.00', 1),
(12, 'Order #0 from 30.08.2023', 2, 'Webasto', '2023-08-30 09:48:30', 0, '123.00', 0),
(13, 'Order #13 from 30.08.2023', 2, 'Webasto', '2023-08-30 09:52:45', 0, '123.00', 0),
(14, '', 5, 'WEBCO', '2023-08-30 10:00:32', 0, '123.00', 0),
(15, 'Order #0 from 30.08.2023', 5, 'WEBCO', '2023-08-30 10:00:32', 0, '123.00', 0),
(16, 'Order #16 from 30.08.2023', 5, 'WEBCO', '2023-08-30 10:04:53', 0, '123.00', 0),
(17, 'Order #17 from 04.09.2023', 1, 'Fomco SRL', '2023-08-30 10:04:53', 0, '123.00', 0),
(18, 'Order #18 from 04.09.2023', 3, 'Lontex', '2023-08-30 10:07:13', 0, '123.00', 0),
(19, '', 3, 'Lontex', '2023-09-04 19:11:10', 0, '123.00', 0),
(20, 'Order #20 from 04.09.2023', 3, 'Lontex', '2023-09-04 19:14:24', 0, '3850.00', 3),
(21, '', 3, 'Lontex', '2023-09-08 10:08:39', 0, '123.00', 2),
(22, '', 3, 'Lontex', '2023-09-08 10:09:31', 0, '5000.00', 1),
(23, 'Order #23 from 08.09.2023', 3, 'Lontex', '2023-09-08 00:00:00', 1, '97782.44', 2),
(24, '', 5, 'WEBCO', '2023-09-19 09:58:25', 0, '0.00', 3),
(25, '', 5, 'WEBCO', '2023-09-19 10:00:21', 0, '0.00', 3),
(26, '', 3, 'Lontex', '2023-09-19 11:25:04', 0, '0.00', 0),
(27, '', 3, 'Lontex', '2023-09-19 12:26:15', 0, '0.00', 0),
(28, 'Order #28 from 19.09.2023', 3, 'Lontex', '2023-09-19 12:26:45', 0, '742.00', 1),
(30, 'Order #30 from 09.09.2023', 8, 'UNIPLAST SRL', '2023-09-09 00:00:00', 1, '850.00', 1),
(31, 'Order #31 from 09.09.2023', 5, 'Eberspaecher', '2023-09-09 00:00:00', 1, '419739.57', 2),
(32, 'Order #32 from 19.09.2023', 6, 'PNI', '2023-09-19 00:00:00', 1, '81852.52', 2),
(33, 'Order #33 from 16.09.2023', 1, 'Fomco SRL', '2023-09-16 00:00:00', 1, '1928.50', 2),
(35, '', 4, 'TR auto', '2023-12-18 15:23:28', 0, '0.00', 0),
(36, 'Order #36 from 01.01.1970', 2, 'Webasto', '2024-01-19 11:18:46', 0, '200.00', 1),
(37, 'Order #37 from 01.01.2024', 1649, 'Old DB', '2024-01-01 00:00:00', 1, '60000.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_cost`
--

CREATE TABLE `orders_cost` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `costs_id` int(11) NOT NULL,
  `cost_name` varchar(255) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `summ` decimal(10,2) NOT NULL,
  `base_summ` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_cost`
--

INSERT INTO `orders_cost` (`id`, `order_id`, `costs_id`, `cost_name`, `currency_id`, `summ`, `base_summ`) VALUES
(6, 13, 1, 'Transport', 3, '654.00', '0.00'),
(7, 13, 2, 'Taxe vamale', 3, '87.00', '0.00'),
(21, 17, 3, 'Proceduri vamale', 3, '55.00', '0.00'),
(24, 19, 1, 'Transport', 3, '2.00', '0.00'),
(26, 16, 1, 'Transport', 3, '2.00', '0.00'),
(27, 16, 2, 'Taxe vamale', 3, '3.00', '0.00'),
(32, 18, 1, 'Transport', 3, '3.00', '0.00'),
(33, 18, 2, 'Taxe vamale', 3, '4.00', '0.00'),
(34, 18, 3, 'Proceduri vamale', 3, '300.00', '0.00'),
(278, 31, 5, 'Declaratia', 2, '100.00', '1920.70'),
(279, 31, 1, 'Transport', 2, '550.00', '10563.85'),
(280, 31, 3, 'Proceduri vamale', 1, '2014.29', '2014.29'),
(281, 31, 2, 'Taxe vamale import', 1, '20908.04', '20908.04'),
(282, 31, 6, 'Taxe ecologice', 1, '169.12', '169.12'),
(283, 31, 4, 'Servicii brocker', 1, '1000.00', '1000.00'),
(284, 31, 7, 'Terminal', 1, '200.00', '200.00'),
(288, 3, 3, 'Proceduri vamale', 1, '16163.72', '16163.72'),
(289, 3, 2, 'Taxe vamale import', 1, '333.10', '333.10'),
(290, 3, 2, 'Taxe vamale import', 1, '686.12', '686.12'),
(291, 3, 3, 'Proceduri vamale', 1, '897.26', '897.26'),
(292, 3, 4, 'Servicii brocker', 1, '833.00', '833.00'),
(293, 23, 3, 'Proceduri vamale', 1, '20.00', '20.00'),
(294, 23, 1, 'Transport', 2, '38.23', '737.84'),
(295, 23, 3, 'Proceduri vamale', 1, '100.00', '100.00'),
(300, 32, 2, 'Taxe vamale import', 1, '5967.53', '5967.53'),
(301, 32, 3, 'Proceduri vamale', 1, '457.86', '457.86'),
(302, 32, 1, 'Transport', 1, '3825.34', '3825.34'),
(303, 32, 4, 'Servicii brocker', 1, '833.00', '833.00'),
(304, 36, 1, 'Transport', 1, '100.00', '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `quantity` float NOT NULL,
  `invoice_amount` decimal(10,4) NOT NULL,
  `origin_price` decimal(10,4) NOT NULL,
  `cost_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `product_title`, `quantity`, `invoice_amount`, `origin_price`, `cost_price`) VALUES
(3, 6, 2, '', 23, '0.0000', '0.0000', '0.00'),
(4, 6, 14, '', 32, '0.0000', '0.0000', '0.00'),
(5, 7, 2, '', 23, '0.0000', '0.0000', '0.00'),
(6, 7, 14, '', 32, '0.0000', '0.0000', '0.00'),
(7, 8, 2, '', 23, '0.0000', '0.0000', '0.00'),
(8, 8, 14, '', 32, '0.0000', '0.0000', '0.00'),
(17, 13, 16, 'Contor km', 4, '0.0000', '0.0000', '0.00'),
(18, 13, 14, 'contor', 6, '0.0000', '0.0000', '0.00'),
(19, 13, 2, 'COMANDA BUTON AT 12/24V', 9, '0.0000', '0.0000', '0.00'),
(34, 17, 2, 'COMANDA BUTON AT 12/24V', 22, '0.0000', '0.0000', '0.00'),
(35, 17, 14, 'contor', 33, '0.0000', '0.0000', '0.00'),
(38, 19, 2, 'COMANDA BUTON AT 12/24V', 33, '0.0000', '0.0000', '0.00'),
(39, 19, 14, 'contor', 11, '0.0000', '0.0000', '0.00'),
(42, 16, 2, 'COMANDA BUTON AT 12/24V', 1, '0.0000', '0.0000', '0.00'),
(43, 16, 14, 'contor', 2, '0.0000', '0.0000', '0.00'),
(44, 16, 16, 'Contor km', 3, '0.0000', '0.0000', '0.00'),
(50, 18, 2, 'COMANDA BUTON AT 12/24V', 2, '33.0000', '33.0000', '0.00'),
(51, 18, 14, 'contor', 3, '30.0000', '30.0000', '0.00'),
(52, 18, 16, 'Contor km', 8, '33.0000', '33.0000', '0.00'),
(70, 20, 2, 'COMANDA BUTON AT 12/24V', 22, '175.0000', '10.0000', '0.00'),
(71, 21, 2, 'COMANDA BUTON AT 12/24V', 10, '2200.0000', '100.0000', '0.00'),
(72, 21, 14, 'contor', 20, '4400.0000', '200.0000', '0.00'),
(120, 22, 2, 'COMANDA BUTON AT 12/24V', 100, '10.0000', '10.0000', '0.00'),
(121, 22, 14, 'contor', 20, '200.0000', '200.0000', '0.00'),
(126, 4, 14, 'contor', 10, '2200.0000', '100.0000', '0.00'),
(135, 24, 2, 'COMANDA BUTON AT 12/24V', 2, '177.0000', '10.0000', '0.00'),
(136, 25, 2, 'COMANDA BUTON AT 12/24V', 2, '177.0000', '10.0000', '0.00'),
(137, 25, 14, 'contor', 0, '0.0000', '0.0000', '0.00'),
(144, 26, 13, 'TEDDY-II ASC STATIE RADIO', 2, '0.0000', '23.0000', '0.00'),
(146, 27, 13, 'TEDDY-II ASC STATIE RADIO', 2, '0.0000', '23.0000', '0.00'),
(149, 28, 2, 'COMANDA BUTON AT 12/24V', 2, '3.0000', '3.0000', '0.00'),
(150, 28, 14, 'contor', 23, '32.0000', '32.0000', '0.00'),
(175, 2, 2, 'COMANDA BUTON AT 12/24V', 10, '220.0000', '10.0000', '0.00'),
(176, 2, 14, 'contor', 1, '484.0000', '22.0000', '0.00'),
(317, 3, 23, 'TAHOGRAF SE5000 12V/24V (ADR)', 5, '8774.6750', '455.0000', '9716.40'),
(318, 3, 14, 'GEO LOC KIT DTCO A2C59517076', 2, '4281.2700', '222.0000', '4740.75'),
(319, 3, 16, 'PULSE CONVERTER KITAS2+', 2, '3317.0200', '172.0000', '3673.01'),
(320, 3, 22, 'TAHOGRAF SE5000 12V/24V (NON ADR)', 15, '7810.4250', '405.0000', '8648.67'),
(322, 30, 46, 'TUB AER ADMISIE ORIO ШСМ-300', 40, '21.2500', '21.2500', '21.25'),
(323, 23, 2, 'COMANDA BUTON AT 12/24V', 10, '1930.0000', '100.0000', '1947.08'),
(324, 23, 14, 'contor', 20, '3860.0000', '200.0000', '3894.16'),
(325, 23, 2, 'COMANDA BUTON AT 12/24V', 1, '38.6000', '2.0000', '38.94'),
(326, 23, 22, 'TAHOGRAF SE5000 12V/24V (NON ADR)', 10, '38.6000', '2.0000', '38.94'),
(330, 32, 17, 'ANTENA PNI-S9 FLUTURE 120CM (CABLU PNI-CAB-S9)', 250, '267.7738', '14.0000', '309.71'),
(331, 32, 18, 'MAGNET 120/DV 125MM (CU CABLU 4M MUFA PL2)', 20, '133.8869', '7.0000', '154.86'),
(332, 32, 19, 'ANTENA SEXTRA45 SPIC PNI', 20, '57.3801', '3.0000', '66.37'),
(335, 33, 13, 'TEDDY-II ASC STATIE RADIO', 10, '192.8500', '10.0000', '192.85'),
(336, 36, 35, 'VENTILATOR D2 24V', 1, '100.0000', '100.0000', '200.00');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `fiscalcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `fiscalcode`) VALUES
(1, 'ABC TRANSPORT SRL', ''),
(2, 'ADCALTRANS SRL', ''),
(3, 'ADG AUTO TRANS SRL', ''),
(4, 'ADNA-PLUS SRL', ''),
(5, 'AK BAS-COM SRL                                    ', ''),
(6, 'ALIONEXAGRO SRL', ''),
(7, 'ALTIRCOM SRL', ''),
(8, 'ANDEZIT SRL', ''),
(9, 'APOSTUTRANS SRL                                   ', ''),
(10, 'AQUATRADE SRL                                     ', ''),
(11, 'AQUATRADE SRL CASA COMERCIALA', ''),
(12, 'ARMAND ROUTE SRL                                  ', ''),
(13, 'ARSITRANS-M SRL', ''),
(14, 'AUTO TOPCONSTRUCT SRL                             ', ''),
(15, 'AUTOLAAC SRL', ''),
(16, 'AVIS-MMS SRL                                      ', ''),
(17, 'BIANCOM SRL', ''),
(18, 'BORS ION                                          ', ''),
(19, 'CARACON IMOBIL SRL', ''),
(20, 'CBN TRANSLOGISTIC SRL                             ', ''),
(21, 'CHIPER-AUTO SRL                                   ', ''),
(22, 'CIMISLIA TRANS SRL                                ', ''),
(23, 'COLVAS SRL                                        ', ''),
(24, 'COMAND-OR IMPEX SRL', ''),
(25, 'CRISLEOTRANS SRL', ''),
(26, 'CSC-TRANS SRL', ''),
(27, 'CSKLOGISTICS SRL', ''),
(28, 'DANELMARK SRL', ''),
(29, 'DANI-TRANS SRL', ''),
(30, 'DANVLADOR SRL SC', ''),
(31, 'DENIGO-TRANS SRL', ''),
(32, 'DIAUTO-EXPORT SRL', ''),
(33, 'DOMIDITRANS SRL', ''),
(34, 'DORU TRANS SRL', ''),
(35, 'ELSERVICE TRANS SRL', ''),
(36, 'ENDURO SRL', ''),
(37, 'EXIMAL TRANSCOM SRL', ''),
(38, 'EXIM-TRANS SRL', ''),
(39, 'F.C.P. FRODO SRL                                  ', ''),
(40, 'FCP FRODO SRL', ''),
(41, 'FORTENES SRL', ''),
(42, 'FORUM-TIR SRL', ''),
(43, 'FRIGO PRIM GRUP SRL', ''),
(44, 'FSV AUTO TRANS SRL', ''),
(45, 'FTI GRUP SRL                                      ', ''),
(46, 'GAL SPEDITION SRL', ''),
(47, 'GAVENTUR-EXPRES SRL                              ', ''),
(48, 'GEOCARGO WORLDWIDE SRL                            ', ''),
(49, 'GOLDSHMID EFIM', ''),
(50, 'IALCISCOM SRL', ''),
(51, 'IGEXPRESS TRANS SRL', ''),
(52, 'ILANDRO-TRANS SRL', ''),
(53, 'INAMSTRO SRL                                      ', ''),
(54, 'INVINVPROM SRL                                    ', ''),
(55, 'IUNAT SRL                                         ', ''),
(56, 'LECOSTAN SRL', ''),
(57, 'LELES STIL SRL', ''),
(58, 'LERANGO TRANS SRL', ''),
(59, 'LIMBURG SRL', ''),
(60, 'LKW LOGISTICS SEA SRL                             ', ''),
(61, 'LOGICO SOLUTIONS SRL', ''),
(62, 'LUCIMIT-TRANS SRL                                 ', ''),
(63, 'MAGNUM-TRANS SRL', ''),
(64, 'MARSOF LOGISTIC SRL', ''),
(65, 'MAVIROM TRANS SRL', ''),
(66, 'MEGA EXPRES SRL', ''),
(67, 'MIALEX-NORD SRL', ''),
(68, 'MORARU MIHAIL', ''),
(69, 'MVA-LOGISTIC SRL                                  ', ''),
(70, 'NAFTATRANS SRL', ''),
(71, 'NASTAS LEONID NICOLAE GT                          ', ''),
(72, 'OLALINA TRANS SRL', ''),
(73, 'OLSITRANS SRL', ''),
(74, 'OPTIMUM PROVISION SRL                             ', ''),
(75, 'ORIZONTUL SRL', ''),
(76, 'OSTROVSCAIA BVV-TRANS II', ''),
(77, 'PRIDE LOGISTIC SRL                                ', ''),
(78, 'PROCEMAR SRL', ''),
(79, 'PROSPER-TRANS SRL', ''),
(80, 'RINOXI-TRANS SRL', ''),
(81, 'ROMEDAN-COM SRL', ''),
(82, 'ROSA IGOR                                         ', ''),
(83, 'SABAL-TRANS SRL', ''),
(84, 'SAMO-LOGISTIC SRL', ''),
(85, 'SARVALTEH AUTO SRL', ''),
(86, 'STACI CONSTRUCT IMPEX SRL                         ', ''),
(87, 'STASTRANS COMPANY SRL', ''),
(88, 'STICI SRL', ''),
(89, 'TEHELECTRO-SV SRL', ''),
(90, 'TESICO GRUP SRL', ''),
(91, 'TINTORETO-TRANS SRL', ''),
(92, 'TIR MADLIN TRANS SRL', ''),
(93, 'TRANS GRILIA SRL', ''),
(94, 'TRANS TRUCK SERVICES SRL                         ', ''),
(95, 'TRANS-CE SRL                                      ', ''),
(96, 'TRANS-ECOSTOC SRL', ''),
(97, 'TRANSGLOBAL SUPER SRL                             ', ''),
(98, 'TRANSIBIR GRUP SRL', ''),
(99, 'TRANSIMEX SRL', ''),
(100, 'TRANS-LICHID SRL', ''),
(101, 'TRANS-STEPAN SRL', ''),
(102, 'TRANSTEH-COM SRL', ''),
(103, 'TR-AUTO SRL', ''),
(104, 'TRIGOR AVD SRL', ''),
(105, 'UNIC-SERVICE SRL', ''),
(106, 'UNIGAZ GRUP SRL', ''),
(107, 'UVIGO-COMERT SRL', ''),
(108, 'VASCO TRANSCOM SRL', ''),
(109, 'VELMANOR SRL', ''),
(110, 'VERO-NADINA SRL', ''),
(111, 'VIMACON TRANS SRL', ''),
(112, 'VITLA-PETROL SRL', ''),
(113, 'VITOTRANS TT SRL                                  ', ''),
(114, 'VLADEUROTUR SRL', ''),
(115, 'VLADIALES TRANS EXPEDITIE SRL', ''),
(116, 'VLADIGOR TRANS SRL', ''),
(117, 'ZMEU STEFAN VLADIMIR G T', ''),
(118, 'PERCEMLI LOGISTIC SRL                             ', ''),
(119, 'RG-CARGO SRL', ''),
(122, 'OLERO SRL', ''),
(123, 'NICOLTRANS SRL', ''),
(124, 'NICOLAPRIMTRANS SRL', ''),
(125, 'VITRA SRL', ''),
(126, 'LOREDANTRANS SRL', ''),
(128, 'TRANSPATRICIA SRL', ''),
(130, 'TRANSICONS  SRL', ''),
(131, 'ALIUR TRANS LOGISTIC SRL', ''),
(134, 'NP-PVG TRANS SRL ', ''),
(136, 'TREI V GRUP SRL', ''),
(145, 'PASARE ARGINTIE SRL', ''),
(146, 'SERCAN-PRIM SRL', ''),
(147, 'TRANS LIMIT SRL', ''),
(148, 'TRUCK HOUSE SRL  ', ''),
(150, 'Test005', ''),
(151, 'BPM-STROY SRL', ''),
(152, 'CATTRANS-AUTO SRL', ''),
(158, 'SVP TRANSTIME SRL', ''),
(159, 'ROMOLDFRUCT SRL', ''),
(160, 'ROMCARGO SRL', ''),
(161, 'PADURET ALEXANDRU II', ''),
(162, 'LUIsdor-trans srl', ''),
(164, 'TRANSCON-M SA', ''),
(165, 'TRANS-ARCTIC GRUP SRL', ''),
(166, 'EXPO CONFORT TRANS SRL', ''),
(167, 'VITALCOMUS SRL', ''),
(168, 'WEKTOR & ko SRL', ''),
(169, 'ALIS AUTO LUX SRL', ''),
(170, 'JBI-BETON N3 SRL   ', ''),
(171, 'MATERIMCINS SRL', ''),
(172, 'ESTCON CONSTRUCT SRL', ''),
(173, 'AGRO-NOVA PRIM SRL', ''),
(174, 'RUSAGro-prim srl', ''),
(175, 'UNIL-rvs-trans srl', ''),
(176, 'SECTIA CULTURA IALOVENI', ''),
(177, 'TRANS EUGILIOn com srl', ''),
(178, 'ANDROSTRANS SRL', ''),
(180, 'DANI TRANS TOUR SRL', ''),
(181, 'VP MOTOTRANS SRL', ''),
(182, 'NISTRAVEL-BC SRL', ''),
(183, 'KING TRANS SRL', ''),
(184, 'TOPICTOP', ''),
(185, 'SERLIA-TRANS SRL', ''),
(186, 'P.A.T. 9 SRL', ''),
(187, 'NG FINANCE GROUP SRL', ''),
(188, 'BIOPRODUCT GROUP SRL', ''),
(189, 'CORISA-AUTOTRANS SRL', ''),
(190, 'TRANS-SPRINT SRL', ''),
(191, 'RODALS SRL', ''),
(192, 'XENAN TRANS SRL', ''),
(193, 'DIMARCO TRANS SRL', ''),
(194, 'POPIC VICTOR', ''),
(195, 'DUNAI VALERIAN', ''),
(196, 'COS trans logistic srl', ''),
(197, 'AGROCOPACENI SRL', ''),
(199, 'VIOTRADE GROUP SRL', ''),
(200, 'ORHDONC SRL', ''),
(201, 'AUTO GRUP TRANS SRL', ''),
(202, 'PAINT SERVICE SRL', ''),
(203, 'TRANSIBERIA LTD', ''),
(204, 'TULGARA IURIE', ''),
(205, 'DDN PRO GRUP SRL', ''),
(206, 'GIONI TRANS SRL', ''),
(207, 'OLIMP SRL', ''),
(208, 'MOLDAVSKII STANDART SRL', ''),
(209, 'VVV AUTOPRIM SRL', ''),
(210, 'CONCRETE AUTO SRL', ''),
(211, 'TRANSLOGISTIC-13 SRL', ''),
(212, 'IMPERADOR SRL', ''),
(213, 'DAFINO GRUP SRL', ''),
(214, 'BODEANU ', ''),
(215, 'REFLIDER SRL', ''),
(216, 'CRASDAN SRL', ''),
(217, 'FRUCT EXPERT-PLUS SRL', ''),
(218, 'CALANICI IGOR', ''),
(219, 'ALEX NORD TRANS SRL', ''),
(220, 'CEBAN VITALIE', ''),
(221, 'NOVEX PRIM SRL', ''),
(223, 'BPM-TRADE SRLSRL', ''),
(224, 'PA-1 SA', ''),
(225, 'TRANSGOT SRL', ''),
(226, 'LINCONS SRL', ''),
(227, 'ATOMIC ENERGY TRANS SRL', ''),
(228, 'IMCOMVIL GRUP SRL', ''),
(229, 'ADENOSAR SRL', ''),
(230, 'APPIOTOURS SRL', ''),
(231, 'BEMOL RETAIL SRL', ''),
(232, 'ARM TRANS GROUP SRL', ''),
(234, 'GARMA-GRUP SRL', ''),
(235, 'CANCUN PRIM SRL', ''),
(236, 'TRUCK ROUTE SRL', ''),
(237, 'IVARO SRL', ''),
(238, 'VIAM-TRANS SRL', ''),
(239, 'GALEXIM GRUP SRL', ''),
(240, 'SERV & TRANS SRL', ''),
(241, 'GALIZ-SV SRL', ''),
(242, 'K.R.A. TRANS SRL', ''),
(243, 'ANAGRIGO SRL', ''),
(244, 'DOVIMAR-TRANS SRL', ''),
(245, 'BOGDAN DENIS SRL', ''),
(246, 'MATERIMCONS SRL', ''),
(247, 'CANDELUX-COM SRL', ''),
(248, 'MG CARGO TRANS SRL', ''),
(249, 'ZOLOTOI AIST SRL', ''),
(250, 'GOIANA PETR.CO SRL', ''),
(251, 'OROM-IMEXPO SRL', ''),
(252, 'TANCARGO EXPRES SRL', ''),
(254, 'ARTEMON PLUS SRL', ''),
(255, 'GHINDALEX-TRANS SRL', ''),
(256, 'AUTION  TRANS SRL', ''),
(257, 'PRORUC-TRANS SRL', ''),
(258, 'VALENTI-PRIMTUR SRL', ''),
(259, 'AVATIR-TRANS SRL', ''),
(260, 'SERVICE TULIS SRL', ''),
(261, 'VENTO RETAIL SRL', ''),
(262, 'VLALEXCON COM SRL', ''),
(263, 'TRANS LOGISTIC NEO SRL', ''),
(264, 'DOGGER TRANS EXPEDIT SRL', ''),
(265, 'MINI AUTO-GRUP SRL', ''),
(266, 'GHIOCEL SRL', ''),
(267, 'CREDO INDUSTRY SRL', ''),
(268, 'LIONTRANS AZ SRL', ''),
(269, 'ANDREI DANU TRANSPORT SRL', ''),
(270, 'IULITRANS-MV SRL', ''),
(271, 'FANI SRL', ''),
(272, 'OLDANA-MOB SRL', ''),
(273, 'BIG BOSS TRUCKS SRL', ''),
(274, 'CIAICA-TUR SRL', ''),
(275, 'DIANTRANS-TIR SRL', ''),
(276, 'VASILTRANSIRI SRL', ''),
(277, 'SALIUDAN-COM SRL.', ''),
(278, 'BOLOCAN IRINA DMITRI GT', ''),
(279, 'BANARI TRANS SRL', ''),
(280, 'SLAVTRANS-XXI SRL', ''),
(281, 'TRANSBIM GRUP SRL', ''),
(282, 'NICOLTRANS SRL.', ''),
(283, 'BOGDAS TRANS SRL', ''),
(284, 'AGERCONSGRUP SRL', ''),
(285, 'TRANS XF SRL', ''),
(286, 'AGERTRANS GRUP SRL', ''),
(287, 'MAJOR TRANS SRL', ''),
(288, 'POST RAPID SRL', ''),
(289, 'CALBIAUTO-TRANS SRL', ''),
(290, 'MAGTRANS SERVICE SRL', ''),
(291, 'ARVI INVEST LOGISTICS SRL', ''),
(292, 'RUROSA SRL FPC', ''),
(293, 'NIVERANT SRL.', ''),
(294, 'IUGINTERTRANS S.A.', ''),
(295, 'TARTCOMVIN SRL.', ''),
(296, 'MACINATORUL SRL', ''),
(297, 'LIAICUL SRL', ''),
(298, 'MARI-TRANS GLOBAL SRL', ''),
(299, 'VERNON-PRIM SRL.', ''),
(300, 'AUTOTRANS SISTEM SRL', ''),
(301, 'V.V.PACI-TRANS SRL', ''),
(302, 'MADIM-PRIM SRL', ''),
(303, 'MAGAS-TRANS SRL', ''),
(304, 'TEO-MEGATRANS SRL', ''),
(305, 'SOLMET-COM SRL', ''),
(306, 'BPM-TRADE SRL', ''),
(307, 'AB-TRANS SRL', ''),
(308, 'ALEX-TRANS-LOGIC SRL', ''),
(309, 'JOLNACI ALEXANDRU II', ''),
(310, 'BETON-INDUSTRIE SRL', ''),
(311, 'LAPMOL SRL', ''),
(312, 'VOINKOFF GROUP SRL', ''),
(313, 'BINIVIRTRANS SRL', ''),
(314, 'VIAEXTRANS SRL', ''),
(315, 'CARGODOOR SRL', ''),
(316, 'ROMTRANS-EXPRES SRL', ''),
(317, 'TRANS-DIREX SRL', ''),
(318, 'MSCURIER PRIM SRL', ''),
(319, 'PALARIS SERVICE SRL', ''),
(320, 'TERRA LOGISTIC SRL', ''),
(321, 'FORTE LOGISTICS SRL', ''),
(322, 'DOGA-VITALTRANS SRL', ''),
(323, 'ENERGO PETROL-ML SRL', ''),
(324, 'CRISTAL-SEB SRL', ''),
(325, 'ISPAN-LUX SRL', ''),
(326, 'BASARABIA IMPEX SRL', ''),
(327, 'SLAVANDRA SRL', ''),
(328, 'OVS-TRANS SRL', ''),
(329, 'CALATORUL-TRANSTALMAZAN SRL', ''),
(330, 'VIV SA', ''),
(331, 'ROATA-SERT SRL', ''),
(332, 'EUROCIMENT SRL', ''),
(333, 'BIANCONERO SRL', ''),
(334, 'DIMEC IMPEX SRL CS', ''),
(335, 'MOBILA DIN CODRU SRL', ''),
(336, 'AK AGROTRANS SRL', ''),
(337, 'BETTER TRANSPORT SRL', ''),
(338, 'VOLAN-AUTOTRANS S.A.', ''),
(339, 'VALVITRANS-EXPEDITIE SRL', ''),
(340, 'DOLAYTRANS SRL', ''),
(341, 'ONERARIIS-T SRL', ''),
(342, 'TEMPOTRANS EXPRESS SRL', ''),
(343, 'PETSIMPLAST SRL', ''),
(344, 'BICAR-BIMPEX SRL', ''),
(345, 'DINAMIC-TRANS SRL', ''),
(346, 'VEBTRANS SRL', ''),
(347, 'LETYRO GROUP SRL', ''),
(348, 'LIDI-CARAVAT SRL', ''),
(349, 'Testouner', '123'),
(350, 'NOVA ACCENT SRL', ''),
(351, 'MILENDEN TRANS SRL', ''),
(352, 'G.P.M.AGRO SRL', ''),
(353, 'MAGIRUS SRL', ''),
(354, 'CATADENI-LUX SRL', ''),
(355, 'TEHMET PRIM SRL', ''),
(356, 'DILIVERTRANS SRL', ''),
(357, 'TRANSENERGOPROIECT SRL', ''),
(358, 'TIMCIUC VITALIE', ''),
(359, 'MIDITESCO SRL', ''),
(360, 'VP TIR TRANS SRL', ''),
(361, 'BRIZ TRADING SRL', ''),
(363, 'BASCONSLUX SRL', ''),
(365, 'TAURUS AGRICULTURA SRL                            ', ''),
(366, 'A.V.N.-DRAGOS SRL', ''),
(367, 'ELIONTRANS SRL', ''),
(368, 'MARTIN SRL', ''),
(369, 'MAJAR-COM SRL', ''),
(370, 'SAGATRANS SRL', ''),
(371, 'LOGISTIC GRUP SRL', ''),
(372, 'MASTERDRUM SRL', ''),
(373, 'LANACOMLUX SRL', ''),
(374, 'FRAI CONSTRUCT SRL', ''),
(375, 'CARGO TRAFIC SRL', ''),
(376, 'MUNTEAN MOLTRANS SRL', ''),
(377, 'GD-TRANSSOLUTIONS SRL', ''),
(378, 'TRANSFRIGO SRL', ''),
(380, 'BIOGRAIN COMPANY SRL', ''),
(381, 'COVCOR SRL', ''),
(382, 'DELTRANS-PLUS SRL', ''),
(383, 'TAVLANI COM', ''),
(384, 'ASOCIATIA OBSTEASCA POZITIV', ''),
(385, 'LEOCONS-PLUS SRL', ''),
(386, 'SMADIC&co srl', ''),
(387, 'TRANSTEST SRL', ''),
(388, 'PRO-AMBROCART SRL', ''),
(389, 'ROTSER-TRANS SRL', ''),
(390, 'GROZAVU SRL', ''),
(391, 'OPTIMUS PRIME TRANS SRL', ''),
(392, 'LUSMECON SA', ''),
(393, 'JITARU.P.-TRANS SRL', ''),
(394, 'BERCOLTRANS SRL', ''),
(397, 'SILICOM-TRANS SRL', ''),
(398, 'BORTRANS GRUP SRL', ''),
(399, 'AUTO GRITCAN SRL', ''),
(400, 'EMIL&IAN SERVICE SRL', ''),
(401, 'PETIBORTRANS SRL', ''),
(402, 'GRANCOMER SRL', ''),
(403, 'VXV TRADE SRL', ''),
(404, 'CATRINNESCU SORIN II', ''),
(405, 'KRONUS WWT SRL', ''),
(406, 'MAX-GRITCAN II', ''),
(407, 'DARES-TRANS SRL', ''),
(408, 'PARK LOGISTIC SRL', ''),
(409, 'GHEO-TRANS S.R.O.', ''),
(410, 'LEMAX LOGISTIC SRL', ''),
(411, 'AUTO LAPTE PLUS SRL', ''),
(412, 'KVINT TWCD', ''),
(413, 'LE BRIDGE CORPORATION LIMITED SRL', ''),
(414, 'BIMETCOM SRL', ''),
(415, 'ALTUR-IMPEX XRL', ''),
(416, 'TEHELAN SRL', ''),
(417, 'MARITIMTRANS SRL', ''),
(418, 'SIRBUEL TRANS SRL', ''),
(419, 'EXPRESCONTAINER SRL', ''),
(420, 'TIR LINE SRL', ''),
(421, 'CREAVITA SRL', ''),
(422, 'DOVRIC GRUP SRL', ''),
(423, 'CUPOS-COM SRL', ''),
(424, 'POLIMER GAZ CONDUCTE SRL', ''),
(425, 'MAVINELI COM SRL', ''),
(426, 'DORVIC GRUP SRL', ''),
(427, 'KELMAN GRUP SRL', ''),
(428, 'LAVIAL ', ''),
(429, 'INCO GROUP COMPANY SRL', ''),
(430, 'DELTRANS GRUP SRL', ''),
(431, 'MEGALUX-TRANS SRL', ''),
(432, 'AMELIS-MARI SRL', ''),
(433, 'GHEORGHIES ANDREI', ''),
(434, 'SUBERNETCHI SERGHEI', ''),
(435, 'AQUAMAN ELIT SRL', ''),
(436, 'DIAZTRANS GROUP SRL', ''),
(437, 'VION-IMPEX SRL', ''),
(438, 'MARPET-EXIM SRL', ''),
(439, 'ESTCARGO-SERVICE SRL', ''),
(440, 'CARGOCIP SRL', ''),
(441, 'TRANSUNIT SRL', ''),
(442, 'CENTRAL LOGISTIC SRL', ''),
(443, 'GODEA CORNEL', ''),
(444, 'DASALUX-TRANS SRL', ''),
(445, 'DAW BENTA MOL SRL', ''),
(446, 'KOROLI LLC', ''),
(447, 'GHELIOS TRANS SRL', ''),
(448, 'DVD-TRANS SRL', ''),
(449, 'CARGOMOL GROUP SRL', ''),
(450, 'NPC ROYAL GROUP SRL', ''),
(451, 'ANGROTEH PRIM SRL', ''),
(452, 'VELATRANS EXPORT SRL', ''),
(453, 'SMILODON-PRIM SRL', ''),
(454, 'BASARABIA-NORD SRL', ''),
(455, 'SAVADEX-TRANS SRL', ''),
(456, 'CATALEYA-ALEX SRL', ''),
(457, 'GHENTRANS LOGISTIC SRL', ''),
(458, 'ECOVIVA-SERVICE SRL', ''),
(459, 'JLC SA', ''),
(460, 'DN-LOGISTIC SRL', ''),
(461, 'TRACKMIX SRL', '1022603002578'),
(462, 'TUR-EXTERN SRL', ''),
(463, 'OVIDARIUS TRANS SRL', ''),
(464, 'QQQ111OWNER2', ''),
(465, 'BASLIFT SRL', ''),
(466, 'BRODETCHI SRL', ''),
(467, 'MSM-MR SRL', ''),
(468, 'IPG-LOGISTIC SRL', ''),
(469, 'NCM TRAX SRL', ''),
(470, 'ENTERLOG SRL', ''),
(471, 'VIOLIV AUTO SRL', ''),
(472, 'ALANA TRANS SRL', ''),
(473, 'MALITRANSEXPED SRL', ''),
(474, 'TEHNO-TRANS SRL', ''),
(475, 'AUTOCARGO-GRUP SRL', ''),
(476, 'ACHIRA-GRUP SRL', ''),
(477, 'ACVILA LOGISTIC SRL', ''),
(478, 'ADNA-PLUS SRL.', ''),
(479, 'AEP REVITAL SRL', ''),
(480, 'AGROGAL-TRANS SRL', ''),
(481, 'AGROSTOC COOP', ''),
(482, 'AGROSTOC SRL', ''),
(483, 'AIS TRANS SERVICE SRL', ''),
(484, 'ALFAVIRA-IMPEX SRL', ''),
(485, 'ALVALVER SRL', ''),
(486, 'ARDAN-RUT SRL', ''),
(487, 'ARNITRANS SRL', ''),
(488, 'ARSITRANS-M SRL.', ''),
(489, 'ATEGOSLAV SRL', ''),
(490, 'AVS-TRANSCONSTRUCT SRL', ''),
(491, 'AYDIN TASIMACILIK', ''),
(492, 'AZ LINESRL', ''),
(493, 'B&B AUTOTRANS SRL', ''),
(494, 'B.I.G.P. AUTO SRL', ''),
(495, 'BASA TRANS GRUP&RO SRL.', ''),
(496, 'BASCUS AUTO SRL', ''),
(497, 'BEERMASTER GROUP SRL', ''),
(498, 'BERCOL TRANS SRL.', ''),
(499, 'BEST TRAVEL LOGISTIC SRL', ''),
(500, 'BEST TRAVEL LOGISTICS SRL', ''),
(501, 'BETON SERVICE SRL', ''),
(502, 'BIANCONERO SRL.', ''),
(503, 'BISERVICE & CO SRL', ''),
(504, 'BIZ-AGRO SRL', ''),
(505, 'BODEANU & CO SRL', ''),
(506, 'BON VOYAGE SRL', ''),
(507, 'CAGORTATRANS', ''),
(508, 'CAVIEXPRESS SRL', ''),
(509, 'CET IN GEVIZ SRL', ''),
(510, 'CEZARION-TRANS SRL', ''),
(511, 'CHELICI-PRIM SRL', ''),
(512, 'CIM-ALIANTA SRL', ''),
(513, 'CIUMASU & CO SRL', ''),
(514, 'CJSC ATP-3', ''),
(515, 'COJUHARI DANU GT', ''),
(516, 'COMBINATUL DE CARNE NIVALI-PROD SRL               ', ''),
(517, 'CONEXIM TIR SRL', ''),
(518, 'CONSTRUM SRL', ''),
(519, 'CORPACI GHEORGHE', ''),
(520, 'COSTIN TRANS SRL', ''),
(521, 'CULA ALEXANDR', ''),
(522, 'CVA TRANS GLOBAL SRL', ''),
(523, 'DANERCOM SRL', ''),
(524, 'DANICON-TRANS SRL', ''),
(525, 'DANVLADOR SRL', ''),
(526, 'DASTRANSGRUP SRL', ''),
(527, 'DAVIDSERTRANS SRL', ''),
(528, 'DELFINIC TRANS SRL', ''),
(529, 'DIO-LUX TOUR SRL', ''),
(530, 'DOGGER TRANS EXPEDIT SRL.', ''),
(531, 'DONI TRANS LOGISTIC SRL', ''),
(532, 'DONICI-TRANS SRL', ''),
(533, 'DVS COMPANY SRL', ''),
(534, 'ECS TRAVEL SRL', ''),
(535, 'EUGENIA- SIRBU I.I.', ''),
(536, 'EUROCIMENT SRL.', ''),
(537, 'EUROGENETICS SRL', ''),
(538, 'EUROLINES MOLDOVA SRL', ''),
(539, 'EXIMAL TRANSCOM SRL.', ''),
(540, 'EXPRESCONTAINER SRL.', ''),
(541, 'FELGAN SERVICE SRL', ''),
(542, 'FIRMA  UZUN SRL', ''),
(543, 'FIRST TRANS SRL', ''),
(544, 'FONEX GRUP SRL', ''),
(545, 'FORCETRANS AGT SRL', ''),
(546, 'FOREVER SRL', ''),
(547, 'G&V TRANS GRUP SRL', ''),
(548, 'G-T-T GORCEAG TURN TRANS SRL', ''),
(549, 'GEKRIMANN EXPRESS SRL', ''),
(550, 'GLV-TRANS SRL', ''),
(551, 'GORGAN SRL', ''),
(552, 'GROUP ONE SRL', ''),
(553, 'IMCOMVIL GRUP SRL SC', ''),
(554, 'iml transport container srl', ''),
(555, 'IMPEX-LINE SRL', ''),
(556, 'IMPEX-LINE SRL.', ''),
(557, 'IMPORT AUTO GROUP SRL', ''),
(558, 'INCOMVIL GRUP SRL', ''),
(559, 'INCREDPART SRL', ''),
(560, 'ININIH-GRUP SRL.', ''),
(561, 'INTEGRA LOGISTIC SRL', ''),
(562, 'IONEL-GROSU II', ''),
(563, 'ISUM-TRAN.COM SRL', ''),
(564, 'ISUM-TRANS.COM SRL', ''),
(565, 'IU TRANS GRUP SRL', ''),
(566, 'IUGINTERTRANS SA', ''),
(567, 'IVAIZ international srl', ''),
(568, 'JITARI.P.-TRANS SRL', ''),
(569, 'KAZIMIR SERVICII SRL', ''),
(570, 'KOVA LAND SRL', ''),
(571, 'LAVIAL & CO SRL  ', ''),
(572, 'LINAVAN SRL', ''),
(573, 'LOGISTIC TRANSAUTO SRL', ''),
(574, 'LOUISDOR-TRANS SRL', ''),
(575, 'LUNTRACOM SRL', ''),
(576, 'MAGDATRANS GRUP SRL', ''),
(577, 'MANVIC TRANS SRL', ''),
(578, 'MARCULESTI-COMBI SA', ''),
(579, 'MARFRUCT SRL', ''),
(580, 'MARK TRANS LUX', ''),
(581, 'MARVOR FRUCT SRL', ''),
(582, 'MATERIMCONS SRL.', ''),
(583, 'MC EXPRESS SRL', ''),
(584, 'MECMONTAJ SRL', ''),
(585, 'MECMONTAJ SRL.', ''),
(586, 'MEGA EXPRES S.R.L.', ''),
(587, 'MEGANICOTRANS SRL', ''),
(588, 'MELITADO GRUP SRL', ''),
(589, 'MELNIMAR SRL', ''),
(590, 'MITAVTOTRANS SRL', ''),
(591, 'MLADIN-ARINA SRL', ''),
(592, 'MOLINART GRUP SRL', ''),
(593, 'MOTUSTRANS SRL', ''),
(594, 'MTSAGRO SRL.', ''),
(595, 'MUNTEANU MOLTRANS SRL', ''),
(596, 'NAVELINA SRL', ''),
(597, 'NEFIS SRL', ''),
(598, 'NELAUTOTRANS SRL.', ''),
(599, 'NEWTRANS-SERVICE SRL', ''),
(600, 'NISVINEX GRUP SRL', ''),
(601, 'NORD CARGO SRL', ''),
(602, 'NOVATRANS GLOBAL SRL                              ', ''),
(603, 'NTF INTERNATIONAL SRL', ''),
(604, 'O&N STIL SRL', ''),
(605, 'OKOPS SRL', ''),
(606, 'OLMOSDON  SRL', ''),
(607, 'OPT-TERA TRANS SRL', ''),
(608, 'ORIENT ACCENT SRL', ''),
(609, 'PASCARI PAVEL TRANS SRL', ''),
(610, 'PASCARI PAVEL-TRANS SRL', ''),
(611, 'PIRAMIDA-MARKET SRL', ''),
(612, 'PRIA TRADE SRL', ''),
(613, 'PRIMATIR SRL', ''),
(614, 'PRISMA-TRANS SRL', ''),
(615, 'PRO GARDEI SRL', ''),
(616, 'R&A-SERVICE SRL', ''),
(617, 'RAITRANS SRL', ''),
(618, 'REGAL TRUCKS SRL', ''),
(619, 'REMOL TRANS SRL', ''),
(620, 'RETIVA TRANSPORT SRL', ''),
(621, 'REVENCO LOGISTIC SRL', ''),
(622, 'ROBRICONS SRL', ''),
(623, 'ROBRICONS SRL.', ''),
(624, 'ROCON-TRANS SRL', ''),
(625, 'ROGOJA ANGELA', ''),
(626, 'RUMIH-TRANS SRL', ''),
(627, 'RUSACOV TRANS SRL', ''),
(628, 'RUTE AUTO INTERNATIONALE SRL.', ''),
(629, 'SC BANARI TRANS SRL', ''),
(630, 'SEMESTER SRL', ''),
(631, 'SIBTRANSGROUP', ''),
(632, 'SIMCOFRAJ IMPEX SRL', ''),
(633, 'SIMCOFRAJ SRL', ''),
(634, 'SIRBU IVAN', ''),
(635, 'SM EXPRESS SRL', ''),
(636, 'SM EXPRESS TRANS SRL', ''),
(637, 'SOLEI-TRANS', ''),
(638, 'SPRINT CARGOEXPRES SRL', ''),
(639, 'STOIANOV DUMITRU', ''),
(640, 'SUNNY-BUSS SRL', ''),
(641, 'SV-TRANSPORT SRL', ''),
(642, 'TABOTRANS GRUP SRL', ''),
(643, 'TANOPEX-LOGISTIC SRL', ''),
(644, 'TARNARUTCHI ALEXEI I.I', ''),
(645, 'TAVLANI COM SRL', ''),
(646, 'TDS TRADERS SRL', ''),
(647, 'TELECHE GRUP SRL', ''),
(648, 'TIRSTROYMEHANIZATSYA', ''),
(649, 'TOP TRUCKS TRANS SRL', ''),
(650, 'TORPEDO SRL', ''),
(651, 'TRADESTAR SRL', ''),
(652, 'TRADEX-LKW SRL', ''),
(653, 'TRAIANCOMERT SRL', ''),
(654, 'TRANS ACTIV SRL.', ''),
(655, 'TRANS ARCTIC EXPRES SRL.', ''),
(656, 'TRANS LIVE SRL', ''),
(657, 'TRANSAF GRUP SRL', ''),
(658, 'TRANSANCA SRL', ''),
(659, 'TRANSERVALION SRL', ''),
(660, 'TRANSIMBOL SRL', ''),
(661, 'TRANSIMEX-INTERNATIONAL SRL', ''),
(662, 'TRANSREGIONAL GRUP SRL ', ''),
(663, 'TRANSVADNIC SRL', ''),
(664, 'TRI TRUCK INCOMPARATION SRL', ''),
(665, 'TRI TRUCK INCOMPARATION SRL.', ''),
(666, 'TUR EXTERN SRL', ''),
(667, 'ULTRACOM  ELECTRONIC SRL', ''),
(668, 'ULTRACOM ELECTRONIC SRL', ''),
(669, 'UNI-LAMAN SHIPPING AGENCY SRL', ''),
(670, 'UNITECH ENGINEERING SOLUTIONS SRL', ''),
(671, 'UNTRANS SERVICE SRL', ''),
(672, 'UZINA METALURGICA MOLDOVENEASCA S.A.T.D. ', ''),
(673, 'UZUN YOL SRL', ''),
(674, 'VAIOSTAR SRL', ''),
(675, 'VERITAS GROUP SRL', ''),
(676, 'VERNON-PRIM SRL', ''),
(677, 'VETRANSLUX SRL', ''),
(678, 'VICONICTRANS SRL', ''),
(679, 'VILICOM DISIGN SRL', ''),
(680, 'VITASANMAX SRL.', ''),
(681, 'VITOIL TRANS SRL', ''),
(682, 'VLADIALES&CO SRL', ''),
(683, 'VLADIPLUS SRL.', ''),
(684, 'VLADISTRANS PRIM SRL', ''),
(685, 'VLADNICOTRANS SRL', ''),
(686, 'VLALEXCON COM SRL.', ''),
(687, 'VLAMILEX SRL', ''),
(688, 'VOLAN AUTOTRANS S.A', ''),
(689, 'YANCIUK-TRANS SRL', ''),
(690, 'ZAO ATP-3', ''),
(691, 'REPMOLD-TRANS SRL', ''),
(692, 'NEW OWNER', ''),
(693, 'NEW OWNER2', ''),
(694, 'IRINDA PRIM SRL', ''),
(695, 'GANTALA SRL', '1002600023253'),
(696, 'IDS TRANS SRL', ''),
(697, 'ALGALIA SRL', ''),
(698, 'PENSAN-PRIM SRL', ''),
(699, 'BREAHNAS TRANS SRL', '1017600049356'),
(700, 'INTERARSI TRANS SRL', ''),
(701, 'GORE PAVEL', ''),
(702, 'OLAN TUR PRIM SRL', ''),
(703, 'CRIST-VALG SRL', ''),
(704, 'REGATA IMOBILIARE SRL', ''),
(705, 'FABI & LINA SRL', ''),
(706, 'SERGE TRANS-EXPRES SRL', ''),
(707, 'LEGRION SRL', ''),
(708, 'FARGO IMPEX SRL', ''),
(709, 'ETA-SOLUTIONS SRL', ''),
(710, 'BODI TRANSPORT SRL', ''),
(711, 'DOBROF PLAST SRL', '1004600065059'),
(712, 'ZIMROELI-TRANS SRL', '1002600046061'),
(713, 'TRANSMET NEW SRL', '1020600031384'),
(714, 'NEW METAL CONSTRUCT SRL', '1013600005116'),
(715, 'ALEX CARGO TRANS SRL', ''),
(716, 'INFLUENT CAR SRL', '1023602000426'),
(717, 'IDENTCAR CR SRL', ''),
(718, 'ELITPRODCOM EXPORT SRL', ''),
(719, 'BEAX COM SRL', ''),
(720, 'SILCONS-GRUP SRL', ''),
(721, 'CERNIOGLO HARLAMPII', ''),
(722, 'V.O. CENAR SRL', ''),
(723, 'REGIUNEA-EXIM SRL', ''),
(724, 'AVRAM TRANS GRUP SRL', ''),
(725, 'ZENGIN COMPANY SRL', ''),
(726, 'VP BRAT TRANS SRL', ''),
(727, 'CIV-PRIM SRL', ''),
(728, 'FLORENI SRL', ''),
(729, 'SAVTELS SRL', ''),
(730, 'VERITAN-PRIM SRL', ''),
(731, 'RULTEHCOM SRL', ''),
(732, 'TINCOMERT-GRUP SRL', ''),
(733, 'RIST-AGROINDUSTIAL SRL', ''),
(734, 'SHPS SBS AREA', ''),
(735, 'GLOBAL TOUR EXPRESS SRL', '1020600038383'),
(736, 'MEDALMIR SRL', '1014600019994'),
(737, 'OLBIL-GRUP SRL', ''),
(738, 'GT-TRANS SRL', '100760003991'),
(739, 'BASA TRANS GRUP ', ''),
(740, 'IANATEC SRL', ''),
(741, 'SOLDI SRL', ''),
(742, 'MGVI-TRANS SRL', ''),
(743, 'SAVATA-TUR SRL', ''),
(744, 'TORCONST SRL', ''),
(745, 'D.V.V.-SHOW SRL', ''),
(746, 'MENICOR SRL', ''),
(747, 'VEGALOGISTIC SRL', ''),
(748, 'GHENISLIC SRL', ''),
(749, 'APROVIZELECTRO SRL', ''),
(750, 'MAS TRANS COMPANY SRL', ''),
(751, 'VASILE TATU II', '1003603001901'),
(752, 'BIVARUS-TRANS SRL', ''),
(753, 'BOLDIVEL-PRIM SRL', ''),
(754, 'NIVALTRANS SRL', '1020611001666'),
(755, 'PLATFORMACAR SRL', ''),
(756, 'SV-FRUCT SRL', ''),
(757, 'FRUCT AGRO FISH SRL', ''),
(758, 'LEO & MAX SRL', ''),
(759, 'OLMOSDON SRL', ''),
(760, 'CORINA-CRECIUN II', ''),
(761, 'PRISMIX-GRUP SRL', ''),
(762, 'BETRANS SRL', ''),
(763, 'CONST INVEST TRADING SRL', ''),
(764, 'SVB-TRANS SRL', ''),
(765, 'BICOMPLEX-CONSTRUCT SRL', ''),
(766, 'EXPOZEU SRL', ''),
(767, 'ARCOMIS-TRANS SRL', ''),
(768, 'FORMULA TRANS SRL', ''),
(769, 'ZAHARIA MARCEL', ''),
(770, 'NEMTANU SERVICE SRL', ''),
(771, 'SIENTO SRL', ''),
(772, 'ANLI-CONSTRUCT SRL', ''),
(773, 'GREEN-ON SRL', '1019600009747'),
(774, 'RECONSCIVIL SRL', '1003600019583'),
(775, 'PICAPI SRL', ''),
(776, 'VITAFOR SRL', ''),
(777, 'PORCO BELLO SRL', ''),
(778, 'IZVESTNEAC SRL', ''),
(779, 'SUDZUCKER-MOLDOVA SA', ''),
(780, 'LASKA-MOL SRL', '1009600005564'),
(781, 'MASTEREXPORT SRL', '1017600013605'),
(782, 'TRANSNAVA GRUP SRL ', '1014600016823'),
(783, 'CIORICI MARIA', ''),
(784, 'MARIN AGRO IMPEX SRL', ''),
(785, 'VLAD & CRISTI SRL', ''),
(786, 'CAPMANLUX SRL', ''),
(787, 'LARGO-TERRA SRL', ''),
(788, 'DOROS-TRANS SRL', ''),
(789, 'SERVIS-LIBERA SRL', ''),
(790, 'LIBRA LOGISTIC SRL', ''),
(791, 'MERIDIAN OIL SRL', ''),
(792, 'RC-DANEXTIR SRL', '1016606001096'),
(793, 'EXPOTIR SRL', ''),
(794, 'CIMELTRANS-GRUP SRL', ''),
(795, 'PROTERMACI SERVICE SRL', ''),
(796, 'OZMEYSA LOJISTIK ULUSLARARASI NAKLIYAT TIGARET LIMITED SIRKETI', ''),
(797, 'AGRI-LANDS VT SRL', ''),
(798, 'GET PREMIUM SRL', ''),
(799, 'AGROSTOC CI', ''),
(800, 'DEGESALD GRUP SRL', ''),
(801, 'VINARIA DIN VALE SA', ''),
(802, 'TRADING-GROUP LLc', ''),
(803, 'CREDAGALEX SRL', ''),
(804, 'ASOIO SRL', ''),
(805, 'CETERONIS-ST SRL', ''),
(806, 'ZMEU STEFAN VLADIMIR  GT', ''),
(807, 'BALAN-TRANSAGRO SRL', ''),
(808, 'AUTO-ASISTENTA SRL', '1008600023819'),
(809, 'SARI-ALTIN SRL', ''),
(810, 'SERPEN-TRANS SRL', ''),
(811, 'CATALEIA TRANS SRL', ''),
(812, 'CONVECT LINES SRL', ''),
(813, 'COMPANIA BRUTARILOR SRL', '1005600060257'),
(814, 'GLOBAL SRL', ''),
(815, 'SG-TRANS SRL', '1014604001984'),
(816, 'NISTRU TRANS SERVICII SRL', ''),
(817, 'AGROSANTRANS SRL', ''),
(818, 'LICORSER TRAVEL TUR SRL', ''),
(819, 'TRIBUS-PRIM SRL', ''),
(820, 'VLADGRUP-TRANS SRL', ''),
(821, 'TUDO-LAVIAL SRL', ''),
(822, 'RADALINA-TRANS SRL', ''),
(823, 'TRANS OIL REFINERY SRL', ''),
(824, 'SIV-GROUP TRANS SRL', ''),
(825, 'LIUDMILA DONTOVA SRL                              ', ''),
(826, 'LADIA SRL', ''),
(827, 'CAGORTATRANS SRL', '1003600011576'),
(828, 'TANSAN SRL', '1004606001057'),
(829, 'KASS EXPO CARGO SRL', ''),
(949, 'FAMILY-TRANS SRL21213', ''),
(950, 'FAMILY-TRANS SRL', ''),
(951, 'TEST4', ''),
(952, 'AGRILEX-com srl', '1015602003844'),
(953, 'STAR BUS SRL', ''),
(954, 'BERLES-TUR SRL', ''),
(955, 'TRIALTEX PLUS SRL', ''),
(956, 'MATISEVSCHI OLEG', ''),
(957, 'AGRORIM LOGISTIC SRL', ''),
(958, 'DOMENIC LOGISTIC SRL', ''),
(959, 'BUSINESS LOGISTIC SRL', ''),
(960, 'GRAND AUTOACT SRL', ''),
(961, 'DAVLADEN SRL', ''),
(962, 'CONSVITRALIU SRL', ''),
(963, 'GLOBAL AF LOGISTICS SRL', ''),
(964, 'EXPERT GARANT CONSTRUCT SRL', ''),
(965, 'JUST INVEST SRL', ''),
(966, 'NISEURO TRANS SRL', ''),
(967, 'DAROANATOLINA SRL', ''),
(968, 'SIPAR LOGISTIC SRL', ''),
(969, 'DIAURIS PROFIT SRL', ''),
(970, 'TRACISIN-TRANS SRL', ''),
(971, 'TKACISIN-TRANS SRL', ''),
(972, 'ZAVOD KVINT', ''),
(973, 'TIRASPOL WINE', ''),
(974, 'TIRASPOL WINE&COGNAC DISTILLERY KVINT', ''),
(975, 'ANETI TRANS SRL', ''),
(976, 'HAMAN TRANS SRL', ''),
(977, 'STAS AUTOLUX SRL', ''),
(978, 'CHRILLEXGROUP SRL', ''),
(979, 'SERV INVEST TRADE SRL', ''),
(980, 'ALMIDEC GRUP SRL', ''),
(981, 'DEPARTAMENTUL SITUATIILOR EXCEPTIONALE', ''),
(982, 'TRANSAGROPROM SRL', ''),
(983, 'BPM-PLUS SRL', ''),
(984, 'TRANSMIS EXPRES SRL', ''),
(985, 'NIXAN TRANS SRL', ''),
(986, 'RED CONSTRUCT GROUP SRL', '1020600002322'),
(987, 'ACTIV LKW SRL', ''),
(988, 'MIGABEDIANS TRANS SRL', '1022602001448'),
(989, 'KULDASHEV NAZIMZHON ALISHEROVICH', ''),
(990, 'EXPRES-SALON SRL', ''),
(991, 'AXIOMA URBIS SRLSRL', ''),
(992, 'pasFHJ', '1004600022906'),
(993, 'PASTRANS M.T. SRL.', ''),
(994, 'BTA NR.14 OR.FLORESTI S.A.', ''),
(995, 'TARTCOMVIN SRL', ''),
(996, 'TR AUTO SRL', ''),
(997, 'VLADALINA SRL', '1002600029451'),
(998, 'VALDIN PRIM SRL', '1019600007754'),
(999, 'MAC-STRO SRL', '1003600013307'),
(1000, 'CRETPRUTTRANS SRL', '1009600035659'),
(1001, 'ARCTIC IMPEX SRL', ''),
(1002, 'TRANSPORT CONFORT SRL', ''),
(1003, 'ROMEOTRANSTUR SRL', ''),
(1004, 'COSSLAV TRANS SRL', ''),
(1005, 'LORANCE SRL', ''),
(1006, 'BANARI ANATOLIE', ''),
(1008, 'COMERZAN VEACESLAV', ''),
(1010, 'VLV AUTO SRL', ''),
(1011, 'INKA UN SRL', ''),
(1012, 'TGA-TRANS SRL', ''),
(1013, 'TRANS EURO EXPRESS SRL', ''),
(1014, 'RRL-PRO GROUP SRL', ''),
(1015, 'DRUSERIS SRL', ''),
(1016, 'PLANTCROPS SRL', ''),
(1017, 'GREADCENCO CONSTANTIN', ''),
(1018, 'NELUTRANS SRL.', ''),
(1019, 'IUVAM GRUP SRL', ''),
(1020, 'ELITE TRAVEL SRL', ''),
(1021, 'MOCREAC VLADIMIR', ''),
(1022, 'MILOS M. SRL', ''),
(1023, 'MARINS EXPRESS SRL', ''),
(1024, 'NISTRAVEL-BC SRL.', ''),
(1025, 'DOMENTII  GHENADIE', ''),
(1026, 'CDS GLOBAL SRL', ''),
(1027, 'BARCARU VASILE', ''),
(1028, 'ODOGRAF SRL', ''),
(1029, 'SV-LOGISTIC COM SRL', ''),
(1030, 'ZOINA IURIE', ''),
(1031, 'POLYMIR SLC', ''),
(1032, 'EVANFLORTRANS SRL', ''),
(1033, 'MISERVIGOLD SRL', ''),
(1034, 'NEWPRO', ''),
(1035, 'TRANS EUGILION COMSRL', ''),
(1037, 'MARICRIS TRANS SRL', '1020600020582'),
(1038, 'MAXETUR AUTO SRL', ''),
(1039, 'CDM CRIST SRL', ''),
(1040, 'IMEXAGRO SRL', '1003601002384'),
(1041, 'SCHIT-AGROMEX SRL', ''),
(1042, 'PRIMTRANS CARGO SRL', ''),
(1043, 'CRICOVA-VIN SA', ''),
(1044, 'CRICOVA-VIN SRL', ''),
(1045, 'ALFA-NISTRU SA', ''),
(1046, 'SOKOL TRANS SRL', ''),
(1047, 'ILAL-TRANS GRUP SRL', ''),
(1048, 'ALVALGEN-TRANS SRL', ''),
(1049, 'BUS VOYAGE SRL', ''),
(1050, 'TANKER INVEST SRL', ''),
(1051, 'ADR TANKER INVEST SRL ', ''),
(1052, 'CONSANATOL SRL', ''),
(1053, 'ALEX CATERING SRL', ''),
(1054, 'MINDRU PRIM SRL', ''),
(1055, 'ALACVECTOR SRL', ''),
(1056, 'TRANSCART-PLUS SRL', ''),
(1057, 'TRANSGALAX  SRL', ''),
(1058, 'SILIVESTRANS SRL', ''),
(1059, 'TAN-TRANS COMPANY SRL', ''),
(1060, 'TRANS ECOSTOC SRL ', ''),
(1061, 'TRANSPOLO SRL', ''),
(1062, 'VASIALEX-AGRO SRL', ''),
(1063, 'SIGMATUR-COM SRL', ''),
(1064, 'INCARGO SRL', ''),
(1065, 'COVBASA LUDMILA II', ''),
(1066, 'PRESTIGIU-AZ SRL', ''),
(1067, 'GRANDAUTOTRANS SRL', ''),
(1068, 'MEMILIT SRL', ''),
(1069, 'V.N.GAID SRL', ''),
(1070, 'SERVICTRANS SRL', ''),
(1071, 'ARCHI TRANS SRL', ''),
(1072, 'GAMEXAUTO SRL', ''),
(1073, 'RISCANTRANS SRL', ''),
(1074, 'VLAPRIMCOM SRL', ''),
(1075, 'SAFIR TRANS LOGISTIC SRL', ''),
(1076, 'INVEST TEHTRANS SRL', ''),
(1077, 'DVS ECHIPAMENT SPECIAL.SRL', ''),
(1078, 'COS TRANS LOGISTIC SRL.', ''),
(1079, 'DELI  TRANS SRL', ''),
(1080, 'MARCRIS TRANS SRL', ''),
(1081, 'INEDIT TRANS AUTO SRL', ''),
(1082, 'PROFINTERTRANS SRL', ''),
(1083, 'DONTU IGOR', ''),
(1084, 'KTC-EUROPA SRL', ''),
(1085, 'VID DRIVE SRL', ''),
(1086, 'ROYAL LOGISTIC SRL', ''),
(1087, 'R.I.M. FORWARD SRL', ''),
(1088, 'CRISTAR-PIN SRL', ''),
(1089, 'VAN VALINA TRANS SRL', ''),
(1090, 'ORHODONC SRL', ''),
(1091, 'ALVITRANS-COM SRL', ''),
(1092, 'BAZA DE TTRANSPORT AUTO NR. 20', ''),
(1093, 'NAVIPRIMA SRL', ''),
(1094, 'AVG-TRANSPORT SRL', ''),
(1095, 'DARABAN II', ''),
(1096, 'TEZED-S SRL', ''),
(1097, 'W GRUP SRL', ''),
(1098, 'LESAN ION', ''),
(1099, 'ELIT-TRANS COMPANY SRL', ''),
(1100, 'BPM TRADE SRL', ''),
(1101, 'RUNEVIN-AGRO SRL', ''),
(1102, 'VALCON-IMPEX SRL', ''),
(1103, 'AUTOSALUBRITATE I.M', ''),
(1104, 'DAGOTA TRANS SRL', ''),
(1105, 'AXELMAN TECH SRL', ''),
(1106, 'I.I. AGATINII GHERGHE', ''),
(1107, 'N&A DINAMEX TRANS SRL', ''),
(1108, 'BENSERV-TRANS SRL', '1013607002538'),
(1109, 'CAGORTATRANS SRL.', ''),
(1110, 'TRANSFER-IMPEX SRL', ''),
(1111, 'ZOLOTUSCA GRUP SRL', ''),
(1112, 'ALTUR-IMPEX SRL', ''),
(1113, 'BEREGOIAUTO SRL', '1019600058538'),
(1114, 'AGRO GRAAC TRANS SRL.', ''),
(1115, 'NIMELIM-TUR SRL', ''),
(1116, 'SOFILAREX SRL', '1003600051972'),
(1117, 'DAVO GROUP SRL', ''),
(1118, 'TRUCK STANDARD SRL', ''),
(1119, 'VALDCONGRUP SRL', ''),
(1120, 'ADISORI SRL', ''),
(1121, 'FRATELLO SRL', ''),
(1122, 'OMNIBUSTRANS SRL', ''),
(1123, 'ORNAMENT SRL', ''),
(1124, 'MERIVAL CON SRL', ''),
(1125, 'BIO-ALIANTA SRL', ''),
(1126, 'CES CONSTRUCT SRL', ''),
(1127, 'BONOCAN SRL', ''),
(1128, 'TEHNICA SRL', ''),
(1129, 'GIRAMANDO SRL', ''),
(1130, 'GIRAMONDO SRL', ''),
(1131, 'I.D.M.VABIS SRL', ''),
(1132, 'NIKTRANS COMPANY SRL', ''),
(1133, 'FALTRANS-PRIM SRL', ''),
(1134, 'CHETON GRUP SRL', ''),
(1135, 'NICPRIVAT TRANS SRL', ''),
(1136, 'DONATE-TRANS SRL', ''),
(1137, 'MIRAMAT-LOGISTICS SRL', ''),
(1138, 'GUSEATINSCHI IURI', ''),
(1139, 'SAD TRANS EXPRES SRL', ''),
(1140, 'TIM FRIGO SRL', ''),
(1141, 'MERJIEVSKI SERGHEI', ''),
(1142, 'GLAS TROESCH SRL', ''),
(1143, 'ALMIVO A.M.V. TUR SRL', ''),
(1144, 'TIRTRANS-GRUP SRL', ''),
(1145, 'CER TRANSAGRO SRL', ''),
(1146, 'MAROMETRANS SRL', ''),
(1147, 'GTD LOGISTIC SRL', ''),
(1148, 'CEREALE DE AUR SRL', ''),
(1149, 'MINERAL SA', ''),
(1150, 'TRANS LIDER LI SRL', ''),
(1151, 'BROKER GROUP SOLUTION SRL', ''),
(1152, 'STRONGWOLF SRL', ''),
(1153, 'BIOAGRO PROTECT SRL', ''),
(1154, 'RIVAN-TUR.CAN SRL', ''),
(1155, 'DIP EXPRESS GROUP SRL', ''),
(1156, 'DROFA-GRUP SRL', ''),
(1157, 'CORSAG SRL', ''),
(1158, 'VLALEX-TRANS SRL', ''),
(1159, 'IGP-TRANS SRL', ''),
(1160, 'TRADE AGROINVEST SRL', ''),
(1161, 'DREAM-TRAVEL SRL', ''),
(1162, 'TRISAV TRANS LOGISTIC SRL', ''),
(1163, 'EXPRESS BUSLINE SRL ', ''),
(1164, 'LEONEVIC SRL', ''),
(1165, 'VRW-AGRO SRL', ''),
(1166, 'MAGNUM-BIT SRL', ''),
(1167, 'DELTRANSGRUP SRL', ''),
(1168, 'TR AUTOSRL ', ''),
(1169, 'AGROTRANS SRL', ''),
(1170, 'BREABIN AUREL', ''),
(1171, 'GLOBAL LKW SRL', ''),
(1172, 'ANVI-PRIM SRL', ''),
(1173, 'VICR-TRANS SRL', ''),
(1174, 'F.C.I. CAPITAL SRL', ''),
(1175, 'VVT INTERNATIONAL GROUP SRL', ''),
(1176, 'AUTOFRAHT-TRANS SRL', ''),
(1177, 'NIC-AUTO LOGISTIC SRL', ''),
(1178, 'TRASLOCHI SERVICE SRL', ''),
(1179, 'FELVITTRAVEL-TUR SRL', ''),
(1180, 'RIVANRUM-AGRO SRL', ''),
(1181, 'KABI INTER TRANS SRL', ''),
(1182, 'TEHBETON SRL', ''),
(1183, 'MAGDATEX-AGRO SRL', ''),
(1184, 'DELUXTRANSPORT-SERVICE SRL', ''),
(1185, 'C.R.S.CONTAINER TRANS SRL', ''),
(1186, 'ECO PRIVAT SRL', ''),
(1187, 'CREANGA NICOLAE', ''),
(1188, 'ASPI-TRANSWELL SRL', ''),
(1189, 'EURO TRUCK TRANS SRL', ''),
(1190, 'GHEMACONS SRL', ''),
(1191, 'TRANS EUGILION COM SRL.', ''),
(1192, 'STOL TRANS MEGA SRL', ''),
(1193, 'F.P.C. ARIDON SRL', ''),
(1194, 'UNGUREANU ART SRL', ''),
(1195, 'FIATA-EXPEDITIE SRL', ''),
(1196, 'TRANSPRIMLINE SRL', ''),
(1197, 'ICAMTRANS LOGISTICS SRL', ''),
(1198, 'TUR VECTOR-TRANS SRL', ''),
(1199, 'CESCORA TRANS SRL', ''),
(1200, 'IRAM COM SRL SC', ''),
(1201, 'AUTOTEHTRANS SRL', ''),
(1202, 'CITY CONS GROUP SRL', ''),
(1203, 'EUROFARMACO S.A.', ''),
(1204, 'BIVAS-PRIM SRL', '1009600041009'),
(1205, 'DANDAR SRL', ''),
(1206, 'GORSERVIT-TRANS SRL', ''),
(1207, 'DAVIMILTRUST-AUTO SRL', ''),
(1208, 'SIMIL-LOGISTIC SRL', ''),
(1209, 'MONDIAL TUR SRL', ''),
(1210, 'SVARNA-COM SRL', ''),
(1211, 'SERVER NET SRL', ''),
(1212, 'ENERGY TRANS SRL', ''),
(1213, 'LUCEAFARUL DE SEARA SRL.', ''),
(1214, 'MASRUT SA', ''),
(1215, 'SLAVTRANS-COM SRL', ''),
(1216, 'ROOFELIT CONSTRUCT SRL', ''),
(1217, 'SARGU-TRANS SRL', ''),
(1218, 'PRIMATERAX NORD SRL', ''),
(1219, 'BONGRUP-GRAND SRL', ''),
(1220, 'EXFACTOR-GRUP SRL', ''),
(1221, 'VIGTRANS-SUD SRL', ''),
(1222, 'B.A.S.M.SISTERS SRL', ''),
(1223, 'AGERGLOB LOGISTIC SRL', ''),
(1224, 'PRUTTRANS SRL', ''),
(1225, 'BICOMPLEX SRL', ''),
(1226, 'INDIGENA SRL', ''),
(1227, 'VINARIA PURCARI SRL', ''),
(1228, 'LESOBAZA SRL', ''),
(1229, 'L.V. SRL', ''),
(1230, 'BIANCOMTRANS SRL', ''),
(1231, 'GOLDEN CROP SRL', ''),
(1232, 'A.DODON SRL', ''),
(1233, 'SEBASTIAN TRANS SRL', ''),
(1234, 'MISTIN COM SRL', ''),
(1235, 'GLOBAL AGRO MIX SRL', ''),
(1236, 'AUTOSEVTRANS SRL', ''),
(1237, 'NICU PETRU', ''),
(1238, 'TRANSIGUR SRL.', ''),
(1239, 'PRIVAT TRANS SRL', ''),
(1240, 'METEOR SRL', ''),
(1241, 'TULBACOM SRL', ''),
(1242, 'LOGOTRANS MG SRL', ''),
(1243, 'GOKTURK INTERNATIONAL TRADING COMPANY SRL', ''),
(1244, 'MOLDSAVPRIM SRL', ''),
(1245, 'VIANATRANSPORT SRL', ''),
(1246, 'ATP-3', ''),
(1247, 'BROKER-CRIN SRL', ''),
(1248, 'VILDETLUX SRL', ''),
(1249, 'SUPREME LOGISTIC SRL', ''),
(1250, 'PRONIBUR SRL', ''),
(1251, 'FPC ORNAMENT SRL', ''),
(1252, 'LARIDAN LUX SRL', ''),
(1253, 'OLROMTRANS SRL', ''),
(1254, 'VANELIK TRUCKS SRL', ''),
(1255, 'DARIUS COMERT SRL', ''),
(1256, 'I.N.T.M. SATIRICUS ION LUCA CARAGIALE I.M.', ''),
(1257, 'OGUZ TRAVEL SRL', ''),
(1258, 'VALDACTUAL SRL', ''),
(1259, 'ESTCARGO SERVICE SRL', ''),
(1260, 'TRANSGRIGCOM GRUP SRL', ''),
(1261, 'ABS SRL', ''),
(1262, 'MADECO PRIM SRL', ''),
(1263, 'TRANSAF LOGISTICS SRL', ''),
(1264, 'LIGA DE BASCHET DIN MOLDOVA', ''),
(1265, 'EMY-DARITRANS SRL', ''),
(1266, 'BUJU DUMITRU', ''),
(1267, 'DALTRANS E SRL', ''),
(1268, 'SATORI-TRANS SRL', ''),
(1269, 'SPRIN AGRO SRL', ''),
(1270, 'DAMIDOR SRL', ''),
(1271, 'BAZA DE TTRANSPORT AUTO NR. 20 SA', ''),
(1272, 'BAZA DE TRANSPORT AUTO NR. 20 SA', ''),
(1273, 'STEFOGLO VICTOR', ''),
(1274, 'PRIVAT-TRANS SRL', ''),
(1275, 'MARGIN-GRUP SRL', ''),
(1276, 'CHICU-TRANS SRL', ''),
(1277, 'ARTEMON SRL', ''),
(1278, 'NIKI FRIGOMIX TRANSPORT SRL', ''),
(1279, 'PRO OPTIM TRANS SRL', ''),
(1280, 'ROYAL-PROGRES SRL', ''),
(1281, 'BUSUIOC TRANS SRL', ''),
(1282, 'TRANS AGER SRL', ''),
(1283, 'BPM PLUS SRL', ''),
(1284, 'FABRICA DE MATERIALE DE CONSRUCTIE REZINA SA ', ''),
(1285, 'TUDOR TRANS COMPANY SRL', ''),
(1286, 'VITES-TRANS SRL', ''),
(1287, 'FITING SA  ', ''),
(1288, 'PARFENOV ANATOLIY', ''),
(1289, 'URS LOGISTIC SRL', ''),
(1290, 'IVAIZ INTERNATIONAL SRL.', ''),
(1291, 'UMAV TRANS SRL', ''),
(1292, 'NOVA TRADE SRL', ''),
(1293, 'MIRITRANS SERVICE SRL', ''),
(1294, 'PRODCORNER GRUP SRL', ''),
(1295, 'GHICOR TRANS SRL', ''),
(1296, 'FRIGO EXPRES SRL', ''),
(1297, 'EXPRESS SD LOGISTICS SRL', ''),
(1298, 'MERIDEN-IMPEX SRL', ''),
(1299, 'LUCAMIR GRUP SRL', ''),
(1300, 'PROTECTRANS SRL', ''),
(1301, 'ZMEU STEFAN VLADIMIR GT', ''),
(1302, 'PALENS TRANS SRL', ''),
(1303, 'CANDU VIOREL', ''),
(1304, 'TIR TRANS SRL', ''),
(1305, 'DIVELAR PRIM SRL', ''),
(1306, 'KINETIKA SRL', ''),
(1307, 'TANIC TRANS SRL', ''),
(1308, 'AGROVEC-PRIM SRL', ''),
(1309, 'ARGOVEC-PRIM SRL', ''),
(1310, 'JAVELIN N.A. SRL', ''),
(1311, 'CISERDOR SRL', ''),
(1312, 'NIMERION SRL', ''),
(1313, 'VSO COM TRANS SRL', ''),
(1314, 'IMPEXCERA SRL', ''),
(1315, 'TRANSROM SRL', ''),
(1316, 'LUNAPI SRL', ''),
(1317, 'INTELLWORK SRO', ''),
(1318, 'PARCUL URBAN DE AUTOBUZE I.M.', ''),
(1319, 'CONPLAST-DESIGN SRL', ''),
(1320, 'DANOXTRANS COMPANY SRL', ''),
(1321, 'CEGOLTAR SRL', ''),
(1322, 'SCOPRAN TUR SRL', ''),
(1323, 'NICONALEX TRANS SRL', ''),
(1324, 'LEORADUS SRL', ''),
(1325, 'AUTOCARAVANA SRL', ''),
(1326, 'IMPORTEX TRANS SRL', ''),
(1327, 'LOBEDANTRANS SRL', ''),
(1328, 'CAPITAL INTERAUTOTRANS SRL', ''),
(1329, 'DIAZCHIM SRL', ''),
(1330, 'IML TRANSPORT CONTAINER SRL.', ''),
(1331, 'TRANSLIDER-LI SRL', ''),
(1332, 'POLIREX-SERVICE SRL', ''),
(1333, 'TIMSCOR-COM SRL', ''),
(1334, 'AGROMAX CEREALE SRL', ''),
(1335, 'ATLANT PRIM SRL', ''),
(1336, 'FRIGO LOGISTICS SRL', ''),
(1337, 'GRIF TRANSLOGISTICS SRL', ''),
(1338, 'GLOBAL ELECTRIC SRL', ''),
(1339, 'LARIGO COMPANY SRL', ''),
(1340, 'DUMITRANS-AUTO SRL', ''),
(1341, 'TOP TRANS SPEDITION SRL', ''),
(1342, 'DELVICTRANS SRL', ''),
(1343, 'AGROPIESE TGR GRUP SRL', ''),
(1344, 'BALABAN-COM SRL', ''),
(1345, 'TOPGRUP TRANS SRL', ''),
(1346, 'GRINTRANS HOUSE SRL', ''),
(1347, 'REANU TRANS SRL', ''),
(1348, 'STIVEL-VEST SRL', ''),
(1349, 'TOPCONSTRUCT BNN SRL', ''),
(1350, 'GEO CARGO SRL', ''),
(1351, 'MERIVAL-CON SRL', ''),
(1352, 'SIDERAL-TUR SRL', ''),
(1353, 'DAVID & DANIIL SRL', ''),
(1354, 'S.C ITUMIT SRL', ''),
(1355, 'S.C. ITUMIT SRL', ''),
(1356, 'IP LICEUL TEORETIC SPIRU HARET', ''),
(1357, 'VITALITE-MIHAELA SRL', ''),
(1358, 'ACTIV ADVISORS SRL', ''),
(1359, 'ZERNOFF SRL', ''),
(1360, 'STEEL TUBES GROUP SRL', ''),
(1361, 'CHIFA SVETLANA II', ''),
(1362, 'IV-VOL-TRUCKS SRL', ''),
(1363, 'CONMAXAUTO SRL.', ''),
(1364, 'VOLENDA SRL', ''),
(1365, 'RIBES-TRANS SRL', ''),
(1366, 'GRINMAN COMPANY SRL', ''),
(1367, 'I.I PISNII IGOR', ''),
(1368, 'PISNII IGOR II', ''),
(1369, 'CALINSTRUCK SRL', ''),
(1370, 'ARIPARTEX SRL', ''),
(1371, 'CALEA ORHEIULUI SRL', ''),
(1372, 'VIGETITRANS SRL', ''),
(1373, 'CITRUS-PRIM SRL', ''),
(1374, 'VOLIGSTEH SRL', ''),
(1375, 'CETIN GEVIZ SRL', ''),
(1376, 'STAR OK SRL', ''),
(1377, 'F.P.C CHETON GRUP SRL.', ''),
(1378, 'IURANEX-PRIM SRL', ''),
(1379, 'R&G CONSTRUCT PRIM SRL', ''),
(1380, 'SALUBRITATE-PRIM SRL', ''),
(1381, 'TRANSIUG LTA SRL', ''),
(1382, 'FRIGOTRANS SRL', ''),
(1383, 'AUTO-DELUX-GRUP SRL', ''),
(1384, 'P.A.T. 9 DIN BRICENI SRL', ''),
(1385, 'SERGHEEV VLADIMIR', ''),
(1386, 'INTEL ELIT SRL', ''),
(1387, 'INTEL ELIT COM SRL', ''),
(1388, 'HESSCAR MOL SRL', ''),
(1389, 'VLATAMAS SRL', ''),
(1390, 'SORNICOM SRL', ''),
(1391, 'OLSEG-VT SRL', ''),
(1392, 'MASBALT SRL', ''),
(1393, 'INTERNIX-TUR SRL', ''),
(1394, 'ADITRANS-NORD SRL', ''),
(1395, 'IVKA-COM SRL', ''),
(1396, 'IVICRO-LOGISTIC SRL', ''),
(1397, 'PASHA-TRANSLUX SRL', ''),
(1398, 'DIOSORTRANS SRL', ''),
(1399, 'GLAMAX-TRANS SRL', ''),
(1400, 'OZTOR SRL', ''),
(1401, 'IVTRANS-CIUMERTOV SRL', ''),
(1402, 'ENTERPRISE LOGISTIC SRL', ''),
(1403, 'CATALEYA ', ''),
(1404, 'CATALEYA & DAMIR SRL', ''),
(1405, 'VIT ALIT E-MIHAELA SRL', ''),
(1406, 'VITRANSCOM SRL', ''),
(1407, 'ALPIMARIN-TUR SRL', ''),
(1408, 'SIBTRANSGROUP SRL', ''),
(1409, 'TRANS CIOBANU SRL', ''),
(1410, 'BUMBU-TRANSAGROGRUP SRL', ''),
(1411, 'CONST DRUM SRL', ''),
(1412, 'MG CARDO TRANS SRL', ''),
(1413, 'TRANS BOGACIUC SRL', ''),
(1414, 'RIW-MANTRANS SRL', ''),
(1415, 'VIVANTIS PLUS SRL', ''),
(1416, 'ALEGAN GRUP SRL', ''),
(1417, 'ATREX LINES SRL', ''),
(1418, 'ALOTEX GRUP SRL', ''),
(1419, 'AGROMERCE GRAIN SRL', ''),
(1420, 'BEJAN IULIANA', ''),
(1421, 'GISAN TUR SRL', ''),
(1422, 'CONSTRUCT-ARABESQUE SRL', ''),
(1423, 'ASPECT MEDIA SRL', ''),
(1424, 'BASSERJAM-TRANS SRL', ''),
(1425, 'TRANSGRUPSERVICE SRL', ''),
(1426, 'B.V.S. GRUP-TRANS SRL', ''),
(1427, 'XENIA-TRAVEL SRL', ''),
(1428, 'AMICONT-NORD SRL', ''),
(1429, 'GLORIA LOGISTICS SRL', ''),
(1430, 'KINGTRANSGROUP SRL', ''),
(1431, 'ABUJANA SRL', ''),
(1432, 'STALCOM-BM SRL', ''),
(1433, 'TRANSRURAL SRL', ''),
(1434, 'EUROTIM-COM SRL', ''),
(1435, 'CRASANDA-PRIM SRL', ''),
(1436, 'DISMARKET SRL', ''),
(1437, 'IMNTRANS-LOGISTIC SRL', ''),
(1438, 'C.A.I. GRUP TOP AGRO', ''),
(1439, 'GRANDTOP SRL', ''),
(1440, 'CONFORT SRL', ''),
(1441, 'GENCO TRANS CO SRL', ''),
(1442, 'ALVALGEN-TRANS SRL.', ''),
(1443, 'TREIDING GRUP SRL', ''),
(1444, 'VICMORTRANS-PRIM SRL', ''),
(1445, 'MS-ILPEX SRL', ''),
(1446, 'AUTONORD FRUCT SRL', ''),
(1447, 'SERC', ''),
(1448, 'RIC-BIOSALIX SRL', ''),
(1449, 'BRAGA LOGISTIC SRL', ''),
(1450, 'MOSAIC CENTER SRL', ''),
(1451, 'CANDIDUS SRL', ''),
(1452, 'EKIMMARI TRANS SRL', ''),
(1453, 'SORFIER SRL.', ''),
(1454, 'GEORGE-TRANS SRL ', ''),
(1455, 'D.A.V.I.-TRANSPORTI SRL', ''),
(1456, 'AVICOLA GALINULA SA', ''),
(1457, 'BATIR IVAN', ''),
(1458, 'DAVMICON SRL', ''),
(1459, 'VERDES TRANS SRL', ''),
(1460, 'AGROTERASIER SRL', ''),
(1461, 'BUSINESSMAN SRL', ''),
(1462, 'SUCCESS LOGISTIC SRL', ''),
(1463, 'LBV CONSTRUCT SRL', ''),
(1464, 'SMART TRANS SRL', ''),
(1465, 'ELIT FRUCT SRL', ''),
(1466, 'GHERVAS-PETROL SRL', ''),
(1467, 'AGRODESIGN SRL', ''),
(1468, 'VICTORIA-CIOBANU SRL', ''),
(1469, 'DISOFI-TRANS SRL', ''),
(1470, 'R&R TRANS OCTAV SRL', ''),
(1471, 'VIT ALI YIGIT TRANS SRL', ''),
(1472, 'GLOBAL ALEXTRANS SRL', ''),
(1473, 'MMD SRL', ''),
(1474, 'TREI R TRANSPORT  SRL', ''),
(1475, 'BIROCOM-TRANS SRL', ''),
(1476, 'FIRST- CHICK SRL', ''),
(1477, 'SERLYB NORD SRL', ''),
(1478, 'NOVA LOGISTIC SRL', ''),
(1479, 'OLIMPUS-85 SRL', ''),
(1480, 'PREMIERTRANS SRL', ''),
(1481, 'MERIDIAN AUTO SRL ', ''),
(1482, 'EXPRESS-CITY SRL', ''),
(1483, 'INTERMEBEX SRL', ''),
(1484, 'ROSMARINE-PRIM SRL', ''),
(1485, 'SV-RUTAPRIM SRL', ''),
(1486, 'MEGA-PRACTIC SRL', ''),
(1487, 'MARIANA BALTAG TRANSPORTES UNIPESSOAL LDA', ''),
(1488, 'GLOBAL TEAM SRL', ''),
(1489, 'CURTEA DACILOR SRL', ''),
(1490, 'CORAL EXPRES SRL', ''),
(1491, 'BULAT EUROTRANS SRL', ''),
(1492, 'LUMINEX-TEHNOLUX SRL', ''),
(1493, 'STENALTES SRL', ''),
(1494, 'ACSEAL GAZ SRL', ''),
(1495, 'SCOTIGOR NICOLAE', ''),
(1496, 'AGROPRIM LOGISTIC SRL', ''),
(1497, 'FELICITAS-GRAND SRL', ''),
(1498, 'RUSAGRO-PRIM SRL.', ''),
(1499, 'IANCOM-NORD SRL', ''),
(1500, 'VALEXLOGISTIC SRL', ''),
(1501, 'CIUMAC TRANS COM SRL', ''),
(1502, 'TRANSLIVAS SRL', ''),
(1503, 'TRANS EMIDEEA SRL', ''),
(1504, 'MELNIC ION', ''),
(1505, 'DONTU TRANS SRL', ''),
(1506, 'HARIONTRANS SRL', ''),
(1507, 'OZKA CONSTRUCTION SRL', ''),
(1508, 'LOGISTIC MOTOR SRL', ''),
(1509, 'R.N.M. TRANSLUX SRL', ''),
(1510, 'LTA ', ''),
(1511, 'LTA & LOGIS SRL.', ''),
(1512, 'GLORIA-QVARC SRL', ''),
(1513, 'SIGILIU-LUX SRL', ''),
(1514, 'DAV AUTO BOSS SRL', ''),
(1515, 'TRANS SOLUTIONS SRL', ''),
(1516, 'PAPIRCART ', ''),
(1517, 'PAPIRCART & CO SRL.                                ', ''),
(1518, 'ALMI-PLUS SRL', ''),
(1519, 'VAYO STAR', ''),
(1520, 'CTLOGISTIC COMPANY SRL', ''),
(1521, 'DAMIL-SERVICE SRL', ''),
(1522, 'INDSPECIAL-TRANS SRL', ''),
(1523, 'FUNNY PIG SRL', ''),
(1524, 'DOGLEA CATALIN', ''),
(1525, 'AMIGOR TRANS SRL', ''),
(1526, 'BOGDANIGOR TRANS SRL', ''),
(1527, 'FOXTRANS SRL', ''),
(1528, 'SPINU AUREL', ''),
(1529, 'BRAND TRANSPORT FI SRL', ''),
(1530, 'ODENI GRUP SRL', ''),
(1531, 'CHARILE VR PRODUCTION SRL', ''),
(1532, 'AUTOTRANS-LOGISTIC SRL', ''),
(1533, 'UAB LOGISTICS SRL', ''),
(1534, 'MAXTRANSGRUP SRL', ''),
(1535, 'CAPTARENCU TRANS SRL', ''),
(1536, 'JSN TRANS EXPRESS SRL', ''),
(1537, 'S.C. CSC-TRANS SRL', ''),
(1538, 'ALVICTRANS EXIM SRL', ''),
(1539, 'BLUE SHARK SRL', ''),
(1540, 'STR OVICALIN SRL', ''),
(1541, 'PETROVICI VITALICI', ''),
(1542, 'TRANSIS LUX SRL', ''),
(1543, 'KAZAYAK-VIN S.A. I.M.', ''),
(1544, 'ESTCON CONSTRUCT SRL SC', ''),
(1545, 'DE9-TU2 LLE', ''),
(1546, 'MEGAGOLD SRL', ''),
(1547, 'TRASIS LUX SRL', ''),
(1548, 'NES CARGO SPEDITION SRL', ''),
(1549, 'MEGABAU GRUP SRL', ''),
(1550, 'EX -TRANSBUG SRL', ''),
(1551, 'TRANS-MONTAJ SRL', ''),
(1552, 'LIVAMTRANS SRL', ''),
(1553, 'S.C BAC-CRETU SRL', ''),
(1554, 'PROVIANATRANS SRL', ''),
(1555, 'MORTEANU NICOLAE', ''),
(1556, 'STANCIU OLGA II', ''),
(1557, 'ARIAN SPRINT SRL', ''),
(1558, 'EVION NIRONES SRL', ''),
(1559, 'BIVON SRL', ''),
(1560, 'FINAKOST-PLUS SRL', ''),
(1561, 'SIDECONS PRIM SRL', ''),
(1562, 'BIOAGROPRIM SRL', ''),
(1563, 'ONGROCHIM SRL', ''),
(1564, 'AUTO DRIVE GROUP SRL', ''),
(1565, 'HOME TRANS SRL', ''),
(1566, 'HOME TRAVEL SRL', ''),
(1567, 'DAN&NIK TUR SRL', ''),
(1568, 'DAN NIK TUR SRL', ''),
(1569, 'MASEROVSCHI VLADIMIR', ''),
(1570, 'AUTOMOBILISTUL S.A.', ''),
(1571, 'TRANS-ORTH SRL', ''),
(1572, 'AQUAPROM GRUP SRL', ''),
(1573, 'SOLOMON VIOREL', ''),
(1574, 'AUTOGENIUS SRL', ''),
(1575, 'COVRIC SRL', ''),
(1576, 'RIA-PRODEX SRL', ''),
(1577, 'VP TRANS EXPRES SRL', ''),
(1578, 'BTA N.35 DIN SINGEREI', ''),
(1579, ' N.35 DIN SINGEREI', ''),
(1580, 'COMBINATUL AUTO NR4 CHISINAU S.A.', ''),
(1581, 'UAB MOLDTRANS SRL', ''),
(1582, 'HINCU OCTAVIAN II', ''),
(1583, 'MARINA COM SRL', ''),
(1584, 'NEAGA GHEORGHE', ''),
(1585, 'DAC-TRANS-SERVICE SRL', ''),
(1586, 'EXPERT IMPORT AUTO SRL', ''),
(1587, 'ALEXROAD TRUCK SRL', ''),
(1588, 'GROSS AUTO TRANS SRL', ''),
(1589, 'K.M.V.TRANS.GRUP.SRL', ''),
(1590, 'VANSERTRANS SRL', ''),
(1591, 'GECKO EUROTOUR SRL', ''),
(1592, 'GALPRIM SRL', ''),
(1593, 'TRANSEV SERVICE SRL ', ''),
(1594, 'SH-TRANSPORT UNIVERS SERVICE SRL', ''),
(1595, 'TRANSIGURTUR SRL', ''),
(1596, 'UNIVERSAL TRANSPORT SRL', ''),
(1597, 'RUBESKI TRADE SRL', ''),
(1598, 'TRANS-RENTA SRL', ''),
(1599, 'TRANSNOLA TUR SRL', ''),
(1600, 'AGRO-CHIMICALE SRL', ''),
(1601, 'ALVI DELIVER SRL ', ''),
(1602, 'C.E.A. TRANS SRL', ''),
(1603, 'PELINOX SRL', ''),
(1604, 'VITNEWTRANS SRL', ''),
(1605, 'MIRZAC ION', ''),
(1606, 'LEVICONSSIA LOGISTICS SRL', ''),
(1607, 'MILLENIUM AVA SRL', ''),
(1608, 'ALXERAI TRANS SRL', ''),
(1609, 'SAPTE SPICE SRL', ''),
(1610, 'GRAP SRL', ''),
(1611, 'BESCHI TRANS SRL ', ''),
(1612, 'S.C ESTCARGO SERVICE SRL', ''),
(1613, 'DINTIU TOMA', ''),
(1614, 'SCORPAN TUR SRL', ''),
(1615, 'LUCVENTAS SRL', ''),
(1616, 'TAGA NORD TRANS SRL', ''),
(1617, 'LIDER TRANSLEX SRL', ''),
(1618, 'ELVILA-M SRL', ''),
(1619, 'IONEX-TRANS SRL', ''),
(1620, 'BALAUR TRANS SRL', ''),
(1621, 'CEREAL CARGO LOGISTICS SRL', ''),
(1622, 'ALEXDAF AUTO SRL', ''),
(1623, 'MALCHIN-TRANS SRL', ''),
(1624, 'OSTROVSCAIA BVV-TRANS ', ''),
(1625, 'KOD GOLDEN CARGO SRL', ''),
(1626, 'STANDARD SVP LOGISTIC SRL', ''),
(1627, 'URITU ARTIOM', ''),
(1628, 'CUDREAVTEV IGOR', ''),
(1629, 'EDTRANS-GRUP SRL', ''),
(1630, 'CARGO  TRAFIC SRL', ''),
(1631, 'JONCOSTIN CONS SRL', ''),
(1632, 'LLC MAGTRANS', ''),
(1633, 'FREEWAY-TRANS SRL', ''),
(1634, 'ZURZULEA-COM SRL', ''),
(1635, 'ROTOXALAUTO SRL', ''),
(1636, 'VEADOR PRIM SRL', ''),
(1637, 'S&D CALANCEA SRL', ''),
(1638, 'SERALIN-CH GRUP SRL', ''),
(1639, 'IP T.N. MIHAI EMINESCU', ''),
(1640, 'NVS RAPID SRL', ''),
(1641, 'TRANSPEDITION SRL', ''),
(1642, 'ONE WAY TRANSPORT SRL', ''),
(1643, 'DIROVE-NORD SRL', ''),
(1644, 'IFOSTRANS SRL', ''),
(1645, 'ELLIVO SRL', ''),
(1646, 'DANZA TRANS LOGISTIC SRL', ''),
(1647, 'TALMACINSCHI GRUP SRL', ''),
(1648, 'DIMTRANSALEX SRL', ''),
(1649, 'Old DB', '');

-- --------------------------------------------------------

--
-- Table structure for table `partners2`
--

CREATE TABLE `partners2` (
  `id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `fiscalcode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partners2`
--

INSERT INTO `partners2` (`id`, `name`, `fiscalcode`) VALUES
(1, 'Fomco SRL', '111111'),
(2, 'Webasto', '222'),
(3, 'Lontex', '333'),
(4, 'TR auto', '000'),
(5, 'Eberspaecher', '951'),
(6, 'PNI', ''),
(7, 'SVITTAHO', ''),
(8, 'UNIPLAST SRL', '');

-- --------------------------------------------------------

--
-- Table structure for table `pricelist`
--

CREATE TABLE `pricelist` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `cost_price` decimal(10,2) NOT NULL,
  `margin` decimal(6,2) NOT NULL,
  `sell_price` decimal(10,2) NOT NULL,
  `brutto_price` decimal(10,2) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricelist`
--

INSERT INTO `pricelist` (`id`, `product_id`, `currency_id`, `cost_price`, `margin`, `sell_price`, `brutto_price`, `created`) VALUES
(1, 1, 1, '100.00', '30.00', '130.00', '23.00', '2023-09-17 12:11:28'),
(2, 2, 2, '10.00', '30.00', '13.00', '9999999.00', '2023-09-17 12:12:17'),
(3, 1, 2, '20.00', '30.00', '26.00', '22.00', '2022-09-17 12:12:47'),
(4, 17, 1, '309.71', '30.00', '402.62', '23.00', '2023-10-04 05:21:28'),
(5, 18, 1, '154.86', '30.00', '201.32', '0.00', '2023-10-04 05:21:28'),
(6, 19, 1, '66.37', '30.00', '86.28', '0.00', '2023-10-04 05:21:28'),
(7, 17, 1, '309.71', '30.00', '402.62', '483.14', '2023-10-04 05:26:01'),
(8, 18, 1, '154.86', '30.00', '201.32', '241.58', '2023-10-04 05:26:01'),
(9, 19, 1, '66.37', '30.00', '86.28', '103.54', '2023-10-04 05:26:01'),
(10, 17, 1, '309.71', '30.00', '402.62', '483.14', '2023-10-01 00:00:00'),
(11, 18, 1, '154.86', '30.00', '201.32', '241.58', '2023-10-01 00:00:00'),
(12, 19, 1, '66.37', '30.00', '86.28', '103.54', '2023-10-01 00:00:00'),
(13, 17, 1, '309.71', '30.00', '402.62', '483.14', '2023-09-19 00:00:00'),
(14, 18, 1, '154.86', '30.00', '201.32', '241.58', '2023-09-19 00:00:00'),
(15, 19, 1, '66.37', '30.00', '86.28', '103.54', '2023-09-19 00:00:00'),
(18, 22, 1, '500.00', '30.00', '800.00', '156.00', '2023-10-05 09:35:18'),
(19, 17, 3, '309.71', '60.00', '402.62', '483.14', '2023-09-19 00:00:00'),
(20, 18, 1, '154.86', '30.00', '201.32', '241.58', '2023-09-19 00:00:00'),
(21, 19, 1, '66.37', '30.00', '86.28', '103.54', '2023-09-19 00:00:00'),
(22, 372, 1, '0.00', '0.00', '6000.00', '7200.00', '2024-01-16 09:10:37'),
(24, 1, 1, '20.00', '362.50', '92.50', '24.00', '2024-01-16 09:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE `producers` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`id`, `name`) VALUES
(1, 'Webasto'),
(2, 'Eberspaecher'),
(3, 'VDO'),
(4, 'EFAS'),
(5, 'Stoneridge'),
(6, 'PNI'),
(7, 'President electronics'),
(8, 'Kenwood'),
(9, 'Fomco'),
(10, 'Svittaho');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(511) NOT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `producer_id` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `title`, `category_id`, `unit_id`, `producer_id`, `visible`) VALUES
(1, '330015', 'Impulsor', 1, 2, 3, 1),
(2, '82819B', 'COMANDA BUTON AT 12/24V ', 2, 2, 1, 1),
(12, '9037046A', 'KIT REPARATIE AT2000ST 24V', 2, 2, 1, 1),
(13, 'TEDDY2P', 'TEDDY-II ASC STATIE RADIO', 3, 3, 7, 1),
(14, 'A2C59517076', 'GEO LOC KIT DTCO  A2C59517076', 1, 1, 3, 1),
(16, 'KITAS2+  ', 'PULSE CONVERTER KITAS2+                                                                             ', 1, 1, 1, 1),
(17, 'PNI-S9 FLUTUR  ', 'ANTENA PNI-S9 FLUTURE 120CM (CABLU PNI-CAB-S9)                                                      ', 3, 1, 6, 1),
(18, '120/DV', 'MAGNET 120/DV 125MM (CU CABLU 4M MUFA PL2)  ', 3, 1, 6, 1),
(19, 'SEXTRA45', 'ANTENA SEXTRA45 SPIC PNI ', 3, 1, 6, 1),
(21, 'TACHO2SAFE     ', 'CITITOR TACHO2SAFE                                                                                                                                                           ', 1, 1, 9, 1),
(22, 'SE5000', 'TAHOGRAF SE5000  12V/24V (NON ADR)', 1, 1, 5, 1),
(23, 'SE5000ADR      ', 'TAHOGRAF SE5000  12V/24V (ADR)', 1, 1, 5, 1),
(24, '330457', 'ROLE TEKSON TAHOGRAF  DIGITAL                                                                       ', 1, 1, 3, 1),
(26, '13810021', 'CAPAC SIGILARE SPATE 1381 3.0', 1, 1, 3, 1),
(27, '13810008', 'CAPAC SIGILARE SPATE 1381', 1, 1, 3, 1),
(28, '10211434000', 'TUB AER CALD 75 MM EBERSPACHER ', 2, 1, 2, 1),
(30, '10211437000', 'TUB AER CALD 90 MM EBERSPACHER', 2, 3, 2, 1),
(33, '252069100100', 'CAMERA DE ARDERE D2   ', 2, 1, 2, 1),
(34, '252070011100', 'STIFT INCANDESCENT D2/D4  24V  ', 2, 1, 2, 1),
(35, '252070992000', 'VENTILATOR D2 24V  ', 2, 1, 2, 1),
(36, '252145992000', 'VENTILATOR D4 24V   ', 2, 1, 2, 1),
(37, '89031054', 'TUB COMBUSTIBIL  D4MM EBERSPAECHER', 2, 3, 2, 1),
(38, '252726050000   ', 'INCALZITOR EBERSPAECHER D2L 24V  NEW', 2, 1, 2, 1),
(39, '252729050000   ', 'INCALZITOR D4 24V AM2  EBERSPAECHER ', 2, 1, 2, 1),
(40, '252955050000   ', 'INCALZITOR D4 12V AM3  EBERSPAECHER', 2, 1, 2, 1),
(41, '102114310000', 'TUB AER CALD 60 MM EBERSPACHER', 2, 3, 2, 1),
(42, '330129', 'KIT REPARARE CABLU ROTUND 90*  ', 1, 1, 3, 1),
(43, '330050', 'CAPAC SIGILARE SPATE 1324', 1, 1, 3, 1),
(44, '4030313251000', 'DIAGRAME 125 KM/H  HAUG', 1, 1, 3, 1),
(45, '330039+', 'KITAS 25 mm', 1, 1, 3, 1),
(46, 'ORIO ШСМ-300   ', 'TUB AER ADMISIE ORIO ШСМ-300', 2, 1, 10, 1),
(48, '252069010100        ', 'CARCASA D2 JOS                                                                                      ', 2, 1, 2, 1),
(49, '221000341500', 'EASY START TIMER ', 2, 6, 2, 1),
(50, '251818151100', 'Electrozi (251818151100)', 2, 6, 2, 1),
(51, '25181815100         ', 'ELECTROZI HIDRONIC 16/24/30*                                                                        ', 2, 6, 2, 1),
(52, '252488450301        ', 'MAGNETIC VALVE 24V HYD L2                                                                           ', 2, 6, 2, 1),
(53, '221000320700', 'MINI CONTROLER VOLLST 12/24V                                                                        ', 2, 6, 2, 1),
(54, '251816250100        ', 'POMPA LICHID                                                                                        ', 2, 1, 2, 1),
(55, '221000341300', 'PORNITOR EASY SELECT (221000341300)', 2, 6, 2, 1),
(56, '221000341700        ', 'RRC TP7 R+ COMPLETE                                                                                 ', 2, 6, 2, 1),
(57, '2517748990300       ', 'TEMP SENSOR EXTERNAL                                                                                ', 2, 6, 2, 1),
(58, '252113100100', 'CAMERA DE ARDERE D4                                                                                 ', 2, 6, 2, 1),
(59, '221000500500', 'COLIER 26-28MM (221000500500)                                                                       ', 2, 6, 2, 1),
(60, '102068010098', 'COLIER D=10 MM   102068010098                                                                       ', 2, 6, 2, 1),
(61, '102068009098', 'COLIER D9  MM                                                                                       ', 2, 6, 2, 1),
(62, '201312000006', 'FILTRU POMPA DOZAJ  201312000006', 2, 6, 2, 1),
(63, '2018209900010', 'GARNITURA D4-5                                                                                      ', 2, 6, 2, 1),
(64, '201820990001', 'GARNITURA D4/D5  (201820990001)                                                                     ', 2, 6, 2, 1),
(65, '252069010003', 'GARNITURA MOTOR D2  (252069010003)', 2, 6, 2, 1),
(66, '252113010003', 'GARNITURA MOTOR D4  (252113010003)', 2, 6, 2, 1),
(67, '251688010006', 'GARNITURA VENTILATOR D1       251688010006                                                          ', 2, 6, 2, 1),
(68, '251822010003', 'GARNITURA VENTILATOR D3      251822010003                                                           ', 2, 6, 2, 1),
(69, 'HMD-D1', 'IZOLATOR THERMIC D1  HMD-D1                                                                         ', 2, 6, 2, 1),
(70, 'HMD-D2', 'IZOLATOR THERMIC D2  HMD-D2                                                                         ', 2, 6, 2, 1),
(71, 'HMD-D3', 'IZOLATOR THERMIC D3  HMD-D3                                                                         ', 2, 6, 2, 1),
(72, 'HMD-D4', 'IZOLATOR THERMIC D4  HMD-D4                                                                         ', 2, 6, 2, 1),
(73, '251688060400', 'SITA D1 LC   251688060400                                                                           ', 2, 6, 2, 1),
(74, '252069100102', 'SITA D2-D4                                                                                          ', 2, 6, 2, 1),
(75, '251822060400', 'SITA D3 LC   251822060400                                                                           ', 2, 6, 2, 1),
(76, '252121990113', 'SITA HYDRONIC CU FUSTA                                                                              ', 2, 6, 2, 1),
(77, '36061299            ', 'TEAVA ESAPAMENT D24MM INOX (36061299)                                                               ', 2, 6, 2, 1),
(78, '251688060006', 'VAPORIZATOR D1   LC                                                                                 ', 2, 6, 2, 1),
(79, '251822060003', 'VAPORIZATOR D3                                                                                      ', 2, 6, 2, 1),
(80, '252113010100', 'CARCASA D4 AIR                                                                                      ', 2, 6, 2, 1),
(81, '221000010037        ', 'DUCTING FLANGE 90MM PLASTIC                                                                         ', 2, 6, 2, 1),
(82, '221000010040', 'GRILA OUTLET 50-60 FLAT NEAGRA (221000010040)', 2, 6, 2, 1),
(83, '201577890600', 'GRILA ROTATIVA 60* EBER                                                                             ', 2, 6, 2, 1),
(84, '251688890400        ', 'GRILA ROTATIVA 75MM                                                                                 ', 2, 6, 2, 1),
(85, '221000010019        ', 'HOOD 90MM STRAIGHT D4 AIR (221000010019)                                                            ', 2, 6, 2, 1),
(86, '252069060002', 'MANSON D2/D4                                                                                        ', 2, 6, 2, 1),
(87, '221000010027', 'TEU 75                                                                                              ', 2, 6, 2, 1),
(88, '25190845', 'DOZATOR 1-3 KW 24V                                                                                  ', 2, 6, 2, 1),
(89, 'HATS', 'DOZATOR 1-4 KW 12V HATS                                                                             ', 2, 6, 2, 1),
(90, '22451801', 'DOZATOR 1-4 KW 24V                                                                                  ', 2, 6, 2, 1),
(91, '25183045', 'DOZATOR 12V                                                                                         ', 2, 6, 2, 1),
(92, '22451901            ', 'DOZATOR 12V  D2/D4 AIR                                                                              ', 2, 6, 2, 1),
(93, '25267505            ', 'D2  12V  INCALZITOR EBERSPAECHER                                                                    ', 2, 6, 2, 1),
(94, '25206905            ', 'D2  12V  INCALZITOR EBERSPAECHER                                                                    ', 2, 6, 2, 1),
(95, '25267605            ', 'D2 24V  INCALZITOR EBERSPAECHER                                                                     ', 2, 6, 2, 1),
(96, '252113050000        ', 'D4 12V INCALZITOR EBERSPAECHER                                                                      ', 2, 6, 2, 1),
(97, '256696040001        ', 'D4 24V INCALZITOR EBERSPAECHER                                                                      ', 2, 6, 2, 1),
(98, 'FC                  ', 'INCALZITOR EBERSPAECHER D2L 12V  NEW                                                                ', 2, 6, 2, 1),
(99, '25303405            ', 'INCALZITOR EBERSPAECHER D2L 12V AS3 VDP                                                             ', 2, 6, 2, 1),
(100, '2518959935', 'SENSOR DE TEMPERATURA  D1/D3                                                                        ', 2, 6, 2, 1),
(101, '25189542', 'SENSOR SUPRAINCALZIRE D1/D3                                                                         ', 2, 6, 2, 1),
(102, '252069010200', 'SENSOR SUPRAINCALZIRE D2/D4    252069010200                                                         ', 2, 6, 2, 1),
(103, '251818410000', 'SENZOR DE TEMPERATURA HYDRONIC                                                                      ', 2, 6, 2, 1),
(104, '251855991509', 'SENZOR FLACARA CU SUPORT                                                                            ', 2, 6, 2, 1),
(105, '251818400000', 'SENZOR SUPRAINCALZIRE HYDRONIC                                                                      ', 2, 6, 2, 1),
(106, '251831010100', 'BUGIE D1/D3  20V                                                                                    ', 2, 6, 2, 1),
(107, '252069011300', 'STIFT INCANDESCENT  D2/4 - 12V                                                                      ', 2, 6, 2, 1),
(108, '252070011100-SH', 'STIFT INCANDESCENT SH D2/D4  24V                                                                    ', 2, 6, 2, 1),
(109, '2520700111-SH', 'STIFT-SH  D2/D4  24V   2520700111-SH', 2, 6, 2, 1),
(110, '225201043002', 'UNITATE DE COMANDA 12V                                                                              ', 2, 6, 2, 1),
(111, '225101003001', 'UNITATE DE COMANDA D2 12V                                                                           ', 2, 6, 2, 1),
(112, '225102003001', 'UNITATE DE COMANDA D2 24V                                                                           ', 2, 6, 2, 1),
(113, '225101003005', 'UNITATE DE COMANDA D4 12V                                                                           ', 2, 6, 2, 1),
(114, '225102003005', 'UNITATE DE COMANDA D4 24V                                                                           ', 2, 6, 2, 1),
(115, '225102003003        ', 'UNITATE DE COMANDA D4 24V.                                                                          ', 2, 6, 2, 1),
(116, '251896992000', 'VENTILATOR D1LC 24V                                                                                 ', 2, 6, 2, 1),
(117, '252069992000        ', 'VENTILATOR D2 12V                                                                                   ', 2, 6, 2, 1),
(118, '251907992000', 'VENTILATOR D3LCC 24V                                                           ', 2, 6, 2, 1),
(119, '252113992000', 'VENTILATOR D4 12V                                                                                   ', 2, 6, 2, 1),
(120, '9031988A', 'CABLAJ MULTICONTROL 3M 9031988A                                                                     ', 2, 6, 1, 1),
(121, '9039792             ', 'CABLAJ U4840 TH90ST                                                                                 ', 2, 6, 1, 1),
(122, '29716', 'CAPAC CABLAJ AT20 GRILA                                                                             ', 2, 6, 1, 1),
(123, '29718A              ', 'CAPAC ECU AT2000 ST                                                                                 ', 2, 6, 1, 1),
(124, '93012C', 'CAPAC POMPA APA U4847                                                                               ', 2, 6, 1, 1),
(125, '93011C', 'CAPAC POMPA APA U4847 LA 193\'                                                                       ', 2, 6, 1, 1),
(126, '9030025C', 'CEAS PROGRAMABIL MULTICONTROL AT                                                                    ', 2, 6, 1, 1),
(127, '1302774B', 'ROTITA VEN AT2000ST                                                                                 ', 2, 6, 1, 1),
(128, '35320A', 'SORB WEBASTO D=5.5                                                                                  ', 2, 6, 1, 1),
(129, '9030077A', 'SUPORT PRINDERE MULTICONTROL                                                                        ', 2, 6, 1, 1),
(130, '9014397D', 'TELESTART VW TOUAREG', 2, 6, 1, 1),
(131, '1302805A', 'TEPLOBMENIK AT2000ST      (1302805A)                                                                ', 2, 6, 1, 1),
(132, '14845', 'TRANSFORMATOR APRINDERE DW                                                                          ', 2, 6, 1, 1),
(133, '9027299', 'TUB COMBUSTIBIL 5*1.5                                                                               ', 2, 6, 1, 1),
(134, '9029418C            ', 'UNITATEA DE COMANDA AT EVO55 12V                                                                    ', 2, 6, 1, 1),
(135, '9013147A', 'UNITATEA DE COMANDA SG1574 AT2000ST 24V', 2, 6, 1, 1),
(136, '29717', 'ADMISIE CAPAC AT2000', 2, 6, 1, 1),
(137, '1320323A', 'CAPAC AER CALD AT3500ST/5000ST                                                                      ', 2, 6, 1, 1),
(138, '67490A              ', 'CARCASA  ADMISIE  AT20S  (67490A)                                                                   ', 2, 6, 1, 1),
(139, '67488E              ', 'CARCASA  AT2000ST DOWN     67488E                                                                   ', 2, 6, 1, 1),
(140, '9019555A', 'CARCASA AT2000S UP                                                                                  ', 2, 6, 1, 1),
(141, '98651', 'CARCASA EVACUARE                                                                                    ', 2, 6, 1, 1),
(142, '9019553A', 'CARCASA EVACUARE D60AT20S                                                                           ', 2, 6, 1, 1),
(143, '1322627A', 'COT 60MM 45G                                                                                        ', 2, 6, 1, 1),
(144, '29849A              ', 'COT D60 90AT2000                                                                                    ', 2, 6, 1, 1),
(145, '9012285A            ', 'GRILA  AER CALD D90 /45*                                                                            ', 2, 6, 1, 1),
(146, '1320163a', 'GRILA 60 ROTUND CAPAC                                                                               ', 2, 6, 1, 1),
(147, '9012300             ', 'GRILA AER D60 NEGRU CU INCHIDERE                                                                    ', 2, 6, 1, 1),
(148, '9012294', 'GRILA AER D60/45*                                                                                   ', 2, 6, 1, 1),
(149, '9012297             ', 'GRILA AER D60/90* NEGRU                                                                             ', 2, 6, 1, 1),
(150, '1310581A', 'GRILA D=90                                                                                          ', 2, 6, 1, 1),
(151, '9009266C', 'TEU 60*60*60                                                                                        ', 2, 6, 1, 1),
(152, '9009265C', 'TEU 90•90•90                                                                                        ', 2, 6, 1, 1),
(153, '82415B', 'TUB  ARDERE  TH90                                                                                   ', 2, 6, 1, 1),
(154, '1311902B', 'TUB AER CALD 90MM                                                                                   ', 2, 6, 1, 1),
(155, '1311898', 'TUB AER CALD D60MM 25M                                                                              ', 2, 6, 1, 1),
(156, '9023037A', 'COLIER D10 MM                                                                                       ', 2, 6, 1, 1),
(157, '14846B', 'Electrod aprindere DW/Termo/230/300/350 (14846B)', 2, 6, 1, 1),
(158, '1303326', 'IZOLATIE AT2000 (4 BUC)    1303326                                                                  ', 2, 6, 1, 1),
(159, 'HMD-AT2000          ', 'IZOLATOR THERMIC AT2000  HMD-AT2000                                                                 ', 2, 6, 1, 1),
(160, '1319725A', 'KIT REPARARE POMPA APA U4814', 2, 6, 1, 1),
(161, '1303517A            ', 'SET DE GARNITURI AT20 ST/STC   (1303517A)                                                           ', 2, 6, 1, 1),
(162, '82302A', 'SET GARNITURI AT20/20S/20ST', 2, 6, 1, 1),
(163, '91364A', 'SET GARNITURI AT35/35ST                                                                             ', 2, 6, 1, 1),
(164, '82284A', 'TUB ARDERE AT2000/S/ST                                                                              ', 2, 6, 1, 1),
(165, 'EMC-11W             ', 'EMC-11W GARNITURA                                                                                   ', 4, 6, 8, 1),
(166, 'EMC-3               ', 'EMC-3 GARNITURA                                                                                     ', 4, 6, 8, 1),
(167, 'KAS-10              ', 'KAS-10 SOFTWARE                                                                                     ', 4, 6, 8, 1),
(168, 'KBH-10M             ', 'KBH-10M BELT CLIP (TK-2406/3406)                                                                    ', 4, 6, 8, 1),
(169, 'KBH-18M             ', 'KBH-18M BELT CLIP (TK-2000/3000)                                                                    ', 4, 6, 8, 1),
(170, 'KCT-53U             ', 'KCT-53U SERIAL TO USB ADAPTOR (WITH DRIVERS)                                                        ', 4, 6, 8, 1),
(171, 'KMC-21M             ', 'KMC-21M MICROPHONE  SLIM-LINE SPEAKER                                                               ', 4, 6, 8, 1),
(172, 'KMC-30M             ', 'KMC-30M MICROFON  STATIE AUTO                                                                       ', 4, 6, 8, 1),
(173, 'KMC-32M             ', 'KMC-32M MICROFON                                                                                    ', 4, 6, 8, 1),
(174, 'KMC-60M             ', 'KMC-60M MICROFON  STATIE AUTO                                                                       ', 4, 6, 8, 1),
(175, 'KMC-9C              ', 'KMC-9C  MICROPHONE CONTROL STATION DESKTOP                                                          ', 4, 6, 8, 1),
(176, 'KNB-20              ', 'KNB-20-NM NI-MH BATTERY                                                                             ', 4, 6, 8, 1),
(177, 'KNB-29-N            ', 'KNB-29-NM NI-MH BATTERY (1500 MAH)                                                                  ', 4, 6, 8, 1),
(178, 'KNB-45-L            ', 'KNB-45-LM LI-ION BATTERY (2000 MAH)                                                                 ', 4, 6, 8, 1),
(179, 'KNB-63L             ', 'KNB-63LM LI-ION BATTERY (1130MAH)                                                                   ', 4, 6, 8, 1),
(180, 'KNB55LAM            ', 'KNB55LAM ACUMULATOR                                                                                 ', 4, 6, 8, 1),
(181, 'KPG-158D            ', 'KPG-158D  PROGRAMMING DISK                                                                          ', 4, 6, 8, 1),
(182, 'KPG-46A             ', 'KPG-46A CABLU (SERIAL)                                                                              ', 4, 6, 8, 1),
(183, 'KPG-46UM            ', 'KPG-46UM CABLU ASS\'Y                                                                                ', 4, 6, 8, 1),
(184, 'KPG-91D             ', 'KPG-91D  PROGRAMMING DISK                                                                           ', 4, 6, 8, 1),
(185, 'KPG-D6E             ', 'KPG-D6E  PROGRAMMING SOFTWARE                                                                       ', 4, 6, 8, 1),
(186, 'KRA-23M3            ', 'KRA-23M3 ANTENA SHORT UHF     (400-450 MHZ)                                                         ', 4, 6, 8, 1),
(187, 'KRA-26M             ', 'KRA-26M ANTENNA  VHF (146-162 MHZ)                                                                  ', 4, 6, 8, 1),
(188, 'KRA-26M2            ', 'KRA-26M2 ANTENNA  VHF (162-174 MHZ)                                                                 ', 4, 6, 8, 1),
(189, 'KRA-26M3            ', 'KRA-26M3 ANTENNA  VHF (136-150 MHZ)                                                                 ', 4, 6, 8, 1),
(190, 'KRA-27M             ', 'KRA-27M ANTENNA  UHF (440-490 MHZ)                                                                  ', 4, 6, 8, 1),
(191, 'KRA-27M3            ', 'KRA-27M3 ANTENNA  UHF (400-450 MHZ)                                                                 ', 4, 6, 8, 1),
(192, 'KRA-42M3            ', 'KRA-42M3 ANTENNA  UHF (400-450 MHZ)  55MM                                                           ', 4, 6, 8, 1),
(193, 'KSC-25LSE           ', 'KSC-25LSE INCARCATOR ACUMULATOARE                                                                   ', 4, 6, 8, 1),
(194, 'KSC-30              ', 'KSC-30 (E) INCARCATOR    (KNB-25A/26N)                                                              ', 4, 6, 8, 1),
(195, 'KSC-35SE            ', 'KSC-35SE INCARCATOR BATERIE    (KNB-45L)                                                            ', 4, 6, 8, 1),
(196, 'KSC-43E             ', 'KSC-43E  INCARCATOR FOR KNB-29N/45L/53N                                                             ', 4, 6, 8, 1),
(197, 'KTI-3               ', 'KTI3-M UNITATE DE INTERFATA                                                                         ', 4, 6, 8, 1),
(198, 'LCBN13              ', 'LCBN13 UNIVERSAL CHEST PACK (NYLON) (BLACK)                                                         ', 4, 6, 8, 1),
(199, 'C709.04             ', 'MA21-LK GARNITURA STATIE RADIO 2PIN KENWOOD (C709.04)                                               ', 4, 6, 8, 1),
(200, 'C732.03             ', 'MA31-L GARNITURA STATIE RADIO 2PIN (C732.03)                                                        ', 4, 6, 8, 1),
(201, 'C732.06             ', 'MA31-M GARNITURA STATIE RADIO 2PIN MOTOROLA (C732.06)                                               ', 4, 6, 8, 1),
(202, 'MD655-VHF           ', 'MD655 VHF STATIE RADIO HYTERA (136-174MHZ)                                                          ', 4, 6, 8, 1),
(203, 'MD655-UHF           ', 'MD655U UHF STATIE RADIO  HYTERA (400-470MHZ)                                                        ', 4, 6, 8, 1),
(204, 'MD785-UHF           ', 'MD785U UHF STATIE RADIO HYTERA (400-470MHZ)                                                         ', 4, 6, 8, 1),
(205, 'NX-1200-AEPACK      ', 'NX-1200-AEPACK STATIE RADIO PORTATIVA VHF 136-174 MHZ                                               ', 4, 6, 8, 1),
(206, 'NX-1200DE2          ', 'NX-1200DE2   STATIE RADIO PORTATIVA VHF 136-174 MHZ                                                 ', 4, 6, 8, 1),
(207, 'NX-1200DE3          ', 'NX-1200DE3   STATIE RADIO PORTATIVA VHF 136-174 MHZ                                                 ', 4, 6, 8, 1),
(208, 'NX-1300-AEPACK      ', 'NX-1300-AEPACK STATIE RADIO PORTATIVA VHF 400-470 MHZ                                               ', 4, 6, 8, 1),
(209, 'NX-1300DE3          ', 'NX-1300DE3   STATIE RADIO PORTATIVA UHF 400-470 MHZ                                                 ', 4, 6, 8, 1),
(210, 'NX-1700DE           ', 'NX-1700DE STATIE RADIO MOBILA VHF 136-174 MHZ                                                       ', 4, 6, 8, 1),
(211, 'NX-3320E2           ', 'NX-3320E2 STATIE RADIO PORTABILA UHF GPS                                                            ', 4, 6, 8, 1),
(212, 'NX-3820E            ', 'NX-3820E STATIE RADIO MOBILA UHF GPS                                                                ', 4, 6, 8, 1),
(213, 'PC69                ', 'PC-69 CABLU PROGRAMATOR (BD305)    HYTERA                                                           ', 4, 6, 8, 1),
(214, 'PC76                ', 'PC-76 CABLU PROGRAMATOR (BD505)     HYTERA                                                          ', 4, 6, 8, 1),
(215, 'PKT-03M             ', 'PKT-03M  VHF FM TRANSCEIVER                                                                         ', 4, 6, 8, 1),
(216, 'SM08M3              ', 'SM08M3 SPEAKER MICROFOM (BD505)                                                                     ', 4, 6, 8, 1),
(217, 'TK-2000M            ', 'TK-2000M STATIE RADIO PORTATIVA VHF (144-174 MHZ)                                                   ', 4, 6, 8, 1),
(218, 'TK- 2406M           ', 'TK-2406M STATIE RADIO PORTATIVA VHF (136-174 MHZ)                                                   ', 4, 6, 8, 1),
(219, 'TK-3000M            ', 'TK-3000M STATIE RADIO PORTATIVA UHF (440-480 MHZ)                                                   ', 4, 6, 8, 1),
(220, 'TK-3000M2           ', 'TK-3000M2 STATIE RADIO PORTATIVA UHF (400-430 MHZ)                                                  ', 4, 6, 8, 1),
(221, 'TK-3406M2           ', 'TK-3406M2 STATIE RADIO  PORTATIVA  UHF (400-470 MHZ)                                                ', 4, 6, 8, 1),
(222, 'TK-7302E            ', 'TK-7302E STATIE RADIO MOBILA VHF (136-174 MHZ)                                                      ', 4, 6, 8, 1),
(223, 'TK-8108M3           ', 'TK-8108M3 STATIE RADIO MOBILA  (400-470 MHZ)                                                        ', 4, 6, 8, 1),
(224, 'TK-8302E            ', 'TK-8302E STATIE RADIO MOBILA UHF (400-470 MHZ)                                                      ', 4, 6, 8, 1),
(225, 'TKD-240E            ', 'TKD-240E STATIE RADIO PORTATIVA DIGITALA VHF (136-174 MHZ)                                          ', 4, 6, 8, 1),
(226, 'TKD-340E            ', 'TKD-340E STATIE RADIO PORTATIVA DIGITALA UHF (400-470 MHZ)                                          ', 4, 6, 8, 1),
(227, 'TKRD-710E           ', 'TKRD-710E   REPEATER     VHF                                                                        ', 4, 6, 8, 1),
(228, 'TS-890S             ', 'TS-890S RADIO PENTRU AMATORI                                                                        ', 4, 6, 8, 1),
(229, 'YG-82CN-1           ', 'YG-82CN-1 CRISTAL  FILTER                                                                           ', 4, 6, 8, 1),
(230, 'ZNX3820E            ', 'ZNX3820E STATIE RADIO DIGITALA MOBILA UHF                                                           ', 4, 6, 8, 1),
(231, 'PNI-45EXTRA         ', 'ANTENA PNI-EXTRA45 CU MAGNET                                                                        ', 3, 6, 6, 1),
(232, 'PNI-ML-160FC        ', 'ANTENA PNI-ML-160FC 145CM (FARA CABLU)                                                              ', 3, 6, 6, 1),
(233, 'PNI-ML75            ', 'ANTENA PNI-ML75 T601 CU CABLU MONTAJ T601                                                           ', 3, 6, 6, 1),
(234, 'PNI-S75CAB          ', 'ANTENA PNI-S75CAB FLUTURE (CABLU+MUFAPL)                                                            ', 3, 6, 6, 1),
(235, 'PNI-UF400           ', 'ANTENA PNI-UF400 47CM, 430-470MHZ, CU BAZA MAGNETICA                                                ', 3, 6, 6, 1),
(236, 'PNI-VHF285          ', 'ANTENA PNI-VHF285 128CM 134-174MHZ                                                                  ', 3, 6, 6, 1),
(237, 'PNI-SS1200          ', 'ANTENA RADIO SUPER SANTIAGO PNI-SS1200', 3, 6, 6, 1),
(238, '2204106.02          ', 'ANTENA SIRIO CARBONIUM 27 (2204106.02)                                                              ', 3, 6, 6, 1),
(239, '2218505.51/LED      ', 'ANTENA SIRIO PERFORMER 5000 PLCU LED (2218505.51/LED)                                               ', 3, 6, 6, 1),
(240, '2202005             ', 'ANTENA SIRIO TURBO CB 1000PL  BLUE LINE 115CM (2202005.41)', 3, 6, 6, 1),
(241, ' 2201905            ', 'ANTENA SIRIO TURBO CB 800 SPL BLUE LINE 84CM (2201905.41)', 3, 6, 6, 1),
(242, 'SMA 47/135          ', 'ANTENA VHF ALBRECHT SMA 47/135 DUAL BAND 46.5-61.5/135-175M                                         ', 3, 6, 6, 1),
(243, 'SIRIO HP-2070       ', 'ANTENA VHF/UHF SIRIO HP-2070 PNI-2210305.05  144/430MHZ', 3, 6, 6, 1),
(244, 'Transirver_CB', 'Transirver CB', 3, 6, 6, 1),
(245, 'TXPR002             ', 'BARRY AM/FM ASC RADIO CB.                                                                           ', 3, 6, 6, 1),
(246, 'BARRY-2             ', 'BARRY-2 ASC AM/FM 12V/24V.                                                                          ', 3, 6, 6, 1),
(247, 'HP8001L ASQ         ', 'STATIE RADIO SB ESCORT HP8001L ASQ (CU CASCA)', 3, 6, 6, 1),
(248, 'ESCORT HP-62        ', 'STATIE RADIO SB PNI ESCORT HP-62                                                                    ', 3, 6, 6, 1),
(249, 'ESCORT HP-802       ', 'STATIE RADIO SB PNI ESCORT HP-8024 ASQ REGLABIL ALIMENTARE 1                                        ', 3, 6, 6, 1),
(250, 'TTI-TCB5289         ', 'STATIE RADIO SB TTI-TCB5289                                                                         ', 3, 6, 6, 1),
(251, 'TEDDY2              ', 'TEDDY-II ASC STATIE RADIO (PNI-TEDDY2)    PNI                                                       ', 3, 6, 6, 1),
(252, '5060                ', 'ADAPTOR ALBRECHT NC-553, PL-258                                                                     ', 3, 6, 6, 1),
(253, 'PNI-67140           ', 'ANTENA ALBRECHT CS 72CM (CABLU INCUS) PNI-67140                                                     ', 3, 6, 6, 1),
(254, 'AMMI121             ', 'ANTENA MARYLAND  AMMI121                                                                            ', 3, 6, 6, 1),
(255, 'T301                ', 'CABLU DE LEGATURA P/N ANTENE CU FILET T301                                                          ', 3, 6, 6, 1),
(256, 'T601                ', 'CABLU MONTAJ P/N ANTENE CU FILET T601                                                               ', 3, 6, 6, 1),
(257, 'PNI-CAB-S9          ', 'CABLU P/N ANTENE S9 SI MONTURA   (PNI-CAB-S9)                                                       ', 3, 6, 6, 1),
(258, ' PNI-DIN80 1DI      ', 'CARCASA MONTAJ PNI-DIN80 1DIN HP 8000 (ESCORT)', 3, 6, 6, 1),
(259, 'HS-82               ', 'CASCA HS82  2PIN KENWOOD                                                                            ', 3, 6, 6, 1),
(260, 'HS-84               ', 'CASCA HS84  2PIN KENWOOD                                                                            ', 3, 6, 6, 1),
(261, ' PNI-VLT40A         ', 'CONVERTOR 24-12V PNI-VLT40A                                                                         ', 3, 6, 6, 1),
(262, 'PNI-L807-PLUS       ', 'GPS SISTEM DE NAVIGATIE PNI-L807-PLUS ECRAN 7 INCH 800MHZ                                           ', 3, 6, 6, 1),
(263, 'PNI-RDRC50          ', 'INCARCATOR/REDRESOR PNI C50                                                                         ', 3, 6, 6, 1),
(264, 'PNI-ACW03           ', 'KIT AUTOMATIZARE PORTI YR-300                                                                       ', 3, 6, 6, 1),
(265, 'C1306  MA21-LK      ', 'MA21-LK GARNITURA STATIE RADIO 2PIN KENWOOD (C1306)                                                 ', 3, 6, 6, 1),
(266, '145PLMW             ', 'MAGNET PL145                                                                                        ', 3, 6, 6, 1),
(267, 'CDS-06              ', 'MICROFON CONDENSER CDS-06  6PINI                                                                    ', 3, 6, 6, 1),
(268, 'MKS-518             ', 'MICROFON CRT PNI-MKS-518 4PINI MINI                                                                 ', 3, 6, 6, 1),
(269, 'PNI-DNC-518 6       ', 'MICROFON PRESIDENT MICRO PNI-DNC-518 6PINI                                                          ', 3, 6, 6, 1),
(270, 'PNI-DNC-520         ', 'MICROFON PRESIDENT MICRO PNI-DNC-520 6PINI                                                          ', 3, 6, 6, 1),
(271, 'L1-PNI              ', 'SUPORT ANTENA INOX L1-PNI                                                                           ', 3, 6, 6, 1),
(272, 'L2-PNI              ', 'SUPORT ANTENA INOX L2-PNI                                                                           ', 3, 6, 6, 1),
(273, '4MAN                ', 'SUPORT ANTENA INOX PNI-4MAN                                                                         ', 3, 6, 6, 1),
(274, 'C1430.07            ', 'SUPORT ANTENA MIDLAND AB-IVECO (C1430.07)                                                           ', 3, 6, 6, 1),
(275, 'C1430.06            ', 'SUPORT ANTENA MIDLAND AB-MAN TGX E5-E6 (C1430.06)                                                   ', 3, 6, 6, 1),
(276, '2503203.00          ', 'SUPORT ANTENA SIRIO M2 180*100*45MM (2503203.00)                                                    ', 3, 6, 6, 1),
(277, 'TRM-22 IVECO        ', 'SUPORT ANTENA SIRIO TRM-22 IVECO STRALIS NEW                                                        ', 3, 6, 6, 1),
(278, 'TRM-23 VOLVO        ', 'SUPORT ANTENA SIRIO TRM-23 VOLVO FH NEW PNI-2522803.00                                              ', 3, 6, 6, 1),
(279, 'TRM-3 SCANIA        ', 'SUPORT ANTENA SIRIO TRM-3 SCANIA 2012-2017 PNI-2522003.00                                           ', 3, 6, 6, 1),
(280, 'TRM-33 SCANIA       ', 'SUPORT ANTENA SIRIO TRM-33 SCANIA >2017 2523003.00                                                  ', 3, 6, 6, 1),
(281, 'TRM-4 MAN           ', 'SUPORT ANTENA SIRIO TRM-4 MAN OTEL PNI-2522103.00                                                   ', 3, 6, 6, 1),
(282, 'TRM-42 MB ACT       ', 'SUPORT ANTENA SIRIO TRM-42 MB ACTROS 2016 PNI-2523103.00                                            ', 3, 6, 6, 1),
(283, 'SPA100              ', 'SUPORT ANTENA SPA100                                                                                ', 3, 6, 6, 1),
(284, 'SS240TEDDY   PNI    ', 'SUPORT STATIE BARRY/TEDDY /HARRY / TRUMAN   PNI                                                     ', 3, 6, 6, 1),
(285, 'JF-20               ', 'SURSA DE TENSIUNE PNI JF-20 JETFON                                                                  ', 3, 6, 6, 1),
(286, 'ST3.4A              ', 'SURSA DE TENSIUNE PNI ST3.4A  12V                                                                   ', 3, 6, 6, 1),
(287, 'PNI-DK101           ', 'TASTATURA CONTROL ACCES PNI DK101                                                                   ', 3, 6, 6, 1),
(288, 'AMMI090             ', 'ANTENA  OREGON', 3, 6, 7, 1),
(289, 'AMMI120             ', 'ANTENA IOWA   AMMI120', 3, 6, 7, 1),
(290, ' AMMI097            ', 'ANTENA KENTUCKY  AMMI097                                                                            ', 3, 6, 7, 1),
(291, 'AMMI112             ', 'ANTENA MISSISSIPPI   AMMI112                                                                        ', 3, 6, 7, 1),
(292, '“‘‹“ѓ€0000043       ', 'BARRY AM/FM ASC RADIO CB   PRESIDENT                                                                ', 3, 6, 7, 1),
(293, 'HP1                 ', 'DIFUZOR HP1                                                                                         ', 3, 6, 7, 1),
(294, 'HP2                 ', 'DIFUZOR HP2                                                                                         ', 3, 6, 7, 1),
(295, 'MARTIN', 'MARTIN 12V/24V                                                                                      ', 3, 6, 7, 1),
(296, 'ACVR049             ', 'MICROFON MICRO BARRY U/D                                                                            ', 3, 6, 7, 1),
(297, 'ACFD520             ', 'MICROFON PREZ MICRO 520                                                                             ', 3, 6, 7, 1),
(298, 'ACFD521             ', 'MICROFON PREZ MICRO 521                                                                             ', 3, 6, 7, 1),
(299, 'TITANIUM            ', 'MICROFON PREZ TITANIUM                                                                              ', 3, 6, 7, 1),
(300, '14040153            ', 'stabo freetalk comii', 3, 6, 7, 1),
(301, 'TAYLOR-III          ', 'STATIE RADIO AUTO TAYLOR III ASC (TXMU403)                                                          ', 3, 6, 7, 1),
(302, 'BILL                ', 'STATIE RADIO BILL                                                                                   ', 3, 6, 7, 1),
(303, 'JOHNSON-II          ', 'STATIE RADIO JOHNSON II 12/24V                                                                      ', 3, 6, 7, 1),
(304, 'ACMI006             ', 'SUPORT ANTENA BASE-N                                                                                ', 3, 6, 7, 1),
(305, 'SS240TEDDY    PRS   ', 'SUPORT STATIE BARRY/TEDDY /HARRY / TRUMAN   PRESIDENT                                               ', 3, 6, 7, 1),
(306, 'SSHENRRY            ', 'SUPORT STATIE HENRRY                                                                                ', 3, 6, 7, 1),
(307, 'SJ                  ', 'SUPORT STATIE JOHNSON                                                                               ', 3, 6, 7, 1),
(308, '3X80                ', 'SUPORT STATIE MARTIN                                                                                ', 3, 6, 7, 1),
(309, 'TRUMAN              ', 'TRUMAN STATIE RADIO     ', 3, 6, 7, 1),
(310, '330019              ', 'IMPOLSOR INDUCTIV  90MM                                                                             ', 1, 6, 3, 1),
(311, '330005', 'IMPULSOR 2159 VDO                                                                                   ', 1, 6, 3, 1),
(312, '330442', 'IMPULSOR 25 MM EGK   100 PL                                                                         ', 1, 6, 3, 1),
(313, '330422', 'IMPULSOR INDUCTIV 115 MM VDO                                                                        ', 1, 6, 3, 1),
(314, '330424', 'IMPULSOR INDUCTIV 135 MM VDO                                                                        ', 1, 6, 3, 1),
(315, '136.8               ', 'IMPULSOR INDUCTIV 136.8 MM MERCEDES                                                                 ', 1, 6, 3, 1),
(316, '330010', 'IMPULSOR INDUCTIV 19.8  MM                                                                          ', 1, 6, 3, 1),
(317, '330013', 'IMPULSOR INDUCTIV 25MM                                                                              ', 1, 6, 3, 1),
(318, '330415', 'IMPULSOR INDUCTIV 25MM NEW TYPE                                                                     ', 1, 6, 3, 1),
(319, '330416', 'IMPULSOR INDUCTIV 35MM MUFE ROTUNDE 2150-2010-2501', 1, 6, 3, 1),
(320, '330017              ', 'IMPULSOR INDUCTIV 63.2MM                                                                            ', 1, 6, 3, 1),
(321, '333404', 'IMPULSOR INDUCTIV L=35MM      333404', 1, 6, 3, 1),
(322, '330414              ', 'IMPULSOR INDUCTIV MERCEDES 25MM 2159-2010                                                           ', 1, 6, 3, 1),
(323, '330404', 'IMPULSOR INDUCTIV MERCEDES 35MM                                                                     ', 1, 6, 3, 1),
(324, '330011', 'IMPULSOR INDUCTIV VDO 19.8 MM                                                                       ', 1, 6, 3, 1),
(325, '310003', 'IMPULSOR MECANIC 3 PINI   2153                                                                      ', 1, 6, 3, 1),
(326, '330002', 'IMPULSOR MECANIC 3PIN MOTOMETER                                                                     ', 1, 6, 3, 1),
(327, '310004', 'IMPULSOR MECANIC 4 FIRE                                                                             ', 1, 6, 3, 1),
(328, '310002', 'IMPULSOR MECANIC 4 FIRE 2159                                                                        ', 1, 6, 3, 1),
(329, '330018', 'IMPULSOR UNDUCTIV 90 MM                                                                             ', 1, 6, 3, 1),
(330, '330432', 'KITAS 115 MM                                                                                        ', 1, 6, 3, 1),
(331, '330434', 'KITAS 136.8 MM                                                                                      ', 1, 6, 3, 1),
(332, '330035+', 'KITAS 19.8MM                                                                                        ', 1, 6, 3, 1),
(333, '2171-20100315       ', 'KITAS 2+ M181.5 23.8MM O-RG                                                                         ', 1, 6, 3, 1),
(334, '2171-20100311', 'KITAS 23.8                                                                                          ', 1, 6, 3, 1),
(335, '330036+', 'KITAS 35MM                                                                                          ', 1, 6, 3, 1),
(336, '330029+', 'KITAS 90 MM                                                                                         ', 1, 6, 3, 1),
(337, '330431+', 'KITAS FORD 63.2    (330431+)                                                                        ', 1, 6, 3, 1),
(338, '2171-32240410', 'KITAS II+  4:4.10M (2171-32240410)   SPRINTER AUTOMAT                                               ', 1, 6, 3, 1),
(339, '330044+', 'KITAS MECANIC        2171  330044+', 1, 6, 3, 1),
(340, '“‘‹“ѓ€0000021', 'KITAS SPRINTER', 1, 6, 3, 1),
(341, '330037', 'KITAS SPRINTER         330037', 1, 6, 3, 1),
(342, '330038+', 'KITAS SPRINTER 4.4M (330038+)', 1, 6, 3, 1),
(343, '330038', 'KITAS SPRINTER AUTOMAT 3.95M (330038)', 1, 6, 3, 1),
(344, 'PieseTahograf', 'Piese tahograf ', 1, 6, 3, 1),
(345, '330202', 'ADEZIV REGIM 1318 (330202)                                                                          ', 1, 6, 3, 1),
(346, '392402', 'AX ACTIVITATE 180KM/H 1324                                                                          ', 1, 6, 3, 1),
(347, '390010', 'AX CU VERME 1319       390010', 1, 6, 3, 1),
(348, '390023', 'AX DIAGRAMA 1319                                                                                    ', 1, 6, 3, 1),
(349, '330276', 'AX KILOMETRI 1319    330276', 1, 6, 3, 1),
(350, '392424', 'AX LUNG 1324                                                                                        ', 1, 6, 3, 1),
(351, '390008', 'AX ODOMETRU LUNG 1319    390008', 1, 6, 3, 1),
(352, '390002', 'AX REGLARE CIAS 1319', 1, 6, 3, 1),
(353, '390009', 'AX REGLARE CIAS 1319       390009', 1, 6, 3, 1),
(354, '390030', 'AX SILICONIC 1319                                                                                   ', 1, 6, 3, 1),
(355, '392407', 'AX SUPORT ACTIVITATE 140KM/H 1324     392407', 1, 6, 3, 1),
(356, '392401', 'AX VITEZA 140 KM/H 1324                                                                             ', 1, 6, 3, 1),
(357, '392408', 'AX VITEZA 180 KM/H  1324  392408', 1, 6, 3, 1),
(358, '330226', 'BANDA 16 PIN 1318                                                                                   ', 1, 6, 3, 1),
(359, '392442', 'BANDA 2 PICIOARE 1324       392442', 1, 6, 3, 1),
(360, '330224', 'BANDA 8 PIN 1318                                                                                    ', 1, 6, 3, 1),
(361, '392443', 'BANDA I PICIOR 1324         392443', 1, 6, 3, 1),
(362, 'N508T', 'BEC 24V 1.2W                                                                                        ', 1, 6, 3, 1),
(363, '330336', 'BRAT DE ACTIVITATE EGK100      330336', 1, 6, 3, 1),
(364, '392415', 'BUCSA 1324      392415', 1, 6, 3, 1),
(365, '392496', 'BUTON MENU 1381  (392496)                                                                           ', 1, 6, 3, 1),
(366, '330250', 'CAPAC APARATOR 1318      330250', 1, 6, 3, 1),
(367, '330348', 'CARMAN EGK        330348', 1, 6, 3, 1),
(368, '330320', 'CEAS 1318   330320', 1, 6, 3, 1),
(369, '390019', 'CEAS 1319                                                                                           ', 1, 6, 3, 1),
(370, 'CEASVR8400          ', 'CEAS VR8400                                                                                         ', 1, 6, 3, 1),
(371, '330272', 'CHEIE TAHOGRAF EGK-100 (330272)                                                                     ', 1, 6, 3, 1),
(372, '330222', 'CONTOR 1318      330222', 1, 6, 3, 1),
(373, '392456', 'CULISANTA 1324       392456', 1, 6, 3, 1),
(374, '380070', 'DECODER  CAN  UDC-301-E TAXI  380070                                                                ', 1, 6, 3, 1),
(375, '330338', 'DESCHIZATOR EGK100                                                                                  ', 1, 6, 3, 1),
(376, '392444', 'ECRAN 1324                                                                                          ', 1, 6, 3, 1),
(377, '302450121', 'ETICHETA 1324      302450121', 1, 6, 3, 1),
(378, 'L6013-20            ', 'ETICHETE TAHOGRAF 210*297MM SILVER L6013-20 (20 FOI)                                                ', 1, 6, 3, 1),
(379, '330346', 'EXCENTRIC EGK100       330346', 1, 6, 3, 1),
(380, '330177', 'EXTRACTOR 1324          330177', 1, 6, 3, 1),
(381, '392403', 'FATA 1324                                                                                           ', 1, 6, 3, 1),
(382, '392423', 'INEL 1324                                                                                           ', 1, 6, 3, 1),
(383, 'A2C59516736', 'KIT ACE SI CAMA     A2C59516736', 1, 6, 3, 1),
(384, '330127', 'KIT REPARARE CABLU ROTUND                                                                           ', 1, 6, 3, 1),
(385, 'A2C59516737', 'KIT REPARATIE 1324 (392456, 392423) A2C59516737                                                     ', 1, 6, 3, 1),
(386, '330252', 'KNOB STANDARD TAHOGRAF 1318  65.3MM (330252)                                                        ', 1, 6, 3, 1),
(387, '392439', 'MAGNET CEAS 1324       392439', 1, 6, 3, 1),
(388, '330396', 'MAGNET LUNG 1318  13.5MM       330396                                                               ', 1, 6, 3, 1),
(389, '390035', 'MECANIZM CIAS 125 1319       390035', 1, 6, 3, 1),
(390, '1319-30-01200', 'MOTOR 1319                                                                                          ', 1, 6, 3, 1),
(391, '330285', 'MOTOR ODOMETRU EGK100       330285', 1, 6, 3, 1),
(392, '280066RECON', 'MOTOR VITEZA SI ODOMETRU 1318       280066RECON', 1, 6, 3, 1),
(393, '330254', 'MOTORAS  1318  330254                                                                               ', 1, 6, 3, 1),
(394, 'mufaalba', 'MUFA ALBA', 1, 6, 3, 1),
(395, 'ODOVR8400', 'ODOMETRU VR8400          ODOVR8400', 1, 6, 3, 1),
(396, '330256', 'PIULITA 1318                                                                                        ', 1, 6, 3, 1),
(397, '332022', 'PLACA MECANICA TAHOGRAF 1318 (332022)                                                               ', 1, 6, 3, 1),
(398, '330219', 'PLACE DE SEPARARE TAHO 1318  (330219)                                                               ', 1, 6, 3, 1),
(399, '392437              ', 'ROATA CEAS 1324  392437                                                                             ', 1, 6, 3, 1),
(400, '330171', 'ROATA CIAS CU OSIE EGK          330171', 1, 6, 3, 1),
(401, '332001', 'ROATA DE TRANSMISIE CU AMBREIAJ 1318 (332001)                                                       ', 1, 6, 3, 1),
(402, '390054', 'ROATA DINTATA 1319                                                                                  ', 1, 6, 3, 1),
(403, '332004', 'ROATA DINTATA MARE 1318    332004', 1, 6, 3, 1),
(404, 'F6649109996', 'ROATA DINTATA VITEZOMETRU         F6649109996', 1, 6, 3, 1),
(405, '330173', 'ROATA MARE CIAS EGK100   330173', 1, 6, 3, 1),
(406, '390001', 'ROATA MICA 1319 (390001)', 1, 6, 3, 1),
(407, '330339', 'ROATA MICA CIAS EGK100                                                                              ', 1, 6, 3, 1),
(408, '392406', 'ROATA SERTAR 1324                                                                                   ', 1, 6, 3, 1),
(409, '330283', 'ROATA TIP 1 EGK100       330283', 1, 6, 3, 1),
(410, '330203', 'ROATA TIP 2 EGK100         330203', 1, 6, 3, 1),
(411, '330248', 'ROATA UNIDIRECTIONALA 1318     330248', 1, 6, 3, 1),
(412, '330359', 'ROATA VITEZA 1318         330359', 1, 6, 3, 1),
(413, '330101', 'SAIBA POD PLPMBU      330101', 1, 6, 3, 1),
(414, '392448', 'SUPORT SERTAR DREAPTA         392448', 1, 6, 3, 1),
(415, '392446', 'SUPORT SERTAR STINGA      392446', 1, 6, 3, 1),
(416, '360073', 'SURUB 1324                                                                                          ', 1, 6, 3, 1),
(417, '380035', 'VITEZOMETRU EGK                                                                                     ', 1, 6, 3, 1),
(418, 'PD8089-3', 'VITEZOMETRU MAZ    PD8089-3                                                                         ', 1, 6, 3, 1),
(419, 'Sigilii      ', 'Sigilii', 1, 6, 3, 1),
(420, '330071', 'SIGILE GALBENE           330071', 1, 6, 3, 1),
(421, '330070', 'SIGILE NEGRE EGK100      330070', 1, 6, 3, 1),
(422, '330074', 'SIGILE REPARARE ROSII        330074', 1, 6, 3, 1),
(423, '330072', 'SIGILE ROSII MICI                                                                                   ', 1, 6, 3, 1),
(424, 'Tahografe', 'Tahografe', 1, 6, 3, 1),
(425, '370021', 'TAHOGRAF 1324 24V                                                                                   ', 1, 6, 3, 1),
(426, 'A2C1648500020', 'TAHOGRAF 3.0 DTCO BLUE (A2C1648500020)                                                              ', 1, 6, 3, 1),
(427, 'A2C1648490020', 'TAHOGRAF 3.0 DTCO GREEN  (A2C1648500020)                                                            ', 1, 6, 3, 1),
(428, 'EFAS', 'TAHOGRAF DIGITAL EFAS OC0004 4 SE                                                                   ', 1, 6, 3, 1);
INSERT INTO `products` (`id`, `code`, `title`, `category_id`, `unit_id`, `producer_id`, `visible`) VALUES
(429, 'A3C0560480020       ', 'TAHOGRAF DTCO 24V-ADR VKF REL.3.0 EC/GGVS SERIE                                                     ', 1, 6, 3, 1),
(430, 'A3C0539540020       ', 'TAHOGRAF DTCO ORANGE 3.0A 24V ADR UNIVERSAL                                                         ', 1, 6, 3, 1),
(431, 'A3C0539590020       ', 'TAHOGRAF DTCO3.0A 24/12V ADRZ2                                                                      ', 1, 6, 3, 1),
(432, 'A3C0539560020       ', 'TAHOGRAF DTCO3.0A 24/12V ADRZ2...                                                                   ', 1, 6, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `servicename` varchar(255) NOT NULL,
  `price` decimal(6,0) NOT NULL,
  `category` int(11) NOT NULL,
  `unit` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `code`, `servicename`, `price`, `category`, `unit`) VALUES
(1, 'AC                  ', 'ALIMENTARE CLIMATIZATOR', '0', 5, 'serviciu'),
(2, 'CA                  ', 'CALIBRARE ANTENA', '0', 3, 'serviciu'),
(3, 'CTD                 ', 'CONFIGURATE TAHOGRAF DIGITAL                                                                        ', '500', 1, 'serviciu'),
(4, 'DIPR                ', 'DEMONTARE INCALZITOR PENTRU REPARARE', '500', 2, 'serviciu'),
(5, ' DDCS               ', 'DESCARCARE DATE CARTELA SOFER', '0', 1, 'serviciu'),
(6, 'DDT                 ', 'DESCARCARE DATE TAHOGRAF', '0', 1, 'serviciu'),
(7, 'DI                  ', 'DIAGNOSTICA INCALZITOR                                                                              ', '0', 2, 'serviciu'),
(8, 'DCVT                ', 'DUPLICAT CERTIFICAT VERIFICARE TAHOGRAF                                                             ', '0', 1, 'serviciu'),
(9, 'MAR                 ', 'MONTARE ANTENA RADIO    ', '0', 3, 'serviciu'),
(10, 'MINFIF              ', 'MONTARE INCALZITOR  (FIF)                                                                           ', '0', 2, 'serviciu'),
(11, 'MIN                 ', 'MONTARE INCALZITOR  (N)                                                                             ', '0', 2, 'serviciu'),
(12, 'MIDR                ', 'MONTARE INCALZITOR DUPA REPARAE', '0', 2, 'serviciu'),
(13, 'MSR                 ', 'MONTARE STATIE RADIO                                                                                ', '0', 3, 'serviciu'),
(14, 'MSRA                ', 'MONTARE STATIE RADIO  AUTOCAR                                                                       ', '0', 3, 'serviciu'),
(15, 'MT                  ', 'MONTARE TAHOGRAF', '0', 1, 'serviciu'),
(16, 'PS                  ', 'PROGRAMARE STATIE RADIO                                                                             ', '0', 3, 'serviciu'),
(17, 'RCAVE               ', 'RECONDITIONARE CAMERA ARDERE VOLVO/RENAULT                                                          ', '0', 2, 'serviciu'),
(18, 'RC                  ', 'REPARARE CONDITIONER', '0', 5, 'serviciu'),
(19, 'RF                  ', 'REPARARE FRIGIDER', '0', 5, 'serviciu'),
(20, 'RIED                ', 'REPARARE HIDRONIC 16/24/30                                                                          ', '0', 2, 'serviciu'),
(21, 'RI                  ', 'REPARARE INCALZITOR', '0', 2, 'serviciu'),
(22, 'RSR                 ', 'REPARARE STATIE RADIO                                                                               ', '0', 3, 'serviciu'),
(23, 'RT                  ', 'REPARARE TAHOGRAF                                                                                   ', '0', 1, 'serviciu'),
(24, 'RV                  ', 'REPARARE VENTILATOR                                                                                 ', '0', 2, 'serviciu'),
(25, 'SCI360              ', 'SCHIMB CABLU INCALZITOR POMPA                                                                       ', '0', 2, 'serviciu'),
(26, 'SI                  ', 'SCHIMB IMPULSOR                                                                                     ', '0', 1, 'serviciu'),
(27, 'SCT                 ', 'SCHIMBCABLU TAHOGRAF', '0', 1, 'serviciu'),
(28, 'VTD                 ', 'VERIFICARE TAHOGRAF DIGITAL                                                                         ', '0', 1, 'serviciu'),
(29, 'VTA                 ', 'VERIFICARE TAHOGRAFAN ALOGIC                                                                        ', '0', 1, 'serviciu');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_name`) VALUES
(1, 'buc'),
(2, 'set'),
(3, 'metru'),
(4, 'kg'),
(5, 'pachet'),
(6, 'undefined');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Ghena', 'info@tahograf.md', '$2y$10$OYk3E6fEu3B2Kp2Gq2DhNeFNkP7iDP3fifXMU/Hy5nDZp9UXS.wYW'),
(2, 'GG', 'ghenadiigandrabur@gmail.com', '$2y$10$nKzFvX/mgoOKrfgoKXeI1O5okSguXOoQatwwXTwxRNq2qw73b/xAa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constant`
--
ALTER TABLE `constant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conastan_name_id` (`constant_name_id`);

--
-- Indexes for table `constant_name`
--
ALTER TABLE `constant_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `costs`
--
ALTER TABLE `costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange`
--
ALTER TABLE `exchange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_cost`
--
ALTER TABLE `orders_cost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_id` (`order_id`),
  ADD KEY `costs_id` (`costs_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING HASH;

--
-- Indexes for table `partners2`
--
ALTER TABLE `partners2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_index` (`code`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_category` (`category_id`),
  ADD KEY `fk_unit` (`unit_id`),
  ADD KEY `fk_producer` (`producer_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `constant`
--
ALTER TABLE `constant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `constant_name`
--
ALTER TABLE `constant_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `costs`
--
ALTER TABLE `costs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exchange`
--
ALTER TABLE `exchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders_cost`
--
ALTER TABLE `orders_cost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1650;

--
-- AUTO_INCREMENT for table `partners2`
--
ALTER TABLE `partners2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pricelist`
--
ALTER TABLE `pricelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `constant`
--
ALTER TABLE `constant`
  ADD CONSTRAINT `constant_ibfk_1` FOREIGN KEY (`constant_name_id`) REFERENCES `constant_name` (`id`);

--
-- Constraints for table `orders_cost`
--
ALTER TABLE `orders_cost`
  ADD CONSTRAINT `orders_cost_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orders_cost_ibfk_2` FOREIGN KEY (`costs_id`) REFERENCES `costs` (`id`),
  ADD CONSTRAINT `orders_cost_ibfk_3` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_producer` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`id`),
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
