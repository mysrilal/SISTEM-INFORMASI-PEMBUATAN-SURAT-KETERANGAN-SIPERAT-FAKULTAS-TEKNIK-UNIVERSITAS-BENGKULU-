-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Mar 2024 pada 01.46
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siperat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `ID` varchar(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Password` int(11) NOT NULL,
  `foto_profil` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`ID`, `Nama`, `Password`, `foto_profil`) VALUES
('1', 'admin', 123, ''),
('2', 'yusril', 123, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `NPM` varchar(9) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Prodi` varchar(100) NOT NULL,
  `Jenis_Kelamin` varchar(20) NOT NULL,
  `Fakultas` varchar(50) NOT NULL,
  `Tahun_Masuk` int(10) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Perguruan_Tinggi` varchar(40) NOT NULL,
  `Status_User` int(5) NOT NULL,
  `foto_profil` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_mahasiswa`
--

INSERT INTO `data_mahasiswa` (`NPM`, `Nama`, `Prodi`, `Jenis_Kelamin`, `Fakultas`, `Tahun_Masuk`, `Status`, `Perguruan_Tinggi`, `Status_User`, `foto_profil`) VALUES
('G1F018002', 'Desviansyah yoga', 'SISTEM INFORMASI', 'Laki - Laki', 'TEKNIK', 2018, 'Aktif', 'UNIB', 1, 'default'),
('G1F018028', 'Muhammad Yusril Alfareza', 'SISTEM INFORMASI', 'Laki - Laki', 'TEKNIK', 2018, 'Aktif', 'UNIVERSITAS BENGKULU', 1, 'default'),
('G1F018031', 'Irvan repaldo', 'SISTEM INFORMASI', 'Laki - Laki', 'TEKNIK', 2018, 'Cuti', 'UNIB', 1, 'default');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_surat`
--

CREATE TABLE `data_surat` (
  `ID` int(40) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jenis` varchar(10) NOT NULL,
  `Content` varchar(999) NOT NULL,
  `ID_Pengaju` varchar(9) NOT NULL,
  `Semester` varchar(100) NOT NULL,
  `Status_ACC` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_surat`
--

INSERT INTO `data_surat` (`ID`, `Nama`, `Jenis`, `Content`, `ID_Pengaju`, `Semester`, `Status_ACC`) VALUES
(99, 'Surat Keterangan Aktif Kuliah', 'Keperluan', '', 'G1F018002', '', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `query_surat`
--

CREATE TABLE `query_surat` (
  `ID` int(40) NOT NULL,
  `Semester` varchar(100) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jenis` varchar(10) NOT NULL,
  `Content` varchar(999) NOT NULL,
  `ID_Pengaju` varchar(9) NOT NULL,
  `Nama_Ortu` varchar(100) NOT NULL,
  `Nip_Ortu` varchar(18) NOT NULL,
  `Golongan` varchar(100) NOT NULL,
  `Instansi` varchar(100) NOT NULL,
  `Tujuan` varchar(100) NOT NULL,
  `Status_ACC` int(2) NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `Penelitian` varchar(300) NOT NULL,
  `Pembimbing` varchar(300) NOT NULL,
  `Alasan` varchar(100) NOT NULL,
  `Surat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `query_surat`
--

INSERT INTO `query_surat` (`ID`, `Semester`, `Nama`, `Jenis`, `Content`, `ID_Pengaju`, `Nama_Ortu`, `Nip_Ortu`, `Golongan`, `Instansi`, `Tujuan`, `Status_ACC`, `gambar`, `Penelitian`, `Pembimbing`, `Alasan`, `Surat`) VALUES
(250, '5', 'Surat Keterangan Aktif Kuliah', 'beasiswa', '', 'G1F018002', '', '', '', '', '', 1, '', '', '', '', ''),
(251, '5', 'Surat Keterangan Aktif Kuliah', 'Keperluan', '', 'G1F018002', 'aziz', '1253212', '3C', 'PNS', '', 2, 'sk_jabatan.jpg', '', '', '', 'surat2.pdf'),
(252, '5', 'Surat Penelitian', 'penelitian', '', 'G1F018002', '', '', '', '', 'unib', 3, '', 'pemrograman', 'Mochammad Yusa', 'data tidak valid', ''),
(253, '1', 'Surat Keterangan Aktif Kuliah', 'beasiswa', '', 'G1F018028', '', '', '', '', '', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `NPM` varchar(9) NOT NULL,
  `Password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`NPM`, `Password`) VALUES
('G1F018028', '123'),
('G1F018031', '123'),
('G1F018002', '12345');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`NPM`);

--
-- Indeks untuk tabel `data_surat`
--
ALTER TABLE `data_surat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Pengaju` (`ID_Pengaju`);

--
-- Indeks untuk tabel `query_surat`
--
ALTER TABLE `query_surat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Pengaju` (`ID_Pengaju`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD KEY `NIK` (`NPM`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_surat`
--
ALTER TABLE `data_surat`
  MODIFY `ID` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `query_surat`
--
ALTER TABLE `query_surat`
  MODIFY `ID` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_surat`
--
ALTER TABLE `data_surat`
  ADD CONSTRAINT `data_surat_ibfk_1` FOREIGN KEY (`ID_Pengaju`) REFERENCES `data_mahasiswa` (`NPM`);

--
-- Ketidakleluasaan untuk tabel `query_surat`
--
ALTER TABLE `query_surat`
  ADD CONSTRAINT `query_surat_ibfk_1` FOREIGN KEY (`ID_Pengaju`) REFERENCES `data_mahasiswa` (`NPM`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`NPM`) REFERENCES `data_mahasiswa` (`NPM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
