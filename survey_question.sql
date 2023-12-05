-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 08:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baru`
--

-- --------------------------------------------------------

--
-- Table structure for table `survey_question`
--

CREATE TABLE `survey_question` (
  `id` int(10) NOT NULL,
  `question` varchar(255) NOT NULL,
  `category` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_question`
--

INSERT INTO `survey_question` (`id`, `question`, `answer_a`, `answer_b`,`answer_c`,`answer_d`) VALUES
(1, 'Saya ingin mendatangi satu toko yang disarankan teman. Saya akan:', 'mencari toko itu berdasarkan tempat lain di sekitar situ yang sudah saya tahu.','bertanya pada teman yang tahu arah toko itu.','menuliskan alamat lengkap dan daftar belokan yang harus saya ingat.','menggunakan peta yang menunjukkan lokasi toko itu.'),
(2, 'Suatu situs internet memiliki video mengenai cara membuat suatu grafik khusus. Di situs itu ada orang yang bicara, ada daftar langkah pembuatan video, dan ada beberapa diagram. Saya paling mengerti isi situs itu dengan cara:','mengamati diagram petunjuknya.','mendengar suara yang menjelaskan.','membaca instruksi yang tertulis.', 'melihat tindakan orangnya.'),
(3, 'Saya ingin mengetahui lebih dalam mengenai suatu tur wisata yang saya rencanakan. Saya akan:','melihat detail kegiatan dan aktivitas yang akan dilakukan.','melihat petanya dan mengamati lokasi-lokasi turnya.','membaca perincian jadwal kegiatan tur tersebut.','bicara dengan pengelola atau peserta lain di tur itu.'),
(4, 'Dalam memilih karir atau jurusan pendidikan, yang penting bagi saya adalah:','aplikasi ilmu pada kondisi nyata yang dihadapi.','berkomunikasi dengan orang dengan berdiskusi.','pekerjaan yang memakai desain, peta, atau bagan.','penggunaan kata yang tepat dalam komunikasi tertulis.'),
(5, 'Saat belajar, saya:','belajar dengan berdiskusi.','mencari pola tertentu.','menggunakan contoh dan penerapan.','membaca buku, artikel dan diktat.'),
(6, 'Saya ingin menabung lebih banyak dan mempertimbangkan beberapa cara. Saya akan:','mempertimbangkan contohdari setiap cara penghematan berdasarkan kondisi keuangan saya.','membaca brosur tertulis yang menjelaskan cara-cara berhemat secara detail.','memakai grafik yang menunjukkan variasi pilihan dan jangka waktu yang dibutuhkan.','bicara dengan ahli keuangan mengenai cara-cara berhemat yang bisa ditempuh.'),
(7, 'Saya ingin mempelajari suatu jenis permainan kartu yang baru. Saya akan:','melihat orang lain bermain sebelum saya ikut mencoba.','mendengar penjelasan orang serta bertanya padanya.','memakai diagram yang menjelaskan tahap, langkah dan strategi permainannya.','membaca petunjuk tertulis pada permainan itu.'),
(8, 'Saya mempunyai masalah jantung. Saya lebih suka dokter yang:','memberikan bacaan mengenai masalah yang saya hadapi.','memakai alat peraga jantung untuk menunjukkan masalah yang saya hadapi.','menguraikan masalah yang saya hadapi.','menunjukkan diagram mengenai masalah yang saya hadapi.'),
(9, 'Saya ingin mempelajari suatu program baru di komputer. Saya akan:','membaca intruksi tertulis pada petunjuknya.','bicara dengan orang yang paham tentang program itu.','langsung mencoba dan belajar dari kesalahan.','mengikuti diagram pada buku petunjuknya.'),
(10, 'Ketika belajar sesuatu dari internet, saya menyukai:','video cara melakukan atau membuat sesuatu.','desain dan fitur visual yang menarik.','uraian tertulis, daftar dan penjelasan yang menarik.','situs dengan suara, siaran internet atau wawancara.'),
(11, 'Saya ingin mempelajari suatu proyek kerja yang baru. Saya akan meminta:','diagram yang berisi tahap-tahap proyek itu lengkap dengan bagan berisi manfaat dan biayanya.','laporan tertulis yang menjelaskan bagian utama proyek tersebut.','kesempatan berdiskusi mengenai proyek tersebut.','contoh-contoh proyek serupa yang sudah berhasil.'),
(12, 'Saya ingin belajar cara memotret dengan lebih baik. Saya akan:', 'bertanya dan berdiskusi mengenai kamera dan fiturnya.','membaca instruksi tertulis mengenai cara pemakaian kamera itu.','melihat diagram yang menunjukkan komponen kamera itu.','melihat contoh hasil yang baik dan yang jelek dari kamera itu.'),
(13, 'Saya lebih suka pembicara yang dalam presentasinya menggunakan:', 'peragaan, model peraga, atau kesempatan mencoba langsung.','kesempatan tanya jawab, diskusi kelompok atau pembicara tamu.','cetakan diktat, buku atau bacaan lain.','diagram, bagan, peta atau grafik.'),
(14, 'Saya baru saja menyelesaikan suatu lomba atau suatu ujian dan saya ingin umpan balik orang lain. Saya mengharapkan:', 'umpan balik yang berisi contoh-contoh dari yang saya kerjakan.','umpan balik berupa penjelasan tertulis mengenai hasil pekerjaan saya.','umpan balik yang disampaikan langsung kepada saya.','umpan balik dalam bentuk grafik mengenai hasil pekerjaan saya.'),
(15, 'Saya tertarik dengan suatu rumah atau apartemen. Sebelum berkunjung, saya ingin:', 'melihat video rumah atau apartemen itu.','berdiskusi dengan pemiliknya.','keterangan tertulis mengenai kamar-kamar dan fiturnya.','denah ruangan dan peta area sekitarnya.'),
(16, 'Saya ingin merakit satu set meja kayu yang belum jadi. Saya paling mengerti jika:', 'mengikuti diagram instruksi yang dilampirkan.','mendengar saran dari orang yang pernah merakitnya.','membaca penjelasan tertulis yang dilampirkan.','menonton video orang merakit meja yang serupa.');




--
-- Indexes for dumped tables
--

--
-- Indexes for table `survey_question`
--
ALTER TABLE `survey_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `survey_question`
--
ALTER TABLE `survey_question`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
