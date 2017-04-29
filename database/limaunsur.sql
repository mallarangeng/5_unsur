-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29 Apr 2017 pada 01.16
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
-- Struktur dari tabel `conten`
--

CREATE TABLE IF NOT EXISTS `conten` (
  `id` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `conten` text NOT NULL,
  `tgl` date NOT NULL,
  `publish` varchar(5) NOT NULL,
  `label` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `conten`
--

INSERT INTO `conten` (`id`, `judul`, `kategori`, `conten`, `tgl`, `publish`, `label`) VALUES
(1, 'Panduan Penggunaan Aplikasi', 'Info', '<p><span style="color:#000080">Buka bwoser &nbsp;kemudian di url ketikan alamat </span><a href="https://kbm.ppg-tangbar.com"><span style="color:#0000cd">www.kbm.ppg-tangbar.com</span></a><span style="color:#000080">&nbsp;kemudian akan tampil halaman login :&nbsp;</span></p>\r\n\r\n<p><img alt="" src="http://kbm.ppg-tangbar.com/upload/1.png" style="height:622px; width:350px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#000080">Masukan userid dan password &nbsp;kemudian &nbsp;klik masuk :&nbsp;</span></p>\r\n\r\n<p><br />\r\n<img alt="" src="http://kbm.ppg-tangbar.com/upload/2.png" style="height:622px; width:350px" /></p>\r\n\r\n<p><span style="color:#000080">Kamudian akan tampil halaman utama program, untuk memulai membuat laporan klik button <strong>Buat Laporan&nbsp;</strong>akan tampil halaman laporan, seperti berikut :&nbsp;</span></p>\r\n\r\n<p><img alt="" src="http://kbm.ppg-tangbar.com/upload/3.png" style="height:587px; width:330px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#000080">Kemudan klik</span> <strong><span style="color:#008080">TAMBAH DATA&nbsp;</span></strong><span style="color:#000080">&nbsp;akan tampil halaman seperti dibawah ini :&nbsp;</span></p>\r\n\r\n<p><img alt="" src="http://kbm.ppg-tangbar.com/upload/4.png" style="height:622px; width:350px" /></p>\r\n\r\n<p><span style="color:#000080">Masukan tanggal / periode musyawarah, &nbsp;dan nama penrobos PPG yang dijadwalkan turba, kemudian keterangan hadir atau tidak kemudian klik tombol <strong>simpan</strong></span></p>\r\n\r\n<p><span style="color:#000080">akan tampil halaman sebagai berikut :&nbsp;</span></p>\r\n\r\n<p><img alt="" src="http://kbm.ppg-tangbar.com/upload/3.png" style="height:622px; width:350px" /></p>\r\n\r\n<p><span style="color:#000080">Untuk menambahkan motulen musyawarah tekan tombol <strong>POINT&nbsp;</strong>&nbsp;kemudian klik tombol <strong>tambah notulen</strong>&nbsp; akan muncul tampilan seperti dibawah ini :&nbsp;</span></p>\r\n\r\n<p><span style="color:#000080"><img alt="" src="http://kbm.ppg-tangbar.com/upload/6.png" style="height:587px; width:330px" /></span></p>\r\n\r\n<p><span style="color:#000080">masukan kendala dan solusi dari hasil musyawarah atau point point lainya dari hasil musawrah dan isikan status :&nbsp;<em>Progres, selesai atau pending&nbsp;</em>Kemudian pada pilihan &nbsp;share :&nbsp;<em>Sembunyikan atau bagikan&nbsp;</em>&nbsp;<strong>Pilih : Sembunyikan&nbsp;</strong>agar hasil musyawarah <strong>tidak dapat dibaca</strong> oleh kelompok lain <strong>Pilih Bagikan&nbsp;</strong>maka hasil musyawarah <strong>akan dapat di baca &nbsp;</strong>oleh kelompok kelompok lain.&nbsp;</span></p>\r\n\r\n<p><span style="color:#000080">kemudian klik&nbsp;<strong>simpan&nbsp;</strong>akan tampil &nbsp;halaman sebagai berikut&nbsp;</span></p>\r\n\r\n<p><span style="color:#000080"><img alt="" src="http://kbm.ppg-tangbar.com/upload/7.png" style="height:622px; width:350px" /></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#000080">Setelah semua hasil musyawarah tercatat tekan tombol <strong>kembali &nbsp;</strong>&nbsp;akan tampil halaman sebagai berikut :&nbsp;</span></p>\r\n\r\n<p><img alt="" src="http://kbm.ppg-tangbar.com/upload/8.png" style="height:587px; width:330px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#000080">kemudian ketik tombol <strong>belum dikirim&nbsp;</strong>&nbsp;akan tampil pertanyaan kirim laporan musyawarah ke desa dan daerah pilih&nbsp;<strong>&nbsp;KIRIM LAPORAN</strong>, Akan tampil halaman sebagai berikut :&nbsp;</span></p>\r\n\r\n<p><span style="color:#000080"><img alt="" src="http://kbm.ppg-tangbar.com/upload/9.png" style="height:587px; width:330px" /></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#000080">Hasil Musyawarah telah terkirim ke desa dan daerah &nbsp;: )</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2016-12-01', 'Y', '[Baru]'),
(2, 'Tugas Tugas bidang dalam PPG', 'Artikel', '<p><strong>A. Bidang Kegiatan muda mudi</strong></p>\r\n\r\n<ol>\r\n	<li>Memiliki biodata / database muda mudi (Pra remaja, Remaja dan Pranikah)</li>\r\n	<li>Menyusun program kegiatan muda mudi\r\n	<ol>\r\n		<li>Praremaja Usia 12 s/d 15 Tahun</li>\r\n		<li>Remaja Usia 15 s/d 18 Tahun</li>\r\n		<li>Usia Nikah 18 s/d 30 Tahun&nbsp;</li>\r\n		<li>Contoh : Program percepatan ketercapaian target &nbsp;Kurikulum, CAI, Kompetisi Olah Raga, Pengajian Unik / Usia Nikah, Anjangsana, Outing Class, Outbond, Boothcamp (Penggemblengan Pengurus) Seminar, Kepramukaan</li>\r\n	</ol>\r\n	</li>\r\n	<li>Melaksanakan turba pengurus muda mudi daerah ke pengajian muda mudi desa dan kelompok</li>\r\n</ol>\r\n\r\n<p><strong>B. Penanggung Jawab Program Tingkat Desa</strong></p>\r\n\r\n<ol>\r\n	<li>Bertanggung jawab terhadap pelaksanaan kegiatan pembinaan generus sedesa sesuai dengan program PPG yang telah disusun.</li>\r\n	<li>Mengontrol dan memotivasi terhadap pelaksanaan pembinaan generus &nbsp;dikelompok</li>\r\n	<li>Melaporkan pembinaan generus ke Pengurus PPG</li>\r\n</ol>\r\n\r\n<p><strong>C. Penanggungjawab Program program tingkat kelompok</strong></p>\r\n\r\n<ol>\r\n	<li>Bertanggungjawab terhadap pelaksanaan kegiatan pembinaan generus dikelompok sesuai dengan program PPG &nbsp;yang telah disusun</li>\r\n	<li>Berkoordinasi dengan lima unsur pembina generus terkait dengan pembinaan generus.&nbsp;</li>\r\n	<li>Mengupayakan ketercapaian target kurikulum&nbsp;</li>\r\n	<li>Melakukan evaluasi terhadap pencapaian target kurikulum.&nbsp;</li>\r\n	<li>Melaporkan hasil kegiatan belajar mengajar kepada penanggung jawab tingkat desa</li>\r\n</ol>\r\n\r\n<p><em><strong>NB : Tugas Bidang bidang PPG Bersifat kolektif pelaksanaanya dengan cara musyawarah</strong></em></p>\r\n', '2016-12-01', 'Y', ''),
(3, '6 Aspek Standar Keberhasilan Generus', 'Artikel', '<p><strong>A. Managemen Dan Administrasi</strong></p>\r\n\r\n<ol>\r\n	<li>Memiliki Jadwal rutin pengajian</li>\r\n	<li>Memiliki database generus dan guru</li>\r\n	<li>Memiliki guru tetap (Ratio 1:20)</li>\r\n	<li>Memiliki Kurikulum / pengembangan materi</li>\r\n	<li>Memiliki Buku panduan guru dan siswa</li>\r\n	<li>Memiliki Buku penghubung dengan orang tua</li>\r\n	<li>Memiliki buku presensi dan jadwal harian</li>\r\n</ol>\r\n\r\n<p><strong>B. SARANA PENUNJANG</strong></p>\r\n\r\n<ol>\r\n	<li>Memiliki ruang belajar</li>\r\n	<li>Memiliki meja belajar, Withboard , lemari</li>\r\n	<li>Memiliki tempat dan sarana bermain</li>\r\n	<li>Memiliki media pembelajaran (LCD,AP,AV dll)</li>\r\n	<li>Memiliki seragam siswa dan guru</li>\r\n</ol>\r\n\r\n<p><strong>C. Kegiatan Belajar Mengajar (KBM)</strong></p>\r\n\r\n<ol>\r\n	<li>Melaksanakan KBM secara rutin dan berkesinambungan</li>\r\n	<li>Melaksanakan evaluasi hasil belajar dan pemberian apresiasi.&nbsp;</li>\r\n	<li>Melaksanakan / menyusun laporan ketercapaian target kurikulum</li>\r\n	<li>Malaksanakan program tindak lanjut (Remedial dan tindak lanjut)</li>\r\n	<li>Pembekalan peningkatan SDM guru/pengajar</li>\r\n	<li>Mencetak asisten guru dari generus dan orang tua</li>\r\n	<li>Melaksanakan musyawarah rutin para guru</li>\r\n	<li>Refreshing siswa dan guru</li>\r\n</ol>\r\n\r\n<p><strong>D. Pendanaan&nbsp;</strong></p>\r\n\r\n<ol>\r\n	<li>PPG mempunyai RABK dalam sau tahun</li>\r\n	<li>Daerah mengalokasikan &nbsp;sesuai dengan program skala proritas&nbsp;</li>\r\n	<li>PPG Memiliki sumber dana tetap</li>\r\n	<li>Membuat laporan keugan</li>\r\n</ol>\r\n\r\n<p><strong>E. Mekanisme</strong></p>\r\n\r\n<ol>\r\n	<li>Musyawarah rutin PPG dengan keimaman</li>\r\n	<li>Memiliki penanggung jawab kegiatan KBM tingkat kelompok</li>\r\n	<li>Memiliki pengawas kegiatan generus di desa</li>\r\n	<li>Musyawarah lima unsur rutin di tiap kelompok</li>\r\n	<li>PPG melaksanakan Turba ke kelompok</li>\r\n	<li>Keimaman memiliki jadwal rutin di pengajian generus</li>\r\n	<li>Keimaman memahami aspirasi generus</li>\r\n</ol>\r\n\r\n<p><strong>F. Kerjasama Dengan Pihak Terkait</strong></p>\r\n\r\n<ol>\r\n	<li>Menjalin kerjasama dengan lembaga pendidikan&nbsp;formal dan non formal dalam rangka pelatihan guru (Metode tilawati, Metode Iqro, BCM, Psikologi [Pendidikan Dll]&nbsp;</li>\r\n</ol>\r\n', '2016-12-01', 'Y', ''),
(4, 'Petunjuk Teknis Pelaksanaan Musyawarah lima (5) Unsur', 'Artikel', '<p><strong>TUJUAN</strong></p>\r\n\r\n<ol>\r\n	<li>Mengevaluasi pelaksanaan belajar mengajar (KBM) di kelompok</li>\r\n	<li>Meningkatkan koordinasi dan kerjasama lima unsur&nbsp;</li>\r\n	<li>Meningkatkan Peran serta dan lima unsur pembina generus dikelompok</li>\r\n</ol>\r\n\r\n<p><strong>PESERTA</strong></p>\r\n\r\n<ol>\r\n	<li>Keimaman kelompok</li>\r\n	<li>Para orang tua</li>\r\n	<li>Mubaligh Mubalighot&nbsp; (Tugasan, Setempat, Asisten)</li>\r\n	<li>Pengurus Kelompok</li>\r\n	<li>Pakar Pendidik (Guru, Dosen, Psikolog, Sarjana Dll.)</li>\r\n</ol>\r\n\r\n<p><strong>WAKTU</strong></p>\r\n\r\n<ul>\r\n	<li>Menyesuaikan (Bisa menggunakan Salah satu atau sebagian waktu pengajian kelompok)</li>\r\n</ul>\r\n\r\n<p><strong>PELAKSANA</strong></p>\r\n\r\n<ul>\r\n	<li>Minimal satu kali dalam satu bulan</li>\r\n</ul>\r\n\r\n<p><strong>CONTOH SUSUNAN ACARA</strong></p>\r\n\r\n<table class="table table-bordered">\r\n	<caption>&nbsp;</caption>\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">NO</th>\r\n			<th scope="col">ACARA</th>\r\n			<th scope="col">PENYAJI</th>\r\n			<th scope="col">KETERANGAN</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Nasehat Pembukaan</td>\r\n			<td>Keimaman Kelompok</td>\r\n			<td>&nbsp;+ 15 Menit</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Sosialisasi / Evaluasi Program PG</td>\r\n			<td>Pengurus PPG Penanggung Jawab KBM Tingkat kelompok</td>\r\n			<td>Mengevaluasi (Melaporkan)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>Laporan KBM Generus</td>\r\n			<td>Penanggung jawab Program Kelompok/Mubalig kelompok</td>\r\n			<td>Penjelasan tentang pelaksanaan KBM Caberawit, Pra remaja dan remaja dikelompok serta kendala yang dihadapi&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Musyawarah&nbsp;</td>\r\n			<td>Peserta Musyawrah</td>\r\n			<td>Dipandu Oleh moderator yang ditunjuk&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Doa penutup</td>\r\n			<td>Keimaman kelompok yang</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Catatan :</strong></p>\r\n\r\n<p><em>Contoh susunan acara sebagai acuan, pelaksanaanya menyesuaikan kondisi setempat</em><strong>&nbsp;</strong></p>\r\n', '2016-12-01', 'Y', '[Penting]'),
(5, 'Semangat Dan Kepedulian Lima Unsur  Menjadi Kunci Keberhasilan Pembinaan Generasi Penerus', 'Artikel', '<p><strong>PERILAKU GENERUS YANG TERBINA DENGAN BAIK :</strong></p>\r\n\r\n<ol>\r\n	<li>Punya kesadaran yang tinggi untuk menetapi kewajiban ibadah terutama sholat 5 waktu&nbsp;</li>\r\n	<li>Bersemangat dalam mencari ilmu&nbsp;</li>\r\n	<li>Senang beramal sholih&nbsp;</li>\r\n	<li>Bisa takdim kepada orang-orang yang berhak ditakdimi&nbsp;</li>\r\n	<li>Senang/merasa nyaman bergaul dengan sesama jama&#39;ah&nbsp;</li>\r\n	<li>Selalu berupaya untuk memenuhi keperluanya (baik urusan keduniaan maupun agamanya).&nbsp;</li>\r\n</ol>\r\n\r\n<p><strong>II. NUANSA JAMA&#39;AH DI KELOMPOK, DESA DAN DAERAH YANG PEMBINAAN GENERUSNYA BERJALAN DENGAN BAIK :</strong></p>\r\n\r\n<ol>\r\n	<li>Pelaksanaan sholat berjama&#39;ah dapat diikuti oleh sebagian besar generus&nbsp;</li>\r\n	<li>Waktu-waktu senggang banyak generus yang mencari kemanqulan&nbsp;</li>\r\n	<li>Lingkungan sekitar komplek jama&#39;ah tampak bersih dan teratur</li>\r\n	<li>Untuk kelancaran kegiatan-kegiatan jama&#39;ah/amrin jami&#39; banyak melibatkan generus&nbsp;</li>\r\n	<li>Komplek jama&#39;ah diramaikan dengan kegiatan-kegiatan generus yang positif.&nbsp;</li>\r\n</ol>\r\n\r\n<p><strong>III. SEMANGAT DAN KEPEDULIAN LIMA UNSUR PEMBINA GENERUS :&nbsp;</strong></p>\r\n\r\n<ol>\r\n	<li>Keimaman selalu berupaya menyampaikan tentang pembinaan generus dalam nasehatnya&nbsp;</li>\r\n	<li>Mulai dari keimaman kelompok. Desa dan daerah selalu kompak dalam melaksanakan&nbsp;hasil musyawaroh terkait dengan pembinaan generus.&nbsp;</li>\r\n	<li>Kemubalighan bisa sabar, telaten, dan penuh penjiwaan dalam memberikan pemanqulan&nbsp;pada generus&nbsp;</li>\r\n	<li>Para Mubaligh/tenaga pendidik memahami cara mendidik yang baik sehingga generus&nbsp;merasa senang mengikuti setiap kegiatan yang ada dalam jama&#39;ah&nbsp;</li>\r\n	<li>Semua pengurus dalam jama&#39;ah ikut membantu dan selalu mencarikan solusi untuk kelancaran dan keberhasilan pembinaan generus&nbsp;</li>\r\n	<li>Jama&#39;ah yang mempunyai pengetahuan tentang pendidikan (guru PAUD, TK, SD, SMP,&nbsp;SMU/SMK, dosen, dll) memberikan masukan dan atau ikut secara langsung merumuskan metode pembelajaran yang baik, benar dan menyenangkan&nbsp;</li>\r\n	<li>Semua orang tua mendukung penuh program-program pembinaan generus yang telah&nbsp;disepakati (diputuskan dalam musyawaroh)&nbsp;</li>\r\n	<li>Semua jama&#39;ah selalu berdo&#39;a untuk kelancaran dan keberhasilan pembinaan generus&nbsp;dalam Jama&#39;ah.&nbsp;</li>\r\n</ol>\r\n\r\n<p><strong>LIMA UNSUR PEMBINA GENERUS SECARA BERSAMA BERKEWAJIBAN MENSUKSESKAN&nbsp;<br />\r\nPROGRAM PEMBINAAN GENERUS DALAM JAMA&#39;AH</strong></p>\r\n', '2016-12-01', 'Y', ''),
(6, 'Peran dan tugas lima (5) Unsur', 'Artikel', '<p><strong>A. PERAN DAN TUGAS ORANG TUA</strong></p>\r\n\r\n<ol>\r\n	<li>Mendoakan Putra dan putrinya agar berhasil dunia akhirat</li>\r\n	<li>Memberikan pengawasan dan pembinaan pada putra &amp; putrinya agar tidak terseret arus pergaulan remaja dan gaya hidup yang tidak sesuai dengan ajaran agama seperti : cara berpakaiyan, penggunaan alat elektronik dsb.&nbsp;</li>\r\n	<li>Mendukung program program generus yang telah di musyawarahkan oleh PPG maupun lima unsur pembina generus.&nbsp;</li>\r\n	<li>Ikut aktif dalam&nbsp;<u><em><strong>pelaksanaan musyawarah</strong></em></u>&nbsp;lima unsur &nbsp;pembinaan generus.</li>\r\n	<li>ikut mengontrol ketercapaian target kurikulum putra putrinya</li>\r\n</ol>\r\n\r\n<p><strong>B. PERAN DAN TUGAS MUBALIGH MUBALIGHOT</strong></p>\r\n\r\n<ol>\r\n	<li>Membuat persiapan pembelajaran.&nbsp;</li>\r\n	<li>Mengajar dan mendidik kepada generasi dan penerus dengan hati ridho dan karena allah.</li>\r\n	<li>Melaksanakan evaluasi dan tindak lanjut (Remedial, Pengayaan dan Laporan)</li>\r\n	<li>Memberikan teladan dalam prilaku sehari hari sehingga menjadi contoh dan panutan bagi para generus</li>\r\n	<li>Memberikan motivasi pada generus agar generus memiliki hobi dan semangat mengaji</li>\r\n	<li>Sering melakukan koordinasi dengan mubalig mubaligot untuk membahas temuan temuan dilapangan dan dicari solusi terbaik dalam rangka meningkatkan kualitas sebagai guru</li>\r\n	<li>Membuat inovasi pembelajaran agar &nbsp;dalam memangkulkan dapat disampaikan dengan jelas, menyenangkan dan mudah dipahami sehingga generus generus senang dan semangat dalam mencari ilmu</li>\r\n</ol>\r\n\r\n<p><strong>C. Peran dan tugas pengurus</strong></p>\r\n\r\n<ol>\r\n	<li>Melaksanakan musyawarah untuk kelancaran pembinaan Generus</li>\r\n	<li>Membantu dan memperkuat program program dalam proses pencapaian program generasi penerus jamaah (Alim Faqih, Berakhlakul Karimah, dan mandiri)</li>\r\n	<li>Mengupayakan terwujudnya sarana dan prasarana &nbsp;yang dibutuhkan dalam pembinaan generus</li>\r\n	<li>Memperhatikan dan meningkatkan kesejahtraan guru dan memberi santunan kepada generus yang kurang mampu dalam ekonomi seperti : Alquran, ALhadis, Seragam, alat tulis dll</li>\r\n	<li>Ikut memberikan doroangan dan nasehat kepada orang tua agar lebih memperhatikan putra putrinya supaya bisa mencapai target keberhasilan tri sukses generasi penerus</li>\r\n</ol>\r\n\r\n<p><strong>D. Peran dan tugas Keimaman</strong></p>\r\n\r\n<ol>\r\n	<li>Memberikan motivasi kepada generus agar bersemangat , tekun dan rajin dalam mengaji</li>\r\n	<li>Menjalin kedekatan dan memupuk perhatian seperti : Memberi permen kepada caberawit ketika kegiatan belajar, menunggui kegiatan, menanyakan ketercapaian materi, memberikan hadiah dll</li>\r\n	<li>Memberikan masukan dan nasehat nasehat yang menyejukan</li>\r\n	<li>Menampung aspirasi masukan, keluhan, untuk kemudian berijtihad memberikan solusi yang baik, adapun imam dalam melaksanakan tugasnya harus disertai dengan &nbsp;&nbsp;<em>adil, Rofik, Muhsin dan aris</em></li>\r\n</ol>\r\n\r\n<p><strong>E. Peran dan tugas pakar pendidik</strong></p>\r\n\r\n<ol>\r\n	<li>Memberikan bekal&nbsp;kepada mubalig dan mubalighot metode metode pengajaran yang sesuai dengan keadaan sehingga dapat di terapkan pembinaan generasi penerus di derahnya</li>\r\n	<li>Memberikan penyuluhan kepada orang tua dalam mendidik anaknya dengan cara yang baik dan benar&nbsp;</li>\r\n	<li>Berperan aktif dalam menangani generus yang memerlukan perhatian khusus</li>\r\n</ol>\r\n', '2016-12-02', 'Y', ''),
(7, 'Himbauan update data profile kelompok & desa ', 'Info', '<p>Untuk kelengkapan data tiap tiap kelompok atau desa supaya segera melakukan update data profile akun apllikasi 5 unsur &nbsp;dengan mengisikan data :&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Alamat Kelompok / Desa&nbsp;</li>\r\n	<li>Nomor HP Penjab KBM/Kelompok / Desa&nbsp;</li>\r\n	<li>Nama penjab Kelompok/Desa</li>\r\n</ul>\r\n\r\n<p>Ubah di bagian navigasi setting atau dengan klik link beikut ini <a href="http://kbm.ppg-tangbar.com/index.php?r=profile&amp;pg=profile_show">link</a>&nbsp;atau abaikan informasi ini jika sudah melakukan update data.&nbsp;<br />\r\n<br />\r\n<strong>Allhamdullilah Jaza Kummullahu Khoiro</strong></p>\r\n', '2016-12-18', 'Y', '[Update Profile]');

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
(0, 0, '', '', '', '', ''),
(10, 10006, 'Supaya diluruskan kembali apakah kurikulum yang ada di kelompok sudah sesuai dengan kurikulum yang diberikan oleh PPG ', 'Belum seusai dan akan dimusyawarahkan kembali ', '', 'Progres', 'Sembunyikan'),
(18, 10005, 'Para cabe rawit laki  paket B ingin dilatih bola di minggu  pagi', 'Muda/I + mubaleg akan segera koordinasi untuk likakukan penyusunan jadwal, untuk melatih bola caberawit paket B, untuk kekancaran dan kekompakan ', '', 'Pending', 'Sembunyikan'),
(19, 10005, 'Pengajian Paket A dan B di lakukan dalam waktu yang bersamaaah  sehingga penerimaan materi dan waktu tidak mencukupi', 'Untuk paket A dan B dilakukan pemisahan dalam waktu pengajian, Paket A jam 4 Sore sedangkan Paket B Sehabis magrib sampe sholat isya, supaya focus pada target materi dan  ketercapayan materi', '', 'Pending', 'Bagikan'),
(20, 10015, 'Tour Kelompok					\r\n', 'akan diadakan paada tanggal 28 Januari 2016 di Sawangan', '', 'Selesai', 'Bagikan'),
(21, 10026, 'kendala', 'Solusi', '', 'Progres', 'Sembunyikan'),
(22, 10027, 'Kehadiran minim', 'Dikasih doorprize', '', 'Progres', 'Sembunyikan'),
(25, 10030, 'Kehadiran', 'Kerjasama orang tua', '', 'Selesai', 'Sembunyikan'),
(26, 10011, 'Pengajian pelajar setiap sehabis Maghrib kehadirannya menurun', 'Orang tua mengajak anaknya untuk diberikan Bimbingan Konseling', '', 'Selesai', 'Bagikan'),
(28, 10033, '- pengisian laporan KBM kurang lancar ', 'Saran: \r\nAgar pelaporan KBM bisa di buat aplikasinya seperti Laporan 5 unsur.', '', 'Progres', 'Bagikan'),
(29, 10020, '1.caberawit sering ketinggalan sholat berjamaah', '1.di buat buku catatan ketertiban sholat', '', 'Selesai', 'Bagikan'),
(30, 10009, 'Anak ga mau ngaji', 'Di antar ke tempat pengajian', '', 'Selesai', 'Sembunyikan'),
(31, 10038, 'Tes sosialisasi', '', '', 'Progres', 'Bagikan'),
(33, 10011, 'Menghadapi prilaku anak yg mudah grogi dan tidak percaya diri', 'Saran#1,\r\nSaat si anak tampil maka teman2nya disuruh memberikan dukungan dg yel2 "ayo kamu bisa" lalu si anak diajak teriak... hal ini memberikan efek positif yg menambah rasa percaya diri.\r\nSaran#2\r\nMemberikan apresiasi dan penghargaan thd apapun yg sdh dilakukan si anak, beri motivasi bahwa si anak adalah anak yg paling hebat dibanding temannya.\r\nSaran#3\r\nJangan didik anak2 dirumah terlalu manja dan terlalu bergantung kpd ortu, agar si anak mempunyai mental yg kuat', '', 'Selesai', 'Bagikan'),
(34, 10042, 'asd', 'qwe', '', 'Progres', 'Bagikan'),
(35, 10028, '1.Kehadiran kurang maksimal\r\n2.Kedua orang tua kurang kontrol\r\n3.Kedua orang tua kurang singkron dalam mendidik anak\r\n', '1.Kedua orang tua dipanggil\r\n2.Kedua orang tua dimohon mengontrol \r\n3.Kedua orang tua dimohon kekompakannya', '', 'Selesai', 'Bagikan'),
(36, 10032, 'Pengajian muda/i tidak lancar', 'Gabungan dgn klp lain', '', 'Selesai', 'Sembunyikan'),
(37, 10022, 'Tes', 'Tes', '', 'Progres', 'Sembunyikan'),
(38, 10018, '1.pengajian pelajar mlm rabu blm maksimal\r\n2.pengajian pra remaja mlm selasa dan mlm sabtu terkendala pengajar', '1.pengajian baada maghrib pelajar mlm rabu diliburkan\r\n\r\n2.MS diperbantukan di pengajian pelajar mlm selasa dan mlm sabtu', '', 'Progres', 'Sembunyikan'),
(39, 10018, ' ', ' ', '', 'Progres', 'Sembunyikan'),
(40, 10031, 'Buku sijil yaum belum di kontrol oleh sebagian orang tua murid ', 'Supaya tiap-tiap orang tua lebih mengontrol terhadap hafalan anaknya, paling tidak kolom tanda tangan orang tua supaya di tanda tangani ', '', 'Progres', 'Sembunyikan'),
(41, 10031, 'Guru HTQ kelompok yg aktif masih kurang ', 'Guru guru yang sudah terdaftar akan di kumpulkan ', '', 'Progres', 'Sembunyikan'),
(42, 10008, '1.Ada beberapa siswa paket B masih belum lancar bacaan Al Quran-nya,jadi kurang bisa mengikuti pelajaran dengan siswa yg lain', '1.Diberikan pengajaran private diluar pelajaran reguler untuk mengejar ketertinggalan.', '', 'Progres', 'Bagikan'),
(43, 10037, 'Anak tidak tertib dalam shilat wajibnya.\r\n', 'Amal sholeh guru supaya mempertegas masalah penting dan wajibnya sholat, dan orang tua memonitornya\r\n', '', 'Selesai', 'Sembunyikan'),
(44, 10024, 'Tes', 'Tes', '', 'Progres', 'Bagikan'),
(46, 10002, 'Assssd', 'Dfff', '', 'Selesai', 'Bagikan'),
(47, 10022, 'Cobalggi', 'Cblg', '', 'Progres', 'Sembunyikan'),
(48, 10021, '1.Kehadiran blm stabil\r\n2.sebagian kls 6 blm mencapai target terutama doa doa\r\n3.untuk remaja sdh mengenal lawan jenis\r\n', '1.org tua yg kurang mampu menasehati anak bisa minta tlg ke yg lain\r\n2.org tua memberi motivasi kpd anak biar lbh semangat mengaji atau kl anak mencapai target di kasih reward/penghargaan\r\n3.ortu spy selalu mengontrol anak ', '', 'Selesai', 'Bagikan'),
(49, 10031, 'Tahun baru ', 'Insyaallah desa akan mengadakan acara ', '', 'Progres', 'Sembunyikan'),
(50, 10027, 'Rencana tour klmpok thn dpn sragam\r\nRencana liburan sekolh ada asrama.\r\nRencana  beli laptop tuk S', 'nunggu musywaroh lg', '', 'Progres', 'Sembunyikan'),
(51, 10010, 'Kelompok kutabaru sejahtera dan permai sudah disapih, tapi pengajaran KBM masih gabung dan belum mandiri', 'Kutabaru Permai masih membutuhkan pengajar dari sejahtera', '', 'Selesai', 'Sembunyikan'),
(52, 10010, 'Jumlah pengajar masih kurang (Mas Kholis, Mas Adi, Royan, Bu Atik)', 'Menambah MTI', '', 'Progres', 'Sembunyikan'),
(53, 10010, 'Pencatatan data-data paket A masih belum lancar oleh MT', 'Menjadi bimbingan kontinu ke MT\r\nDimonitor oleh pengjab KBM', '', 'Progres', 'Sembunyikan'),
(54, 10010, 'Dalam murajaah HTQ anak-anak sering tidak hafal atau bacaannya kurang pas.', 'Dalam murojaah agar para ortu menyemangati anak-anaknya dalam membaca dan menghafal Al Quran.', '', 'Progres', 'Sembunyikan'),
(55, 10010, 'Pembinaan Bahasa Inggris di kelompok untuk tujuan MTI', 'Pencarian MT', '', 'Progres', 'Sembunyikan'),
(56, 10010, 'Penjelasan program PPG di mading', 'Dibuat oleh Mas Nurkholis', '', 'Progres', 'Sembunyikan'),
(57, 10010, 'Kehadiran peserta didik masih kurang', 'Setiap pengajar memiliki semua no HP ortu peserta didik\r\nPengajar melancarkan komunikasi dengan para ortu peserta didik.\r\nPembuatan WA grup peserta didik\r\nPara ortu peserta didik memiliki no HP guru yang mengajar.', '', 'Progres', 'Sembunyikan'),
(58, 10011, 'Mohon saran dan kesan atas dilaksanakannya acara sepeda santai, keakraban dan games cabe rawit\r\n', 'Kurang sosialisasi, antara proposal dan actual tidak sesuai, pemberian hadiah kurang maksimal, panitia dari muda mudi masih perlu banyak belajar', '', 'Selesai', 'Bagikan'),
(59, 10011, 'Menghadapi liburan akhir tahun', 'Mengadakan asrama cabe rawit kelompok dimulai pada tgl 26 Desember, teknik, materi dan waktu dimusyawarohkan menyusul', '', 'Progres', 'Bagikan'),
(60, 10019, 'Ada 4 siswa caberawit , 1 paket A, 3 paket B\r\nYang tertinggal materi', 'Diadakan remedial setiap 4kali dalam seminggu di luar jam pengajian', '', 'Progres', 'Sembunyikan'),
(61, 10019, '1 anak pelajar yang tidak tertib kehadirannya ', 'Pengalihan pengajian pelajar ke rumah anak tersebut', '', 'Progres', 'Sembunyikan'),
(62, 10019, 'Rencana asrama di liburan sekolah\r\n', 'Menunggu hasil musyawarah pleno dari desa', '', 'Selesai', 'Sembunyikan'),
(63, 10041, 'Seragam\r\n', 'Seragam di wujudkan untuk caberwit kelas A dan untuk kelas B + C di seragam atasan', '', 'Progres', 'Sembunyikan'),
(64, 10016, 'Selama nih kehadiran paket C dan D kurang lancar terutama paket D (muda mudi)\r\n', 'Kita harus mengenal karakter anak \r\n-penyebabnya apa?\r\nApakah karna materi \r\nApakah karna pengajar\r\nApakah brkaitan dengan orang tua\r\nMaka semua harus di sinkronkan\r\nJika berkaitam dengan orang tua maka orang tua harus di panggil\r\nCaranya:\r\nPenjab atau wali KBM harus menjebatani\r\n-di buat dengan klasikal,door to door atau fice to fice jadi tidak di samaratakan\r\n-jika kelompok sudah menanganinya dengan maksimal tapi belum ada perubahan maka akan di bawa ke tingkat desa', '', 'Progres', 'Sembunyikan'),
(65, 10015, 'Pengajian Ibu-ibu malam selasa / rabu					\r\n', 'Ditetapkan Rabu pagi						\r\n', '', 'Selesai', 'Sembunyikan'),
(66, 10015, 'Tabungan Qurban', 'Sudah disediakan dibuku Persenan', '', 'Selesai', 'Sembunyikan'),
(67, 10015, 'Pengajaran pegon dikelas paket B', 'Sudah berjalan setiap hari Rabu', '', 'Selesai', 'Sembunyikan'),
(68, 10015, 'Seragam caberawit warna Putih, dan uang seragam bisa dicicil.', 'Kesepakatan warna hijau tosca / Orange dan dibuatkan tabungan caberawit.', '', 'Selesai', 'Sembunyikan'),
(69, 10014, '1.tingkat kehadiran kami khususnya smp ke atas kurang dari 70%. \r\n2. Quran hafalan belum tersedia\r\n3.seragam gamis belum ada\r\n', '1.tidak boleh bosan nasihat ajak ajak utk memberi motivasi dari pengurus orang tua kpd generus\r\n2.quran n baju gamis target msywrh 5 unsur bulan Januari sdh teesedia\r\n3.pergantian pengjab spy lebih maximal\r\n4.persiapan dukungan acara halaqoh di daerah tgl25 desember\r\n\r\n\r\n\r\n', '', 'Selesai', 'Sembunyikan'),
(70, 10040, '1.usia caberawit yg paket A yg sdah menguasai materi knp blom di pindah ke paket B\r\n2.rongsokan kurang maksimal karna kendala tmpat\r\n3.bagaimana agar caberwit bsa lebih smangat dlm mengaji\r\n4.mengusulkan agar buat seragam caberawit klp\r\n5.knp klp tdak mngadakan acara mlm thun baru', '1.rencana di awal thn akan menaikan ke paket B\r\n2.sangat membantu dana 5 unsur klp, dan akan di tarikin ke rmah2 stiap minggu, dan klp akan beli karung buat tmpat di rumah2\r\n3.setiap minggu akan di adakan game oleh ibu2 dsn asisten serta di beri hadiah\r\n4.klp akan mendata dan mencari contoh bahan terlebih dahulu\r\n5.alasan knp tdak membuat acara krna pngurus banyak yg pulang kampung', '', 'Selesai', 'Sembunyikan'),
(71, 10008, '2.Kehadiran dalam acara HTQ kelompok hari minggu jam 05;30 kurang tertib(masih banyak yg terlambat)', '2.Jadwal HTQ dirubah menjadi jam 06;00 pagi.', '', 'Progres', 'Bagikan'),
(72, 10029, '* Belum ada jadwal ngaji yg cocok/pas utk paket C & D.\r\n* Tingkat kehadiran yg minim dari paket C & D.', '* seluruh santri paket C & D dikumpulkan dan dibuat kesepakatan ; jadwal ngajinya mlm Kamis, mlm Sabtu, & mlm Minggu Maghrib di tempat.\r\n* karena santri paket C & D hanya  terdiri atas 5 keluarga, mk dilakukan penerobosan/ penjemputan agar tdk ada alasan utk TDK hadir/datang.', '', 'Progres', 'Sembunyikan'),
(73, 10036, 'Sementara tidak ada', 'Musyawarah hanya membahas agenda liburan sekolah', '', 'Selesai', 'Sembunyikan'),
(74, 10039, '> Materi bacaan sedikit melemah dari target\r\n>> permintaan baeat bagi para pelajar\r\n>>> seragam caberawit baru ter kumpul. Dana 25% ', '> Orang tua supaya mensuport dan mengingatkan untuk menderes di rumah masing2 baik yg tilawaty / Al quran\r\n>> progres pemahaman dari bab tersebut di kelompok khusus\r\n>>> awal januari insyaAlloh di realisasikan fari talangan', '', 'Progres', 'Sembunyikan'),
(75, 10033, '-', 'Hasil mswroh 5 unsur membahas tentang kegiatan asrama paket B C dan D pada akhir bulan Desember 2016 dan dilaksanakan di Gedung sabilillah sarakan.', '', 'Selesai', 'Bagikan'),
(76, 10030, 'Asrama masa liburan anak sekolah ', 'Akan dilaksanakan hari kamis s/d sabtu jam 10', '', 'Progres', 'Sembunyikan'),
(77, 10037, 'Evaluasi metode tilawati, dan membandingkan dengan metode iqro pada tahun sebelumnya, lebih berhasil daripada metode tilawati.', 'Amal Sholeh tingkat desa atau daerah bisa mengevaluasi metode tilawati ini, suapaya lebih tepat sasarannya.', '', 'Pending', 'Sembunyikan'),
(78, 10034, 'hasil musyawarah nya adalah\r\n', 'solusinya adalah berikut ini', '', 'Progres', 'Sembunyikan'),
(79, 10046, 'Untuk paket c dan d di adakan nasehat pemantapan seminggu sekali sedangkan paket a,b dan paud blum berjalan', 'Untuk caberawit diadakan nasehat pemantapan dari keimaman kelompok  dan diadakan acara makan" setiap 2 bulan sekali', '', 'Selesai', 'Sembunyikan'),
(80, 10047, 'untuk kegiatan halaqoh di berikan makanan yang bernutrisi & bergizi', 'untuk saat ini sudah diberikan makanan hanya kuantiti nya masih sedikit berikutnya akan ditambah dengan yang lebih bergizi seperti susu,telor..dll', '', 'Progres', 'Sembunyikan'),
(81, 10048, 'pengajian generus paket A dan PAUD yg dibantu ibu2 blm maksimal,ibu2 minta mas MT tetep ngontrol jg di paket A (yg diajar ibu)\r\n\r\n2.pembagian raport, peringkat rangking knp ditulis semua\r\n\r\n3.proses penilaian saat munaqosah tdk bareng\r\n\r\n4.kalender peraga tilawaty tidak dipake ibu2\r\n\r\n5.evaluasi tour ke sawangan', '1.dimaksimalkan lagi kehadiran ibu2 dalam membantu MT\r\ndiadakan pelatihan mengajar tilawaty di pengajian ibu2 minggu ke 3\r\n\r\n2.ada kesalahan prosedur,menjadi pengalaman ke depannya dalam memberi rangking\r\n\r\n3.akan dievaluasi dan dimusyawarohkan dengan MT desa\r\n\r\n4.sama no.1\r\n\r\n5.acara sudah bagus,game nya juga rame,acara lancar\r\nhanya persiapan peralatan kurang', '', 'Progres', 'Sembunyikan'),
(82, 10049, 'Pengajian muda-mudi kurang tertib masalah kehadiran', 'Dalam nasehat akan disisipkan mengenai ketertiban dalam mengaji', '', 'Selesai', 'Sembunyikan'),
(83, 10049, 'musyawarah lima unsur kehadiran kurang maksimal', 'sering dinasehatkan mengenai pentingnya musyawarah lima unsur, dan diingatkan waktu pengajian dan WA ', '', 'Selesai', 'Sembunyikan'),
(84, 10049, 'Saran : untuk tour kelompok diadakan lomba antar muda/i dan caberawit', 'untuk acara Tour kelompok akan diadakan game game dan pembagian Raport Caberawit.', '', 'Selesai', 'Sembunyikan'),
(85, 10050, '1.pengajian paket D/remaja yg SMA tidak lancar\r\n\r\n2.mengusulkan seragam untuk pra remaja dan asisten\r\n\r\n3.arena bermain caberawit blom ada\r\n\r\n4.pemberian hadiah atau riwodh pda anak yg berprestasi', '1.karna bpk mashadi sibuk ngurusi mualaf maka pengajian remaja di serahkan pda mubalegh setempat (ms) namun jadwal dan materi tdak di beri\r\n\r\n2.akan di angkat di musyawaroh desa krna pra remaja terdiri dri 4 klp\r\n\r\n3.arena bermain akan di usulkan di acara pleno desa\r\n\r\n4.akan di ambilkan dri dana 5 unsur klp stiap 2hari sekali dngan cara akan di buat seperti tebak2an', '', 'Selesai', 'Sembunyikan'),
(86, 10051, '1.HTQ kelompok belum bisa dilaksanakan untuk saat ini\r\n2.sehubungan  dgn mbak neneng menikah dan pindah sambung maka bgmn tehnis pengajarannya.\r\n\r\n\r\n', '1.HTQ kelompok blm bs di laksanakan krn tim pengajar blm ada. Dan kami usulkan spy MS diberdayakan dlm mensukseskan program HTQ kelompok , setelah dikumpulkan MS siap membantu tp ternyt p kyai mnt di undur lg pdhl kt dah termasuk ketinggalan akhir pengajian hbs subuh di buat murojaah dan pengetrsan\r\n2.Menindaklanjuti pengajian cabe rawit stlh mba neneng menikah dan ikut suami ke jati mk MT hrs mengajar dua season . Season pertama paket B pkl 14.00-15.30 dan season 2 paket A pkl 16.00-17.30 dibantu mbak erna sbg asisten', '', 'Progres', 'Sembunyikan'),
(87, 10054, 'Menentukan tempat pembagian raport anak-anak cabe rawit dengan pilihan saung pak h.teteng atau mesjid Al-Fatah', 'Saung Pak h. Teteng dengan catatan perlu dibicarakan dengan kutabaru permai', '', 'Progres', 'Sembunyikan'),
(88, 10057, 'Remaja putri masih ada yang belum paham cara bersuci dari haid.', 'Ibu-ibu agar lebih kontrol dan memposisikan sebagai teman,agar komunikasi dengan anaknya bisa lebih baik.', '', 'Progres', 'Bagikan'),
(89, 10057, 'Anak paket B masih ada yang cara berwudhunya salah.', 'Agar lebih sering dikontrol.(tempat wudhu diluar juga sebagai tempat kontrol wudhu anak-anak kita dilapangan)', '', 'Progres', 'Bagikan'),
(90, 10057, 'Masalah kesucian dalam keluarga.', 'Pengurus akan turba kerumah masing-masing jamaah untuk mengecek masalah kesucian,terutama kamar mandinya.', '', 'Progres', 'Bagikan'),
(91, 10057, 'Orang tua masih kurang peduli/kurang kontrol terkait perkembangan dan pencapaian anak dlm acara HTQ.', 'Mengingatkan orang tua agar lebih kontrol lagi.Syukur-syukur ikut bs mengajari dirumah.', '', 'Progres', 'Bagikan'),
(92, 10057, 'Ada anak yg g mau ngaji dan ngeluh cape dan pusing karena terlalu banyak kegiatan(sekolah,les dll).', 'Orang tua agar bisa lebih mengarahkan dan mensiasati dlm mengatur waktunya lagi.', '', 'Progres', 'Bagikan'),
(93, 10058, '1.Ibu2 wali murid terkendala dlm mengajari tilawati di rumah krn blm bisa metode dan lagu tilawati.\r\n2.anak cbrwt paket A klo di beri PR hafalan jk blm hfl takut berangkat ngaji.\r\n3.sholat 5 waktu anak2 cbrwt paket B masih blm tertib.', '1.akan di training teory & metode tilawati selama 1 minggu di klmpok.\r\n2.org tua agar membantu mengajari & turut mengontrol perkembangan anak.\r\n3.orang tua & pengurus spy tdk bosan menasehati & mengarahkan agar mrk bisa tertib sholatnya.', '', 'Selesai', 'Bagikan'),
(94, 10059, '1.Laporan hasil KBM blm sempurna, hanya menyampaikan laporan global saja, tidak mendetail per peserta didik (anak)\r\n2. Pemakaian seragam caberawit belum terjadwal sehingga kadangkala ada anak yg tidak memakai seragam\r\n3. Generus peserta halaqoh rata2 hafalannya sudah mencapai target, tapi banyak hafalan lama ketika ditest banyak yang lupa', '1. Laporan hasil KBM dalam musyawarah 5 unsur akan disempurnakan\r\n2. Dibuat jadwal pemakaian seragam caberawit\r\n3. Diprogramkan utk banyak murojaah dengan melibatkan orangtua dirumah', '', 'Selesai', 'Bagikan'),
(95, 10060, 'Musy 5 unsur klp sudirman tgl 18 jan 2017 dihadiri 19 jmh lakiÂ² + 15 jmh pr                                                 ', '1) KBM klp di mulai kembali hr Selasa 13 Des setelah di liburkan Krn TES sekolah *).\r\n2) Asrama liburan pelajar mengikuti program Desa. u/ paket A+B sesuai jadwal biasanya (sore hari) *)         \r\n3) u/acr muda/i klp mlm Minggu pengajar di bantu oleh mas Saeful mukmin.    \r\n4) rencana gabungan muda/i dgn klp mustika      \r\n5) munaqosah cabe rawit saat liburan sekolah *).          \r\n6) peserta halaqoh Desa di tampilkan di tiap mlm Senin saat acr klp *).\r\n7) percobaan halaqoh klp selama 1 bln (utk menyaring siswa(i) yg berkompeten *).\r\n*) sudah berjalan .', '', 'Progres', 'Sembunyikan'),
(96, 10062, 'Sulit mengatur waktu mengaji terutama para pelajar  yang ikut htq desa bentrok dengan kegiatan ppg kelompok', 'Supaya disinergikan, htq tetap berjalan dan ppg juga tidak merasa disingkirkan', '', 'Progres', 'Sembunyikan'),
(97, 10062, 'Tanpa disadari, jadwal KBM setiap harinya dipenuhi dengan htq. Dan yang ditakutkan terhadap siswa itu merasa jenuh dan lupa terhadap materi ppg yang sudah dipelajari', 'Jadwal yang sudah ada supaya di sesuaikan,agar yang ditargetkan tercapai dan yang sudah dipelajari tidak lupa', '', 'Progres', 'Sembunyikan'),
(98, 10061, '..::Bulan Lalu::..\r\n-Munaqosah cabe rawit \r\n-Munaqosah Praremaja\r\n-Pengadaan Laptop & Printer \r\n-Acara Malam Tahun baru Sebagai sambung muda"i:\r\n#futsal\r\n#lomba memasak\r\n-Pengajian Asrama pelajar SMP-SMA di pondok Al Musawa\r\n\r\n', 'Munaqosah caberawit sudah berjalan lancar\r\nMunaqosah Praremaja sedang berjalan\r\nPengadaan Laptop & Printer sudah terlaksana\r\nAcara Malam Tahun baru Sebagai sambung muda"i sudah terlaksana\r\nPengajian Asrama pelajar SMP-SMA di pondok berjalan lancar', '', 'Selesai', 'Sembunyikan'),
(99, 10061, '..::Bulan ini::..\r\n-Futsal Muda" dan pelajar malam minggu berjalan lancar\r\n-Pengajian Muda"i kurang maksimal\r\n\r\n', 'Jadwal Pengajian Muda"i akan di pindah kan ke malam minggu lalu di lanjut acara futsal', '', 'Progres', 'Sembunyikan'),
(100, 10061, 'Acara Tur kelompok ke sawangan dalam rangka mengapresiasi hasil munaqosah generus', 'masih di musyawarahkan tentang transport dan lain"', '', 'Progres', 'Sembunyikan'),
(101, 10063, '1.generus susah bangun pagi\r\n\r\n2.anak suka nge game di hp', '1.yg laki2 tidur di masjid\r\n2. tidur malam lebih awal\r\n3. orang tua memberi contoh\r\n4. membiasakan sholat berjamaah(bagi yg jauh dr msjid)\r\n5. doa orang tua kpd anak\r\n6. diadakan pengajian habis subuh seminggu sekali\r\n\r\n\r\nSaran dari  penerobos  PPG  bpk Firman :@,Supaya ada Laporan Absensi dan Nilai dari Mubaligh .\r\n               @,Supaya Menghidupkan acara 5  Unsur', '', 'Progres', 'Bagikan'),
(102, 10064, 'Anak suka nonton sinetron mermaid (yang dilarang tex bpk Imam)', 'Akan dinasehatkan dalam acara pengajian caberawit.', '', 'Selesai', 'Sembunyikan'),
(103, 10064, 'Buku penghubung tidak lancar', 'Akan digiatkan lagi', '', 'Progres', 'Sembunyikan'),
(104, 10064, 'Kekurangan guru di HTQ Kelompok', 'Memberdayakan siswa Halaqoh Desa ( Mas Alfi )', '', 'Selesai', 'Sembunyikan'),
(105, 10064, 'Jadwal pengajian paket A tidak lancar', 'Jadwal diubah semula bersamaan dengan acara kelompok menjadi sehabis Magrib.', '', 'Selesai', 'Sembunyikan'),
(106, 10065, '1. Mengganti sarana prasarana berupa papan tulis yang sudah rusak\r\n2. Penentuan SPP Halaqoh kelompok ', '1. Akan diganti dengan yang baru\r\n2. Akan diperhitungkan lebih dulu dengan kebutuhan snack halaqoh kelompok', '', 'Progres', 'Sembunyikan'),
(107, 10053, '1. Untuk paket c&d kurang maksimal kedatangannya.\r\n2.paket a&b ada 3 anak yang kurang lancar.\r\n3.bangku masih kurang 4.', '1.diadakan anjangsana ketempat anak yang kurang lancar.\r\n2.orang tua akan mungusahakan melancarkan.\r\n3. Akan segera diwujudkan.', '', 'Pending', 'Bagikan'),
(108, 10066, 'Pengajian caberawit kurang lancar (kehadiranya)', 'Pengalihan jadwal dr habis maghrib ke habis ashar', '', 'Selesai', 'Bagikan'),
(109, 10066, 'Pengajian pra remaja kurang lancar (kehadiranya)', 'Pengalihan jadwal dari yang tadinya 2 sesion (ada yg pagi, ada yg sore) ke habis magrib', '', 'Selesai', 'Bagikan'),
(110, 10066, '-', 'Pembuatan seragam baru bagi cabe rawit untuk menambah semangat dalam mengaji', '', 'Progres', 'Sembunyikan'),
(111, 10067, '-', 'Info : pembagian raport cabe rawit insyaallah akan di laksanakan di sawangan. Depok pada hari Sabtu tgl 28_01-2017 \r\n', '', 'Selesai', 'Bagikan'),
(112, 10021, 'Mengenai ketertiban solat\r\nMasalah tempat olah raga', '- Mengajari kembali tentang solat dan selalu memantaunya\r\n- Akan membeli lapangan tenis meja', '', 'Progres', 'Sembunyikan'),
(113, 10069, '1.Kepedulian generus tingkat pelajar kurang apa ada faktor dari orang tua yg kurang memotivasi\r\n2.kehadiran pengajian pelajar tingkat desa kurang lancar', '1.kepada orang tua bisa jadi contoh anak2 nya,agar terbentuk karakter yg baik\r\n2.pengurua memfasilitasi kendaraan,juga orang tua  harua pro aktif mendukung dan mengingatkan spy maximal.', '', 'Progres', 'Sembunyikan'),
(114, 10071, '1.Evaluasi program tahunan kelompok dan menyusun program tahun 2017', '1.Program yang kurang lancar dievaluasi dan yang lancar dilanjutkan, dan penambahan program 1.PPA Putra 2.Penambahan seragam siswa dengan cara menabung', '', 'Progres', 'Sembunyikan'),
(115, 10071, '2.Pembagian raport dan hadiah Paket A&B', '2.Raport dan hadiah dibagikan pada saat musyawarah 5 unsur dan pemberian apresiasi bagi siswa yang kehadiranya tertib diluar perumahan taman walet', '', 'Selesai', 'Sembunyikan'),
(119, 10073, 'Apa apresiasi dari kelompok utk Cabe Rawit berprestasi atas hasil Munaqosah diDesa?', 'Akan diberikan reward berupa Abaya utk anak perempuan dan baju koko gamis utk anak laki-laki', '', 'Selesai', 'Bagikan'),
(120, 10073, 'Snack Cabe Rawit setiap hari lancar, tetapi anak-anak terkadang terkesan bosan dg Snack tersebut sehingga banyak Snack tidak dimakan', 'Jadwal Snack tidak lagi dibuat tiap hari, fleksibel, sifatnya sewaktu2 diberikan agar anak-anak tidak bosan, makanan dan minuman tidak mubadzir dan isrof', '', 'Selesai', 'Bagikan'),
(121, 10073, 'Seragam Cabe Rawit kelompok sdh 1 tahun, dan baru punya satu seragam saja', 'Setuju dibuatkan seragam baru, warna dan motif yg baru dengan sistem sodaqoh beli bahan dan jasa jahit secara subsidi silang\r\nTarget 2 bulan depan sudah ready', '', 'Selesai', 'Bagikan'),
(122, 10073, 'Rencana Kegiatan tour muda mudi kelompok kurang dikomunikasikan dg Pengurus sehingga terjadi kesalahpahaman dan kurang mendapat dukungan dari bbrp orang tua', 'Pengurus dan orang tua mendukung acara Tour Muda Mudi, syaratnya diawasi oleh Pengurus, acaranya disosialisasikan, dan sebelum membuat acara agar dikonsultasikan dulu kepada Pengjab Klp, selanjutnya diarahkan untuk ijin Pembina kelompok', '', 'Selesai', 'Bagikan'),
(123, 10074, 'Kehadiran Praremaja kurang maksimal', 'Orang tua dan anaknya sudah dipanggil untuk diminta meningkatkan kehadirannya', '', 'Progres', 'Bagikan'),
(124, 10038, 'Munaqosah dan Pembagian raport cabe rawit semester genap tahun 2016.', 'Akan di laksanakan tgal 30 jan 2017.baru bisa di laksanakan karna desember msh fokus dgn halaqoh di daerah.', '', 'Progres', 'Bagikan'),
(125, 10075, 'Anak yg kehadirannya kurang / tidak pernah hadir kegiatan KBM kelompok', 'Di private / di datangi kerumahnya', '', 'Progres', 'Sembunyikan'),
(126, 10044, 'Penyiapan Nutrisi Halaqoh Kelompok', 'Sudah berjalan', '', 'Selesai', 'Bagikan'),
(127, 10044, 'Seragam HTQ', 'Sudah Berjalan', '', 'Selesai', 'Bagikan'),
(128, 10076, 'Selama ini kendala yg di hadapi kelompok taman kota permai yaitu : \r\nPengajian pra remaja ( paket C,D ) belum lancar, krn jumlah pra remaja, remaja, dan muda2i yg jumlahnya sangat sedikit, dengan tingkatan yg berbeda2, berbagai cara sdh kami lakukan, yaitu ikut pengajian muda2i gabungan', 'Solusinya Maka dengan itu kami mencoba  menggabungkan antara muda2i, remaja, dan pra remaja menjadi satu pengajian, yang di jadwalkan setiap hari selasa malam rabu jam  20.00\r\n~ munaqosah akan di laksanakan insyaA  minggu ke 3 bln januari ', '', 'Progres', 'Sembunyikan'),
(129, 10077, 'pembagian raport caberawit', 'dilaksanakan pada hari rabu 18/01/2017', '', 'Selesai', 'Sembunyikan'),
(130, 10077, 'refresing caberawit tahun 2017', 'refresing/ renang ke koloam renang', '', 'Progres', 'Sembunyikan'),
(131, 10070, 'Tess', 'Toss', '', 'Pending', 'Bagikan'),
(132, 10078, 'Setiap pengajian mm gabungan amal sholih dari pengurus kelompok ada yang nungggi dan memberikan nasehat', 'Sebelumnya sudah pernah di buatkan jadwal dan berjalan, tapi saat ini kurang lancar, mohon penrobos mm klp mengingatkan lagi, untuk jadwalnya dan ditrobosi', '', 'Selesai', 'Sembunyikan'),
(133, 10055, ' untuk motifasi cabe rawit. butuh sragam baru ', 'Dibelikan sragm baru ', '', 'Progres', 'Bagikan'),
(134, 10079, 'Jika pengajar Hanya MT materi yang diberikan kurang maksimal karena 1 kelas 2 paket', 'Dicarikan asisten MT yang Longgar\r\n\r\n1. Sdri. Wiwit\r\n2. Sdri. Soffy\r\n3, Sdr, Irul', '', 'Selesai', 'Bagikan'),
(135, 10079, 'Siswa Kadang tidak membawa alat tulis waktu pengajian', 'disampaikan kepada ortu/ wali murid agar mengecek Tas untuk peralatan mengaji sudah lengkap atau belum dan di ingatkan kepada siswa siswi agar selalu membawa alat tulis seperti Sekolah..', '', 'Selesai', 'Bagikan'),
(136, 10079, 'Seragam Caberawit kapan akan dibelikan?', 'insya allah akan dicarikan ibu kelik dalam minggu ini', '', 'Selesai', 'Sembunyikan'),
(137, 10079, 'Haloqoh kelompok supaya di Videokan dan ditampilkan waktu musyawarah lima unsur\r\n\r\n', 'Akan dilaksanakan', '', 'Selesai', 'Sembunyikan'),
(138, 10079, 'Tour Khusus Caberawit', 'Akan  dimusyawarahkan di forum kelompok', '', 'Pending', 'Sembunyikan'),
(139, 10079, 'laporan KBM kurang maksimal karena kurang fokus', 'Akan dilaporkan menggunakan Power Point (Slide)', '', 'Selesai', 'Bagikan'),
(140, 10079, 'Kehadiran pengajian Muda-mudi masih banyak yang terlambat', 'akan disisipkan nasehat mengenai kehadiran, karena waktu sholat isyak sdh malam maka sebelum sholat supaya dipersiapkan materi mengaji..', '', 'Progres', 'Sembunyikan'),
(141, 10079, 'pertanyaan : untuk snack / makan bersama Caberawit jatah grup berapa?', 'Grup 2 pada tanggal 24 Februari 2017', '', 'Selesai', 'Sembunyikan'),
(142, 10082, '1. pelaporan kbm per kelas tilawati agak membingungkan\r\n2. pengajian pra remaja dan remaja minim kehadiran', '1. ditanyakan kembali ke daerah\r\n2. orang tua spy mengantarkan putra putrinya pengajian pra remaja dan remaja', '', 'Progres', 'Sembunyikan'),
(143, 10081, '1. Dukungan dari orang tua belum maksimal.\r\n2 . Untuk paket C&D akan diadakan halaqoh, namun waktunya bersamaan halaqoh desa, jadi mt tidak bisa nungguin.', '1. Akan terus diingatkan dan dinasehatkan.\r\n2. Memberdayakan para orang tua yang ada.', '', 'Progres', 'Bagikan'),
(144, 10083, 'Penertiban Solat berjamaah & Solat malam', 'di buat jadwal Nerobos untuk Pelajar dan Muda",, yang terjadwal nerobos menginap di mushola dan membangunkan para jamaah untuk solat + doa malam', '', 'Progres', 'Sembunyikan'),
(145, 10083, 'Latihan Nesahat untuk para penasehat pada sambung kelompok dengan cara nderes materi CAI dll', '.', '', 'Progres', 'Sembunyikan'),
(146, 10083, 'Tentang kehadiran Muda"i untuk sambung kelompok', 'Peran aktif dari orang tua yang harus ngoprak" putra-putri nya dan Pengurus kelompok akan melancarkan lagi dalam penerobosan ke-jamaah" kelompok', '', 'Progres', 'Sembunyikan'),
(147, 10083, 'Pengajian Muda"i pada malam minggu kurang lancar.', 'Pengajian Muda"i pada malam minggu kurang lancar sehingga di pindah  \r\njadwalkan menjadi hari Selasa malam rabu. dan kerena berbenturan dengan jadwal HTQ kelompok maka jadwal HTQ kelompok di ubah menjadi hari selasa dari setelah magrib sampai jam 08.00 dilanjut dengan pengajian Muda"i dan akan diadakan snack', '', 'Progres', 'Sembunyikan'),
(148, 10084, '1. Kurangnya kedekatan  antara pengurus dengan generus dalam hal komunikasi (nasehat) \r\n2. Snack untuk pengajian halaqoh bada subuh kurang  tertib dan kurang variasi\r\n3. Utk siswa / siswi halaqoh kelompok ataupun caberawit kelompok yg tdk ikut halaqoh desa belum memiliki seragam/gamis\r\n4. Hafalan lama (juz 30 kebawah)  utk siswa /siswi halaqoh ketika murojaah banyak yg lupa', '1. Setiap hari minggu pagi setelah solat subuh akan diadakan nasehat bergilir dr 5 unsur pembina generus,  waktunya antara  10-15 menit. Utk lebih tertib akan dibuatkan jadwal nasehatnya. \r\n2. Snack utk pengajian halaqoh (bada subuh)  akan dibuat rutin, miminal 2X dlm seminggu  dan menunya akan dibuat variasi. \r\n3. Dibagikan buku tabungan kepada semua generus/caberawit yg blm punya seragam, supaya  mereka  menabung.  Setelah terkumpul  uangnya baru dibelikan seragam/gamis.\r\n4. Supaya banyak  murojaah dirumah dg melibatkan orang tua  & utk setiap malam jumat selama beberapa minggu,  siswa siswi halaqoh/ caberawit yg bisa membaca Al quran akan diarahkan utk solat hifdzi', '', 'Selesai', 'Bagikan'),
(149, 10086, 'kehadiran pelajar (SMP+SMA) krg lancar', 'orang tua & pelajar semua diundang musyawaroh khusus dengan 4s dan PJ KBM', '', 'Selesai', 'Bagikan'),
(150, 10086, 'mengatasi kebutuhan kelompok yg naik', 'GASEBU (gerakan sehari seribu) dimulai\r\n2 minggu sekali ditarikin ke rumah jamaah\r\nhasilnya baru 2 minggu sudah dapat Rp 550rb', '', 'Progres', 'Bagikan'),
(151, 10085, 'Pengaturan jadwal pengajian anak-anak yang malam hari saat pengajian Kelompok', 'Diambil salah satu hari saja, yaitu yang malam senin ngajinya karena yang malam Kamis besoknya sekolah. Untuk sifat pengajiannya yaitu wajib,bagi anaknya yang datang.', '', 'Progres', 'Sembunyikan'),
(152, 10085, 'Pengarahan dari PPG Daerah', '\r\n- Syukur telah dapat melaksanakan musyawaroh 5 Unsur \r\n- Tahun 2017 PPG TangBar sudah memprogramkan 88, dengan biaya Rp.350jt maka perlu dukungan dan kepedulian para jamaah\r\n- Tanggal 19 Maret 2017 ada Tabligh Akbar dari Bapak KH. Toyyibun\r\n- Untuk mendukung program PPG maka Desa dan Kelompok juga membuat program\r\n- Pembahasan saat Musyawaroh 5 Unsur masih banyak,bukan hanya masalah KBM saja', '', 'Progres', 'Sembunyikan'),
(153, 10087, 'Mengumpulkan dana untuk membuat seragam halaqah kelompok ', 'Di adakan tabungan untuk keperluan mewujudkan seragam siswa/i HTQ kelompok ', '', 'Progres', 'Sembunyikan'),
(154, 10088, ' Kapan dan siapa yg dipasrahi pembelian hadiah munaqosah dan seragam Cabe Rawit ?', 'Pak Iskandar dan Ibu Wenny survey ke tanah abang, pembelian secepatnya setelah data ukuran baju diterima, budget peranak 100rb', '', 'Selesai', 'Bagikan'),
(155, 10088, 'Snack Cabe Rawit diaktifkan kembali, bagaimana teknisnya?', '\r\nSnack berjalan kembali sesuai jadwal yg sudah dibuat, adapun jenis snack tidak harus yg berat, cukup Susu atau Ice Cream anak2 sdh senang, karena tujuan pemberian snack adalah sebagai support dan apresiasi thd kehadiran mereka.', '', 'Selesai', 'Bagikan'),
(156, 10088, 'Usul dan saran, agar dibentuk tim kreatif untuk membantu KBM generus Citra Raya', 'Ditunjuk muda/i yg kreatif dan yg mengerti ttg multimedia, sasarannya agar kejenuhan saat pengajian cabe rawit sampai muda/i berkurang, dan muda/i yg kreatif tadi dpt mengembangkan kemampuannya dan aktif dlm setiap aktifitas KBM', '', 'Selesai', 'Bagikan'),
(157, 10088, 'Usul dan Saran agar Muda/i diadakan acara seminar kecil ttg motivasi pemantapan agama, kewirausahaan, dan lain2.\r\n\r\n', 'Diadakan di klp, pemateri diisi oleh Jmh klp atau dari klp lain yg punya pengalaman dibidangnya, diadakan sebulan sekali', '', 'Selesai', 'Bagikan'),
(158, 10088, 'Jmh yg tidak tertib sambung pengaruh ke anaknya juga ikut tidak tertib sambung, bgm solusinya?\r\n\r\n', 'Sesegera mungkin 4S membuat jadwal turba kerumah Jmh tersebut, pengurus Muda/i juga membuat jadwal turba kerumah anak2 tersebut.', '', 'Selesai', 'Bagikan'),
(159, 10090, '1. mengenai seragam caberawit klp\r\n\r\n2. rencana beli infokus \r\n\r\n3. mengenai tabungan dan uang kas  setiap jumad', '1. semua jamaah klp setuju untuk mengadakan seragam caberawit\r\n\r\n- di minta amal solehnya kepada jamaah yg biasa belanja ke tanabang untuk mencari model dan harga\r\n\r\n2. pengurus akan menanyakan kesanggupan untuk membeli infokus\r\n\r\n3. orang tua agar selalu mengingatkan anaknya agar menabung dan bayar kas setiap jumat\r\n\r\n- mt akan selalu mengingatkan kepada siswa setiap kamis untuk hari jumat bwa uang kas dan nabung', '', 'Progres', 'Sembunyikan'),
(160, 10089, '1.Menyambung musy bulan kmrn masalah ssp halaqoh klp ...2.perubahan jadwal halaqoh klp yang tdnya pas mlm sambung klp  mlm selasa dan mlm kamis waktu untuk menghafal terlalu dekat...\r\n3.masalah halaqoh klp udah berjalan tp hafalannya kurang meningkat  krn 2 menghafalnya pas mau halaqoh saja', '1.setelah di kalkulasikan keb snak halaqoh klp mk di sepakati ssp halaqoh klp 50.000 per siswa  di  mulai     bulan     mret    2017       \r\n2.waktu halaqoh klp di sepakati mlm selasa dan mlm jum at  setelah ngaji pra remaja habs msgrib\r\n3.org tua supaya selalu mangingatkan agar 2nya sering menghafal di rmh sehingga ketika setoran hafalan udah pd hafal', '', 'Progres', 'Sembunyikan'),
(161, 10091, '5  unsur bulan ini tidak ada kendala,dari kbm menyampaikan sosialisasi dari ppg tangbar,kemudian nasehat dari bpak yai klompok.\r\n', '-', '', 'Progres', 'Sembunyikan'),
(162, 10092, '1.pelajar / remaja msh blm sempurna ketika mmbuat soff sholat.\r\n2.pendidikan akhlak kepada siswa bukan hanya sekedar teori.\r\n2.laporan presensi kehadiran siswa sangat menurun.', '1.akan di tertibkan lagi dgn di berikan teori & praktek lngsung.\r\n2.org tua & pengurus spy bekerja sama dlm membimmbing akhlak siswa.\r\n3.akan di tembusi ke org tua siswa yg tingkat kehadirannya rendah.', '', 'Selesai', 'Bagikan'),
(163, 10093, 'Assalamualaikum Wr. Wb\r\nKendala kegiatan KBM paket A,B C,D pada umumnya sdh berjalan lancar, untuk sementara hanya membahas rencana pembagian raport hasil evaluasi / munaqosah mengaji anak, yg di laksanakan malam kamis tgl 23 feb 2017 dan insyaA rencana tgl 26 feb 2017 akan mengajak anak2 renang di fun park patung burung\r\nAssalamualaikum, Wr. Wb', 'Mohon doanya semoga semua berjalan aman, selamat,  lancar, , barokah ', '', 'Selesai', 'Sembunyikan'),
(164, 10095, 'Pra-remaja sebagian besar belum sesuai tarjet PPG. ', 'Pada setiap pengajian kelompok dan muda-mudi pra-remaja dipisah dengan materi tersendiri.', '', 'Selesai', 'Bagikan'),
(165, 10096, 'Kemandirian belum ada perhatian yang serius di tingkat pelajar', 'Mulai di agendakan pada bulan Maret 2017, Mencoba untuk membuat acara kemandirian dengan kerajian membuat Tas dari barang bekas, dengan Tutor Ibu Suraji.', '', 'Progres', 'Sembunyikan'),
(166, 10096, 'Extra kulikuler paket C atau pelajar belum terjadwal secara rutin.', 'Extra kulikuler bermain futsal dijadwal secara rutin pada malam senin 1 atau 2 kali dalam setiap bulannya.', '', 'Progres', 'Sembunyikan'),
(167, 10096, 'Ada anak yang kurang mengerti najis.', 'Dalam pengajian caberawit disisipkan tentang pengertian dan pemahaman najis serta disimulasikan langsung bagaimana cara menjaga dari najis.', '', 'Progres', 'Sembunyikan'),
(168, 10096, 'Kehadiran pengajian muda-mudi kurang maksimal.', 'Supaya diterobosi dengan cara di sms, di telphon dan di datangi sampai ada tanggapan atau respon balik.', '', 'Progres', 'Sembunyikan'),
(169, 10094, '1.Siswa halaqoh kelompok bagaimana kalau ada siswa yang ikut namun belum bisa membaca Alquran. ', '1.Anak yang belum bisa membaca Alquran dipersilahkan ikut halaqoh kelompok selama orang tua dan anak semangat,dan yang perlu diperhatikan oleh orang tua dan anak yaitu Mahroj dan Tajwid nya. ', '', 'Progres', 'Bagikan'),
(170, 10094, '2.Jadwal PPA putra (asad) Paket A dan B. ', '2.Setiap hari sabtu jam 16:30 sampai 17:30 Pelatih oleh pelajar (mas Damar).', '', 'Selesai', 'Bagikan'),
(171, 10094, '3.Pelajar masih kurang materi Nasehat dari pengurus kelompok. ', '3.Dibuatkan jadwal pengurus kelompok Nasehat dipelajar setiap malam rabu minggu ke 2 dan 4.', '', 'Selesai', 'Bagikan'),
(172, 10094, '4.Koreksi dari orang tua,Setiap hari jumat ketika anak pulang dari ngaji di tanya materinya terkadang materi  BCM, padahal jadwal seharusnya praktek dan bacaan sholat. ', '4.Materi BCM hanya sesekali saja,adapun materi tetap diprioritaskan dan di fokuskan praktek  dan bacaan sholat.dan ditest per anak sampai sempurna.', '', 'Selesai', 'Bagikan'),
(173, 10097, 'Ada anak yg mengeluh capek karena kebanyakan kegiatan sekolah,les  dll.\r\nAsisten/pengajar masih kurang tertib kehadirannya.', 'Acara KBM dirubah jadwalnya,yg semula jam 16;30-17;30 menjadi 17;0-19;00,diharapkan asisten/pengajar dan siswa sudah cukup waktu istirahat dan acara KBM bisa maksimal dalam kehadiran maupun kualitasnya.', '', 'Progres', 'Bagikan'),
(174, 10097, 'Pelajar masih kurang tertib sholat wajibnya.', 'Saat pengajian sekalian melaksanakan sholat isya berjamaah,sebagai upaya menjaga ketertiban sholat.\r\n', '', 'Progres', 'Bagikan'),
(175, 10098, '1.CABERAWIT DIADAKAN PASANG GIRI DAN TAPAK TILU\r\n2.STUDY TOUR KEPONPES SUMBER BAROKAH DAN PONPES MINHAJURROSYIDIN\r\n3.BUTUH SOSOK FIGUR YANG TEGAS UNTUK ANAK PAUD \r\n[PEDULI DENGAN ANAKNYA SENDIRI DAN ANAKNYA ORANG LAIN]\r\n4.NASEHAT BAB AKHLAQ TERUTAMA TAâ€™DZIM KEPADA ORANG TUA TERHADAP GENERUS\r\n', '1.Sudah berjalan mulai 24/02/2017\r\n2. dibahas di Musyawaroh kelompok\r\n3.Semua jamaah berkewajiban\r\n4.dilaksdanaksan Pas nasehat Pengajian ', '', 'Selesai', 'Sembunyikan'),
(176, 10099, '1. Kegiatan halaqoh kelompok kehadiran kurang semangat sudah di ingat kan ortunya.\r\n\r\n2.(Usulan) pelajar dan muda mudi di malam jumat di galak kan sholat khifdi dan / tasbih.\r\n\r\n3.Orang tua terkendala menyimak anak yg tilawaty saatenseres di rumah.\r\n\r\n4.Biaya transport ngaji desa/daerah.', '1.Dewan guru dan pengurus akan memberi motifasi dan arahan agar lebih semangat hadir.\r\n\r\n2.Sudah berjalan tapi akan lebih di galak kan lagi,dan sarana akan di lengkapi .\r\n\r\n3.Pengurus akan menjadwal kan pelatihan cara membaca tilawaty lagu rosh.\r\n\r\n4.Pelajar dan muda mudi mengolektif barang bekas barokah dari para jamaah untuk di jual jadi biaya transport.', '', 'Progres', 'Sembunyikan'),
(177, 10101, 'Rapot untuk paket A terkendala dengan pencetakan buku yang belum selesai', 'Rapot sudah jadi, dan pembagian rapot di rencanakan akan di adakan di sawangan', '', 'Progres', 'Sembunyikan'),
(178, 10103, 'Ada beberapa siswa Paket C yg belum bisa hadir di pengajian Maghrib ', 'Bisa hadir di pengajian sambung kelompok tetapi tetap yg di wajibkan hadir di pengajian magrib', '', 'Progres', 'Sembunyikan'),
(179, 10104, '.A. Prserta Halaqoh Kelompok. Belum punya SERAGAM\r\n B.  ACARA  Halaqoh  TIdak PAke  SNaCK\r\n C.  SUDAH LAMA Tidak ada  TOUR Kelompok / tour Caberawit\r\n..', 'A . 1 ) Akan  membeli Seragam seharga   _+ a 120.000  dg Cara  Menabung \r\nSelama 2 bulan . . \r\n B.  Akan di adakan SNACK  pada acara HTQ  . .Teknis pebjatahan snack akan di Atut  oleh pengurus  4S.\r\n C. .Peserta musyawroh MenYETUJUI  DI Adakan Tour Kelompok. .\r\n . Pelaksanaan dan tujuan  akan di bahas  di 4 S . \r\n. Kepanitiaan Pengelola   akan di Serahkan Muda mudi ', '', 'Progres', 'Bagikan'),
(180, 10013, 'Kebersihan tempat pengajian dan musola\r\n', '-Penambahan Tempat sampah\r\n-Kepedulian dan saling mengingatkan dr semua pihak\r\n-Membuat tulisan2 untuk mengingatkan buang sampah pd tempatnya', '', 'Selesai', 'Sembunyikan'),
(181, 10080, 'Kehadiran dalam pengajian muda-mudi kurang lancar', '-Pengurus kelp mengawasi dan menunggui pengajian muda-mudi\r\n-Musyawarah antara pengurus dg muda-mudi\r\n-Mengadakan refresing', '', 'Progres', 'Sembunyikan'),
(182, 10102, '1.Belum sdanya sarana olah raga\r\n2. Untuk menindak lanjuti supaya anak berprestasi\r\n3.tindak lanjut untuk pembinaan generus wanit', '1. Mengumpulkan dana untuk membeli meja tenis\r\n2. Bgi jamaah yg mempunyai nilai lbih tentang olah raga supaya membina anak2\r\n3. Para pakar pendidik supaya membuat program tindak lanjut', '', 'Progres', 'Sembunyikan'),
(183, 10056, '- Baju tdk bisa sragam / sama ( sudah rusak )\r\n- Ketertiban kehadiran dan masuk kelas\r\n', '-Membelikan seragam baru\r\n-Anak2 yg kurang tertib ditrobosin\r\n-Mengarahkan anak untuk solat berjamaah di musola\r\n-Orang tua menghadirkan anak lebih awal', '', 'Progres', 'Sembunyikan'),
(184, 10105, 'Muda-mudi perlu diadakan acara ke akraban', 'akan dilaksanakan (Futsal / Bakar Ayam bersama)\r\n\r\nKoordinasi dengan pengurus muda-mudi', '', 'Progres', 'Sembunyikan'),
(185, 10105, 'Perlu diadakan Nasehat dari pengurus untuk Caberawit', 'Sudah dilaksanakan minggu terakhir', '', 'Selesai', 'Sembunyikan'),
(186, 10105, 'pertanyaan : untuk snack / makan bersama Caberawit jatah grup berapa?', 'Grup 3 pada tanggal 31 Maret 2017', '', 'Selesai', 'Sembunyikan'),
(187, 10105, 'Setiap pengajian agar ada Notulen kegiatan', 'Sudah dibuatkan Notulen, tinggal dijalankan', '', 'Progres', 'Sembunyikan'),
(188, 10107, 'Tingkat pencapaian paket C kurang maksimal', 'Yang paling tau tentang ini,mestinya orang tua,kendala apa yg ada dirumah? \r\nKemudian diusahakan antara siswa Jm dengan yang belum Jm dipisahkan', '', 'Progres', 'Sembunyikan'),
(189, 10107, 'Untuk Paket C,kurang semangat dalam mengaji nya (berat)', 'Perlu ada pertemuan khusus (Pengurus&BK)  untuk bicara keterbukaan antara siswa paket C. Agar terbuka dengan permasalahannya', '', 'Progres', 'Sembunyikan'),
(190, 10107, 'Jadwal pengajar paket c?', 'Jadwal mengajar paket C. Mas khoiri yg laki laki. Dan yang perempuan Mba dika', '', 'Progres', 'Sembunyikan'),
(191, 10107, 'Jadwal HTQ paket C?', 'Akan dibuat jadwal HTQ khusus paket C', '', 'Progres', 'Sembunyikan'),
(192, 10108, '1. Paket C&D masih kurang lancar kehadirannya .\r\n\r\n2.dukungan dari orang tua belum maksimal.', '1. Rencana refresing untuk paket A,B,C&D sabtu 25 maret setelah dzuhur di kolam renang.\r\n\r\n2. Malam minggu ke 3 akan diadakan pelatihan kemandirian membuat mie ayam.\r\n\r\n', '', 'Progres', 'Bagikan'),
(193, 10109, 'Materi BCM buat putrid blm??(yg cowok main bola)', 'blm ada solusi,', '', 'Progres', 'Bagikan'),
(194, 10109, 'Seragam caberawit klp sudah lam blm mengadakan.', 'Seragam Caberawit kelomopk di ACC,silahkan survey bahan dan harga nanti di share di grup WA', '', 'Progres', 'Bagikan'),
(195, 10109, 'Futsal caberawit minta dirutinkan,dan minta dibuatkan seragam', 'Seragam bola caberawit dipending dulu\r\nFutsal dijadwalkan rutin 1X sebulan dan diikuti semua jamaah,dari caberawit sampai yg bapak2\r\n', '', 'Selesai', 'Bagikan'),
(196, 10109, 'Laporan2', 'Laporan: Pra Remaja sudah mulai bantuin(jadi assisten ) mengajar paket AB\r\nLaporan Ikhtibar Di Cipanas Cianjur : Panca nurul,Abdul Ghani,& Riri ,semua dapat nilai mumtaz, dan Nurul dapat peringkat 2 dari 30 siswa\r\nLaporan GASEBU(Gerakan Sehari seriBu,penarikan bln ini dapat Rp 900rb\r\n', '', 'Selesai', 'Bagikan'),
(197, 10110, '1. adanya siswa/i yang jarang mengikuti kbm menyebabkan pencapaian kelas tidak bisa seragam\r\n2. kesemangatan pelajar dan muda/i mengikuti pengajian', '1. jika memang pencapaian tidak seragam masing2 individu, dipersilahkan menggunakan metode iqro\r\n2. jadwal tempat pengajian diubah-ubah, agar pelajar dan muda/i semangat ', '', 'Progres', 'Sembunyikan'),
(198, 10113, 'Kehadiran PAUD ada sama sekali tidak hadir dalam satu bulan. Indikasi salah satu penyebab adalah dimarahi oleh pengajar/asisten.', 'Pengurus akan memanggil semua pengajar & memberi arahan.  Disamping itu orang tua juga harus memaklumi keadaan pengajar dg segala keterbatasannya.', '', 'Progres', 'Bagikan'),
(199, 10113, 'Program tabungan untuk membeli seragam / gamis belum berjalan', 'Dikarenakan ada tabungan sebelumnya yg belum jelas penyelesaiannya. Tabungan baru akan berjalan klo sudah  clear tabungan sebelumnya', '', 'Progres', 'Bagikan'),
(200, 10113, 'Sudah lama tidak diadakan solat hifdzi utk generus yg ikut halaqoh', 'Sholat hifdzi akan dirutinkan lagi dg didampingi pengurus', '', 'Progres', 'Bagikan'),
(201, 10113, 'Pencapaian akhlaq generus bel dilaporkan dalam musyawarah lima unsur', 'Materi akhlaq sebenarnya semua sudah disampaikan.  Tapi akhlaq adalah masalah praktek keseharian sehingga peran orang tua sangat penting utk mengontrol akhlaq putra-putrinya masing2. Akan dikajikan materi akhlaq utk semua jamaah spy masing2 orang tua bisa memahami, praktek & mengontrol  anaknya', '', 'Progres', 'Bagikan'),
(202, 10114, 'Tour Kelompok Sekaligus pembagian rapot dan apresiasi pada generus paket A,B,C,D Di Sawangan', 'Pelaksanaan pada hari minggu tgl. 26-maret-2017 ', '', 'Progres', 'Sembunyikan'),
(203, 10114, 'Rencana Pengadaan Seragam HTQ kelompok', '.', '', 'Progres', 'Sembunyikan'),
(204, 10112, '1.Mulai usia cabe rawit supaya dilatih dan diajarkan bab Toharoh, diluar materi kurikulum PPG. ', '1.Bab materi Toharoh diberikan pada hari kamis pada saat materi akhlak diberikan dasar-dasar mensucikan diri. ', '', 'Selesai', 'Bagikan'),
(205, 10112, '2.Penambahan seragam siswa paket A&B, biaya dengan cara menabung. ', '2.Mulai bulan maret semua siswa supaya bisa menabung, target bulan Juni sudah terpenuhi minimal Rp 100.0000. ', '', 'Progres', 'Bagikan'),
(206, 10112, '3.Penambahan Assistant untuk mengajar di Paket A. ', '3.Penambahan Assistant dari alumni GP daerah yaitu: Sdri Qisthy dan Sdri Ika. ', '', 'Selesai', 'Bagikan'),
(207, 10112, '4.Perubahan jadwal PPA putra paket A&B. Dikarenakan pelatih jam 17:00 belum bisa melatih. ', '4.Semula dimulai jam 17:00 dirubah magrib di majelis, setelah magrib langsung dimulai. ', '', 'Selesai', 'Bagikan'),
(208, 10078, 'Setiap ada informasi pengajian dan pengumuman remaja amsol orang tua membantu dalam mengingatkan dan memberikan informasi kepada anaknya', '-', '', 'Progres', 'Sembunyikan'),
(209, 10078, 'Diadakan acara senam barokah untuk caberawit atau generus sebulan sekali, sebagai refreshing untuk menghilangkan kejenuhan dalam acara pengajian', '-', '', 'Progres', 'Sembunyikan'),
(210, 10078, 'Untuk mubalig, kalau mengajar supaya menggunakan pakayan rapih dan sopan  untuk memberikan contoh yang baik kepada caberawit, termasuk ketika menjadi imam sholat', 'Sudah di ingatkan kepada mubalignya', '', 'Progres', 'Sembunyikan'),
(211, 10078, '-', 'Masukan dari orang tua : Allhamdullilah dengan sering praktik sholat sekarang anak anakkecil sudah hafal bacaan bacaan sholat dan cara prakteknya ajzkh om kayas', '', 'Progres', 'Sembunyikan'),
(212, 10078, 'Kenapa sampai saat ini latihan nasehat kok belum berjalan, padahal sudah dibuatkan jadwal - Jadwal nasehat kelompok supaya di mansuh karena tidak berjalan dari pada saling dosa mendosakan lebih baik di mansuh.', 'Sudah di buatkan jadwal, supaya saling mengingatkan terutama dari pengurus dan keimaman', '', 'Progres', 'Sembunyikan'),
(213, 10116, '1.Pengajian muda-mudi kurang lancar!', '*cara mengumpulkan anak dan ortu kurang efektif krn cara itu dah  di laksanakan alasan krj sip dan capek kerja over time.mk akan di lakukan pemnggilan face to face spy lbh jelas duduk permasahan yg sebenarnya', '', 'Progres', 'Sembunyikan'),
(214, 10115, '1.mengenai pembelian infokus\r\n\r\n2.akan membuat seragam caberawit\r\n\r\n3.mengusulkan bahwa di masjid agar di sediakan peralatan sholat seperti sarung dan mukena\r\n\r\n4.anak usia smp dan sma belom memahami tentang bab thoharoh', '1.penerobos akan menariki kesanggupan jamaah untuk pembelian infokus\r\n\r\n2.seragam caberawit akan di bantu dri dana 5 unsur adapun kurangnya di ambilkan dri tabungan caberawit\r\n\r\n3.desa akan menyediakan peralatan di masjid desa\r\n\r\n4.pengajar atau mt akan menyampaikan kpda pra remaja dan remaja mengenai bab thoharoh', '', 'Progres', 'Sembunyikan'),
(215, 10117, 'Caberawit kurang lancar\r\n', '1. Pendekatan dari teman2 yang terdekat\r\n2. Peran orang tua harus lebih intens kepada anak\r\n3. Para pengajar harus bisa masuk ke dunia anak agar mereka bisa nyaman dan mau ngaji', '', 'Progres', 'Bagikan'),
(216, 10118, 'Untuk menjaga najis di toilet belum tersedia cantelan buat anak caberawit', 'Dibuatkan cantelan yang bisa dijangkau oleh anak.', '', 'Progres', 'Sembunyikan'),
(217, 10118, 'Musyawaroh kurang pro aktiv dari pihak orang tua.', 'Dibulan selanjutnya akan dimusyawarohkan  dibuatkan group dan menghasilkan sebuah usulan atau kritikan', '', 'Progres', 'Sembunyikan'),
(218, 10118, 'Kemandirian pada pra remaja dan remaja tentang kerajinan taangan belum selesai', 'dijadwalkan dan dilanjutkan di bulan selanjutnya', '', 'Progres', 'Sembunyikan'),
(219, 10118, 'karena adanya jadwal extra kulikuler, perlu pembiayaan.', 'akan dimusyawarohkan lebih lanjut', '', 'Progres', 'Sembunyikan'),
(220, 10106, '1.pengajaran doa-doa bersama paud\r\n2.kehadiran yang jarang\r\n3.pendanaan KBM', '1.pengajaran diakhir,karna pada saat itu anak" pada kumpul\r\n2.konsultasi pada orangtua murid langsung melalui WA\r\n3.buat rencana program pendanaan dan pelaksanaan', '', 'Progres', 'Sembunyikan');
INSERT INTO `detail` (`id_detail`, `id_lap`, `kendala`, `solusi`, `ket`, `stat`, `publis`) VALUES
(221, 10121, '1.kehadiran pra remaja atau muda  mudi blm maksimal    2.halaqoh  klp hafalan blm di tambah 2 krn siswanya kurang murojaah shg tdk hafal ktk setoran hafalan\r\n', 'Akan di jadwal pengurus utk nungguin pengajian remaja  shg remaja ataupun muda mudi semakin semangat dlm mengaji nya  2.pengurus aksn memanggil org tua halaqoh utk mengingatkan anak 2nya supaya murojaahnya  tertib', '', 'Progres', 'Sembunyikan'),
(222, 10100, '1.asisten/ pendamping pengajar\r\n\r\n2.Salah satu orang tua blm bisa mengantar anak ke tempat mengaji\r\n\r\n3.Usulan pemantapan bab akhlak /adab spy sesering mungkin di sampaikan,dan untuk menjadi tahfidul quran', '1.Sudah di data dan dalam proses penjadwalan\r\n\r\n2.Sementara pendampingan orang tua di rumah dahulu\r\n\r\n3.Setiap acara pengajian selalu di ingatkan.', '', 'Progres', 'Sembunyikan'),
(223, 10122, 'Untuk acara pembagian rapot di tunda karena banyaknya acara dari muda2nya', 'Pembagian rapot di laksanakan di mushola sambil makan2 dan penampilan dari caberawit, adapun waktu menyusul / di musyawarahkan lagi', '', 'Progres', 'Sembunyikan'),
(224, 10123, 'Anak anak yg sudah memiliki cukup banyak hafalan... seringkali lupa ketika di minta memurojaah hafalan nya...dan masih dirasa kurang di dalam hal tajwid nya...', 'Kelompok memberikan mp3 beserta memori yg di isi bacaan quran yg mudah di ikuti oleh anak anak kepada keluarga yg memiliki Generus.... untuk membantu anak mengingat & menghafal hafalan dan di harapkan bisa mengikuti tajwid nya dengan benar...&  akan di buat kan buku pengontrol murojaah....untuk memudahkan kan pengajar mengontrol ketertiban murojaah nya anak saat di rumah...', '', 'Progres', 'Bagikan'),
(225, 10124, 'Kurang maksimalnya kehadiran Remaja dalam acara pengajian muda-mudi kelompok', 'Para Remaja dinasehati kembali dan mengingatkan semua pihak (5 unsur) bahwa ini adalah masalah & tanggung jawab bersama', '', 'Progres', 'Bagikan'),
(226, 10126, 'Bicara 4 (empat) mata pada seluruh orang tua generus membahas progress, kendala, sikap dan prilaku anak', 'Akan ditindaklanjuti', '', 'Progres', 'Bagikan'),
(227, 10125, 'Pengajian pelajar atau paket C yg jadwalnya seminggu 2 kali.malam senin dan malam jumat,tp untuk malm senin kurang lancar', 'Untuk malam senin di rubah menjadi malam rabu dari magrib sampai jam 21:00 (dari jam 20:00 di gabung sama muda2i)', '', 'Selesai', 'Bagikan'),
(228, 10120, 'Test', 'Test', '', 'Progres', 'Sembunyikan'),
(229, 10127, 'Pembahasan mengenai refresing yg di ajukan oleh muda2i.\r\nDan pembahasan ktertiban,kedisiplinan guru dan Asst.pelajar dalam setiap KBM', 'Refresing insyallah akan di laksanakan tgl 2 april 2017 ke bandung.\r\nDi tekankan kpd pengajar dan Asst.pengajar supaya lebih di tertibkan dan disiplin dalam waktu dan metode pengajaran', '', 'Progres', 'Bagikan'),
(230, 10128, '1.evaluasi pengajian muda mudi semalam suntuk didesa,karna kehadiran masih belum maksimal.\r\n2.pembuatan jadwal muda mudi yang akan menyampaikan dikelompok.\r\n3.pembangunan mushola lantai 2', '1.bagi masing2 orang tua supaya lebih memperhatikan jadwal pengajian anak2 nya dan agar terus mendorong anak2 nya untuk mengaji.\r\n2. setiap masing2 muda mudi akan belajar menyampaikan al quran dikelompok dengan durasi waktu 30 menit.\r\n2.Pembangunan musholla lantai 2 dari pembelaan jamaâ€™ah (swadaya).\r\n\r\n', '', 'Progres', 'Sembunyikan'),
(231, 10129, '1.pembuatan seragam halaqoh\r\n2.pengurus diminta untuk mendampingi saat halaqoh dikelompok\r\n3.pembuatan struktur halaqoh dikelompok\r\n4.jadwal snack halaqoh', '1.seragam halaqoh kelompok akan segera diwujudkan.untuk sementara dana ditalangi oleh pak narto\r\n2.setiap halaqoh dikelompok akan ditungguin oleh satu pengurus,dan akan dijadwalkan\r\n3.struktur halaqoh kelompok\r\n   kepala sekolah : bpk prihartono\r\n   sekertaris          : mas kurniawan\r\n   pengajar            : mas ubed,,mas kurniawan,,mas triono\r\n\r\n', '', 'Progres', 'Sembunyikan'),
(232, 10130, '1.pembahasan tour muda mudi ke pantai anyer', '1.setiap masing2 anak akan dikenakan biaya sebesar 135.000\r\n2.konsumsi diserahkan kepada ibu2\r\n3.kordinator pencari bis yaitu bpk narto,bpk rowi,mas kurniawan\r\n4.keberangkatan akan dilaksanakan tanggal 23 april dan berkumpul dimushola pukul 06.00 wib\r\n5.total biaya yg dibutuhkan sekitar Rp.5.500.000.\r\n6.bagi orang tua yg tidak mampu membayar akan digunakan sistem subsidi silang.', '', 'Progres', 'Sembunyikan'),
(233, 10131, 'Keadaan kelas yang minim', 'Pembuatan sekat pada kelas tiap tingkat kelas\r\n', '', 'Progres', 'Sembunyikan'),
(234, 10131, 'Refresing caberawit untuk meningkatkan semangat anak', 'Refresing ke tempat rekreasi ', '', 'Progres', 'Sembunyikan'),
(235, 10131, 'Meningkatkan semangat kehadiran anak dalam pengajian yg masih menurun atau kurang', 'Pemberian hadiah pada anak yang tiap bulan full datang tanpa ijin', '', 'Progres', 'Sembunyikan'),
(236, 10132, 'Refresing caberawit besok tgl 9april', 'Pengumpulan dana  paling lambat tgl 8 april 2017', '', 'Progres', 'Sembunyikan'),
(237, 10132, 'Baju caberawit yang sudah kusam atau lama', 'Pembelian baju yang akan dimusyawarahkan di forum musyawarah 4s', '', 'Pending', 'Sembunyikan'),
(238, 10132, 'Pembuatan sekat kelas caberawit ', 'Pembuatan jadi 1 pcs yg 2 pcs masih pending ', '', 'Pending', 'Sembunyikan'),
(239, 10132, 'Bangku caberawit kurang ', 'Donatur jamaah yang sudah di sanggupi oleh salah satu jamaah ', '', 'Progres', 'Sembunyikan'),
(240, 10132, 'Asisten caberawit kurang', 'Penambahan asisten caberawit Bu Bintang Tulus', '', 'Selesai', 'Sembunyikan'),
(241, 10119, '1.Acara tour ke pondok karawang untuk pelajar', '1.di Rencanakan tanggal 14-4-2017 ', '', 'Selesai', 'Sembunyikan'),
(242, 10133, 'Masukan kendala disini...\r\nkenakalan anak caberawit', 'Masukan saran / solusi alternatif ..\r\nmembentuk orang tua asuh\r\npendekatan emosional antara pengajar,orang tua ke anak\r\nmembuat catatan kecil untuk bahan diskusi pengajar dg orang tua\r\nsupaya ngji tidak bosan,dibuat yg menyengkan dg permainan dll', '', 'Progres', 'Sembunyikan'),
(243, 10135, '1.PENGAJIAN MUDA MUDI NON PELAJAR KURANG LANCAR : KENDALA UTAMA YAITU SULIT UNTUK MENGUMPULKAN MUDA MUDI NON PELAJAR\r\n2. HAFALAN ASMAUL HUSNA PAKET A KURANG\r\n3. KELAS PAKET A SD TERLALU BANYAK MURIDNYA DAN RAMAI KARNA DALAM SATU RUANGAN TERDAPAR DUA KELAS ( PAKET A (TK) DAN PAKET A (SD) )', '1. BP.MAKSUM: "BUAT KOMITMEN DENGAN MUDA  MUDI"    \r\n    BP. AAN : "DILAKUKAN PENDEKATAN / PDKT TERHADAP MUDA MUDI YANG KURANG LANCAR".\r\n2. BP.CATUR : "ORANG TUA AGAR MENSUPPORT ANAK-ANAKNYA".\r\n3. - TEMPAT DI MASJID LANTAI 2                                               \r\n    - MENAMBAH ASSISTEN DARI SISWA HTQ DES', '', 'Progres', 'Sembunyikan'),
(244, 10134, '1. Kehadiran Kelas Paket B kehadirannya ada yang kurang lancar \r\n2. Paket A ( TK ) dalam mengaji sulit untuk diarahkan\r\n3. Pengajian Paket C & D yang aktif hanya 50 % sisanya sama sekali tidak pernah hadir', '1. Peran Orang tua supaya difungsikan agar dapat mendorong anak-anaknya bisa tertib dalam kehadiran mengajinya\r\n2. Oramg tua supaya membantu pengajarnya agar anak anak lebih mudah untuk diarahkan\r\n3. Memanggil anak anak yang kurang lancar dalam mengaji dan diberi arahan oleh Tim BK ( Bimbingan Konseling )\r\n', '', 'Progres', 'Sembunyikan'),
(245, 10137, '1.pengumuman" acara daerah terdekat\r\n2.penggalangan dana buat almari', '1.', '', 'Progres', 'Sembunyikan'),
(246, 10138, '1. Lebih menertibkan lagi kehadiran paket A&B.\r\n\r\n', '1.usulan untuk lebih tertibnya kehadiran pengajian paket C&D , pengajian tetep dijadwalkan dirumah2 jamaah.', '', 'Progres', 'Bagikan'),
(247, 10140, 'kehadiran cabe rawit paket a & b kurang, paket c & d memprihatinkan', 'jadwal paket c & d digilir/berpindahÂ², orang tua lebih aktif dan mengontrol kehadiran putra putrinya', '', 'Progres', 'Sembunyikan'),
(248, 10141, 'Penambahan waktu KBM Paket A saat sebelum dimulai.', 'Penambahan 15 menit,seebelumnya dimulai jam 16:45 sekarang menjadi 16:30.dan sudah dijalankan. ', '', 'Selesai', 'Bagikan'),
(249, 10142, 'Anak suka main ke WARNET', '1. PEMBATASAN JAM BELAJAR\r\n    Sehabis magrib anak diarahkan untuk tidak keluar rumah / belajar dirumah\r\n2. PADA SAAT SAMBUNG KELOMPOK\r\n    Anak" diarahkan untuk belajar bersama / bermain Dengan diawasi / diajari oleh tenaga pendidik\r\n3. HOBY ANAK DISALURKAN / DIFASILITASI \r\n    Dibikinkan gawang buat bermain sepak bola', '', 'Progres', 'Sembunyikan'),
(250, 10143, 'Laporan MT', 'Paket A materi 75%\r\nPaket B materi 90%\r\nPaket CD kehadiran 50-70%,kehadiran yg putri ada ketambahan dari paket B(rara riri)\r\nsudah belajar menyampaikan dan nasehat\r\nmateri alquran (Al Qolam),K.sholah(s.khifdzi)\r\nbisa sholat maghrib berjamaah di SB', '', 'Progres', 'Bagikan'),
(251, 10143, 'Laporan MM', 'mayoritas pelajar ,sedangkan yg kerja 6 orang(perantauan)\r\nmlm rabu pengajiannya,kehadiran 60-80%\r\nkemandirian:bikin bakpao\r\nfutsal ke GSG', '', 'Progres', 'Bagikan'),
(252, 10143, 'pergantian MT yg baru dari mas Usuludin ke Mas Fadel', '-', '', 'Progres', 'Bagikan'),
(253, 10141, 'PPA putri sudah bisa dimulai dan sudah dapat pelatihnya.', 'PPA putri latihan setiap malam minggu habis magrib, pelatih oleh mbak Rima dan mbak Devi.', '', 'Selesai', 'Bagikan'),
(255, 10141, 'Remaja sebagian sudah tidur dimajellis,namun sebagian terdapat tidur terlalu larut malam karena masih mengaktifkan laptop', 'Sebelum dikasih batasan waktu,diberikan pengertian tentang mudhorot begadang sehingga remaja akan menyadari dengan sendirinya.dan mobaligh supaya mengontrol dan mengingatkan saat di majelis. ', '', 'Progres', 'Bagikan'),
(256, 10144, '1.Pengajian Remaja malam Rabu di Mushola supaya memakai sitroh', '1.untuk kegiatan akan dimulai minggu berikutnya ,karena  masih  ada sarah asad', '', 'Progres', 'Sembunyikan'),
(257, 10144, '3. Berhubung MT purna tugas MS akan dan asisten di berdayakan lagi untuk caberawit\r\n4.untuk asisten caberawit ', '3.di musyawaohkan malam Rabu waktu dan dewan gurunya bersama MS,Penjab,dan para wali \r\n4.Pra remaja dan di bantu Ms ', '', 'Progres', 'Sembunyikan'),
(258, 10145, 'Seragam Cabe Rawit belum dibelikan', 'PIC Bp Iskandar dan Bu Weny, seragam dibelikan dulu sampelnya', '', 'Selesai', 'Bagikan'),
(259, 10145, 'Absensi KBM yang tidak hadir anaknya itu2 saja', 'Dibuatkan list nama-nama tersebut dan diarahkan orang tuanya, termasuk kehadiran sambung orang tuanya itu sendiri berpengaruh pada kehadiran pengajian anaknya', '', 'Selesai', 'Bagikan'),
(260, 10145, 'Masih ditemui anak2 bersikap kurang patuh terhadap orang tua dan terkesan orang tuanya kurang berwibawa', 'Anak-anak baik dirumah, di tempat mengaji agar sering diarahkan untuk selalu menghormati orang tua dengan cara yang baik, dicontohi dan dibimbing sampai mengerti. Ini tugasnya semua Jamaah ', '', 'Selesai', 'Bagikan'),
(261, 10139, 'Kelas pembelajaran yg di jadikan satu, khususnya kelas tilawati (dari tilawati 1-6)', 'Karena minimnya siswa apabila dipisah dikhawatirkan akan berdampak pada kesemangatan dalam menghadiri pengajian, serta tidak adanya jam pembelajaran yg sesuai jadi tetap di ambil lancarnya... Kelas tetap dijadikan satu...', '', 'Progres', 'Sembunyikan'),
(262, 10139, 'Peningkatan ilmu', 'Pembuatan tugas guna meningkatkan kualitas ilmu', '', 'Progres', 'Sembunyikan'),
(263, 10139, 'Kurangnya minat menghadiri pengajian karena malu /tertinggal dalam materi', 'Diadakan kelas privat dan dicarikan tempat dan waktu khusus', '', 'Progres', 'Sembunyikan'),
(264, 10139, 'Kurangnya minat mengaji karena seringnya berganti MT yg mnybabkan berubahnya sistem pembelajaran contoh tadinya tilawati 6 atau alquran dirubah jadi tilawati 3 atau dibawahnya', 'Penetapan MT, atau sebelum berganti MT dimangkuli atau serah terima dalam pencapaian target tiap siswa', '', 'Progres', 'Sembunyikan'),
(265, 10139, 'Kurangnya pengajar', 'Siswa GU dilibatkan dalam membantu pengajaran baik di pengajian klp atau pengajian pelajar', '', 'Progres', 'Sembunyikan'),
(266, 10139, 'Jenuh dan tidak mau ngaji', 'Diadakan refreshing atau diberikan pendekatan untuk mengambil hatinya dan diberi masukan masukan yg positif', '', 'Progres', 'Sembunyikan'),
(267, 10147, 'untuk setiap pengajian kelompok supaya ada dari remaja untuk membuka / MC agar pengajian bisa on time', 'akan dijalankan untuk mekanisme diatur oleh ketua muda/i kelompok', '', 'Progres', 'Sembunyikan'),
(268, 10147, 'untuk kehadiran muda/i kurang maksimal (kehadiran 49%)', 'Jika ijin / tidak datang mengaji amal sholih penerobos agar mengecek ke kontrakan / rumah muda/i nya. untuk absensi kehadiran supaya dilaporkan di forum musyawarah kelompok.', '', 'Selesai', 'Sembunyikan'),
(269, 10147, 'Untuk kegiatan keakraban muda/i kurang lancar', 'wali muda/i agar mengontrol muda/i nya,, memberikan motivasi atau saran dan masukan. (Lebih gambuhi muda/i nya) kendala-kendala dalam forum muda/i\r\n\r\n', '', 'Progres', 'Sembunyikan'),
(270, 10147, 'pengajian caberawit agar memakai seragam', 'sudah di infokan\r\nsenin : Seragam Kelompok\r\nSelasa : Seragam Kelompok\r\nRabu : Seragam Desa\r\nKamis : Seragam Desa\r\nJumat : Muslim Bebas', '', 'Selesai', 'Sembunyikan'),
(271, 10147, 'untuk jamaah yang kenaan shift malam supaya diadakan pengajian siang hari.', 'akan di musyawarahkan forum kelompok', '', 'Pending', 'Sembunyikan'),
(272, 10147, 'untuk snack caberawit grup berapa?', 'untuk snack pada tanggal 28 April 2017 Grup 1\r\n\r\n\r\nuntuk grup akan dibagi menjadi 3 grup.', '', 'Selesai', 'Sembunyikan'),
(273, 10147, 'Tour Caberawit kapan?', 'untuk tour caberawit akan dilaksanakan pada tanggal 24 April 2017, tempat Fun Park, untuk biaya dari Donatur/pengurus kelompok.', '', 'Selesai', 'Sembunyikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `generus`
--

CREATE TABLE IF NOT EXISTS `generus` (
  `nig` varchar(8) NOT NULL,
  `id_kelompok` varchar(7) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jekel` varchar(10) NOT NULL,
  `gol_darah` varchar(3) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` varchar(14) NOT NULL,
  `nm_ayah` varchar(50) NOT NULL,
  `nm_ibu` varchar(50) NOT NULL,
  `id_kat` int(5) NOT NULL,
  `foto` text NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `generus`
--

INSERT INTO `generus` (`nig`, `id_kelompok`, `nama`, `tempat_lahir`, `tgl_lahir`, `jekel`, `gol_darah`, `alamat`, `nohp`, `nm_ayah`, `nm_ibu`, `id_kat`, `foto`, `date_input`, `date_update`) VALUES
('93700001', '2016004', 'Sadam Husen', 'Jakarta', '1992-05-14', 'Laki Laki', 'AB', 'Tangerang banten Indonesia', '085715887704', 'Sumadi', 'Ngatiem', 2, '93700001_Tulips.jpg', '2017-04-21 04:04:47', '0000-00-00 00:00:00'),
('93700002', '2016004', 'Achmad Faisal', 'Jakarta', '1984-03-12', 'Laki Laki', 'B', 'Kp. Gebang RT. 004/002 Kelurahan Sangiang Jaya Kec Periuk Kota Tangerang', '085715887704', 'Sumadi', 'Ngatiem', 1, '93700002_Jellyfish.jpg', '2017-04-21 04:04:46', '0000-00-00 00:00:00'),
('93700003', '2016004', 'Ariy Wildan Himawan', 'Tanjung Agung', '1992-01-01', 'Laki Laki', 'B', 'Kp. Gebang RT. 004/002 Kelurahan Sangiang Jaya Kec Periuk Kota Tangerang', '085715887704', 'Sumadi', 'Ngtiem', 4, '93700003_Tulips.jpg', '2017-04-21 04:04:52', '0000-00-00 00:00:00'),
('93700004', '2016004', 'Hendri Yulianto', 'Rejo Agung', '1992-05-14', 'Laki Laki', 'B', 'Kp. Gebang RT. 002/002', '085715887704', 'Sumadi', 'Ngatiem', 6, '93700004_2016 2.jpg', '2017-04-22 01:04:23', '0000-00-00 00:00:00'),
('93700005', '2016004', 'Ahmad Ismail', 'Klaten', '1991-03-03', 'Laki Laki', 'A', 'Kp. Gebang RT. 002/002', '085715887704', 'Sumadi', 'Ngatiem', 3, '93700005_B01 copy.jpg', '2017-04-22 01:04:11', '0000-00-00 00:00:00'),
('93700006', '2016004', 'Yosep Susanto', 'Kebumen', '2004-03-08', 'Laki Laki', 'B', 'Jakarta Barat - Indonesia', '085715887704', 'Sumadi', 'Ngatiem', 2, '93700006_2007.jpg', '2017-04-22 01:04:15', '0000-00-00 00:00:00'),
('93700007', '2016004', 'Basuki Saputra', 'Maagar', '1980-06-13', 'Laki Laki', 'AB', 'Ciputat Tangerang', '0092939393939', 'Sumadi', 'Ngatiem', 2, '93700007_20160506_09571212.jpg', '2017-04-28 10:04:22', '0000-00-00 00:00:00'),
('93700008', '2016004', 'Bayu Saputra', 'Jakarta', '1982-02-02', 'Laki Laki', 'A', 'Ciputat Tangerang', '0092939393939', 'Sumadi', 'Ngatiem', 4, '93700008_8.png', '2017-04-28 10:04:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kat` int(5) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kat`, `kategori`, `ket`) VALUES
(1, 'Pelajar SD - Paket (A)', ''),
(2, 'Pelajar SD - Paket (B)', ''),
(3, 'Pelajar SMP -Paket (C)', ''),
(4, 'Pelajar SLTA - Paket (D)', ''),
(5, 'Mahasiswa / Muda Mudi', ''),
(6, 'Muda Mudi', '');

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
('2016001', 'Pondok Alam Permai  (PAP)', '0', 'Pondok Alam Permai - Tangerang', '085715887704', 'Hendri Yulianto', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016002', 'Pondok Makmur', '2016001', 'Perum Pondok Makmur', '0811-8440-070', 'Amin Purnomo', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016003', 'Keroncong', '2016001', 'Keroncong Permai', '089678071070', 'Tarmono', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016004', 'PPG Tangerang Barat', '0', '-', '085715887704', 'Hendri Yulianto', 'b4413dd8544d352b5acd3b528a867cf7', 'Admin', 1),
('2016005', 'Taman Kota', '2016001', 'Taman Kota', '081218843995', 'Muntasir', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016006', 'Jati', '0', 'Jati', '-', '-', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016007', 'Jati Baru', '2016006', 'Jati', '085796335495', 'Ahmad Saiful Rodli', 'c99fec9eda866cfcf95a36bb7b5f0daf', 'Kelompok', 0),
('2016008', 'Jati Lama', '2016006', 'Jati', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016009', 'Bumimas', '2016006', 'Jati', '081281417595', 'lubis zulkarnaen', '8dd48d6a2e2cad213179a3992c0be53c', 'Kelompok', 0),
('2016010', 'Tangerang Barat', '0', 'Tangerang', '-', '-', '202cb962ac59075b964b07152d234b70', 'Daerah', 1),
('2016011', 'Kutajaya', '0', 'Kutajaya', '-', '-', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016012', 'Rawacana', '2016006', 'Jati', '0815 1183 4330', 'Didik Maryanto', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016013', 'Purati', '2016001', 'Purati', '-', 'Edo', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016014', 'Bermis', '2016011', 'Bermis', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016015', 'Gelam', '2016011', 'Gelam', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016016', 'Wisma Mas', '2016011', 'Perum Wisma Mas,Kutajaya,Tangerang', '085777334950', 'Widodo E.S.', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016017', 'Puri', '2016011', 'Puri', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016018', 'Taman Raya', '2016011', 'Taman Raya', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016019', 'Rajeg Asri', '2016011', 'Perum Rajeg Asri blok E5 no1/2,Rajeg,Rajeg,Tangerang,Banten 15540', '0857-8135-4119', 'PURWO AGUNG', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016020', 'Tangerang Elok', '2016011', 'Tangerang Elok', '085642150634', 'Wahyu Feri Prasetya', '92deb3f274aaee236194c05729bfa443', 'Kelompok', 0),
('2016021', 'Walet', '2016011', 'Taman Walet', '085269336060', 'Abas Ashari ', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016022', 'Jayanti', '0', '-', ' -', '-', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016023', 'Sempur I', '2016022', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016024', 'Sempur II', '2016022', 'Jl Raya Serang km 33', '082112172384', 'Fadli S', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016025', 'Adiyasa', '2016022', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016026', 'Sumur Bandung', '2016022', 'Kp. Sempur Ds. Sumur Bandung Kec. Jayanti Kab.Tangerang', '085217321935', 'Karyono', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016027', 'Balaraja', '2016022', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016028', 'Bukit Gading', '2016022', 'Perumahan Bukit Gading', '-', 'Sutardi', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016029', 'Tigaraksa', '0', '-', ' -', '-', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016030', 'Tigaraksa I', '2016029', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016031', 'Tigaraksa II', '2016029', '-kp Leungsir, kel.Munjul,kec.Solear. Tangerang', '-085218691815', '-Kelompok  : Mulyadi', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016032', 'Rancagede', '2016029', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016033', 'Mustika', '2016029', 'Perum Mustika Desa Pasir Nangka Kec Tigaraksa Kab Tanggerang', '083813068060', 'Nur Eksanto', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016034', 'Bidara', '2016029', 'perumahan puri bidara permai ', ' +62 821-1264-2', 'pak ilyas', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016035', 'Sudirman', '2016029', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016036', 'Cikupa', '0', '-', ' -', '-', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016037', 'Cikupa', '2016036', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016038', 'Bitung', '2016036', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016039', 'Citra Raya', '2016036', 'Jl. Wijaya 12 Blok W25/20 Graha Pesona', '081315717021', 'Dwi Edi Wibowo', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016040', 'Graha Citra', '2016036', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016041', 'Periuk Jaya', '0', '-', '081286081415', 'Aan hernawan', '202cb962ac59075b964b07152d234b70', 'Desa', 0),
('2016042', 'Periuk Jaya I', '2016041', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016043', 'Periuk Jaya II', '2016041', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016044', 'Sangiang', '2016041', '-jl elang 2 No 14 griya Sangiang mas tgr', '082298726102', '-alfian kurniawan', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016045', 'Total', '2016041', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016046', 'Pondok Arum', '2016041', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016047', 'Kutabumi', '2016041', 'Perumahan pondok indah Jl catelia 3 no 1 & 2.kec pasar Kemis.kelurahan Kuta bumi', '-', ' Bpk Iskak.S.T', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016048', 'Kutabaru Permai', '2016041', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016049', 'Kutabaru Sejahtera', '2016041', 'Masjid Al Fatah Jl. Kenari 4 No. 4 Perumahan Pondok Sejahtera Kelurahan Kutabaru Kecamatan Pasar Kem', '082124003803', 'Empuk Samsudin', 'e25901ef70d78c403610edb4a5de3f96', 'Kelompok', 0),
('2016050', 'Cangkudu', '2016022', '-', '-', '-', '202cb962ac59075b964b07152d234b70', 'Kelompok', 0),
('2016051', 'Sarakan', '2016041', 'villa permata sarakan ', '085711757834', 'eko budiyanto', 'd16605c08f4717c87a44d2f496d85f72', 'Kelompok', 0);

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
  `turba` varchar(5) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_lap`, `id_kelompok`, `tanggal`, `ket`, `date_on`, `stat`, `turba`, `nama`) VALUES
(10005, 2016002, '2016-11-15', 'Musyawarah 5 Unsur', '2016-12-01', 1, '', ''),
(10006, 2016003, '2016-12-25', 'Musyawarah 5 Unsur', '2016-12-05', 1, 'Tidak', '-'),
(10008, 2016016, '2016-12-11', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Tidak', '-'),
(10009, 2016048, '2016-12-12', 'Musyawarah 5 Unsur', '2016-12-12', 1, '', ''),
(10010, 2016049, '2016-12-14', 'Musyawarah 5 Unsur', '2016-12-12', 1, '', ''),
(10011, 2016039, '2016-12-14', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Ya', 'Bp. Adi Abdul Qoyyum'),
(10013, 2016050, '2016-12-11', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Tidak', 'afn.ikhsan'),
(10014, 2016044, '2016-12-12', 'Musyawarah 5 Unsur', '2016-12-12', 1, '', ''),
(10015, 2016007, '2016-12-16', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Ya', 'Dimas Mahfudzi'),
(10016, 2016023, '2016-12-11', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Ya', 'H. Maksum'),
(10018, 2016034, '2016-12-11', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Ya', 'saeful mukmin'),
(10019, 2016020, '2016-12-15', 'Musyawarah 5 Unsur', '2016-12-12', 1, '', ''),
(10020, 2016042, '2016-12-12', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Ya', ''),
(10021, 2016024, '2016-12-12', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Tidak', 'P. Adi m'),
(10022, 2016031, '2016-12-12', 'Musyawarah 5 Unsur', '2016-12-12', 1, '', ''),
(10024, 2016047, '2016-12-14', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Ya', 'Mr.X'),
(10026, 2016002, '2016-12-12', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Ya', 'Hendri Yulianto'),
(10027, 2016015, '2016-12-14', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Tidak', '2'),
(10028, 2016027, '2016-12-12', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Ya', 'Adi Mulyana'),
(10029, 2016028, '2016-12-12', 'Musyawarah 5 Unsur', '2016-12-12', 1, '', ''),
(10030, 2016046, '2016-12-12', 'Musyawarah 5 Unsur', '2016-12-12', 1, '', ''),
(10031, 2016032, '2016-12-14', 'Musyawarah 5 Unsur', '2016-12-12', 1, '', ''),
(10032, 2016035, '2016-12-11', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Ya', 'Bp H. Sutekno'),
(10033, 2016051, '2016-12-12', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Tidak', '-'),
(10034, 2016030, '2016-12-12', 'Musyawarah 5 Unsur', '2016-12-12', 1, '', ''),
(10036, 2016026, '2016-12-14', 'Musyawarah 5 Unsur', '2016-12-12', 1, '', ''),
(10037, 2016014, '2016-12-12', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Tidak', 'Pengurus desa/daerah'),
(10038, 2016045, '2017-01-11', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Tidak', ''),
(10039, 2016019, '2016-12-11', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Tidak', 'tdk ada'),
(10040, 2016008, '2016-12-16', 'Musyawarah 5 Unsur', '2016-12-12', 1, 'Tidak', 'mas andika satria'),
(10041, 2016038, '2016-12-14', 'Musyawarah 5 Unsur', '2016-12-12', 0, 'Tidak', '4 s klmpok + ortu + '),
(10042, 2016012, '2016-12-12', 'Musyawarah 5 Unsur', '2016-12-12', 1, '', ''),
(10044, 2016043, '2016-12-14', 'Musyawarah 5 Unsur', '2016-12-12', 1, '', ''),
(10046, 2016009, '2017-01-08', 'Musyawarah 5 Unsur', '2017-01-08', 1, '', ''),
(10047, 2016047, '2017-01-11', 'Musyawarah 5 Unsur', '2017-01-11', 1, 'Tidak', ''),
(10048, 2016034, '2017-01-11', 'Musyawarah 5 Unsur', '2017-01-11', 1, 'Tidak', '-'),
(10049, 2016007, '2017-01-11', 'Musyawarah 5 Unsur', '2017-01-11', 1, '', ''),
(10050, 2016008, '2017-01-11', 'Musyawarah 5 Unsur', '2017-01-12', 1, '', ''),
(10051, 2016023, '2017-01-08', 'Musyawarah 5 Unsur', '2017-01-14', 1, 'Tidak', 'Bapak Aswid'),
(10052, 2016015, '2017-01-15', 'Musyawarah 5 Unsur', '2017-01-15', 1, '', ''),
(10053, 2016033, '2017-01-15', 'Musyawarah 5 Unsur', '2017-01-15', 1, 'Tidak', ''),
(10054, 2016049, '2017-01-15', 'Musyawarah 5 Unsur', '2017-01-15', 1, 'Ya', 'pak miftah'),
(10055, 2016037, '2017-01-15', 'Musyawarah 5 Unsur', '2017-01-15', 1, '', ''),
(10056, 2016050, '2017-01-15', 'Musyawarah 5 Unsur', '2017-01-15', 1, 'Tidak', 'saiful mukmin'),
(10057, 2016016, '2017-01-15', 'Musyawarah 5 Unsur', '2017-01-15', 1, 'Ya', 'Bpk Bowo(Periuk Jaya'),
(10058, 2016018, '2017-01-16', 'Musyawarah 5 Unsur', '2017-01-16', 1, '', ''),
(10059, 2016026, '2017-01-15', 'Musyawarah 5 Unsur', '2017-01-16', 1, '', ''),
(10060, 2016035, '2017-01-18', 'Musyawarah 5 Unsur', '2017-01-16', 1, 'Tidak', ''),
(10061, 2016030, '2017-01-15', 'Musyawarah 5 Unsur', '2017-01-16', 1, '', ''),
(10062, 2016028, '2017-01-15', 'Musyawarah 5 Unsur', '2017-01-16', 1, '', ''),
(10063, 2016031, '2017-01-11', 'Musyawarah 5 Unsur', '2017-01-16', 1, 'Ya', 'bpk firman'),
(10064, 2016014, '2017-01-16', 'Musyawarah 5 Unsur', '2017-01-16', 1, 'Tidak', 'Ulinuha'),
(10065, 2016046, '2017-01-16', 'Musyawarah 5 Unsur', '2017-01-16', 1, '', ''),
(10066, 2016003, '2017-01-08', 'Musyawarah 5 Unsur', '2017-01-17', 1, '', ''),
(10067, 2016051, '2017-01-09', 'Musyawarah 5 Unsur', '2017-01-18', 1, 'Tidak', ''),
(10068, 2016012, '2017-01-08', 'Musyawarah 5 Unsur', '2017-01-18', 0, 'Tidak', ''),
(10069, 2016019, '2017-01-18', 'Musyawarah 5 Unsur', '2017-01-18', 1, '', ''),
(10070, 2016032, '2017-01-15', 'Musyawarah 5 Unsur', '2017-01-19', 1, 'Ya', 'Tidak ada '),
(10071, 2016021, '2017-01-18', 'Musyawarah 5 Unsur', '2017-01-19', 1, 'Tidak', 'Bp Tarmono (desa) '),
(10072, 2016002, '2017-01-19', 'Musyawarah 5 Unsur', '2017-01-19', 0, 'Ya', ''),
(10073, 2016039, '2017-01-18', 'Musyawarah 5 Unsur', '2017-01-20', 1, 'Ya', 'Bp. Saeful Mukmin'),
(10074, 2016043, '2017-01-16', 'Musyawarah 5 Unsur', '2017-01-20', 1, '', ''),
(10075, 2016048, '2017-01-15', 'Musyawarah 5 Unsur', '2017-01-20', 1, '', ''),
(10076, 2016005, '2017-01-21', 'Musyawarah 5 Unsur', '2017-01-21', 1, '', ''),
(10077, 2016020, '2017-01-16', 'Musyawarah 5 Unsur', '2017-01-23', 1, '', ''),
(10078, 2016002, '2017-03-12', 'Musyawarah 5 Unsur', '2017-02-04', 1, 'Tidak', 'Bpk, H Wiyono'),
(10079, 2016007, '2017-02-08', 'Musyawarah 5 Unsur', '2017-02-11', 1, '', ''),
(10080, 2016050, '2017-02-12', 'Musyawarah 5 Unsur', '2017-02-12', 1, 'Tidak', 'Adi Mulyono'),
(10081, 2016033, '2017-02-12', 'Musyawarah 5 Unsur', '2017-02-12', 1, '', ''),
(10082, 2016035, '2017-02-12', 'Musyawarah 5 Unsur', '2017-02-12', 1, '', ''),
(10083, 2016030, '2017-02-12', 'Musyawarah 5 Unsur', '2017-02-12', 1, '', ''),
(10084, 2016026, '2017-02-12', 'Musyawarah 5 Unsur', '2017-02-13', 1, '', ''),
(10085, 2016028, '2017-02-12', 'Musyawarah 5 Unsur', '2017-02-13', 1, '', ''),
(10086, 2016034, '2017-02-12', 'Musyawarah 5 Unsur', '2017-02-13', 1, 'Tidak', 'Pak Aswid'),
(10087, 2016032, '2017-02-15', 'Musyawarah 5 Unsur', '2017-02-15', 1, 'Ya', 'Bp Agus Budiono'),
(10088, 2016039, '2017-02-15', 'Musyawarah 5 Unsur', '2017-02-16', 1, '', ''),
(10089, 2016046, '2017-02-18', 'Musyawarah 5 Unsur', '2017-02-18', 1, '', ''),
(10090, 2016008, '2017-02-17', 'Musyawarah 5 Unsur', '2017-02-18', 1, '', ''),
(10091, 2016049, '2017-02-15', 'Musyawarah 5 Unsur', '2017-02-21', 1, '', ''),
(10092, 2016018, '2017-02-23', 'Musyawarah 5 Unsur', '2017-02-23', 1, '', ''),
(10093, 2016005, '2017-02-23', 'Musyawarah 5 Unsur', '2017-02-23', 1, '', ''),
(10094, 2016021, '2017-02-22', 'Musyawarah 5 Unsur', '2017-02-23', 1, 'Tidak', 'Bp Tarmono (desa) '),
(10095, 2016037, '2017-02-12', 'Musyawarah 5 Unsur', '2017-02-23', 1, '', ''),
(10096, 2016014, '2017-02-22', 'Musyawarah 5 Unsur', '2017-02-24', 1, 'Tidak', 'Eko Purminto'),
(10097, 2016016, '2017-02-22', 'Musyawarah 5 Unsur', '2017-02-24', 1, '', ''),
(10098, 2016015, '2017-02-22', 'Musyawarah 5 Unsur', '2017-02-25', 1, 'Tidak', 'Sarif'),
(10099, 2016019, '2017-02-22', 'Musyawarah 5 Unsur', '2017-02-26', 1, '', ''),
(10100, 2016019, '2017-03-13', 'Musyawarah 5 Unsur', '2017-02-26', 1, '', ''),
(10101, 2016003, '2017-02-26', 'Musyawarah 5 Unsur', '2017-02-26', 1, 'Ya', 'Bp. Inung'),
(10102, 2016024, '2017-03-01', 'Musyawarah 5 Unsur', '2017-03-01', 1, '', ''),
(10103, 2016048, '2017-02-27', 'Musyawarah 5 Unsur', '2017-03-01', 1, '', ''),
(10104, 2016031, '2017-03-02', 'Musyawarah 5 Unsur', '2017-03-02', 1, '', ''),
(10105, 2016007, '2017-03-08', 'Musyawarah 5 Unsur', '2017-03-08', 1, '', ''),
(10106, 2016049, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-12', 1, '', ''),
(10107, 2016028, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-13', 1, '', ''),
(10108, 2016033, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-13', 1, 'Ya', 'Pak Agus budiono'),
(10109, 2016034, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-13', 1, 'Ya', 'AFN Ihsan'),
(10110, 2016035, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-13', 1, 'Ya', 'Bp. Moh Firman'),
(10111, 2016032, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-13', 1, 'Ya', 'Hari Santoso  '),
(10112, 2016021, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-13', 1, 'Ya', 'BP Sodikin'),
(10113, 2016026, '2017-03-13', 'Musyawarah 5 Unsur', '2017-03-13', 1, 'Tidak', ''),
(10114, 2016030, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-13', 1, 'Ya', 'Bp Abdul Qoyyum'),
(10115, 2016008, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-15', 1, '', ''),
(10116, 2016023, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-15', 1, 'Ya', 'Bpk. Syaiful mukmin'),
(10117, 2016051, '2017-03-06', 'Musyawarah 5 Unsur', '2017-03-15', 1, 'Tidak', ''),
(10118, 2016014, '2017-03-13', 'Musyawarah 5 Unsur', '2017-03-15', 1, '', ''),
(10119, 2016015, '2017-03-15', 'Musyawarah 5 Unsur', '2017-03-15', 1, '', ''),
(10120, 2016048, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-15', 1, '', ''),
(10121, 2016046, '2017-03-15', 'Musyawarah 5 Unsur', '2017-03-20', 1, '', ''),
(10122, 2016003, '2017-03-22', 'Musyawarah 5 Unsur', '2017-03-22', 1, 'Tidak', 'Sdr. Fauzi'),
(10123, 2016047, '2017-03-22', 'Musyawarah 5 Unsur', '2017-03-22', 1, 'Tidak', ''),
(10124, 2016043, '2017-02-27', 'Musyawarah 5 Unsur', '2017-03-24', 1, '', ''),
(10125, 2016045, '2017-02-13', 'Musyawarah 5 Unsur', '2017-03-24', 1, '', ''),
(10126, 2016043, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-24', 1, '', ''),
(10127, 2016045, '2017-03-08', 'Musyawarah 5 Unsur', '2017-03-24', 1, '', ''),
(10128, 2016044, '2017-01-16', 'Musyawarah 5 Unsur', '2017-03-27', 0, 'Tidak', ''),
(10129, 2016044, '2017-02-13', 'Musyawarah 5 Unsur', '2017-03-27', 0, 'Tidak', ''),
(10130, 2016044, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-27', 0, 'Ya', 'bpk taufiq'),
(10131, 2016020, '2017-02-27', 'Musyawarah 5 Unsur', '2017-03-27', 1, '', ''),
(10132, 2016020, '2017-03-27', 'Musyawarah 5 Unsur', '2017-03-27', 1, '', ''),
(10133, 2016050, '2017-03-12', 'Musyawarah 5 Unsur', '2017-03-31', 1, 'Tidak', 'M Firman'),
(10134, 2016042, '2017-03-27', 'Musyawarah 5 Unsur', '2017-04-02', 1, '', ''),
(10135, 2016042, '2017-02-13', 'Musyawarah 5 Unsur', '2017-04-02', 1, '', ''),
(10136, 2016023, '2017-04-09', 'Musyawarah 5 Unsur', '2017-04-09', 1, 'Ya', 'Bpk Adi Mulyono'),
(10137, 2016049, '2017-04-09', 'Musyawarah 5 Unsur', '2017-04-09', 1, '', ''),
(10138, 2016033, '2017-04-09', 'Musyawarah 5 Unsur', '2017-04-09', 1, 'Tidak', 'AFN ikhsan'),
(10139, 2016040, '2017-04-09', 'Musyawarah 5 Unsur', '2017-04-09', 1, '', ''),
(10140, 2016035, '2017-04-09', 'Musyawarah 5 Unsur', '2017-04-10', 1, 'Ya', 'Bp. Adi Abdul Qoyum'),
(10141, 2016021, '2017-04-09', 'Musyawarah 5 Unsur', '2017-04-10', 1, 'Tidak', 'Bp Tarmono (desa) '),
(10142, 2016050, '2017-04-09', 'Musyawarah 5 Unsur', '2017-04-10', 1, 'Tidak', 'Aswid'),
(10143, 2016034, '2017-04-09', 'Musyawarah 5 Unsur', '2017-04-10', 1, 'Ya', 'saeful mukmin'),
(10144, 2016015, '2017-04-09', 'Musyawarah 5 Unsur', '2017-04-11', 1, '', ''),
(10145, 2016039, '2017-03-15', 'Musyawarah 5 Unsur', '2017-04-11', 1, 'Ya', 'Bp. Saeful Mukmin'),
(10146, 2016039, '2017-04-10', 'Musyawarah 5 Unsur', '2017-04-11', 0, 'Tidak', 'x'),
(10147, 2016007, '2017-04-12', 'Musyawarah 5 Unsur', '2017-04-12', 1, '', ''),
(10148, 2016019, '2017-04-10', 'Musyawarah 5 Unsur', '2017-04-12', 0, 'Tidak', 'Nihil');

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
(2, 'Laporan', 'laporan', 'laporan', 'Kelompok', 0, 'glyphicon-cloud', 2),
(3, 'Menu', 'menu', 'menu', 'Admin', 0, 'glyphicon-cog', 4),
(5, 'Data Kelompok', 'kelompok', 'kelompok', 'Admin', 0, 'glyphicon-map-marker', 3),
(7, 'Laporan', 'laporan', 'laporan_periode', 'Desa', 0, 'glyphicon-cloud', 1),
(8, 'Kelompok', 'kelompok', 'kelompok_desa', 'Desa', 0, 'glyphicon-map-marker', 4),
(9, 'Setting', 'profile', 'profile_show', 'Kelompok', 0, ' glyphicon-cog', 4),
(10, 'Laporan', 'laporan', 'laporan_periode_daerah', 'Daerah', 0, 'glyphicon-cloud', 1),
(11, 'Pending', 'detail', 'detail_pend&stat=Pending', 'Kelompok', 0, 'glyphicon-exclamation-sign', 3),
(12, 'Setting', 'profile', 'profile_show', 'Desa', 0, 'glyphicon-cog', 4),
(13, 'Artikel / Info', 'conten', 'conten', 'Admin', 0, 'glyphicon glyphicon-ok', 1),
(14, 'Progres', 'detail', 'detail_pend&stat=Progres', 'Kelompok', 0, 'glyphicon glyphicon-refresh', 3),
(15, 'Lap Harian', 'laporan', 'laporan_harian', 'Daerah', 0, 'glyphicon glyphicon-repeat', 4),
(16, 'Setting', 'profile', 'profile_show', 'Admin', 0, 'glyphicon-cog	', 5),
(17, 'Laporan', 'laporan', 'laporan_admin', 'Admin', 0, ' glyphicon-cloud', 2),
(18, 'Generus', 'generus', 'generus', 'Admin', 0, 'glyphicon glyphicon-qrcode', 5);

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
-- Indexes for table `generus`
--
ALTER TABLE `generus`
  ADD PRIMARY KEY (`nig`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kat`);

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
-- Indexes for table `user_activ`
--
ALTER TABLE `user_activ`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conten`
--
ALTER TABLE `conten`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kat` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_activ`
--
ALTER TABLE `user_activ`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
