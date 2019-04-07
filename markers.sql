-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 06 Απρ 2019 στις 21:15:31
-- Έκδοση διακομιστή: 10.1.38-MariaDB
-- Έκδοση PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `test`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `markers`
--

CREATE TABLE `markers` (
  `name` varchar(64) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `markers`
--

INSERT INTO `markers` (`name`, `lng`, `lat`, `type`) VALUES
('tcp', 23.884068, 38.230007, 'Cow(0003):93308477 Sleeping Time:3,2hours Status:Healthy O2:98 B'),
('tcp', 23.876812, 38.218906, 'Cow(0003):93308477 Sleeping Time:3,2hours Status:Healthy O2:98 B'),
('tcp', 23.876671, 38.219456, 'Cow(0003):93308467 Sleeping Time:3,2hours Status:Healthy O2:98 B'),
('tcp', 23.876198, 38.219875, 'Cow(0003):93308477 Sleeping Time:3,2hours Status:Healthy O2:98 B'),
('tcp', 23.875923, 38.220333, 'Cow(0003):93308477 Sleeping Time:3,2hours Status:Healthy O2:98 B'),
('tcp', 23.876997, 38.219547, 'Cow(0003):93308477 Sleeping Time:3,2hours Status:Healthy O2:98 B'),
('tcp', 23.875956, 38.219555, 'Cow(0003):93308477 Sleeping Time:3,2hours Status:Healthy O2:98 B'),
('tcp', 23.876944, 38.219910, 'Cow(0003):93308477 Sleeping Time:3,2hours Status:Healthy O2:98 B'),
('tcp', 23.876379, 38.218845, 'George(0003):93308477 Sleeping Time:4,20 hours Status:Healthy O2'),
('tcp', 23.876583, 38.219082, 'Maria(0003):93308477 Sleeping Time:3,2hours Status:Healthy O2:98'),
('tcp', 23.876669, 38.219067, 'Elenh(0008):93308477 Sleeping Time:3,2hours Status:Healthy O2:98'),
('tcp', 23.876614, 38.219021, 'PM(0003):93301477 Sleeping Time:3,2hours Status:Healthy O2:98 BP');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
