-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2023 pada 20.43
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digilib_tk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip` char(50) NOT NULL,
  `gelar_depan` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gelar_belakang` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `tlp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `gelar_depan`, `nama`, `gelar_belakang`, `alamat`, `tlp`) VALUES
('196104241989031001', 'Ir.', 'ENDRO WASITO', 'M.Kom', 'JI. Bukit Kelapa Kopyor XI/ B1-03 RT. 06/14 Meteseh Tembalang Semarang', '081390919839'),
('196710171997022001', '', 'SRI ANGGRAENI KADIRAN', 'S.T., M.En', 'Jln. Bendungan Payung Mas G 43 RT. 05/10 Pudakpayung, Banyumanik, Semarang', '0247478401'),
('197908102006041001', '', 'HELMY', 'S.T., M.En', 'JI. Raden Patah (Kp. Bedug 176 C) Semarang', '08112708186');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `lastlogin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`, `lastlogin`) VALUES
('admin', '$2y$10$HH9Vy79j4DjrlghS8sqot.h7BWLEgs22cA0aYv971no.MW6YnEyte', '2023-06-11 15:24:24'),
('admin', '$2y$10$hddkXkH2eyQmQQ6r0otuFOuughozYGGZTWOLyyc7BY9IEpdUFCzoS', '2023-06-11 15:24:30'),
('admin', '$2y$10$7laRvqu8Zc3M29MmIRObjuSbgVfSsh3lXXmjXZw7Si6/SXSYesxBa', '2023-06-11 15:24:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `nim` char(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `tlp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`nim`, `nama`, `kelas`, `alamat`, `jurusan`, `prodi`, `kota`, `tlp`) VALUES
('3.34.21.0.21', 'Rangga Prabaswaraa', 'TE-4A', 'Gedawang Pesona Asri G/9', 'Teknik Elektro', 'D3 - Telekomunikasi', 'Semarang', '0895415042'),
('3.34.21.0.22', 'Ghina Cantik', 'TK-3A', 'Gedawang Pesona Asri G/9', 'Teknik Elektro', 'D4 - Telekomunikasi', 'Semarang', '0895415042');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pustaka1`
--

CREATE TABLE `pustaka1` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tahun` int(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `pembimbing1` varchar(255) NOT NULL,
  `pembimbing2` varchar(255) NOT NULL,
  `ketua_penguji` varchar(255) NOT NULL,
  `penguji1` varchar(255) NOT NULL,
  `penguji2` varchar(255) NOT NULL,
  `penguji3` varchar(255) NOT NULL,
  `sekretaris` varchar(255) NOT NULL,
  `nama_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pustaka1`
--

INSERT INTO `pustaka1` (`id`, `judul`, `tahun`, `tipe`, `pembimbing1`, `pembimbing2`, `ketua_penguji`, `penguji1`, `penguji2`, `penguji3`, `sekretaris`, `nama_file`) VALUES
(1, 'yayasan', 2023, 'Magang', '197908102006041001', 'Pembimbing 2', '', 'Penguji 1', 'Penguji 2', 'Penguji 3', 'Sekretaris', '33421021_Rangga Prabaswara_Flappy Bird.docx'),
(2, 'IOTRangga', 2022, 'TA', 'Pembimbing 1', 'Pembimbing 2', 'Ketua Penguji', 'Penguji 1', 'Penguji 2', 'Penguji 3', 'Sekretaris', 'Kelompok Falppy Bird.docx'),
(3, 'jurnal dosen', 2023, 'TA', 'Pembimbing 1', 'Pembimbing 2', 'Ketua Penguji', 'Penguji 1', 'Penguji 2', 'Penguji 3', 'Sekretaris', 'PEMROGRAMAN GAME 3.docx.pdf'),
(4, 'jurnal dosen3455', 2023, 'TA', '196104241989031001', 'Pembimbing 2', '196104241989031001', 'Penguji 1', 'Penguji 2', 'Penguji 3', 'Sekretaris', 'PEMROGRAMAN GAME 3.docx.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pustaka2`
--

CREATE TABLE `pustaka2` (
  `id` int(50) NOT NULL,
  `id_judul` varchar(250) NOT NULL,
  `nim` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pustaka2`
--

INSERT INTO `pustaka2` (`id`, `id_judul`, `nim`) VALUES
(5, '3', '3.34.21.0.22'),
(6, '3', '33333345'),
(15, '4', '3.34.21.0.21'),
(16, '4', '33333345');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `pustaka1`
--
ALTER TABLE `pustaka1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pustaka2`
--
ALTER TABLE `pustaka2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pustaka1`
--
ALTER TABLE `pustaka1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pustaka2`
--
ALTER TABLE `pustaka2`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
