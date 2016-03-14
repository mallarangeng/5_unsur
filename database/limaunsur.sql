-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Mar 2016 pada 10.40
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
  `stat` varchar(10) NOT NULL,
  `publis` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail`
--

INSERT INTO `detail` (`id_detail`, `id_lap`, `kendala`, `solusi`, `ket`, `stat`, `publis`) VALUES
(1, 10001, 'xxxx', 'xxxxx', 'xxxx', '', 'Y'),
(2, 10001, 'Peserta sering ribut', 'Metode Pengajaran di gunakan ', 'Opt', '', 'Y'),
(3, 10001, 'Perlu diadakan toour', 'Tour akan diadakan Bulan Depan', 'Insya allah', '', 'Y'),
(4, 10006, 'Bersama surat ini kami  bermaksud mengajukan permohon untuk menjadi anggota gapensi kota tangerang dengan data perusahaan sebagai berikut ', 'Bersama surat ini kami  bermaksud mengajukan permohon untuk menjadi anggota gapensi kota tangerang dengan data perusahaan sebagai berikut ', '-', '', 'Y'),
(5, 10006, 'Demikian surat permohonan ini  atas perhatian dan kerjasamanya kami ucapkan terimakasih Demikian surat permohonan ini  atas perhatian dan kerjasamanya kami ucapkan terimakasih', 'Demikian surat permohonan ini  atas perhatian dan kerjasamanya kami ucapkan terimakasih Demikian surat permohonan ini  atas perhatian dan kerjasamanya kami ucapkan terimakasih', '-', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok`
--

CREATE TABLE IF NOT EXISTS `kelompok` (
  `id_kelompok` varchar(7) NOT NULL,
  `nm_kelompok` varchar(50) NOT NULL,
  `parent` varchar(7) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `penjab` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelompok`
--

INSERT INTO `kelompok` (`id_kelompok`, `nm_kelompok`, `parent`, `alamat`, `nohp`, `penjab`, `password`, `level`) VALUES
('2016001', 'Pondok Alam Permai', '0', 'Purati', '085715887704', 'Hendri', '202cb962ac59075b964b07152d234b70', 'Desa'),
('2016002', 'Pondok Makmur', '2016001', 'Perum Pondok Makmur', '085715887704', 'Amien Purnomo', '202cb962ac59075b964b07152d234b70', 'Kelompok'),
('2016003', 'Keroncong', '2016001', 'Keroncong Permai', '085715887704', 'Tarmono', '202cb962ac59075b964b07152d234b70', 'Kelompok');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE IF NOT EXISTS `laporan` (
  `id_lap` int(5) NOT NULL,
  `id_kelompok` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `ket` varchar(100) NOT NULL,
  `date_on` date NOT NULL,
  `stat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_lap`, `id_kelompok`, `tanggal`, `ket`, `date_on`, `stat`) VALUES
(10001, 2016002, '2016-03-10', 'Musyawarah 5 Unsur Bulan  maret 2016', '2016-03-14', 'Oke Oke'),
(10002, 2016002, '2016-02-09', 'Musyawarah 5 Unsur Bulan Feb', '2016-03-14', 'Oke'),
(10003, 2016002, '2016-01-13', 'Musyawarah 5 Unsur Bulan Januari', '2016-03-14', 'Oke'),
(10004, 2016002, '2016-04-13', 'Musyawarah Lima Unsur April 2016', '2016-03-14', '-'),
(10005, 2016002, '2016-05-10', 'Laporan Musyawrah Bulan mei 2016', '2016-03-14', 'Oke'),
(10006, 2016003, '2016-03-14', 'Musyawarah Bulan Maret 2016', '2016-03-14', 'Oke');

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
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
 ADD PRIMARY KEY (`id_lap`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
