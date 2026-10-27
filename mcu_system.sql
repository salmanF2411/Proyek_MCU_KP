-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2026 at 05:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcu_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role` enum('pendaftaran','dokter_mata','dokter_umum','super_admin') DEFAULT 'pendaftaran',
  `foto` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `nama_lengkap`, `email`, `role`, `foto`, `last_login`, `is_active`, `created_at`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'Salman Fauzi ', 'fauzisalman2411@gmail.com', 'super_admin', 'uploads/profiles/1770429162_fotosaya.jpg', '2026-08-11 11:25:04', 1, '2025-12-30 00:29:00'),
(2, 'pendaftaran', '5f7e9e5ea7719f4ab95e2986d97fa1ff', 'Dokter Saepuloh', '', 'pendaftaran', NULL, '2026-06-29 09:48:50', 1, '2025-12-30 00:29:00'),
(3, 'dokter_mata', '2ec64c0696126145bfb91f5f4c13fc91', 'Dr. Ahmad Fauzi, Sp.M', '', 'dokter_mata', 'uploads/profiles/1767420105_dokter1.jpg', '2026-06-29 10:24:56', 1, '2025-12-30 00:29:00'),
(4, 'dokter_umum', 'f5df3bde70b7b7ab67ce0e00edcb1951', 'Dr. Siti Rahmah, Sp.PD', NULL, 'dokter_umum', NULL, '2026-06-29 09:47:50', 1, '2025-12-30 00:29:00'),
(13, 'Salman Fauzi St. Mt', 'da96db645e92df9f65e9d6af3749c7c0', 'Salman Fauzi King', 'fauzisalman2411@gmail.com', 'super_admin', NULL, '2026-06-27 22:34:00', 1, '2026-06-26 09:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `konten` longtext DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `tanggal_publish` date DEFAULT NULL,
  `views` int(11) DEFAULT 0,
  `status` enum('draft','published') DEFAULT 'draft',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `slug`, `konten`, `gambar`, `video`, `kategori`, `penulis`, `tanggal_publish`, `views`, `status`, `created_at`, `updated_at`) VALUES
(1, 'hahahaha', 'hahahaha', 'halooohalooohalooohalooohalooohalooSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosaSelamat Datang di klinik sentosa', 'uploads/artikel/1767236774_Screenshot 2025-12-22 155949.png', NULL, 'kesehatan', 'Administrator Utama', '2026-01-01', 42, 'published', '2026-01-01 03:06:14', '2026-06-25 04:09:19'),
(2, 'Keamanan Cyber', 'keamanan-cyber', 'CYber', 'uploads/artikel/1767422344_OIPa (9).jpg', NULL, 'Cyber', 'Administrator Utama', '2026-01-01', 12, 'published', '2026-01-01 06:22:26', '2026-01-26 01:44:49'),
(17, 'Keamanan ', 'keamanan-', 'Cyber security, atau keamanan siber, adalah serangkaian upaya untuk melindungi sistem komputer, jaringan, perangkat, dan data dari serangan digital. Istilah ini mencakup segala hal, mulai dari pengamanan akun media sosial pribadi hingga sistem pertahanan negara yang melibatkan data rahasia.', 'uploads/artikel/1767422942_download (1).jpg', NULL, 'Keamanan', 'Administrator Utama', '2026-01-03', 9, 'published', '2026-01-03 06:49:02', '2026-01-30 00:45:08'),
(18, 'Cyberpreneur', 'cyberpreneur', 'Cyber security, atau keamanan siber, adalah serangkaian upaya untuk melindungi sistem komputer, jaringan, perangkat, dan data dari serangan digital. Istilah ini mencakup segala hal, mulai dari pengamanan akun media sosial pribadi hingga sistem pertahanan negara yang melibatkan data rahasia.', 'uploads/artikel/1767423153_ChatGPT Image Apr 27, 2025, 10_33_20 PM.png', NULL, 'Cyber', 'Salman', '2026-01-03', 8, 'published', '2026-01-03 06:52:33', '2026-01-30 00:45:10'),
(19, 'Makanan Sehat', 'makanan-sehat', 'Makanan sehat dan bergizi\r\n1. telur\r\n2. Buah\r\n3. Sayur', 'uploads/artikel/1769391401_makanan_sehat.jpg', NULL, 'Kesehatan', 'Salman Fauzi', '2026-01-03', 15, 'published', '2026-01-03 06:55:30', '2026-01-30 00:45:13'),
(21, 'Rendang Mantap', 'rendang-mantap', 'ernahkah Anda mendengar sebuah iklan tentang produk atau jasa, kemudian Anda masih mengingat kata-kata slogan atau tagline tentang produk berikut?\r\n\r\nMisalnya, “tango berapa lapis? Ratusan atau sprite enaknya nyegerin!”\r\n\r\nNah, itulah contoh dari kata kata slogan makanan yang biasa dipakai oleh industri makanan dan minuman.\r\n\r\nDalam bisnis, pemasaran adalah ujung tombak dari kesuksesan dan larisnya suatu bisnis. Mungkin kita sudah mengetahui hal yang diperlukan dalam pemasaran misalnya konten, kata-kata, kalimat yang menawarkan, hingga tagline yang akan mempengaruhi pemirsa.\r\n\r\nSecara bentuk slogan sendiri merupakan kata-kata pendek yang tergabung dengan memiliki tujuan meningkatkan brand awareness dari sebuah bisnis.\r\n\r\n\r\nDengan memiliki slogan makanan, bisnis makanan Anda semakin mudah diingat oleh masyarakat, serta semakin meluas dan bisa menarik perhatian masyarakat.', 'uploads/artikel/1767801994_rendangggg.jpg', NULL, 'Makanan', 'Salman Fauzi', '2026-01-07', 11, 'published', '2026-01-07 16:06:34', '2026-01-30 00:45:06'),
(22, '4 SEHAT 5 SEMPURNA', '4-sehat-5-sempurna', 'Makanan empat sehat lima sempurna adalah konsep pola makan seimbang yang bertujuan memenuhi kebutuhan gizi tubuh agar tetap sehat dan bertenaga. Konsep ini terdiri dari empat kelompok makanan utama, yaitu makanan pokok sebagai sumber energi seperti nasi, roti, atau jagung; lauk-pauk sebagai sumber protein yang berperan dalam pertumbuhan dan perbaikan jaringan tubuh, misalnya ikan, daging, telur, tahu, dan tempe; sayur-sayuran yang kaya akan vitamin, mineral, dan serat untuk menjaga daya tahan tubuh; serta buah-buahan yang mengandung vitamin dan antioksidan untuk menjaga kesehatan tubuh. Kelima unsur yang menyempurnakan adalah susu, yang berfungsi sebagai sumber kalsium dan protein untuk menjaga kesehatan tulang dan gigi. Dengan mengonsumsi makanan empat sehat lima sempurna secara teratur, tubuh dapat memperoleh asupan gizi yang seimbang sehingga mendukung pertumbuhan, kesehatan, dan aktivitas sehari-hari.\r\n1. Susu\r\n2. Buah\r\n3. Sayuran\r\n4. Daging\r\n5. Protein', 'uploads/artikel/1769049607_4 sehat.jpg', NULL, 'Makanan', 'Salman Fauzi ST, M.Kom', '2026-01-22', 9, 'published', '2026-01-22 02:40:07', '2026-01-30 00:45:04'),
(23, 'CARA HIDUP SEHAT', 'cara-hidup-sehat', 'Gambar ini menggambarkan gaya hidup sehat yang dilakukan secara seimbang antara tubuh dan pikiran. Untuk memperjelas maknanya, berikut poin-poin cara hidup sehat yang ditunjukkan pada gambar:\r\n\r\n1.Rutin berolahraga\r\nAktivitas seperti yoga membantu menjaga kebugaran tubuh, melatih pernapasan, serta mengurangi stres.\r\n\r\n2.Menjaga kesehatan mental\r\nSikap tenang dan rileks mencerminkan pentingnya mengelola stres dan menjaga kesehatan pikiran.\r\n\r\n3.Minum air putih yang cukup\r\nKonsumsi air yang cukup membantu metabolisme tubuh dan menjaga keseimbangan cairan.\r\n\r\n4.Mengonsumsi makanan bergizi\r\nBuah-buahan dan makanan sehat mendukung daya tahan tubuh dan kesehatan organ.\r\n\r\n5.Tidur yang cukup (± 8 jam)\r\nIstirahat yang cukup membantu proses pemulihan tubuh dan menjaga konsentrasi.\r\n\r\n6.Menjaga berat badan ideal\r\nMemantau berat badan membantu mencegah berbagai penyakit.\r\n\r\n7.Menjaga kesehatan jantung\r\nPola hidup sehat berperan penting dalam menjaga fungsi jantung tetap optimal.\r\n\r\n8.Menghindari rokok\r\nTidak merokok membantu menjaga kesehatan paru-paru dan jantung.\r\n\r\n9.Menghindari alkohol dan makanan tidak sehat\r\nMembatasi alkohol dan makanan cepat saji mencegah risiko penyakit kronis.\r\n\r\nPoin-poin tersebut menunjukkan bahwa hidup sehat bukan hanya tentang olahraga, tetapi juga tentang pola makan, istirahat, dan kebiasaan sehari-hari yang baik.', 'uploads/artikel/1769734337_sehatsehat.jpg', NULL, 'kesehatan', 'Salman Fauzi ST, M.Kom', '2026-01-30', 4, 'published', '2026-01-30 00:52:17', '2026-02-04 06:34:37'),
(24, 'CARA MEMBUAT KUE BOLU', 'cara-membuat-kue-bolu', 'Kue bolu merupakan salah satu jenis kue yang paling populer dan mudah dibuat. Teksturnya yang lembut serta rasanya yang manis membuat kue ini cocok disajikan untuk berbagai acara, seperti camilan keluarga, ulang tahun, atau hidangan saat berkumpul bersama. Proses pembuatannya cukup sederhana dengan bahan-bahan yang mudah ditemukan.\r\n\r\nBahan-bahan:\r\n1.4 butir telur\r\n2.150 gram gula pasir\r\n3.150 gram tepung terigu\r\n4.1 sdt baking powder\r\n5.1 sdt vanili\r\n6.150 gram margarin (lelehkan)\r\n\r\nCara Membuat:\r\n1.Kocok telur dan gula pasir hingga mengembang dan berwarna pucat.\r\n2.Masukkan vanili dan baking powder, aduk perlahan.\r\n3.Tambahkan tepung terigu sedikit demi sedikit sambil diaduk hingga rata.\r\n4.Tuangkan margarin leleh, aduk perlahan sampai adonan tercampur sempurna.\r\n5.Tuang adonan ke dalam loyang yang sudah diolesi margarin.\r\n6.Panggang dalam oven dengan suhu ±170°C selama 30–40 menit hingga matang.\r\n7.Angkat, dinginkan, lalu kue bolu siap disajikan.', 'uploads/artikel/1769819332_kue.jpg', NULL, 'Makanan', 'Salman Fauzi ', '2026-01-31', 21, 'published', '2026-01-31 00:26:48', '2026-02-04 05:31:25'),
(27, 'SEBERAPA BAHAYA PENYAKIT LAMBUNG????', 'seberapa-bahaya-penyakit-lambung', 'Penyakit lambung adalah gangguan kesehatan yang menyerang organ lambung, yaitu bagian dari sistem pencernaan yang berfungsi mencerna makanan sebelum disalurkan ke usus. Penyakit ini sering terjadi akibat pola makan yang tidak teratur, konsumsi makanan pedas dan asam secara berlebihan, stres, kebiasaan merokok, serta penggunaan obat-obatan tertentu dalam jangka panjang. Salah satu penyebab utama penyakit lambung adalah infeksi bakteri Helicobacter pylori yang dapat merusak lapisan pelindung lambung.\r\n\r\nGejala penyakit lambung umumnya meliputi nyeri atau perih di bagian ulu hati, rasa mual, muntah, perut kembung, sering bersendawa, dan hilangnya nafsu makan. Pada kondisi yang lebih parah, penderita dapat mengalami muntah darah atau buang air besar berwarna hitam, yang menandakan adanya perdarahan pada lambung. Jika tidak ditangani dengan baik, penyakit lambung dapat berkembang menjadi tukak lambung atau bahkan meningkatkan risiko kanker lambung.\r\n\r\nUntuk mencegah penyakit lambung, seseorang disarankan menjaga pola makan teratur, menghindari makanan yang terlalu pedas, asam, dan berlemak, serta mengelola stres dengan baik. Selain itu, penting untuk tidak mengonsumsi obat pereda nyeri secara sembarangan dan menghentikan kebiasaan merokok. Jika gejala sering muncul atau semakin parah, sebaiknya segera berkonsultasi dengan tenaga medis agar mendapatkan penanganan yang tepat.', 'uploads/artikel/1770178404_lambung.jpg', 'uploads/artikel/1770183862_2025-12-26 19-58-30.mp4', 'kesehatan', 'Salman Fauzi ', '2026-02-04', 21, 'published', '2026-02-04 04:12:39', '2026-02-04 06:46:08'),
(35, 'MANCING', 'mancing', 'ini adalah video mancing di roblox', 'uploads/artikel/1770185518_Screenshot 2026-01-21 165208.png', 'uploads/artikel/1770185518_video_mancing.mp4', 'funny', 'Salman Fauzi ', '2026-02-04', 14, 'published', '2026-02-04 06:11:58', '2026-02-04 06:38:42'),
(36, 'tes kedua', 'tes-kedua', 'haiii', 'uploads/artikel/1770186563_Screenshot 2026-01-20 202623.png', 'uploads/artikel/1770186594_WIN_20240513_20_45_13_Pro.mp4', 'funny', 'Salman Fauzi ', '2026-02-04', 3, 'published', '2026-02-04 06:29:23', '2026-02-04 06:38:37'),
(37, 'ARTIKEL KESEHATAN', 'artikel-kesehatan', 'KESEHATAN ITU PENTING YA TEMAN TEMAN', 'uploads/artikel/1770186858_sehatsehat.jpg', 'uploads/artikel/1770186858_Permintaan_Video_Pentingnya_Kesehatan.mp4', 'kesehatan', 'Salman Fauzi ', '2026-02-04', 7, 'published', '2026-02-04 06:34:18', '2026-02-04 14:05:16'),
(38, 'HAYUUUU', 'hayuuuu', 'HAYUUU KERKELLL', 'uploads/artikel/1770187203_dokter1.jpg', 'uploads/artikel/1770187203_2025-12-26 20-18-03.mp4', 'video', 'Salman Fauzi ', '2026-02-04', 3, 'published', '2026-02-04 06:40:03', '2026-02-04 13:08:26'),
(39, 'VITAMIN C', 'vitamin-c', 'Vitamin C, atau yang dikenal secara ilmiah sebagai asam askorbat, adalah nutrisi esensial larut air yang tidak dapat diproduksi sendiri oleh tubuh manusia, sehingga harus dipenuhi melalui asupan makanan sehari-hari seperti buah dan sayuran. Vitamin ini memegang peranan vital dalam berbagai fungsi fisiologis, mulai dari memperkuat pertahanan tubuh alami hingga menjaga elastisitas kulit. Sebagai antioksidan yang kuat, Vitamin C bekerja aktif dalam melindungi sel-sel tubuh dari kerusakan oksidatif yang disebabkan oleh radikal bebas, polusi, dan paparan sinar UV, sekaligus membantu mempercepat proses pemulihan tubuh saat sedang sakit.\r\n\r\nBerikut adalah manfaat dan fungsi utama Vitamin C bagi kesehatan:\r\n1. Meningkatkan Sistem Kekebalan Tubuh: Vitamin C merangsang produksi sel darah putih yang berfungsi melindungi tubuh dari infeksi virus dan bakteri.\r\n2. Membantu Produksi Kolagen: Berperan krusial dalam sintesis kolagen, yaitu protein yang dibutuhkan untuk penyembuhan luka, serta menjaga kesehatan kulit, tulang, dan sendi.\r\n3. Sebagai Antioksidan Kuat: Membantu menetralkan radikal bebas dalam tubuh, sehingga dapat mengurangi risiko penyakit kronis dan memperlambat penuaan dini.\r\n4. Meningkatkan Penyerapan Zat Besi: Membantu tubuh menyerap zat besi dari sumber nabati (sayuran) dengan lebih efisien, yang sangat penting untuk mencegah anemia.\r\n5. Menjaga Kesehatan Jantung: Konsumsi Vitamin C yang cukup dikaitkan dengan penurunan risiko penyakit jantung dan membantu mengontrol tekanan darah tinggi.', 'uploads/artikel/1770214121_SUNTIK VIT.C alvarisha.png', 'uploads/artikel/1770214121_WhatsApp Video 2026-02-04 at 16.23.05.mp4', 'kesehatan', 'Salman Fauzi ', '2026-02-04', 3, 'published', '2026-02-04 14:08:41', '2026-02-06 03:52:33'),
(40, 'WHITENING', 'whitening', 'Whitening', 'uploads/artikel/1770428507_Whitening Infus 1.png', 'uploads/artikel/1770428507_WhatsApp Video 2026-02-04 at 16.23.05.mp4', 'kesehatan', 'Salman Fauzi ', '2026-02-08', 4, 'published', '2026-02-07 01:41:47', '2026-06-24 11:54:23'),
(41, 'WHITENING 2', 'whitening-2', 'haloo halooo', 'uploads/artikel/1770428544_Whitening Infus 2.png', '', 'kesehatan', 'Salman Fauzi ', '2026-02-07', 4, 'published', '2026-02-07 01:42:24', '2026-08-09 04:47:35'),
(42, 'Proyek Game', 'proyek-game', 'Ini merupakan proyek game yang paling bagus', 'uploads/artikel/1782362032_Screenshot 2026-05-25 222321.png', '', 'game', 'Dokter Saepul ', '2026-06-25', 1, 'published', '2026-06-25 04:33:52', '2026-06-25 04:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_pasien`
--

CREATE TABLE `feedback_pasien` (
  `id` int(11) NOT NULL,
  `pasien_id` int(11) DEFAULT NULL,
  `kode_mcu` varchar(20) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `kesan` text DEFAULT NULL,
  `saran` text DEFAULT NULL,
  `tanggal_submit` datetime DEFAULT current_timestamp(),
  `status` enum('unread','read') DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_pasien`
--

INSERT INTO `feedback_pasien` (`id`, `pasien_id`, `kode_mcu`, `rating`, `kesan`, `saran`, `tanggal_submit`, `status`) VALUES
(5, NULL, NULL, 5, 'Bagus Sekali, Suka sama pelayanannya', 'Udah Bagus sih hehehe', '2026-01-25 08:28:02', 'read'),
(6, NULL, NULL, 4, 'Pelayanan Bagus', 'Pemeriksaan Lama Banget, dipercepat', '2026-01-27 22:15:50', 'read'),
(7, NULL, NULL, 5, 'Bagusss', 'TIdak ada saran hhe', '2026-01-27 22:16:14', 'read'),
(8, NULL, NULL, 5, 'Bagus pelayanan sangat bagus', 'mungkin sediakan minum wkwk', '2026-01-30 07:46:01', 'unread'),
(9, NULL, NULL, 4, 'all good', 'barakallah', '2026-01-30 10:36:09', 'read'),
(10, NULL, NULL, 5, 'baik sekali', 'woww gada saran sih', '2026-02-07 08:59:13', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `home_visit`
--

CREATE TABLE `home_visit` (
  `id_visit` int(11) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `keluhan` text NOT NULL,
  `no_hp` text NOT NULL,
  `alamat_visit` text NOT NULL,
  `id_setting` int(11) NOT NULL,
  `harga` decimal(12,2) NOT NULL,
  `status` enum('pending','diproses','selesai','batal') DEFAULT 'pending',
  `tanggal_kunjungan` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_visit`
--

INSERT INTO `home_visit` (`id_visit`, `nama_pasien`, `keluhan`, `no_hp`, `alamat_visit`, `id_setting`, `harga`, `status`, `tanggal_kunjungan`, `created_at`) VALUES
(1, 'Salman Fauzi', 'Saya kekurangan vitamin c', '', '', 1, '500000.00', 'selesai', '2026-02-06', '2026-02-04 14:47:56'),
(2, 'Siti', 'sakitttt', '', '', 4, '250000.00', 'batal', '2026-02-05', '2026-02-04 14:58:31'),
(3, 'Fahmi Subakti', 'Sering lelah', '', 'Jl. Awilarangn RT/RW 01/04', 1, '500000.00', 'batal', '2026-02-08', '2026-02-06 03:00:12'),
(4, 'Faisal Subakti', 'yaa sakit aja', '', 'jl cipanas', 3, '150000.00', 'selesai', '2026-02-08', '2026-02-06 03:05:22'),
(5, 'Ahmad Syahroni', 'yaa sakit penegn suktik vitamin c', '08567812345', 'jl rancabuaya 01', 1, '500000.00', 'batal', '2026-02-07', '2026-02-06 03:11:59'),
(6, 'Supardi Natsir', 'Pengen imune BOOSTER akumah', '08567812331', 'jl pasir hayam 01, deket alfa', 5, '250000.00', 'selesai', '2026-02-14', '2026-02-06 03:16:04'),
(7, 'Ridwan', 'Aku mau suntik vitamin z', '08567812345', 'jl bojong picung', 6, '5000000.00', 'pending', '2026-02-07', '2026-02-06 03:18:32'),
(9, 'Pa Wildan s', 'Pengen putih kinclong', '08212324256', 'jl sawah gede no 12345', 3, '150000.00', 'batal', '2026-02-10', '2026-02-07 01:07:16'),
(10, 'Pa Wildan A', 'yayaya', '08212324256', 'yayayay', 6, '5000000.00', 'selesai', '2026-02-10', '2026-02-07 02:14:07'),
(12, 'Salman Fauzi', 'sakitt', '0867877777777', 'jl kenangann', 6, '5000000.00', 'diproses', '2026-04-22', '2026-04-20 00:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `home_visit_setting`
--

CREATE TABLE `home_visit_setting` (
  `id_setting` int(11) NOT NULL,
  `judul_layanan` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` decimal(12,2) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `status` enum('aktif','nonaktif') DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_visit_setting`
--

INSERT INTO `home_visit_setting` (`id_setting`, `judul_layanan`, `deskripsi`, `harga`, `gambar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Suntik Vitamin C', 'Vitamin c adalah vitamin yang dibutuhkan oleh tubuh Vitamin c adalah vitamin yang dibutuhkan oleh tubuh Vitamin c adalah vitamin yang dibutuhkan oleh tubuh Vitamin c adalah vitamin yang dibutuhkan oleh tubuh Vitamin c adalah vitamin yang dibutuhkan oleh tubuh Vitamin c adalah vitamin yang dibutuhkan oleh tubuh Vitamin c adalah vitamin yang dibutuhkan oleh tubuh Vitamin c adalah vitamin yang dibutuhkan oleh tubuh', '500000.00', 'uploads/home-visit/1770216322_SUNTIK VIT.C alvarisha.png', 'aktif', '2026-02-04 14:45:22', '2026-02-04 14:46:18'),
(2, 'Whitening Infus', 'Vitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuh', '1000000.00', 'uploads/home-visit/1770216742_Whitening Infus 1.png', 'aktif', '2026-02-04 14:52:22', '2026-02-04 14:52:22'),
(3, 'Whitening Infus 2', 'Vitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuh', '150000.00', 'uploads/home-visit/1770216841_Whitening Infus 2.png', 'aktif', '2026-02-04 14:54:01', '2026-02-04 14:54:01'),
(4, 'IMUNE BOOSTER', 'Vitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuhVitamin c adalah vitamin yang dibutuhkan oleh tubuh', '250000.00', 'uploads/home-visit/1770216904_Screenshot 2026-02-04 215452.png', 'aktif', '2026-02-04 14:55:04', '2026-02-04 14:55:04'),
(5, 'IMUNE BOOSTER 2', 'IMUNE BOOSTER 2IMUNE BOOSTER 2IMUNE BOOSTER 2IMUNE BOOSTER 2IMUNE BOOSTER 2IMUNE BOOSTER 2IMUNE BOOSTER 2IMUNE BOOSTER 2', '250000.00', 'uploads/home-visit/1770216964_Screenshot 2026-02-04 215452.png', 'aktif', '2026-02-04 14:56:04', '2026-02-04 15:12:25'),
(6, 'SUNTIK VITAMIN Z', 'Vitamin Z adalah vitamin yang dibutuhkan oleh tubuh', '5000000.00', 'uploads/home-visit/1770347847_vitamin.jpg', 'aktif', '2026-02-06 03:17:27', '2026-02-06 03:17:27'),
(7, 'HOME CARE', 'Cepat dan praktis', '1000000.00', 'uploads/home-visit/1770439515_SUNTIK VIT.C alvarisha.png', 'aktif', '2026-02-07 04:45:15', '2026-02-07 04:45:15'),
(8, 'Joki Coding', 'Ayo joki murah disini', '100000.00', 'uploads/home-visit/1776645010_Screenshot 2026-04-19 210037.png', 'aktif', '2026-04-20 00:30:10', '2026-04-20 00:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `kebiasaan_pasien`
--

CREATE TABLE `kebiasaan_pasien` (
  `id` int(11) NOT NULL,
  `pasien_id` int(11) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kebiasaan_pasien`
--

INSERT INTO `kebiasaan_pasien` (`id`, `pasien_id`, `jenis`, `keterangan`) VALUES
(1, 1, 'merokok', 'Tidak - '),
(2, 1, 'alkohol', 'Tidak - '),
(3, 2, 'merokok', 'Tidak - '),
(4, 2, 'alkohol', 'Tidak - '),
(5, 3, 'merokok', 'Tidak - '),
(6, 3, 'alkohol', 'Tidak - '),
(7, 4, 'merokok', 'Tidak - '),
(8, 4, 'alkohol', 'Tidak - '),
(9, 5, 'merokok', 'Tidak - '),
(10, 5, 'alkohol', 'Tidak - '),
(11, 6, 'merokok', 'Tidak - '),
(12, 6, 'alkohol', 'Tidak - '),
(13, 7, 'merokok', 'Tidak - '),
(14, 7, 'alkohol', 'Tidak - '),
(15, 8, 'merokok', 'Tidak - '),
(16, 8, 'alkohol', 'Tidak - '),
(17, 9, 'merokok', 'Tidak - '),
(18, 9, 'alkohol', 'Tidak - '),
(19, 10, 'merokok', 'Filter - 12'),
(20, 10, 'alkohol', 'Ya - justom'),
(21, 11, 'merokok', 'Tidak - 12'),
(22, 11, 'alkohol', 'Tidak - justom'),
(23, 12, 'merokok', 'Tidak - 12'),
(24, 12, 'alkohol', 'Tidak - justom'),
(25, 13, 'merokok', 'Tidak - 12'),
(26, 13, 'alkohol', 'Tidak - justom'),
(27, 14, 'merokok', 'Tidak - 12'),
(28, 14, 'alkohol', 'Tidak - justom'),
(29, 15, 'merokok', 'Kretek - 15'),
(30, 15, 'alkohol', 'Ya - justom'),
(31, 16, 'merokok', 'Filter - 15'),
(32, 16, 'alkohol', 'Tidak - '),
(33, 17, 'merokok', 'Tidak - 15'),
(34, 17, 'alkohol', 'Tidak - '),
(35, 18, 'merokok', 'Tidak - 15'),
(36, 18, 'alkohol', 'Tidak - '),
(37, 19, 'merokok', 'Tidak - 15'),
(38, 19, 'alkohol', 'Tidak - '),
(39, 20, 'merokok', 'Tidak - 15'),
(40, 20, 'alkohol', 'Tidak - '),
(41, 21, 'merokok', 'Tidak - 15'),
(42, 21, 'alkohol', 'Tidak - '),
(43, 22, 'merokok', 'Tidak - 15'),
(44, 22, 'alkohol', 'Tidak - '),
(45, 23, 'merokok', 'Tidak - '),
(46, 23, 'alkohol', 'Tidak - '),
(47, 24, 'merokok', 'Tidak - '),
(48, 24, 'alkohol', 'Tidak - '),
(49, 25, 'merokok', 'Filter - 20'),
(50, 25, 'alkohol', 'Tidak - '),
(51, 26, 'merokok', 'Tidak - 15'),
(52, 26, 'alkohol', 'Tidak - '),
(53, 27, 'merokok', 'Tidak - 15'),
(54, 27, 'alkohol', 'Tidak - '),
(55, 28, 'merokok', 'Tidak - 15'),
(56, 28, 'alkohol', 'Tidak - '),
(57, 29, 'merokok', 'Kretek - 15'),
(58, 29, 'alkohol', 'Tidak - '),
(59, 30, 'merokok', 'Kretek - 15'),
(60, 30, 'alkohol', 'Tidak - '),
(61, 31, 'merokok', 'Filter - 15'),
(62, 31, 'alkohol', 'Ya - Kawa kawa'),
(63, 32, 'merokok', 'Tidak - 15'),
(64, 32, 'alkohol', 'Tidak - Kawa kawa'),
(65, 33, 'merokok', 'Tidak - 15'),
(66, 33, 'alkohol', 'Tidak - Kawa kawa'),
(67, 34, 'merokok', 'Tidak - 15'),
(68, 34, 'alkohol', 'Tidak - Kawa kawa'),
(69, 35, 'merokok', 'Tidak - 15'),
(70, 35, 'alkohol', 'Tidak - Kawa kawa'),
(71, 36, 'merokok', 'Tidak - '),
(72, 36, 'alkohol', 'Tidak - '),
(73, 37, 'merokok', 'Tidak - '),
(74, 37, 'alkohol', 'Tidak - '),
(75, 38, 'merokok', 'Tidak - '),
(76, 38, 'alkohol', 'Tidak - '),
(77, 39, 'merokok', 'Tidak - '),
(78, 39, 'alkohol', 'Tidak - '),
(83, 42, 'merokok', 'Tidak - '),
(84, 42, 'alkohol', 'Tidak - '),
(85, 43, 'merokok', 'Tidak - '),
(86, 43, 'alkohol', 'Tidak - '),
(87, 44, 'merokok', 'Tidak - '),
(88, 44, 'alkohol', 'Tidak - '),
(89, 45, 'merokok', 'Tidak - '),
(90, 45, 'alkohol', 'Tidak - '),
(91, 46, 'merokok', 'Tidak - '),
(92, 46, 'alkohol', 'Tidak - '),
(93, 47, 'merokok', 'Tidak - '),
(94, 47, 'alkohol', 'Tidak - '),
(95, 48, 'merokok', 'Tidak - '),
(96, 48, 'alkohol', 'Tidak - '),
(97, 49, 'merokok', 'Filter - 20'),
(98, 49, 'alkohol', 'Tidak - '),
(99, 50, 'merokok', 'Tidak - 20'),
(100, 50, 'alkohol', 'Tidak - '),
(101, 51, 'merokok', 'Tidak - '),
(102, 51, 'alkohol', 'Tidak - '),
(103, 52, 'merokok', 'Tidak - '),
(104, 52, 'alkohol', 'Tidak - '),
(105, 53, 'merokok', 'Tidak - '),
(106, 53, 'alkohol', 'Tidak - '),
(107, 54, 'merokok', 'Tidak - '),
(108, 54, 'alkohol', 'Tidak - '),
(109, 55, 'merokok', 'Tidak - '),
(110, 55, 'alkohol', 'Tidak - ');

-- --------------------------------------------------------

--
-- Table structure for table `keluarga_pasien`
--

CREATE TABLE `keluarga_pasien` (
  `id` int(11) NOT NULL,
  `pasien_id` int(11) DEFAULT NULL,
  `hubungan` enum('Ayah','Ibu') DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `kondisi` varchar(50) DEFAULT NULL,
  `meninggal_tahun` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keluarga_pasien`
--

INSERT INTO `keluarga_pasien` (`id`, `pasien_id`, `hubungan`, `nama`, `usia`, `kondisi`, `meninggal_tahun`) VALUES
(1, 1, 'Ayah', 'satosi', 55, 'Sehat', 0),
(2, 1, 'Ibu', 'siti', 50, 'Sehat', 0),
(3, 2, 'Ayah', 'satosi', 55, 'Sehat', 0),
(4, 2, 'Ibu', 'siti', 50, 'Sehat', 0),
(5, 3, 'Ayah', 'satosi', 55, 'Sehat', 0),
(6, 3, 'Ibu', 'siti', 50, 'Sehat', 0),
(7, 4, 'Ayah', 'satosi', 55, 'Sehat', 0),
(8, 4, 'Ibu', 'siti', 50, 'Sehat', 0),
(9, 5, 'Ayah', 'satosi', 55, 'Sehat', 0),
(10, 5, 'Ibu', 'siti', 50, 'Sehat', 0),
(11, 6, 'Ayah', 'satosi', 55, 'Sehat', 0),
(12, 6, 'Ibu', 'siti', 50, 'Sehat', 0),
(13, 7, 'Ayah', 'satosi', 55, 'Sehat', 0),
(14, 7, 'Ibu', 'siti', 50, 'Sehat', 0),
(15, 8, 'Ayah', 'satosi', 55, 'Sehat', 0),
(16, 8, 'Ibu', 'siti', 50, 'Sehat', 0),
(17, 9, 'Ayah', 'pa karunia', 55, 'Sehat', 0),
(18, 9, 'Ibu', 'bu julaeha', 50, 'Sehat', 0),
(19, 10, 'Ayah', 'pa karunia', 55, '', 0),
(20, 10, 'Ibu', 'bu julaeha', 50, '', 0),
(21, 11, 'Ayah', 'pa karunia', 55, '', 0),
(22, 11, 'Ibu', 'bu julaeha', 50, '', 0),
(23, 12, 'Ayah', 'pa karunia', 55, '', 0),
(24, 12, 'Ibu', 'bu julaeha', 50, '', 0),
(25, 13, 'Ayah', 'pa karunia', 55, '', 0),
(26, 13, 'Ibu', 'bu julaeha', 50, '', 0),
(27, 14, 'Ayah', 'pa karunia', 55, '', 0),
(28, 14, 'Ibu', 'bu julaeha', 50, '', 0),
(29, 15, 'Ayah', 'Asep', 55, 'Sehat', 0),
(30, 15, 'Ibu', 'Siti', 50, 'Sehat', 0),
(31, 16, 'Ayah', 'pa karunia', 55, 'Sehat', 0),
(32, 16, 'Ibu', 'siti', 50, 'Sehat', 0),
(33, 17, 'Ayah', 'pa karunia', 55, '', 0),
(34, 17, 'Ibu', 'siti', 50, '', 0),
(35, 18, 'Ayah', 'pa karunia', 55, '', 0),
(36, 18, 'Ibu', 'siti', 50, '', 0),
(37, 19, 'Ayah', 'pa karunia', 55, '', 0),
(38, 19, 'Ibu', 'siti', 50, '', 0),
(39, 20, 'Ayah', 'pa karunia', 50, '', 0),
(40, 20, 'Ibu', 'siti', 50, '', 0),
(41, 21, 'Ayah', 'pa karunia', 50, '', 0),
(42, 21, 'Ibu', 'siti', 50, '', 0),
(43, 22, 'Ayah', 'pa karunia', 50, '', 0),
(44, 22, 'Ibu', 'siti', 50, '', 0),
(45, 23, 'Ayah', 'pa karunia', 50, 'Sehat', 0),
(46, 23, 'Ibu', 'bu julaeha', 45, 'Sehat', 0),
(47, 24, 'Ayah', 'pa karunia', 50, 'Sehat', 0),
(48, 24, 'Ibu', 'bu julaeha', 45, 'Sehat', 0),
(49, 25, 'Ayah', 'pa karunia', 50, 'Sehat', 0),
(50, 25, 'Ibu', 'bu julaeha', 45, 'Meninggal', 2026),
(51, 26, 'Ayah', 'pa karunia', 50, 'Sehat', 0),
(52, 26, 'Ibu', 'bu julaeha', 45, 'Sakit', 0),
(53, 27, 'Ayah', 'pa karunia', 50, 'Sehat', 0),
(54, 27, 'Ibu', 'bu julaeha', 45, 'Sehat', 0),
(55, 28, 'Ayah', 'pa karunia', 50, 'Sehat', 0),
(56, 28, 'Ibu', 'bu julaeha', 45, 'Sehat', 0),
(57, 29, 'Ayah', 'pa karunia', 50, 'Sehat', 0),
(58, 29, 'Ibu', 'bu julaeha', 45, 'Sehat', 0),
(59, 30, 'Ayah', 'pa karunia', 50, 'Sehat', 0),
(60, 30, 'Ibu', 'bu julaeha', 45, 'Sehat', 0),
(61, 31, 'Ayah', 'pa Asep', 50, 'Sehat', 0),
(62, 31, 'Ibu', 'bu julaeha', 45, 'Sehat', 0),
(63, 32, 'Ayah', 'pa Asep', 50, '', 0),
(64, 32, 'Ibu', 'bu julaeha', 45, '', 0),
(65, 33, 'Ayah', 'pa Asep', 50, '', 0),
(66, 33, 'Ibu', 'bu julaeha', 45, '', 0),
(67, 34, 'Ayah', 'pa Asep', 50, '', 0),
(68, 34, 'Ibu', 'bu julaeha', 45, '', 0),
(69, 35, 'Ayah', 'pa Asep', 50, '', 0),
(70, 35, 'Ibu', 'bu julaeha', 45, '', 0),
(75, 42, 'Ayah', 'Pa sapri', 55, '', 0),
(76, 42, 'Ibu', 'Bu sulis', 53, '', 0),
(77, 43, 'Ayah', 'Pa sapri', 55, '', 0),
(78, 43, 'Ibu', 'Bu sulis', 53, '', 0),
(79, 44, 'Ayah', 'Pa sapri', 55, '', 0),
(80, 44, 'Ibu', 'Bu sulis', 53, '', 0),
(81, 45, 'Ayah', 'Pa sapri', 55, 'Sehat', 0),
(82, 45, 'Ibu', 'Bu sulis', 53, 'Sehat', 0),
(83, 46, 'Ayah', 'Pa sapri', 55, '', 0),
(84, 46, 'Ibu', 'Bu sulis', 53, '', 0),
(85, 47, 'Ayah', 'Pak Karunia', 55, '', 0),
(86, 47, 'Ibu', 'Bu julaeha', 45, '', 0),
(87, 48, 'Ayah', 'Pak Asep', 55, 'Sehat', NULL),
(88, 48, 'Ibu', 'Bu Ai', 40, 'Sakit', NULL),
(89, 50, 'Ayah', 'Asep', 25, 'Sehat', NULL),
(90, 50, 'Ibu', 'Isma', 25, 'Meninggal', 2026),
(91, 52, 'Ayah', 'pak Jokwi', 50, 'Sehat', NULL),
(92, 52, 'Ibu', 'bu julaeha', 45, 'Sehat', NULL),
(93, 53, 'Ayah', 'pa karunia', 50, 'Sehat', NULL),
(94, 53, 'Ibu', 'bu julaeha', 45, 'Sehat', NULL),
(95, 54, 'Ayah', 'pa karunia', 50, 'Sehat', NULL),
(96, 54, 'Ibu', 'bu julaeha', 45, 'Sehat', NULL),
(97, 55, 'Ayah', 'pa karunia', 50, '', NULL),
(98, 55, 'Ibu', 'bu julaeha', 45, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `kode_mcu` varchar(20) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `pendidikan` varchar(50) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `golongan_darah` varchar(3) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `perusahaan` varchar(100) DEFAULT NULL,
  `posisi_pekerjaan` varchar(100) DEFAULT NULL,
  `tanggal_mcu` date DEFAULT NULL,
  `status_pendaftaran` enum('menunggu','proses','selesai') DEFAULT 'menunggu',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `kode_mcu`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `usia`, `alamat`, `pendidikan`, `agama`, `golongan_darah`, `no_telp`, `email`, `perusahaan`, `posisi_pekerjaan`, `tanggal_mcu`, `status_pendaftaran`, `created_at`, `deleted_at`) VALUES
(1, 'MCU-20260119-4822', 'Salman Fauzi', 'L', 'cianjur', '2004-11-24', 21, 'Kp Benjot, RT/RW 01/04, Kec.Cugenang, Kab.Cianjur', 'SMA', 'Islam', 'A', '081234567891', 'fauzisalman2411@gmail.com', 'PT JAYA', 'Manajer', '2026-01-20', 'selesai', '2026-01-19 05:52:54', NULL),
(2, 'MCU-20260119-3605', 'Salman Fauzi', 'L', 'cianjur', '2004-11-24', 21, 'Kp Benjot, RT/RW 01/04, Kec.Cugenang, Kab.Cianjur', 'SMA', 'Islam', 'A', '081234567891', 'fauzisalman2411@gmail.com', 'PT JAYA', 'Manajer', '2026-01-20', 'selesai', '2026-01-19 05:58:54', NULL),
(3, 'MCU-20260119-9576', 'Salman Fauzi', 'L', 'cianjur', '2004-11-24', 21, 'Kp Benjot, RT/RW 01/04, Kec.Cugenang, Kab.Cianjur', 'SMA', 'Islam', 'A', '081234567891', 'fauzisalman2411@gmail.com', 'PT JAYA', 'Manajer', '2026-01-20', 'selesai', '2026-01-19 05:59:00', NULL),
(4, 'MCU-20260119-5140', 'Salman Fauzi', 'L', 'cianjur', '2004-11-24', 21, 'Kp Benjot, RT/RW 01/04, Kec.Cugenang, Kab.Cianjur', 'SMA', 'Islam', 'A', '081234567891', 'fauzisalman2411@gmail.com', 'PT JAYA', 'Manajer', '2026-01-20', 'selesai', '2026-01-19 05:59:05', NULL),
(5, 'MCU-20260119-3045', 'Salman Fauzi', 'L', 'cianjur', '2004-11-24', 21, 'Kp Benjot, RT/RW 01/04, Kec.Cugenang, Kab.Cianjur', 'SMA', 'Islam', 'A', '081234567891', 'fauzisalman2411@gmail.com', 'PT JAYA', 'Manajer', '2026-01-20', 'selesai', '2026-01-19 06:00:36', NULL),
(6, 'MCU-20260119-1598', 'Salman Fauzi', 'L', 'cianjur', '2004-11-24', 21, 'Kp Benjot, RT/RW 01/04, Kec.Cugenang, Kab.Cianjur', 'SMA', 'Islam', 'A', '081234567891', 'fauzisalman2411@gmail.com', 'PT JAYA', 'Manajer', '2026-01-20', 'selesai', '2026-01-19 06:00:39', NULL),
(7, 'MCU-20260119-9218', 'Salman Fauzi', 'L', 'cianjur', '2004-11-24', 21, 'Kp Benjot, RT/RW 01/04, Kec.Cugenang, Kab.Cianjur', 'SMA', 'Islam', 'A', '081234567891', 'fauzisalman2411@gmail.com', 'PT JAYA', 'Manajer', '2026-01-20', 'selesai', '2026-01-19 06:00:42', NULL),
(8, 'MCU-20260119-2234', 'Salman Fauzi', 'L', 'cianjur', '2004-11-24', 21, 'Kp Benjot, RT/RW 01/04, Kec.Cugenang, Kab.Cianjur', 'SMA', 'Islam', 'A', '081234567891', 'fauzisalman2411@gmail.com', 'PT JAYA', 'Manajer', '2026-01-20', 'selesai', '2026-01-19 06:03:41', NULL),
(9, 'MCU-20260119-2680', 'Ikhsan', 'L', 'cianjur', '2004-11-28', 21, 'cipanas, ciwalen', 'SMA', 'Islam', 'AB', '081234567891', 'fauzisalman2411@gmail.com', 'PT JAYA', 'karyawan', '2026-01-21', 'selesai', '2026-01-19 06:39:30', NULL),
(10, 'MCU-20260119-3777', 'Ikhsan', 'L', 'cianjur', '2004-11-28', 21, 'Kp Benjot, RT/RW 01/04, Kec.Cugenang, Kab.Cianjur', 'SMA', 'Islam', 'AB', '081234567890', 'fauzisalman2411@gmail.com', 'PT JAYA', 'karyawan', '2026-01-21', 'selesai', '2026-01-19 06:42:09', NULL),
(11, 'MCU-20260122-7110', 'Ikhsan', 'L', 'cianjur', '2004-11-28', 21, 'Cianjur', 'SMA', 'Islam', '', '081234567890', 'fauzisalman2411@gmail.com', 'PT JAYA', 'karyawan', '2026-01-21', 'selesai', '2026-01-22 03:13:13', NULL),
(12, 'MCU-20260122-6195', 'Fahmi', 'L', 'cianjur', '2004-11-28', 21, 'Jalan Ngawi 01', 'SMA', 'Islam', 'A', '081234567890', 'fauzisalman2411@gmail.com', 'PT JAYA', 'karyawan', '2026-01-22', 'selesai', '2026-01-22 03:22:33', NULL),
(13, 'MCU-20260122-9708', 'Santy', 'P', 'cianjur, cibeber', '2004-09-28', 21, 'Cibeber o1/04', 'SMA', 'Islam', 'AB', '081234567890', 'Santy2411@gmail.com', 'PT Ambar', 'Manajer', '2026-01-23', 'selesai', '2026-01-22 04:34:38', NULL),
(14, 'MCU-20260122-7437', 'Santo', 'L', 'cianjur, cibeber', '2004-09-28', 21, 'Cimareme', 'SMA', 'Kristen', 'A', '081234567890', 'Santy2411@gmail.com', 'PT Ambar', 'Manajer', '2026-01-23', 'selesai', '2026-01-22 04:36:32', NULL),
(15, 'MCU-20260126-2008', 'Samsul Arifin', 'L', 'Cianjur', '2000-02-18', 25, 'Cianjur Jalan Merdeka', 'SMA', 'Islam', '', '0834554321', 'Samsul21@gmail.com', 'PT KUSUMA SENTOSA', 'Karyawan', '2026-01-27', 'selesai', '2026-01-26 02:02:23', NULL),
(16, 'MCU-20260126-4877', 'Artha', 'L', 'cianjur, cibeber', '2004-02-04', 21, 'Cianjur', 'SMA', 'Islam', 'A', '085795600076', 'fauzisalman2411@gmail.com', 'PT JAYA', 'Manajer', '2026-01-27', 'selesai', '2026-01-26 13:12:23', NULL),
(17, 'MCU-20260127-7652', 'Artha', 'L', 'cianjur, cibeber', '2004-02-04', 21, 'Cianjur', '', '', '', '085795600076', 'fauzisalman2411@gmail.com', '', '', '2026-01-28', 'selesai', '2026-01-27 03:00:26', NULL),
(18, 'MCU-20260127-4430', 'Novaaa', 'P', 'cianjur, cibeber', '2004-02-04', 21, 'cianjurr', 'SMA', 'Islam', 'A', '085795600076', 'fauzisalman2411@gmail.com', '', '', '2026-01-28', 'selesai', '2026-01-27 11:03:32', NULL),
(19, 'MCU-20260127-6583', 'Wildann', 'L', 'cianjur, cibeber', '2004-02-04', 21, 'cianjurr', 'SMA', 'Islam', 'AB', '085795600076', 'fauzisalman2411@gmail.com', 'PT JAYA', 'karyawan', '2026-01-28', 'selesai', '2026-01-27 11:31:39', NULL),
(20, 'MCU-20260127-6653', 'Gusti', 'L', 'cianjur, cibeber', '2004-02-18', 21, 'cianjurr', 'SMA', 'Islam', 'B', '085795600076', 'fauzisalman2411@gmail.com', 'PT JAYA', 'karyawan', '2026-01-28', 'selesai', '2026-01-27 13:46:25', NULL),
(21, 'MCU-20260127-6945', 'Hadgun', 'L', 'cianjur, cibeber', '2002-03-08', 23, 'cianjurr', 'SMA', 'Islam', 'O', '085795600076', 'fauzisalman2411@gmail.com', 'PT JAYA', 'karyawan', '2026-01-28', 'selesai', '2026-01-27 14:16:22', NULL),
(22, 'MCU-20260127-3087', 'Wahyu', 'L', 'cianjur, cibeber', '2002-03-08', 23, 'cianjurr', 'SMA', 'Islam', 'O', '085795600076', 'fauzisalman2411@gmail.com', 'PT JAYA', 'karyawan', '2026-01-28', 'selesai', '2026-01-27 16:10:22', NULL),
(23, 'MCU-20260129-7963', 'Yusuf', 'L', 'cianjur, cibeber', '2004-07-15', 21, 'Jl. Kesehatan No. 123, Jakarta Pusat 12125', 'SMA', 'Islam', 'AB', '08586234112', 'info@klinikAlvarisha.com', 'PT Ambar', 'karyawan', '2026-01-30', 'selesai', '2026-01-29 01:39:43', NULL),
(24, 'MCU-20260129-6641', 'Ahmad', 'L', 'cianjur, cibeber', '2006-06-07', 19, 'Jl. Kesehatan No. 123, Jakarta Pusat 12125', 'SMA', 'Islam', 'AB', '08586234112', 'info@klinikAlvarisha.com', 'PT Ambar', 'karyawan', '2026-01-30', 'selesai', '2026-01-29 02:21:25', NULL),
(25, 'MCU-20260130-8290', 'Supardi Mubarok', 'L', 'Nagrak, Cianjur', '1999-04-15', 26, 'Kp Benjot, Desa Benjot, Kec.Cugenang, Kab.Cianjur', 'SMA', 'Islam', 'AB', '08513124567', 'supardi21@gmail.com', 'PT MAKMUR SENTOSA', 'Gudang', '2026-02-04', 'selesai', '2026-01-30 00:09:32', NULL),
(26, 'MCU-20260130-8483', 'Ahmad Mubarok', 'L', 'Nagrak, Cianjur', '1999-04-15', 26, 'Kp Benjot, Desa Benjot, Kec.Cugenang, Kab.Cianjur', 'SMA', 'Islam', 'A', '08513124567', 'supardi21@gmail.com', 'PT MAKMUR SENTOSA', 'Gudang', '2026-01-31', 'selesai', '2026-01-30 00:12:45', NULL),
(27, 'MCU-20260130-3611', 'Ahmad Mubarok', 'L', 'Nagrak, Cianjur', '1999-04-15', 26, 'Kp Benjot, Desa Benjot, Kec.Cugenang, Kab.Cianjur', '', 'Islam', 'A', '08513124567', 'supardi21@gmail.com', 'PT MAKMUR SENTOSA', 'Gudang', '2026-02-02', 'selesai', '2026-01-30 00:28:48', NULL),
(28, 'MCU-20260130-3829', 'Asep Mubarok', 'L', 'Nagrak, Cianjur', '1998-02-04', 27, 'Kp Benjot, Desa Benjot, Kec.Cugenang, Kab.Cianjur', 'SMA', 'Islam', 'AB', '08513124567', 'supardi21@gmail.com', 'PT MAKMUR SENTOSA', 'Gudang', '2026-01-31', 'selesai', '2026-01-30 00:42:04', NULL),
(29, 'MCU-20260130-1146', 'Asep Mubarok', 'L', 'Nagrak, Cianjur', '1998-02-04', 27, 'cianjur', 'SMA', '', '', '08513124567', 'supardi21@gmail.com', 'PT MAKMUR SENTOSA', 'Gudang', '2026-01-31', 'selesai', '2026-01-30 03:32:43', NULL),
(30, 'MCU-20260130-9355', 'Asep Mubarok', 'L', 'Nagrak, Cianjur', '1998-02-04', 27, 'cianjur', 'SMA', '', '', '08513124567', 'supardi21@gmail.com', 'PT MAKMUR SENTOSA', 'Gudang', '2026-02-18', 'selesai', '2026-01-30 03:34:25', NULL),
(31, 'MCU-20260131-3247', 'I GUSTI ', 'L', 'Cianjur', '2004-08-07', 21, 'Haurwangi, Cianjur', 'SMA', 'Islam', 'A', '08513124567', 'supardi21@gmail.com', 'PT MAKMUR SENTOSA', 'Manajer', '2026-01-31', 'selesai', '2026-01-31 05:50:11', NULL),
(32, 'MCU-20260202-7230', 'Ikbal', 'L', 'Cianjur', '2004-08-07', 21, 'Haurwangi, Cianjur', 'SMP', 'Islam', 'A', '08513124567', 'supardi21@gmail.com', 'PT MAKMUR SENTOSA', 'Manajer', '2026-02-07', 'proses', '2026-02-02 07:26:40', NULL),
(33, 'MCU-20260202-7182', 'Asep Muhammad', 'L', 'Cianjur', '2004-08-07', 21, 'Haurwangi, Cianjur', 'S2', 'Islam', 'A', '08513124567', 'supardi21@gmail.com', 'PT MAKMUR SENTOSA', 'Manajer', '2026-02-07', 'selesai', '2026-02-02 08:01:48', NULL),
(34, 'MCU-20260202-5137', 'Tohir Erik', 'L', 'Cianjur', '2004-08-07', 21, 'Haurwangi, Cianjur', 'S3', 'Islam', 'A', '08513124567', 'supardi21@gmail.com', 'PT MAKMUR SENTOSA', 'Manajer', '2026-02-07', 'selesai', '2026-02-02 08:12:17', NULL),
(35, 'MCU-20260202-4975', 'Siti Maemunah', 'L', 'Cianjur', '2004-08-07', 21, 'Haurwangi, Cianjur', 'SD', 'Islam', 'A', '08513124567', 'supardi21@gmail.com', 'PT MAKMUR SENTOSA', 'Manajer', '2026-02-07', 'selesai', '2026-02-02 08:21:14', NULL),
(36, 'MCU-20260206-2671', 'Fitri Sulistiawaty', 'P', 'Nagrak, Cianjur', '2002-03-01', 23, 'Jl. Kesehatan No. 123, Jakarta Pusat 12125', 'SMA', 'Islam', 'A', '085862341122', 'Fitri123@gmail.com', '', '', '2026-02-10', 'selesai', '2026-02-06 01:58:16', NULL),
(37, 'MCU-20260206-6180', 'Anwar', 'L', 'Nagrak, Cianjur', '2002-03-01', 23, 'Jl. Kesehatan No. 123, Jakarta Pusat 12125', 'SMP', 'Islam', '', '085862341122', 'Anwar23@gmail.com', 'PT MAKMUR JAYA', 'Gudang', '2026-02-10', 'selesai', '2026-02-06 02:04:10', NULL),
(38, 'MCU-20260206-7061', 'Sulis', 'P', 'Nagrak, Cianjur', '2002-03-01', 23, 'Jl. Kesehatan No. 123, Jakarta Pusat 12125', '', 'Islam', '', '085862341122', 'Sulis@gmail.com', 'PT MAKMUR JAYA', 'Gudang', '2026-02-10', 'proses', '2026-02-06 02:28:18', NULL),
(39, 'MCU-20260206-2990', 'Sulis', 'P', 'Nagrak, Cianjur', '2002-03-01', 23, 'Jl. Kesehatan No. 123, Jakarta Pusat 12125', 'SD', '', '', '085862341122', 'Sulis@gmail.com', 'PT MAKMUR JAYA', 'Gudang', '2026-02-10', 'selesai', '2026-02-06 02:29:16', NULL),
(42, 'MCU-20260207-5930', 'Pa Ucok', 'L', 'Nagrak, Cianjur', '1991-03-12', 34, 'jl awilarangan', 'SD', 'Islam', '', '085862341122', 'Jakariya123@gmail.com', 'PT MAKMUR JAYA', 'Manajer', '2026-02-09', 'proses', '2026-02-07 02:11:58', NULL),
(43, 'MCU-20260207-3115', 'Pa Ucok', 'L', 'Nagrak, Cianjur', '1991-03-12', 34, 'jl awilarangan', '', 'Islam', 'A', '085862341122', 'Jakariya123@gmail.com', 'PT MAKMUR JAYA', 'Manajer', '2026-02-09', 'selesai', '2026-02-07 05:07:23', NULL),
(44, 'MCU-20260207-5591', 'Pa Azis', 'L', 'Nagrak, Cianjur', '1991-03-12', 34, 'jl singasari', 'SMP', 'Islam', '', '085862341122', 'Jakariya123@gmail.com', 'PT MAKMUR JAYA', 'Manajer', '2026-02-09', 'proses', '2026-02-07 11:43:08', NULL),
(45, 'MCU-20260224-2976', 'Pa Sapri', 'L', 'Nagrak, Cianjur', '1991-03-12', 34, 'jl sentosa 05', 'SMP', 'Islam', 'A', '085862341122', 'Jakariya123@gmail.com', 'PT MAKMUR JAYA', 'Manajer', '2026-02-09', 'proses', '2026-02-24 05:55:06', NULL),
(46, 'MCU-20260225-7961', 'Pa Sapri', 'L', 'Nagrak, Cianjur', '1991-03-12', 34, 'jl sentosa 05', 'SMP', 'Islam', 'B', '085862341122', 'Jakariya123@gmail.com', 'PT MAKMUR JAYA', 'Manajer', '2026-02-09', 'proses', '2026-02-25 06:07:09', NULL),
(47, 'MCU-20260227-3013', 'Aditya H', 'L', 'Nagrak, Cianjur', '1991-03-12', 34, 'jl sentosa 05', 'SMA', 'Islam', 'A', '085862341122', 'Jakariya123@gmail.com', 'PT MAKMUR JAYA', 'Manajer', '2026-02-09', 'proses', '2026-02-27 02:34:12', NULL),
(48, 'MCU-20260227-5099', 'Artha Mubarok', 'L', 'Nagrak, Cianjur', '1991-03-12', 34, 'jl sentosa 05', 'SD', 'Islam', '', '085862341122', 'Jakariya123@gmail.com', 'PT MAKMUR JAYA', 'Manajer', '2026-02-09', 'proses', '2026-02-27 02:37:14', NULL),
(49, 'MCU-20260227-5947', 'Dimas', 'L', 'Nagrak, Cianjur', '1991-03-12', 34, 'jl sentosa 05', 'SMP', 'Islam', 'A', '085862341122', 'Jakariya123@gmail.com', 'PT MAKMUR JAYA', 'Manajer', '2026-02-09', 'proses', '2026-02-27 02:38:38', NULL),
(50, 'MCU-20260227-9992', 'Dimas', 'L', 'Nagrak, Cianjur', '1991-03-12', 34, 'jl cipanas', 'SD', 'Islam', 'A', '085862341122', 'Jakariya123@gmail.com', 'PT MAKMUR JAYA', 'Manajer', '2026-02-09', 'proses', '2026-02-27 03:04:33', NULL),
(51, 'MCU-20260227-1492', 'Salman Fauzi (IF D 23)', 'L', 'Nagrak, Cianjur', '1999-06-11', 26, 'ka', 'SD', 'Islam', 'A', '085712345678', 'lala1234567899999999@gmail.com', '', '', '2026-02-28', 'proses', '2026-02-27 06:39:26', NULL),
(52, 'MCU-20260420-4918', 'Ade Sudrajat', 'L', 'Bandung, West Java', '2003-04-19', 23, 'JL kemanggi no 12345', 'SD', 'Islam', 'A', '08586449123', '', 'PT MAKMUR JAYA', 'karyawan', '2026-04-21', 'proses', '2026-04-20 00:04:28', NULL),
(53, 'MCU-20260625-4980', 'Pak Bakti', 'L', 'Cianjur, Cibeber, Jawa Barat', '1992-03-25', 34, 'Jl, Kadupandanda', 'SMP', 'Islam', 'A', '085795600076', 'fauzisalman2411@gmail.com', 'PT MAKMUR JAYA', 'Manajer', '2026-06-26', 'proses', '2026-06-25 03:52:05', NULL),
(54, 'MCU-20260629-5588', 'Pa Bayin Najmudin', 'L', 'Cianjur, Jawa Barat', '1989-02-28', 37, 'jl cikaret, gang h amin, Cianjur, Jawa Barat', 'SMA', 'Islam', 'B', '08977777777777777777', 'Bayin123@gmail.com', 'PT MAKMUR JAYA', 'Manajer', '2026-06-30', 'menunggu', '2026-06-29 01:34:49', NULL),
(55, 'MCU-20260809-3140', 'Pa Bayin Najmudin', 'L', 'Cianjur, Jawa Barat', '1989-02-28', 37, 'jl awilarangan', 'SMA', 'Islam', 'AB', '08977777777777777777', 'Bayin123@gmail.com', 'PT MAKMUR JAYA', 'Manajer', '2026-06-30', 'menunggu', '2026-08-09 02:47:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `id` int(11) NOT NULL,
  `pasien_id` int(11) DEFAULT NULL,
  `pemeriksa_role` enum('pendaftaran','dokter_mata','dokter_umum') DEFAULT NULL,
  `tekanan_darah` varchar(20) DEFAULT NULL,
  `nadi` int(11) DEFAULT NULL,
  `suhu` decimal(4,2) DEFAULT NULL,
  `respirasi` int(11) DEFAULT NULL,
  `tinggi_badan` int(11) DEFAULT NULL,
  `berat_badan` int(11) DEFAULT NULL,
  `visus_kanan_jauh` varchar(10) DEFAULT NULL,
  `visus_kanan_dekat` varchar(10) DEFAULT NULL,
  `visus_kiri_jauh` varchar(10) DEFAULT NULL,
  `visus_kiri_dekat` varchar(10) DEFAULT NULL,
  `anemia` varchar(10) DEFAULT NULL,
  `ikterik_keterangan` text DEFAULT NULL,
  `buta_warna` varchar(20) DEFAULT NULL,
  `buta_warna_keterangan` text DEFAULT NULL,
  `lapang_pandang` varchar(20) DEFAULT NULL,
  `lapang_pandang_keterangan` text DEFAULT NULL,
  `telinga_status` varchar(20) DEFAULT NULL,
  `telinga_keterangan` text DEFAULT NULL,
  `hidung_status` varchar(20) DEFAULT NULL,
  `hidung_keterangan` text DEFAULT NULL,
  `tenggorokan_status` varchar(20) DEFAULT NULL,
  `tenggorokan_keterangan` text DEFAULT NULL,
  `gigi_status` varchar(20) DEFAULT NULL,
  `gigi_keterangan` text DEFAULT NULL,
  `leher_kgb` text DEFAULT NULL,
  `paru_auskultasi` text DEFAULT NULL,
  `auskultasi_keterangan` text DEFAULT NULL,
  `paru_palpasi` text DEFAULT NULL,
  `paru_perkusi` text DEFAULT NULL,
  `jantung_auskultasi` text DEFAULT NULL,
  `jantung_keterangan` text DEFAULT NULL,
  `jantung_perkusi` text DEFAULT NULL,
  `operasi` tinyint(1) DEFAULT 0,
  `keterangan_operasi` text DEFAULT NULL,
  `obesitas` tinyint(1) DEFAULT 0,
  `organomegali` tinyint(1) DEFAULT 0,
  `hernia` tinyint(1) DEFAULT 0,
  `nyeri_epigastrium` tinyint(1) DEFAULT 0,
  `nyeri_abdomen` tinyint(1) DEFAULT 0,
  `bising_usus` tinyint(1) DEFAULT 0,
  `hepar` tinyint(1) DEFAULT 0,
  `keterangan_perut` text DEFAULT NULL,
  `striae` tinyint(1) DEFAULT 0,
  `sikatriks` tinyint(1) DEFAULT 0,
  `psoas_sign` text DEFAULT NULL,
  `hepatomegali` text DEFAULT NULL,
  `biceps` varchar(10) DEFAULT NULL,
  `triceps` varchar(10) DEFAULT NULL,
  `patella` varchar(10) DEFAULT NULL,
  `achilles` varchar(10) DEFAULT NULL,
  `plantar_response` varchar(10) DEFAULT NULL,
  `keterangan_tangan` text DEFAULT NULL,
  `keterangan_kaki` text DEFAULT NULL,
  `hasil_lab` text DEFAULT NULL,
  `keterangan_penyakit` text DEFAULT NULL,
  `kesimpulan` text DEFAULT NULL,
  `saran` text DEFAULT NULL,
  `status_mcu` enum('FIT','UNFIT','FIT WITH NOTE') DEFAULT 'FIT',
  `dokter_pemeriksa` varchar(100) DEFAULT NULL,
  `pemeriksa_id` int(11) DEFAULT NULL,
  `tanggal_periksa` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`id`, `pasien_id`, `pemeriksa_role`, `tekanan_darah`, `nadi`, `suhu`, `respirasi`, `tinggi_badan`, `berat_badan`, `visus_kanan_jauh`, `visus_kanan_dekat`, `visus_kiri_jauh`, `visus_kiri_dekat`, `anemia`, `ikterik_keterangan`, `buta_warna`, `buta_warna_keterangan`, `lapang_pandang`, `lapang_pandang_keterangan`, `telinga_status`, `telinga_keterangan`, `hidung_status`, `hidung_keterangan`, `tenggorokan_status`, `tenggorokan_keterangan`, `gigi_status`, `gigi_keterangan`, `leher_kgb`, `paru_auskultasi`, `auskultasi_keterangan`, `paru_palpasi`, `paru_perkusi`, `jantung_auskultasi`, `jantung_keterangan`, `jantung_perkusi`, `operasi`, `keterangan_operasi`, `obesitas`, `organomegali`, `hernia`, `nyeri_epigastrium`, `nyeri_abdomen`, `bising_usus`, `hepar`, `keterangan_perut`, `striae`, `sikatriks`, `psoas_sign`, `hepatomegali`, `biceps`, `triceps`, `patella`, `achilles`, `plantar_response`, `keterangan_tangan`, `keterangan_kaki`, `hasil_lab`, `keterangan_penyakit`, `kesimpulan`, `saran`, `status_mcu`, `dokter_pemeriksa`, `pemeriksa_id`, `tanggal_periksa`) VALUES
(1, 8, 'pendaftaran', '120/80', 100, '35.00', 10, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 2, '2026-01-19 13:07:35'),
(2, 8, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', 'Normal', '6/6', 'Normal', 'Ringan', NULL, 'Normal', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 3, '2026-01-19 13:08:57'),
(3, 8, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', 'sss', 'Normal', 'sss', 'Normal', 'sss', '0', 'baik', 'besar', 'Wheezing', '0', 'aaa', 'Hipersonor', '0', NULL, NULL, 1, 'baik', 0, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '150 cm', 'Hiperaktif', 'Hiperaktif', 'Hiperaktif', 'Hiperaktif', 'Babinski +', NULL, NULL, NULL, NULL, 'baik', 'sering melakukan mcu', 'FIT', 'Dr. Siti Rahmah, Sp.PD', 4, '2026-01-19 13:11:21'),
(4, 10, 'pendaftaran', '120/80', 100, '35.00', 10, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 2, '2026-01-19 13:57:18'),
(5, 10, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', 'Normal', '6/9', 'Normal', 'Ringan', NULL, 'Merah/Hijau', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 3, '2026-01-19 13:59:16'),
(6, 9, 'pendaftaran', '120/80', 100, '35.00', 10, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 2, '2026-01-22 09:16:16'),
(7, 12, 'pendaftaran', '117/80', 100, '35.00', 10, 170, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-22 11:25:26'),
(8, 14, 'pendaftaran', '90/60', 88, '36.00', 22, 146, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-22 13:35:51'),
(9, 14, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-22 14:05:51'),
(10, 12, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '6/6', '6/6', '6/6', 'Tidak', NULL, 'Normal', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-22 14:20:23'),
(11, 9, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '6/6', '6/6', '6/6', 'Ikterik (-', NULL, 'Merah/Hijau', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-22 14:23:38'),
(12, 13, 'pendaftaran', '90/60', 88, '36.00', 22, 146, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-22 14:24:12'),
(13, 13, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '6/6', '6/6', '6/6', 'Ikterik(-)', NULL, 'Normal', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-22 14:24:25'),
(14, 11, 'pendaftaran', '90/60', 88, '30.00', 22, 170, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-22 14:28:00'),
(15, 11, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/9', '6/6', '6/6', '6/12', 'Ikterik(+)', NULL, 'Merah/Hijau', NULL, 'Abnormal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-22 14:28:22'),
(16, 7, 'pendaftaran', '90/60', 88, '30.00', 22, 175, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 2, '2026-01-22 14:31:00'),
(17, 14, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', 'Pendengaran Baik', 'Normal', 'Penciuman Baik', 'Normal', 'Tenggorokan Baik', '0', 'Baik', 'Baik', 'Wheezing', '0', 'Vocal Permintus', 'Sonor', '0', NULL, NULL, 1, 'Operasi Ginjal', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '150 cm', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, 'Bisa Bekerja', 'Sering Melakukan MCU', 'FIT', 'Dr. Siti Rahmah, Sp.PD', 4, '2026-01-22 14:35:14'),
(18, 13, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', 'baik', 'Normal', 'baik', 'Normal', 'baik', '0', 'baik', 'baik', 'Normal', '0', 'Vocal Permintus', 'Sonor', '0', NULL, NULL, 1, 'Iya operasi', 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, '150 cm', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, 'Banyak Berobat', 'Datang ke dokter spesialis', 'UNFIT', 'Dr. Siti Rahmah, Sp.PD', 4, '2026-01-22 15:03:14'),
(19, 6, 'pendaftaran', '120/80', 88, '34.00', 22, 175, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 2, '2026-01-23 09:36:18'),
(20, 1, 'pendaftaran', '120/80', 85, '30.00', 25, 160, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 2, '2026-01-23 09:37:49'),
(21, 2, 'pendaftaran', '110/80', 88, '33.00', 26, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 2, '2026-01-23 09:41:07'),
(22, 12, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', 'Pendengaran Baik', 'Normal', 'Penciuman Baik', 'Normal', 'Tenggorokan Baik Sekali', 'Normal', '12345678', '150', 'Normal', 'Vesikuler', 'Vocal Permintus', 'Sonor', 'Suara Normal', 'Bunyi Jantung 1 = Bunyi Jantung 2', 'Apex', 1, 'Operasi Jantung', 0, 1, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 'Aman sentosa', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, 'Bisa Bekerja Dengan Baik', 'Sering melakukan MCU', 'FIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-23 15:36:31'),
(23, 7, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/15', '', '6/20', '', 'Ikterik(+)', '', 'Normal', 'Penglihatan Baik', 'Normal', 'Lapang Pandang Baik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-24 11:20:18'),
(24, 5, 'pendaftaran', '90/60', 88, '30.00', 22, 175, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-24 12:26:51'),
(25, 4, 'pendaftaran', '90/60', 88, '30.50', 22, 175, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-24 12:27:23'),
(26, 4, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '6/6', '6/6', '6/6', 'Ikterik(+)', 'Aman Sentosa', 'Normal', 'Aman Sentosa', 'Normal', 'Aman Sentosa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-24 12:28:50'),
(27, 7, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', 'Aman', 'Normal', 'Aman', 'Normal', 'Aman', 'Normal', '12345678', '150', 'Normal', 'Aman', 'Vocal Permintus', 'Sonor', 'Suara Normal', 'Aman', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'Aman Sentosa', 'Aman sentosa', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, 'Aman', 'Aman', 'FIT WITH NOTE', 'Salman Fauzi ST, M.Kom', 1, '2026-01-24 12:59:36'),
(28, 4, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', 'Aman Sentosa', 'Normal', 'Aman Sentosa', 'Normal', 'Aman Sentosa', 'Normal', '12345678', '150 cm', 'Normal', 'Aman Sentosa', 'Vocal Permintus', 'Hipersonor', 'Suara Normal', 'Aman Sentosa', 'Basal', 1, 'operasi gigi', 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, '', 'Aman sentosa', 'Abnormal', 'Abnormal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, 'Aman Sentosa', 'Aman Sentosa', 'FIT WITH NOTE', 'Salman Fauzi ST, M.Kom', 1, '2026-01-24 13:01:19'),
(29, 15, 'pendaftaran', '100/60', 85, '30.50', 25, 173, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-26 10:01:19'),
(30, 15, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '', '6/6', '', 'Ikterik(-)', 'Mata Bagus', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-26 10:02:10'),
(31, 15, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', 'Telinga Normal', 'Normal', 'Hidung Normal', 'Normal', 'Tenggorokan Normal', 'Normal', 'Gigi Normal', '150 cm', 'Wheezing', 'Ya begitulah', 'Vocal Permintus', 'Hipersonor', 'Suara Tambahan', 'dag dig dug ser', 'Basal', 1, 'Operasi Paru paru', 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, '222 cm', 'Aman sentosa', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, 'Tidak boleh bekerja, istirahat dulu', 'Melakukan pemeriksaan lanjut', 'UNFIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-26 10:05:10'),
(32, 10, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, 'Baik Bagus', '1. Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n2. Konsultasi ke Opthalmologist jika penglihatan makin menurun\n3. Diet Tinggi Besi\n\nSaran Tambahan:\nKonsultasi Lanjut', 'FIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-26 10:47:16'),
(33, 11, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, 'Sehat Aman Sentosa, Bisa bekerja dengan baik', 'Jaga kesehatan dan sering melakukan mcu', 'FIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-26 10:53:25'),
(34, 9, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, 'Jangan bekerja, istirahat dulu sekitar 1 minggu', '4. Jangan mengkonsumsi alkohol sehari sebelum bekerja.\n5. Batasi aktivitas yang dapat mengganggu kesehatan saat kehamilan.\n\nSaran Tambahan:\nSering melakukan kontrol MCU', 'FIT WITH NOTE', 'Salman Fauzi ST, M.Kom', 1, '2026-01-26 10:54:19'),
(35, 6, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '6/6', '6/6', '6/6', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-26 10:56:56'),
(36, 3, 'pendaftaran', '100/60', 85, '30.50', 25, 173, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-26 16:36:34'),
(37, 3, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '', '6/6', '', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-26 16:36:47'),
(38, 3, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, 'amannnnnn', '3. Diet Tinggi Besi\n5. Batasi aktivitas yang dapat mengganggu kesehatan saat kehamilan.', 'FIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-26 16:37:07'),
(39, 6, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, 'perbanyak berobat', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi\n- Jangan mengkonsumsi alkohol sehari sebelum bekerja.\n- Batasi aktivitas yang dapat mengganggu kesehatan saat kehamilan.\n- Jaga kebersihan telinga secara rutin dan berkala', 'FIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-26 16:40:27'),
(40, 16, 'pendaftaran', '100/60', 85, '30.50', 25, 173, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-26 20:12:51'),
(41, 16, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '', '6/6', '', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-26 20:52:35'),
(42, 16, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, 'Aman Untuk Bekerja', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Jangan mengkonsumsi alkohol sehari sebelum bekerja.\n\nSaran Tambahan:\nSering minum air putih', 'FIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-26 20:53:35'),
(43, 5, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6\r\n\r\n\r\n', '6/6', '6/6', '6/6', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-27 10:21:21'),
(44, 2, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/15', '6/6', '6/15', '6/6', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-27 11:38:47'),
(45, 21, 'pendaftaran', '150/100', 101, '38.50', 22, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-27 22:55:33'),
(46, 21, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/15', '', '6/12', '', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-28 09:30:38'),
(47, 22, 'pendaftaran', '140/90', 80, '39.00', 23, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-28 09:50:05'),
(48, 22, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/15', '6/15', '6/15', '6/15', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-28 09:50:41'),
(49, 20, 'pendaftaran', '140/90', 80, '39.00', 23, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-28 10:51:07'),
(50, 20, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '6/7', '6/8', '6/9', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-28 10:51:34'),
(51, 19, 'pendaftaran', '140/90', 80, '39.00', 23, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-28 10:55:35'),
(52, 19, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/8', '6/8', '6/8', '6/8', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-28 10:55:54'),
(53, 20, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Abnormal', 'Gigi Bolong di Kedua Bagian Bawah', '', 'Normal', 'Bengkak', '', 'Sonor', 'Suara Normal', 'Bengkak', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Abnormal', NULL, NULL, NULL, NULL, '', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n\nSaran Tambahan:\nSering Melakukan MCU', 'FIT WITH NOTE', 'Salman Fauzi ST, M.Kom', 1, '2026-01-28 11:26:23'),
(54, 22, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', 'Gigi Bolong', '150 cm', 'Wheezing', 'Bengkak', 'Vocal Permintus', 'Hipersonor', 'Suara Tambahan', 'bengekk', 'Apex', 0, '', 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, '', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi', 'FIT WITH NOTE', 'Salman Fauzi ST, M.Kom', 1, '2026-01-28 11:30:56'),
(55, 21, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', 'Gigi Bolong di Kedua Bagian', '', 'Normal', 'Bengekk Parahh', 'Vocal Permintus', 'Hipersonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, '', 'Ada yang aneh', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, NULL, NULL, '', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi', 'UNFIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-28 11:40:15'),
(56, 19, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', 'Bolong', '150 cm', 'Normal', 'Bengekk', 'Vocal Permintus', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, '', 'Ada yang aneh', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', NULL, NULL, 'Ada Kejanggalan', 'Struk', '', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi', 'UNFIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-28 12:12:17'),
(57, 5, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', 'Gigi Bolong Bagian Bawah dan Atas', '', 'Normal', 'Tenggorokan Kotor', 'Vocal Permintus', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, '', 'Ada yang aneh', 'Normal', 'Abnormal', 'Normal', 'Normal', 'Abnormal', 'Susah Gerak', 'Susah Gerak', 'Ada Gangguan', 'Ada Gangguan', '', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi\n- Jangan mengkonsumsi alkohol sehari sebelum bekerja.\n\nSaran Tambahan:\nSering Melakukan MCU', 'UNFIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-29 08:18:49'),
(58, 18, 'pendaftaran', '140/90', 80, '39.00', 23, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-29 08:32:59'),
(59, 18, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '6/6', '6/6', '6/6', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-29 08:33:37'),
(60, 18, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', '', '', '', '', '', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun', 'FIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-29 08:37:10'),
(61, 23, 'pendaftaran', '140/90', 80, '39.00', 23, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-29 08:40:05'),
(62, 23, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/12', '6/6', '6/6', '6/6', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-29 08:40:35'),
(63, 23, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', 'Gigi Bolong Di Kedua Bagian', '', 'Normal', 'Ada Kejanggalan', 'Vocal Permintus', 'Hipersonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Abnormal', 'Abnormal', 'Abnormal', 'Abnormal', 'Abnormal', 'Ada Kejanggalan di Bagian Tangan', 'Ada Kejanggalan di Bagian Kaki', 'Ada Kejanggalan', 'Ada Kejanggalan', '', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n\nSaran Tambahan:\nSering Melakukan MCU', 'UNFIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-29 08:42:52'),
(64, 2, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', '', '', '', '', '', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi\n\nSaran Tambahan:\nSering MElakukan MCY', 'FIT WITH NOTE', 'Salman Fauzi ST, M.Kom', 1, '2026-01-29 08:56:21'),
(65, 1, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '6/6', '6/12', '6/6', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-29 08:58:55'),
(66, 1, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', '', '', '', '', '', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi\n\nSaran Tambahan:\nSering Melakukan MCU', 'FIT WITH NOTE', 'Salman Fauzi ST, M.Kom', 1, '2026-01-29 09:00:06'),
(67, 17, 'pendaftaran', '140/90', 80, '39.00', 23, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-29 09:10:17'),
(68, 17, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/12', '', '6/6', '', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-29 09:10:34'),
(69, 17, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', 'Bolong', '150 cm', 'Normal', '', 'Vocal Permintus', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, 'Sakit Perutt', 0, 0, '', 'Ada yang aneh', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Ada Yang Aneh', 'Ada Yang Aneh', 'Ada Yang Aneh', 'Ada Yang Aneh', '', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi\n\nSaran Tambahan:\nJaga Kesehatan', 'UNFIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-29 09:16:24'),
(70, 24, 'pendaftaran', '140/90', 80, '39.00', 25, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-29 09:22:04'),
(71, 24, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/15', '', '6/6', '', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-29 09:22:31'),
(72, 24, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', 'Gigi Bolong', '150 cm', 'Normal', 'Paru Paru Kotor', 'Vocal Permintus', 'Hipersonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, 'Sakit Perutt', 0, 0, '', 'Ada yang aneh', 'Abnormal', 'Abnormal', 'Abnormal', 'Abnormal', 'Abnormal', 'Ada Yang Aneh', 'Ada Yang Aneh', 'Ada Yang Aneh', 'Ada Yang Aneh', '', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi\n\nSaran Tambahan:\nJaga Kesehatan', 'UNFIT', 'Salman Fauzi ST, M.Kom', 1, '2026-01-29 09:25:29'),
(73, 26, 'pendaftaran', '140/100', 80, '39.00', 25, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 2, '2026-01-30 07:15:58'),
(74, 25, 'pendaftaran', '120/70', 115, '35.00', 18, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 2, '2026-01-30 07:17:25'),
(75, 26, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '', '6/15', '', 'Ikterik(-)', '', 'Normal', '', 'Abnormal', 'Kurang Jelas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 3, '2026-01-30 07:19:30'),
(76, 26, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Abnormal', 'Bagian Bawah dan Atas ada yang bolong', '', 'Normal', 'Pernapasan sesak', 'Vocal Permintus', 'Hipersonor', 'Suara Tambahan', 'Suara aneh', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, 'Sakit Perutt', 0, 0, '', 'Ada yang aneh', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', '', '', '', '', '', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun', 'FIT WITH NOTE', 'Dr. Siti Rahmah, Sp.PD', 4, '2026-01-30 07:21:50'),
(77, 25, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/12', '', '6/6', '', 'Ikterik(+)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-30 07:29:40'),
(78, 27, 'pendaftaran', '120/70', 115, '38.50', 18, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-30 07:32:50'),
(79, 27, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '6/6', '6/6', '6/6', 'Ikterik(-)', 'Ada gangguan', 'Normal', 'ada gangguan', 'Normal', 'ada gangguan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-30 07:33:29'),
(80, 30, 'pendaftaran', '126/75', 55, '37.00', 26, 175, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-30 10:49:09'),
(81, 30, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '', '6/12', '', 'Ikterik(+)', '', 'Normal', 'gereng', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-30 10:52:04'),
(82, 30, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', '', '', '', '', '', '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n\nSaran Tambahan:\njangan maling', 'UNFIT', 'Salman Fauzi ', 1, '2026-01-30 10:58:36'),
(83, 29, 'pendaftaran', '126/75', 55, '37.00', 26, 175, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-30 11:01:50'),
(84, 27, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', 'Bolong Bagian atas', '150 cm', 'Normal', 'Kotor dikit', 'Vocal Permintus', 'Hipersonor', 'Suara Normal', 'Bengek dikit', 'Apex', 1, 'Operasi paru paru', 0, 0, 1, 1, 0, 0, 0, NULL, 0, 1, '', 'Aman sentosa', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Lembek tangannya', '', 'Pemeriksaan otak', '', NULL, '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi', 'UNFIT', 'Salman Fauzi ', 1, '2026-01-31 08:02:50'),
(85, 29, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/12', '', '6/6', '', 'Anemis', 'anemis angkut', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-31 08:40:35'),
(86, 31, 'pendaftaran', '125/100', 101, '39.00', 25, 160, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-31 12:53:30'),
(87, 31, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/12', '', '6/6', '', 'Anemis', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-01-31 12:54:16'),
(88, 31, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', '', '', '', '', NULL, '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n\nSaran Tambahan:\nSering makan vitamin c', 'FIT', 'Salman Fauzi ', 1, '2026-01-31 12:55:13'),
(89, 29, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', '', '', '', '', NULL, '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Diet Tinggi Zat Besi\n\nSaran Tambahan:\naman', 'FIT', 'Salman Fauzi ', 1, '2026-02-02 14:28:45'),
(90, 28, 'pendaftaran', '125/100', 101, '39.00', 25, 160, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-02 15:08:34'),
(91, 28, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/12', '', '6/6', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-02 15:08:44'),
(92, 28, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', '', '', '', '', NULL, '- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi', 'FIT WITH NOTE', 'Salman Fauzi ', 1, '2026-02-02 15:08:57'),
(93, 33, 'pendaftaran', '125/100', 101, '39.00', 25, 160, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-02 15:10:11'),
(94, 33, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/11', '', '6/12', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-02 15:10:21'),
(95, 33, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', '', 'Kaki Patah', '', '', NULL, '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi', 'FIT WITH NOTE', 'Salman Fauzi ', 1, '2026-02-02 15:10:41'),
(96, 25, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tangan Patah', '', '', '', NULL, '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi', 'UNFIT', 'Salman Fauzi ', 1, '2026-02-02 15:11:32'),
(97, 34, 'pendaftaran', '125/100', 101, '39.00', 25, 160, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-02 15:20:11'),
(98, 34, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '', '6/6', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-02 15:20:19'),
(99, 34, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Bengkak dikit', '', '', '', NULL, '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun', 'FIT', 'Salman Fauzi ', 1, '2026-02-02 15:20:38'),
(100, 35, 'pendaftaran', '125/100', 101, '39.00', 25, 160, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-02 15:32:15'),
(101, 35, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '', '6/6', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-02 15:32:24'),
(102, 35, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', '', '', '', '', NULL, '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n\nSaran Tambahan:\namanann', 'FIT', 'Salman Fauzi ', 1, '2026-02-02 15:32:36'),
(103, 36, 'pendaftaran', '126/81', 80, '37.00', 20, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-06 09:00:29'),
(104, 32, 'pendaftaran', '120/100', 55, '35.50', 11, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-06 09:01:50'),
(105, 37, 'pendaftaran', '90/60', 101, '37.60', 26, 170, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-06 09:05:19'),
(106, 37, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '', '6/12', '', 'Ikterik(-)', 'cek ikterik', 'Normal', 'tapi agak ada kelainan', 'Normal', 'tapi agak ada kelainan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-06 09:13:43'),
(107, 36, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/7', '', '6/8', '', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-06 09:14:25');
INSERT INTO `pemeriksaan` (`id`, `pasien_id`, `pemeriksa_role`, `tekanan_darah`, `nadi`, `suhu`, `respirasi`, `tinggi_badan`, `berat_badan`, `visus_kanan_jauh`, `visus_kanan_dekat`, `visus_kiri_jauh`, `visus_kiri_dekat`, `anemia`, `ikterik_keterangan`, `buta_warna`, `buta_warna_keterangan`, `lapang_pandang`, `lapang_pandang_keterangan`, `telinga_status`, `telinga_keterangan`, `hidung_status`, `hidung_keterangan`, `tenggorokan_status`, `tenggorokan_keterangan`, `gigi_status`, `gigi_keterangan`, `leher_kgb`, `paru_auskultasi`, `auskultasi_keterangan`, `paru_palpasi`, `paru_perkusi`, `jantung_auskultasi`, `jantung_keterangan`, `jantung_perkusi`, `operasi`, `keterangan_operasi`, `obesitas`, `organomegali`, `hernia`, `nyeri_epigastrium`, `nyeri_abdomen`, `bising_usus`, `hepar`, `keterangan_perut`, `striae`, `sikatriks`, `psoas_sign`, `hepatomegali`, `biceps`, `triceps`, `patella`, `achilles`, `plantar_response`, `keterangan_tangan`, `keterangan_kaki`, `hasil_lab`, `keterangan_penyakit`, `kesimpulan`, `saran`, `status_mcu`, `dokter_pemeriksa`, `pemeriksa_id`, `tanggal_periksa`) VALUES
(108, 32, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '6/6', '6/6', '', 'Ikterik(-)', 'tapi agak ada kelainan', 'Normal', 'tapi agak ada kelainan', 'Normal', 'tapi agak ada kelainan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-06 09:14:50'),
(109, 38, 'pendaftaran', '90/60', 101, '37.60', 26, 170, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-06 09:28:58'),
(110, 39, 'pendaftaran', '90/60', 101, '37.60', 26, 170, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-06 09:29:49'),
(111, 37, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', 'telinga kotor', 'Normal', 'Hidung tersumbat', 'Normal', 'tenggorokan sesak', 'Normal', 'gigi bolong', '150 cm', 'Normal', 'Asukultasi rusak', 'Vocal Permintus', 'Sonor', 'Suara Tambahan', 'Suara bengek', 'Apex', 1, 'Operasi paru paru', 0, 0, 0, 1, 1, 0, 0, NULL, 0, 1, '', 'Ada yang aneh pada bagian kelamin', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tangan lembek', 'Kaki lembek', 'Ada yang aneh', 'asma akut parah', NULL, '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi\n\nSaran Tambahan:\nMelakukan pemeriksaan lanjut', 'UNFIT', 'Salman Fauzi ', 1, '2026-02-06 14:42:32'),
(112, 36, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', 'Hidung gatal gatal', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', 'agak kencang dikit', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', '', '', '', '', NULL, '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n\nSaran Tambahan:\naman aja', 'FIT', 'Salman Fauzi ', 1, '2026-02-06 14:48:54'),
(116, 39, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/8', '6/6', '6/10', '6/6', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-07 08:10:10'),
(117, 38, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '', '6/6', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-07 08:21:12'),
(121, 39, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', '', 'Normal', '', 'Normal', '', 'Normal', '', '', 'Normal', '', '', 'Sonor', 'Suara Normal', '', 'Apex', 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', '', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', '', '', '', '', NULL, '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi', 'FIT', 'Salman Fauzi ', 1, '2026-02-07 08:57:35'),
(122, 42, 'pendaftaran', '100/70', 101, '37.60', 26, 160, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 2, '2026-02-07 09:12:31'),
(123, 42, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '6/7', '6/8', '6/6', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 3, '2026-02-07 09:12:55'),
(124, 43, 'pendaftaran', '100/70', 101, '37.60', 26, 160, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-07 12:07:42'),
(125, 43, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '', '6/7', '', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-07 18:25:05'),
(126, 44, 'pendaftaran', '100/70', 75, '37.00', 26, 160, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-07 18:43:26'),
(127, 44, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-07 18:43:33'),
(128, 43, 'dokter_umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal', 'Teling Kotor', 'Normal', 'Hidung Tersumbat', 'Normal', '', 'Normal', '', '', 'Normal', 'paru paru kotor', '', 'Sonor', 'Suara Normal', 'agak dag dig dug', 'Apex', 0, 'sakit lambung', 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, '', 'Ada yang aneh', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'sering kesemutan', 'sering kesemutan', '', 'asma akut', NULL, '- Jika terdapat keluhan mengenai Gigi, Konsultasi ke Dentist\n- Konsultasi ke Opthalmologist jika penglihatan makin menurun\n- Diet Tinggi Zat Besi\n\nSaran Tambahan:\njaga kesehatan ya maszehh', 'UNFIT', 'Salman Fauzi ', 1, '2026-02-07 18:57:30'),
(129, 45, 'pendaftaran', '100/70', 75, '37.00', 26, 160, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-24 12:55:21'),
(130, 45, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/12', '', '6/6', '', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-02-24 12:56:08'),
(131, 51, 'pendaftaran', '140/90', 50, '38.00', 22, 175, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-04-19 19:50:24'),
(132, 51, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6444', '', '45', '', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-04-26 10:11:29'),
(133, 52, 'pendaftaran', '120/80', 70, '30.00', 25, 100, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-04-26 11:08:21'),
(134, 52, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, 'gvgs', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-04-26 13:58:27'),
(135, 50, 'pendaftaran', '120/80', 80, '36.50', 20, 175, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-04-26 14:01:04'),
(136, 50, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, 'wwwww', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-04-26 14:01:19'),
(137, 49, 'pendaftaran', '120/80', 70, '37.00', 20, 175, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-04-26 14:06:50'),
(138, 48, 'pendaftaran', '120/80', 80, '35.00', 25, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-05-07 08:37:28'),
(139, 47, 'pendaftaran', '120/80', 40, '37.00', 25, 175, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-05-07 12:42:11'),
(140, 46, 'pendaftaran', '120/80', 80, '36.50', 20, 170, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-05-07 12:49:22'),
(141, 53, 'pendaftaran', '120/80', 60, '35.00', 15, 175, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-06-25 10:53:14'),
(142, 53, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/12', '', '6/6', '', 'Ikterik(-)', '', 'Normal', 'Tapi ada bintitnya', 'Normal', 'agak agak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-06-25 10:55:55'),
(143, 49, 'dokter_mata', NULL, NULL, NULL, NULL, NULL, NULL, '6/6', '', '6/15', '', 'Ikterik(-)', '', 'Normal', '', 'Normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FIT', NULL, 1, '2026-06-26 16:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama_klinik` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `tentang` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `hero_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama_klinik`, `alamat`, `telepon`, `email`, `whatsapp`, `logo`, `tentang`, `created_at`, `hero_image`) VALUES
(1, 'Klinik Alvarisha', 'Jl. Kesehatan No. 123, Jakarta Pusat 12125', '085864494589', 'info@klinikAlvarisha.com', '081234567890233', 'uploads/logo/1770213417_logo alvarisha fix.png', 'Klinik Alvarisha berdiri pada tanggal 16 Agustus 2021 yang berlokasi di Desa Ciputri, Kecamatan Pacet, Kabupaten Cianjur. Didirikan oleh sepasang suami istri yang berprofesi Dokter. Nama klinik ALVARISHA tersebut diambil dari nama kedua anak pemilik. Berdasarkan data BPS Kabupaten Cianjur. Klinik Alvarisha berada di antara 3 kecamatan di Cianjur yang berdekatan mempunyai total wilayah seluas 185,09 km².\r\nKlinik berada dalam kecamatan Pacet yang memiliki jumlah penduduk sebanyak 112.320 jiwa.\r\n\r\nKlinik Alvarisha sudah memiliki 1 cabang di kecamatan yang sama dalam kurun waktu 1 tahun berjalan saat ini mempunyai 8 karyawan yang terdiri dari 2 dokter umum, 3 perawat, 2 tenaga farmasi, dan 1 Staff\r\nakunting. Klinik saat ini masih melayani pasien umum dan belum bekerja sama dengan BPJS.\r\n', '2025-12-30 00:29:00', 'uploads/hero/1767433495_dokter2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_kesehatan`
--

CREATE TABLE `riwayat_kesehatan` (
  `id` int(11) NOT NULL,
  `pasien_id` int(11) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `nilai` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat_kesehatan`
--

INSERT INTO `riwayat_kesehatan` (`id`, `pasien_id`, `kategori`, `nilai`) VALUES
(1, 1, 'kesehatan_sekarang', 'Konsumsi Obat'),
(2, 1, 'penyakit_dahulu', 'TBC'),
(3, 1, 'riwayat_keluarga', 'TBC'),
(4, 1, 'alergi', 'CUACA DINGIN'),
(5, 1, 'keluhan', 'PENYAKIT PARU'),
(6, 2, 'kesehatan_sekarang', 'Konsumsi Obat'),
(7, 2, 'penyakit_dahulu', 'TBC'),
(8, 2, 'riwayat_keluarga', 'TBC'),
(9, 2, 'alergi', 'CUACA DINGIN'),
(10, 2, 'keluhan', 'PENYAKIT PARU'),
(11, 3, 'kesehatan_sekarang', 'Konsumsi Obat'),
(12, 3, 'penyakit_dahulu', 'TBC'),
(13, 3, 'riwayat_keluarga', 'TBC'),
(14, 3, 'alergi', 'CUACA DINGIN'),
(15, 3, 'keluhan', 'PENYAKIT PARU'),
(16, 4, 'kesehatan_sekarang', 'Konsumsi Obat'),
(17, 4, 'penyakit_dahulu', 'TBC'),
(18, 4, 'riwayat_keluarga', 'TBC'),
(19, 4, 'alergi', 'CUACA DINGIN'),
(20, 4, 'keluhan', 'PENYAKIT PARU'),
(21, 5, 'kesehatan_sekarang', 'Konsumsi Obat'),
(22, 5, 'penyakit_dahulu', 'TBC'),
(23, 5, 'riwayat_keluarga', 'TBC'),
(24, 5, 'alergi', 'CUACA DINGIN'),
(25, 5, 'keluhan', 'PENYAKIT PARU'),
(26, 6, 'kesehatan_sekarang', 'Konsumsi Obat'),
(27, 6, 'penyakit_dahulu', 'TBC'),
(28, 6, 'riwayat_keluarga', 'TBC'),
(29, 6, 'alergi', 'CUACA DINGIN'),
(30, 6, 'keluhan', 'PENYAKIT PARU'),
(31, 7, 'kesehatan_sekarang', 'Konsumsi Obat'),
(32, 7, 'penyakit_dahulu', 'TBC'),
(33, 7, 'riwayat_keluarga', 'TBC'),
(34, 7, 'alergi', 'CUACA DINGIN'),
(35, 7, 'keluhan', 'PENYAKIT PARU'),
(36, 8, 'kesehatan_sekarang', 'Konsumsi Obat'),
(37, 8, 'penyakit_dahulu', 'TBC'),
(38, 8, 'riwayat_keluarga', 'TBC'),
(39, 8, 'alergi', 'CUACA DINGIN'),
(40, 8, 'keluhan', 'PENYAKIT PARU'),
(41, 10, 'kesehatan_sekarang', 'Sakit'),
(42, 10, 'penyakit_dahulu', 'HIPERTENSI'),
(43, 10, 'penyakit_dahulu', 'anemia'),
(44, 10, 'riwayat_keluarga', 'HIPERTENSI'),
(45, 10, 'alergi', 'CUACA DINGIN'),
(46, 10, 'keluhan', 'ASMA'),
(47, 11, 'penyakit_dahulu', 'anemia'),
(48, 12, 'penyakit_dahulu', 'anemia'),
(49, 13, 'penyakit_dahulu', 'TIDAK'),
(50, 13, 'penyakit_dahulu', 'anemia'),
(51, 13, 'riwayat_keluarga', 'HEMOPILIA'),
(52, 13, 'alergi', 'CUACA DINGIN'),
(53, 13, 'keluhan', 'ASMA'),
(54, 14, 'penyakit_dahulu', 'anemia'),
(55, 15, 'kesehatan_sekarang', 'Sakit'),
(56, 15, 'kesehatan_sekarang', 'Konsumsi Obat'),
(57, 15, 'penyakit_dahulu', 'DIABETES'),
(58, 15, 'penyakit_dahulu', 'Asma'),
(59, 15, 'riwayat_keluarga', 'DIABETES'),
(60, 15, 'riwayat_keluarga', 'Asma'),
(61, 15, 'alergi', 'DEBU'),
(62, 15, 'alergi', 'Telor'),
(63, 15, 'keluhan', 'PEMBEDAHAN OPERASI'),
(64, 15, 'keluhan', 'operasi paru paru'),
(65, 16, 'kesehatan_sekarang', 'Konsumsi Obat'),
(66, 16, 'penyakit_dahulu', 'HIPERTENSI'),
(67, 16, 'riwayat_keluarga', 'HIPERTENSI'),
(68, 16, 'alergi', 'CUACA DINGIN'),
(69, 16, 'alergi', 'Telur'),
(70, 16, 'keluhan', 'ASMA'),
(71, 17, 'kesehatan_sekarang', 'Sehat'),
(72, 17, 'penyakit_dahulu', 'TIDAK'),
(73, 17, 'riwayat_keluarga', 'TIDAK'),
(74, 17, 'alergi', 'TIDAK'),
(75, 17, 'alergi', 'Telur'),
(76, 17, 'keluhan', 'Telur'),
(77, 25, 'kesehatan_sekarang', 'Sakit'),
(78, 25, 'kesehatan_sekarang', 'Konsumsi Obat'),
(79, 25, 'penyakit_dahulu', 'TIDAK'),
(80, 25, 'riwayat_keluarga', 'DIABETES'),
(81, 25, 'alergi', 'CUACA DINGIN'),
(82, 25, 'alergi', 'Makan Telur'),
(83, 25, 'keluhan', 'PENYAKIT PARU'),
(84, 26, 'kesehatan_sekarang', 'Sakit'),
(85, 26, 'kesehatan_sekarang', 'Konsumsi Obat'),
(86, 26, 'penyakit_dahulu', 'TIDAK'),
(87, 26, 'riwayat_keluarga', 'TIDAK'),
(88, 26, 'alergi', 'TIDAK'),
(89, 26, 'keluhan', 'PENYAKIT PARU'),
(90, 26, 'keluhan', 'ASMA'),
(91, 27, 'alergi', 'Makan Telur'),
(92, 27, 'keluhan', 'Makan Telur'),
(93, 29, 'penyakit_dahulu', 'HIPERTENSI'),
(94, 29, 'penyakit_dahulu', 'anemia'),
(95, 29, 'riwayat_keluarga', 'TIDAK'),
(96, 29, 'alergi', 'TIDAK'),
(97, 30, 'penyakit_dahulu', 'HIPERTENSI'),
(98, 30, 'penyakit_dahulu', 'anemia'),
(99, 30, 'riwayat_keluarga', 'TIDAK'),
(100, 30, 'alergi', 'TIDAK'),
(101, 31, 'kesehatan_sekarang', 'Sakit'),
(102, 31, 'kesehatan_sekarang', 'Konsumsi Obat'),
(103, 31, 'penyakit_dahulu', 'Pilek'),
(104, 31, 'riwayat_keluarga', 'TIDAK'),
(105, 31, 'alergi', 'Alergi makan udang'),
(106, 31, 'keluhan', 'PEMBEDAHAN OPERASI'),
(107, 32, 'penyakit_dahulu', 'Pilek'),
(108, 32, 'riwayat_keluarga', 'Pilek'),
(109, 32, 'alergi', 'Alergi makan udang'),
(110, 32, 'keluhan', 'Alergi makan udang'),
(111, 33, 'penyakit_dahulu', 'Pilek'),
(112, 33, 'riwayat_keluarga', 'Pilek'),
(113, 33, 'alergi', 'Alergi makan udang'),
(114, 33, 'keluhan', 'Alergi makan udang'),
(115, 34, 'penyakit_dahulu', 'Pilek'),
(116, 34, 'riwayat_keluarga', 'Pilek'),
(117, 34, 'alergi', 'Alergi makan udang'),
(118, 34, 'keluhan', 'Alergi makan udang'),
(119, 35, 'penyakit_dahulu', 'Pilek'),
(120, 35, 'riwayat_keluarga', 'Pilek'),
(121, 35, 'alergi', 'Alergi makan udang'),
(122, 35, 'keluhan', 'Alergi makan udang'),
(137, 42, 'keluhan', 'gada keluhan aman'),
(138, 43, 'alergi', 'gada keluhan aman'),
(139, 43, 'keluhan', 'gada keluhan aman'),
(140, 44, 'alergi', 'gada keluhan aman'),
(141, 44, 'keluhan', 'gada keluhan aman'),
(142, 45, 'kesehatan_sekarang', 'Konsumsi Obat'),
(143, 45, 'penyakit_dahulu', 'DIABETES'),
(144, 45, 'penyakit_dahulu', 'TRAUMA'),
(145, 45, 'penyakit_dahulu', 'sakit'),
(146, 45, 'riwayat_keluarga', 'DIABETES'),
(147, 45, 'riwayat_keluarga', 'sakit'),
(148, 45, 'alergi', 'CUACA DINGIN'),
(149, 45, 'alergi', 'gada keluhan aman'),
(150, 45, 'keluhan', 'gada keluhan aman'),
(151, 46, 'penyakit_dahulu', 'sakit'),
(152, 46, 'riwayat_keluarga', 'sakit'),
(153, 46, 'alergi', 'gada keluhan aman'),
(154, 46, 'keluhan', 'gada keluhan aman'),
(155, 47, 'penyakit_dahulu', 'sakit'),
(156, 47, 'riwayat_keluarga', 'sakit'),
(157, 47, 'alergi', 'gada keluhan aman'),
(158, 47, 'keluhan', 'gada keluhan aman'),
(159, 48, 'penyakit_dahulu', 'sakit'),
(160, 48, 'riwayat_keluarga', 'sakit'),
(161, 48, 'alergi', 'gada keluhan aman'),
(162, 48, 'keluhan', 'gada keluhan aman'),
(163, 49, 'kesehatan_sekarang', 'Sakit'),
(164, 49, 'kesehatan_sekarang', 'Konsumsi Obat'),
(165, 49, 'penyakit_dahulu', 'HIPERTENSI'),
(166, 49, 'penyakit_dahulu', 'DIABETES'),
(167, 49, 'penyakit_dahulu', 'sakit'),
(168, 49, 'riwayat_keluarga', 'DIABETES'),
(169, 49, 'riwayat_keluarga', 'HIPERTENSI'),
(170, 49, 'riwayat_keluarga', 'HEMOPILIA'),
(171, 49, 'riwayat_keluarga', 'sakit'),
(172, 49, 'alergi', 'OBAT'),
(173, 49, 'alergi', 'MAKANAN'),
(174, 49, 'alergi', 'CUACA DINGIN'),
(175, 49, 'alergi', 'DEBU'),
(176, 49, 'alergi', 'gada keluhan aman'),
(177, 49, 'keluhan', 'ASMA'),
(178, 49, 'keluhan', 'gada keluhan aman'),
(179, 50, 'penyakit_dahulu', 'sakit'),
(180, 50, 'riwayat_keluarga', 'sakit'),
(181, 50, 'alergi', 'gada keluhan aman'),
(182, 50, 'keluhan', 'gada keluhan aman'),
(183, 52, 'kesehatan_sekarang', 'Konsumsi Obat'),
(184, 52, 'penyakit_dahulu', 'HIPERTENSI'),
(185, 52, 'penyakit_dahulu', 'anemia'),
(186, 53, 'kesehatan_sekarang', 'Konsumsi Obat'),
(187, 54, 'kesehatan_sekarang', 'Konsumsi Obat'),
(188, 54, 'penyakit_dahulu', 'TRAUMA'),
(189, 54, 'riwayat_keluarga', 'TIDAK'),
(190, 54, 'alergi', 'Makan Kacang kacangan'),
(191, 55, 'alergi', 'Makan Kacang kacangan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `feedback_pasien`
--
ALTER TABLE `feedback_pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasien_id` (`pasien_id`);

--
-- Indexes for table `home_visit`
--
ALTER TABLE `home_visit`
  ADD PRIMARY KEY (`id_visit`),
  ADD KEY `id_setting` (`id_setting`);

--
-- Indexes for table `home_visit_setting`
--
ALTER TABLE `home_visit_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `kebiasaan_pasien`
--
ALTER TABLE `kebiasaan_pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasien_id` (`pasien_id`);

--
-- Indexes for table `keluarga_pasien`
--
ALTER TABLE `keluarga_pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasien_id` (`pasien_id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_mcu` (`kode_mcu`);

--
-- Indexes for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasien_id` (`pasien_id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_kesehatan`
--
ALTER TABLE `riwayat_kesehatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasien_id` (`pasien_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `feedback_pasien`
--
ALTER TABLE `feedback_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `home_visit`
--
ALTER TABLE `home_visit`
  MODIFY `id_visit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `home_visit_setting`
--
ALTER TABLE `home_visit_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kebiasaan_pasien`
--
ALTER TABLE `kebiasaan_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `keluarga_pasien`
--
ALTER TABLE `keluarga_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `riwayat_kesehatan`
--
ALTER TABLE `riwayat_kesehatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback_pasien`
--
ALTER TABLE `feedback_pasien`
  ADD CONSTRAINT `feedback_pasien_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `home_visit`
--
ALTER TABLE `home_visit`
  ADD CONSTRAINT `home_visit_ibfk_1` FOREIGN KEY (`id_setting`) REFERENCES `home_visit_setting` (`id_setting`) ON DELETE CASCADE;

--
-- Constraints for table `kebiasaan_pasien`
--
ALTER TABLE `kebiasaan_pasien`
  ADD CONSTRAINT `kebiasaan_pasien_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `keluarga_pasien`
--
ALTER TABLE `keluarga_pasien`
  ADD CONSTRAINT `keluarga_pasien_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD CONSTRAINT `pemeriksaan_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_kesehatan`
--
ALTER TABLE `riwayat_kesehatan`
  ADD CONSTRAINT `riwayat_kesehatan_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
