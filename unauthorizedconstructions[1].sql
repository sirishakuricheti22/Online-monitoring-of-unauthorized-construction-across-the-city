-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: May 26, 2025 at 06:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unauthorizedconstructions`
--

-- --------------------------------------------------------

--
-- Table structure for table `uncon`
--

CREATE TABLE `uncon` (
  `sno` int(11) NOT NULL,
  `district` varchar(50) NOT NULL,
  `mandal` varchar(50) NOT NULL,
  `village` varchar(50) NOT NULL,
  `lake_name` varchar(100) NOT NULL,
  `lake_id` varchar(50) NOT NULL,
  `ftl_link` varchar(255) DEFAULT NULL,
  `cadastral_link` varchar(255) DEFAULT NULL,
  `synos_bufferzone_link` varchar(255) DEFAULT NULL,
  `map_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uncon`
--

INSERT INTO `uncon` (`sno`, `district`, `mandal`, `village`, `lake_name`, `lake_id`, `ftl_link`, `cadastral_link`, `synos_bufferzone_link`, `map_link`) VALUES
(1, 'Hyderabad', 'Hyderabad', 'Jubilee Hills', 'Test', '11111', 'https://lakes.hmda.gov.in/hmdalake/11111Test%20_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/4200Ramanna%20cheruvu_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/11111Test%20_SyNo.pdf', NULL),
(2, 'Hyderabad', 'Bandlaguda', 'Kandikal (Barkas)', 'Gurram Cheruvu', '4000', 'https://lakes.hmda.gov.in/hmdalake/4000Gurram%20Cheruvu_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/4000Gurram%20Cheruvu_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/4000Gurram%20Cheruvu_SyNo.pdf', 'https://www.mappls.com/874efe\r\n'),
(3, 'Hyderabad', 'Golkonda', 'Golkonda', 'Langer House Tank', '4600', 'https://lakes.hmda.gov.in/hmdalake/4600Langer%20House%20Tank_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/4600Langer%20House%20Tank_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/4600Langer%20House%20Tank_SyNo.pdf', 'https://www.mappls.com/8f4vs0\r\n'),
(4, 'Hyderabad', 'Golkonda', 'Golkonda', 'Naya Qilla', '4602', 'https://lakes.hmda.gov.in/hmdalake/4602Naya%20Qilla_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/4602Naya%20Qilla_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/4602Naya%20Qilla_SyNo.pdf', 'https://www.mappls.com/80bgyr\r\n'),
(5, 'Hyderabad', 'Golkonda', 'Golkonda', 'Devuni Kunta', '4300/EEN/01', 'https://lakes.hmda.gov.in/hmdalake/4300-EEN-01Devuni%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/4300-EEN-01Devuni%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/4300-EEN-01Devuni%20Kunta_SyNo.pdf', 'https://www.mappls.com/rdevjj\r\n'),
(6, 'Hyderabad', 'Golkonda', 'Golkonda', 'Katora House', '4601', 'https://lakes.hmda.gov.in/hmdalake/4601Katora%20House_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/4601Katora%20House_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/4601Katora%20House_SyNo.pdf', 'https://www.mappls.com/dz1w0a\r\n'),
(7, 'Hyderabad', 'Shaikpet', 'Hakeempet', 'Lotus Pond', '3907', 'https://lakes.hmda.gov.in/hmdalake/3907_FTL_final.pdf', 'https://lakes.hmda.gov.in/hmdalake/3907_cadastral_final.pdf', 'https://lakes.hmda.gov.in/hmdalake/3907Lotus%20pond_SyNo.pdf', 'https://www.mappls.com/8mxoav\r\n'),
(8, 'Hyderabad', 'Shaikpet', 'Shaikpet', 'Yerra Kunta', '3902', 'https://lakes.hmda.gov.in/hmdalake/3902Yerra%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/3902Yerra%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/3902Yerra%20Kunta_SyNo.pdf', 'https://www.mappls.com/fff76d\r\n'),
(9, 'Hyderabad', 'Shaikpet', 'Hakeempet', 'Hakeempet Kunta', '3903', 'https://lakes.hmda.gov.in/hmdalake/3903_FTL_final.pdf', 'https://lakes.hmda.gov.in/hmdalake/3903_cadastral_final.pdf', 'https://lakes.hmda.gov.in/hmdalake/3903Hakeempet%20Kunta_SyNo.pdf', 'https://www.mappls.com/ukbl6g\r\n'),
(10, 'Hyderabad', 'Shaikpet', 'Shaikpet', 'Jamal Kunta', '3904', 'https://lakes.hmda.gov.in/hmdalake/3904_FTL_final.pdf', 'https://lakes.hmda.gov.in/hmdalake/3904_cadastral_final.pdf', 'https://lakes.hmda.gov.in/hmdalake/3904Jamal%20Kunta_SyNo.pdf', 'https://www.mappls.com/3fignr\r\n'),
(11, 'Hyderabad', 'Shaikpet', 'Shaikpet', 'Kotha Cheruvu', '3905', 'https://lakes.hmda.gov.in/hmdalake/3905Kotha%20Cheruvu_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/3905Kotha%20Cheruvu_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/3905Kotha%20Cheruvu_SyNo.pdf', 'https://www.mappls.com/k29elr\r\n'),
(12, 'Hyderabad', 'Shaikpet', 'Shaikpet', 'Bathur Kunta', '3901', 'https://lakes.hmda.gov.in/hmdalake/3901Bathur%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/3901Bathur%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/3901Bathur%20Kunta_SyNo.pdf', 'https://www.mappls.com/vu3ed1\r\n'),
(13, 'Hyderabad', 'Shaikpet', 'Shaikpet', 'Anantagiri Kunta', '3900', 'https://lakes.hmda.gov.in/hmdalake/3900Anantagiri%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/3900Anantagiri%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/3900Anantagiri%20Kunta_SyNo.pdf', NULL),
(14, 'Hyderabad', 'Shaikpet', 'Jubilee Hills', 'Chiran Kunta Lake', '3910', 'https://lakes.hmda.gov.in/hmdalake/3910Chiran%20Kunta%20lake_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/3910Chiran%20Kunta%20lake_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/3910Chiran%20Kunta%20lake_SyNo.pdf', NULL),
(15, 'Hyderabad', 'Shaikpet', 'Shaikpet', 'Banjara Kunta (Singadi Kunta)', '3900/EEN/01', 'https://lakes.hmda.gov.in/hmdalake/3900-EEN-01_FTL_final.pdf', 'https://lakes.hmda.gov.in/hmdalake/3900Anantagiri%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/3900-EEN-01Banjara%20Kunta(Singadi%20Kunta)_SyNo.pdf', NULL),
(16, 'Hyderabad', 'Shaikpet', 'Shaikpet', 'Shahatam Cheruvu', '3906', 'https://lakes.hmda.gov.in/hmdalake/3906Shahatam%20Cheruvu_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/3906Shahatam%20Cheruvu_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/3906Shahatam%20Cheruvu_SyNo.pdf', NULL),
(17, 'Hyderabad', 'Shaikpet', 'Hakeempet', 'Shikari Kunta', '3900/EEN/03', 'https://lakes.hmda.gov.in/hmdalake/3900-EEN-03_FTL_final.pdf', 'https://lakes.hmda.gov.in/hmdalake/3900-EEN-03_cadastral_final.pdf', 'https://lakes.hmda.gov.in/hmdalake/3900-EEN-03Shikari%20Kunta_SyNo.pdf', NULL),
(18, 'Hyderabad', 'Tirumalagiri', 'Tirumalagiri', 'Tirumalagiri Tank', '4201', 'https://lakes.hmda.gov.in/hmdalake/4201Tirumalagiri%20Tank_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/4201Tirumalagiri%20Tank_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/4201Tirumalagiri%20Tank_SyNo.pdf', NULL),
(19, 'Rangareddy', 'Kothur', 'Gudur', 'Upparavani Kunta', '	274', 'https://lakes.hmda.gov.in/hmdalake/274_Upparavani%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/274_Upparavani%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/274_Upparavani%20Kunta_SyNo.pdf', NULL),
(20, 'Rangareddy', 'Nandigama', 'Nandigama', 'Sakera Kunta', '234', 'https://lakes.hmda.gov.in/hmdalake/234_Sakera%20kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/234_Sakera%20kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/234_Sakera%20kunta_SyNo.pdf', NULL),
(21, 'Rangareddy', 'Shamshabad', 'Cherlaguda', 'Mysamma Kunta', '2300/EN/04', 'https://lakes.hmda.gov.in/hmdalake/2300-EN-04_Mysamma%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2300-EN-04_Mysamma%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2300-EN-04_Mysamma%20Kunta_SyNo.pdf', NULL),
(22, 'Rangareddy', 'Kothur', 'Inmulnarva', 'Peerla Chervu', '200/N/026', 'https://lakes.hmda.gov.in/hmdalake/200-N-026_Peerla%20chervu_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/200-N-026_Peerla%20chervu_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/200-N-026_Peerla%20chervu_SyNo.pdf', NULL),
(23, 'Rangareddy', 'Maheswaram', 'Mansanpalle', 'Ramaiah Kunta (Ramanna Kunta)', '2454', 'https://lakes.hmda.gov.in/hmdalake/2454Ramaiah%20Kunta%20(Ramanna%20Kunta)_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2454Ramaiah%20Kunta%20(Ramanna%20Kunta)_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2454Ramaiah%20Kunta%20(Ramanna%20Kunta)_SyNo.pdf', NULL),
(24, 'Rangareddy', 'Maheswaram', 'Akanpalle', 'Varada Kunta', '2466', 'https://lakes.hmda.gov.in/hmdalake/2466_Varada%20Kunta%20_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2466_Varada%20Kunta%20_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2466_Varada%20Kunta%20_SyNo.pdf', NULL),
(25, 'Rangareddy', 'Maheswaram', 'Nagaram', 'Enugala Kunta (Enugu Cheruvu)', '2400/N/0013', 'https://lakes.hmda.gov.in/hmdalake/2400-N-0013_Enugala%20Kunta%20(Enugu%20Cheruvu)_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2400-N-0013_Enugala%20Kunta%20(Enugu%20Cheruvu)_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2400-N-0013_Enugala%20Kunta%20(Enugu%20Cheruvu)_SyNo.pdf', NULL),
(26, 'Rangareddy', 'Ibrahimpatnam', 'Narrepalle', 'Thummalla Kunta', '500/N/003', 'https://lakes.hmda.gov.in/hmdalake/500-N-003_Thummalla%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/500-N-003_Thummalla%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/500-N-003_Thummalla%20Kunta_SyNo.pdf', NULL),
(27, 'Rangareddy', 'Ibrahimpatnam', 'Mangalpalli', 'Mungareddy Kunta (Chinthalkunta)', '500/N/009', 'https://lakes.hmda.gov.in/hmdalake/500-N-009_Mungareddy%20Kunta%20(Chinthalkunta)_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/500-N-009_Mungareddy%20Kunta%20(Chinthalkunta)_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/500-N-009_Mungareddy%20Kunta%20(Chinthalkunta)_SyNo.pdf', NULL),
(28, 'Rangareddy', 'Farooqnagar (Part)', 'Elikatta', 'Kunta Shikham', '117', 'https://lakes.hmda.gov.in/hmdalake/117KUNTA%20SHIKHAM_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/117KUNTA%20SHIKHAM_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/117KUNTA%20SHIKHAM_SyNo.pdf', NULL),
(29, 'Rangareddy', 'Nandigama', 'Chegur', 'Gantla Kunta', '200/N/0020', 'https://lakes.hmda.gov.in/hmdalake/200-N-0020_Gantla%20kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/200-N-0020_Gantla%20kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/200-N-0020_Gantla%20kunta_SyNo.pdf', NULL),
(30, 'Rangareddy', 'Ibrahimpatnam', 'Kongara Kalan', 'Nallakunta', '527', 'https://lakes.hmda.gov.in/hmdalake/527_Nallakunta%20_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/527_Nallakunta%20_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/527_Nallakunta%20_SyNo.pdf', NULL),
(31, 'Rangareddy', 'Ibrahimpatnam', 'Raipole', 'Nagoju Kunta', '543', 'https://lakes.hmda.gov.in/hmdalake/543_Nagoju%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/543_Nagoju%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/543_Nagoju%20Kunta_SyNo.pdf', NULL),
(32, 'Rangareddy', 'Ibrahimpatnam', 'Muknoor', 'Kotha Kunta', '546', 'https://lakes.hmda.gov.in/hmdalake/546_Kotha%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/546_Kotha%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/546_Kotha%20Kunta_SyNo.pdf', NULL),
(33, 'Rangareddy', 'Maheswaram', 'Maheswaram', 'Kothwal Cheruvu', '2428', 'https://lakes.hmda.gov.in/hmdalake/2428Kothwal%20Cheruvu_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2428Kothwal%20Cheruvu_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2428Kothwal%20Cheruvu_SyNo.pdf', NULL),
(34, 'Rangareddy', 'Maheswaram', 'Ghatpalle', 'Yaseen Kunta', '2429', 'https://lakes.hmda.gov.in/hmdalake/2429Yaseen%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2429Yaseen%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2429Yaseen%20Kunta_SyNo.pdf', NULL),
(35, 'Rangareddy', 'Maheswaram', 'Raviryal', 'Erra Kunta', '2400/N/007', 'https://lakes.hmda.gov.in/hmdalake/2400-N-007_Erra%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2400-N-007_Erra%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2400-N-007_Erra%20Kunta_SyNo.pdf', NULL),
(36, 'Rangareddy', 'Maheswaram', 'Mankhal', 'Rai Kunta', '2412', 'https://lakes.hmda.gov.in/hmdalake/2412Rai%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2412Rai%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2412Rai%20Kunta_SyNo.pdf', NULL),
(37, 'Rangareddy', 'Maheswaram', 'Kollapadkal', 'Tummala Kunta', '2473', 'https://lakes.hmda.gov.in/hmdalake/2473Tummala%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2473Tummala%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2473Tummala%20Kunta_SyNo.pdf', NULL),
(38, 'Rangareddy', 'Nandigama', 'Nandigama', 'Kashireddi Kunta', '230', 'https://lakes.hmda.gov.in/hmdalake/230_Kashireddi%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/230_Kashireddi%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/230_Kashireddi%20Kunta_SyNo.pdf', NULL),
(39, 'Medchal-Malkajgiri', 'Shamirpet', 'Majeedpur', 'Gairan Nela Kunta', '1825', 'https://lakes.hmda.gov.in/hmdalake/1825Gairan%20Nela%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/1825Gairan%20Nela%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/1825Gairan%20Nela%20Kunta_SyNo.pdf', NULL),
(40, 'Medchal-Malkajgiri', 'Medchal', 'Raj Bollaram', 'Mondikunta Shikam', '1700/N/008', 'https://lakes.hmda.gov.in/hmdalake/1700-N-008Mondikunta%20Shikam_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/1700-N-008Mondikunta%20Shikam_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/1700-N-008Mondikunta%20Shikam_SyNo.pdf', NULL),
(41, 'Medchal-Malkajgiri', 'Keesara', 'Keesara', 'Regula Kunta', '2700/E/19', 'https://lakes.hmda.gov.in/hmdalake/2700-E-19Regula%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2700-E-19Regula%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/2700-E-19Regula%20Kunta_SyNo.pdf', NULL),
(42, 'Medchal-Malkajgiri', 'Medchal', 'Medchal', 'Mala Kunta', '1700/N/0021', 'https://lakes.hmda.gov.in/hmdalake/1700-N-0021Mala%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/1700-N-0021Mala%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/1700-N-0021Mala%20Kunta_SyNo.pdf', NULL),
(43, 'Medchal-Malkajgiri', 'Shamirpet', 'Potharam', 'Chinnavari Kunta', '1899', 'https://lakes.hmda.gov.in/hmdalake/1899Chinnavari%20Kunta_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/1899Chinnavari%20Kunta_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/1899Chinnavari%20Kunta_SyNo.pdf', NULL),
(44, 'Medchal-Malkajgiri', 'Medchal', 'Suthariguda', 'Suthsri Cheruvu', '1749', 'https://lakes.hmda.gov.in/hmdalake/1749Suthsri%20Cheruvu_FTL.pdf', 'https://lakes.hmda.gov.in/hmdalake/1749Suthsri%20Cheruvu_CADASTRAL.pdf', 'https://lakes.hmda.gov.in/hmdalake/1749Suthsri%20Cheruvu_SyNo.pdf', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uncon`
--
ALTER TABLE `uncon`
  ADD PRIMARY KEY (`sno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
