-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Apr 2023 pada 03.39
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stars`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `account_admin`
--

CREATE TABLE `account_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `flag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `account_admin`
--

INSERT INTO `account_admin` (`id`, `username`, `password`, `flag`) VALUES
(1, 'admin', 'p@ssw0rd@min', 'ctf{a920e9d9bbe1bff5985766491cccaa2c}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `account_users`
--

CREATE TABLE `account_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `flag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `account_users`
--

INSERT INTO `account_users` (`id`, `username`, `password`, `flag`) VALUES
(1, 'user', 'p@ssw0rd3dd', 'ctf{b07f9125110d375a1442cca8e567cb2c}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `flag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `name`, `total`, `flag`) VALUES
(1, 'Buku Tulis', 13, ''),
(2, 'Penggaris', 14, ''),
(3, 'Bendera', 1, 'ctf{68fa54b662a14cc3839947aa561a0dce}'),
(4, 'Pensil', 21, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `account_admin`
--
ALTER TABLE `account_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `account_users`
--
ALTER TABLE `account_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `account_admin`
--
ALTER TABLE `account_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `account_users`
--
ALTER TABLE `account_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
