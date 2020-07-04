-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jun 2020 pada 15.49
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_store`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`id`, `nama`, `harga`, `gambar`) VALUES
(1, 'Jersey Home (2020) F.C. Barcelona ', 70000, 'https://firebasestorage.googleapis.com/v0/b/utsmobile-2a41e.appspot.com/o/picture%2Fimages_2.jpg?alt=media&token=276ced31-c348-430e-87af-dec9e9c69a62'),
(2, 'Jersey Home (2020) Juventus', 65000, 'https://firebasestorage.googleapis.com/v0/b/utsmobile-2a41e.appspot.com/o/picture%2Fimages_3.jpg?alt=media&token=c59115b7-c60b-4fe5-8fe7-ef4b373152f6'),
(3, 'Jersey Home (2020) Manchester United', 65000, 'https://firebasestorage.googleapis.com/v0/b/utsmobile-2a41e.appspot.com/o/picture%2Fimages_4.jpg?alt=media&token=a98895fd-0c9f-402a-9fef-3bc338c9b51e'),
(4, 'Jersey Home (2020) Chelsea', 75000, 'https://firebasestorage.googleapis.com/v0/b/utsmobile-2a41e.appspot.com/o/picture%2Fimages_5.jpg?alt=media&token=cf26c6c4-9ee6-48a1-ba54-eea71070917a'),
(5, 'Jersey Home (2020) Real Madrid', 70000, 'https://firebasestorage.googleapis.com/v0/b/utsmobile-2a41e.appspot.com/o/picture%2Fimages_6.jpg?alt=media&token=3f75a3fa-4a76-4fe8-9207-44cfbe07affb'),
(6, 'Jersey Home (2020) Borussia Dortmund', 65000, 'https://firebasestorage.googleapis.com/v0/b/utsmobile-2a41e.appspot.com/o/picture%2Fdortmund.jpg?alt=media&token=a810cfb1-6ed5-4ad2-9f5a-8d86707b97f4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_beli`
--

CREATE TABLE `data_beli` (
  `id_beli` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `namaUser` varchar(255) NOT NULL,
  `emailUser` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_beli`
--

INSERT INTO `data_beli` (`id_beli`, `id_barang`, `nama`, `harga`, `gambar`, `jumlah`, `total`, `namaUser`, `emailUser`, `alamat`) VALUES
(10, 3, 'Jersey Home (2020) Manchester United', 65000, 'https://firebasestorage.googleapis.com/v0/b/utsmobile-2a41e.appspot.com/o/picture%2Fimages_4.jpg?alt=media&token=a98895fd-0c9f-402a-9fef-3bc338c9b51e', 1, 95000, 'adi suartama', 'adisuartama12@gmail.com', 'Jakarta'),
(11, 2, 'Jersey Home (2020) Juventus', 65000, 'https://firebasestorage.googleapis.com/v0/b/utsmobile-2a41e.appspot.com/o/picture%2Fimages_3.jpg?alt=media&token=c59115b7-c60b-4fe5-8fe7-ef4b373152f6', 3, 225000, 'adi suartama', 'adisuartama12@gmail.com', 'Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_keranjang`
--

CREATE TABLE `data_keranjang` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_beli`
--
ALTER TABLE `data_beli`
  ADD PRIMARY KEY (`id_beli`);

--
-- Indeks untuk tabel `data_keranjang`
--
ALTER TABLE `data_keranjang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `data_beli`
--
ALTER TABLE `data_beli`
  MODIFY `id_beli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `data_keranjang`
--
ALTER TABLE `data_keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
