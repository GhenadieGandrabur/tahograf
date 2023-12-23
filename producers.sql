-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 05:56 PM
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
-- Database: `taho`
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
  `picture` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `title`, `category_id`, `unit_id`, `producer_id`, `picture`) VALUES
(1, '330015', 'Impulsor', 1, 2, 3, '2500'),
(2, '82819B', 'COMANDA BUTON AT 12/24V ', 2, 2, 1, ''),
(12, '9037046A', 'KIT REPARATIE AT2000ST 24V', 2, 2, 1, ''),
(13, 'TEDDY2P', 'TEDDY-II ASC STATIE RADIO', 3, 3, 7, ''),
(14, 'A2C59517076', 'GEO LOC KIT DTCO  A2C59517076', 1, 1, 3, ''),
(16, 'KITAS2+  ', 'PULSE CONVERTER KITAS2+                                                                             ', 1, 1, 3, ''),
(17, 'PNI-S9 FLUTUR  ', 'ANTENA PNI-S9 FLUTURE 120CM (CABLU PNI-CAB-S9)                                                      ', 3, 1, 6, ''),
(18, '120/DV', 'MAGNET 120/DV 125MM (CU CABLU 4M MUFA PL2)  ', 3, 1, 6, ''),
(19, 'SEXTRA45', 'ANTENA SEXTRA45 SPIC PNI ', 4, 1, 6, ''),
(21, 'TACHO2SAFE     ', 'CITITOR TACHO2SAFE                                                                                                                                                           ', 1, 1, 9, ''),
(22, 'SE5000', 'TAHOGRAF SE5000  12V/24V (NON ADR)', 1, 1, 5, ''),
(23, 'SE5000ADR      ', 'TAHOGRAF SE5000  12V/24V (ADR)', 1, 1, 5, ''),
(24, '330457', 'ROLE TEKSON TAHOGRAF  DIGITAL                                                                       ', 1, 1, 3, ''),
(26, '13810021', 'CAPAC SIGILARE SPATE 1381 3.0', 1, 1, 3, ''),
(27, '13810008', 'CAPAC SIGILARE SPATE 1381', 1, 1, 3, ''),
(28, '10211434000', 'TUB AER CALD 75 MM EBERSPACHER ', 2, 1, 2, ''),
(30, '10211437000', 'TUB AER CALD 90 MM EBERSPACHER', 1, 3, 2, ''),
(33, '252069100100', 'CAMERA DE ARDERE D2   ', 2, 1, 2, ''),
(34, '252070011100', 'STIFT INCANDESCENT D2/D4  24V  ', 2, 1, 2, ''),
(35, '252070992000', 'VENTILATOR D2 24V  ', 2, 1, 2, ''),
(36, '252145992000', 'VENTILATOR D4 24V   ', 2, 1, 2, ''),
(37, '89031054', 'TUB COMBUSTIBIL  D4MM EBERSPAECHER', 2, 3, 2, ''),
(38, '252726050000   ', 'INCALZITOR EBERSPAECHER D2L 24V  NEW', 2, 1, 2, ''),
(39, '252729050000   ', 'INCALZITOR D4 24V AM2  EBERSPAECHER ', 2, 1, 2, ''),
(40, '252955050000   ', 'INCALZITOR D4 12V AM3  EBERSPAECHER', 2, 1, 2, ''),
(41, '102114310000', 'TUB AER CALD 60 MM EBERSPACHER', 2, 3, 2, ''),
(42, '330129', 'KIT REPARARE CABLU ROTUND 90*  ', 1, 1, 3, ''),
(43, '330050', 'CAPAC SIGILARE SPATE 1324', 1, 1, 3, ''),
(44, '4030313251000', 'DIAGRAME 125 KM/H  HAUG', 1, 1, 3, ''),
(45, '330039+', 'KITAS 25 mm', 1, 1, 3, ''),
(46, 'ORIO ШСМ-300   ', 'TUB AER ADMISIE ORIO ШСМ-300', 2, 1, 10, ''),
(47, 'NX-1200DE3', 'Statie radio digitala VHF', 4, 1, 5, '275$');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
