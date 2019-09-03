-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2019 at 02:09 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_nanda`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_administrator`
--

CREATE TABLE IF NOT EXISTS `tb_administrator` (
  `id_admin` varchar(30) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username_admin` varchar(30) NOT NULL,
  `pass_admin` varchar(30) NOT NULL,
  `notlp_admin` int(15) NOT NULL,
  `email_admin` varchar(50) NOT NULL,
  `alamat_admin` text NOT NULL,
  `kodepos_admin` int(10) NOT NULL,
  `kota_admin` text NOT NULL,
  `prov_admin` text NOT NULL,
  `noktp_admin` int(30) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_administrator`
--

INSERT INTO `tb_administrator` (`id_admin`, `nama_admin`, `username_admin`, `pass_admin`, `notlp_admin`, `email_admin`, `alamat_admin`, `kodepos_admin`, `kota_admin`, `prov_admin`, `noktp_admin`) VALUES
('1', 'admin', 'admin', 'admin', 21, 'admin@gmail.com', '-', 910, '-', 'Jakarta', 91292002);

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_masuk`
--

CREATE TABLE IF NOT EXISTS `tb_barang_masuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produk` varchar(30) NOT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tb_barang_masuk`
--

INSERT INTO `tb_barang_masuk` (`id`, `id_produk`, `tgl_masuk`, `jumlah`) VALUES
(7, 'PRD-0002', '2019-09-01', 2),
(8, 'PRD-0001', '2019-09-03', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tb_biayakirim`
--

CREATE TABLE IF NOT EXISTS `tb_biayakirim` (
  `id_ongkir` varchar(30) NOT NULL,
  `kota_kirim` text NOT NULL,
  `biaya` double NOT NULL,
  PRIMARY KEY (`id_ongkir`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_biayakirim`
--

INSERT INTO `tb_biayakirim` (`id_ongkir`, `kota_kirim`, `biaya`) VALUES
('BYK-0001', 'Indrmayu', 1000),
('BYK-0002', 'Cirebon', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE IF NOT EXISTS `tb_kategori` (
  `id_kategori` varchar(30) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `stok` int(50) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`, `stok`) VALUES
('KTG-0001', 'AB', NULL),
('KTG-0002', 'BC', NULL),
('KTG-0003', 'ghgg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kurir`
--

CREATE TABLE IF NOT EXISTS `tb_kurir` (
  `id_kurir` varchar(30) NOT NULL,
  `nama_kurir` varchar(50) NOT NULL,
  `notlp_kurir` int(15) NOT NULL,
  `username_kurir` varchar(30) NOT NULL,
  `pass_kurir` varchar(30) NOT NULL,
  `alamat_kurir` text,
  `jeniskel_kurir` char(15) NOT NULL,
  `noktp_kurir` int(30) NOT NULL,
  PRIMARY KEY (`id_kurir`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kurir`
--

INSERT INTO `tb_kurir` (`id_kurir`, `nama_kurir`, `notlp_kurir`, `username_kurir`, `pass_kurir`, `alamat_kurir`, `jeniskel_kurir`, `noktp_kurir`) VALUES
('1233', 'Bambang', 1221321, 'qq', 'qq', 'cfddf', 'Laki Laki', 121),
('KUR-1234', 'Agus', 22121, '123', '123', 'saas', '', 11212);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE IF NOT EXISTS `tb_pelanggan` (
  `id_pelanggan` varchar(30) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `username_pelanggan` varchar(50) NOT NULL,
  `pass_pelanggan` varchar(30) NOT NULL,
  `alamat_pelanggan` varchar(1000) NOT NULL,
  `kodepos_pel` int(10) NOT NULL,
  `kotapel` text NOT NULL,
  `provpel` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `notlp_pel` int(11) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE IF NOT EXISTS `tb_pembayaran` (
  `id_pembayaran` varchar(30) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jam_bayar` time NOT NULL,
  `id_pesanan` varchar(30) DEFAULT NULL,
  `jumlah_bayar` int(11) DEFAULT '0',
  PRIMARY KEY (`id_pembayaran`),
  UNIQUE KEY `id_produk` (`id_pesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id_pembayaran`, `tgl_bayar`, `jam_bayar`, `id_pesanan`, `jumlah_bayar`) VALUES
('BYR-0001', '2019-09-03', '12:00:00', 'INV-0011', 1400);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan`
--

CREATE TABLE IF NOT EXISTS `tb_pemesanan` (
  `id_pesanan` varchar(30) NOT NULL,
  `tgl_pesanan` date NOT NULL,
  `total_harga` double NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `alamat_penerima` text,
  `id_pengiriman` varchar(30) DEFAULT NULL,
  `id_ongkir` varchar(30) DEFAULT NULL,
  `id_pembayaran` varchar(30) DEFAULT NULL,
  `id_pelanggan` varchar(30) DEFAULT NULL,
  `id_kurir` varchar(30) DEFAULT NULL,
  `status` enum('draft','confirm','on_process','delivered','cancel') DEFAULT 'draft',
  PRIMARY KEY (`id_pesanan`),
  UNIQUE KEY `id_kurir` (`id_kurir`),
  UNIQUE KEY `id_pelanggan` (`id_pelanggan`),
  UNIQUE KEY `id_pembayaran` (`id_pembayaran`),
  UNIQUE KEY `id_ongkir` (`id_ongkir`),
  UNIQUE KEY `id_pengiriman` (`id_pengiriman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemesanan`
--

INSERT INTO `tb_pemesanan` (`id_pesanan`, `tgl_pesanan`, `total_harga`, `penerima`, `alamat_penerima`, `id_pengiriman`, `id_ongkir`, `id_pembayaran`, `id_pelanggan`, `id_kurir`, `status`) VALUES
('INV-0011', '2019-09-03', 1400, 'Mas Boy', 'Jl. jalan jalan', '', 'BYK-0001', NULL, NULL, '1233', 'on_process');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanandetail`
--

CREATE TABLE IF NOT EXISTS `tb_pemesanandetail` (
  `id_detailpesanan` int(11) NOT NULL AUTO_INCREMENT,
  `jumlah` double NOT NULL,
  `id_pesanan` varchar(30) NOT NULL,
  `subtotal` int(100) NOT NULL,
  `id_produk` varchar(30) NOT NULL,
  PRIMARY KEY (`id_detailpesanan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tb_pemesanandetail`
--

INSERT INTO `tb_pemesanandetail` (`id_detailpesanan`, `jumlah`, `id_pesanan`, `subtotal`, `id_produk`) VALUES
(19, 2, 'INV-0011', 200, 'PRD-0001'),
(20, 2, 'INV-0011', 200, 'PRD-0001');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengiriman`
--

CREATE TABLE IF NOT EXISTS `tb_pengiriman` (
  `id_pengiriman` varchar(30) NOT NULL,
  `id_kurir` varchar(30) NOT NULL,
  `status` enum('on_process','delivered') DEFAULT 'on_process',
  `id_pesanan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_pengiriman`),
  UNIQUE KEY `id_kurir` (`id_kurir`),
  UNIQUE KEY `id_pesanan` (`id_pesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengiriman`
--

INSERT INTO `tb_pengiriman` (`id_pengiriman`, `id_kurir`, `status`, `id_pesanan`) VALUES
('KRM-0001', '1233', 'on_process', 'INV-0011');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE IF NOT EXISTS `tb_produk` (
  `id_produk` varchar(30) NOT NULL,
  `id_kategori` varchar(30) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `stok_produk` int(50) NOT NULL,
  `harga_produk` double NOT NULL,
  `des_produk` text NOT NULL,
  `terjual` int(50) NOT NULL,
  `size` varchar(10) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `id_kategori`, `nama_produk`, `stok_produk`, `harga_produk`, `des_produk`, `terjual`, `size`) VALUES
('PRD-0001', '', 'Leptop', 6, 100, 'des', 4, ''),
('PRD-0002', '', 'Mouse', 2, 2000, '---', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `telepon`
--

CREATE TABLE IF NOT EXISTS `telepon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `nomor` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `telepon`
--

INSERT INTO `telepon` (`id`, `nama`, `nomor`) VALUES
(1, 'Mas', '02198989'),
(2, 'Boy', '0127878');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD CONSTRAINT `tb_pemesanan_ibfk_1` FOREIGN KEY (`id_kurir`) REFERENCES `tb_kurir` (`id_kurir`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
