-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2023 at 12:37 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `widan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id_game` int NOT NULL,
  `url` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_game` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_vendor` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_dibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id_game`, `url`, `nama_game`, `nama_vendor`, `gambar`, `tgl_dibuat`) VALUES
(1, 'free-fire', 'Free Fire', 'Garena', 'assets/images/free-fire2.png', '2023-01-23 10:32:27'),
(2, 'pubg', 'PUBG Mobile', 'Tencent Games', 'assets/images/pubg.jpg', '2023-01-23 10:32:48'),
(3, 'ml', 'Mobile Legends', 'Moonton', 'assets/images/ml.png', '2023-01-23 10:33:10'),
(4, 'genshin', 'Genshin Impact', 'Hoyoverse', 'assets/images/genshin.jpg', '2023-01-23 10:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `harga_ff`
--

CREATE TABLE `harga_ff` (
  `id_voucher` int NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `harga` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harga_ff`
--

INSERT INTO `harga_ff` (`id_voucher`, `item`, `harga`, `gambar`) VALUES
(1, '140', '20.000', '<i class=\"ri-vip-diamond-line\"></i>'),
(2, '355', '50.000', '<i class=\"ri-vip-diamond-line\"></i>'),
(3, '720', '100.000', '<i class=\"ri-vip-diamond-line\"></i>'),
(4, '1450', '196.000', '<i class=\"ri-vip-diamond-line\"></i>'),
(5, '2180', '300.000', '<i class=\"ri-vip-diamond-line\"></i>'),
(6, '3640', '495.000', '<i class=\"ri-vip-diamond-line\"></i>'),
(7, '7290', '960.000', '<i class=\"ri-vip-diamond-line\"></i>');

-- --------------------------------------------------------

--
-- Table structure for table `harga_genshin`
--

CREATE TABLE `harga_genshin` (
  `id_voucher` int NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `harga` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harga_genshin`
--

INSERT INTO `harga_genshin` (`id_voucher`, `item`, `harga`, `gambar`) VALUES
(1, '60', '16.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(2, '300+30', '79.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(3, '980+110', '249.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(4, '1980+260', '479.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(5, '3280+600', '799.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(6, '6480+1600', '1.499.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(7, 'Blessing of the Welkin Moon', '79.000', '<img src=\"./assets/images/welkin.png\" alt=\"welkin\" style=\"max-width: 25px; \">');

-- --------------------------------------------------------

--
-- Table structure for table `harga_ml`
--

CREATE TABLE `harga_ml` (
  `id_voucher` int NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `harga` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harga_ml`
--

INSERT INTO `harga_ml` (`id_voucher`, `item`, `harga`, `gambar`) VALUES
(1, '86', '19.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(2, '172', '41.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(3, '257', '60.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(4, '344', '80.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(5, '429', '101.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(6, '514', '119.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(7, '706', '159.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(8, '878', '199.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(9, '1412', '324.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(10, '2195', '484.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(11, '3688', '794.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(12, '4394', '969.000', '<i class=\"ri-vip-diamond-fill\"></i>'),
(13, 'Twilight Pass', '130.000', '<img src=\"/assets/images/twilight.png\" alt=\"twilight\" style=\"max-width: 25px; \">');

-- --------------------------------------------------------

--
-- Table structure for table `harga_pubg`
--

CREATE TABLE `harga_pubg` (
  `id_voucher` int NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `harga` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harga_pubg`
--

INSERT INTO `harga_pubg` (`id_voucher`, `item`, `harga`, `gambar`) VALUES
(1, '125', '25.000', '<i class=\"ri-money-dollar-box-line\"></i>'),
(2, '250', '50.000', '<i class=\"ri-money-dollar-box-line\"></i>'),
(3, '500', '100.000', '<i class=\"ri-money-dollar-box-line\"></i>'),
(4, '1250', '250.000', '<i class=\"ri-money-dollar-box-line\"></i>'),
(5, '2875', '500.000', '<i class=\"ri-money-dollar-box-line\"></i>'),
(6, '6000', '1.000.000', '<i class=\"ri-money-dollar-box-line\"></i>'),
(7, '8100', '1.550.000', '<i class=\"ri-money-dollar-box-line\"></i>');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_user` int NOT NULL,
  `nama_lengkap` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(7) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Member',
  `tgl_join` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_user`, `nama_lengkap`, `email`, `username`, `password`, `role`, `tgl_join`) VALUES
(5, 'Muhammad Zaidan', 'zai@widan.store', 'zaidan', '$2y$10$T/RaDpdXXKdL8uVT7rRj9Of5.SaryMEZYekjtTlWGPoiQYkBmebJu', 'Member', '2023-01-23 13:47:20'),
(8, 'Bang Messi', 'messi@widan.store', 'messi', '$2y$10$W6RFQ7zz2Q6rNsPRMZa61.GwCohvr.diVlkk2w2TDHsKwpkxFHGLm', 'Member', '2023-01-23 14:52:27'),
(9, 'Udin Marudin', 'udin@widan.store', 'udin', '$2y$10$lRZ4O0uZfMrlXyRmj5oDiubywCkd2HVaAT3bnPBXwEaQBCo4xh8vq', 'Admin', '2023-01-29 01:25:30'),
(12, 'Bang CR', 'siuu@widan.store', 'siuu', '$2y$10$uuTixednqDERJbKYPKKJp.YyIYn7DnwG/GA3CXgx22xgegydGdajW', 'Admin', '2023-01-31 00:50:13'),
(13, 'Kevin Nugraha', 'kevin@widan.store', 'kevin', '$2y$10$/pa2HhUjE8YXQIJwVnP4K.g6IQcZzUEZHZdCR0ysTYz5jSAe6pr0K', 'Admin', '2023-01-31 00:59:27'),
(15, 'Haji Maguire', 'maguire@widan.store', 'maguire', '$2y$10$fjaRCbexrOl34xB5qFyieehIjN.nJ5C1/JkPCQWnb17KeB778gTIi', 'Admin', '2023-04-03 02:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_ff`
--

CREATE TABLE `order_ff` (
  `order_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id_user` int NOT NULL,
  `nama_user` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Anonym',
  `id_ff` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `item` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `metode` varchar(30) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Berhasil',
  `tgl_order` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_ff`
--

INSERT INTO `order_ff` (`order_id`, `id_user`, `nama_user`, `id_ff`, `item`, `metode`, `Status`, `tgl_order`) VALUES
('FF0167498582869', 8, 'Bang Messi', '23456178', '720', 'gopay', 'Berhasil', '2023-01-29 16:50:28'),
('FF0167498586934', 8, 'Bang Messi', '35792468', '355', 'LinkAja', 'Berhasil', '2023-01-29 16:51:09'),
('FF0167498707640', 5, 'Muhammad Zaidan', '61293618937', '355', 'ShopeePay', 'Berhasil', '2023-01-29 17:11:16'),
('FF1168005815744', 0, 'Anonym', '12345678', '140', 'gopay', 'Berhasil', '2023-03-29 09:49:17'),
('FF1168005829630', 0, 'Anonym', '12345678', '140', 'Dana', 'Berhasil', '2023-03-29 09:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `order_genshin`
--

CREATE TABLE `order_genshin` (
  `order_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id_user` int NOT NULL,
  `nama_user` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Anonym',
  `id_genshin` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `server` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `item` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `metode` varchar(30) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Berhasil',
  `tgl_order` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_genshin`
--

INSERT INTO `order_genshin` (`order_id`, `id_user`, `nama_user`, `id_genshin`, `server`, `item`, `metode`, `Status`, `tgl_order`) VALUES
('GI12167520825351', 0, '', '98762348', '', 'Blessing of the Welkin Moon', 'Ovo', 'Berhasil', '2023-02-01 06:37:33'),
('GI14168050031223', 0, 'Anonym', '98762345', '', '980+110', 'Dana', 'Berhasil', '2023-04-03 12:38:32'),
('GI15168005970048', 5, 'Muhammad Zaidan', '98762345', '', 'Blessing of the Welkin Moon', 'gopay', 'Berhasil', '2023-03-29 10:15:00'),
('GI7168050033950', 5, 'Muhammad Zaidan', '12435123', '', '980+110', 'Dana', 'Berhasil', '2023-04-03 12:38:59'),
('GI8167498585016', 8, 'Bang Messi', '98762345', '', '300+30', 'ShopeePay', 'Berhasil', '2023-01-29 16:50:50'),
('GI8167498705299', 5, 'Muhammad Zaidan', '98762348', '', '980+110', 'Dana', 'Berhasil', '2023-01-29 17:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_ml`
--

CREATE TABLE `order_ml` (
  `order_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id_user` int NOT NULL,
  `nama_user` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Anonym',
  `id_ml` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `zone` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `item` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `metode` varchar(30) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Berhasil',
  `tgl_order` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_ml`
--

INSERT INTO `order_ml` (`order_id`, `id_user`, `nama_user`, `id_ml`, `zone`, `item`, `metode`, `Status`, `tgl_order`) VALUES
('ML2167498492918', 5, 'Muhammad Zaidan', '23456178', '9876', '2195', 'gopay', 'Berhasil', '2023-01-29 16:35:29'),
('ML2167498575460', 8, 'Bang Messi', '35792468', '7531', '429', 'Dana', 'Berhasil', '2023-01-29 16:49:14'),
('ML2167513152687', 0, '', '34562468', '9876', '878', 'gopay', 'Berhasil', '2023-01-31 09:18:46'),
('ML2167520904550', 0, '', '35792468', '9876', '257', 'gopay', 'Berhasil', '2023-02-01 06:50:45'),
('ML2167521767183', 5, 'Muhammad Zaidan', '34562468', '9876', '4394', 'gopay', 'Berhasil', '2023-02-01 09:14:31'),
('ML3167498488786', 5, 'Muhammad Zaidan', '34562468', '9876', '4394', 'gopay', 'Berhasil', '2023-01-29 16:34:47'),
('ML3167513063511', 0, '', '35792468', '9876', '4394', 'gopay', 'Berhasil', '2023-01-31 09:03:55'),
('ML3167521660213', 0, '', '35792468', '9876', '429', 'gopay', 'Berhasil', '2023-02-01 08:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `order_pubg`
--

CREATE TABLE `order_pubg` (
  `order_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id_user` int NOT NULL,
  `nama_user` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Anonym',
  `id_pubg` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `item` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `metode` varchar(30) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Berhasil',
  `tgl_order` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_pubg`
--

INSERT INTO `order_pubg` (`order_id`, `id_user`, `nama_user`, `id_pubg`, `item`, `metode`, `Status`, `tgl_order`) VALUES
('PUBG4167498579244', 8, 'Bang Messi', '98762348', '500', 'Dana', 'Berhasil', '2023-01-29 16:49:52'),
('PUBG4167520816720', 0, '', '98762348', '500', 'gopay', 'Berhasil', '2023-02-01 06:36:07'),
('PUBG4167521577321', 0, '', '98762348', '500', 'gopay', 'Berhasil', '2023-02-01 08:42:53'),
('PUBG7167498709510', 5, 'Muhammad Zaidan', '98762345', '500', 'Ovo', 'Berhasil', '2023-01-29 17:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int NOT NULL,
  `metode` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `no` varchar(13) COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `ukuran` varchar(5) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_bayar`, `metode`, `no`, `logo`, `ukuran`) VALUES
(1, 'gopay', '081234567891', '/assets/images/gopay.png', '140'),
(2, 'Dana', '081234567891', '/assets/images/dana.png', '125'),
(3, 'Ovo', '081234567891', '/assets/images/ovo.png', '100'),
(4, 'LinkAja', '081234567891', '/assets/images/linkaja.png', '75'),
(5, 'ShopeePay', '081234567891', '/assets/images/spay.png', '125');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`);

--
-- Indexes for table `harga_ff`
--
ALTER TABLE `harga_ff`
  ADD PRIMARY KEY (`id_voucher`);

--
-- Indexes for table `harga_genshin`
--
ALTER TABLE `harga_genshin`
  ADD PRIMARY KEY (`id_voucher`);

--
-- Indexes for table `harga_ml`
--
ALTER TABLE `harga_ml`
  ADD PRIMARY KEY (`id_voucher`),
  ADD UNIQUE KEY `item` (`item`);

--
-- Indexes for table `harga_pubg`
--
ALTER TABLE `harga_pubg`
  ADD PRIMARY KEY (`id_voucher`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `order_ff`
--
ALTER TABLE `order_ff`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `item` (`item`),
  ADD KEY `metode` (`metode`) USING BTREE,
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `order_genshin`
--
ALTER TABLE `order_genshin`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `item` (`item`),
  ADD KEY `metode` (`metode`) USING BTREE,
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `order_ml`
--
ALTER TABLE `order_ml`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `item` (`item`),
  ADD KEY `metode` (`metode`) USING BTREE,
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `order_pubg`
--
ALTER TABLE `order_pubg`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `item` (`item`),
  ADD KEY `metode` (`metode`) USING BTREE,
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id_game` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `harga_ff`
--
ALTER TABLE `harga_ff`
  MODIFY `id_voucher` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `harga_genshin`
--
ALTER TABLE `harga_genshin`
  MODIFY `id_voucher` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `harga_ml`
--
ALTER TABLE `harga_ml`
  MODIFY `id_voucher` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `harga_pubg`
--
ALTER TABLE `harga_pubg`
  MODIFY `id_voucher` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_bayar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
