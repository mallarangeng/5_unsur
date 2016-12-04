-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2016 at 12:34 AM
-- Server version: 5.6.24
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
-- Table structure for table `conten`
--

CREATE TABLE IF NOT EXISTS `conten` (
  `id` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `conten` text NOT NULL,
  `tgl` date NOT NULL,
  `publish` varchar(5) NOT NULL,
  `label` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conten`
--

INSERT INTO `conten` (`id`, `judul`, `kategori`, `conten`, `tgl`, `publish`, `label`) VALUES
(1, 'Panduan Penggunaan Aplikasi', 'Info', '<p>Panduan penggunaan aplikasi</p>\r\n', '2016-12-01', 'Y', '[Baru]'),
(2, 'Tugas Tugas bidang dalam PPG', 'Artikel', '<h3>A. Bidang Kegiatan muda mudi</h3>\r\n\r\n<p>1. Memiliki biodata / database muda mudi (Pra remaja, Remaja dan Pranikah)</p>\r\n\r\n<p>2. Menyusun program kegiatan muda mudi</p>\r\n\r\n<p><em>A. Praremaja Usia 12 s/d 15 Tahun</em></p>\r\n\r\n<p><em>B. Remaja Usia 15</em><em> s/d 18 Tahun</em></p>\r\n\r\n<p><em>C. Usia Nikah 18</em><em> s/d 30 Tahun</em></p>\r\n\r\n<p><strong>Contoh :</strong> Program percepatan ketercapaian target&nbsp; Kurikulum, <strong>CAI, Kompetisi Olah Raga, Pengajian Unik / Usia Nikah, Anjangsana, Outing Class, Outbond, Boothcamp (Penggemblengan Pengurus) Seminar, Kepramukaan</strong></p>\r\n\r\n<p>3. Melaksanakan turba pengurus muda mudi daerah ke pengajian muda mudi desa dan kelompok</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>B. Penanggung Jawab Program Tingkat Desa</h3>\r\n\r\n<p>1. Bertanggung jawab terhadap pelaksanaan kegiatan pembinaan generus sedesa sesuai dengan program PPG yang telah disusun.&nbsp;</p>\r\n\r\n<p>2. Mengontrol dan memotivasi terhadap pelaksanaan pembinaan generus &nbsp;dikelompok</p>\r\n\r\n<p>3. Melaporkan pembinaan generus ke Pengurus PPG</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>C. Penanggungjawab Program program tingkat kelompok</h3>\r\n\r\n<p>1. Bertanggungjawab terhadap pelaksanaan kegiatan pembinaan generus dikelompok sesuai dengan program PPG &nbsp;yang telah disusun</p>\r\n\r\n<p>2. Berkoordinasi dengan <strong>lima unsur&nbsp;</strong>pembina generus terkait dengan pembinaan generus.&nbsp;</p>\r\n\r\n<p>3. Mengupayakan ketercapaian target kurikulum&nbsp;</p>\r\n\r\n<p>4. Melakukan evaluasi terhadap pencapaian target kurikulum.&nbsp;</p>\r\n\r\n<p>5. Melaporkan hasil kegiatan belajar mengajar kepada penanggung jawab tingkat desa</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>NB : Tugas Bidang bidang PPG Bersifat kolektif pelaksanaanya dengan cara musyawarah</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2016-12-01', 'Y', ''),
(3, '6 Aspek Standar Keberhasilan Generus', 'Artikel', '<p><strong>A. Managemen Dan Administrasi</strong></p>\r\n\r\n<p>1. memiliki Jadwal rutin pengajian</p>\r\n\r\n<p>2. Memiliki database generus dan guru</p>\r\n\r\n<p>3. Memiliki guru tetap (Ratio 1:20)</p>\r\n\r\n<p>4. Memiliki Kurikulum / pengembangan materi</p>\r\n\r\n<p>5. memiliki Buku panduan guru dan siswa</p>\r\n\r\n<p>6. memiliki Buku penghubung dengan orang tua</p>\r\n\r\n<p>7. Memiliki buku presensi dan jadwal harian</p>\r\n\r\n<p><strong>B. SARANA PENUNJANG</strong></p>\r\n\r\n<p>1. Memiliki ruang belajar</p>\r\n\r\n<p>2. Memiliki meja belajar, Withboard , lemari</p>\r\n\r\n<p>3. Memiliki tempat dan sarana bermain</p>\r\n\r\n<p>4. Memiliki media pembelajaran (LCD,AP,AV dll)</p>\r\n\r\n<p>5. Memiliki seragam siswa dan guru</p>\r\n\r\n<p><strong>C. Kegiatan Belajar Mengajar (KBM)</strong></p>\r\n\r\n<p>1. Melaksanakan KBM secara rutin dan berkesinambungan</p>\r\n\r\n<p>2. Melaksanakan evaluasi hasil belajar dan pemberian apresiasi.&nbsp;</p>\r\n\r\n<p>3. Melaksanakan / menyusun laporan ketercapaian target kurikulum</p>\r\n\r\n<p>4. Malaksanakan program tindak lanjut (Remedial dan tindak lanjut)</p>\r\n\r\n<p>5. Pembekalan peningkatan SDM guru/pengajar</p>\r\n\r\n<p>6. Mencetak asisten guru dari generus dan orang tua</p>\r\n\r\n<p>7. Melaksanakan musyawarah rutin para guru</p>\r\n\r\n<p>8. Refreshing siswa dan guru</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2016-12-01', 'Y', ''),
(4, 'Petunjuk Teknis Pelaksanaan Musyawarah lima (5) Unsur', 'Artikel', '<p><span style="color:#ff0000"><strong>TUJUAN</strong></span></p>\r\n\r\n<ol>\r\n	<li>Mengevaluasi pelaksanaan belajar mengajar (KBM) di kelompok</li>\r\n	<li>Meningkatkan koordinasi dan kerjasama lima unsur&nbsp;</li>\r\n	<li>Meningkatkan Peran serta dan lima unsur pembina generus dikelompok</li>\r\n</ol>\r\n\r\n<p><strong>PESERTA</strong></p>\r\n\r\n<ol>\r\n	<li>Keimaman kelompok</li>\r\n	<li>Para orang tua</li>\r\n	<li>Mubaligh Mubalighot&nbsp; (Tugasan, Setempat, Asisten)</li>\r\n	<li>Pengurus Kelompok</li>\r\n	<li>Pakar Pendidik (Guru, Dosen, Psikolog, Sarjana Dll.)</li>\r\n</ol>\r\n\r\n<p><strong>WAKTU</strong></p>\r\n\r\n<ul>\r\n	<li>Menyesuaikan (Bisa menggunakan Salah satu atau sebagian waktu pengajian kelompok)</li>\r\n</ul>\r\n\r\n<p><strong>PELAKSANA</strong></p>\r\n\r\n<ul>\r\n	<li>Minimal satu kali dalam satu bulan</li>\r\n</ul>\r\n\r\n<p><strong>CONTOH SUSUNAN ACARA</strong></p>\r\n\r\n<table class="table table-bordered">\r\n	<caption>Contoh Susunan Acara</caption>\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">NO</th>\r\n			<th scope="col">ACARA</th>\r\n			<th scope="col">PENYAJI</th>\r\n			<th scope="col">KETERANGAN</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Nasehat Pembukaan</td>\r\n			<td>Keimaman Kelompok</td>\r\n			<td>&nbsp;+ 15 Menit</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Sosialisasi / Evaluasi Program PG</td>\r\n			<td>Pengurus PPG Penanggung Jawab KBM Tingkat kelompok</td>\r\n			<td>Mengevaluasi (Melaporkan)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt="" class="img-responsive" src="https://avatars1.githubusercontent.com/u/7261043?v=3&amp;s=400" /></p>\r\n', '2016-12-01', 'Y', '[Penting]'),
(5, 'Semangat dan kepedulian lima unsur Menjadi kunci keberhasilan pembinaan generasi penerus', 'Artikel', '<p>1. Punya kesadaran yang tinggi untuk manetapi kewajiban ibadah terutama sholat</p>\r\n\r\n<p>2.&nbsp;Bersemangat dalam mencari ilmu</p>\r\n\r\n<p>3. Senang beramal sholih&nbsp;</p>\r\n\r\n<p>4. Bisa takdim kepada orang-orang yang berhak ditakdimi&nbsp;</p>\r\n', '2016-12-01', 'Y', ''),
(6, 'Peran dan tugas lima (5) Unsur', 'Artikel', '<p><strong>A. PERAN DAN TUGAS ORANG TUA</strong></p>\r\n\r\n<p>1. Mendoakan Putra dan putrinya agar berhasil dunia akhirat</p>\r\n\r\n<p>2. Memberikan pengawasan dan pembinaan pada putra &amp; putrinya agar tidak terseret arus pergaulan remaja dan gaya hidup yang tidak sesuai dengan ajaran agama seperti : cara berpakaiyan, penggunaan alat elektronik dsb.&nbsp;</p>\r\n\r\n<p>3. Mendukung program program generus yang telah di musyawarahkan olh PPG maupun lima unsur pembina generus.&nbsp;</p>\r\n\r\n<p>4. Ikut aktif dalam&nbsp;<u><em><strong>pelaksanaan musyawarah</strong></em></u>&nbsp;lima unsur &nbsp;pembinaan generus.</p>\r\n\r\n<p>5. ikut mengontrol ketercapaian target kurikulum putra putrinya</p>\r\n\r\n<p><strong>B. PERAN DAN TUGAS MUBALIGH MUBALIGHOT</strong></p>\r\n\r\n<p>1. Membuat persiapan pembelajaran.&nbsp;</p>\r\n\r\n<p>2. mengajar dan mendidik kepada generasi dan penerus dengan hati ridho dan karena allah.</p>\r\n\r\n<p>3. Melaksanakan evaluasi dan tindak lanjut (Remedial, Pengayaan dan Laporan)</p>\r\n\r\n<p>4. Memberikan teladan dalam prilaku sehari hari sehingga menjadi contoh dan panutan bagi para generus</p>\r\n\r\n<p>5. Memberikan motivasi pada generus&nbsp;</p>\r\n', '2016-12-02', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `detail`
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
-- Dumping data for table `detail`
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
-- Table structure for table `kelompok`
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
-- Dumping data for table `kelompok`
--

INSERT INTO `kelompok` (`id_kelompok`, `nm_kelompok`, `parent`, `alamat`, `nohp`, `penjab`, `password`, `level`, `aktif`) VALUES
('2016001', 'Pondok Alam Permai  (PAP)', '0', 'Purati', ' 085715887704', 'Hendri Yulianto', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016002', 'Pondok Makmur', '2016001', 'Perum Pondok Makmur 6', '085715887704', 'Amien Purnama', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016003', 'Keroncong', '2016001', 'Keroncong Permai', '085715887704', 'Tarmono', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016004', 'PPG TANGERANG BARAT', '0', 'Taman Cibodas', ' 085715887704', 'Tangerang Barat', '202cb962ac59075b964b07152d234b70', 'Admin', 1),
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
-- Table structure for table `laporan`
--

CREATE TABLE IF NOT EXISTS `laporan` (
  `id_lap` int(5) NOT NULL,
  `id_kelompok` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `ket` varchar(100) NOT NULL,
  `date_on` date NOT NULL,
  `stat` int(2) NOT NULL,
  `turba` varchar(5) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_lap`, `id_kelompok`, `tanggal`, `ket`, `date_on`, `stat`, `turba`, `nama`) VALUES
(10001, 2016002, '2016-09-06', 'Musyawarah 5 Unsur', '2016-09-04', 1, 'Ya', 'Fahmi Ridho'),
(10002, 2016003, '2016-08-03', 'Musyawarah 5 Unsur', '2016-09-04', 1, 'Ya', 'Hendri Yulianto'),
(10003, 2016005, '2016-07-07', 'Musyawarah 5 Unsur', '2016-09-05', 1, 'Tidak', 'Firman'),
(10004, 2016002, '2016-12-01', 'Musyawarah 5 Unsur', '0000-00-00', 0, 'Ya', 'Agus B'),
(10005, 2016002, '2016-11-15', 'Musyawarah 5 Unsur', '2016-12-01', 0, 'Tidak', 'Fahmi Ridho');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
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
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `title`, `folder`, `link`, `level`, `parent`, `icon`, `urut`) VALUES
(2, 'Laporan', 'laporan', 'laporan', 'Kelompok', 0, 'glyphicon-cloud', 2),
(3, 'Menu', 'menu', 'menu', 'Admin', 0, 'glyphicon-cog', 2),
(5, 'Data Kelompok', 'kelompok', 'kelompok', 'Admin', 0, 'glyphicon-map-marker', 3),
(7, 'Laporan', 'laporan', 'laporan_periode', 'Desa', 0, 'glyphicon-comment', 1),
(8, 'Kelompok', 'kelompok', 'kelompok_desa', 'Desa', 0, 'glyphicon-map-marker', 4),
(9, 'Setting', 'profile', 'profile_show', 'Kelompok', 0, ' glyphicon-cog', 4),
(10, 'Laporan', 'laporan', 'laporan_periode_daerah', 'Daerah', 0, 'glyphicon-comment', 1),
(11, 'Pending', 'detail', 'detail_pend', 'Kelompok', 0, 'glyphicon-exclamation-sign', 3),
(12, 'Setting', 'profile', 'profile_show', 'Desa', 0, 'glyphicon-cog', 4),
(13, 'Artikel / Info', 'conten', 'conten', 'Admin', 0, 'glyphicon glyphicon-ok', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conten`
--
ALTER TABLE `conten`
  ADD PRIMARY KEY (`id`);

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

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conten`
--
ALTER TABLE `conten`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
