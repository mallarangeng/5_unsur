-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Jan 2017 pada 23.39
-- Versi Server: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `limaunsur`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_activ`
--

CREATE TABLE IF NOT EXISTS `user_activ` (
  `id` int(5) NOT NULL,
  `id_kelompok` int(7) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `waktu` datetime NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_activ`
--

INSERT INTO `user_activ` (`id`, `id_kelompok`, `nama`, `waktu`, `link`) VALUES
(1, 2016004, 'Mengedit Data Kelompok', '2016-12-21 03:12:17', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_activ`
--
ALTER TABLE `user_activ`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_activ`
--
ALTER TABLE `user_activ`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
