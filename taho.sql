-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 09:07 AM
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
  `price` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `title`, `category_id`, `unit_id`, `producer_id`, `price`) VALUES
(1, '252069010100        ', 'CARCASA D2 JOS                                                                                      ', 2, 0, 2, ''),
(2, '221000341500', 'EASY START TIMER 221000341500                                                                       ', 2, 0, 2, ''),
(3, '251818151100', 'Electrozi (251818151100)', 2, 0, 2, ''),
(4, '25181815100         ', 'ELECTROZI HIDRONIC 16/24/30*                                                                        ', 2, 0, 2, ''),
(5, '252488450301        ', 'MAGNETIC VALVE 24V HYD L2                                                                           ', 2, 0, 2, ''),
(6, '221000320700', 'MINI CONTROLER VOLLST 12/24V                                                                        ', 2, 0, 2, ''),
(7, '251816250100        ', 'POMPA LICHID                                                                                        ', 2, 0, 2, ''),
(8, '221000341300', 'PORNITOR EASY SELECT (221000341300)', 2, 0, 2, ''),
(9, '221000341700        ', 'RRC TP7 R+ COMPLETE                                                                                 ', 2, 0, 2, ''),
(10, '2517748990300       ', 'TEMP SENSOR EXTERNAL                                                                                ', 2, 0, 2, ''),
(11, '252069100100', 'CAMERA DE ARDERE D2                                                                                 ', 2, 0, 2, ''),
(12, '252113100100', 'CAMERA DE ARDERE D4                                                                                 ', 2, 0, 2, ''),
(13, '221000500500', 'COLIER 26-28MM (221000500500)                                                                       ', 2, 0, 2, ''),
(14, '102068010098', 'COLIER D=10 MM   102068010098                                                                       ', 2, 0, 2, ''),
(15, '102068009098', 'COLIER D9  MM                                                                                       ', 2, 0, 2, ''),
(16, '201312000006', 'FILTRU POMPA DOZAJ  201312000006', 2, 0, 2, ''),
(17, '2018209900010', 'GARNITURA D4-5                                                                                      ', 2, 0, 2, ''),
(18, '201820990001', 'GARNITURA D4/D5  (201820990001)                                                                     ', 2, 0, 2, ''),
(19, '252069010003', 'GARNITURA MOTOR D2  (252069010003)', 2, 0, 2, ''),
(20, '252113010003', 'GARNITURA MOTOR D4  (252113010003)', 2, 0, 2, ''),
(21, '251688010006', 'GARNITURA VENTILATOR D1       251688010006                                                          ', 2, 0, 2, ''),
(22, '251822010003', 'GARNITURA VENTILATOR D3      251822010003                                                           ', 2, 0, 2, ''),
(23, 'HMD-D1', 'IZOLATOR THERMIC D1  HMD-D1                                                                         ', 2, 0, 2, ''),
(24, 'HMD-D2', 'IZOLATOR THERMIC D2  HMD-D2                                                                         ', 2, 0, 2, ''),
(25, 'HMD-D3', 'IZOLATOR THERMIC D3  HMD-D3                                                                         ', 2, 0, 2, ''),
(26, 'HMD-D4', 'IZOLATOR THERMIC D4  HMD-D4                                                                         ', 2, 0, 2, ''),
(27, '251688060400', 'SITA D1 LC   251688060400                                                                           ', 2, 0, 2, ''),
(28, '252069100102', 'SITA D2-D4                                                                                          ', 2, 0, 2, ''),
(29, '251822060400', 'SITA D3 LC   251822060400                                                                           ', 2, 0, 2, ''),
(30, '252121990113', 'SITA HYDRONIC CU FUSTA                                                                              ', 2, 0, 2, ''),
(31, '36061299            ', 'TEAVA ESAPAMENT D24MM INOX (36061299)                                                               ', 2, 0, 2, ''),
(32, '251688060006', 'VAPORIZATOR D1   LC                                                                                 ', 2, 0, 2, ''),
(33, '251822060003', 'VAPORIZATOR D3                                                                                      ', 2, 0, 2, ''),
(34, '252113010100', 'CARCASA D4 AIR                                                                                      ', 2, 0, 2, ''),
(35, '221000010037        ', 'DUCTING FLANGE 90MM PLASTIC                                                                         ', 2, 0, 2, ''),
(36, '221000010040', 'GRILA OUTLET 50-60 FLAT NEAGRA (221000010040)', 2, 0, 2, ''),
(37, '201577890600', 'GRILA ROTATIVA 60* EBER                                                                             ', 2, 0, 2, ''),
(38, '251688890400        ', 'GRILA ROTATIVA 75MM                                                                                 ', 2, 0, 2, ''),
(39, '221000010019        ', 'HOOD 90MM STRAIGHT D4 AIR (221000010019)                                                            ', 2, 0, 2, ''),
(40, '252069060002', 'MANSON D2/D4                                                                                        ', 2, 0, 2, ''),
(41, '221000010027', 'TEU 75                                                                                              ', 2, 0, 2, ''),
(42, '102114310000', 'TUB AER CALD 60 MM EBERSPACHER                                                                      ', 2, 0, 2, ''),
(43, '10211434000', 'TUB AER CALD 75 MM EBERSPACHER                                                                      ', 2, 0, 2, ''),
(44, '10211437000         ', 'TUB AER CALD 90 MM EBERSPACHER                                                                      ', 2, 0, 2, ''),
(45, '89031054', 'TUB COMBUSTIBIL  D4MM EBERSPAECHER                                                                  ', 2, 0, 2, ''),
(46, '25190845', 'DOZATOR 1-3 KW 24V                                                                                  ', 2, 0, 2, ''),
(47, 'HATS', 'DOZATOR 1-4 KW 12V HATS                                                                             ', 2, 0, 2, ''),
(48, '22451801', 'DOZATOR 1-4 KW 24V                                                                                  ', 2, 0, 2, ''),
(49, '25183045', 'DOZATOR 12V                                                                                         ', 2, 0, 2, ''),
(50, '22451901            ', 'DOZATOR 12V  D2/D4 AIR                                                                              ', 2, 0, 2, ''),
(51, '25267505            ', 'D2  12V  INCALZITOR EBERSPAECHER                                                                    ', 2, 0, 2, ''),
(52, '25206905            ', 'D2  12V  INCALZITOR EBERSPAECHER                                                                    ', 2, 0, 2, ''),
(53, '25267605            ', 'D2 24V  INCALZITOR EBERSPAECHER                                                                     ', 2, 0, 2, ''),
(54, '252113050000        ', 'D4 12V INCALZITOR EBERSPAECHER                                                                      ', 2, 0, 2, ''),
(55, '256696040001        ', 'D4 24V INCALZITOR EBERSPAECHER                                                                      ', 2, 0, 2, ''),
(56, '252955050000        ', 'INCALZITOR D4 12V AM3  EBERSPAECHER                                                                 ', 2, 0, 2, ''),
(57, '252729050000        ', 'INCALZITOR D4 24V AM2  EBERSPAECHER                                                                 ', 2, 0, 2, ''),
(58, 'FC                  ', 'INCALZITOR EBERSPAECHER D2L 12V  NEW                                                                ', 2, 0, 2, ''),
(59, '25303405            ', 'INCALZITOR EBERSPAECHER D2L 12V AS3 VDP                                                             ', 2, 0, 2, ''),
(60, '252726050000        ', 'INCALZITOR EBERSPAECHER D2L 24V  NEW                                                                ', 2, 0, 2, ''),
(61, '2518959935', 'SENSOR DE TEMPERATURA  D1/D3                                                                        ', 2, 0, 2, ''),
(62, '25189542', 'SENSOR SUPRAINCALZIRE D1/D3                                                                         ', 2, 0, 2, ''),
(63, '252069010200', 'SENSOR SUPRAINCALZIRE D2/D4    252069010200                                                         ', 2, 0, 2, ''),
(64, '251818410000', 'SENZOR DE TEMPERATURA HYDRONIC                                                                      ', 2, 0, 2, ''),
(65, '251855991509', 'SENZOR FLACARA CU SUPORT                                                                            ', 2, 0, 2, ''),
(66, '251818400000', 'SENZOR SUPRAINCALZIRE HYDRONIC                                                                      ', 2, 0, 2, ''),
(67, '251831010100', 'BUGIE D1/D3  20V                                                                                    ', 2, 0, 2, ''),
(68, '252069011300', 'STIFT INCANDESCENT  D2/4 - 12V                                                                      ', 2, 0, 2, ''),
(69, '252070011100', 'STIFT INCANDESCENT D2/D4  24V                                                                       ', 2, 0, 2, ''),
(70, '252070011100-SH', 'STIFT INCANDESCENT SH D2/D4  24V                                                                    ', 2, 0, 2, ''),
(71, '2520700111-SH', 'STIFT-SH  D2/D4  24V   2520700111-SH', 2, 0, 2, ''),
(72, '225201043002', 'UNITATE DE COMANDA 12V                                                                              ', 2, 0, 2, ''),
(73, '225101003001', 'UNITATE DE COMANDA D2 12V                                                                           ', 2, 0, 2, ''),
(74, '225102003001', 'UNITATE DE COMANDA D2 24V                                                                           ', 2, 0, 2, ''),
(75, '225101003005', 'UNITATE DE COMANDA D4 12V                                                                           ', 2, 0, 2, ''),
(76, '225102003005', 'UNITATE DE COMANDA D4 24V                                                                           ', 2, 0, 2, ''),
(77, '225102003003        ', 'UNITATE DE COMANDA D4 24V.                                                                          ', 2, 0, 2, ''),
(78, '251896992000', 'VENTILATOR D1LC 24V                                                                                 ', 2, 0, 2, ''),
(79, '252069992000        ', 'VENTILATOR D2 12V                                                                                   ', 2, 0, 2, ''),
(80, '252070992000', 'VENTILATOR D2 24V                                                                                   ', 2, 0, 2, ''),
(81, '251907992000', 'VENTILATOR D3LCC 24V                                                           ', 2, 0, 2, ''),
(82, '252113992000', 'VENTILATOR D4 12V                                                                                   ', 2, 0, 2, ''),
(83, '252145992000', 'VENTILATOR D4 24V                                                                                   ', 2, 0, 2, ''),
(84, '9031988A', 'CABLAJ MULTICONTROL 3M 9031988A                                                                     ', 2, 0, 1, ''),
(85, '9039792             ', 'CABLAJ U4840 TH90ST                                                                                 ', 2, 0, 1, ''),
(86, '29716', 'CAPAC CABLAJ AT20 GRILA                                                                             ', 2, 0, 1, ''),
(87, '29718A              ', 'CAPAC ECU AT2000 ST                                                                                 ', 2, 0, 1, ''),
(88, '93012C', 'CAPAC POMPA APA U4847                                                                               ', 2, 0, 1, ''),
(89, '93011C', 'CAPAC POMPA APA U4847 LA 193\'                                                                       ', 2, 0, 1, ''),
(90, '9030025C', 'CEAS PROGRAMABIL MULTICONTROL AT                                                                    ', 2, 0, 1, ''),
(91, '82819B', 'COMANDA BUTON AT 12/24V                                                                             ', 2, 0, 1, ''),
(92, '9037046A            ', 'KIT REPARATIE AT20ST 24V                                                                            ', 2, 0, 1, ''),
(93, '1302774B', 'ROTITA VEN AT2000ST                                                                                 ', 2, 0, 1, ''),
(94, '35320A', 'SORB WEBASTO D=5.5                                                                                  ', 2, 0, 1, ''),
(95, '9030077A', 'SUPORT PRINDERE MULTICONTROL                                                                        ', 2, 0, 1, ''),
(96, '9014397D', 'TELESTART VW TOUAREG', 2, 0, 1, ''),
(97, '1302805A', 'TEPLOBMENIK AT2000ST      (1302805A)                                                                ', 2, 0, 1, ''),
(98, '14845', 'TRANSFORMATOR APRINDERE DW                                                                          ', 2, 0, 1, ''),
(99, '9027299', 'TUB COMBUSTIBIL 5*1.5                                                                               ', 2, 0, 1, ''),
(100, '9029418C            ', 'UNITATEA DE COMANDA AT EVO55 12V                                                                    ', 2, 0, 1, ''),
(101, '9013147A', 'UNITATEA DE COMANDA SG1574 AT2000ST 24V', 2, 0, 1, ''),
(102, '29717', 'ADMISIE CAPAC AT2000', 2, 0, 1, ''),
(103, '1320323A', 'CAPAC AER CALD AT3500ST/5000ST                                                                      ', 2, 0, 1, ''),
(104, '67490A              ', 'CARCASA  ADMISIE  AT20S  (67490A)                                                                   ', 2, 0, 1, ''),
(105, '67488E              ', 'CARCASA  AT2000ST DOWN     67488E                                                                   ', 2, 0, 1, ''),
(106, '9019555A', 'CARCASA AT2000S UP                                                                                  ', 2, 0, 1, ''),
(107, '98651', 'CARCASA EVACUARE                                                                                    ', 2, 0, 1, ''),
(108, '9019553A', 'CARCASA EVACUARE D60AT20S                                                                           ', 2, 0, 1, ''),
(109, '1322627A', 'COT 60MM 45G                                                                                        ', 2, 0, 1, ''),
(110, '29849A              ', 'COT D60 90AT2000                                                                                    ', 2, 0, 1, ''),
(111, '9012285A            ', 'GRILA  AER CALD D90 /45*                                                                            ', 2, 0, 1, ''),
(112, '1320163a', 'GRILA 60 ROTUND CAPAC                                                                               ', 2, 0, 1, ''),
(113, '9012300             ', 'GRILA AER D60 NEGRU CU INCHIDERE                                                                    ', 2, 0, 1, ''),
(114, '9012294', 'GRILA AER D60/45*                                                                                   ', 2, 0, 1, ''),
(115, '9012297             ', 'GRILA AER D60/90* NEGRU                                                                             ', 2, 0, 1, ''),
(116, '1310581A', 'GRILA D=90                                                                                          ', 2, 0, 1, ''),
(117, '9009266C', 'TEU 60*60*60                                                                                        ', 2, 0, 1, ''),
(118, '9009265C', 'TEU 90•90•90                                                                                        ', 2, 0, 1, ''),
(119, '82415B', 'TUB  ARDERE  TH90                                                                                   ', 2, 0, 1, ''),
(120, '1311902B', 'TUB AER CALD 90MM                                                                                   ', 2, 0, 1, ''),
(121, '1311898', 'TUB AER CALD D60MM 25M                                                                              ', 2, 0, 1, ''),
(122, '9023037A', 'COLIER D10 MM                                                                                       ', 2, 0, 1, ''),
(123, '14846B', 'Electrod aprindere DW/Termo/230/300/350 (14846B)', 2, 0, 1, ''),
(124, '1303326', 'IZOLATIE AT2000 (4 BUC)    1303326                                                                  ', 2, 0, 1, ''),
(125, 'HMD-AT2000          ', 'IZOLATOR THERMIC AT2000  HMD-AT2000                                                                 ', 2, 0, 1, ''),
(126, '1319725A', 'KIT REPARARE POMPA APA U4814', 2, 0, 1, ''),
(127, '1303517A            ', 'SET DE GARNITURI AT20 ST/STC   (1303517A)                                                           ', 2, 0, 1, ''),
(128, '82302A', 'SET GARNITURI AT20/20S/20ST', 2, 0, 1, ''),
(129, '91364A', 'SET GARNITURI AT35/35ST                                                                             ', 2, 0, 1, ''),
(130, '82284A', 'TUB ARDERE AT2000/S/ST                                                                              ', 2, 0, 1, ''),
(131, 'EMC-11W             ', 'EMC-11W GARNITURA                                                                                   ', 4, 0, 8, ''),
(132, 'EMC-3               ', 'EMC-3 GARNITURA                                                                                     ', 4, 0, 8, ''),
(133, 'KAS-10              ', 'KAS-10 SOFTWARE                                                                                     ', 4, 0, 8, ''),
(134, 'KBH-10M             ', 'KBH-10M BELT CLIP (TK-2406/3406)                                                                    ', 4, 0, 8, ''),
(135, 'KBH-18M             ', 'KBH-18M BELT CLIP (TK-2000/3000)                                                                    ', 4, 0, 8, ''),
(136, 'KCT-53U             ', 'KCT-53U SERIAL TO USB ADAPTOR (WITH DRIVERS)                                                        ', 4, 0, 8, ''),
(137, 'KMC-21M             ', 'KMC-21M MICROPHONE  SLIM-LINE SPEAKER                                                               ', 4, 0, 8, ''),
(138, 'KMC-30M             ', 'KMC-30M MICROFON  STATIE AUTO                                                                       ', 4, 0, 8, ''),
(139, 'KMC-32M             ', 'KMC-32M MICROFON                                                                                    ', 4, 0, 8, ''),
(140, 'KMC-60M             ', 'KMC-60M MICROFON  STATIE AUTO                                                                       ', 4, 0, 8, ''),
(141, 'KMC-9C              ', 'KMC-9C  MICROPHONE CONTROL STATION DESKTOP                                                          ', 4, 0, 8, ''),
(142, 'KNB-20              ', 'KNB-20-NM NI-MH BATTERY                                                                             ', 4, 0, 8, ''),
(143, 'KNB-29-N            ', 'KNB-29-NM NI-MH BATTERY (1500 MAH)                                                                  ', 4, 0, 8, ''),
(144, 'KNB-45-L            ', 'KNB-45-LM LI-ION BATTERY (2000 MAH)                                                                 ', 4, 0, 8, ''),
(145, 'KNB-63L             ', 'KNB-63LM LI-ION BATTERY (1130MAH)                                                                   ', 4, 0, 8, ''),
(146, 'KNB55LAM            ', 'KNB55LAM ACUMULATOR                                                                                 ', 4, 0, 8, ''),
(147, 'KPG-158D            ', 'KPG-158D  PROGRAMMING DISK                                                                          ', 4, 0, 8, ''),
(148, 'KPG-46A             ', 'KPG-46A CABLU (SERIAL)                                                                              ', 4, 0, 8, ''),
(149, 'KPG-46UM            ', 'KPG-46UM CABLU ASS\'Y                                                                                ', 4, 0, 8, ''),
(150, 'KPG-91D             ', 'KPG-91D  PROGRAMMING DISK                                                                           ', 4, 0, 8, ''),
(151, 'KPG-D6E             ', 'KPG-D6E  PROGRAMMING SOFTWARE                                                                       ', 4, 0, 8, ''),
(152, 'KRA-23M3            ', 'KRA-23M3 ANTENA SHORT UHF     (400-450 MHZ)                                                         ', 4, 0, 8, ''),
(153, 'KRA-26M             ', 'KRA-26M ANTENNA  VHF (146-162 MHZ)                                                                  ', 4, 0, 8, ''),
(154, 'KRA-26M2            ', 'KRA-26M2 ANTENNA  VHF (162-174 MHZ)                                                                 ', 4, 0, 8, ''),
(155, 'KRA-26M3            ', 'KRA-26M3 ANTENNA  VHF (136-150 MHZ)                                                                 ', 4, 0, 8, ''),
(156, 'KRA-27M             ', 'KRA-27M ANTENNA  UHF (440-490 MHZ)                                                                  ', 4, 0, 8, ''),
(157, 'KRA-27M3            ', 'KRA-27M3 ANTENNA  UHF (400-450 MHZ)                                                                 ', 4, 0, 8, ''),
(158, 'KRA-42M3            ', 'KRA-42M3 ANTENNA  UHF (400-450 MHZ)  55MM                                                           ', 4, 0, 8, ''),
(159, 'KSC-25LSE           ', 'KSC-25LSE INCARCATOR ACUMULATOARE                                                                   ', 4, 0, 8, ''),
(160, 'KSC-30              ', 'KSC-30 (E) INCARCATOR    (KNB-25A/26N)                                                              ', 4, 0, 8, ''),
(161, 'KSC-35SE            ', 'KSC-35SE INCARCATOR BATERIE    (KNB-45L)                                                            ', 4, 0, 8, ''),
(162, 'KSC-43E             ', 'KSC-43E  INCARCATOR FOR KNB-29N/45L/53N                                                             ', 4, 0, 8, ''),
(163, 'KTI-3               ', 'KTI3-M UNITATE DE INTERFATA                                                                         ', 4, 0, 8, ''),
(164, 'LCBN13              ', 'LCBN13 UNIVERSAL CHEST PACK (NYLON) (BLACK)                                                         ', 4, 0, 8, ''),
(165, 'C709.04             ', 'MA21-LK GARNITURA STATIE RADIO 2PIN KENWOOD (C709.04)                                               ', 4, 0, 8, ''),
(166, 'C732.03             ', 'MA31-L GARNITURA STATIE RADIO 2PIN (C732.03)                                                        ', 4, 0, 8, ''),
(167, 'C732.06             ', 'MA31-M GARNITURA STATIE RADIO 2PIN MOTOROLA (C732.06)                                               ', 4, 0, 8, ''),
(168, 'MD655-VHF           ', 'MD655 VHF STATIE RADIO HYTERA (136-174MHZ)                                                          ', 4, 0, 8, ''),
(169, 'MD655-UHF           ', 'MD655U UHF STATIE RADIO  HYTERA (400-470MHZ)                                                        ', 4, 0, 8, ''),
(170, 'MD785-UHF           ', 'MD785U UHF STATIE RADIO HYTERA (400-470MHZ)                                                         ', 4, 0, 8, ''),
(171, 'NX-1200-AEPACK      ', 'NX-1200-AEPACK STATIE RADIO PORTATIVA VHF 136-174 MHZ                                               ', 4, 0, 8, ''),
(172, 'NX-1200DE2          ', 'NX-1200DE2   STATIE RADIO PORTATIVA VHF 136-174 MHZ                                                 ', 4, 0, 8, ''),
(173, 'NX-1200DE3          ', 'NX-1200DE3   STATIE RADIO PORTATIVA VHF 136-174 MHZ                                                 ', 4, 0, 8, ''),
(174, 'NX-1300-AEPACK      ', 'NX-1300-AEPACK STATIE RADIO PORTATIVA VHF 400-470 MHZ                                               ', 4, 0, 8, ''),
(175, 'NX-1300DE3          ', 'NX-1300DE3   STATIE RADIO PORTATIVA UHF 400-470 MHZ                                                 ', 4, 0, 8, ''),
(176, 'NX-1700DE           ', 'NX-1700DE STATIE RADIO MOBILA VHF 136-174 MHZ                                                       ', 4, 0, 8, ''),
(177, 'NX-3320E2           ', 'NX-3320E2 STATIE RADIO PORTABILA UHF GPS                                                            ', 4, 0, 8, ''),
(178, 'NX-3820E            ', 'NX-3820E STATIE RADIO MOBILA UHF GPS                                                                ', 4, 0, 8, ''),
(179, 'PC69                ', 'PC-69 CABLU PROGRAMATOR (BD305)    HYTERA                                                           ', 4, 0, 8, ''),
(180, 'PC76                ', 'PC-76 CABLU PROGRAMATOR (BD505)     HYTERA                                                          ', 4, 0, 8, ''),
(181, 'PKT-03M             ', 'PKT-03M  VHF FM TRANSCEIVER                                                                         ', 4, 0, 8, ''),
(182, 'SM08M3              ', 'SM08M3 SPEAKER MICROFOM (BD505)                                                                     ', 4, 0, 8, ''),
(183, 'TK-2000M            ', 'TK-2000M STATIE RADIO PORTATIVA VHF (144-174 MHZ)                                                   ', 4, 0, 8, ''),
(184, 'TK- 2406M           ', 'TK-2406M STATIE RADIO PORTATIVA VHF (136-174 MHZ)                                                   ', 4, 0, 8, ''),
(185, 'TK-3000M            ', 'TK-3000M STATIE RADIO PORTATIVA UHF (440-480 MHZ)                                                   ', 4, 0, 8, ''),
(186, 'TK-3000M2           ', 'TK-3000M2 STATIE RADIO PORTATIVA UHF (400-430 MHZ)                                                  ', 4, 0, 8, ''),
(187, 'TK-3406M2           ', 'TK-3406M2 STATIE RADIO  PORTATIVA  UHF (400-470 MHZ)                                                ', 4, 0, 8, ''),
(188, 'TK-7302E            ', 'TK-7302E STATIE RADIO MOBILA VHF (136-174 MHZ)                                                      ', 4, 0, 8, ''),
(189, 'TK-8108M3           ', 'TK-8108M3 STATIE RADIO MOBILA  (400-470 MHZ)                                                        ', 4, 0, 8, ''),
(190, 'TK-8302E            ', 'TK-8302E STATIE RADIO MOBILA UHF (400-470 MHZ)                                                      ', 4, 0, 8, ''),
(191, 'TKD-240E            ', 'TKD-240E STATIE RADIO PORTATIVA DIGITALA VHF (136-174 MHZ)                                          ', 4, 0, 8, ''),
(192, 'TKD-340E            ', 'TKD-340E STATIE RADIO PORTATIVA DIGITALA UHF (400-470 MHZ)                                          ', 4, 0, 8, ''),
(193, 'TKRD-710E           ', 'TKRD-710E   REPEATER     VHF                                                                        ', 4, 0, 8, ''),
(194, 'TS-890S             ', 'TS-890S RADIO PENTRU AMATORI                                                                        ', 4, 0, 8, ''),
(195, 'YG-82CN-1           ', 'YG-82CN-1 CRISTAL  FILTER                                                                           ', 4, 0, 8, ''),
(196, 'ZNX3820E            ', 'ZNX3820E STATIE RADIO DIGITALA MOBILA UHF                                                           ', 4, 0, 8, ''),
(197, 'PNI-45EXTRA         ', 'ANTENA PNI-EXTRA45 CU MAGNET                                                                        ', 3, 0, 6, ''),
(198, 'PNI-ML-160FC        ', 'ANTENA PNI-ML-160FC 145CM (FARA CABLU)                                                              ', 3, 0, 6, ''),
(199, 'PNI-ML75            ', 'ANTENA PNI-ML75 T601 CU CABLU MONTAJ T601                                                           ', 3, 0, 6, ''),
(200, 'PNI-S75CAB          ', 'ANTENA PNI-S75CAB FLUTURE (CABLU+MUFAPL)                                                            ', 3, 0, 6, ''),
(201, 'PNI-S9 FLUTUR       ', 'ANTENA PNI-S9 FLUTURE 120CM (CABLU PNI-CAB-S9)                                                      ', 3, 0, 6, ''),
(202, 'PNI-UF400           ', 'ANTENA PNI-UF400 47CM, 430-470MHZ, CU BAZA MAGNETICA                                                ', 3, 0, 6, ''),
(203, 'PNI-VHF285          ', 'ANTENA PNI-VHF285 128CM 134-174MHZ                                                                  ', 3, 0, 6, ''),
(204, 'PNI-SS1200          ', 'ANTENA RADIO SUPER SANTIAGO PNI-SS1200', 3, 0, 6, ''),
(205, '2204106.02          ', 'ANTENA SIRIO CARBONIUM 27 (2204106.02)                                                              ', 3, 0, 6, ''),
(206, '2218505.51/LED      ', 'ANTENA SIRIO PERFORMER 5000 PLCU LED (2218505.51/LED)                                               ', 3, 0, 6, ''),
(207, '2202005             ', 'ANTENA SIRIO TURBO CB 1000PL  BLUE LINE 115CM (2202005.41)', 3, 0, 6, ''),
(208, ' 2201905            ', 'ANTENA SIRIO TURBO CB 800 SPL BLUE LINE 84CM (2201905.41)', 3, 0, 6, ''),
(209, 'SMA 47/135          ', 'ANTENA VHF ALBRECHT SMA 47/135 DUAL BAND 46.5-61.5/135-175M                                         ', 3, 0, 6, ''),
(210, 'SIRIO HP-2070       ', 'ANTENA VHF/UHF SIRIO HP-2070 PNI-2210305.05  144/430MHZ', 3, 0, 6, ''),
(211, 'Transirver_CB', 'Transirver CB', 3, 0, 6, ''),
(212, 'TXPR002             ', 'BARRY AM/FM ASC RADIO CB.                                                                           ', 3, 0, 6, ''),
(213, 'BARRY-2             ', 'BARRY-2 ASC AM/FM 12V/24V.                                                                          ', 3, 0, 6, ''),
(214, 'HP8001L ASQ         ', 'STATIE RADIO SB ESCORT HP8001L ASQ (CU CASCA)', 3, 0, 6, ''),
(215, 'ESCORT HP-62        ', 'STATIE RADIO SB PNI ESCORT HP-62                                                                    ', 3, 0, 6, ''),
(216, 'ESCORT HP-802       ', 'STATIE RADIO SB PNI ESCORT HP-8024 ASQ REGLABIL ALIMENTARE 1                                        ', 3, 0, 6, ''),
(217, 'TTI-TCB5289         ', 'STATIE RADIO SB TTI-TCB5289                                                                         ', 3, 0, 6, ''),
(218, 'TEDDY2              ', 'TEDDY-II ASC STATIE RADIO (PNI-TEDDY2)    PNI                                                       ', 3, 0, 6, ''),
(219, '5060                ', 'ADAPTOR ALBRECHT NC-553, PL-258                                                                     ', 3, 0, 6, ''),
(220, 'PNI-67140           ', 'ANTENA ALBRECHT CS 72CM (CABLU INCUS) PNI-67140                                                     ', 3, 0, 6, ''),
(221, 'AMMI121             ', 'ANTENA MARYLAND  AMMI121                                                                            ', 3, 0, 6, ''),
(222, 'SEXTRA45            ', 'ANTENA SEXTRA45 SPIC PNI                                                                            ', 3, 0, 6, ''),
(223, 'T301                ', 'CABLU DE LEGATURA P/N ANTENE CU FILET T301                                                          ', 3, 0, 6, ''),
(224, 'T601                ', 'CABLU MONTAJ P/N ANTENE CU FILET T601                                                               ', 3, 0, 6, ''),
(225, 'PNI-CAB-S9          ', 'CABLU P/N ANTENE S9 SI MONTURA   (PNI-CAB-S9)                                                       ', 3, 0, 6, ''),
(226, ' PNI-DIN80 1DI      ', 'CARCASA MONTAJ PNI-DIN80 1DIN HP 8000 (ESCORT)', 3, 0, 6, ''),
(227, 'HS-82               ', 'CASCA HS82  2PIN KENWOOD                                                                            ', 3, 0, 6, ''),
(228, 'HS-84               ', 'CASCA HS84  2PIN KENWOOD                                                                            ', 3, 0, 6, ''),
(229, ' PNI-VLT40A         ', 'CONVERTOR 24-12V PNI-VLT40A                                                                         ', 3, 0, 6, ''),
(230, 'PNI-L807-PLUS       ', 'GPS SISTEM DE NAVIGATIE PNI-L807-PLUS ECRAN 7 INCH 800MHZ                                           ', 3, 0, 6, ''),
(231, 'PNI-RDRC50          ', 'INCARCATOR/REDRESOR PNI C50                                                                         ', 3, 0, 6, ''),
(232, 'PNI-ACW03           ', 'KIT AUTOMATIZARE PORTI YR-300                                                                       ', 3, 0, 6, ''),
(233, 'C1306  MA21-LK      ', 'MA21-LK GARNITURA STATIE RADIO 2PIN KENWOOD (C1306)                                                 ', 3, 0, 6, ''),
(234, '120/DV              ', 'MAGNET 120/DV 125MM (CU CABLU 4M MUFA PL2)                                                          ', 3, 0, 6, ''),
(235, '145PLMW             ', 'MAGNET PL145                                                                                        ', 3, 0, 6, ''),
(236, 'CDS-06              ', 'MICROFON CONDENSER CDS-06  6PINI                                                                    ', 3, 0, 6, ''),
(237, 'MKS-518             ', 'MICROFON CRT PNI-MKS-518 4PINI MINI                                                                 ', 3, 0, 6, ''),
(238, 'PNI-DNC-518 6       ', 'MICROFON PRESIDENT MICRO PNI-DNC-518 6PINI                                                          ', 3, 0, 6, ''),
(239, 'PNI-DNC-520         ', 'MICROFON PRESIDENT MICRO PNI-DNC-520 6PINI                                                          ', 3, 0, 6, ''),
(240, 'L1-PNI              ', 'SUPORT ANTENA INOX L1-PNI                                                                           ', 3, 0, 6, ''),
(241, 'L2-PNI              ', 'SUPORT ANTENA INOX L2-PNI                                                                           ', 3, 0, 6, ''),
(242, '4MAN                ', 'SUPORT ANTENA INOX PNI-4MAN                                                                         ', 3, 0, 6, ''),
(243, 'C1430.07            ', 'SUPORT ANTENA MIDLAND AB-IVECO (C1430.07)                                                           ', 3, 0, 6, ''),
(244, 'C1430.06            ', 'SUPORT ANTENA MIDLAND AB-MAN TGX E5-E6 (C1430.06)                                                   ', 3, 0, 6, ''),
(245, '2503203.00          ', 'SUPORT ANTENA SIRIO M2 180*100*45MM (2503203.00)                                                    ', 3, 0, 6, ''),
(246, 'TRM-22 IVECO        ', 'SUPORT ANTENA SIRIO TRM-22 IVECO STRALIS NEW                                                        ', 3, 0, 6, ''),
(247, 'TRM-23 VOLVO        ', 'SUPORT ANTENA SIRIO TRM-23 VOLVO FH NEW PNI-2522803.00                                              ', 3, 0, 6, ''),
(248, 'TRM-3 SCANIA        ', 'SUPORT ANTENA SIRIO TRM-3 SCANIA 2012-2017 PNI-2522003.00                                           ', 3, 0, 6, ''),
(249, 'TRM-33 SCANIA       ', 'SUPORT ANTENA SIRIO TRM-33 SCANIA >2017 2523003.00                                                  ', 3, 0, 6, ''),
(250, 'TRM-4 MAN           ', 'SUPORT ANTENA SIRIO TRM-4 MAN OTEL PNI-2522103.00                                                   ', 3, 0, 6, ''),
(251, 'TRM-42 MB ACT       ', 'SUPORT ANTENA SIRIO TRM-42 MB ACTROS 2016 PNI-2523103.00                                            ', 3, 0, 6, ''),
(252, 'SPA100              ', 'SUPORT ANTENA SPA100                                                                                ', 3, 0, 6, ''),
(253, 'SS240TEDDY   PNI    ', 'SUPORT STATIE BARRY/TEDDY /HARRY / TRUMAN   PNI                                                     ', 3, 0, 6, ''),
(254, 'JF-20               ', 'SURSA DE TENSIUNE PNI JF-20 JETFON                                                                  ', 3, 0, 6, ''),
(255, 'ST3.4A              ', 'SURSA DE TENSIUNE PNI ST3.4A  12V                                                                   ', 3, 0, 6, ''),
(256, 'PNI-DK101           ', 'TASTATURA CONTROL ACCES PNI DK101                                                                   ', 3, 0, 6, ''),
(257, 'AMMI090             ', 'ANTENA  OREGON', 3, 0, 7, ''),
(258, 'AMMI120             ', 'ANTENA IOWA   AMMI120', 3, 0, 7, ''),
(259, ' AMMI097            ', 'ANTENA KENTUCKY  AMMI097                                                                            ', 3, 0, 7, ''),
(260, 'AMMI112             ', 'ANTENA MISSISSIPPI   AMMI112                                                                        ', 3, 0, 7, ''),
(261, '“‘‹“ѓ€0000043       ', 'BARRY AM/FM ASC RADIO CB   PRESIDENT                                                                ', 3, 0, 7, ''),
(263, 'HP1                 ', 'DIFUZOR HP1                                                                                         ', 3, 0, 7, ''),
(264, 'HP2                 ', 'DIFUZOR HP2                                                                                         ', 3, 0, 7, ''),
(265, 'MARTIN', 'MARTIN 12V/24V                                                                                      ', 3, 0, 7, ''),
(266, 'ACVR049             ', 'MICROFON MICRO BARRY U/D                                                                            ', 3, 0, 7, ''),
(267, 'ACFD520             ', 'MICROFON PREZ MICRO 520                                                                             ', 3, 0, 7, ''),
(268, 'ACFD521             ', 'MICROFON PREZ MICRO 521                                                                             ', 3, 0, 7, ''),
(269, 'TITANIUM            ', 'MICROFON PREZ TITANIUM                                                                              ', 3, 0, 7, ''),
(270, '14040153            ', 'stabo freetalk comii', 3, 0, 7, ''),
(271, 'TAYLOR-III          ', 'STATIE RADIO AUTO TAYLOR III ASC (TXMU403)                                                          ', 3, 0, 7, ''),
(272, 'BILL                ', 'STATIE RADIO BILL                                                                                   ', 3, 0, 7, ''),
(273, 'JOHNSON-II          ', 'STATIE RADIO JOHNSON II 12/24V                                                                      ', 3, 0, 7, ''),
(274, 'ACMI006             ', 'SUPORT ANTENA BASE-N                                                                                ', 3, 0, 7, ''),
(275, 'SS240TEDDY    PRS   ', 'SUPORT STATIE BARRY/TEDDY /HARRY / TRUMAN   PRESIDENT                                               ', 3, 0, 7, ''),
(276, 'SSHENRRY            ', 'SUPORT STATIE HENRRY                                                                                ', 3, 0, 7, ''),
(277, 'SJ                  ', 'SUPORT STATIE JOHNSON                                                                               ', 3, 0, 7, ''),
(278, '3X80                ', 'SUPORT STATIE MARTIN                                                                                ', 3, 0, 7, ''),
(279, 'TEDDY2P             ', 'TEDDY-II ASC STATIE RADIO  PRESIDENT                                                                ', 3, 0, 7, ''),
(280, 'TRUMAN              ', 'TRUMAN STATIE RADIO     ', 3, 0, 7, ''),
(281, '330019              ', 'IMPOLSOR INDUCTIV  90MM                                                                             ', 1, 0, 3, ''),
(282, '330005', 'IMPULSOR 2159 VDO                                                                                   ', 1, 0, 3, ''),
(283, '330442', 'IMPULSOR 25 MM EGK   100 PL                                                                         ', 1, 0, 3, ''),
(284, '330422', 'IMPULSOR INDUCTIV 115 MM VDO                                                                        ', 1, 0, 3, ''),
(285, '330424', 'IMPULSOR INDUCTIV 135 MM VDO                                                                        ', 1, 0, 3, ''),
(286, '136.8               ', 'IMPULSOR INDUCTIV 136.8 MM MERCEDES                                                                 ', 1, 0, 3, ''),
(287, '330010', 'IMPULSOR INDUCTIV 19.8  MM                                                                          ', 1, 0, 3, ''),
(288, '330013', 'IMPULSOR INDUCTIV 25MM                                                                              ', 1, 0, 3, ''),
(289, '330415', 'IMPULSOR INDUCTIV 25MM NEW TYPE                                                                     ', 1, 0, 3, ''),
(290, '330015', 'IMPULSOR INDUCTIV 35MM   VDO                                                                        ', 1, 0, 3, ''),
(291, '330416', 'IMPULSOR INDUCTIV 35MM MUFE ROTUNDE 2150-2010-2501', 1, 0, 3, ''),
(292, '330017              ', 'IMPULSOR INDUCTIV 63.2MM                                                                            ', 1, 0, 3, ''),
(293, '333404', 'IMPULSOR INDUCTIV L=35MM      333404', 1, 0, 3, ''),
(294, '330414              ', 'IMPULSOR INDUCTIV MERCEDES 25MM 2159-2010                                                           ', 1, 0, 3, ''),
(295, '330404', 'IMPULSOR INDUCTIV MERCEDES 35MM                                                                     ', 1, 0, 3, ''),
(296, '330011', 'IMPULSOR INDUCTIV VDO 19.8 MM                                                                       ', 1, 0, 3, ''),
(297, '310003', 'IMPULSOR MECANIC 3 PINI   2153                                                                      ', 1, 0, 3, ''),
(298, '330002', 'IMPULSOR MECANIC 3PIN MOTOMETER                                                                     ', 1, 0, 3, ''),
(299, '310004', 'IMPULSOR MECANIC 4 FIRE                                                                             ', 1, 0, 3, ''),
(300, '310002', 'IMPULSOR MECANIC 4 FIRE 2159                                                                        ', 1, 0, 3, ''),
(301, '330018', 'IMPULSOR UNDUCTIV 90 MM                                                                             ', 1, 0, 3, ''),
(302, '330432', 'KITAS 115 MM                                                                                        ', 1, 0, 3, ''),
(303, '330434', 'KITAS 136.8 MM                                                                                      ', 1, 0, 3, ''),
(304, '330035+', 'KITAS 19.8MM                                                                                        ', 1, 0, 3, ''),
(305, '2171-20100315       ', 'KITAS 2+ M181.5 23.8MM O-RG                                                                         ', 1, 0, 3, ''),
(306, '2171-20100311', 'KITAS 23.8                                                                                          ', 1, 0, 3, ''),
(307, '330039+', 'KITAS 25 MM                                                                                         ', 1, 0, 3, ''),
(309, '330036+', 'KITAS 35MM                                                                                          ', 1, 0, 3, ''),
(310, '330029+', 'KITAS 90 MM                                                                                         ', 1, 0, 3, ''),
(312, '330431+', 'KITAS FORD 63.2    (330431+)                                                                        ', 1, 0, 3, ''),
(313, '2171-32240410', 'KITAS II+  4:4.10M (2171-32240410)   SPRINTER AUTOMAT                                               ', 1, 0, 3, ''),
(314, '330044+', 'KITAS MECANIC        2171  330044+', 1, 0, 3, ''),
(315, '“‘‹“ѓ€0000021', 'KITAS SPRINTER', 1, 0, 3, ''),
(316, '330037', 'KITAS SPRINTER         330037', 1, 0, 3, ''),
(317, '330038+', 'KITAS SPRINTER 4.4M (330038+)', 1, 0, 3, ''),
(318, '330038', 'KITAS SPRINTER AUTOMAT 3.95M (330038)', 1, 0, 3, ''),
(319, 'KITAS2+             ', 'PULSE CONVERTER KITAS2+                                                                             ', 1, 0, 3, ''),
(320, 'PieseTahograf', 'Piese tahograf ', 1, 0, 3, ''),
(321, '330202', 'ADEZIV REGIM 1318 (330202)                                                                          ', 1, 0, 3, ''),
(322, '392402', 'AX ACTIVITATE 180KM/H 1324                                                                          ', 1, 0, 3, ''),
(323, '390010', 'AX CU VERME 1319       390010', 1, 0, 3, ''),
(324, '390023', 'AX DIAGRAMA 1319                                                                                    ', 1, 0, 3, ''),
(325, '330276', 'AX KILOMETRI 1319    330276', 1, 0, 3, ''),
(326, '392424', 'AX LUNG 1324                                                                                        ', 1, 0, 3, ''),
(327, '390008', 'AX ODOMETRU LUNG 1319    390008', 1, 0, 3, ''),
(328, '390002', 'AX REGLARE CIAS 1319', 1, 0, 3, ''),
(329, '390009', 'AX REGLARE CIAS 1319       390009', 1, 0, 3, ''),
(330, '390030', 'AX SILICONIC 1319                                                                                   ', 1, 0, 3, ''),
(331, '392407', 'AX SUPORT ACTIVITATE 140KM/H 1324     392407', 1, 0, 3, ''),
(332, '392401', 'AX VITEZA 140 KM/H 1324                                                                             ', 1, 0, 3, ''),
(333, '392408', 'AX VITEZA 180 KM/H  1324  392408', 1, 0, 3, ''),
(334, '330226', 'BANDA 16 PIN 1318                                                                                   ', 1, 0, 3, ''),
(335, '392442', 'BANDA 2 PICIOARE 1324       392442', 1, 0, 3, ''),
(336, '330224', 'BANDA 8 PIN 1318                                                                                    ', 1, 0, 3, ''),
(337, '392443', 'BANDA I PICIOR 1324         392443', 1, 0, 3, ''),
(338, 'N508T', 'BEC 24V 1.2W                                                                                        ', 1, 0, 3, ''),
(339, '330336', 'BRAT DE ACTIVITATE EGK100      330336', 1, 0, 3, ''),
(340, '392415', 'BUCSA 1324      392415', 1, 0, 3, ''),
(341, '392496', 'BUTON MENU 1381  (392496)                                                                           ', 1, 0, 3, ''),
(342, '330250', 'CAPAC APARATOR 1318      330250', 1, 0, 3, ''),
(343, '330348', 'CARMAN EGK        330348', 1, 0, 3, ''),
(344, '330320', 'CEAS 1318   330320', 1, 0, 3, ''),
(345, '390019', 'CEAS 1319                                                                                           ', 1, 0, 3, ''),
(346, 'CEASVR8400          ', 'CEAS VR8400                                                                                         ', 1, 0, 3, ''),
(347, '330272', 'CHEIE TAHOGRAF EGK-100 (330272)                                                                     ', 1, 0, 3, ''),
(348, '330222', 'CONTOR 1318      330222', 1, 0, 3, ''),
(349, '392456', 'CULISANTA 1324       392456', 1, 0, 3, ''),
(350, '380070', 'DECODER  CAN  UDC-301-E TAXI  380070                                                                ', 1, 0, 3, ''),
(351, '330338', 'DESCHIZATOR EGK100                                                                                  ', 1, 0, 3, ''),
(352, '392444', 'ECRAN 1324                                                                                          ', 1, 0, 3, ''),
(353, '302450121', 'ETICHETA 1324      302450121', 1, 0, 3, ''),
(354, 'L6013-20            ', 'ETICHETE TAHOGRAF 210*297MM SILVER L6013-20 (20 FOI)                                                ', 1, 0, 3, ''),
(355, '330346', 'EXCENTRIC EGK100       330346', 1, 0, 3, ''),
(356, '330177', 'EXTRACTOR 1324          330177', 1, 0, 3, ''),
(357, '392403', 'FATA 1324                                                                                           ', 1, 0, 3, ''),
(358, '392423', 'INEL 1324                                                                                           ', 1, 0, 3, ''),
(359, 'A2C59516736', 'KIT ACE SI CAMA     A2C59516736', 1, 0, 3, ''),
(360, '330127', 'KIT REPARARE CABLU ROTUND                                                                           ', 1, 0, 3, ''),
(361, '330129              ', 'KIT REPARARE CABLU ROTUND 90*                                                                       ', 1, 0, 3, ''),
(362, 'A2C59516737', 'KIT REPARATIE 1324 (392456, 392423) A2C59516737                                                     ', 1, 0, 3, ''),
(363, '330252', 'KNOB STANDARD TAHOGRAF 1318  65.3MM (330252)                                                        ', 1, 0, 3, ''),
(364, '392439', 'MAGNET CEAS 1324       392439', 1, 0, 3, ''),
(365, '330396', 'MAGNET LUNG 1318  13.5MM       330396                                                               ', 1, 0, 3, ''),
(366, '390035', 'MECANIZM CIAS 125 1319       390035', 1, 0, 3, ''),
(367, '1319-30-01200', 'MOTOR 1319                                                                                          ', 1, 0, 3, ''),
(368, '330285', 'MOTOR ODOMETRU EGK100       330285', 1, 0, 3, ''),
(369, '280066RECON', 'MOTOR VITEZA SI ODOMETRU 1318       280066RECON', 1, 0, 3, ''),
(370, '330254', 'MOTORAS  1318  330254                                                                               ', 1, 0, 3, ''),
(371, 'mufaalba', 'MUFA ALBA', 1, 0, 3, ''),
(372, 'ODOVR8400', 'ODOMETRU VR8400          ODOVR8400', 1, 0, 3, ''),
(373, '330256', 'PIULITA 1318                                                                                        ', 1, 0, 3, ''),
(374, '332022', 'PLACA MECANICA TAHOGRAF 1318 (332022)                                                               ', 1, 0, 3, ''),
(375, '330219', 'PLACE DE SEPARARE TAHO 1318  (330219)                                                               ', 1, 0, 3, ''),
(376, '392437              ', 'ROATA CEAS 1324  392437                                                                             ', 1, 0, 3, ''),
(377, '330171', 'ROATA CIAS CU OSIE EGK          330171', 1, 0, 3, ''),
(378, '332001', 'ROATA DE TRANSMISIE CU AMBREIAJ 1318 (332001)                                                       ', 1, 0, 3, ''),
(379, '390054', 'ROATA DINTATA 1319                                                                                  ', 1, 0, 3, ''),
(380, '332004', 'ROATA DINTATA MARE 1318    332004', 1, 0, 3, ''),
(381, 'F6649109996', 'ROATA DINTATA VITEZOMETRU         F6649109996', 1, 0, 3, ''),
(382, '330173', 'ROATA MARE CIAS EGK100   330173', 1, 0, 3, ''),
(383, '390001', 'ROATA MICA 1319 (390001)', 1, 0, 3, ''),
(384, '330339', 'ROATA MICA CIAS EGK100                                                                              ', 1, 0, 3, ''),
(385, '392406', 'ROATA SERTAR 1324                                                                                   ', 1, 0, 3, ''),
(386, '330283', 'ROATA TIP 1 EGK100       330283', 1, 0, 3, ''),
(387, '330203', 'ROATA TIP 2 EGK100         330203', 1, 0, 3, ''),
(388, '330248', 'ROATA UNIDIRECTIONALA 1318     330248', 1, 0, 3, ''),
(389, '330359', 'ROATA VITEZA 1318         330359', 1, 0, 3, ''),
(390, '330101', 'SAIBA POD PLPMBU      330101', 1, 0, 3, ''),
(391, '392448', 'SUPORT SERTAR DREAPTA         392448', 1, 0, 3, ''),
(392, '392446', 'SUPORT SERTAR STINGA      392446', 1, 0, 3, ''),
(393, '360073', 'SURUB 1324                                                                                          ', 1, 0, 3, ''),
(394, '380035', 'VITEZOMETRU EGK                                                                                     ', 1, 0, 3, '');
INSERT INTO `products` (`id`, `code`, `title`, `category_id`, `unit_id`, `producer_id`, `price`) VALUES
(395, 'PD8089-3', 'VITEZOMETRU MAZ    PD8089-3                                                                         ', 1, 0, 3, ''),
(396, 'Sigilii      ', 'Sigilii', 1, 0, 3, ''),
(397, '330071', 'SIGILE GALBENE           330071', 1, 0, 3, ''),
(398, '330070', 'SIGILE NEGRE EGK100      330070', 1, 0, 3, ''),
(399, '330074', 'SIGILE REPARARE ROSII        330074', 1, 0, 3, ''),
(400, '330072', 'SIGILE ROSII MICI                                                                                   ', 1, 0, 3, ''),
(401, 'Tahografe', 'Tahografe', 1, 0, 3, ''),
(402, '370021', 'TAHOGRAF 1324 24V                                                                                   ', 1, 0, 3, ''),
(403, 'A2C1648500020', 'TAHOGRAF 3.0 DTCO BLUE (A2C1648500020)                                                              ', 1, 0, 3, ''),
(404, 'A2C1648490020', 'TAHOGRAF 3.0 DTCO GREEN  (A2C1648500020)                                                            ', 1, 0, 3, ''),
(405, 'EFAS', 'TAHOGRAF DIGITAL EFAS OC0004 4 SE                                                                   ', 1, 0, 3, ''),
(406, 'A3C0560480020       ', 'TAHOGRAF DTCO 24V-ADR VKF REL.3.0 EC/GGVS SERIE                                                     ', 1, 0, 3, ''),
(407, 'A3C0539540020       ', 'TAHOGRAF DTCO ORANGE 3.0A 24V ADR UNIVERSAL                                                         ', 1, 0, 3, ''),
(408, 'A3C0539590020       ', 'TAHOGRAF DTCO3.0A 24/12V ADRZ2                                                                      ', 1, 0, 3, ''),
(409, 'A3C0539560020       ', 'TAHOGRAF DTCO3.0A 24/12V ADRZ2...                                                                   ', 1, 0, 3, ''),
(410, 'SE5000ADR           ', 'TAHOGRAF SE5000     ADR', 1, 0, 3, ''),
(411, 'SE5000', 'TAHOGRAF SE5000  12V/24V (NON ADR)', 1, 0, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `servicename` varchar(255) NOT NULL,
  `price` decimal(6,0) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `code`, `servicename`, `price`, `category`) VALUES
(1, 'AC                  ', 'ALIMENTARE CLIMATIZATOR', '0', 5),
(2, 'CA                  ', 'CALIBRARE ANTENA', '0', 3),
(3, 'CTD                 ', 'CONFIGURATE TAHOGRAF DIGITAL                                                                        ', '500', 1),
(4, 'DIPR                ', 'DEMONTARE INCALZITOR PENTRU REPARARE', '0', 2),
(5, ' DDCS               ', 'DESCARCARE DATE CARTELA SOFER', '0', 1),
(6, 'DDT                 ', 'DESCARCARE DATE TAHOGRAF', '0', 1),
(7, 'DI                  ', 'DIAGNOSTICA INCALZITOR                                                                              ', '0', 2),
(8, 'DCVT                ', 'DUPLICAT CERTIFICAT VERIFICARE TAHOGRAF                                                             ', '0', 1),
(9, 'MAR                 ', 'MONTARE ANTENA RADIO    ', '0', 3),
(10, 'MINFIF              ', 'MONTARE INCALZITOR  (FIF)                                                                           ', '0', 2),
(11, 'MIN                 ', 'MONTARE INCALZITOR  (N)                                                                             ', '0', 2),
(12, 'MIDR                ', 'MONTARE INCALZITOR DUPA REPARAE', '0', 2),
(13, 'MSR                 ', 'MONTARE STATIE RADIO                                                                                ', '0', 3),
(14, 'MSRA                ', 'MONTARE STATIE RADIO  AUTOCAR                                                                       ', '0', 3),
(15, 'MT                  ', 'MONTARE TAHOGRAF', '0', 1),
(16, 'PS                  ', 'PROGRAMARE STATIE RADIO                                                                             ', '0', 3),
(17, 'RCAVE               ', 'RECONDITIONARE CAMERA ARDERE VOLVO/RENAULT                                                          ', '0', 2),
(18, 'RC                  ', 'REPARARE CONDITIONER', '0', 5),
(19, 'RF                  ', 'REPARARE FRIGIDER', '0', 5),
(20, 'RIED                ', 'REPARARE HIDRONIC 16/24/30                                                                          ', '0', 2),
(21, 'RI                  ', 'REPARARE INCALZITOR', '0', 2),
(22, 'RSR                 ', 'REPARARE STATIE RADIO                                                                               ', '0', 3),
(23, 'RT                  ', 'REPARARE TAHOGRAF                                                                                   ', '0', 1),
(24, 'RV                  ', 'REPARARE VENTILATOR                                                                                 ', '0', 2),
(25, 'SCI360              ', 'SCHIMB CABLU INCALZITOR POMPA                                                                       ', '0', 2),
(26, 'SI                  ', 'SCHIMB IMPULSOR                                                                                     ', '0', 1),
(27, 'SCT                 ', 'SCHIMBCABLU TAHOGRAF', '0', 1),
(28, 'VTD                 ', 'VERIFICARE TAHOGRAF DIGITAL                                                                         ', '0', 1),
(29, 'VTA                 ', 'VERIFICARE TAHOGRAFAN ALOGIC                                                                        ', '0', 1);

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
-- Indexes for table `service`
--
ALTER TABLE `service`
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
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
