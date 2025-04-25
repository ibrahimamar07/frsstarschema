-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Apr 2025 pada 18.23
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starschema`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_dosen`
--

CREATE TABLE `dim_dosen` (
  `sk_dosen` int(11) NOT NULL,
  `nip_dosen` varchar(255) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `status_dosen` int(11) NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dim_dosen`
--

INSERT INTO `dim_dosen` (`sk_dosen`, `nip_dosen`, `nama_dosen`, `status_dosen`, `valid_from`, `valid_to`) VALUES
(1, '123', 'mudjahidin', 1, '2025-04-25', '2099-12-31'),
(2, '1234', 'nifsu asrul sani', 1, '2025-04-25', '2099-12-31'),
(3, '12345', 'mahendrawati', 1, '2025-04-25', '2099-12-31'),
(4, '123456', 'rizal risnanda hutama', 1, '2025-04-25', '2099-12-31'),
(5, '1234567', 'edwin riksaksoma', 1, '2025-04-25', '2099-12-31'),
(6, '12345678', 'renny pradina', 1, '2025-04-25', '2099-12-31'),
(7, '123456789', 'andre pavian', 1, '2025-04-25', '2099-12-31'),
(8, '1234567890', 'ahmad mukhlason', 1, '2025-04-25', '2099-12-31'),
(9, '12345678901', 'arif wibisono', 1, '2025-04-25', '2099-12-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_mahasiswa`
--

CREATE TABLE `dim_mahasiswa` (
  `sk_mhs` int(11) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `nama_mhs` varchar(255) NOT NULL,
  `angkatan` varchar(255) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `status_mhs` int(11) NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dim_mahasiswa`
--

INSERT INTO `dim_mahasiswa` (`sk_mhs`, `nrp`, `nama_mhs`, `angkatan`, `gender`, `prodi`, `status_mhs`, `valid_from`, `valid_to`) VALUES
(1, '5026231195', 'ibrahim amar alfanani', '2023', 'L', 'Sistem Informasi', 1, '2025-04-25', '2099-12-31'),
(2, '5026231219', 'ghifari rabbani', '2023', 'L', 'Sistem Informasi', 1, '2025-04-25', '2099-12-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_matakuliah`
--

CREATE TABLE `dim_matakuliah` (
  `sk_mk` int(11) NOT NULL,
  `kode_mk` varchar(255) NOT NULL,
  `nama_mk` varchar(255) NOT NULL,
  `sks_mk` int(11) NOT NULL,
  `kelas_mk` enum('A','B','C','D') NOT NULL,
  `kuota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dim_matakuliah`
--

INSERT INTO `dim_matakuliah` (`sk_mk`, `kode_mk`, `nama_mk`, `sks_mk`, `kelas_mk`, `kuota`) VALUES
(1, 'ES234106', 'Infrastruktur TI', 3, 'A', 30),
(2, 'ES234106', 'Infrastruktur TI', 3, 'B', 30),
(3, 'ES234106', 'Infrastruktur TI', 3, 'C', 30),
(4, 'ES234106', 'Infrastruktur TI', 3, 'D', 30),
(5, 'ES234312', 'Sistem Enterprise', 4, 'A', 30),
(6, 'ES234312', 'Sistem Enterprise', 4, 'B', 30),
(7, 'ES234312', 'Sistem Enterprise', 4, 'C', 30),
(8, 'ES234312', 'Sistem Enterprise', 4, 'D', 30),
(9, 'ES234313', 'Administrasi basis data', 3, 'A', 30),
(10, 'ES234313', 'Administrasi basis data', 3, 'B', 30),
(11, 'ES234313', 'Administrasi basis data', 3, 'C', 30),
(12, 'ES234313', 'Administrasi basis data', 3, 'D', 30),
(13, 'ES234314', 'Riset operasi', 3, 'A', 30),
(14, 'ES234314', 'Riset operasi', 3, 'B', 30),
(15, 'ES234314', 'Riset operasi', 3, 'C', 30),
(16, 'ES234314', 'Riset operasi', 3, 'D', 30),
(17, 'ES234315', 'Analitika data dan Diagnostik', 3, 'A', 30),
(18, 'ES234315', 'Analitika data dan Diagnostik', 3, 'B', 30),
(19, 'ES234315', 'Analitika data dan Diagnostik', 3, 'C', 30),
(20, 'ES234315', 'Analitika data dan Diagnostik', 3, 'D', 30),
(21, 'ES234316', 'Manajemen Proyek Tangkas', 3, 'A', 30),
(22, 'ES234316', 'Manajemen Proyek Tangkas', 3, 'B', 30),
(23, 'ES234316', 'Manajemen Proyek Tangkas', 3, 'C', 30),
(24, 'ES234316', 'Manajemen Proyek Tangkas', 3, 'D', 30),
(25, 'ES234317', 'Algoritma dan Struktur Data', 4, 'A', 30),
(26, 'ES234317', 'Algoritma dan Struktur Data', 4, 'B', 30),
(27, 'ES234317', 'Algoritma dan Struktur Data', 4, 'C', 30),
(28, 'ES234317', 'Algoritma dan Struktur Data', 4, 'D', 30),
(29, 'ES234418', 'Desain pengalaman pengguna', 3, 'A', 30),
(30, 'ES234418', 'Desain pengalaman pengguna', 3, 'B', 30),
(31, 'ES234418', 'Desain pengalaman pengguna', 3, 'C', 30),
(32, 'ES234418', 'Desain pengalaman pengguna', 3, 'D', 30),
(33, 'ES234419', 'Data Lakehouse', 3, 'A', 30),
(34, 'ES234419', 'Data Lakehouse', 3, 'B', 30),
(35, 'ES234419', 'Data Lakehouse', 3, 'C', 30),
(36, 'ES234419', 'Data Lakehouse', 3, 'D', 30),
(37, 'ES234420', 'Pemograman Web', 3, 'A', 30),
(38, 'ES234420', 'Pemograman Web', 3, 'B', 30),
(39, 'ES234420', 'Pemograman Web', 3, 'C', 30),
(40, 'ES234420', 'Pemograman Web', 3, 'D', 30),
(41, 'ES234421', 'Etika TI', 2, 'A', 30),
(42, 'ES234421', 'Etika TI', 2, 'B', 30),
(43, 'ES234421', 'Etika TI', 2, 'C', 30),
(44, 'ES234421', 'Etika TI', 2, 'D', 30),
(45, 'ES234422', 'Pemodelan dan Analitika Prediktif', 4, 'A', 30),
(46, 'ES234422', 'Pemodelan dan Analitika Prediktif', 4, 'B', 30),
(47, 'ES234422', 'Pemodelan dan Analitika Prediktif', 4, 'C', 30),
(48, 'ES234422', 'Pemodelan dan Analitika Prediktif', 4, 'D', 30),
(49, 'ES234423', 'Manajemen Resiko TI', 3, 'A', 30),
(50, 'ES234423', 'Manajemen Resiko TI', 3, 'B', 30),
(51, 'ES234423', 'Manajemen Resiko TI', 3, 'C', 30),
(52, 'ES234423', 'Manajemen Resiko TI', 3, 'D', 30),
(53, 'ES234424', 'Desain dan Manajemen Jaringan Komputer', 3, 'A', 30),
(54, 'ES234424', 'Desain dan Manajemen Jaringan Komputer', 3, 'B', 30),
(55, 'ES234424', 'Desain dan Manajemen Jaringan Komputer', 3, 'C', 30),
(56, 'ES234424', 'Desain dan Manajemen Jaringan Komputer', 3, 'D', 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_periode`
--

CREATE TABLE `dim_periode` (
  `semester` int(11) NOT NULL,
  `tahun_ajaran` varchar(255) NOT NULL,
  `ganjil_genap` enum('GANJIL','GENAP') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dim_periode`
--

INSERT INTO `dim_periode` (`semester`, `tahun_ajaran`, `ganjil_genap`) VALUES
(1, '2023/2024', 'GANJIL'),
(2, '2023/2024', 'GENAP'),
(3, '2024/2025', 'GANJIL'),
(4, '2024/2025', 'GENAP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_ruangan`
--

CREATE TABLE `dim_ruangan` (
  `sk_ruangan` int(11) NOT NULL,
  `kode_ruangan` varchar(255) NOT NULL,
  `lokasi_ruangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dim_ruangan`
--

INSERT INTO `dim_ruangan` (`sk_ruangan`, `kode_ruangan`, `lokasi_ruangan`) VALUES
(1, '1101', 'g1 l1 r1'),
(2, '1102', 'g1 l1 r2'),
(3, '1103', 'g1 l1 r3'),
(4, '1201', 'g1 l2 r1'),
(5, '1202', 'g1 l2 r1'),
(6, '1301', 'g1 l3 r1'),
(7, '1302', 'g1 l3 r1'),
(8, '2101', 'g2 l1 r1'),
(9, '2209', 'g2 l2 r9'),
(10, '4101', 'g4 l1 r1'),
(11, '4201', 'g4 l2 r1'),
(12, '4202', 'g4 l2 r2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fact_dosenpengajar`
--

CREATE TABLE `fact_dosenpengajar` (
  `matakuliah` int(11) DEFAULT NULL,
  `dosen` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `fact_dosenpengajar`
--

INSERT INTO `fact_dosenpengajar` (`matakuliah`, `dosen`, `semester`) VALUES
(1, 2, 3),
(5, 3, 3),
(9, 4, 3),
(13, 5, 3),
(17, 6, 3),
(21, 7, 3),
(26, 8, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fact_frs`
--

CREATE TABLE `fact_frs` (
  `semester` int(11) DEFAULT NULL,
  `mahasiswa` int(11) DEFAULT NULL,
  `matakuliah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `fact_frs`
--

INSERT INTO `fact_frs` (`semester`, `mahasiswa`, `matakuliah`) VALUES
(3, 1, 1),
(3, 1, 5),
(3, 1, 9),
(3, 1, 13),
(3, 1, 17),
(3, 1, 21),
(3, 1, 26),
(4, 1, 30),
(4, 1, 34),
(4, 1, 38),
(4, 1, 43),
(4, 1, 48),
(4, 1, 54);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fact_jadwal`
--

CREATE TABLE `fact_jadwal` (
  `hari` varchar(255) DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `ruangan` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `matakuliah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `fact_jadwal`
--

INSERT INTO `fact_jadwal` (`hari`, `jam_mulai`, `jam_selesai`, `ruangan`, `semester`, `matakuliah`) VALUES
('Senin', '08:00:00', '10:00:00', 1, 3, 1),
('Selasa', '10:00:00', '12:00:00', 2, 3, 5),
('Rabu', '13:00:00', '15:00:00', 3, 3, 9),
('Kamis', '15:00:00', '17:00:00', 4, 3, 13),
('Jumat', '07:00:00', '09:00:00', 5, 3, 17),
('senin', '10:00:00', '12:00:00', 1, 3, 21),
('selasa', '07:00:00', '09:00:00', 2, 3, 26);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fact_penilaian`
--

CREATE TABLE `fact_penilaian` (
  `nilai_angka` decimal(19,0) DEFAULT NULL,
  `nilai_huruf` char(255) DEFAULT NULL,
  `mahasiswa` int(11) DEFAULT NULL,
  `matakuliah` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `dosen_pengampu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `fact_penilaian`
--

INSERT INTO `fact_penilaian` (`nilai_angka`, `nilai_huruf`, `mahasiswa`, `matakuliah`, `semester`, `dosen_pengampu`) VALUES
('90', 'A', 1, 1, 3, 2),
('70', 'BC', 1, 5, 3, 3),
('89', 'A', 1, 9, 3, 4),
('98', 'A', 1, 13, 3, 5),
('91', 'A', 1, 17, 3, 6),
('87', 'A', 1, 21, 3, 7),
('85', 'A', 1, 26, 3, 8);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dim_dosen`
--
ALTER TABLE `dim_dosen`
  ADD PRIMARY KEY (`sk_dosen`),
  ADD KEY `idx_dosen_nip` (`nip_dosen`),
  ADD KEY `idx_dosen_nama` (`nama_dosen`),
  ADD KEY `idx_dosen_status` (`status_dosen`);

--
-- Indeks untuk tabel `dim_mahasiswa`
--
ALTER TABLE `dim_mahasiswa`
  ADD PRIMARY KEY (`sk_mhs`),
  ADD KEY `idx_mahasiswa_nrp` (`nrp`),
  ADD KEY `idx_mahasiswa_status` (`status_mhs`),
  ADD KEY `idx_mahasiswa_prodi` (`prodi`),
  ADD KEY `idx_mahasiswa_angkatan` (`angkatan`);

--
-- Indeks untuk tabel `dim_matakuliah`
--
ALTER TABLE `dim_matakuliah`
  ADD PRIMARY KEY (`sk_mk`),
  ADD KEY `idx_matakuliah_kode` (`kode_mk`),
  ADD KEY `idx_matakuliah_nama` (`nama_mk`),
  ADD KEY `idx_matakuliah_sks` (`sks_mk`);

--
-- Indeks untuk tabel `dim_periode`
--
ALTER TABLE `dim_periode`
  ADD PRIMARY KEY (`semester`);

--
-- Indeks untuk tabel `dim_ruangan`
--
ALTER TABLE `dim_ruangan`
  ADD PRIMARY KEY (`sk_ruangan`),
  ADD KEY `idx_ruangan_kode` (`kode_ruangan`),
  ADD KEY `idx_ruangan_lokasi` (`lokasi_ruangan`);

--
-- Indeks untuk tabel `fact_dosenpengajar`
--
ALTER TABLE `fact_dosenpengajar`
  ADD UNIQUE KEY `matakuliah` (`matakuliah`,`dosen`,`semester`),
  ADD KEY `semester` (`semester`),
  ADD KEY `idx_dosenpengajar_dosen_semester` (`dosen`,`semester`),
  ADD KEY `idx_dosenpengajar_mk_semester` (`matakuliah`,`semester`);

--
-- Indeks untuk tabel `fact_frs`
--
ALTER TABLE `fact_frs`
  ADD UNIQUE KEY `semester` (`semester`,`mahasiswa`,`matakuliah`),
  ADD KEY `matakuliah` (`matakuliah`),
  ADD KEY `idx_frs_semester_mhs` (`semester`,`mahasiswa`),
  ADD KEY `idx_frs_semester_mk` (`semester`,`matakuliah`),
  ADD KEY `idx_frs_mhs_mk` (`mahasiswa`,`matakuliah`),
  ADD KEY `idx_frs_complete` (`semester`,`mahasiswa`,`matakuliah`);

--
-- Indeks untuk tabel `fact_jadwal`
--
ALTER TABLE `fact_jadwal`
  ADD UNIQUE KEY `hari` (`hari`,`jam_mulai`,`jam_selesai`,`ruangan`,`semester`),
  ADD KEY `idx_jadwal_hari` (`hari`),
  ADD KEY `idx_jadwal_ruangan_semester` (`ruangan`,`semester`),
  ADD KEY `idx_jadwal_mk_semester` (`matakuliah`,`semester`),
  ADD KEY `idx_jadwal_waktu` (`hari`,`jam_mulai`,`jam_selesai`),
  ADD KEY `idx_jadwal_complete` (`semester`,`matakuliah`,`hari`,`jam_mulai`,`jam_selesai`,`ruangan`);

--
-- Indeks untuk tabel `fact_penilaian`
--
ALTER TABLE `fact_penilaian`
  ADD UNIQUE KEY `mahasiswa` (`mahasiswa`,`matakuliah`,`semester`),
  ADD KEY `idx_nilai_mhs_semester` (`mahasiswa`,`semester`),
  ADD KEY `idx_nilai_mk_semester` (`matakuliah`,`semester`),
  ADD KEY `idx_nilai_dosen_semester` (`dosen_pengampu`,`semester`),
  ADD KEY `idx_nilai_nilai_huruf` (`nilai_huruf`),
  ADD KEY `idx_nilai_complete` (`semester`,`mahasiswa`,`matakuliah`,`nilai_angka`,`nilai_huruf`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dim_dosen`
--
ALTER TABLE `dim_dosen`
  MODIFY `sk_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `dim_mahasiswa`
--
ALTER TABLE `dim_mahasiswa`
  MODIFY `sk_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `dim_matakuliah`
--
ALTER TABLE `dim_matakuliah`
  MODIFY `sk_mk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `dim_ruangan`
--
ALTER TABLE `dim_ruangan`
  MODIFY `sk_ruangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `fact_dosenpengajar`
--
ALTER TABLE `fact_dosenpengajar`
  ADD CONSTRAINT `fact_dosenpengajar_ibfk_1` FOREIGN KEY (`matakuliah`) REFERENCES `dim_matakuliah` (`sk_mk`),
  ADD CONSTRAINT `fact_dosenpengajar_ibfk_2` FOREIGN KEY (`dosen`) REFERENCES `dim_dosen` (`sk_dosen`),
  ADD CONSTRAINT `fact_dosenpengajar_ibfk_3` FOREIGN KEY (`semester`) REFERENCES `dim_periode` (`semester`);

--
-- Ketidakleluasaan untuk tabel `fact_frs`
--
ALTER TABLE `fact_frs`
  ADD CONSTRAINT `fact_frs_ibfk_1` FOREIGN KEY (`semester`) REFERENCES `dim_periode` (`semester`),
  ADD CONSTRAINT `fact_frs_ibfk_2` FOREIGN KEY (`mahasiswa`) REFERENCES `dim_mahasiswa` (`sk_mhs`),
  ADD CONSTRAINT `fact_frs_ibfk_3` FOREIGN KEY (`matakuliah`) REFERENCES `dim_matakuliah` (`sk_mk`);

--
-- Ketidakleluasaan untuk tabel `fact_jadwal`
--
ALTER TABLE `fact_jadwal`
  ADD CONSTRAINT `fact_jadwal_ibfk_1` FOREIGN KEY (`ruangan`) REFERENCES `dim_ruangan` (`sk_ruangan`),
  ADD CONSTRAINT `fact_jadwal_ibfk_2` FOREIGN KEY (`semester`) REFERENCES `dim_periode` (`semester`),
  ADD CONSTRAINT `fact_jadwal_ibfk_3` FOREIGN KEY (`matakuliah`) REFERENCES `dim_matakuliah` (`sk_mk`);

--
-- Ketidakleluasaan untuk tabel `fact_penilaian`
--
ALTER TABLE `fact_penilaian`
  ADD CONSTRAINT `fact_penilaian_ibfk_1` FOREIGN KEY (`mahasiswa`) REFERENCES `dim_mahasiswa` (`sk_mhs`),
  ADD CONSTRAINT `fact_penilaian_ibfk_2` FOREIGN KEY (`matakuliah`) REFERENCES `dim_matakuliah` (`sk_mk`),
  ADD CONSTRAINT `fact_penilaian_ibfk_3` FOREIGN KEY (`semester`) REFERENCES `dim_periode` (`semester`),
  ADD CONSTRAINT `fact_penilaian_ibfk_4` FOREIGN KEY (`dosen_pengampu`) REFERENCES `dim_dosen` (`sk_dosen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
