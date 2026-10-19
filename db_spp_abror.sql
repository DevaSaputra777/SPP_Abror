-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 19, 2026 at 06:37 AM
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
-- Database: `db_spp_abror`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
('K01', 'XII RPL 1', 'Rekayasa Perangkat Lunak 2'),
('K02', 'XII RPL 2', 'Rekayasa Perangkat Lunak');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int NOT NULL,
  `no_bayar` varchar(11) DEFAULT NULL,
  `id_petugas` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nisn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tgl_pembayaran` date DEFAULT NULL,
  `bulan_tagihan` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tahun_tagihan` int DEFAULT NULL,
  `id_spp` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Keterangan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `no_bayar`, `id_petugas`, `nisn`, `tgl_pembayaran`, `bulan_tagihan`, `tahun_tagihan`, `id_spp`, `Keterangan`) VALUES
(13, '2607290001', 'A01', '09010', '2026-07-29', 'Juli', 2026, 'SPP1', 'LUNAS'),
(14, '2607290002', 'A01', '09010', '2026-07-29', 'Agustus', 2026, 'SPP1', 'LUNAS'),
(15, '2607290004', 'A01', '09010', '2026-07-29', 'September', 2026, 'SPP1', 'LUNAS'),
(16, '2608050002', 'A01', '09010', '2026-08-05', 'Oktober', 2026, 'SPP1', 'LUNAS'),
(17, '2608060001', 'A01', '09010', '2026-08-06', 'November', 2026, 'SPP1', 'LUNAS'),
(18, '2608260002', 'A01', '09010', '2026-08-26', 'Desember', 2026, 'SPP1', 'LUNAS'),
(19, '2607290003', 'A01', '09010', '2026-07-29', 'Januari', 2027, 'SPP1', 'LUNAS'),
(20, '2608260001', 'A01', '09010', '2026-08-26', 'Februari', 2027, 'SPP1', 'LUNAS'),
(21, NULL, NULL, '09010', NULL, ' Maret', 2027, 'SPP1', NULL),
(22, NULL, NULL, '09010', NULL, 'April', 2027, 'SPP1', NULL),
(23, '2608060002', 'A01', '09010', '2026-08-06', 'Mei', 2027, 'SPP1', 'LUNAS'),
(24, '2608050001', 'A01', '09010', '2026-08-05', 'Juni', 2027, 'SPP1', 'LUNAS'),
(25, '2607290006', 'A01', '1212121212', '2026-07-29', 'Juli', 2026, 'SPP0', 'LUNAS'),
(26, '2608030001', 'A01', '1212121212', '2026-08-03', 'Agustus', 2026, 'SPP0', 'LUNAS'),
(27, '2608050003', 'A01', '1212121212', '2026-08-05', 'September', 2026, 'SPP0', 'LUNAS'),
(28, '2608050005', 'A01', '1212121212', '2026-08-05', 'Oktober', 2026, 'SPP0', 'LUNAS'),
(29, NULL, NULL, '1212121212', NULL, 'November', 2026, 'SPP0', NULL),
(30, '2608050004', 'A01', '1212121212', '2026-08-05', 'Desember', 2026, 'SPP0', 'LUNAS'),
(31, NULL, NULL, '1212121212', NULL, 'Januari', 2027, 'SPP0', NULL),
(32, NULL, NULL, '1212121212', NULL, 'Februari', 2027, 'SPP0', NULL),
(33, '2608060006', 'A01', '1212121212', '2026-08-06', ' Maret', 2027, 'SPP0', 'LUNAS'),
(34, '2608060003', 'A01', '1212121212', '2026-08-06', 'April', 2027, 'SPP0', 'LUNAS'),
(35, '2608050006', 'A01', '1212121212', '2026-08-05', 'Mei', 2027, 'SPP0', 'LUNAS'),
(36, '2608030002', 'A01', '1212121212', '2026-08-03', 'Juni', 2027, 'SPP0', 'LUNAS'),
(37, '2607290005', 'A01', '1234567891', '2026-07-29', 'Juli', 2026, 'SPP1', 'LUNAS'),
(38, '2608060004', 'A01', '1234567891', '2026-08-06', 'Agustus', 2026, 'SPP1', 'LUNAS'),
(39, '2608060005', 'A01', '1234567891', '2026-08-06', 'September', 2026, 'SPP1', 'LUNAS'),
(40, NULL, NULL, '1234567891', NULL, 'Oktober', 2026, 'SPP1', NULL),
(41, NULL, NULL, '1234567891', NULL, 'November', 2026, 'SPP1', NULL),
(42, NULL, NULL, '1234567891', NULL, 'Desember', 2026, 'SPP1', NULL),
(43, NULL, NULL, '1234567891', NULL, 'Januari', 2027, 'SPP1', NULL),
(44, NULL, NULL, '1234567891', NULL, 'Februari', 2027, 'SPP1', NULL),
(45, NULL, NULL, '1234567891', NULL, ' Maret', 2027, 'SPP1', NULL),
(46, NULL, NULL, '1234567891', NULL, 'April', 2027, 'SPP1', NULL),
(47, NULL, NULL, '1234567891', NULL, 'Mei', 2027, 'SPP1', NULL),
(48, NULL, NULL, '1234567891', NULL, 'Juni', 2027, 'SPP1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('admin','petugas',',') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
('A01', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Deva', 'admin'),
('A02', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'Aved', 'petugas'),
('A03', 'Putra', 'c2b748829292b9b15f618ffb2642d1db', 'Abror', 'petugas'),
('A04', 'Ating', 'e10adc3949ba59abbe56e057f20f883e', 'Atir', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `id_spp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
('09010', '44', 'Alicia', 'K01', 'Banjarbaru', '090098', 'SPP1'),
('1212121212', '111', 'Deva', 'K01', 'Bjb', '01234567890', 'SPP0'),
('1234567891', '12345678', 'Tejo', 'K02', 'Bjm', '08912392', 'SPP1');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` varchar(5) NOT NULL,
  `tahun` int NOT NULL,
  `nominal` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
('SPP0', 2026, 100000),
('SPP1', 2026, 6700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
