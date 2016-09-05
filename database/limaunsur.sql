-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 05 Sep 2016 pada 09.42
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
-- Struktur dari tabel `detail`
--

CREATE TABLE IF NOT EXISTS `detail` (
  `id_detail` int(5) NOT NULL,
  `id_lap` int(5) NOT NULL,
  `kendala` text NOT NULL,
  `solusi` text NOT NULL,
  `ket` text NOT NULL,
  `stat` varchar(20) NOT NULL,
  `publis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail`
--

INSERT INTO `detail` (`id_detail`, `id_lap`, `kendala`, `solusi`, `ket`, `stat`, `publis`) VALUES
(1, 10001, 'odeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you  as well as a simple interface and logical structure to access these libraries', 'odeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. were writing code from scratch, by providing a rich set of libraries for commonly needed tasks, ', '', 'Selesai', 'Bagikan'),
(2, 10001, 'odeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you were writing code from scratch, by providing a rich set of libraries for commonly needed tasks, as well as a simple interface and logical structure to access these libraries', 'odeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you were writing code from scratch, by providing a rich set of libraries for commonly needed tasks, as well as a simple interface and logical structure to access these libraries', '', 'Pending', 'Bagikan'),
(3, 10001, ' odeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you were writing code from scratch, by providing a rich set of libraries for commonly needed tasks, as well as a simple interface and logical structure to access these libraries', ' odeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you were writing code from scratch, by providing a rich set of libraries for commonly needed tasks, as well as a simple interface and logical structure to access these libraries', '', 'Progres', 'Sembunyikan'),
(4, 10002, 'people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you were writing code from scratch, by providing a rich set of libraries for commonly needed tasks, as well as a simple interface and logical structure to access these librari', 'people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you were writing code from scratch, by providing a rich set of libraries for commonly needed tasks, as well as a simple interface and logical structure to access these librari', '', 'Selesai', 'Bagikan'),
(5, 10002, 'people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you were writing code from scratch, by providing a rich set of libraries for commonly needed tasks, as well as a simple interface and logical structure to access these librari', 'people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you were writing code from scratch, by providing a rich set of libraries for commonly needed tasks, as well as a simple interface and logical structure to access these librari', '', 'Pending', 'Bagikan'),
(6, 10001, 'CodeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you were writing code from scratch, by providing a rich set of libraries for commonly needed tasks, as well as a simple interface and logical structure to access these libraries', 'CodeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you were writing code from scratch, by providing a rich set of libraries for commonly needed tasks, as well as a simple interface and logical structure to access these libraries', '', 'Pending', 'Sembunyikan'),
(7, 10003, 'odeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you as well as a simple interface and logical structure to access these libraries', 'odeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you as well as a simple interface and logical structure to access these libraries', '', 'Progres', 'Sembunyikan'),
(8, 10003, 'odeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you as well as a simple interface and logical structure to access these libraries', 'odeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you as well as a simple interface and logical structure to access these libraries', '', 'Selesai', 'Sembunyikan'),
(9, 10003, 'odeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you as well as a simple interface and logical structure to access these libraries', 'odeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP. Its goal is to enable you to develop projects much faster than you could if you as well as a simple interface and logical structure to access these libraries', '', 'Pending', 'Bagikan');

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
  `level` varchar(20) NOT NULL,
  `aktif` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelompok`
--

INSERT INTO `kelompok` (`id_kelompok`, `nm_kelompok`, `parent`, `alamat`, `nohp`, `penjab`, `password`, `level`, `aktif`) VALUES
('2016001', 'Pondok Alam Permai  (PAP)', '0', 'Purati', ' 085715887704', 'Hendri Yulianto', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016002', 'Pondok Makmur', '2016001', 'Perum Pondok Makmur 6', '085715887704', 'Amien Purnama', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016003', 'Keroncong', '2016001', 'Keroncong Permai', '085715887704', 'Tarmono', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016004', 'Hendri Yulianto', '0', 'Taman Cibodas', '085715887704', 'Tangerang Barat', '202cb962ac59075b964b07152d234b70', 'Admin', 1),
('2016005', 'Taman Kota', '2016001', 'Taman Kota', '-', 'Muntasir', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016006', 'Jati', '0', 'Jati', '085715887704', 'Rosyid', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016007', 'Jati Baru', '2016006', 'Jati', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016008', 'Jati Lama', '2016006', 'Jati', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016009', 'Bumimas', '2016006', 'Jati', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016010', 'Tangerang Barat', '0', 'Tangerang', '085715887704', 'Firman', '202cb962ac59075b964b07152d234b70', 'Daerah', 1),
('2016011', 'Kutajaya', '0', 'Kutajaya', '085715887704', 'Happy', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016012', 'Rawacana', '2016006', 'Jati', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016013', 'Purati', '2016001', 'Purati', '-', 'Edo', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016014', 'Bermis', '2016011', 'Bermis', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016015', 'Gelam', '2016011', 'Gelam', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016016', 'Wisma Mas', '2016011', 'Wisma Mas', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016017', 'Puri', '2016011', 'Puri', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016018', 'Taman Raya', '2016011', 'Taman Raya', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016019', 'Rajeg Asri', '2016011', 'Rajeg Asri', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016020', 'Tangerang Elok', '2016011', 'Tangerang Elok', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016021', 'Walet', '2016011', 'Walet', ' -', '085715887704', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016022', 'Jayanti', '0', '-', ' -', '-', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016023', 'Sempur I', '2016022', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016024', 'Sempur II', '2016022', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016025', 'Adiyasa', '2016022', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016026', 'Sumur Bandung', '2016022', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016027', 'Balaraja', '2016022', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016028', 'Bukit Gading', '2016022', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016029', 'Tigaraksa', '0', '-', ' -', '-', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016030', 'Tigaraksa I', '2016029', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016031', 'Tigaraksa II', '2016029', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016032', 'Rancagede', '2016029', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016033', 'Mustika', '2016029', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016034', 'Bidara', '2016029', '-', ' -', '-', '024d7f84fff11dd7e8d9c510137a2381', 'Kelompok', 0),
('2016035', 'Sudirman', '2016029', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016036', 'Cikupa', '0', '-', ' -', '-', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016037', 'Cikupa', '2016036', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016038', 'Bitung', '2016036', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016039', 'Citra Raya', '2016036', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016040', 'Graha Citra', '2016036', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016041', 'Periuk Jaya', '0', '-', '  -', '-', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016042', 'Periuk Jaya I', '2016041', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016043', 'Periuk Jaya II', '2016041', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016044', 'Sangiang', '2016041', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016045', 'Total', '2016041', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016046', 'Pondok Arum', '2016041', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016047', 'Kutabumi', '2016041', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016048', 'Kutabaru Permai', '2016041', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016049', 'Kutabaru Sejahtera', '2016041', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016050', 'Cangkudu', '2016022', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0);

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
  `stat` int(2) NOT NULL,
  `in_ds` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_lap`, `id_kelompok`, `tanggal`, `ket`, `date_on`, `stat`, `in_ds`) VALUES
(10001, 2016002, '2016-09-06', 'Musyawarah 5 Unsur', '2016-09-04', 1, 0),
(10002, 2016003, '2016-08-03', 'Musyawarah 5 Unsur', '2016-09-04', 1, 0),
(10003, 2016005, '2016-07-07', 'Musyawarah 5 Unsur', '2016-09-05', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(4) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `folder` varchar(30) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `parent` int(4) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `urut` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `title`, `folder`, `link`, `level`, `parent`, `icon`, `urut`) VALUES
(1, 'Home', 'home', 'home', 'Kelompok', 0, 'glyphicon-send', 1),
(2, 'Laporan', 'laporan', 'laporan', 'Kelompok', 0, 'glyphicon-comment', 2),
(3, 'Menu', 'menu', 'menu', 'Admin', 0, 'glyphicon-cog', 2),
(4, 'Home', 'home', 'home', 'Desa', 0, 'glyphicon-globe', 1),
(5, 'Data Kelompok', 'kelompok', 'kelompok', 'Admin', 0, 'glyphicon-map-marker', 3),
(6, 'Home', 'home', 'home', 'Admin', 0, 'glyphicon-globe', 1),
(7, 'Laporan', 'laporan', 'laporan_periode', 'Desa', 0, 'glyphicon-comment', 1),
(8, 'Kelompok', 'kelompok', 'kelompok_desa', 'Desa', 0, 'glyphicon-map-marker', 4),
(9, 'Setting', 'profile', 'profile_show', 'Kelompok', 0, ' glyphicon-cog', 4),
(10, 'Laporan', 'laporan', 'laporan_periode_daerah', 'Daerah', 0, 'glyphicon-comment', 1),
(11, 'Pending', 'detail', 'detail_pend', 'Kelompok', 0, 'glyphicon-exclamation-sign', 3),
(12, 'Setting', 'profile', 'profile_show', 'Desa', 0, 'glyphicon-cog', 4);

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

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
