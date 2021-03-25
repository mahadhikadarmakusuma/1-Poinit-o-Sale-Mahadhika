-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2019 at 12:06 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_bengkel_672015153`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kd_barang` varchar(11) NOT NULL,
  `nama_barang` text,
  `barang_satuan` varchar(30) DEFAULT NULL,
  `harga_pokok` double DEFAULT NULL,
  `harga_jual` double DEFAULT NULL,
  `stok_barang` int(11) DEFAULT NULL,
  `stok_minimal` int(11) DEFAULT NULL,
  `barang_tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_kategori` int(11) NOT NULL,
  `barang_tgl_last_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`kd_barang`, `nama_barang`, `barang_satuan`, `harga_pokok`, `harga_jual`, `stok_barang`, `stok_minimal`, `barang_tgl_input`, `id_kategori`, `barang_tgl_last_update`) VALUES
('BR001', 'Kopling Ganda Nouvo', '2', 300000, 325000, 3, 5, '2019-03-26 03:29:37', 34, '0000-00-00 00:00:00'),
('BR002', 'Kampas Kopling CBR 250', '2', 235000, 260000, 5, 4, '2019-03-26 03:29:37', 34, '0000-00-00 00:00:00'),
('BR003', 'Kopling RX KING', '2', 40000, 50000, 14, 8, '2019-03-26 03:29:37', 34, '0000-00-00 00:00:00'),
('BR004', 'Plat  kopling Yamaha', '2', 25000, 35000, 15, 8, '2019-03-26 03:29:38', 34, '0000-00-00 00:00:00'),
('BR005', 'Karet Kopling Jupiter Z', '2', 9000, 15000, 4, 4, '2019-03-26 03:29:38', 34, '0000-00-00 00:00:00'),
('BR006', 'Handle Kopling Honda Standart', '2', 10000, 17000, 17, 5, '2019-03-26 03:29:38', 34, '0000-00-00 00:00:00'),
('BR007', 'Kopliing Byson Standart', '2', 28000, 35000, 6, 5, '2019-03-26 03:29:38', 34, '0000-00-00 00:00:00'),
('BR008', 'Per Kopling Honda Tiger', '2', 9000, 15000, 20, 5, '2019-03-26 03:29:38', 34, '0000-00-00 00:00:00'),
('BR009', 'Per Kopling Kawahara RACING', '2', 60000, 70000, 16, 4, '2019-03-26 03:29:38', 34, '0000-00-00 00:00:00'),
('BR010', 'Mangkok Rumah ganda kopling', '2', 67500, 80000, 32, 10, '2019-03-26 03:29:38', 34, '0000-00-00 00:00:00'),
('BR011', 'Mangkok Rumah ganda kopling ORI', '2', 355000, 375000, 5, 5, '2019-03-26 03:29:38', 34, '0000-00-00 00:00:00'),
('BR012', 'Kampas kopling scorpio', '2', 153000, 168000, 10, 8, '2019-03-26 03:29:38', 34, '0000-00-00 00:00:00'),
('BR013', 'Set kopling Yamaha ORI', '2', 100000, 120000, 27, 8, '2019-03-26 03:29:38', 34, '0000-00-00 00:00:00'),
('BR014', 'Plat kopling honda TDR', '2', 179000, 200000, 16, 10, '2019-03-26 03:29:38', 34, '0000-00-00 00:00:00'),
('BR015', 'Busi motor iridium pendek', '2', 70000, 80000, 8, 6, '2019-03-26 03:57:16', 32, '0000-00-00 00:00:00'),
('BR016', 'Busi motor Bebek u22fsU', '2', 12500, 17000, 9, 5, '2019-03-26 03:57:16', 32, '0000-00-00 00:00:00'),
('BR017', 'Busi PCX 150 BRISK', '2', 300000, 350000, 8, 5, '2019-03-26 03:57:16', 32, '0000-00-00 00:00:00'),
('BR018', 'Busi TDR motor bebek', '2', 35000, 45000, 8, 4, '2019-03-26 03:57:16', 32, '0000-00-00 00:00:00'),
('BR019', 'Busi Duration Double', '2', 57500, 68000, 5, 3, '2019-03-26 03:57:16', 32, '0000-00-00 00:00:00'),
('BR020', 'Busi NGK BP5ES', '2', 8000, 15000, 20, 10, '2019-03-26 03:57:16', 32, '0000-00-00 00:00:00'),
('BR021', 'Busi TDR RACING beat vario', '2', 30000, 45000, 15, 10, '2019-03-26 03:57:16', 32, '0000-00-00 00:00:00'),
('BR022', 'Busi Jupiter NGK PLATINUM', '2', 25000, 35000, 15, 10, '2019-03-26 03:57:16', 32, '0000-00-00 00:00:00'),
('BR023', 'Busi Motor Denso Honda U22', '2', 6750, 15000, 10, 10, '2019-03-26 03:57:16', 32, '0000-00-00 00:00:00'),
('BR024', 'Busi Motor bebek TDR Racing', '2', 35000, 45000, 7, 10, '2019-03-26 03:57:17', 32, '0000-00-00 00:00:00'),
('BR025', 'Cop Busi Motor', '2', 2000, 3000, 20, 10, '2019-03-26 03:57:17', 32, '0000-00-00 00:00:00'),
('BR026', 'Cop Busi Satria FU', '2', 30000, 45000, 15, 10, '2019-03-26 03:57:17', 32, '0000-00-00 00:00:00'),
('BR027', 'Busi Champion federal', '2', 12000, 17000, 15, 10, '2019-03-26 03:57:17', 32, '0000-00-00 00:00:00'),
('BR028', 'Busi NGK G power all motor platinum', '2', 26000, 35000, 33, 10, '2019-03-26 03:57:17', 32, '0000-00-00 00:00:00'),
('BR029', 'Busi Motor NGK Irodium honda', '2', 93000, 115000, 15, 10, '2019-03-26 03:57:17', 32, '0000-00-00 00:00:00'),
('BR030', 'Busi Motor NGK Platinum Yamaha', '2', 30000, 40000, 11, 10, '2019-03-26 03:57:17', 32, '0000-00-00 00:00:00'),
('BR031', 'Cop busi Yamaha ORI', '2', 21000, 28000, 15, 10, '2019-03-26 03:57:17', 32, '0000-00-00 00:00:00'),
('BR032', 'Busi Iridium Kawasaki NGK ', '2', 89000, 115000, 11, 5, '2019-03-26 03:57:17', 32, '0000-00-00 00:00:00'),
('BR033', 'Busi TDR scorpio racing', '2', 30000, 38000, 10, 5, '2019-03-26 03:57:17', 32, '0000-00-00 00:00:00'),
('BR034', 'IRC SP1 275 - 17', '4', 148000, 160000, 12, 4, '2019-03-26 04:47:40', 35, '0000-00-00 00:00:00'),
('BR035', 'FDR 90/80 Genzi tubless', '4', 175000, 190000, 15, 4, '2019-03-26 04:47:40', 35, '0000-00-00 00:00:00'),
('BR036', 'IRC SP1 classic', '4', 148000, 160000, 18, 2, '2019-03-26 04:47:40', 35, '0000-00-00 00:00:00'),
('BR037', 'Swallow SB135 350-18', '4', 260000, 280000, 20, 4, '2019-03-26 04:47:40', 35, '0000-00-00 00:00:00'),
('BR038', 'Ban Nmax Maxxis MA-FIST', '4', 220000, 240000, 12, 4, '2019-03-26 04:47:40', 35, '0000-00-00 00:00:00'),
('BR039', 'Ban Dalam Swallow bebek', '4', 29000, 35000, 10, 5, '2019-03-26 04:47:40', 35, '0000-00-00 00:00:00'),
('BR040', 'Ban matic standart EGR 80-90', '4', 95000, 115000, 17, 4, '2019-03-26 04:47:40', 35, '0000-00-00 00:00:00'),
('BR041', 'Zeneos zn62  ring 14 80-80', '4', 138000, 145000, 11, 4, '2019-03-26 04:47:40', 35, '0000-00-00 00:00:00'),
('BR042', 'Aspira ban 80/90', '4', 120000, 135000, 18, 4, '2019-03-26 04:47:41', 35, '0000-00-00 00:00:00'),
('BR043', 'Kampas rem DRK motor', '2', 8500, 15000, 6, 2, '2019-03-26 05:12:37', 33, '0000-00-00 00:00:00'),
('BR044', 'Per kampas rem belakang astra ORI', '2', 4000, 6000, 8, 5, '2019-03-26 05:12:37', 33, '0000-00-00 00:00:00'),
('BR045', 'Kampas rem depan Honda', '2', 35000, 40000, 8, 4, '2019-03-26 05:12:37', 33, '0000-00-00 00:00:00'),
('BR046', 'Kampas rem cakram belakang federal', '2', 25000, 30000, 6, 2, '2019-03-26 05:12:37', 33, '0000-00-00 00:00:00'),
('BR047', 'Kampas rem depan honda', '2', 12000, 17000, 6, 2, '2019-03-26 05:12:37', 33, '0000-00-00 00:00:00'),
('BR048', 'Kampas tromol bebek ', '2', 29000, 38000, 12, 4, '2019-03-26 05:12:37', 33, '0000-00-00 00:00:00'),
('BR049', 'Kampas Vega ZR ORI', '2', 45000, 60000, 7, 3, '2019-03-26 05:12:37', 33, '0000-00-00 00:00:00'),
('BR050', 'Kampas rem belakang daytona ', '2', 75000, 85000, 6, 4, '2019-03-26 05:12:37', 33, '0000-00-00 00:00:00'),
('BR051', 'Kampas rem belakang diskpad Yamaha Vxion new', '2', 12000, 20000, 7, 4, '2019-03-26 05:12:37', 33, '0000-00-00 00:00:00'),
('BR052', 'Yamalube Sport Yamaha Oli motor', '4', 32000, 45000, 11, 4, '2019-03-26 05:19:00', 37, '0000-00-00 00:00:00'),
('BR053', 'Shell Motor Advance 10w', '4', 100000, 115000, 12, 4, '2019-03-26 05:19:00', 37, '0000-00-00 00:00:00'),
('BR054', 'Castrol Control Oli Powerfull', '4', 45000, 58000, 7, 4, '2019-03-26 05:19:01', 37, '0000-00-00 00:00:00'),
('BR055', 'MPX 2 Oli Motor honda', '4', 48000, 59000, 9, 4, '2019-03-26 05:19:01', 37, '0000-00-00 00:00:00'),
('BR056', 'Yamalube matic Super 10w', '4', 55000, 67000, 8, 4, '2019-03-26 05:19:01', 37, '0000-00-00 00:00:00'),
('BR057', 'Enduro 4T Pertamina', '4', 28000, 40000, 5, 4, '2019-03-26 05:19:01', 37, '0000-00-00 00:00:00'),
('BR058', 'Federal Ultratec', '4', 25000, 38000, 6, 4, '2019-03-26 05:19:01', 37, '0000-00-00 00:00:00'),
('BR059', 'Coolant Yamalube Air radiator', '4', 30000, 38000, 10, 4, '2019-03-26 05:26:43', 36, '0000-00-00 00:00:00'),
('BR060', 'Coolant Honda Astra ', '4', 20000, 28000, 9, 4, '2019-03-26 05:26:43', 36, '0000-00-00 00:00:00'),
('BR061', 'Coolant matic federal', '4', 80000, 88000, 6, 4, '2019-03-26 05:26:43', 36, '0000-00-00 00:00:00'),
('BR062', 'Car Coolant Radiator', '4', 25000, 35000, 7, 4, '2019-03-26 05:26:43', 36, '0000-00-00 00:00:00'),
('BR063', 'Scarlet racing motor velg 140/140 R17 purple', '4', 950000, 1000000, 2, 0, '2019-03-26 06:42:37', 43, '0000-00-00 00:00:00'),
('BR064', 'velg racing rossi r17 motor', '4', 550000, 580000, 2, 0, '2019-03-26 06:42:37', 43, '0000-00-00 00:00:00'),
('BR065', 'Velg racing V mio j', '4', 450000, 500000, 2, 0, '2019-03-26 06:42:37', 43, '0000-00-00 00:00:00'),
('BR066', 'scarlet velg motor 18-180 WM shape silver', '4', 240000, 275000, 2, 0, '2019-03-26 06:42:38', 43, '0000-00-00 00:00:00'),
('BR067', 'scarlet velg motor 17-160 WM shape gold', '4', 240000, 275000, 2, 0, '2019-03-26 06:42:38', 43, '0000-00-00 00:00:00'),
('BR068', 'scarlet velg motor 17-140 WM shape purple', '4', 380000, 430000, 2, 0, '2019-03-26 06:42:38', 43, '0000-00-00 00:00:00'),
('BR069', 'scarlet velg motor 18-180 WM shape black', '4', 240000, 275000, 2, 0, '2019-03-26 06:42:38', 43, '0000-00-00 00:00:00'),
('BR070', 'pentil besi mobil tubeless', '4', 13000, 15000, 18, 4, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR071', 'Petil motor variasi', '4', 18000, 25000, 15, 4, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR072', 'Velg wheel rim universal', '4', 50000, 65000, 10, 4, '2019-03-26 06:42:38', 43, '0000-00-00 00:00:00'),
('BR073', 'Mudguard WR3 NINJA 650', '4', 1350000, 1450000, 2, 0, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR074', 'Jari velg chrome krom', '4', 40000, 50000, 6, 2, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR075', 'Jari velg chrome pelangi krom pelangi', '4', 55000, 65000, 7, 2, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR076', 'Jari velg chrome biasa krom biasa', '4', 27000, 35000, 7, 2, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR077', 'LED Cree Transformer U5', '4', 74500, 86500, 4, 1, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR078', 'Lampu stop F1 stoplamp', '4', 22000, 28500, 6, 1, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR079', 'Hook motor cantelan', '4', 92000, 110000, 8, 2, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR080', 'Ring Monel ', '4', 2100, 3500, 20, 4, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR081', 'Jas Hujan Axio Europe ORI', '4', 212000, 245000, 8, 2, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR082', 'Visor Beat FI Esp ', '4', 25000, 40000, 8, 1, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR083', 'Stiker Nmax aerox aneka stiker emblem', '4', 30000, 35000, 40, 5, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR084', 'Spiom cembung bulat', '4', 30000, 45000, 6, 2, '2019-03-26 06:42:38', 38, '0000-00-00 00:00:00'),
('BR085', 'LED mata elang eagle eye', '4', 6500, 9000, 8, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR086', 'Karpet Vario monster', '4', 28000, 38000, 9, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR087', 'Visor Nva New Vixion headlamp', '4', 45000, 59000, 7, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR088', 'Lampu sein tempel LED Sign', '4', 32500, 38000, 8, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR089', 'Kaca spion mobil Spion putar mini tambahan', '4', 19000, 25000, 19, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR090', 'Tutup mesin aksesoris variasi yamaha vixion visor', '4', 120000, 150000, 7, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR091', 'Tachometer indikator RPM', '4', 78500, 95000, 8, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR092', 'Winglet yamaha r25', '4', 65000, 78000, 5, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR093', 'Spion motor tomok rizoma full', '4', 120000, 135000, 12, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR094', 'Tutup as roda belakang matic universal', '4', 60000, 75000, 15, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR095', 'Spakbor kolong beat street hugger', '4', 115000, 135000, 10, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR096', 'Cover kontak motor', '4', 85000, 98000, 14, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR097', 'DOP as roda DBS depan', '4', 19000, 25000, 20, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR098', 'Knalpot gulu bebek IO RACING K90', '4', 390000, 450000, 4, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR099', 'Knalpot IO RACING L9N', '4', 530000, 580000, 4, 2, '2019-03-26 06:42:39', 38, '0000-00-00 00:00:00'),
('BR100', 'Klem knalpot karet braket aneka warna', '4', 15000, 20000, 12, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR101', 'Spakbor variasi r25 ', '4', 115000, 145000, 15, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR102', 'Cover CVT vario 125 krom chrome', '4', 85000, 125000, 10, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR103', 'Nmax gantungan', '4', 22000, 35000, 8, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR104', 'Braket selang rem variasi aneka warna', '4', 35000, 45000, 18, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR105', 'Monel baut sharky w6', '4', 14000, 22500, 17, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR106', 'Tachometer indikator RPM TERMIGAORI', '4', 65000, 85000, 9, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR107', 'Grid Motor Variasi DBS', '4', 35000, 45000, 20, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR108', 'Variasi monel sharky KW', '4', 2500, 4500, 40, 6, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR109', 'Speedometer kilometer variasi bulat', '4', 95000, 135000, 10, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR110', 'Cover mantel motor UNIVERSAL', '4', 125000, 145000, 15, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR111', 'Klem aneka macam klem variasi selang', '4', 45000, 60000, 14, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR112', 'Cover depan jupiter MX ', '4', 110000, 145000, 12, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR113', 'spakbor Huger Xmax 250cc', '4', 400000, 450000, 8, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR114', 'Spion tomok braket fairing', '4', 69000, 75000, 12, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR115', 'Hp holder universal', '4', 35000, 45000, 18, 2, '2019-03-26 06:42:40', 38, '0000-00-00 00:00:00'),
('BR116', 'proguard rem kopling', '4', 100000, 125000, 14, 2, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR117', 'skrup yamaha/honda 2mm/3mm', '4', 1500, 2000, 50, 15, '2019-03-26 06:42:41', 39, '0000-00-00 00:00:00'),
('BR118', 'Baut skrup 1 bungkus skrup mercy', '4', 6500, 8500, 20, 4, '2019-03-26 06:42:41', 39, '0000-00-00 00:00:00'),
('BR119', 'Baut yamaha plastik All yamaha', '4', 800, 1000, 98, 15, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR120', 'Baut mur plat motor 1 set', '4', 3250, 5000, 100, 15, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR121', 'Baut warna Variasi baut', '4', 4700, 5500, 50, 15, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR122', 'Pembersih skrup/debu ban', '4', 15000, 19000, 20, 4, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR123', 'tool box 40 in 1', '4', 85000, 98000, 8, 2, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR124', 'Baut bodi CNC baut motor universal chrome warna', '4', 3000, 9000, 85, 8, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR125', 'Charger mobil usb rocket', '4', 90000, 115000, 9, 2, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR126', 'Cover stir mobil sporty', '4', 63000, 75000, 25, 4, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR127', 'Cover Dashboard Innova', '4', 155000, 180000, 12, 4, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR128', 'Garnis Avanza Grand', '4', 150000, 168000, 9, 2, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR129', 'emblem superman batman chrome ', '4', 50000, 65000, 12, 2, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR130', 'Lampu LED Cree OWL 2 mata', '4', 48000, 58000, 12, 2, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR131', 'Antena Shark Hiu Universal', '4', 25000, 38000, 17, 2, '2019-03-26 06:42:41', 38, '0000-00-00 00:00:00'),
('BR132', 'Cover Mobil Sarung penutup minibus', '4', 130000, 160000, 15, 2, '2019-03-26 06:42:42', 38, '0000-00-00 00:00:00'),
('BR133', 'Aneka bantal mobil  1 set', '4', 220000, 260000, 16, 4, '2019-03-26 06:42:42', 38, '0000-00-00 00:00:00'),
('BR134', 'Jam interior analog mobil', '4', 32500, 45000, 8, 2, '2019-03-26 06:42:42', 38, '0000-00-00 00:00:00'),
('BR135', 'Aneka Stiker 2D 5x5 cm', '4', 12000, 15000, 35, 10, '2019-03-26 06:42:42', 38, '0000-00-00 00:00:00'),
('BR136', 'Aneka Stiker timbul 15x5 cm', '4', 35000, 45000, 32, 10, '2019-03-26 06:42:42', 38, '0000-00-00 00:00:00'),
('BR137', 'Phone holder mobil', '4', 75000, 89000, 25, 5, '2019-03-26 06:42:42', 38, '0000-00-00 00:00:00'),
('BR138', 'Lampu LED Cree mobil interior', '4', 49000, 60000, 20, 5, '2019-03-26 06:42:42', 38, '0000-00-00 00:00:00'),
('BR139', 'Pentil ban lampu warna RGB', '4', 9500, 22500, 26, 5, '2019-03-26 06:42:42', 38, '0000-00-00 00:00:00'),
('BR140', 'seker piston FIM Jupiter Z', '4', 125000, 140000, 29, 4, '2019-03-26 07:08:13', 39, '0000-00-00 00:00:00'),
('BR141', 'Kaliper motor 2 piston CNC ', '4', 190000, 225000, 25, 4, '2019-03-26 07:08:13', 39, '0000-00-00 00:00:00'),
('BR142', 'Kaliper 4 piston Nissin', '4', 3500000, 3800000, 7, 2, '2019-03-26 07:08:13', 39, '0000-00-00 00:00:00'),
('BR143', 'PEN PISTON Yamaha F1zR', '4', 30000, 38000, 15, 4, '2019-03-26 07:08:13', 39, '0000-00-00 00:00:00'),
('BR144', 'Piston KIT motor Bebek', '4', 150000, 175500, 19, 4, '2019-03-26 07:08:13', 39, '0000-00-00 00:00:00'),
('BR145', 'Kaliper Cakram Brembo', '4', 2350000, 2550000, 6, 2, '2019-03-26 07:08:13', 39, '0000-00-00 00:00:00'),
('BR146', 'Piston Pin extraxting tool', '4', 55000, 68000, 12, 4, '2019-03-26 07:08:13', 39, '0000-00-00 00:00:00'),
('BR147', 'Ring Piston 44mm', '4', 35000, 45000, 23, 5, '2019-03-26 07:08:13', 39, '0000-00-00 00:00:00'),
('BR148', 'PEN Piston Suzuki Satria FU TS 125', '4', 80000, 95000, 16, 4, '2019-03-26 07:08:13', 39, '0000-00-00 00:00:00'),
('BR149', 'Ring Piston Suzuki TS', '4', 264000, 280000, 15, 4, '2019-03-26 07:08:13', 39, '0000-00-00 00:00:00'),
('BR150', 'Blok KOP Buring Head ', '4', 750000, 850000, 9, 4, '2019-03-26 07:08:13', 39, '0000-00-00 00:00:00'),
('BR151', 'Shock breaker VND Vario 125', '4', 465000, 480000, 5, 4, '2019-03-26 07:21:39', 47, '0000-00-00 00:00:00'),
('BR152', 'Shock breaker Supra X 125', '4', 220000, 260000, 20, 4, '2019-03-26 07:21:39', 47, '0000-00-00 00:00:00'),
('BR153', 'Shock breaker Yoko tabung 270', '4', 425000, 475000, 8, 4, '2019-03-26 07:21:39', 47, '0000-00-00 00:00:00'),
('BR154', 'Kap Shock Breaker Kap motor', '4', 300000, 355000, 22, 4, '2019-03-26 07:21:39', 47, '0000-00-00 00:00:00'),
('BR155', 'Shock breaker MSX Tabung atas', '4', 195000, 230000, 25, 4, '2019-03-26 07:21:39', 47, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_beli_suplier`
--

CREATE TABLE `tbl_beli_suplier` (
  `tanggal_beli` varchar(12) NOT NULL,
  `nama_barang` varchar(500) NOT NULL,
  `no_faktur` varchar(200) NOT NULL,
  `id_suplier` int(11) NOT NULL,
  `kd_barang` varchar(11) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_belanja` double NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=sudah di proses, 0 belum di proses',
  `detail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_beli_suplier`
--

INSERT INTO `tbl_beli_suplier` (`tanggal_beli`, `nama_barang`, `no_faktur`, `id_suplier`, `kd_barang`, `harga`, `jumlah`, `total_belanja`, `status`, `detail`) VALUES
('14-04-2019', 'Per Kopling Honda Tiger', '21', 1, 'BR008', 9000, 15, 135000, 1, 1),
('14-04-2019', 'Kampas Kopling CBR 250', '213', 1, 'BR002', 235000, 20, 4700000, 1, 1),
('14-04-2019', 'Karet Kopling Jupiter Z', '2135', 1, 'BR005', 9000, 20, 180000, 1, 1),
('15-04-2019', 'Plat  kopling Yamaha', '3213', 1, 'BR004', 25000, 5, 125000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(32, 'Busi'),
(33, 'Kampas Rem'),
(34, 'Kopling'),
(35, 'Ban'),
(36, 'Radiator'),
(37, 'Oli'),
(38, 'Aksesoris'),
(39, 'Komponen'),
(43, 'Velg'),
(45, 'Piston'),
(46, 'Rem'),
(47, 'Shock Breaker'),
(48, 'Aki');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_user`
--

CREATE TABLE `tbl_level_user` (
  `id_level_user` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level_user`
--

INSERT INTO `tbl_level_user` (`id_level_user`, `nama_level`) VALUES
(1, 'Admin'),
(2, 'Penjaga'),
(3, 'Bos');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(20) NOT NULL,
  `menu_engg` varchar(20) NOT NULL,
  `link` varchar(15) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `is_main_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `nama_menu`, `menu_engg`, `link`, `icon`, `is_main_menu`) VALUES
(8, 'DATA BARANG', 'INVENTORY', 'Barang', 'ei-business-card', 0),
(10, 'KATEGORI ', 'CATEGORY', 'Kategori', 'ei-diamond', 0),
(11, 'TRANSAKSI', 'TRANSACTION', 'Transaksi', 'ei-money', 0),
(12, 'PENGGUNA', ' USERS', 'User', 'ei-key', 0),
(13, 'SUPLIER', 'SUPPLIER', 'Suplier', 'ei-office-cart', 0),
(15, 'LAPORAN ', 'REPORT', 'Laporan', 'ei-bank', 0),
(16, 'PEMBELIAN', 'PURCHASE', 'Pembelian', 'ei-shopping-cart-ful', 11),
(17, 'PENJUALAN', 'SALES', 'Penjualan', 'ei-deviantart', 11),
(20, 'Menu', 'Menu', 'Menu', 'ei-menu-7', 0),
(21, 'Dokumentasi', 'Documentation', 'Dokumentasi', 'ei-speech-box-text', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembeli`
--

CREATE TABLE `tbl_pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` text,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pembeli`
--

INSERT INTO `tbl_pembeli` (`id_pembeli`, `nama_pembeli`, `keterangan`) VALUES
(1, 'Pemjualan Barang', 'Penjualan Barang Biasa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `tanggal_beli` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `nama_barang` varchar(500) NOT NULL,
  `no_faktur` int(200) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `kd_barang` varchar(11) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_belanja` double NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=sudah di proses, 0=belum di proses',
  `detail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`tanggal_beli`, `nama_barang`, `no_faktur`, `id_pembeli`, `kd_barang`, `harga`, `jumlah`, `total_belanja`, `status`, `detail`) VALUES
('2019-04-14 22:31:09.542814', 'Kampas Kopling CBR 250', 1, 1, 'BR002', 260000, 1, 260000, 1, 1),
('2019-04-14 22:19:22.403948', 'Per Kopling Kawahara RACING', 3, 1, 'BR009', 70000, 1, 70000, 1, 1),
('2019-04-15 03:43:28.188851', 'Per Kopling Kawahara RACING', 135, 1, 'BR009', 70000, 5, 350000, 1, 1),
('2019-04-14 22:37:58.023884', 'Per Kopling Kawahara RACING', 654, 1, 'BR009', 70000, 1, 70000, 1, 1),
('2019-04-15 03:43:28.188851', 'Kampas kopling scorpio', 1231, 1, 'BR012', 168000, 5, 840000, 1, 1),
('2019-04-14 21:46:49.833092', 'Per Kopling Honda Tiger', 13513, 1, 'BR008', 15000, 1, 15000, 1, 1),
('2019-04-14 21:46:49.833092', 'Mangkok Rumah ganda kopling', 13514, 1, 'BR010', 80000, 2, 160000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan`
--

CREATE TABLE `tbl_satuan` (
  `id_satuan` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`id_satuan`, `satuan`) VALUES
(2, 'Bungkus'),
(3, 'kardus'),
(4, 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suplier`
--

CREATE TABLE `tbl_suplier` (
  `id_suplier` int(11) NOT NULL,
  `nama_suplier` text,
  `alamat` varchar(35) DEFAULT NULL,
  `No_telpon` varchar(13) DEFAULT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_suplier`
--

INSERT INTO `tbl_suplier` (`id_suplier`, `nama_suplier`, `alamat`, `No_telpon`, `keterangan`) VALUES
(1, 'Bos Iky Kulakan', 'Batang', '082242783390', 'Bos                            '),
(3, 'Dunia Ban Semarang', 'Semarang', '089654031397', 'Dunia Ban                            '),
(4, 'Pengembalian Barang', 'Batang', '628', 'Refund                            ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `id_level_user` int(11) NOT NULL,
  `foto` text NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `id_level_user`, `foto`, `nama_lengkap`) VALUES
(1, 'admin', 'admin', 1, '', 'Mahadhika'),
(21, 'Bos', 'bos', 3, '', 'Iky'),
(22, 'bejo', 'bejo', 2, '', 'Bejo'),
(23, 'ajik', 'ajik', 2, '', 'Ajik'),
(24, 'afid', 'afid', 2, '', 'afid');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_rule`
--

CREATE TABLE `tbl_user_rule` (
  `id_rule` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_level_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_rule`
--

INSERT INTO `tbl_user_rule` (`id_rule`, `id_menu`, `id_level_user`) VALUES
(1, 12, 1),
(3, 10, 1),
(4, 11, 1),
(5, 13, 1),
(6, 14, 1),
(7, 15, 1),
(8, 15, 4),
(9, 8, 4),
(10, 8, 1),
(11, 16, 1),
(12, 11, 4),
(13, 17, 1),
(14, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 21, 3),
(23, 15, 3),
(28, 22, 1),
(29, 23, 1),
(30, 23, 3),
(31, 17, 2),
(32, 16, 2),
(33, 13, 2),
(34, 21, 2),
(35, 11, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_barang`
-- (See below for the actual view)
--
CREATE TABLE `v_barang` (
`kd_barang` varchar(11)
,`nama_barang` text
,`nama_kategori` varchar(15)
,`stok_barang` int(11)
,`stok_minimal` int(11)
,`harga_jual` double
,`satuan` varchar(20)
,`harga_pokok` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_user`
-- (See below for the actual view)
--
CREATE TABLE `v_user` (
`id_user` int(11)
,`username` varchar(30)
,`password` varchar(20)
,`id_level_user` int(11)
,`foto` text
,`nama_lengkap` varchar(30)
,`nama_level` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `v_barang`
--
DROP TABLE IF EXISTS `v_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_barang`  AS  select `tb`.`kd_barang` AS `kd_barang`,`tb`.`nama_barang` AS `nama_barang`,`tk`.`nama_kategori` AS `nama_kategori`,`tb`.`stok_barang` AS `stok_barang`,`tb`.`stok_minimal` AS `stok_minimal`,`tb`.`harga_jual` AS `harga_jual`,`ts`.`satuan` AS `satuan`,`tb`.`harga_pokok` AS `harga_pokok` from ((`tbl_barang` `tb` join `tbl_kategori` `tk`) join `tbl_satuan` `ts`) where ((`tb`.`id_kategori` = `tk`.`id_kategori`) and (`ts`.`id_satuan` = `tb`.`barang_satuan`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_user`
--
DROP TABLE IF EXISTS `v_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user`  AS  select `tu`.`id_user` AS `id_user`,`tu`.`username` AS `username`,`tu`.`password` AS `password`,`tu`.`id_level_user` AS `id_level_user`,`tu`.`foto` AS `foto`,`tu`.`nama_lengkap` AS `nama_lengkap`,`tl`.`nama_level` AS `nama_level` from (`tbl_user` `tu` join `tbl_level_user` `tl`) where (`tu`.`id_level_user` = `tl`.`id_level_user`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `tbl_beli_suplier`
--
ALTER TABLE `tbl_beli_suplier`
  ADD PRIMARY KEY (`no_faktur`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  ADD PRIMARY KEY (`id_level_user`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pembeli`
--
ALTER TABLE `tbl_pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`no_faktur`);

--
-- Indexes for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  ADD PRIMARY KEY (`id_suplier`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_user_rule`
--
ALTER TABLE `tbl_user_rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  MODIFY `id_level_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_pembeli`
--
ALTER TABLE `tbl_pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `id_suplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_user_rule`
--
ALTER TABLE `tbl_user_rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
