-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Machine: 127.0.0.1
-- Gegenereerd op: 13 feb 2015 om 05:47
-- Serverversie: 5.6.20
-- PHP-versie: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `hms`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `device`
--

CREATE TABLE IF NOT EXISTS `device` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `platform` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Gegevens worden geëxporteerd voor tabel `device`
--

INSERT INTO `device` (`id`, `user_id`, `uuid`, `platform`, `token`) VALUES
(3, 20, '0', '0', '24'),
(4, 21, '0', '0', '24'),
(5, 22, 'uuid', 'Android', '24'),
(6, 23, 'uuid', 'Android', '24'),
(7, 24, 'uuid', 'platf', 'tokenAn'),
(8, 41, 'uuid', 'Android', '24'),
(9, 42, 'uuid', 'Android', '24'),
(10, 43, 'uuid', 'Android', '24'),
(11, 45, 'uuid', 'Android', '24'),
(12, 46, 'uuid', 'Android', '24'),
(13, 47, 'uuid', 'platform', 'fadfafadfaf'),
(14, 48, '111', 'Android', 'AIzaSyC2tlNp2MNCERIEIhBALm7htFXYTCHPiGM'),
(15, 49, '111', 'Android', 'AIzaSyC2tlNp2MNCERIEIhBALm7htFXYTCHPiGM'),
(16, 50, '111', 'Android', 'AIzaSyC2tlNp2MNCERIEIhBALm7htFXYTCHPiGM');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
  `mid` int(40) DEFAULT NULL,
  `dosage` varchar(50) DEFAULT NULL,
  `medicine_name` varchar(50) DEFAULT NULL,
  `tm_1` int(2) DEFAULT '0',
  `tm_2` int(2) NOT NULL DEFAULT '0',
  `tm_3` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `medicine`
--

INSERT INTO `medicine` (`mid`, `dosage`, `medicine_name`, `tm_1`, `tm_2`, `tm_3`) VALUES
(2147483647, '11', 'A', 0, 1, 0),
(2147483647, '22', 'B', 0, 0, 1),
(2147483647, '33', 'C', 0, 1, 1),
(2147483647, '', '', 0, 0, 0),
(2147483647, '', '', 0, 0, 0),
(2147483647, '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `patients`
--

CREATE TABLE IF NOT EXISTS `patients` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `mobile` int(10) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `patients`
--

INSERT INTO `patients` (`id`, `name`, `age`, `gender`, `occupation`, `mobile`, `address`) VALUES
(0, 'MF', 0, '', '', 0, ''),
(11, 'Suresh Gopi', 50, 'M', 'Doctor', 999, 'Sasi\r\n');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `id` int(10) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `instructions` varchar(50) NOT NULL,
  `doc_name` varchar(20) NOT NULL,
  `med_id` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `prescription`
--

INSERT INTO `prescription` (`id`, `diagnosis`, `instructions`, `doc_name`, `med_id`) VALUES
(11, 'SAD', 'ADA', 'Sasi', 2147483647),
(0, '', '', '', 2147483647);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `email`, `mobile`) VALUES
(20, 'manjeshpv@gmail.com', '9844717202'),
(21, 'manjeshpv@gmail.com', '9844717202'),
(22, 'manjeshpv@gmail.com', '9844717202'),
(23, 'manjeshpv@gmail.com', '9844717202'),
(24, 'manjeshpv@gmail.com', '9844717202'),
(25, NULL, NULL),
(26, NULL, NULL),
(27, NULL, NULL),
(28, NULL, NULL),
(29, NULL, NULL),
(30, NULL, NULL),
(31, NULL, NULL),
(32, NULL, NULL),
(33, NULL, NULL),
(34, NULL, NULL),
(35, NULL, NULL),
(36, NULL, NULL),
(37, NULL, NULL),
(38, NULL, NULL),
(39, NULL, NULL),
(40, NULL, NULL),
(41, 'manjeshpv@gmail.com', '9844717202'),
(42, 'manjeshpv@gmail.com', '9844717202'),
(43, 'manjeshpv@gmail.com', '9844717202'),
(44, NULL, NULL),
(45, 'manjeshpv@gmail.com', '9844717202'),
(46, 'manjeshpv@gmail.com', '9844717202'),
(47, 'manjeshpv@gmail.com', '9844717202'),
(48, NULL, NULL),
(49, 'manjeshpv@gmail.com', '9844717202'),
(50, 'manjeshpv@gmail.com', '9844717202');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('hello', 'pass');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `device`
--
ALTER TABLE `device`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`);

--
-- Indexen voor tabel `patients`
--
ALTER TABLE `patients`
 ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `device`
--
ALTER TABLE `device`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `device`
--
ALTER TABLE `device`
ADD CONSTRAINT `device_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
