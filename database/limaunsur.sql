-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Mar 2016 pada 06.37
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

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
-- Struktur dari tabel `detail`
--

CREATE TABLE IF NOT EXISTS `detail` (
`id_detail` int(5) NOT NULL,
  `id_lap` int(5) NOT NULL,
  `kendala` text NOT NULL,
  `solusi` text NOT NULL,
  `ket` text NOT NULL,
  `stat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok`
--

CREATE TABLE IF NOT EXISTS `kelompok` (
`id_kelompok` int(10) NOT NULL,
  `nm_kelompok` varchar(50) NOT NULL,
  `parent` int(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` varchar(12) NOT NULL,
  `penjab` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelompok`
--

INSERT INTO `kelompok` (`id_kelompok`, `nm_kelompok`, `parent`, `alamat`, `nohp`, `penjab`, `password`, `level`) VALUES
(1, 'Pondok Alam Permai', 0, 'Pondok Alam Permai', '085715887704', 'Hendri', '123', 'Desa'),
(2, 'Kutajaya', 0, 'Kutajaya', '085715887704', 'Hepi', '123', 'Desa'),
(3, 'Pondok Makmur', 1, 'Pondok Makmur', '085715887704', 'Amien Purnomo', '123', 'Kelompok'),
(4, 'Keroncong', 1, 'Keroncong Permai', '085715887704', 'Tarmono', '123', 'Kelompok');

-- --------------------------------------------------------

--
-- Struktur dari tabel `leporan`
--

CREATE TABLE IF NOT EXISTS `leporan` (
`id_lap` int(5) NOT NULL,
  `id_kelompok` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `ket` varchar(100) NOT NULL,
  `date_on` date NOT NULL,
  `stat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
 ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `kelompok`
--
ALTER TABLE `kelompok`
 ADD PRIMARY KEY (`id_kelompok`);

--
-- Indexes for table `leporan`
--
ALTER TABLE `leporan`
 ADD PRIMARY KEY (`id_lap`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
MODIFY `id_detail` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kelompok`
--
ALTER TABLE `kelompok`
MODIFY `id_kelompok` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `leporan`
--
ALTER TABLE `leporan`
MODIFY `id_lap` int(5) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
