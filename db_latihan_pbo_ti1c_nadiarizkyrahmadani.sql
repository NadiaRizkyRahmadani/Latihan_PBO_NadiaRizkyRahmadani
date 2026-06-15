-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2026 at 06:03 AM
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
-- Database: `db_latihan_pbo_ti1c_nadiarizkyrahmadani`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` varchar(50) NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(10,2) NOT NULL,
  `jenis_studio` enum('Reguler','IMAX','Velvet') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(50) DEFAULT NULL,
  `kacamata_3d_id` varchar(50) DEFAULT NULL,
  `efek_gerak_fitur` varchar(50) DEFAULT NULL,
  `bantal_selimut_pack` varchar(50) DEFAULT NULL,
  `layanan_butler` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
('TKT-001', 'Avengers: Secret Wars', '2026-05-01 13:00:00', 1, '50000.00', 'Reguler', 'Dolby 7.1', 'Row G', NULL, NULL, NULL, NULL),
('TKT-002', 'Avengers: Secret Wars', '2026-05-01 13:00:00', 1, '50000.00', 'Reguler', 'Dolby 7.1', 'Row G', NULL, NULL, NULL, NULL),
('TKT-003', 'Avatar 3: Fire and Ash', '2026-05-01 15:30:00', 2, '60000.00', 'Reguler', 'Dolby Atmos', 'Row E', NULL, NULL, NULL, NULL),
('TKT-004', 'Avatar 3: Fire and Ash', '2026-05-01 15:30:00', 1, '60000.00', 'Reguler', 'Dolby Atmos', 'Row F', NULL, NULL, NULL, NULL),
('TKT-005', 'Batman: Part II', '2026-05-02 19:00:00', 1, '55000.00', 'Reguler', 'Standard', 'Row K', NULL, NULL, NULL, NULL),
('TKT-006', 'Batman: Part II', '2026-05-02 19:00:00', 2, '55000.00', 'Reguler', 'Standard', 'Row K', NULL, NULL, NULL, NULL),
('TKT-007', 'Avatar 3: Fire and Ash', '2026-05-01 14:00:00', 1, '100000.00', 'IMAX', 'IMAX 12-Ch', 'Row C', 'SG-3D-091', 'D-BOX Active', NULL, NULL),
('TKT-008', 'Avatar 3: Fire and Ash', '2026-05-01 14:00:00', 1, '100000.00', 'IMAX', 'IMAX 12-Ch', 'Row C', 'SG-3D-092', 'D-BOX Active', NULL, NULL),
('TKT-009', 'Interstellar (Re-issue)', '2026-05-01 21:00:00', 1, '90000.00', 'IMAX', 'IMAX 6-Ch', 'Row A', NULL, 'None', NULL, NULL),
('TKT-010', 'Interstellar (Re-issue)', '2026-05-01 21:00:00', 1, '90000.00', 'IMAX', 'IMAX 6-Ch', 'Row B', NULL, 'None', NULL, NULL),
('TKT-011', 'Avengers: Secret Wars', '2026-05-02 16:00:00', 2, '110000.00', 'IMAX', 'IMAX 12-Ch', 'Row D', 'SG-3D-110', 'None', NULL, NULL),
('TKT-012', 'Avengers: Secret Wars', '2026-05-02 16:00:00', 1, '110000.00', 'IMAX', 'IMAX 12-Ch', 'Row D', 'SG-3D-111', 'None', NULL, NULL),
('TKT-013', 'Dune: Part Three', '2026-05-03 13:00:00', 1, '95000.00', 'IMAX', 'IMAX 12-Ch', 'Row B', NULL, 'None', NULL, NULL),
('TKT-014', 'Batman: Part II', '2026-05-01 18:00:00', 2, '150000.00', 'Velvet', NULL, 'Suite 01', NULL, NULL, 'Standard Pack', 'Active'),
('TKT-015', 'Batman: Part II', '2026-05-01 18:00:00', 2, '150000.00', 'Velvet', NULL, 'Suite 02', NULL, NULL, 'Standard Pack', 'Active'),
('TKT-016', 'Wicked: Part Two', '2026-05-01 20:30:00', 2, '175000.00', 'Velvet', NULL, 'Suite 05', NULL, NULL, 'Premium Pack', 'Active'),
('TKT-017', 'Wicked: Part Two', '2026-05-01 20:30:00', 2, '175000.00', 'Velvet', NULL, 'Suite 06', NULL, NULL, 'Premium Pack', 'Active'),
('TKT-018', 'Avengers: Secret Wars', '2026-05-02 20:00:00', 2, '200000.00', 'Velvet', NULL, 'Suite 03', NULL, NULL, 'Premium Pack', 'Active'),
('TKT-019', 'Avengers: Secret Wars', '2026-05-02 20:00:00', 2, '200000.00', 'Velvet', NULL, 'Suite 04', NULL, NULL, 'Premium Pack', 'Active'),
('TKT-020', 'Dune: Part Three', '2026-05-03 19:30:00', 2, '160000.00', 'Velvet', NULL, 'Suite 01', NULL, NULL, 'Standard Pack', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
