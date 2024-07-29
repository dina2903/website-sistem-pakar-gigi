-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02 Jul 2019 pada 08.10
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pakar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama_lengkap` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('Dina', 'dina', 'Dina Ariesti'),
('Zura', 'zura', 'Siti Fatimah Zahara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE IF NOT EXISTS `penyakit` (
  `id_penyakit` varchar(10) NOT NULL,
  `nm_penyakit` varchar(70) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `nm_penyakit`, `keterangan`) VALUES
('P001', 'Karies Gigi (Gigi Berlubang)', 'Karies gigi adalah kerusakan pada gigi yang disebabkan oleh asam yang dihasilkan oleh bakteri dari sisa makanan. Ini menyebabkan lubang pada gigi yang bisa menyebabkan nyeri, infeksi, dan kehilangan gigi jika tidak diobati.'),
('P002', 'Gingivitis', 'Gingivitis adalah peradangan pada gusi yang disebabkan oleh penumpukan plak. Gejalanya meliputi gusi merah, bengkak, dan mudah berdarah. Jika tidak diobati, gingivitis bisa berkembang menjadi periodontitis. <br>\r\n'),
('P003', 'Periodontitis', 'Periodontitis adalah infeksi serius pada gusi yang merusak jaringan lunak dan tulang penyangga gigi. Ini dapat menyebabkan gigi goyang atau lepas. \r\n'),
('P004', 'Abses Gigi', ' Abses gigi adalah kumpulan nanah yang disebabkan oleh infeksi bakteri. Ini bisa sangat menyakitkan dan menyebabkan pembengkakan pada gusi atau wajah. \r\n'),
('P005', 'Plak dan Tartar', 'Plak adalah lapisan lengket penuh bakteri yang menempel pada gigi. Jika tidak dibersihkan, plak bisa mengeras menjadi tartar, yang lebih sulit dihilangkan dan dapat menyebabkan penyakit gusi. \r\n');


-- --------------------------------------------------------

--
-- Struktur dari tabel `rule`
--

CREATE TABLE IF NOT EXISTS `rule` (
  `id_rule` int(11) NOT NULL,
  `id_penyakit` varchar(5) NOT NULL,
  `id_gejala` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rule`
--

INSERT INTO `rule` (`id_rule`, `id_penyakit`, `id_gejala`) VALUES
(2, 'P001', 'G001'),
(3, 'P001', 'G002'),
(4, 'P001', 'G003'),
(5, 'P001', 'G005'),
(6, 'P001', 'G006'),
(7, 'P001', 'G009'),
(8, 'P001', 'G011'),
(9, 'P001', 'G012'),
(10, 'P001', 'G013'),
(11, 'P001', 'G014'),
(12, 'P002', 'G001'),
(13, 'P002', 'G002'),
(14, 'P002', 'G003'),
(15, 'P002', 'G004'),
(16, 'P002', 'G006'),
(17, 'P002', 'G007'),
(18, 'P002', 'G008'),
(19, 'P003', 'G001'),
(20, 'P003', 'G002'),
(21, 'P003', 'G006'),
(22, 'P003', 'G015'),
(23, 'P003', 'G016'),
(24, 'P003', 'G017'),
(25, 'P003', 'G018'),
(26, 'P003', 'G019'),
(27, 'P003', 'G020'),
(28, 'P004', 'G001'),
(29, 'P004', 'G002'),
(30, 'P004', 'G005'),
(31, 'P004', 'G006'),
(32, 'P004', 'G013'),
(33, 'P004', 'G014'),
(34, 'P004', 'G021'),
(35, 'P004', 'G022'),
(36, 'P004', 'G023'),
(37, 'P004', 'G024'),
(38, 'P004', 'G025'),
(39, 'P004', 'G026'),
(40, 'P005', 'G001'),
(41, 'P005', 'G002'),
(42, 'P005', 'G004'),
(43, 'P005', 'G005'),
(44, 'P005', 'G006'),
(45, 'P005', 'G009'),
(46, 'P005', 'G010'),
(47, 'P005', 'G024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbgejala`
--

CREATE TABLE IF NOT EXISTS `tbgejala` (
  `id_gejala` varchar(5) NOT NULL,
  `nm_gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbgejala`
--

INSERT INTO `tbgejala` (`id_gejala`, `nm_gejala`) VALUES
('G001', 'Nyeri Saat Makan'),
('G002', 'Lubang Pada Gigi'),
('G003', 'Gigi Berubah Warna'),
('G004', 'Gusi Merah dan Bengkak'),
('G005', 'Bau Mulut'),
('G006', 'Gusi Berdarah'),
('G007', 'Nanah Diantara Gigi dan Gusi'),
('G008', 'Demam'),
('G009', 'Bengkak Di Wajah'),
('G010', 'Lapisan Kuning atau Coklat di Gigi '),
('G011', 'Sensitivitas Gigi'),
('G012', 'Bercak Putih atau Abu-abu Di Mulut atau Lidah'),
('G013', 'Gigi Patah'),
('G014', 'Nyeri Rahang'),
('G015', 'Sakit Kepala'),
('G016', 'Nyeri Telinga'),
('G017', 'Luka Di Mulut'),
('G018', 'Mulut Kering'),
('G019', 'Sulit Menelan'),
('G020', 'Sulit Mengunyah'),
('G021', 'Rasa Nyeri yang Menyebar');


-- --------------------------------------------------------

--
-- Struktur dari tabel `tbhasil_konsultasi`
--

CREATE TABLE IF NOT EXISTS `tbhasil_konsultasi` (
`id_hasil` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `id_penyakit` varchar(5) NOT NULL,
  `tgl_hasil` date NOT NULL,
  `gejala_dipilih` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

--
-- Dumping data untuk tabel `tbhasil_konsultasi`
--

INSERT INTO `tbhasil_konsultasi` (`id_hasil`, `username`, `id_penyakit`, `tgl_hasil`, `gejala_dipilih`) VALUES
(135, 'Dina', 'P010', '2024-06-29', 'G001,G004,G008,G017,G021'),
(137, 'Zura', 'P009', '2024-06-29', 'G013,G014,G015,G016');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsaran`
--

CREATE TABLE IF NOT EXISTS `tbsaran` (
`id_saran` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `saran` text NOT NULL,
  `tgl_kirim` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `tbsaran`
--

INSERT INTO `tbsaran` (`id_saran`, `nama`, `saran`, `tgl_kirim`) VALUES
(9, 'Dindin', 'Sistem Pakarnya Tingkatkan Lagi', '2024-06-29 19:01:33'),
(10, 'Azura', 'Terima Kasih Saya Bisa Konsultasi Online dari Website Ini', '2024-06-30 19:13:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE IF NOT EXISTS `tbuser` (
`id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `nm_pengguna` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nohp` varchar(14) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`id_user`, `username`, `password`, `nm_pengguna`, `email`, `nohp`) VALUES
(5, 'Dina', 'dina', 'Dina Ariesti', 'Dina@gmail.com', '081374185976'),
(6, 'Zura', 'zura', 'Siti Fatimah Zahara', 'zura@gmai.com', '085218135678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbhasil_konsultasi`
--
ALTER TABLE `tbhasil_konsultasi`
 ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `tbsaran`
--
ALTER TABLE `tbsaran`
 ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbhasil_konsultasi`
--
ALTER TABLE `tbhasil_konsultasi`
MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `tbsaran`
--
ALTER TABLE `tbsaran`
MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbuser`
--
ALTER TABLE `tbuser`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
