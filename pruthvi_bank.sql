-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 01, 2021 at 05:36 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `sno` int(3) NOT NULL AUTO_INCREMENT,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Ram Charan', 'Chandra Sekhar', 500, '2021-01-28 10:41:22'),
(2, 'pruthvi', 'Pavan Kalyan', 80000, '2021-01-28 10:48:00'),
(11, 'Ankith', 'Chandra Sekhar', 450, '2021-01-28 10:54:35'),
(12, 'Chandra Sekhar', 'Purnesh', 900, '2021-01-28 11:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `balance`) VALUES
(1, 'Chandra Sekhar', 'chandu@gmail.com', '9999977777', 50),
(2, 'Ram Charan', 'charan@gmail.com', '9988777788', 506),
(3, 'Ankith', 'akki@gmail.com', '7788996600', 45150),
(4, 'pruthvi', 'pruthvi@gmail.com', '9966332250', 7871),
(5, 'Purnesh', 'puri@gmail.com', '9543577895', 80905),
(6, 'Pavan Kalyan', 'pkalyan@gmail.com', '9874563210', 534455),
(7, 'Bhanu Prakash', 'bhnuprakash@gmail.com', '8899566554', 895632),
(8, 'Sai Mahesh', 'saiM@yahoo.com', '9966553322', 788679),
(9, 'Rafi', 'rafisd@gmail.com', '9988556622', 45412),
(10, 'Dharani Dhar', 'dharanid@gmail.com', '9879879856', 748596);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
