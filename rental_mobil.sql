-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2020 at 03:56 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `username`, `alamat`, `gender`, `no_telepon`, `no_ktp`, `password`, `role_id`) VALUES
(1, 'Rida T Hapsari', 'rida', 'Gamping Sleman', 'Perempuan', '052211343222', '34333334432', 'a3988f5f0207161da7eb97d0fe5d371e', 0),
(3, 'Irma Tian', 'Irmayanti', 'Delingsari, Ambarketawang, Gamping, Sleman', 'Perempuan', '052211343210', '34333334432900', '1e48c4420b7073bc11916c6c1de226bb', 0),
(4, 'lusi', 'Lusiawaliya', 'Ciawi Bogor Jawa Barat', 'Perempuan', '052211343214', '34333334432900', '9092efda73f6df493b9c214cafe9a2ec', 0),
(5, 'ahni', 'anhinuraini', 'Sorong papua', 'Perempuan', '052211343010', '343333343422', 'b0baee9d279d34fa1dfd71aadb908c3f', 2),
(6, 'Irma Yanti', 'admin', 'Yogyakarta', 'Perempuan', '09221122322', '1233322323221', '1e48c4420b7073bc11916c6c1de226bb', 1),
(7, 'Ahni Nuraini', 'ahninur', 'Ambarketawang Gamping Sleman ', 'Perempuan', '052211343200', '34333331132900', '38f629170ac3ab74b9d6d2cc411c2f3c', 2),
(8, 'Irfan Afandi', 'irfan', 'Gamping Sleman Yogyakarta', 'Laki-Laki', '05221143122', '3433332443210', '38f629170ac3ab74b9d6d2cc411c2f3c', 2),
(9, 'Riska Putri', 'riska', 'Mejing Sleman', 'Perempuan', '051111343010', '34322331132900', '1f6419b1cbe79c71410cb320fc094775', 2),
(10, 'Riska Putri', 'riska', 'Mejing Sleman', 'Perempuan', '051111343010', '34322331132900', '1f6419b1cbe79c71410cb320fc094775', 2),
(11, 'Riska Putri', 'riska', 'Mejing Sleman', 'Perempuan', '051111343010', '34322331132900', '1f6419b1cbe79c71410cb320fc094775', 2),
(12, 'Riska Putri', 'riska', 'Mejing Sleman', 'Perempuan', '051111343010', '34322331132900', '1f6419b1cbe79c71410cb320fc094775', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `kode_type` varchar(120) NOT NULL,
  `merk` varchar(120) NOT NULL,
  `no_plat` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `status` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `ac` int(11) NOT NULL,
  `supir` int(11) NOT NULL,
  `mp3_player` int(11) NOT NULL,
  `central_lock` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `kode_type`, `merk`, `no_plat`, `warna`, `tahun`, `status`, `harga`, `denda`, `ac`, `supir`, `mp3_player`, `central_lock`, `gambar`) VALUES
(1, 'SDN', 'Toyota Camry', 'B2321BA', 'Hitam', '2014', '0', 300000, 100000, 1, 0, 1, 0, 'sedan11.jpg'),
(8, 'SDN', 'Toyota Yaris', 'B2301FA', 'Merah', '2017', '0', 500000, 100000, 1, 0, 1, 0, 'sedan3.jpg'),
(9, 'SDN', 'Grand Livia', 'B2300LQ', 'Hitam', '2014', '0', 400000, 100000, 1, 1, 1, 0, 'sedan41.jpg'),
(11, 'SC', 'Honda Jazz', 'AB3012LG', 'Silver', '2019', '0', 400000, 100000, 1, 0, 1, 0, 'Jazz1.jpg'),
(18, 'SDN', 'Alphard Hitam', 'AB9090LU', 'Hitam', '2017', '0', 700000, 150000, 1, 1, 1, 1, 'alphard_hitam.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `tanggal_rental` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `status_rental` varchar(50) NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tanggal_rental` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `harga` varchar(120) NOT NULL,
  `denda` varchar(120) NOT NULL,
  `total_denda` varchar(120) NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL,
  `status_rental` varchar(50) NOT NULL,
  `bukti_pembayaran` varchar(120) NOT NULL,
  `status_pembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_rental`, `id_customer`, `id_mobil`, `tanggal_rental`, `tanggal_kembali`, `harga`, `denda`, `total_denda`, `tanggal_pengembalian`, `status_pengembalian`, `status_rental`, `bukti_pembayaran`, `status_pembayaran`) VALUES
(3, 8, 8, '2020-12-16', '2020-12-17', '500000', '100000', '100000', '2020-12-18', 'Kembali', 'Selesai', 'irma.png', 0),
(14, 8, 1, '2020-12-30', '2020-12-31', '300000', '100000', '100000', '2021-01-01', 'Kembali', 'Selesai', 'Proker_Humas_20_21_-_Sheet1.pdf', 1),
(16, 9, 9, '2020-12-29', '2020-12-30', '400000', '100000', '100000', '2020-12-31', 'Kembali', 'Selesai', 'logo1.jpg', 1),
(20, 9, 18, '2020-12-29', '2020-12-30', '700000', '150000', '300000', '2021-01-01', 'Kembali', 'Selesai', 'form_input2.PNG', 1),
(21, 9, 11, '2020-12-30', '2020-12-31', '400000', '100000', '0', '0000-00-00', 'Belum Kembali', 'Belum Selesai', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `kode_type` varchar(10) NOT NULL,
  `nama_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id_type`, `kode_type`, `nama_type`) VALUES
(1, 'SDN', 'Sedan'),
(3, 'SC', 'Sport Car');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
