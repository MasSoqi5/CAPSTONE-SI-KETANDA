-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Nov 2025 pada 05.31
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
(1, '700', '2025-10-22', 'Terkirim', 1),
(2, '600', '2025-10-21', 'Dikirim', 2),
(3, '500', '2025-10-18', 'Terkirim', 3),
(4, '550', '2025-10-15', 'Dikirim', 4),
(5, '400', '2025-10-10', 'Pending', 5);

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
(1, 'Padi', 1000.00, 1500000.00, '2025-10-20', 1, 1),
(2, 'Jagung', 800.00, 1200000.00, '2025-10-18', 2, 2),
(3, 'Kedelai', 500.00, 900000.00, '2025-09-29', 3, 3),
(4, 'Cabai', 600.00, 1100000.00, '2025-09-25', 4, 4),
(5, 'Tomat', 700.00, 1300000.00, '2025-09-21', 5, 5),
(6, 'Bawang Merah', 650.00, 1250000.00, '2025-09-19', 6, 1),
(7, 'Jagung', 900.00, 1400000.00, '2025-10-10', 7, 2),
(8, 'Cabai', 550.00, 950000.00, '2025-10-15', 8, 3);

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
(3, 9, 'Kepala Bidang Ketahanan Pangan', 'Kabupaten Sukajadi', 'Memantau distribusi beras', 1, 3, 'Distribusi terlambat karena cuaca'),
(4, 10, 'Petugas Lapangan', 'Desa Sukamaju', 'Memonitor stok beras', 1, 4, 'Petani kesulitan mendapatkan pupuk');

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
(1, 2, 'Padi', 'Cimahi Selatan', 'Serangan hama wereng', 'Panen'),
(2, 3, 'Jagung', 'Cimahi Utara', 'Cuaca ekstrem', 'Tertunda'),
(3, 2, 'Kedelai', 'Cimahi Tengah', 'Tanah kering', 'Proses'),
(4, 3, 'Cabai', 'Cimahi Timur', 'Harga bibit naik', 'Tumbuh'),
(5, 2, 'Tomat', 'Cimahi Selatan', 'Kelebihan air', 'Siap'),
(6, 3, 'Bawang Merah', 'Cimahi Utara', 'Normal', 'Proses'),
(7, 2, 'Padi', 'Cimahi Barat', 'Lahan sempit', 'Proses'),
(8, 3, 'Jagung', 'Cimahi Tengah', 'Pupuk mahal', 'Proses'),
(9, 2, 'Kedelai', 'Cimahi Utara', 'Cuaca bagus', 'Panen'),
(10, 3, 'Cabai', 'Cimahi Selatan', 'Hama ulat', 'Proses'),
(11, 2, 'Tomat', 'Cimahi Tengah', 'Daun menguning', 'Panen'),
(12, 3, 'Bawang Merah', 'Cimahi Utara', 'Cuaca lembab', 'Proses'),
(13, 2, 'Padi', 'Cimahi Selatan', 'Kekurangan pupuk', 'Proses'),
(14, 3, 'Jagung', 'Cimahi Utara', 'Kelembaban tinggi', 'Tumbuh'),
(15, 2, 'Kedelai', 'Cimahi Timur', 'Harga pupuk naik', 'Panen'),
(16, 3, 'Cabai', 'Cimahi Tengah', 'Normal', 'Proses'),
(17, 2, 'Tomat', 'Cimahi Selatan', 'Penyakit daun', 'Proses'),
(18, 3, 'Bawang Merah', 'Cimahi Utara', 'Serangan jamur', 'Proses'),
(19, 2, 'Padi', 'Cimahi Barat', 'Lahan basah', 'Panen'),
(20, 3, 'Jagung', 'Cimahi Timur', 'Terserang belalang', 'Proses'),
(21, 2, 'Kedelai', 'Cimahi Utara', 'Normal', 'Siap'),
(22, 3, 'Cabai', 'Cimahi Tengah', 'Harga stabil', 'Tumbuh'),
(23, 2, 'Tomat', 'Cimahi Selatan', 'Daun busuk', 'Proses'),
(24, 3, 'Bawang Merah', 'Cimahi Utara', 'Terserang lalat buah', 'Proses'),
(25, 2, 'Padi', 'Cimahi Tengah', 'Panen mundur', 'Proses'),
(26, 3, 'Jagung', 'Cimahi Selatan', 'Terserang tikus', 'Panen'),
(27, 2, 'Kedelai', 'Cimahi Barat', 'Kering', 'Proses'),
(28, 3, 'Cabai', 'Cimahi Utara', 'Hujan berlebihan', 'Proses'),
(29, 2, 'Tomat', 'Cimahi Tengah', 'Aman', 'Panen'),
(30, 3, 'Bawang Merah', 'Cimahi Timur', 'Daun kering', 'Proses'),
(31, 2, 'Padi', 'Cimahi Selatan', 'Subur', 'Siap'),
(32, 3, 'Jagung', 'Cimahi Barat', 'Normal', 'Proses'),
(33, 2, 'Kedelai', 'Cimahi Tengah', 'Daun rusak', 'Proses'),
(34, 3, 'Cabai', 'Cimahi Selatan', 'Panas ekstrem', 'Proses'),
(35, 2, 'Tomat', 'Cimahi Utara', 'Aman', 'Proses'),
(36, 3, 'Bawang Merah', 'Cimahi Timur', 'Harga naik', 'Proses'),
(37, 2, 'Padi', 'Cimahi Barat', 'Hama wereng', 'Panen'),
(38, 3, 'Jagung', 'Cimahi Tengah', 'Daun rusak', 'Proses'),
(39, 2, 'Kedelai', 'Cimahi Selatan', 'Tanaman kering', 'Proses'),
(40, 3, 'Cabai', 'Cimahi Utara', 'Normal', 'Panen');

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
(1, '700', '2100000', '2025-10-23', 'Selesai', 1),
(2, '600', '1800000', '2025-10-23', 'Selesai', 2),
(3, '500', '1500000', '2025-10-20', 'Selesai', 3),
(4, '550', '1650000', '2025-10-19', 'Selesai', 4),
(5, '400', '1200000', '2025-10-18', 'Pending', 5),
(6, '650', '1950000', '2025-10-17', 'Selesai', 1);

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
(5, 'CV Agro Sejahtera', 'dis1', '12345', 'distributor', NULL),
(6, 'PT Tani Makmur', 'dis2', '12345', 'distributor', NULL),
(7, 'Ibu Sari', 'cust1', '12345', 'customer', NULL),
(8, 'Pak Rudi', 'cust2', '12345', 'customer', NULL),
(9, 'Badan Ketahanan Pangan', 'pem2', '12345', 'pemerintah', NULL),
(10, 'Petugas Lapangan Sukamaju', 'pem3', '12345', 'pemerintah', NULL);

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
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
