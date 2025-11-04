-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Nov 2025 pada 11.20
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siketanda`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jabatan_admin` varchar(100) DEFAULT NULL,
  `status_admin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `id_user`, `jabatan_admin`, `status_admin`) VALUES
(1, 1, 'Administrator Utama', 'Aktif'),
(2, 2, 'Administrator Wilayah Cimahi', 'Aktif'),
(3, 3, 'Administrator Gudang Pangan', 'Non-Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `kontak` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `id_user`, `alamat`, `kontak`) VALUES
(1, 7, 'Jl. Melati 10', '0811111111'),
(2, 8, 'Jl. Kenanga 2', '0822222222'),
(3, 7, 'Jl. Mawar 5', '0833333333'),
(4, 8, 'Jl. Dahlia 3', '0844444444');

-- --------------------------------------------------------

--
-- Struktur dari tabel `distribusi`
--

CREATE TABLE `distribusi` (
  `id_distribusi` int(11) NOT NULL,
  `jumlah_terkirim` varchar(20) DEFAULT NULL,
  `tanggal_distribusi` date DEFAULT NULL,
  `status_distribusi` varchar(20) DEFAULT NULL,
  `id_panen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `distribusi`
--

INSERT INTO `distribusi` (`id_distribusi`, `jumlah_terkirim`, `tanggal_distribusi`, `status_distribusi`, `id_panen`) VALUES
(2, '600', '2025-10-21', 'Dikirim', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `distributor`
--

CREATE TABLE `distributor` (
  `id_distributor` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kapasitas` varchar(50) DEFAULT NULL,
  `status_stok` varchar(20) DEFAULT NULL,
  `harga_jual` varchar(50) DEFAULT NULL,
  `status_distribusi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `distributor`
--

INSERT INTO `distributor` (`id_distributor`, `id_user`, `kapasitas`, `status_stok`, `harga_jual`, `status_distribusi`) VALUES
(1, 5, '5000', 'Menipis', '2500', 'Aktif'),
(2, 6, '3000', 'Tersedia', '3000', 'Aktif'),
(3, 5, '2000', 'Menipis', '2800', 'Aktif'),
(4, 6, '4000', 'Tersedia', '2700', 'Aktif'),
(5, 6, '1000', 'Habis', '3200', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `panen`
--

CREATE TABLE `panen` (
  `id_panen` int(11) NOT NULL,
  `nama_komoditas` varchar(100) DEFAULT NULL,
  `jumlah_panen` decimal(10,2) DEFAULT NULL,
  `harga_panen` decimal(12,2) DEFAULT NULL,
  `tanggal_panen` date DEFAULT NULL,
  `id_petani` int(11) DEFAULT NULL,
  `id_distribusi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `panen`
--

INSERT INTO `panen` (`id_panen`, `nama_komoditas`, `jumlah_panen`, `harga_panen`, `tanggal_panen`, `id_petani`, `id_distribusi`) VALUES
(2, 'Jagung', 800.00, 1200000.00, '2025-10-18', 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemerintah`
--

CREATE TABLE `pemerintah` (
  `id_pemerintah` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `tugas_wilayah` varchar(100) DEFAULT NULL,
  `tugas_ngawas` varchar(100) DEFAULT NULL,
  `id_panen` int(11) DEFAULT NULL,
  `id_petani` int(11) DEFAULT NULL,
  `laporan_keluhan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemerintah`
--

INSERT INTO `pemerintah` (`id_pemerintah`, `id_user`, `jabatan`, `tugas_wilayah`, `tugas_ngawas`, `id_panen`, `id_petani`, `laporan_keluhan`) VALUES
(1, 4, 'Pegawai Dinas Pertanian', 'Kecamatan Suka Makmur', 'Mengawasi panen padi', 1, 2, 'Keluhan tentang hama tikus di sawah Blok C'),
(2, 4, 'Pegawai Dinas Pertanian', 'Kecamatan Suka Makmur', 'Mengawasi panen padi', 1, 2, 'Keluhan tentang hama tikus di sawah Blok C'),
(3, 9, 'Kepala Bidang Ketahanan Pangan', 'Kabupaten Sukajadi', 'Memantau distribusi beras', 1, NULL, 'Distribusi terlambat karena cuaca'),
(4, 10, 'Petugas Lapangan', 'Desa Sukamaju', 'Memonitor stok beras', 1, NULL, 'Petani kesulitan mendapatkan pupuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petani`
--

CREATE TABLE `petani` (
  `id_petani` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `komoditas` varchar(50) DEFAULT NULL,
  `wilayah_petani` varchar(100) DEFAULT NULL,
  `keluhan` varchar(500) DEFAULT NULL,
  `status_panen` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petani`
--

INSERT INTO `petani` (`id_petani`, `id_user`, `komoditas`, `wilayah_petani`, `keluhan`, `status_panen`) VALUES
(2, 3, 'Jagung', 'Cimahi Tengah', 'Cuaca ekstrem', 'Panen'),
(43, 13, 'Jagung', 'Cimahi Barat', 'Tanah kering', 'Panen'),
(44, 13, 'Cabai', 'Cimahi Selatan', 'Serangan ulat', 'Proses'),
(45, 14, 'Tomat', 'Cimahi Timur', 'Kelebihan air', 'Tumbuh'),
(46, 14, 'Bawang Merah', 'Cimahi Tengah', 'Harga tinggi', 'Panen'),
(47, 15, 'Padi', 'Cimahi Selatan', 'Cuaca ekstrem', 'Proses'),
(48, 15, 'Jagung', 'Cimahi Timur', 'Normal', 'Panen'),
(49, 16, 'Kedelai', 'Cimahi Barat', 'Kurang pupuk', 'Proses'),
(50, 16, 'Cabai', 'Cimahi Tengah', 'Harga bibit naik', 'Tumbuh'),
(51, 2, 'Padi', 'Cimahi Selatan', 'Serangan hama wereng', 'Panen'),
(52, 2, 'Kedelai', 'Cimahi Tengah', 'Harga bibit naik', 'Tumbuh'),
(53, 2, 'Tomat', 'Cimahi Barat', 'Cuaca ekstrem', 'Proses'),
(54, 2, 'Jagung', 'Cimahi Utara', 'Normal', 'Proses'),
(56, 3, 'Bawang Merah', 'Cimahi Timur', 'Tanah keras', 'Panen'),
(57, 3, 'Jagung', 'Cimahi Selatan', 'Hama ulat', 'Proses'),
(58, 3, 'Padi', 'Cimahi Barat', 'Cuaca lembab', 'Panen'),
(60, 2, 'Kedelai', 'Cimahi Tengah', 'Harga gabah turun', 'Proses'),
(61, 2, 'Tomat', 'Cimahi Barat', 'Cuaca panas ekstrem', 'Tumbuh'),
(62, 2, 'Jagung', 'Cimahi Utara', 'Pupuk langka', 'Siap'),
(63, 2, 'Bawang Merah', 'Cimahi Tengah', 'Normal', 'Proses'),
(71, 3, 'Jagung', 'Cimahi Selatan', 'Hama ulat', 'Tumbuh'),
(72, 3, 'Padi', 'Cimahi Barat', 'Cuaca lembab', 'Proses'),
(73, 13, 'Padi', 'Cimahi Utara', 'Harga gabah turun', 'Panen'),
(74, 13, 'Kedelai', 'Cimahi Tengah', 'Cuaca lembab', 'Proses'),
(75, 13, 'Tomat', 'Cimahi Selatan', 'Normal', 'Proses'),
(76, 15, 'Jagung', 'Cimahi Timur', 'Harga pupuk naik', 'Proses'),
(77, 15, 'Bawang Merah', 'Cimahi Selatan', 'Serangan hama ulat buah', 'Panen'),
(78, 14, 'Cabai', 'Cimahi Tengah', 'Kelebihan air', 'Proses'),
(79, 14, 'Tomat', 'Cimahi Tengah', 'Daun menguning', 'Tumbuh'),
(80, 16, 'Jagung', 'Cimahi Tengah', 'Harga stabil', 'Panen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `jumlah_transaksi` varchar(100) DEFAULT NULL,
  `harga_total` varchar(100) DEFAULT NULL,
  `tanggal_transaksi` varchar(50) DEFAULT NULL,
  `status_transaksi` varchar(50) DEFAULT NULL,
  `id_distribusi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `jumlah_transaksi`, `harga_total`, `tanggal_transaksi`, `status_transaksi`, `id_distribusi`) VALUES
(2, '600', '1800000', '2025-10-23', 'Selesai', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `role` enum('admin','petani','pemerintah','distributor','customer') NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `role`, `email`) VALUES
(1, 'Admin Utama', 'admin1', '12345', 'admin', NULL),
(2, 'Budi Santoso', 'petani1', '12345', 'petani', NULL),
(3, 'Siti Aminah', 'petani2', '12345', 'petani', NULL),
(4, 'Dinas Pertanian Cimahi', 'pem1', '12345', 'pemerintah', NULL),
(5, 'aya', 'admin23', '12345', 'admin', NULL),
(6, 'PT Tani Makmur', 'dis2', '12345', 'distributor', NULL),
(7, 'Ibu Sari', 'cust1', '12345', 'customer', NULL),
(8, 'Pak Rudi', 'cust2', '12345', 'customer', NULL),
(9, 'Badan Ketahanan Pangan', 'pem2', '12345', 'pemerintah', NULL),
(10, 'Petugas Lapangan Sukamaju', 'pem3', '12345', 'pemerintah', NULL),
(13, 'Ahmad Yusuf', 'petani3', '12345', 'petani', NULL),
(14, 'Rina Marlina', 'petani4', '12345', 'petani', NULL),
(15, 'Dewi Anggraeni', 'petani5', '12345', 'petani', NULL),
(16, 'Eko Prasetyo', 'petani6', '12345', 'petani', NULL),
(17, 'Rudi Hartono', 'petani7', '12345', 'petani', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `distribusi`
--
ALTER TABLE `distribusi`
  ADD PRIMARY KEY (`id_distribusi`),
  ADD KEY `id_panen` (`id_panen`);

--
-- Indeks untuk tabel `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`id_distributor`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `panen`
--
ALTER TABLE `panen`
  ADD PRIMARY KEY (`id_panen`),
  ADD KEY `id_petani` (`id_petani`);

--
-- Indeks untuk tabel `pemerintah`
--
ALTER TABLE `pemerintah`
  ADD PRIMARY KEY (`id_pemerintah`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_petani` (`id_petani`);

--
-- Indeks untuk tabel `petani`
--
ALTER TABLE `petani`
  ADD PRIMARY KEY (`id_petani`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_distribusi` (`id_distribusi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pemerintah`
--
ALTER TABLE `pemerintah`
  MODIFY `id_pemerintah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `petani`
--
ALTER TABLE `petani`
  MODIFY `id_petani` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `distribusi`
--
ALTER TABLE `distribusi`
  ADD CONSTRAINT `distribusi_ibfk_1` FOREIGN KEY (`id_panen`) REFERENCES `panen` (`id_panen`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `distributor`
--
ALTER TABLE `distributor`
  ADD CONSTRAINT `distributor_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `panen`
--
ALTER TABLE `panen`
  ADD CONSTRAINT `panen_ibfk_1` FOREIGN KEY (`id_petani`) REFERENCES `petani` (`id_petani`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemerintah`
--
ALTER TABLE `pemerintah`
  ADD CONSTRAINT `pemerintah_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE,
  ADD CONSTRAINT `pemerintah_ibfk_2` FOREIGN KEY (`id_petani`) REFERENCES `petani` (`id_petani`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `petani`
--
ALTER TABLE `petani`
  ADD CONSTRAINT `petani_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_distribusi`) REFERENCES `distribusi` (`id_distribusi`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
