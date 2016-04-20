-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20 Apr 2016 pada 02.24
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
(1, 10001, 'Ketika menjelang sholat magrib cabe rawit sering rebut, ketika mulai rukuk baru diam dan sholat', 'Orang tua supaya sesekali memantau kegiataan pengajian caberawit dikelompok, dan memberi pengarahan kepada putra putrinya', '', 'Selesai', 'Sembunyikan'),
(2, 10001, 'Caberawit yang jauh jauh jarang hadir, supaya ada perhatian juga oleh pengurus, supaya mereka bisa lancer dalam mengajinya.', 'Akan dibahawas sewaktu musyawarah 4 s kelompok, dan konsultasi dengan orangtua siswa-siswi yang jauh dari komplek', '-', 'Selesai', 'Sembunyikan'),
(3, 10001, 'Disaat libur panjang sekolah supaya durasi / waktu pengajian ditambah', 'Segera dimusyawarahkan menjelang libur sekolah', 'Insya allah', 'Proses', 'Bagikan'),
(4, 10006, 'Bersama surat ini kami  bermaksud mengajukan permohon untuk menjadi anggota gapensi kota tangerang dengan data perusahaan sebagai berikut 2', 'Bersama surat ini kami  bermaksud mengajukan permohon untuk menjadi anggota gapensi kota tangerang dengan data perusahaan sebagai berikut 2', '2', 'Selesai', 'Bagikan'),
(5, 10006, 'Demikian surat permohonan ini  atas perhatian dan kerjasamanya kami ucapkan terimakasih Demikian surat permohonan ini  atas perhatian dan kerjasamanya kami ucapkan terimakasih', 'Demikian surat permohonan ini  atas perhatian dan kerjasamanya kami ucapkan terimakasih Demikian surat permohonan ini  atas perhatian dan kerjasamanya kami ucapkan terimakasih', '-', 'Proses', 'Sembunyikan'),
(6, 10001, 'Kehadiran pengajian muda mudi kelompok sangat minim, dari total peserta 12 muda/I, yang sering hadir 2-3 orang saja', 'Akan dikumpulkan seluruh muda mudi dan diberi pengarahan khusus oleh keimaman kelompok. ', '-', 'Selesai', 'Bagikan'),
(7, 10001, 'Kehadiran pengajian muda mudi kelompok sangat minim, dari total peserta 12 muda/I, yang sering hadir 2-3 orang saja', 'Kehadiran pengajian muda mudi kelompok sangat minim, dari total peserta 12 muda/I, yang sering hadir 2-3 orang saja', '-', 'Selesai', 'Sembunyikan'),
(8, 10009, 'bagian atau fungsional pada perusahaan. General manager memimpin beberapa unit bidang fungsi pekerjaan yang mengepalai beberapa atau seluruh manager fungsional. General manager bertugas untuk mengambil keputusan dan tanggung jawab atas tercapainya ', 'bagian atau fungsional pada perusahaan. General manager memimpin beberapa unit bidang fungsi pekerjaan yang mengepalai beberapa atau seluruh manager fungsional. General manager bertugas untuk mengambil keputusan dan tanggung jawab atas tercapainya ', '-', 'Selesai', 'Bagikan'),
(9, 10009, 'bagian atau fungsional pada perusahaan. General manager memimpin beberapa unit bidang fungsi pekerjaan yang mengepalai beberapa atau seluruh manager fungsional. General manager bertugas untuk mengambil keputusan dan tanggung jawab atas tercapainya ', 'bagian atau fungsional pada perusahaan. General manager memimpin beberapa unit bidang fungsi pekerjaan yang mengepalai beberapa atau seluruh manager fungsional. General manager bertugas untuk mengambil keputusan dan tanggung jawab atas tercapainya ', '-', 'Selesai', 'Bagikan'),
(10, 10009, 'bagian atau fungsional pada perusahaan. General manager memimpin beberapa unit bidang fungsi pekerjaan yang mengepalai beberapa atau seluruh manager fungsional. General manager bertugas untuk mengambil keputusan dan tanggung jawab atas tercapainya ', 'bagian atau fungsional pada perusahaan. General manager memimpin beberapa unit bidang fungsi pekerjaan yang mengepalai beberapa atau seluruh manager fungsional. General manager bertugas untuk mengambil keputusan dan tanggung jawab atas tercapainya ', '-', 'Selesai', 'Bagikan'),
(11, 10010, 'Orang tua supaya sesekali memantau kegiataan pengajian caberawit dikelompok, dan memberi pengarahan kepada putra putrinya ', 'Orang tua supaya sesekali memantau kegiataan pengajian caberawit dikelompok, dan memberi pengarahan kepada putra putrinya ', '-', 'Selesai', 'Bagikan'),
(12, 10011, '1.	Bulan februari 2016 turba ppg terlaksana 2 kelompok dari 4 kelompok, Taman kota dan keroncong', '1.	Bulan februari 2016 turba ppg terlaksana 2 kelompok dari 4 kelompok, Taman kota dan keroncong', '-', 'Selesai', 'Bagikan'),
(13, 10012, '1.	Bulan februari 2016 turba ppg terlaksana 2 kelompok dari 4 kelompok, Taman kota dan keroncong', '1.	Bulan februari 2016 turba ppg terlaksana 2 kelompok dari 4 kelompok, Taman kota dan keroncong', '-', 'Selesai', 'Bagikan'),
(14, 10012, '1.	Bulan februari 2016 turba ppg terlaksana 2 kelompok dari 4 kelompok, Taman kota dan keroncong', '1.	Bulan februari 2016 turba ppg terlaksana 2 kelompok dari 4 kelompok, Taman kota dan keroncong', '-', 'Selesai', 'Bagikan'),
(15, 10013, '1.	Bulan februari 2016 turba ppg terlaksana 2 kelompok dari 4 kelompok, Taman kota dan keroncong', '1.	Bulan februari 2016 turba ppg terlaksana 2 kelompok dari 4 kelompok, Taman kota dan keroncong', '-', 'Selesai', 'Bagikan'),
(16, 10004, 'Perbaikan Gangguan Gardu', 'Perbaikan Gangguan Gardu', '-', 'Selesai', 'Bagikan'),
(17, 10004, 'Perbaikan Gangguan Gardu', 'Perbaikan Gangguan Gardu', 'Perbaikan Gangguan Gardu', 'Selesai', 'Bagikan');

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
('2016001', 'Pondok Alam Permai ', '0', 'Purati', '085715887704', 'Hendri Yulianto', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016002', 'Pondok Makmur', '2016001', 'Perum Pondok Makmur', '085715887704', 'Amien Purnomo', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016003', 'Keroncong', '2016001', 'Keroncong Permai', '085715887704', 'Tarmono', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016004', 'Hendri Yulianto', '0', 'Taman Cibodas', '085715887704', 'Tangerang Barat', '202cb962ac59075b964b07152d234b70', 'Admin', 1),
('2016005', 'Taman Kota', '2016001', 'Taman Kota', '085715887704', 'Muntasir', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016006', 'Jati', '0', 'Jati', '085715887704', 'Rosyid', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016007', 'Jati Baru', '2016006', 'Jati', '085715887704', 'A. Karim', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016008', 'Jati Lama', '2016006', 'Jati', '085715887702', 'zae', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016009', 'Bumimas', '2016006', 'Jati sd', '0877777', 'Wahyu', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016010', 'Tangerang Barat', '0', 'Tangerang', '--', '--', '202cb962ac59075b964b07152d234b70', 'Daerah', 1),
('2016011', 'Kutajaya', '0', 'Kutajaya', '0877777', 'Happy', '202cb962ac59075b964b07152d234b70', 'Desa', 0);

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
  `stat` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_lap`, `id_kelompok`, `tanggal`, `ket`, `date_on`, `stat`) VALUES
(10001, 2016002, '2016-03-10', 'Musyawarah 5 Unsur Bulan  Februari', '2016-03-14', 1),
(10002, 2016002, '2016-02-09', 'Musyawarah 5 Unsur Januari', '2016-03-14', 0),
(10003, 2016002, '2016-01-13', 'Musyawarah 5 Unsur Bulan Januari', '2016-03-14', 1),
(10004, 2016002, '2016-10-11', 'Musyawarah Lima Unsur April 2016', '2016-03-14', 0),
(10005, 2016002, '2016-05-10', 'Laporan Musyawrah Bulan mei 2016', '2016-03-14', 0),
(10006, 2016003, '2016-03-14', 'Musyawarah Bulan Maret 2016', '2016-03-14', 0),
(10007, 2016002, '2016-04-11', 'Musyawarah 5 Unsur Bulan maret', '2016-03-16', 0),
(10008, 2016002, '2016-06-08', '-', '2016-03-16', 0),
(10009, 2016003, '2016-04-14', 'Musyawarah 5 Unsur', '2016-03-16', 0),
(10010, 2016005, '2016-03-16', 'Musyawarah 5 Unsur', '2016-03-16', 0),
(10011, 2016007, '2016-03-09', 'Musyawarah 5 Unsur', '2016-04-07', 0),
(10012, 2016007, '2016-04-07', 'Musyawarah 5 Unsur', '2016-04-07', 0),
(10013, 2016008, '2016-03-09', 'Musyawarah 5 Unsur', '2016-04-07', 0),
(10014, 2016002, '2017-01-10', 'Musyawarah 5 Unsur', '2016-04-11', 0),
(10015, 2016002, '2016-04-13', 'Musyawarah 5 Unsur', '2016-04-11', 0);

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
(1, 'Home', 'home', 'home', 'Kelompok', 0, 'glyphicon-globe', 1),
(2, 'Laporan', 'laporan', 'laporan', 'Kelompok', 0, 'glyphicon-comment', 2),
(3, 'Menu', 'menu', 'menu', 'Admin', 0, 'glyphicon-cog', 2),
(4, 'Home', 'home', 'home', 'Desa', 0, 'glyphicon-globe', 1),
(5, 'Data Kelompok', 'kelompok', 'kelompok', 'Admin', 0, 'glyphicon-map-marker', 3),
(6, 'Home', 'home', 'home', 'Admin', 0, 'glyphicon-globe', 1),
(7, 'Laporan', 'laporan', 'laporan_periode', 'Desa', 0, 'glyphicon-comment', 1),
(8, 'Kelompok', 'kelompok', 'kelompok_desa', 'Desa', 0, 'glyphicon-map-marker', 4),
(9, 'Setting', 'kelompok', 'kelompok_view', 'Kelompok', 0, ' glyphicon-cog', 3),
(10, 'Laporan', 'laporan', 'laporan_periode_daerah', 'Daerah', 0, 'glyphicon-comment', 1);

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
