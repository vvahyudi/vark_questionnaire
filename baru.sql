-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 04:19 AM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `email`, `user_id`) VALUES
(1, 'Admin 1', 'admin1@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(10) NOT NULL,
  `class_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `class_name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `class_attendance`
--

CREATE TABLE `class_attendance` (
  `id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `teacher_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_attendance`
--

INSERT INTO `class_attendance` (`id`, `class_id`, `teacher_id`) VALUES
(10, 2, 54),
(11, 1, 55);

-- --------------------------------------------------------

--
-- Table structure for table `gagal_post_test`
--

CREATE TABLE `gagal_post_test` (
  `id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `level` int(1) NOT NULL,
  `total` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `level_student`
--

CREATE TABLE `level_student` (
  `id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `level` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `level_student`
--

INSERT INTO `level_student` (`id`, `student_id`, `level`) VALUES
(27, 19, 2),
(28, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(10) NOT NULL,
  `materi_desc` mediumtext NOT NULL,
  `module_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `materi_desc`, `module_id`) VALUES
(1, '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sel pertama kali ditemukan oleh Robert Hooke seorang ilmuwan berkebangsaan Inggris. Berdasarkan penemuan Robert Hooke, berkembanglah teori-teori mengenai sel. Beberapa saintis turut memberikan kontribusi terhadap konsep sel. Apa yang dimaksud dengan sel? Bagaimana komponen kimiawi penyusun sel?</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sel sangat mendasar bagi ilmu Biologi sebagaimana atom bagi ilmu Kimia. Seluruh organisme terdiri atas sel. Dalam hierarki organisasi biologis, sel merupakan kumpulan materi paling sederhana yang dapat hidup (Campbell, Reece, &amp; Mitchel: 2002). Jadi, sel merupakan unit struktural dan fungsional terkecil makhluk hidup. Sel sebagai unit struktural terkecil berarti bahwa sel merupakan penyusun yang mendasar bagi tubuh makhluk hidup. Sel tidak dapat dibagi-bagi lagi menjadi bagian yang lebih kecil dan dapat berdiri sendiri. Adapun sel dikatakan sebagai unit fungsional terkecil berarti bahwa sel dapat melakukan berbagai proses kehidupan, misalnya respirasi, transportasi,reproduksi, ekskresi, sekresi, dan sintesis. Selain itu, sel juga merupakan unit hereditas makhluk hidup yang menurunkan sifat genetis dari satu generasi kepada generasi berikutnya.&quot;</p>\n', 1),
(3, '<p>&nbsp; &nbsp; &nbsp; &nbsp; Seluruh kegiatan kehidupan sel merupakan akibat dari reaksi kimia yang berlangsung di dalam sel. Senyawa kimia penyusun sel disebut protoplasma yangmerupakan substansi kompleks. Secara garis besarnya, komponen kimia sebuah sel terdiri atas unsur makro, unsur mikro, senyawa organik, dan senyawa anorganik.</p>\n\n<ol>\n	<li>Unsur Makro<br />\n	Unsur makro merupakan unsur terbesar yang menyusun sebuah sel. Unsur makro terdiri atas lima unsur utama, yaitu oksigen (O) sebanyak 62%, karbon (C) sebanyak 20%, hidrogen (H) sebanyak 10%, nitrogen (N) sebanyak 10%, dan kalium (K) sebanyak 25%. Selain itu, juga terdapat sulfur (S), fosfor (P), kalsium<br />\n	(Ca), magnesium (Mg), dan natrium (Na). Dari berbagai unsur tersebut, unsur karbon, hidrogen, dan oksigen merupakan unsur paling utama serta dapat bersenyawa membentuk molekul karbohidrat, lemak, asam nukleat, dan protein.<br />\n	&nbsp;</li>\n	<li>Unsur Mikro<br />\n	Unsur mikro merupakan unsur yang terdapat dalam jumlah sangat sedikit. Beberapa jenis unsur mikro dalam sel, antara lain besi (Fe), tembaga (Cu), kobalt (Co), mangan (Mn), seng (Zn), molibdenum (Mo), boron (Bo), dan silikon (Si).<br />\n	&nbsp;</li>\n	<li>Senyawa Organik<br />\n	Senyawa organik terdiri atas mikromolekul dan makromolekul. Mikromolekul terdiri atas asam amino, nukleotida, asam lemak, dan glukosa. Makromolekul terdiri atas karbohidrat, protein, lemak, dan asam nukleat.<br />\n	a. Karbohidrat<br />\n	Karbohidrat tersusun dari unsur karbon (C), hidrogen (H), dan oksigen (O). Karbohidrat terdiri atas rangkaian molekul-molekul gula yang disebut monosakarida. Polisakarida merupakan untaian monosakarida yang sangat panjang. Untaian ini dapat lurus maupun bercabang-cabang. Polisakarida digolongkan menjadi polisakarida struktural dan polisakarida nutrien. Beberapa contoh polisakarida struktural yaitu selulosa pembentuk dinding sel tumbuhan, asam hialuronat sebagai salah satu komponen substansi antara sel pada jaringan ikat, serta glikolipida dan glikoprotein yang merupakan struktur penting dari membran sel. Beberapa contoh polisakarida nutrien yaitu amilum, yang terdapat di dalam sel tumbuhan dan bakteri, glikogen di dalam sel hewan, serta paramilum di dalam beberapa jenis sel Protozoa.<br />\n	b. Protein<br />\n	Protein merupakan senyawa organik terbesar yang menyusun sel dan merupakan polimer dari asam amino yang saling berikatan dengan ikatan peptida. Protein tersusun dari karbon, hidrogen, oksigen, dan nitrogen, serta kadang-kadang terdapat sulfur dan fosfor sebagai unsur tambahan. Fungsi protein di dalam sel di antaranya membentuk membran plasma Bersama lemak dan karbohidrat, mengatur permeabilitas membran sel, mengatur keseimbangan kadar asam basa dalam sel, protein yang berupa enzim bertindak sebagai katalisator berbagai reaksi kimia, serta berperan dalam Gerakan dalam sel.<br />\n	c. Lipid (Lemak)<br />\n	Lipid tersusun dari unsur karbon, hidrogen, dan oksigen. Lipid merupakan senyawa yang bersifat &nbsp;hidrofobik dan larut dalam pelarut organik. Di dalam sel terdapat bermacam-macam lipid di antaranya fosfolipid, glikolipid, dan steroid.<br />\n	d. Nukleotida dan Asam Nukleat<br />\n	Asam nukleat adalah makromolekul yang sangat penting untuk kelangsungan hidup sel. Asam nukleat terdiri atas dua macam, yaitu asam deoksiribosa nukleat (DNA) dan asam ribosa nukleat (RNA). DNA merupakan penyimpan informasi genetis dalam sel dan bersama-sama dengan protein histon membentuk kromosom. Satu asam nukleat terdiri atas nukleotida-nukleotida yang saling berikatan dengan ikatan fosfodiester.</li>\n	<li>Senyawa Anorganik<br />\n	Senyawa anorganik yang menjadi komponen kimiawi sel di antaranya air, garam-garam mineral, dan gas.<br />\n	a. Air<br />\n	Air merupakan senyawa penyusun sel terbesar (50&ndash;60% berat sel). Air berperan sangat penting pada kehidupan sel maupun kehidupan semua organisme. Air merupakan pelarut dan pengangkut senyawa-senyawa yang diperlukan sel maupun limbah yang harus dibuang. Air juga berperan sebagai media berlangsungnya reaksi-reaksi kimia di dalam sel.<br />\n	b. Garam-Garam Mineral<br />\n	Garam-garam mineral di dalam sel terdapat dalam bentuk ion positif (kation) dan ion negatif (anion). Beberapa contoh garam mineral dalam sel antara lain NaCl, MgCl, CaSO4, dan NaHCO3. Garam-garam mineral tersebut berfungsi untuk mempertahankan tekanan osmotik dan keseimbangan asam basa dalam sel.<br />\n	c. Gas<br />\n	Beberapa jenis gas yang terlibat dalam aktivitas sel antara lain karbon dioksida (CO2), oksigen (O2), dan amonia (NH3).</li>\n</ol>\n', 2),
(4, '<p>&nbsp; &nbsp; &nbsp; &nbsp; Berdasarkan jumlah sel penyusunnya, organisme dibedakan menjadi organisme uniseluler dan multiseluler. Organisme uniseluler adalah organisme yang hanya terdiri atas satu sel. Adapun organisme multiseluler adalah organisme yang tubuhnya tersusun dari banyak sel. Sel tumbuhan dan sel hewan termasuk sel eukariotik, sedangkan sel bakteri termasuk sel prokariotik. Apa yang dimaksud dengan sel eukariotik dan prokariotik?</p>\n\n<h2><br />\n1. Struktur Sel Prokariotik dan Eukariotik</h2>\n\n<p><br />\n&nbsp; &nbsp; &nbsp; &nbsp; Berdasarkan strukturnya, sel dapat dibedakan menjadi dua jenis yaitu sel prokariotik dan sel eukariotik.<br />\na. Sel Prokariotik<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Sel prokariotik yaitu sel yang tidak memiliki membran inti sehingga inti sel berbatasan langsung dengan sitoplasma. Makhluk hidup yang termasuk prokariotik adalah bakteri dan ganggang biru (Cyanobacteria). Struktur umum sel prokariotik sebagai berikut.<br />\n1) Dinding selnya tersusun dari peptidoglikan, lipid, dan protein. Dinding sel berfungsi sebagai pelindung dan pemberi bentuk tubuh.<br />\n2) Membran plasma tersusun dari karbohidrat, lemak, dan protein. Membran plasma berfungsi sebagai pelindung molekuler sel terhadap lingkungan di sekitarnya.<br />\n3) Sitoplasma tersusun dari air, protein, lipid, mineral, dan enzim-enzim yang berfungsi untuk mencerna<img alt=\"\" src=\"../assets/images/materi/sel prokariotik.png\" style=\"float:right; height:188px; width:301px\" /><br />\nmakanan secara intraseluler dan untuk melakukan proses metabolisme sel. Pada sitoplasma terdapat DNA dan RNA, ribosom, serta mesosom. Mesosom berfungsi sebagai penghasil energi.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><br />\nb. Sel Eukariotik<br />\nSel eukariotik merupakan sel yang sudah memiliki membran inti (nukleus dibungkus membran nukleus) dan sistem endomembran. Sel eukariotik terdapat pada sel tumbuhan dan sel hewan.</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"../assets/images/materi/sel hewan dan tumbuhan (eukariotik).png\" style=\"height:202px; width:400px\" /></p>\n\n<p><br />\nStruktur sel eukariotik terdiri atas tiga komponen utama yaitu membran plasma, sitoplasma, dan organel-organel sel.<br />\n1) Membran Plasma<br />\nMembran plasma bersifat selektif permeabel (semipermeabel) yang artinya membran plasma dapat dilalui oleh molekul atau ion tertentu.</p>\n\n<p><img alt=\"\" src=\"../assets/images/materi/membran plasma.png\" style=\"height:199px; width:400px\" /></p>\n\n<p><br />\n2) Sitoplasma<br />\nSitoplasma adalah cairan sel yang berada di luar membran inti. Komponen utama penyusun sitoplasma yaitu sitosol, substansi genetik, sitoskeleton, dan organel-organel sel.<br />\nSitoplasma berfungsi sebagai sumber bahan kimia penting bagi sel dan tempat<br />\nterjadinya reaksi metabolisme.<br />\n3) Organel-Organel Sel<br />\nOrganel-organel sel terdapat dalam sitoplasma. Macam-macam organel penyusun sel sebagai berikut.<br />\na) Inti Sel (Nukleus)<br />\nNukleus merupakan organel terbesar yang berada dalam sel dengan diameter sekitar 10 mm. Nukleus berfungsi sebagai pengatur pembelahan sel, pengendali seluruh kegiatan sel, dan pembawa informasi genetik.<br />\nb) Retikulum Endoplasma (RE)<br />\nRetikulum endoplasma tersusun oleh membran yang berbentuk seperti jala. RE memiliki beberapa fungsi berikut.<br />\n(1) Menyintesis lemak dan kolesterol (RE kasar dan RE halus).<br />\n(2) Menampung protein yang disintesis oleh ribosom (RE kasar).<br />\n(3) Transportasi molekul-molekul (RE kasar dan RE halus).<br />\n(4) Menetralkan racun (detoksifikasi).<br />\nc) Ribosom<br />\nRibosom merupakan struktur unit gabungan protein dengan RNA ribosom (disingkat RNA-r). Ribosom terdiri atas dua subunit, yaitu subunit kecil dan subunit besar. Ribosom berperan dalam sintesis protein.<br />\n4) Kompleks Golgi<br />\nKompleks Golgi mempunyai hubungan yang erat dengan RE dalam sintesis protein. Kompleks Golgi mempunyai beberapa fungsi berikut.<br />\na) Tempat sintesis polisakarida seperti mukus, selulosa, dan hemiselulosa.<br />\nb) Membentuk membran plasma.<br />\nc) Membentuk kantong sekresi untuk membungkus zat yang akan dikeluarkan sel.<br />\nd) Membentuk akrosom pada sperma, kuning telur pada sel telur, dan lisosom.<br />\n5) Lisosom<br />\nLisosom merupakan kantong membran yang berisi enzim-enzim hidrolitik (lisozim) seperti enzim protease, lipase, nuklease, fosfatase, dan enzim pencerna yang lain. Beberapa fungsi lisosom yaitu melakukan pencernaan intrasel, autofagi, eksositosis, dan autolisis.<br />\n6) Badan Mikro<br />\nBadan mikro terdiri atas dua tipe, yaitu peroksisom dan glioksisom. Peroksisom terdapat pada sel hewan, Fungi, dan tumbuhan. Peroksisom berperan dalam oksidasi substrat menghasilkan H2O2 yang selanjutnya dipecah menjadi H2O dan O2. Selain itu, peroksisom juga berperan dalam pengubahan lemak menjadi karbohidrat dan penguraian purin dalam sel. Adapun glioksisom berperan dalam metabolisme asam lemak dan sebagai tempat terjadinya siklus glioksilat.<br />\n7) Mitokondria<br />\nMitokondria memiliki dua jenis membran yaitu membran luar dan membran dalam. Membran dalam membentuk tonjolan-tonjolan yang disebut krista. Tonjolan-tonjolan tersebut berfungsi untuk memperluas permukaan agar penyerapan oksigen lebih efektif.<img alt=\"\" src=\"../assets/images/materi/mitokondria.png\" style=\"float:right; height:195px; width:300px\" /><br />\nRuangan dalam mitokondria berisi cairan yang disebut matriks mitokondria. Di dalam matriks mitokondria terdapat enzim pernapasan, DNA, RNA, dan protein. Mitokondria berfungsi sebagai<br />\ntempat terjadinya respirasi seluler. Dalam respirasi seluler terjadi oksidasi makanan yang menghasilkan energi. Secara sederhana, reaksi oksidasi makanan dapat ditulis sebagai berikut.<br />\nC6H12O6 + 6O2 oksidasi makanan&rarr; 6CO2 + 6H2O + energi<br />\nBerkaitan dengan fungsi tersebut, mitokondria sering disebut the power house of cell.</p>\n', 3),
(5, '<p>2. Perbedaan Sel Hewan dengan Sel Tumbuhan<br />\nSel hewan dan sel tumbuhan termasuk sel eukariotik. Meskipun sama-sama sel eukariotik, kedua sel tersebut memiliki beberapa perbedaan pada organel-organel selnya secara spesifik.&nbsp;<br />\nBerdasarkan hasil pengamatan sel menggunakan mikroskop elektron dapat diketahui perbedaan antara sel hewan dengan sel tumbuhan. Sel hewan memiliki sentriol yang tidak dimiliki oleh sel tumbuhan. Adapun sel tumbuhan memiliki dinding sel, plastida, dan vakuola yang tidak dimiliki oleh sel hewan.<br />\na. Struktur Sel Tumbuhan<br />\nBagian-bagian sel yang hanya dimiliki oleh sel tumbuhan yaitu dinding sel, vakuola, dan plastida.<br />\n1) Dinding Sel<br />\nDinding sel merupakan lapisan terluar yang tersusun dari selulosa, hemiselulosa, dan pektin. Dinding sel berfungsi sebagai penyokong dan pelindung selaput plasma serta memelihara keseimbangan sel dari tekanan. Adanya dinding sel mengakibatkan bentuk sel tumbuhan relatif tetap.<br />\n2) Vakuola<br />\nVakuola atau rongga sel adalah organel sitoplasmik yang berisi cairan yang dibatasi membran tonoplas.<br />\nVakuola mempunyai beberapa fungsi sebagai berikut.<br />\na) Tempat menyimpan zat makanan seperti amilum dan gula.<br />\nb) Memasukkan air melalui tonoplast untuk membangun turgiditas sel bersama dinding sel.<br />\nc) Menyimpan pigmen.<br />\nd) Menyimpan minyak asiri.<br />\ne) Tempat penimbunan sisa metabolisme dan metabolit sekunder seperti Ca-oksalat, tanin, getah karet, dan alkaloid.<br />\n3) Plastida<br />\nBerdasarkan kandungan pigmen di dalamnya, plastida dibedakan menjadi tiga tipe yaitu kloroplas, kromoplas, dan leukoplas.<br />\na) Kloroplas</p>\n\n<p><img alt=\"\" src=\"../assets/images/materi/kloroplas.png\" style=\"height:253px; width:400px\" /><br />\nKloroplas yaitu plastida yang mengandung klorofil dan pigmen fotosintetik lainnya. Kloroplas tersusun dari membran luar dan membran dalam. Membran luar berfungsi mengatur keluar masuknya zat. Membran dalam membungkus cairan kloroplas yang disebut stroma. Membran dalam melipat ke arah dalam dan membentuk lembaran-lembaran yang disebut tilakoid. Pada tempat-tempat tertentu, tilakoid bertumpuk-tumpuk membentuk grana. Kloroplas berfungsi sebagai tempat berlangsungnya fotosintesis.<br />\nb) Kromoplas<br />\nKromoplas yaitu plastida yang mengandung pigmen nonfotosintetik. Beberapa pigmen yang terdapat dalam kromoplas yaitu xantofil dan karoten.<br />\nc) Leukoplas<br />\nLeukoplas adalah plastida yang tidak berwarna. Biasanya terdapat pada organ penyimpan makanan<br />\ncadangan seperti biji dan umbi. Ada tiga macam leukoplas yaitu amiloplas untuk menyimpan amilum, elaioplas (lipidoplas) untuk membentuk dan menyimpan lemak, serta proteoplas untuk menyimpan protein.<br />\nb. Struktur Sel Hewan<br />\nSel hewan memiliki dua sentriol di dalam sentrosom. Sentriol berperan dalam proses pembelahan sel. Saat pembelahan sel, tiap-tiap sentriol memisahkan diri menuju kutub yang berlawanan dan memancarkan benang-benang gelendong pembelahan yang akan menjerat kromosom.</p>\n\n<p><img alt=\"\" src=\"../assets/images/materi/sentriol.png\" /></p>\n', 4),
(6, '<p>Sel disebut sebagai unit fungsional terkecil dalam kehidupan karena di dalam sel berlangsung proses-proses kehidupan (bioproses).<br />\n1. Mekanisme Transpor Melalui Membran<br />\nPerpindahan molekul atau ion yang melewati membran ada dua macam yaitu transpor pasif dan transpor aktif.<br />\na. Transpor Pasif<br />\nTranspor pasif merupakan perpindahan molekul atau ion tanpa menggunakan energi sel. Perpindahan molekul tersebut terjadi secara spontan mengikuti gradien konsentrasi. Contoh transpor pasif yaitu difusi dan osmosis.<br />\nDifusi adalah perpindahan molekul-molekul zat dari konsentrasi tinggi ke konsentrasi rendah baik melalui membran plasma ataupun tidak. Difusi dibedakan menjadi dua yaitu difusi sederhana dan difusi terbantu. Difusi sederhana terjadi secara spontan, molekul zat akan berdifusi menyebar ke seluruh<br />\nruangan sampai dicapai kesetimbangan. Faktor-faktor yang memengaruhi proses difusi yaitu wujud materi, ukuran molekul, konsentrasi zat, dan suhu.<br />\nDifusi terbantu merupakan proses difusi dengan perantara protein pembawa dari konsentrasi tinggi ke konsentrasi rendah. Contoh mekanisme difusi terbantu yaitu proses molekul glukosa melewati membran.<br />\nOsmosis adalah perpindahan molekul-molekul pelarut (misal air) dari larutan berkonsentrasi rendah (hipotonik) ke larutan berkonsentrasi tinggi (hipertonik) melalui selaput (membran) semipermeabel. Jika pelarut yang digunakan berupa air, osmosis dapat berarti perpindahan molekul air melalui membran semipermeabel dari larutan yang kadar airnya tinggi ke larutan yang kadar airnya rendah.<br />\nAir akan masuk ke dalam sel jika konsentrasi larutan dalam sel tinggi sehingga terjadi endosmosis. Endosmosis pada sel hewan mengakibatkan kehancuran sel karena robeknya membran plasma (lisis). Endosmosis pada sel tumbuhan mengakibatkan sel dalam keadaan turgid. Sementara itu, air di dalam sel akan keluar jika konsentrasi larutan di luar sel tinggi dan terjadi eksosmosis. Eksosmosis pada hewan akan mengakibatkan pengerutan sel (krenasi). Eksosmosis pada tumbuhan akan mengakibatkan terlepasnya membran dari dinding sel yang disebut plasmolisis.<br />\nb. Transpor Aktif<br />\nTranspor aktif adalah transpor yang memerlukan energi untuk melawan gradien konsentrasi. Pada transpor aktif terjadi pemompaan molekul melewati membran dan melawan gradien konsentrasi. Contoh transpor aktif antara lain pompa natrium-kalium, endositosis, dan eksositosis.</p>\n', 5),
(7, '<p>2. Sintesis Protein dalam Sel<br />\nSelain mekanisme transpor melalui membran, di dalam sel juga terjadi sintesis protein. Sintesis protein berlangsung di ribosom. Bagaimana proses berlangsungnya sintesis protein dalam sel? Lakukan terlebih dahulu kegiatan berikut untuk mengetahui mekanisme sintesis protein dalam sel.<br />\nSintesis protein adalah proses penerjemahan gen menjadi urutan asam amino yang akan disintesis menjadi polipeptida (protein). Sintesis protein secara garis besar dibagi menjadi dua tahapan utama, yaitu proses pembuatan molekul mRNA pada inti sel (transkripsi) dan proses penerjemahan mRNA oleh tRNA serta perangkaian asam amino di ribosom (translasi).<br />\na. Transkripsi<br />\nProses transkripsi diawali dari sintesis RNA dari salah satu rantai DNA sense atau rantai cetakan. Adapun rantai DNA komplemennya disebut rantai antisense. Rentangan DNA yang ditranskripsi menjadi molekul RNA disebut unit transkripsi. Transkripsi terdiri atas tiga tahap yaitu inisiasi, elongasi, dan terminasi.<br />\n1) Inisiasi (Permulaan)<br />\nProses inisiasi dimulai dari promoter, yakni daerah DNA yang merupakan tempat melekatnya RNA polimerase. Promoter mencakup titik awal (start point) transkripsi yaitu nukleotida yang menunjukkan dimulainya sintesis protein (kodon start). Fungsi promoter untuk menentukan tempat dimulainya transkripsi dan menentukan satu rantai DNA yang akan digunakan sebagai cetakan.<br />\n2) Elongasi (Pemanjangan)<br />\nElongasi terjadi saat RNA bergerak di sepanjang pilinan ganda DNA terbuka secara berurutan. Enzim RNA polimerase menambahkan nukleotida dari molekul RNA yang sedang tumbuh di sepanjang rantai DNA. Setelah proses sintesis RNA selesai, rantai DNA terbentuk kembali dan molekul RNA baru terlepas dari cetakannya.<br />\n3) Terminasi (Pengakhiran)<br />\nProses transkripsi akan berhenti setelah sampai pada terminator, yakni urutan DNA yang berfungsi menghentikan transkripsi (kodon terminasi).<br />\nb. Translasi<br />\nTranslasi adalah proses pelekatan antara tRNA dengan asam amino dengan bantuan enzim aminoasil-tRNA sintetase. Ribosom memudahkan pelekatan yang spesifik antara antikodon tRNA dengan kodon mRNA selama sintesis protein.<br />\nTahap translasi terdiri atas inisiasi, elongasi, dan terminasi.<br />\n1) Inisiasi<br />\nRibosom kecil mengikatkan diri pada mRNA dan tRNA inisiator. Ribosom melekat pada salah satu ujung mRNA. Di dekat pelekatan tersebut terdapat kodon start AUG (yang membawa kode untuk membentuk asam amino metionin). Kodon ini memberikan sinyal dimulainya proses translasi.<br />\n2) Elongasi<br />\nTahap ini dimulai dengan terbentuknya asam-asam amino yang berikatan dengan metionin. Molekul rRNA dari ribosom mengatalis pembentukan ikatan peptida antara asam amino yang baru dengan ujung rantai polipeptida yang sebelumnya terbentuk dari asam amino yang dibawa tRNA. Setelah itu, tRNA<br />\nkeluar dari ribosom. Peristiwa ini berlangsung sampai terbentuk polipeptida.<br />\n3) Terminasi<br />\nElongasi akan berhenti setelah ribosom mencapai kodon stop yaitu UAA, UAG, atau UGA. Kodon stop berfungsi sebagai sinyal untuk menghentikan translasi. Selanjutnya, polipeptida yang terbentuk akan lepas dari ribosom menuju ke sitoplasma.<br />\nProses terminasi diakhiri dengan terbentuknya rantai asam amino yang sangat panjang, atau lebih sering dinamakan dengan rantai polipeptida. Rantai polipeptida inilah yang kita sebut dengan protein.<br />\nProtein atau rantai polipeptida dari hasil sintesis protein merupakan rantai protein primer. Protein ini harus mengalami modifikasi agar bisa digunakan dalam tubuh. Proses modifikasi dilakukan di badan Golgi. Hasil modifikasi ini dapat dibedakan menjadi dua yaitu protein struktural dan protein dinamis (fungsional).<br />\na. Protein Struktural<br />\nProtein struktural merupakan protein yang berperan dalam pembentukan struktur sel. Sebagai contoh, protein integral dan protein perifer yang berada pada membran sel. Sementara itu, protein struktural di dalam sel berperan untuk membentuk kerangka sel yang disebut sitoskeleton. Sitoskeleton berupa jaringan protein filamen yang memantapkan membran plasma sehingga menyokong stabilitas bentuk sel. Protein filamen ini terdiri atas mikrofilamen, filamen tengah (filamen intermediet), dan mikrotubulus. Mikrotubulus dibangun dari protein globuler yang disebut tubulin. Filamen intermediat disusun dari keluarga protein yang beragam disebut keratin. Mikrofilamen disusun dari protein globuler yang disebut aktin.</p>\n\n<p><img alt=\"\" src=\"../assets/images/materi/protein struktural.png\" style=\"height:259px; width:450px\" /><br />\nb. Protein Fungsional<br />\nProtein fungsional merupakan protein yang berperan dalam pengaturan aktivitas sel, misalnya enzim dan hormon.<br />\n1) Enzim<br />\nEnzim adalah satu atau beberapa gugus polipeptida (protein) yang berfungsi sebagai katalis dalam suatu reaksi kimia organik. Sebagian besar enzim bekerja di dalam sel (enzim intraseluler), tetapi ada juga enzim yang dibuat di dalam sel kemudian dikeluarkan dari dalam sel untuk menjalankan fungsinya<br />\n(enzim ekstraseluler). Contoh enzim intraseluler adalah enzim katalase. Enzim ini banyak terdapat di organel peroksisom yang berfungsi memecah senyawa H2O2 (hidrogen peroksida) yang bersifat toksik menjadi H2O dan O2. Adapun contoh enzim ekstraseluler adalah enzim-enzim pencernaan, misalnya enzim pepsin yang berfungsi memecah protein menjadi pepton.<br />\n2) Hormon<br />\nHormon terdiri atas tiga jenis berdasarkan struktur kimiawinya yaitu hormon yang terbuat dari protein atau peptida (hormon peptida), hormon yang terbuat dari kolesterol (hormon steroid), dan hormon yang terbuat dari asam amino (hormon tiroid). Jadi, protein merupakan salah satu bahan baku untuk membuat hormon.<br />\nHormon berperan mengatur homeostasis, metabolisme, reproduksi, pertumbuhan, dan perkembangan. Homeostasis adalah pengaturan secara otomatis dalam tubuh agar kelangsungan hidup dapat dipertahankan. Sebagai contoh pengendalian tekanan darah, kerja jantung, dan kadar gula darah.</p>\n', 6),
(8, '<p>3. Reproduksi Sel<br />\nReproduksi sel merupakan proses penggandaan materi genetik (DNA) yang terdapat di dalam nukleus sehingga menghasilkan sel-sel anakan yang memiliki materi genetik yang identik. Reproduksi sel dapat terjadi karena peristiwa pembelahan sel secara mitosis.<br />\nPembelahan mitosis adalah peristiwa pembelahan sel yang terjadi pada sel-sel somatis serta menghasilkan dua sel anak dengan genotipe sama dan identik dengan induknya. Pembelahan mitosis bertujuan untuk pertumbuhan dan regenerasi sel.</p>\n\n<p><img alt=\"\" src=\"../assets/images/materi/pembelahan mitosis.png\" style=\"height:168px; width:500px\" /></p>\n\n<p>Sel melangsungkan pembelahan mitosis sehingga dapat mengalami perubahan bentuk, ukuran, dan jumlahnya bertambah banyak.<br />\nTanaman mengalami<br />\npertumbuhan karena adanya penambahan jumlah sel sebagai hasil pembelahan mitosis. Pertumbuhan<br />\nadalah suatu proses pertambahan ukuran, baik volume, bobot, dan jumlah sel yang bersifat<br />\nirreversible. Pertumbuhan pada tumbuhan umumnya terjadi pada daerah meristem (titik tumbuh)<br />\ndi antaranya terdapat pada ujung akar dan ujung batang. Adapun tahap-tahap pembelahan mitosis<br />\nmeliputi profase, prometafase, metafase, anafase, dan telofase.</p>\n', 7);

-- --------------------------------------------------------

--
-- Table structure for table `materi_audio`
--

CREATE TABLE `materi_audio` (
  `id` int(11) NOT NULL,
  `isi_materi` text DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materi_kinestetik`
--

CREATE TABLE `materi_kinestetik` (
  `id` int(11) NOT NULL,
  `isi_materi` text DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materi_visual`
--

CREATE TABLE `materi_visual` (
  `id` int(11) NOT NULL,
  `isi_materi` text DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materi_visual`
--

INSERT INTO `materi_visual` (`id`, `isi_materi`, `module_id`) VALUES
(1, 'https://youtu.be/krBT0yfA1Ys', 1),
(2, 'https://youtu.be/CGRW_AMo3ZA', 2),
(3, 'https://youtu.be/YmLNb6SORJM', 3),
(4, 'https://youtu.be/iFN0ZtjNJN4', 4),
(5, 'https://youtu.be/73iEL75UXNc', 5),
(6, 'https://youtu.be/YDekmmLD5OE', 6),
(7, 'https://youtu.be/f4RoLvSi0mw', 7);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(10) NOT NULL,
  `module_desc` varchar(255) NOT NULL,
  `sub_topic_id` int(10) NOT NULL,
  `number` int(3) NOT NULL,
  `module_level` enum('1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `module_desc`, `sub_topic_id`, `number`, `module_level`) VALUES
(1, 'Konsep Sel', 1, 1, '1'),
(2, 'Komponen Kimiawi Penyusun Sel', 1, 2, '2'),
(3, 'Struktur Sel Prokariotik dan Eukariotik', 2, 3, '2'),
(4, 'Perbedaan Sel Hewan dengan Sel Tumbuhan', 2, 4, '1'),
(5, 'Mekanisme Transpor Melalui Membran', 3, 5, '2'),
(6, 'Sintesis Protein', 3, 6, '3'),
(7, 'Reproduksi Sel', 3, 7, '2');

-- --------------------------------------------------------

--
-- Table structure for table `module_learned`
--

CREATE TABLE `module_learned` (
  `id` int(10) NOT NULL,
  `module_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module_question`
--

CREATE TABLE `module_question` (
  `id` int(10) NOT NULL,
  `module_id` int(10) NOT NULL,
  `question` mediumtext NOT NULL,
  `answer` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_question`
--

INSERT INTO `module_question` (`id`, `module_id`, `question`, `answer`) VALUES
(1, 1, 'Menurut Campbell, Reece, & Mitchel sel merupakan . . .', 3),
(2, 1, 'Unit struktural dan fungsional terkecil makhluk hidup adalah pengertian dari ...', 5),
(3, 1, 'Sel disebut sebagai unit fungsional terkecil dalam kehidupan karena . . .', 12),
(4, 1, 'Sel dapat melakukan berbagai proses kehidupan misalnya . . .\n<br/>1.	respirasi\n<br/>2.	transportasi\n<br/>3.	reproduksi\n<br/>4.	ekskresi\n<br/>5.	sekresi\n<br/>6.	sintesis\n<br/>Jawaban yang benar dari pilihan diatas adalah . . .\n', 16),
(5, 1, 'Istilah sel pertama kali dinyatakan oleh . . .', 18),
(6, 1, 'Sel juga merupakan unit . . . makhluk hidup yang menurunkan sifat genetis dari satu generasi kepada generasi berikutnya.', 22),
(7, 1, 'Sel merupakan ruangan-ruangan kecil yang dibatasi oleh dinding adalah pengertian sel menurut . . .', 25),
(8, 2, 'Senyawa kimia penyusun sel disebut . . .', 29),
(9, 2, 'komponen kimia sebuah sel terdiri atas . . .', 35),
(10, 2, 'unsur makro adalah . . .', 38),
(11, 2, 'Senyawa organik terdiri atas . . .', 44),
(12, 2, 'Air merupakan senyawa penyusun sel terbesar. Berapa banyak kontribusi air terhadap sel?', 47),
(13, 2, 'Gas yang terlibat dalam aktivitas sel adalah . . ', 49),
(14, 2, 'penyimpan informasi genetis dalam sel dan bersama-sama dengan protein histon membentuk kromosom adalah . . .', 54),
(15, 3, 'berdasarkan strukturnya, sel dapat dibedakan menjadi . . . jenis.', 57),
(16, 3, 'Makhluk hidup yang termasuk prokariotik adalah . . .', 63),
(17, 3, 'Dinding sel berfungsi sebagai . . .', 68),
(18, 3, 'Membran plasma tersusun dari . . .', 69),
(19, 3, 'Struktur sel eukariotik terdiri atas tiga komponen utama yaitu . . .', 73),
(20, 3, 'Macam-macam organel penyusun sel adalah . . .', 80),
(21, 3, '1) Tempat sintesis polisakarida seperti mukus, selulosa, dan hemiselulosa. \n<br/>2) Menetralkan racun (detoksifikasi)\n<br/>3) Menyintesis lemak dan kolesterol\n<br/>4) Membentuk akrosom pada sperma, kuning telur pada sel telur, dan lisosom.\n<br/>Fungsi dari kompleks golgi adalah . . .\n', 82),
(22, 4, 'Bagian sel yang hanya dimiliki oleh sel tumbuhan yaitu . . .', 85),
(23, 4, 'Sel hewan dan sel tumbuhan termasuk . . .', 90),
(24, 4, 'Sel hewan memiliki . . . yang tidak dimiliki oleh sel tumbuhan.', 96),
(25, 4, 'lapisan terluar yang tersusun dari selulosa, hemiselulosa, dan pektin adalah . . .', 97),
(26, 4, 'Vakuola mempunyai beberapa fungsi sebagai berikut, kecuali . . .', 102),
(27, 4, 'Kromoplas yaitu . . .', 106),
(28, 4, 'Sel hewan memiliki . . . sentriol di dalam sentrosom', 109),
(29, 5, 'Perpindahan molekul atau ion yang melewati membran ada dua macam yaitu . . .', 115),
(30, 5, 'Difusi adalah . . .', 117),
(31, 5, 'Contoh transpor pasif yaitu . . .', 124),
(32, 5, 'Transpor pasif merupakan . . .', 128),
(33, 5, 'Contoh transpor aktif antara lain :\n<br/>1. pompa natrium-kalium, \n<br/>2.endositosis\n<br/>3.eksositosis\n<br/>Contoh transpor aktif yang benar pada soal diatas adalah . . .', 134),
(34, 5, 'Air akan masuk ke dalam sel jika konsentrasi larutan dalam sel tinggi sehingga terjadi . . .', 134),
(35, 5, 'Eksosmosis pada tumbuhan akan mengakibatkan . . .', 139),
(36, 6, 'Sintesis protein berlangsung di  . . .', 143),
(37, 6, 'Sintesis protein adalah  . . .', 145),
(38, 6, 'Translasi adalah . . .', 150),
(39, 6, 'Proses transkripsi akan berhenti setelah sampai pada terminator, yakni urutan DNA yang berfungsi menghentikan transkripsi. Proses ini terjadi pada tahapan . . .', 156),
(40, 6, 'Translasi terdiri atas berapa tahapan?', 158),
(41, 6, 'kodon start AUG bertugas untuk  . . .', 163),
(42, 6, 'Yang berperan mengatur homeostasis, metabolisme, reproduksi, pertumbuhan, dan perkembangan adalah . . .', 165),
(43, 7, 'Reproduksi sel merupakan proses penggandaan materi genetik (DNA) yang terdapat di dalam nukleus sehingga . . .', 169),
(44, 7, 'peristiwa pembelahan sel yang terjadi pada sel-sel somatis serta menghasilkan dua sel anak dengan genotipe sama dan identik dengan induknya. Pengertian dari . . .', 174),
(45, 7, 'Pembelahan mitosis bertujuan . . .', 180),
(46, 7, 'Adapun tahap-tahap pembelahan mitosis meliputi :\n<br/>1.profase \n<br/>2.prometafase, \n<br/>3.metafase, \n<br/>4. anafase \n<br/>5.telofase\n<br/>tahap-tahap pembelahan yang benar adalah . . .\n', 184),
(47, 7, 'Tanaman mengalami pertumbuhan karena . . .', 185),
(48, 7, 'Sel melangsungkan pembelahan mitosis sehingga . . .', 191),
(49, 7, 'Pertumbuhan adalah . . .', 196);

-- --------------------------------------------------------

--
-- Table structure for table `module_question_choice`
--

CREATE TABLE `module_question_choice` (
  `id` int(10) NOT NULL,
  `answer_desc` mediumtext NOT NULL,
  `question_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_question_choice`
--

INSERT INTO `module_question_choice` (`id`, `answer_desc`, `question_id`) VALUES
(1, 'bagian yang terdiri dari nukelus (inti sel) dan nukleolus (anak inti)', 1),
(2, 'Sel adalah unit dasar kehidupan makhluk hidup', 1),
(3, 'kumpulan materi paling sederhana yang dapat hidup', 1),
(4, 'mata rantai terakhir dalam rantai besar yang membentuk jaringan organ, sistem, dan individu.', 1),
(5, 'sel', 2),
(6, 'sel prokariotik', 2),
(7, 'sel eukariotik', 2),
(8, 'reproduksi sel', 2),
(9, 'merupakan penyusun yang mendasar bagi tubuh makhluk hidup ', 3),
(10, 'di dalam sel terjadi berbagai reaksi-reaksi kimia kehidupan ', 3),
(11, 'dapat menurunkan sifat genetis dari satu generasi ke generasi berikutnya ', 3),
(12, 'sel tidak dapat dibagi-bagi lagi menjadi lebih kecil', 3),
(13, '1,2,3,6', 4),
(14, '2,4,5,6', 4),
(15, '1,3,5,6', 4),
(16, 'semua benar', 4),
(17, 'Johannes Purkinje', 5),
(18, 'Robert Hooke', 5),
(19, 'Theodor Schwann', 5),
(20, 'Rudolf Virchow', 5),
(21, 'protoplasma', 6),
(22, 'hereditas', 6),
(23, 'ekskresi', 6),
(24, 'sekresi', 6),
(25, 'Robert Hooke', 7),
(26, 'Rene Dutrochet', 7),
(27, 'Alexander Braun', 7),
(28, 'Rudolph Vircow', 7),
(29, 'protoplasma', 8),
(30, 'hereditas', 8),
(31, 'ekskresi', 8),
(32, 'sekresi', 8),
(33, 'unsur makro, unsur mikro, senyawa organik', 9),
(34, 'senyawa organik, dan senyawa anorganik.', 9),
(35, 'unsur makro, unsur mikro, senyawa organik, dan senyawa anorganik.', 9),
(36, 'unsur mikro, senyawa organik, dan senyawa anorganik.', 9),
(37, 'unsur yang terdapat dalam jumlah sangat sedikit', 10),
(38, 'unsur terbesar yang menyusun sebuah sel.', 10),
(39, 'makromolekul yang sangat penting untuk kelangsungan hidup sel.', 10),
(40, 'penyimpan informasi genetis dalam sel dan bersama-sama dengan protein histon membentuk kromosom.', 10),
(41, 'asam nukleat', 11),
(42, 'asam amino dan nukleotida', 11),
(43, 'karbohidrat dan protein,', 11),
(44, 'mikromolekul dan makromolekul.', 11),
(45, '40-45%', 12),
(46, '45-50%', 12),
(47, '50-60%', 12),
(48, '60-70%', 12),
(49, 'NH3', 13),
(50, 'NaCl', 13),
(51, 'CaSO4', 13),
(52, 'NaHCO3', 13),
(53, 'RNA', 14),
(54, 'DNA', 14),
(55, 'Lipid', 14),
(56, 'Enzim', 14),
(57, '2', 15),
(58, '3', 15),
(59, '4', 15),
(60, '5', 15),
(61, 'bakteri', 16),
(62, 'ganggang biru', 16),
(63, 'a dan b benar', 16),
(64, 'a dan b salah', 16),
(65, 'pelindung molekuler sel terhadap lingkungan di sekitarnya.', 17),
(66, 'untuk mencerna makanan secara intraseluler dan untuk melakukan proses metabolisme sel.', 17),
(67, 'penghasil energi.', 17),
(68, 'pelindung dan pemberi bentuk tubuh', 17),
(69, 'karbohidrat, lemak, dan protein.', 18),
(70, 'peptidoglikan, lipid, dan protein', 18),
(71, 'air, protein, lipid, mineral, dan enzim-enzim ', 18),
(72, 'peptidoglikan, lipid, dan lemak', 18),
(73, 'membran plasma, sitoplasma, dan Kompleks Golgi', 19),
(74, 'membran plasma, sitoplasma, dan organel-organel sel.', 19),
(75, 'sitoplasma, Lisosom, dan organel-organel sel.', 19),
(76, 'kompleks Golgi, Lisosom, dan organel-organel sel', 19),
(77, 'Inti Sel (Nukleus)', 20),
(78, 'Retikulum Endoplasma (RE)', 20),
(79, 'Ribosom', 20),
(80, 'Semua jawaban benar', 20),
(81, '1 dan 2', 21),
(82, '1 dan 4', 21),
(83, '2 dan 3', 21),
(84, '2 dan 4', 21),
(85, 'plastida', 22),
(86, 'sentrosom', 22),
(87, 'mikrotubulus', 22),
(88, 'mitokondria', 22),
(89, 'sel prokariotik', 23),
(90, 'sel eukariotik', 23),
(91, 'sitoplasma', 23),
(92, 'membran plasma', 23),
(93, 'dinding sel', 24),
(94, 'vakuola', 24),
(95, 'plastida', 24),
(96, 'sentriol', 24),
(97, 'dinding sel', 25),
(98, 'vakuola', 25),
(99, 'plastida', 25),
(100, 'sentriol', 25),
(101, 'Tempat menyimpan zat makanan seperti amilum dan gula.', 26),
(102, 'mengatur keluar masuknya zat ', 26),
(103, 'Menyimpan pigmen.', 26),
(104, 'Menyimpan minyak asiri.', 26),
(105, 'plastida yang mengandung klorofil dan pigmen fotosintetik lainnya', 27),
(106, 'plastida yang mengandung pigmen nonfotosintetik', 27),
(107, 'plastida yang tidak berwarna', 27),
(108, 'plastida yang berwarna', 27),
(109, 'dua', 28),
(110, 'tiga', 28),
(111, 'empat', 28),
(112, 'lima', 28),
(113, 'transpor pasif dan transpor tidak aktif', 29),
(114, 'transpor aktif dan transpor aktif', 29),
(115, 'transpor pasif dan transpor aktif', 29),
(116, 'semua jawaban salah', 29),
(117, 'perpindahan molekul-molekul zat dari konsentrasi tinggi ke konsentrasi rendah baik melalui membran plasma ataupun tidak.', 30),
(118, 'perpindahan molekul-molekul pelarut (misal air) dari larutan berkonsentrasi rendah (hipotonik) ke larutan berkonsentrasi tinggi (hipertonik) melalui selaput (membran) semipermeabel.', 30),
(119, 'perpindahan molekul air melalui membran semipermeabel dari larutan yang kadar airnya tinggi ke larutan yang kadar airnya rendah', 30),
(120, 'perpindahan molekul atau ion tanpa menggunakan energi sel.', 30),
(121, 'difusi dan eksositosis', 31),
(122, 'endositosis dan eksositosis.', 31),
(123, 'pompa natrium-kalium', 31),
(124, 'difusi dan osmosis.', 31),
(125, 'perpindahan molekul-molekul zat dari konsentrasi tinggi ke konsentrasi rendah baik melalui membran plasma ataupun tidak.', 32),
(126, 'perpindahan molekul-molekul pelarut (misal air) dari larutan berkonsentrasi rendah (hipotonik) ke larutan berkonsentrasi tinggi (hipertonik) melalui selaput (membran) semipermeabel.', 32),
(127, 'perpindahan molekul air melalui membran semipermeabel dari larutan yang kadar airnya tinggi ke larutan yang kadar airnya rendah', 32),
(128, 'perpindahan molekul atau ion tanpa menggunakan energi sel.', 32),
(129, '1 dan 2', 33),
(130, '2 dan 3', 33),
(131, '1 dan 3', 33),
(132, 'Semua jawaban benar', 33),
(133, 'eksosmosis', 34),
(134, 'endosmosis', 34),
(135, 'plasmolisis', 34),
(136, 'eksosmosis dan endosmosis', 34),
(137, 'kehancuran sel karena robeknya membran plasma (lisis).', 35),
(138, 'kerusakan sel.', 35),
(139, 'terlepasnya membran dari dinding sel', 35),
(140, 'pengerutan sel (krenasi).', 35),
(141, 'membran', 36),
(142, 'badan golgi', 36),
(143, 'ribosom', 36),
(144, 'RNA', 36),
(145, 'proses penerjemahan gen menjadi urutan asam amino yang akan disintesis menjadi polipeptida (protein)', 37),
(146, 'proses pelekatan antara tRNA dengan asam amino dengan bantuan enzim aminoasil-tRNA sintetase.', 37),
(147, 'Proses transkripsi diawali dari sintesis RNA dari salah satu rantai DNA sense atau rantai cetakan. Adapun rantai DNA komplemennya disebut rantai antisense', 37),
(148, 'menentukan tempat dimulainya transkripsi dan menentukan satu rantai DNA yang akan digunakan sebagai cetakan', 37),
(149, 'proses penerjemahan gen menjadi urutan asam amino yang akan disintesis menjadi polipeptida (protein)', 38),
(150, 'proses pelekatan antara tRNA dengan asam amino dengan bantuan enzim aminoasil-tRNA sintetase.', 38),
(151, 'Proses transkripsi diawali dari sintesis RNA dari salah satu rantai DNA sense atau rantai cetakan. Adapun rantai DNA komplemennya disebut rantai antisense', 38),
(152, 'menentukan tempat dimulainya transkripsi dan menentukan satu rantai DNA yang akan digunakan sebagai cetakan', 38),
(153, 'Inisiasi', 39),
(154, 'Elongasi', 39),
(155, 'Translasi', 39),
(156, 'Terminasi', 39),
(157, '2', 40),
(158, '3', 40),
(159, '4', 40),
(160, '5', 40),
(161, 'mengatalis pembentukan ikatan peptida antara asam amino yang baru', 41),
(162, 'memberi sinyal untuk menghentikan translasi', 41),
(163, 'membawa kode untuk membentuk asam amino metionin', 41),
(164, 'melepas dari ribosom menuju ke sitoplasma', 41),
(165, 'Hormon', 42),
(166, 'Enzim', 42),
(167, 'Protein', 42),
(168, 'DNA', 42),
(169, 'menghasilkan sel-sel anakan yang memiliki materi genetik yang identik', 43),
(170, 'menghasilkan dua sel anak dengan genotipe sama dan identik dengan induknya', 43),
(171, 'dapat mengalami perubahan bentuk, ukuran, dan jumlahnya bertambah banyak.', 43),
(172, 'semua jawaban salah.', 43),
(173, 'Reproduksi sel', 44),
(174, 'Pembelahan mitosis', 44),
(175, 'pembelahan amitosis', 44),
(176, 'pembelahan meiosis', 44),
(177, 'dapat mengalami perubahan bentuk, ukuran, dan jumlahnya bertambah banyak.', 45),
(178, 'untuk menghasilkan sel-sel anakan yang memiliki materi genetik yang identik', 45),
(179, 'untuk menghasilkan dua sel anak dengan genotipe sama dan identik dengan induknya', 45),
(180, 'untuk pertumbuhan dan regenerasi sel.', 45),
(181, '1,2,5', 46),
(182, '3,2,4', 46),
(183, '5,4,1', 46),
(184, '1,2,3,4,5', 46),
(185, 'adanya penambahan jumlah sel sebagai hasil pembelahan mitosis. ', 47),
(186, 'Pertumbuhan umumnya terjadi pada daerah meristem (titik tumbuh)', 47),
(187, 'terdapat pada ujung akar dan ujung batang.', 47),
(188, 'peristiwa pembelahan sel secara mitosis', 47),
(189, 'menghasilkan sel-sel anakan yang memiliki materi genetik yang identik', 48),
(190, 'menghasilkan dua sel anak dengan genotipe sama dan identik dengan induknya', 48),
(191, 'dapat mengalami perubahan bentuk, ukuran, dan jumlahnya bertambah banyak.', 48),
(192, 'semua jawaban salah.', 48),
(193, 'proses penggandaan materi genetik (DNA) yang terdapat di dalam nukleus sehingga menghasilkan sel-sel anakan yang memiliki materi genetik yang identik', 49),
(194, 'pembelahan mitosis sehingga dapat mengalami perubahan bentuk, ukuran, dan jumlahnya bertambah banyak.', 49),
(195, 'peristiwa pembelahan sel yang terjadi pada sel-sel somatis serta menghasilkan dua sel anak dengan genotipe sama dan identik dengan induknya', 49),
(196, 'suatu proses pertambahan ukuran, baik volume, bobot, dan jumlah sel yang bersifat irreversible.', 49);

-- --------------------------------------------------------

--
-- Table structure for table `pre_test_answer`
--

CREATE TABLE `pre_test_answer` (
  `id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `modul_1` int(1) NOT NULL,
  `modul_2` int(1) NOT NULL,
  `modul_3` int(1) NOT NULL,
  `modul_4` int(1) NOT NULL,
  `modul_5` int(1) NOT NULL,
  `modul_6` int(1) NOT NULL,
  `modul_7` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pre_test_answer`
--

INSERT INTO `pre_test_answer` (`id`, `student_id`, `modul_1`, `modul_2`, `modul_3`, `modul_4`, `modul_5`, `modul_6`, `modul_7`) VALUES
(200, 19, 0, 0, 1, 0, 0, 0, 0),
(201, 20, 0, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pre_test_result`
--

CREATE TABLE `pre_test_result` (
  `id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pre_test_result`
--

INSERT INTO `pre_test_result` (`id`, `student_id`, `level`) VALUES
(26, 19, 2),
(27, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_result`
--

CREATE TABLE `quiz_result` (
  `id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `nilai` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_result_e_learning`
--

CREATE TABLE `quiz_result_e_learning` (
  `id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `nilai` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nis` varchar(25) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_address` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `class_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `user_id`, `nis`, `student_name`, `student_address`, `phone_number`, `class_id`) VALUES
(19, 270, '170411100048', 'fitri s ', 'sumenep', '087818182023', 3),
(20, 273, '123456', 'Namaku', 'Alamatku', '08123456789', 2),
(21, 274, '1234567', 'Namamu', 'Alamatmu', '0812345678912', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_topic`
--

CREATE TABLE `sub_topic` (
  `id` int(10) NOT NULL,
  `sub_topic_desc` varchar(255) NOT NULL,
  `topic_id` int(10) NOT NULL,
  `number` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_topic`
--

INSERT INTO `sub_topic` (`id`, `sub_topic_desc`, `topic_id`, `number`) VALUES
(1, 'Konsep Sel dan Komponen Kimiawi Penyusun Sel', 1, 1),
(2, 'Struktur dan Fungsi Bagian-Bagian Sel', 1, 2),
(3, 'Bioproses dalam Sel', 1, 3),
(4, 'Struktur dan Fungsi Jaringan Tumbuhan', 2, 1),
(5, 'Jaringan Penyusun Organ Tumbuhan', 2, 2),
(6, 'Kultur Jaringan Tumbuhan', 2, 3),
(7, 'Struktur, Letak, dan Fungsi Jaringan Hewan Vertebrata', 3, 1),
(8, 'Teknologi yang Berkaitan dengan Jaringan Hewan', 3, 2),
(9, 'Alat Gerak Pasif', 4, 1),
(10, 'Kelainan dan Teknologi yang Berhubungan dengan Sistem Gerak', 4, 2),
(11, 'Darah', 5, 1),
(12, 'Alat-Alat Peredaran Darah dan Mekanisme Peredaran Darah', 5, 2),
(13, 'Kelainan-Kelainan dan Teknologi yang Berkaitan dengan Sistem Peredaran Darah', 5, 3),
(14, 'Zat-Zat Makanan yang Diperlukan Tubuh', 6, 1),
(15, 'Struktur dan Fungsi Sistem Pencernaan Manusia dan Ruminansia', 6, 2),
(16, 'Sistem Pernapasan pada Manusia', 7, 1),
(17, 'Sistem Pernapasan pada Hewan', 7, 2),
(18, 'Kelainan-Kelainan pada Sistem Pernapasan Manusia', 7, 3),
(19, 'Proses Ekskresi pada Manusia', 8, 1),
(20, 'Gangguan dan penyakit pada Sistem Ekskresi', 8, 2),
(21, 'Sistem Saraf Manusia', 9, 1),
(22, 'Sistem Endokrin (Hormon) Manusia', 9, 2),
(23, 'Sistem Indra Manusia', 9, 3),
(24, 'Gangguan dan Pengaruh Psikotropika pada Sistem Koordinasi Manusia', 9, 4),
(25, 'Struktur dan Fungsi Alat Reproduksi Manusia', 10, 1),
(26, 'Proses-Proses yang Berlangsung dalam Organ Reproduksi', 10, 2),
(27, 'Keterkaitan Antara Kesehatan Reproduksi dengan Program KB dan Kependudukan', 10, 3),
(28, 'Mekanisme Pertahanan Tubuh', 11, 1),
(29, 'Jenis-Jenis Kekebalan dan Gangguan pada Sistem Kekebalan Tubuh', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `survey_answer`
--

CREATE TABLE `survey_answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `response_text` varchar(255) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_answer`
--

INSERT INTO `survey_answer` (`id`, `question_id`, `response_text`, `value`) VALUES
(1, 1, 'mencari toko itu berdasarkan tempat lain di sekitar situ yang sudah saya tahu.', 4),
(2, 1, 'bertanya pada teman yang tahu arah toko itu.', 2),
(3, 1, 'menuliskan alamat lengkap dan daftar belokan yang harus saya ingat.', 3),
(4, 1, 'menggunakan peta yang menunjukkan lokasi toko itu.', 1),
(5, 2, 'mengamati diagram petunjuknya.', 1),
(6, 2, 'mendengar suara yang menjelaskan.', 2),
(7, 2, 'membaca instruksi yang tertulis.', 3),
(8, 2, 'melihat tindakan orangnya.', 4),
(9, 3, 'melihat detail kegiatan dan aktivitas yang akan dilakukan.', 4),
(10, 3, 'melihat petanya dan mengamati lokasi-lokasi turnya.', 1),
(11, 3, 'membaca perincian jadwal kegiatan tur tersebut.', 3),
(12, 3, 'bicara dengan pengelola atau peserta lain di tur itu.', 2),
(13, 4, 'aplikasi ilmu pada kondisi nyata yang dihadapi.', 4),
(14, 4, 'berkomunikasi dengan orang dengan berdiskusi.', 2),
(15, 4, 'pekerjaan yang memakai desain, peta, atau bagan.', 1),
(16, 4, 'penggunaan kata yang tepat dalam komunikasi tertulis.', 3),
(17, 5, 'belajar dengan berdiskusi.', 2),
(18, 5, 'mencari pola tertentu.', 1),
(19, 5, 'menggunakan contoh dan penerapan.', 4),
(20, 5, 'membaca buku, artikel dan diktat.', 3),
(21, 6, 'mempertimbangkan contohdari setiap cara penghematan berdasarkan kondisi keuangan saya.', 4),
(22, 6, 'membaca brosur tertulis yang menjelaskan cara-cara berhemat secara detail.', 3),
(23, 6, 'memakai grafik yang menunjukkan variasi pilihan dan jangka waktu yang dibutuhkan.', 1),
(24, 6, 'bicara dengan ahli keuangan mengenai cara-cara berhemat yang bisa ditempuh.', 2),
(25, 7, 'melihat orang lain bermain sebelum saya ikut mencoba.', 4),
(26, 7, 'mendengar penjelasan orang serta bertanya padanya.', 2),
(27, 7, 'memakai diagram yang menjelaskan tahap, langkah dan strategi permainannya.', 1),
(28, 7, 'membaca petunjuk tertulis pada permainan itu.', 3),
(29, 8, 'memberikan bacaan mengenai masalah yang saya hadapi.', 3),
(30, 8, 'memakai alat peraga jantung untuk menunjukkan masalah yang saya hadapi.', 4),
(31, 8, 'menguraikan masalah yang saya hadapi.', 2),
(32, 8, 'menunjukkan diagram mengenai masalah yang saya hadapi.', 1),
(33, 9, 'membaca intruksi tertulis pada petunjuknya.', 3),
(34, 9, 'bicara dengan orang yang paham tentang program itu.', 2),
(35, 9, 'langsung mencoba dan belajar dari kesalahan.', 4),
(36, 9, 'mengikuti diagram pada buku petunjuknya.', 1),
(37, 10, 'video cara melakukan atau membuat sesuatu.', 4),
(38, 10, 'desain dan fitur visual yang menarik.', 1),
(39, 10, 'uraian tertulis, daftar dan penjelasan yang menarik.', 3),
(40, 10, 'situs dengan suara, siaran internet atau wawancara.', 2),
(41, 11, 'diagram yang berisi tahap-tahap proyek itu lengkap dengan bagan berisi manfaat dan biayanya.', 1),
(42, 11, 'laporan tertulis yang menjelaskan bagian utama proyek tersebut.', 3),
(43, 11, 'kesempatan berdiskusi mengenai proyek tersebut.', 2),
(44, 11, 'contoh-contoh proyek serupa yang sudah berhasil.', 4),
(45, 12, 'bertanya dan berdiskusi mengenai kamera dan fiturnya.', 2),
(46, 12, 'membaca instruksi tertulis mengenai cara pemakaian kamera itu.', 3),
(47, 12, 'melihat diagram yang menunjukkan komponen kamera itu.', 1),
(48, 12, 'melihat contoh hasil yang baik dan yang jelek dari kamera itu.', 4),
(49, 13, 'peragaan, model peraga, atau kesempatan mencoba langsung.', 4),
(50, 13, 'kesempatan tanya jawab, diskusi kelompok atau pembicara tamu.', 2),
(51, 13, 'cetakan diktat, buku atau bacaan lain.', 3),
(52, 13, 'diagram, bagan, peta atau grafik.', 1),
(53, 14, 'umpan balik yang berisi contoh-contoh dari yang saya kerjakan.', 4),
(54, 14, 'umpan balik berupa penjelasan tertulis mengenai hasil pekerjaan saya.', 3),
(55, 14, 'umpan balik yang disampaikan langsung kepada saya.', 2),
(56, 14, 'umpan balik dalam bentuk grafik mengenai hasil pekerjaan saya.', 1),
(57, 15, 'melihat video rumah atau apartemen itu.', 4),
(58, 15, 'berdiskusi dengan pemiliknya.', 2),
(59, 15, 'keterangan tertulis mengenai kamar-kamar dan fiturnya.', 3),
(60, 15, 'denah ruangan dan peta area sekitarnya.', 1),
(61, 16, 'mengikuti diagram instruksi yang dilampirkan.', 1),
(62, 16, 'mendengar saran dari orang yang pernah merakitnya.', 2),
(63, 16, 'membaca penjelasan tertulis yang dilampirkan.', 3),
(64, 16, 'menonton video orang merakit meja yang serupa.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `survey_question`
--

CREATE TABLE `survey_question` (
  `id` int(10) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer_a` varchar(255) NOT NULL,
  `answer_b` varchar(255) NOT NULL,
  `answer_c` varchar(255) NOT NULL,
  `answer_d` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_question`
--

INSERT INTO `survey_question` (`id`, `question`, `answer_a`, `answer_b`, `answer_c`, `answer_d`) VALUES
(1, 'Saya ingin mendatangi satu toko yang disarankan teman. Saya akan:', 'mencari toko itu berdasarkan tempat lain di sekitar situ yang sudah saya tahu.', 'bertanya pada teman yang tahu arah toko itu.', 'menuliskan alamat lengkap dan daftar belokan yang harus saya ingat.', 'menggunakan peta yang menunjukkan lokasi toko itu.'),
(2, 'Suatu situs internet memiliki video mengenai cara membuat suatu grafik khusus. Di situs itu ada orang yang bicara, ada daftar langkah pembuatan video, dan ada beberapa diagram. Saya paling mengerti isi situs itu dengan cara:', 'mengamati diagram petunjuknya.', 'mendengar suara yang menjelaskan.', 'membaca instruksi yang tertulis.', 'melihat tindakan orangnya.'),
(3, 'Saya ingin mengetahui lebih dalam mengenai suatu tur wisata yang saya rencanakan. Saya akan:', 'melihat detail kegiatan dan aktivitas yang akan dilakukan.', 'melihat petanya dan mengamati lokasi-lokasi turnya.', 'membaca perincian jadwal kegiatan tur tersebut.', 'bicara dengan pengelola atau peserta lain di tur itu.'),
(4, 'Dalam memilih karir atau jurusan pendidikan, yang penting bagi saya adalah:', 'aplikasi ilmu pada kondisi nyata yang dihadapi.', 'berkomunikasi dengan orang dengan berdiskusi.', 'pekerjaan yang memakai desain, peta, atau bagan.', 'penggunaan kata yang tepat dalam komunikasi tertulis.'),
(5, 'Saat belajar, saya:', 'belajar dengan berdiskusi.', 'mencari pola tertentu.', 'menggunakan contoh dan penerapan.', 'membaca buku, artikel dan diktat.'),
(6, 'Saya ingin menabung lebih banyak dan mempertimbangkan beberapa cara. Saya akan:', 'mempertimbangkan contohdari setiap cara penghematan berdasarkan kondisi keuangan saya.', 'membaca brosur tertulis yang menjelaskan cara-cara berhemat secara detail.', 'memakai grafik yang menunjukkan variasi pilihan dan jangka waktu yang dibutuhkan.', 'bicara dengan ahli keuangan mengenai cara-cara berhemat yang bisa ditempuh.'),
(7, 'Saya ingin mempelajari suatu jenis permainan kartu yang baru. Saya akan:', 'melihat orang lain bermain sebelum saya ikut mencoba.', 'mendengar penjelasan orang serta bertanya padanya.', 'memakai diagram yang menjelaskan tahap, langkah dan strategi permainannya.', 'membaca petunjuk tertulis pada permainan itu.'),
(8, 'Saya mempunyai masalah jantung. Saya lebih suka dokter yang:', 'memberikan bacaan mengenai masalah yang saya hadapi.', 'memakai alat peraga jantung untuk menunjukkan masalah yang saya hadapi.', 'menguraikan masalah yang saya hadapi.', 'menunjukkan diagram mengenai masalah yang saya hadapi.'),
(9, 'Saya ingin mempelajari suatu program baru di komputer. Saya akan:', 'membaca intruksi tertulis pada petunjuknya.', 'bicara dengan orang yang paham tentang program itu.', 'langsung mencoba dan belajar dari kesalahan.', 'mengikuti diagram pada buku petunjuknya.'),
(10, 'Ketika belajar sesuatu dari internet, saya menyukai:', 'video cara melakukan atau membuat sesuatu.', 'desain dan fitur visual yang menarik.', 'uraian tertulis, daftar dan penjelasan yang menarik.', 'situs dengan suara, siaran internet atau wawancara.'),
(11, 'Saya ingin mempelajari suatu proyek kerja yang baru. Saya akan meminta:', 'diagram yang berisi tahap-tahap proyek itu lengkap dengan bagan berisi manfaat dan biayanya.', 'laporan tertulis yang menjelaskan bagian utama proyek tersebut.', 'kesempatan berdiskusi mengenai proyek tersebut.', 'contoh-contoh proyek serupa yang sudah berhasil.'),
(12, 'Saya ingin belajar cara memotret dengan lebih baik. Saya akan:', 'bertanya dan berdiskusi mengenai kamera dan fiturnya.', 'membaca instruksi tertulis mengenai cara pemakaian kamera itu.', 'melihat diagram yang menunjukkan komponen kamera itu.', 'melihat contoh hasil yang baik dan yang jelek dari kamera itu.'),
(13, 'Saya lebih suka pembicara yang dalam presentasinya menggunakan:', 'peragaan, model peraga, atau kesempatan mencoba langsung.', 'kesempatan tanya jawab, diskusi kelompok atau pembicara tamu.', 'cetakan diktat, buku atau bacaan lain.', 'diagram, bagan, peta atau grafik.'),
(14, 'Saya baru saja menyelesaikan suatu lomba atau suatu ujian dan saya ingin umpan balik orang lain. Saya mengharapkan:', 'umpan balik yang berisi contoh-contoh dari yang saya kerjakan.', 'umpan balik berupa penjelasan tertulis mengenai hasil pekerjaan saya.', 'umpan balik yang disampaikan langsung kepada saya.', 'umpan balik dalam bentuk grafik mengenai hasil pekerjaan saya.'),
(15, 'Saya tertarik dengan suatu rumah atau apartemen. Sebelum berkunjung, saya ingin:', 'melihat video rumah atau apartemen itu.', 'berdiskusi dengan pemiliknya.', 'keterangan tertulis mengenai kamar-kamar dan fiturnya.', 'denah ruangan dan peta area sekitarnya.'),
(16, 'Saya ingin merakit satu set meja kayu yang belum jadi. Saya paling mengerti jika:', 'mengikuti diagram instruksi yang dilampirkan.', 'mendengar saran dari orang yang pernah merakitnya.', 'membaca penjelasan tertulis yang dilampirkan.', 'menonton video orang merakit meja yang serupa.');

-- --------------------------------------------------------

--
-- Table structure for table `survey_responses`
--

CREATE TABLE `survey_responses` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_result`
--

CREATE TABLE `survey_result` (
  `id` int(10) NOT NULL,
  `level_result` int(2) NOT NULL,
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_result`
--

INSERT INTO `survey_result` (`id`, `level_result`, `student_id`) VALUES
(188, 2, 19),
(189, 3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `survey_results`
--

CREATE TABLE `survey_results` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `visual` int(11) DEFAULT NULL,
  `auditory` int(11) DEFAULT NULL,
  `reading` int(11) DEFAULT NULL,
  `kinesthetic` int(11) DEFAULT NULL,
  `learning_result` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_results`
--

INSERT INTO `survey_results` (`id`, `student_id`, `visual`, `auditory`, `reading`, `kinesthetic`, `learning_result`) VALUES
(27, 21, 10, 1, 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `teacher_address` varchar(255) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `teacher_type` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `teacher_name`, `teacher_address`, `nip`, `phone_number`, `email`, `teacher_type`) VALUES
(54, 270, 'Fitri Suwandari', 'sumenep', '170411100048', '087818182023', NULL, '1'),
(55, 272, 'fitri', 'sumenep', '12345678', '087818182023', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(10) NOT NULL,
  `topic_desc` varchar(255) NOT NULL,
  `number` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `topic_desc`, `number`) VALUES
(1, 'Sel sebagai Unit Terkecil Kehidupan dan Bioproses pada Sel', 1),
(2, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Tumbuhan', 2),
(3, 'Struktur dan Fungsi Sel Penyusun Jaringan Hewan', 3),
(4, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Gerak', 4),
(5, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Sirkulasi', 5),
(6, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Pencernaan', 6),
(7, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Pernapasan/Respirasi', 7),
(8, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Ekskresi', 8),
(9, 'Struktur dan Fungsi Sel pada Sistem Koordinasi Manusia', 9),
(10, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Reproduksi', 10),
(11, 'Struktur dan Fungsi Sel-Sel Penyusun Jaringan dalam Sistem Pertahanan Tubuh', 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level_user` enum('1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `level_user`) VALUES
(1, 'admin1@gmail.com', '$2a$10$QGFZIfjT05AN6pUJzhhicenl0d/49i6aNiz0tUUhbywdfiJGs1khe', '1'),
(270, '170411100048', '$2y$10$n36HLjRgGY2RTFZxve9oueaUZE0hnnfigjMe2uqaRGXONPdeNdeii', '3'),
(271, '170411100048', '$2y$10$teuXuWUnKyf5diYSFDEfzO2EU4KuNNDysh74QaEeN4u.PSs010cEG', '2'),
(272, '12345678', '$2y$10$PC7cZhDfcss10eVgNaO3i.VnJx29htVRQFaqIcROiOojhxHslq74G', '2'),
(273, '123456', '$2y$10$B64PGaXcQ.DFcIDrbmHEau8ClSI9QM/LJamMglQEbIWTMn8QzMCOu', '3'),
(274, '1234567', '$2y$10$S0OiqPpXYYDVbt/fEKwdHOY.o9diWJQtXfbgpdWLyUV6VrtRPXbAS', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_user_id` (`user_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `class_attendance`
--
ALTER TABLE `class_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_class_id` (`class_id`),
  ADD KEY `ref_teacher_id` (`teacher_id`);

--
-- Indexes for table `gagal_post_test`
--
ALTER TABLE `gagal_post_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level_student`
--
ALTER TABLE `level_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_student_id` (`student_id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_module_id` (`module_id`);

--
-- Indexes for table `materi_audio`
--
ALTER TABLE `materi_audio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `materi_kinestetik`
--
ALTER TABLE `materi_kinestetik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `materi_visual`
--
ALTER TABLE `materi_visual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_sub_topic_id` (`sub_topic_id`);

--
-- Indexes for table `module_learned`
--
ALTER TABLE `module_learned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_module_id` (`module_id`),
  ADD KEY `ref_student_it` (`student_id`);

--
-- Indexes for table `module_question`
--
ALTER TABLE `module_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_module_id` (`module_id`);

--
-- Indexes for table `module_question_choice`
--
ALTER TABLE `module_question_choice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_question_id` (`question_id`);

--
-- Indexes for table `pre_test_answer`
--
ALTER TABLE `pre_test_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_student_id` (`student_id`);

--
-- Indexes for table `pre_test_result`
--
ALTER TABLE `pre_test_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_student_id` (`student_id`);

--
-- Indexes for table `quiz_result`
--
ALTER TABLE `quiz_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_student_id` (`student_id`);

--
-- Indexes for table `quiz_result_e_learning`
--
ALTER TABLE `quiz_result_e_learning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_student_id` (`student_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_user_id` (`user_id`),
  ADD KEY `ref_class_id` (`class_id`);

--
-- Indexes for table `sub_topic`
--
ALTER TABLE `sub_topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_topic_id` (`topic_id`);

--
-- Indexes for table `survey_answer`
--
ALTER TABLE `survey_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `survey_question`
--
ALTER TABLE `survey_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `survey_responses`
--
ALTER TABLE `survey_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- Indexes for table `survey_result`
--
ALTER TABLE `survey_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_student_id` (`student_id`);

--
-- Indexes for table `survey_results`
--
ALTER TABLE `survey_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ref_user_id` (`user_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_attendance`
--
ALTER TABLE `class_attendance`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gagal_post_test`
--
ALTER TABLE `gagal_post_test`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `level_student`
--
ALTER TABLE `level_student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `materi_audio`
--
ALTER TABLE `materi_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materi_kinestetik`
--
ALTER TABLE `materi_kinestetik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materi_visual`
--
ALTER TABLE `materi_visual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `module_learned`
--
ALTER TABLE `module_learned`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `module_question`
--
ALTER TABLE `module_question`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `module_question_choice`
--
ALTER TABLE `module_question_choice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `pre_test_answer`
--
ALTER TABLE `pre_test_answer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `pre_test_result`
--
ALTER TABLE `pre_test_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `quiz_result`
--
ALTER TABLE `quiz_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quiz_result_e_learning`
--
ALTER TABLE `quiz_result_e_learning`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sub_topic`
--
ALTER TABLE `sub_topic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `survey_answer`
--
ALTER TABLE `survey_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `survey_question`
--
ALTER TABLE `survey_question`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `survey_result`
--
ALTER TABLE `survey_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `survey_results`
--
ALTER TABLE `survey_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `class_attendance`
--
ALTER TABLE `class_attendance`
  ADD CONSTRAINT `class_attendance_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_attendance_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `level_student`
--
ALTER TABLE `level_student`
  ADD CONSTRAINT `level_student_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `materi_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `materi_audio`
--
ALTER TABLE `materi_audio`
  ADD CONSTRAINT `materi_audio_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`);

--
-- Constraints for table `materi_kinestetik`
--
ALTER TABLE `materi_kinestetik`
  ADD CONSTRAINT `materi_kinestetik_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`);

--
-- Constraints for table `materi_visual`
--
ALTER TABLE `materi_visual`
  ADD CONSTRAINT `materi_visual_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`);

--
-- Constraints for table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `module_ibfk_1` FOREIGN KEY (`sub_topic_id`) REFERENCES `sub_topic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `module_learned`
--
ALTER TABLE `module_learned`
  ADD CONSTRAINT `module_learned_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_learned_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `module_question`
--
ALTER TABLE `module_question`
  ADD CONSTRAINT `module_question_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `module_question_choice`
--
ALTER TABLE `module_question_choice`
  ADD CONSTRAINT `module_question_choice_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `module_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pre_test_answer`
--
ALTER TABLE `pre_test_answer`
  ADD CONSTRAINT `pre_test_answer_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pre_test_result`
--
ALTER TABLE `pre_test_result`
  ADD CONSTRAINT `pre_test_result_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz_result`
--
ALTER TABLE `quiz_result`
  ADD CONSTRAINT `quiz_result_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz_result_e_learning`
--
ALTER TABLE `quiz_result_e_learning`
  ADD CONSTRAINT `quiz_result_e_learning_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sub_topic`
--
ALTER TABLE `sub_topic`
  ADD CONSTRAINT `sub_topic_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `survey_answer`
--
ALTER TABLE `survey_answer`
  ADD CONSTRAINT `survey_answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `survey_question` (`id`);

--
-- Constraints for table `survey_responses`
--
ALTER TABLE `survey_responses`
  ADD CONSTRAINT `survey_responses_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `survey_responses_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `survey_question` (`id`),
  ADD CONSTRAINT `survey_responses_ibfk_3` FOREIGN KEY (`answer_id`) REFERENCES `survey_answer` (`id`);

--
-- Constraints for table `survey_result`
--
ALTER TABLE `survey_result`
  ADD CONSTRAINT `survey_result_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `survey_results`
--
ALTER TABLE `survey_results`
  ADD CONSTRAINT `survey_results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
