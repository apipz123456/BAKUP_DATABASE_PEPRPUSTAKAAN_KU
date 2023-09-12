-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2023 at 04:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_ku`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_perpustakaan`
--

CREATE TABLE `anggota_perpustakaan` (
  `NAMA` varchar(30) NOT NULL,
  `PRODI` varchar(40) NOT NULL,
  `NO_ANGGOTA` int(5) NOT NULL,
  `MASA_BERLAKU` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota_perpustakaan`
--

INSERT INTO `anggota_perpustakaan` (`NAMA`, `PRODI`, `NO_ANGGOTA`, `MASA_BERLAKU`) VALUES
('Adam Rahmat', 'TI', 1001, '2050-09-23'),
('Rizki Abdilah', 'TI', 1002, '2050-09-23'),
('Jordi Sandreas', 'TI', 1003, '2050-09-23'),
('Jauhan Aufa', 'TI', 1004, '2050-09-23'),
('Melky Alatomi', 'TI', 1005, '2050-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `NO_BUKU` int(5) NOT NULL,
  `KODE_PINJAM` varchar(5) NOT NULL,
  `JUDUL_BUKU` varchar(40) NOT NULL,
  `PENGARANG` varchar(20) NOT NULL,
  `PENERBIT` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`NO_BUKU`, `KODE_PINJAM`, `JUDUL_BUKU`, `PENGARANG`, `PENERBIT`) VALUES
(13, 'B51', 'Analogi Badan', 'Alchoir', 'Gramedia'),
(14, 'B52', 'Cara Menjadi Programer Tanpa Koding', 'Yusuf Maulana', 'Gramedia'),
(15, 'B53', 'Cara Menjadi Good Looking', 'Arsya Pradana', 'Al-mizan'),
(16, 'B54', 'Bersahabat Dengan Masalah', 'Shidiq Waliuddin', 'Al-Mizan'),
(17, 'B55', 'Dosenku Phalawanku', 'Hibed Tulloh', 'Al-mizan');

-- --------------------------------------------------------

--
-- Table structure for table `cd`
--

CREATE TABLE `cd` (
  `NO_CD` int(5) NOT NULL,
  `KODE_PINJAM` varchar(5) NOT NULL,
  `JUDUL_CD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cd`
--

INSERT INTO `cd` (`NO_CD`, `KODE_PINJAM`, `JUDUL_CD`) VALUES
(4320, 'B40', 'Atomic Habits'),
(4321, 'B41', 'Do You Do'),
(4322, 'B42', 'Laskar pELANGI');

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `NO_ANGGOTA` int(5) NOT NULL,
  `KODE_DENDA` varchar(5) NOT NULL,
  `BAYAR_DENDA` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`NO_ANGGOTA`, `KODE_DENDA`, `BAYAR_DENDA`) VALUES
(1001, 'D01', 100000),
(1002, 'D02', 55000),
(1003, 'D03', 27000),
(1004, 'D04', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(15) NOT NULL,
  `NAMA` varchar(30) DEFAULT NULL,
  `PRODI` char(5) DEFAULT NULL,
  `ASRAMA` varchar(10) NOT NULL,
  `SEMESTER` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `NAMA`, `PRODI`, `ASRAMA`, `SEMESTER`) VALUES
('432022611040', 'Adam Rahmat', 'TI', 'Abu Bakar', 3),
('432022611041', 'Rizki Abdilah', 'TI', 'Abu Bakar', 3),
('432022611042', 'Jordi Sandreas', 'TI', 'Abu Bakar', 3),
('432022611043', 'Jauhan Aufa', 'TI', 'Abu Bakar', 8),
('432022611044', 'Melky Alatomi', 'TI', 'Abu Bakar', 8),
('432022611045', 'Adi Musmas', 'TI', 'Abu Bakar', 8),
('432022611046', 'Gus Dafasesa', 'TI', 'Abu Bakar', 8),
('432022611047', 'Nafi Faruki', 'TI', 'Abu Bakar', 10),
('432022611048', 'Bayhaqi Alhebroni', 'TI', 'Abu Bakar', 10),
('432022611049', 'Muadz Fadhil', 'TI', 'Abu Bakar', 10);

-- --------------------------------------------------------

--
-- Table structure for table `membayar`
--

CREATE TABLE `membayar` (
  `NAMA` varchar(15) NOT NULL,
  `NO_ANGGOTA` int(5) NOT NULL,
  `KODE_DENDA` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membayar`
--

INSERT INTO `membayar` (`NAMA`, `NO_ANGGOTA`, `KODE_DENDA`) VALUES
('Adam Rahmat', 1001, 'D01'),
('Rizki Abdilah', 1002, 'D02'),
('Jordi Sandreas', 1003, 'D03'),
('Jauhan Aufa', 1004, 'D04');

-- --------------------------------------------------------

--
-- Table structure for table `meminjam`
--

CREATE TABLE `meminjam` (
  `NAMA` varchar(30) NOT NULL,
  `KODE_PINJAM` varchar(5) NOT NULL,
  `NO_ANGGOTA` int(5) NOT NULL,
  `TANGGAL_KEMBALI` date NOT NULL,
  `TANGGAL_PINJAM` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meminjam`
--

INSERT INTO `meminjam` (`NAMA`, `KODE_PINJAM`, `NO_ANGGOTA`, `TANGGAL_KEMBALI`, `TANGGAL_PINJAM`) VALUES
('Adam Rahmat', 'B40', 1001, '2051-01-09', '2050-12-19'),
('Rizki Abdilah', 'B41', 1002, '2051-01-09', '2050-12-19'),
('Jordi Sandreas', 'B42', 1003, '2051-01-09', '2050-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `mendaftar`
--

CREATE TABLE `mendaftar` (
  `NIM` varchar(15) NOT NULL,
  `NAMA` varchar(30) NOT NULL,
  `PRODI` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mendaftar`
--

INSERT INTO `mendaftar` (`NIM`, `NAMA`, `PRODI`) VALUES
('432022611040', 'Adam Rahmat', 'TI'),
('432022611041', 'Rizki Abdilah', 'TI'),
('432022611042', 'Jordi Sandreas', 'TI'),
('432022611043', 'Jauhan Aufa', 'TI'),
('432022611044', 'Melky Alatomi', 'TI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_perpustakaan`
--
ALTER TABLE `anggota_perpustakaan`
  ADD PRIMARY KEY (`NO_ANGGOTA`);

--
-- Indexes for table `meminjam`
--
ALTER TABLE `meminjam`
  ADD PRIMARY KEY (`NO_ANGGOTA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota_perpustakaan`
--
ALTER TABLE `anggota_perpustakaan`
  MODIFY `NO_ANGGOTA` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `meminjam`
--
ALTER TABLE `meminjam`
  MODIFY `NO_ANGGOTA` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
