-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 11:28 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id_img` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id_img`, `nama`) VALUES
(7, 'mmd.jpg'),
(8, 'hotel.jpg'),
(9, 'ssmk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kebijakan`
--

CREATE TABLE `tbl_kebijakan` (
  `id` int(25) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kebijakan`
--

INSERT INTO `tbl_kebijakan` (`id`, `pdf`) VALUES
(1, 'wikramapdf.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lvuser`
--

CREATE TABLE `tbl_lvuser` (
  `id_lvuser` int(10) NOT NULL,
  `leveluser` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lvuser`
--

INSERT INTO `tbl_lvuser` (`id_lvuser`, `leveluser`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_organisasi`
--

CREATE TABLE `tbl_organisasi` (
  `id` int(25) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_organisasi`
--

INSERT INTO `tbl_organisasi` (`id`, `pdf`) VALUES
(1, 'wikrama.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peraturan`
--

CREATE TABLE `tbl_peraturan` (
  `id` int(25) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_peraturan`
--

INSERT INTO `tbl_peraturan` (`id`, `pdf`) VALUES
(1, 'wikramapdf.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `id_post` int(25) NOT NULL,
  `img` varchar(255) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `artikel` text DEFAULT NULL,
  `date` date NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_posts`
--

INSERT INTO `tbl_posts` (`id_post`, `img`, `judul`, `artikel`, `date`, `kategori`, `author`) VALUES
(23, 'rpl.jpg', 'Rekayasa Perangkat Lunax', 'RPL/PPLG Ini adalah jurusan di bidang prorammer', '2022-04-15', 'info-umum', 'Dodit Mulyantoro'),
(24, 'bdp.jpg', 'Bisnis Daring & Pemasaran', 'BDP atau bisa disebut bisnis daring pemasaran bergerak di bidang pemasaran ', '2022-04-15', 'info-umum', 'Rama Ramdhani'),
(25, 'mmd.jpg', 'Multimedia', 'Multimedia wikrama mempelajari tentang design dan lain lain berkaitan dengan visual', '2022-04-15', 'info-umum', 'Rama Ramdhani'),
(26, 'mmd japan.jpeg', 'Siswa MMD mendapat kunjungan ke jepang', 'siswa jurusan multimedia mendapat kunjungan ke jepang', '2022-04-15', 'berita', 'Rama Ramdhani'),
(27, 'pelajar.jpeg', 'simulasi UKK offline di wikrama', 'siswa wikrama sedang melakukan offline ukk dengan seksama', '2022-04-15', 'berita', 'Rama Ramdhani'),
(28, 'pelajar.jpeg', 'SMK WIKRAMA BOGOR WIRAUSAHA INTERNASIOANAL', 'Hadir dalam kegiatan itu Kepala SMK Wikrama Iin Mulyani, serta jajaran manajemen Taap Market Indonesia, di antaranya Country Manager Taap Indonesia Deddy Satrya Prihadi, dan Manajer Pemasaran dan Komunikasi Indra Ardian, serta puluhan pelajar kelas 11 Program Keahlian Bisnis Daring dan Pemasaran (BDP) sekolah itu.\r\n\r\nKe-10 pelajar yang mendapatkan penghargaan \"SMK Percontohan Program Wirausaha Digital Untuk Pelajar\" itu adalah Lisa Apriyanti, Nana Rusdiana, Muhammad Ashadi, Dimas Darmawangsa, Galih, Muhammad Aditya Anwari, Arifin, Shevtya Rahma, Firman Setiawan, dan Cindy Arsita Syaharani.\r\n\r\nCEO Taap Market Tapio Järvenpää dalam kesempatan itu mengatakan bahwa inovasi yang dilakukan pihaknya itu membantu semua kalangan, bahkan hingga di tingkat pelajar. Ia menambahkan bahwa di Indonesia perkembangan aplikasi tersebut menunjukkan peningkatan yang berarti sehingga peluang bagi semua kalangan untuk berwirausaha semakin terbuka.\r\n\r\nSedangkan Kepala SMK Wikrama Iin Mulyani menambahkan bahwa kerja sama pihaknya dengan Taap Market itu awalnya digagas oleh guru sekaligus Ketua Program Keahlian BDP sekolah itu Rina Finanti.\r\n\r\n\"Intinya, Ketua Program BDP berinteraksi dengan Taap Indonesia dan kemudian terjalinlah kerja sama awal selama sebulan, hingga kemudian para pelajar Program Keahlian BDP mendapat bantuan untuk menerapkan ilmu yang dipelajari dan mempraktikkannya melalui aplikasi yang disediakan Taap Indonesia,\" katanya.\r\n\r\nMelalui bantuan Taap Indonesia, seluruh pelajar yang mengambil Program Keahlian BDP kemudian bisa langsung mempraktikkan ilmu yang dipelajari melalui aplikasi yang disediakan sehingga langsung berinteraksi dengan wirausaha digital secara nyata.\r\n\r\nCountry Manager Taap Indonesia Deddy Satrya Prihadi menambahkan bahwa pemilihan SMK Wikrama sebagai sekolah yang menjadi contoh program wirausaha digital dilakukan dengan teliti, terlebih sekolah itu memang sudah punya catatan prestasi dari berbagai SMK yang ada di Indonesia. “Harapannya, ke depan bisa dijalin kerja sama lanjutan, setelah program awal ini,” katanya.\r\n\r\nIin Mulyani menanggapi positif tawaran kerja sama lanjutan itu di mana pihaknya juga merancang pelatihan juga akan diprogramkan kepada para guru-guru, khususnya di program keahlian BDP di', '2022-04-15', 'berita', 'Rama Ramdhani');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(255) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `id_lvuser` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `username`, `password`, `nama_pengguna`, `img`, `id_lvuser`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Rama Ramdhani', 'avatar5.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id_img`);

--
-- Indexes for table `tbl_kebijakan`
--
ALTER TABLE `tbl_kebijakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lvuser`
--
ALTER TABLE `tbl_lvuser`
  ADD PRIMARY KEY (`id_lvuser`);

--
-- Indexes for table `tbl_organisasi`
--
ALTER TABLE `tbl_organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_peraturan`
--
ALTER TABLE `tbl_peraturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `tbl_users_ibfk_1` (`id_lvuser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_kebijakan`
--
ALTER TABLE `tbl_kebijakan`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_lvuser`
--
ALTER TABLE `tbl_lvuser`
  MODIFY `id_lvuser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_organisasi`
--
ALTER TABLE `tbl_organisasi`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_peraturan`
--
ALTER TABLE `tbl_peraturan`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `id_post` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `tbl_users_ibfk_1` FOREIGN KEY (`id_lvuser`) REFERENCES `tbl_lvuser` (`id_lvuser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
