-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 10:41 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuisioner_eksternal`
--

-- --------------------------------------------------------

--
-- Table structure for table `lulusan`
--

CREATE TABLE `lulusan` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pengalaman_kerja` varchar(50) NOT NULL,
  `perusahaan` varchar(100) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `saran` varchar(1000) NOT NULL,
  `tahun_lulus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna_lulusan`
--

CREATE TABLE `pengguna_lulusan` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `perusahaan` varchar(100) NOT NULL,
  `saran` varchar(1000) NOT NULL,
  `saran_kompetensi` varchar(1000) NOT NULL,
  `tingkat_pendidikan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `nama_prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `nama_prodi`) VALUES
(1, 'Teknik Informatika'),
(2, 'TPHT');

-- --------------------------------------------------------

--
-- Table structure for table `result_soal_lulusan`
--

CREATE TABLE `result_soal_lulusan` (
  `id` int(11) NOT NULL,
  `id_lulusan` int(11) NOT NULL,
  `id_soal_lulusan` int(11) NOT NULL,
  `id_subsoal_lulusan` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `result_soal_pengguna_lulusan`
--

CREATE TABLE `result_soal_pengguna_lulusan` (
  `id` int(11) NOT NULL,
  `id_penguna_lulusan` int(11) NOT NULL,
  `id_soal_pengguna_lulusan` int(11) NOT NULL,
  `id_subsoal_pengguna_lulusan` int(11) NOT NULL,
  `id_prodi` int(11) DEFAULT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `result_softskill_soal_lulusan`
--

CREATE TABLE `result_softskill_soal_lulusan` (
  `id` int(11) NOT NULL,
  `id_lulusan` int(11) NOT NULL,
  `id_softskill_soal_lulusan` int(11) NOT NULL,
  `id_softskill_subsoal_lulusan` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `result_softskill_soal_pengguna_lulusan`
--

CREATE TABLE `result_softskill_soal_pengguna_lulusan` (
  `id` int(11) NOT NULL,
  `id_penguna_lulusan` int(11) NOT NULL,
  `id_softskill_soal_pengguna_lulusan` int(11) NOT NULL,
  `id_softskill_subsoal_pengguna_lulusan` int(11) NOT NULL,
  `id_prodi` int(11) DEFAULT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `soal_lulusan`
--

CREATE TABLE `soal_lulusan` (
  `id` int(11) NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal_lulusan`
--

INSERT INTO `soal_lulusan` (`id`, `value`) VALUES
(1, ' \"Selama menempuh pendidikan, bagaimana penguasaan saudara terhadap mata kuliah berikut :\"'),
(2, '\"Selama menempuh pendidikan, seberapa tertarik/tertantang saudara terhadap mata kuliah berikut :\"'),
(3, '\"Pada saat ini, bagaimana penguasaan saudara terhadap mata kuliah berikut :\"'),
(4, '\"Pada saat ini, bagaimana relevansi mata kuliah berikut terhadap kebutuhan kerja :\"'),
(5, ' \"Pada saat ini Apakah sarana dan prasarana di tempat kerja Saudara sesuai dengan perkuliahan :\"');

-- --------------------------------------------------------

--
-- Table structure for table `soal_pengguna_lulusan`
--

CREATE TABLE `soal_pengguna_lulusan` (
  `id` int(11) NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal_pengguna_lulusan`
--

INSERT INTO `soal_pengguna_lulusan` (`id`, `value`) VALUES
(1, 'Bagaimana kebutuhan terkait kesesuaian Bidang Kompetensi lulusan Program Studi Teknik Informatika / Teknik Pengolahan Hasil Ternak - Politeknik Negeri Banyuwangi, terhadap Perusahaan?'),
(2, 'Bagaimana kinerja lulusan terkait kesesuaian Bidang Kompetensi lulusan Program Studi Teknik Informatika / Teknik Pengolahan Hasil Ternak - Politeknik Negeri Banyuwangi, terhadap Perusahaan?');

-- --------------------------------------------------------

--
-- Table structure for table `softskill_soal_lulusan`
--

CREATE TABLE `softskill_soal_lulusan` (
  `id` int(11) NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `softskill_soal_lulusan`
--

INSERT INTO `softskill_soal_lulusan` (`id`, `value`) VALUES
(1, '\"Seberapa dibutuhkan skill-skill berikut dalam melakukan pekerjaan?\"'),
(2, '\"Dukungan program studi/kurikulum untuk menghasilkan skill berikut :\"'),
(3, '\"Berikan urutan tempat (1 s/d 5) yang memberikan kontribusi pada Saudara dalam pembentukan skill berikut :\"');

-- --------------------------------------------------------

--
-- Table structure for table `softskill_soal_pengguna_lulusan`
--

CREATE TABLE `softskill_soal_pengguna_lulusan` (
  `id` int(11) NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `softskill_soal_pengguna_lulusan`
--

INSERT INTO `softskill_soal_pengguna_lulusan` (`id`, `value`) VALUES
(1, 'Seberapa dibutuhkan skill-skill berikut dalam melakukan pekerjaan?'),
(2, 'Dukungan program studi/kurikulum untuk menghasilkan skill berikut :'),
(3, 'Berikan urutan tempat (1 s/d 5) yang memberikan kontribusi pada Saudara dalam pembentukan skill berikut :');

-- --------------------------------------------------------

--
-- Table structure for table `softskill_subsoal_lulusan`
--

CREATE TABLE `softskill_subsoal_lulusan` (
  `id` int(11) NOT NULL,
  `value` varchar(200) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `softskill_subsoal_lulusan`
--

INSERT INTO `softskill_subsoal_lulusan` (`id`, `value`, `id_prodi`) VALUES
(1, '\"Pengelolaan pribadi dan manajemen waktu\"', 1),
(2, '\"Kemampuan belajar dan beradaptasi\"', 1),
(3, '\"Kemampuan menyelesaikan masalah & manajemen stress\"', 1),
(4, '\"Kemampuan menggunakan media komunikasi\"', 1),
(5, '\"Kerjasama tim dan hubungan antar sesama\"', 1),
(6, 'Kemampuan identifikasi data dan fakta\"', 1),
(7, 'Kemampuan berkomunikasi tertulis\"', 1),
(8, '\"Kemampuan berkomunikasi verbal\"', 1),
(9, '\"Kemampuan berkomunikasi grafis\"', 1),
(10, 'ecermatan dalam mengambil risiko\"', 1),
(11, '\"Pengelolaan sumber daya\"', 1),
(12, '\"Literasi keuangan\"', 1),
(13, '\"Etika dan etiket kerja\"', 1),
(14, '\"Pengelolaan konflik\"', 1),
(15, '\"Tanggung jawab\"', 1),
(16, '\"Kepemimpinan\"', 1),
(17, '\"Pengambilan keputusan\"', 1),
(18, '\"Berfikir matematis\"', 1),
(19, '\"Berfikir kritis\"', 1),
(20, '\"Berfikir kreatif dan visioner\"', 1);

-- --------------------------------------------------------

--
-- Table structure for table `softskill_subsoal_pengguna_lulusan`
--

CREATE TABLE `softskill_subsoal_pengguna_lulusan` (
  `id` int(11) NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `softskill_subsoal_pengguna_lulusan`
--

INSERT INTO `softskill_subsoal_pengguna_lulusan` (`id`, `value`) VALUES
(1, 'Pengelolaan pribadi dan manajemen waktu'),
(2, 'Kemampuan belajar dan beradaptasi'),
(3, 'Kemampuan menyelesaikan masalah & manajemen stress'),
(4, 'Kemampuan menggunakan media komunikasi'),
(5, 'Kerjasama tim dan hubungan antar sesama'),
(6, 'Kemampuan identifikasi data dan fakta'),
(7, 'Kemampuan berkomunikasi tertulis'),
(8, 'Kemampuan berkomunikasi verbal'),
(9, 'Kemampuan berkomunikasi grafis'),
(10, 'Kecermatan dalam mengambil risiko'),
(11, 'Pengelolaan sumber daya'),
(12, 'Literasi keuangan'),
(13, 'Etika dan etiket kerja'),
(14, 'Pengelolaan konflik'),
(15, 'Tanggung jawab'),
(16, 'Kepemimpinan'),
(17, 'Pengambilan keputusan'),
(18, 'Berfikir matematis'),
(19, 'Berfikir kritis'),
(20, 'Berfikir kreatif dan visioner');

-- --------------------------------------------------------

--
-- Table structure for table `subsoal_lulusan`
--

CREATE TABLE `subsoal_lulusan` (
  `id` int(11) NOT NULL,
  `value` varchar(200) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subsoal_lulusan`
--

INSERT INTO `subsoal_lulusan` (`id`, `value`, `id_prodi`) VALUES
(1, '\"Basis Data\"', 1),
(2, '\"Algoritma dan Pemrograman\"', 1),
(3, '\"Dasar Jaringan Komputer\"', 1),
(4, '\"Administrasi Server\"', 1),
(5, '\"Pemrograman Hardware\"', 1),
(6, '\"Manajemen Proyek Sistem Informasi\"', 1),
(7, '\"Pemrograman Web\"', 1),
(8, '\"Pengembangan Aplikasi Mobile\"', 1),
(9, '\"Kecerdasan Buatan\"', 1),
(10, 'Teknologi Pengolahan Susu', 2),
(11, 'Teknologi Pengolahan Daging', 2),
(12, 'Teknologi Pengolahan Telur', 2),
(13, 'Teknologi Pengolahan Hasil Ikutan Ternak', 2),
(14, 'Analisa Sensori', 2),
(15, 'Pengendalian Mutu Pangan', 2),
(16, 'Manajemen Pemasaran', 2),
(17, 'Keamanan Pangan', 2),
(18, 'Kewirausahaan', 2),
(19, 'Alalisa Pangan', 2),
(20, 'Teknologi Fermentasi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subsoal_pengguna_lulusan`
--

CREATE TABLE `subsoal_pengguna_lulusan` (
  `id` int(11) NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subsoal_pengguna_lulusan`
--

INSERT INTO `subsoal_pengguna_lulusan` (`id`, `value`) VALUES
(1, 'Kompetensi Teknis'),
(2, 'Kompetensi Manajerial'),
(3, 'Kompetensi Sistem Operasional');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lulusan`
--
ALTER TABLE `lulusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna_lulusan`
--
ALTER TABLE `pengguna_lulusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_soal_lulusan`
--
ALTER TABLE `result_soal_lulusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_lulusan` (`id_lulusan`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_soal_lulusan` (`id_soal_lulusan`),
  ADD KEY `id_subsoal_lulusan` (`id_subsoal_lulusan`);

--
-- Indexes for table `result_soal_pengguna_lulusan`
--
ALTER TABLE `result_soal_pengguna_lulusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penguna_lulusan` (`id_penguna_lulusan`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_soal_pengguna_lulusan` (`id_soal_pengguna_lulusan`),
  ADD KEY `id_subsoal_pengguna_lulusan` (`id_subsoal_pengguna_lulusan`);

--
-- Indexes for table `result_softskill_soal_lulusan`
--
ALTER TABLE `result_softskill_soal_lulusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_lulusan` (`id_lulusan`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_softskill_soal_lulusan` (`id_softskill_soal_lulusan`),
  ADD KEY `id_softskill_subsoal_lulusan` (`id_softskill_subsoal_lulusan`);

--
-- Indexes for table `result_softskill_soal_pengguna_lulusan`
--
ALTER TABLE `result_softskill_soal_pengguna_lulusan`
  ADD KEY `id_penguna_lulusan` (`id_penguna_lulusan`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_softskill_soal_pengguna_lulusan` (`id_softskill_soal_pengguna_lulusan`),
  ADD KEY `id_softskill_subsoal_pengguna_lulusan` (`id_softskill_subsoal_pengguna_lulusan`);

--
-- Indexes for table `soal_lulusan`
--
ALTER TABLE `soal_lulusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal_pengguna_lulusan`
--
ALTER TABLE `soal_pengguna_lulusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `softskill_soal_lulusan`
--
ALTER TABLE `softskill_soal_lulusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `softskill_soal_pengguna_lulusan`
--
ALTER TABLE `softskill_soal_pengguna_lulusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `softskill_subsoal_lulusan`
--
ALTER TABLE `softskill_subsoal_lulusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indexes for table `softskill_subsoal_pengguna_lulusan`
--
ALTER TABLE `softskill_subsoal_pengguna_lulusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subsoal_lulusan`
--
ALTER TABLE `subsoal_lulusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indexes for table `subsoal_pengguna_lulusan`
--
ALTER TABLE `subsoal_pengguna_lulusan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lulusan`
--
ALTER TABLE `lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna_lulusan`
--
ALTER TABLE `pengguna_lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `result_soal_lulusan`
--
ALTER TABLE `result_soal_lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_soal_pengguna_lulusan`
--
ALTER TABLE `result_soal_pengguna_lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_softskill_soal_lulusan`
--
ALTER TABLE `result_softskill_soal_lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soal_lulusan`
--
ALTER TABLE `soal_lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `soal_pengguna_lulusan`
--
ALTER TABLE `soal_pengguna_lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `softskill_soal_lulusan`
--
ALTER TABLE `softskill_soal_lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `softskill_soal_pengguna_lulusan`
--
ALTER TABLE `softskill_soal_pengguna_lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `softskill_subsoal_lulusan`
--
ALTER TABLE `softskill_subsoal_lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `softskill_subsoal_pengguna_lulusan`
--
ALTER TABLE `softskill_subsoal_pengguna_lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subsoal_lulusan`
--
ALTER TABLE `subsoal_lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subsoal_pengguna_lulusan`
--
ALTER TABLE `subsoal_pengguna_lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `result_soal_lulusan`
--
ALTER TABLE `result_soal_lulusan`
  ADD CONSTRAINT `result_soal_lulusan_ibfk_1` FOREIGN KEY (`id_lulusan`) REFERENCES `lulusan` (`id`),
  ADD CONSTRAINT `result_soal_lulusan_ibfk_2` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id`),
  ADD CONSTRAINT `result_soal_lulusan_ibfk_3` FOREIGN KEY (`id_soal_lulusan`) REFERENCES `soal_lulusan` (`id`),
  ADD CONSTRAINT `result_soal_lulusan_ibfk_4` FOREIGN KEY (`id_subsoal_lulusan`) REFERENCES `subsoal_lulusan` (`id`);

--
-- Constraints for table `result_soal_pengguna_lulusan`
--
ALTER TABLE `result_soal_pengguna_lulusan`
  ADD CONSTRAINT `result_soal_pengguna_lulusan_ibfk_1` FOREIGN KEY (`id_penguna_lulusan`) REFERENCES `pengguna_lulusan` (`id`),
  ADD CONSTRAINT `result_soal_pengguna_lulusan_ibfk_2` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id`),
  ADD CONSTRAINT `result_soal_pengguna_lulusan_ibfk_3` FOREIGN KEY (`id_soal_pengguna_lulusan`) REFERENCES `soal_pengguna_lulusan` (`id`),
  ADD CONSTRAINT `result_soal_pengguna_lulusan_ibfk_4` FOREIGN KEY (`id_subsoal_pengguna_lulusan`) REFERENCES `subsoal_pengguna_lulusan` (`id`);

--
-- Constraints for table `result_softskill_soal_lulusan`
--
ALTER TABLE `result_softskill_soal_lulusan`
  ADD CONSTRAINT `result_softskill_soal_lulusan_ibfk_1` FOREIGN KEY (`id_lulusan`) REFERENCES `lulusan` (`id`),
  ADD CONSTRAINT `result_softskill_soal_lulusan_ibfk_2` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id`),
  ADD CONSTRAINT `result_softskill_soal_lulusan_ibfk_3` FOREIGN KEY (`id_softskill_soal_lulusan`) REFERENCES `softskill_soal_lulusan` (`id`),
  ADD CONSTRAINT `result_softskill_soal_lulusan_ibfk_4` FOREIGN KEY (`id_softskill_subsoal_lulusan`) REFERENCES `softskill_subsoal_lulusan` (`id`);

--
-- Constraints for table `result_softskill_soal_pengguna_lulusan`
--
ALTER TABLE `result_softskill_soal_pengguna_lulusan`
  ADD CONSTRAINT `result_softskill_soal_pengguna_lulusan_ibfk_1` FOREIGN KEY (`id_penguna_lulusan`) REFERENCES `pengguna_lulusan` (`id`),
  ADD CONSTRAINT `result_softskill_soal_pengguna_lulusan_ibfk_2` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id`),
  ADD CONSTRAINT `result_softskill_soal_pengguna_lulusan_ibfk_3` FOREIGN KEY (`id_softskill_soal_pengguna_lulusan`) REFERENCES `softskill_soal_pengguna_lulusan` (`id`),
  ADD CONSTRAINT `result_softskill_soal_pengguna_lulusan_ibfk_4` FOREIGN KEY (`id_softskill_subsoal_pengguna_lulusan`) REFERENCES `softskill_subsoal_pengguna_lulusan` (`id`);

--
-- Constraints for table `softskill_subsoal_lulusan`
--
ALTER TABLE `softskill_subsoal_lulusan`
  ADD CONSTRAINT `softskill_subsoal_lulusan_ibfk_2` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id`);

--
-- Constraints for table `subsoal_lulusan`
--
ALTER TABLE `subsoal_lulusan`
  ADD CONSTRAINT `subsoal_lulusan_ibfk_2` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
