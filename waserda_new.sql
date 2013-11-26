-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2013 at 06:23 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `waserda`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_admin`
--

CREATE TABLE IF NOT EXISTS `data_admin` (
  `id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_admin`
--

INSERT INTO `data_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE IF NOT EXISTS `data_barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `img_dir` varchar(100) NOT NULL,
  PRIMARY KEY (`id_barang`),
  UNIQUE KEY `nama` (`nama`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `data_barang`
--

INSERT INTO `data_barang` (`id_barang`, `nama`, `harga`, `stok`, `kategori`, `img_dir`) VALUES
(1, 'kopi', 1000, 3, 'minuman', 'assets/img/kopi.png'),
(2, 'jus jeruk', 1100, 1, 'minuman', 'assets/img/jus_jeruk.jpg'),
(3, 'black forest', 13400, 500, 'makanan', 'assets/img/black_forest.jpg'),
(4, 'labu', 18000, 300, 'makanan', 'assets/img/labu.jpg'),
(5, 'wortel', 5000, 100, 'makanan', 'assets/img/wortel.jpg'),
(6, 'beras', 18000, 222, 'makanan', 'assets/img/beras.jpg'),
(7, 'wafer', 5000, 111, 'makanan', 'assets/img/wafer.jpg'),
(8, 'tahu', 5000, 132, 'makanan', 'assets/img/tahu.jpg'),
(9, 'tempe', 5000, 224, 'makanan', 'assets/img/tempe.jpg'),
(10, 'kubis', 5000, 555, 'makanan', 'assets/img/kubis.jpg'),
(11, 'biskuit 1', 5000, 3333, 'makanan', 'assets/img/biskuit_1.jpg'),
(12, 'biskuit 2', 5000, 642, 'makanan', 'assets/img/biskuit_2.jpg'),
(13, 'biskuit 3', 5000, 344, 'makanan', 'assets/img/biskuit_3.jpg'),
(14, 'air mineral', 5000, 444, 'minuman', 'assets/img/air_mineral.jpg'),
(15, 'jus jambu', 5000, 777, 'minuman', 'assets/img/jus_jambu.jpg'),
(16, 'jus apel', 5000, 654, 'minuman', 'assets/img/jus_apel.jpg'),
(17, 'softdrink', 5000, 999, 'minuman', 'assets/img/softdrink.jpg'),
(18, 'jus pepaya', 5000, 764, 'minuman', 'assets/img/jus_pepaya.jpg'),
(19, 'jus anggur', 5000, 333, 'minuman', 'assets/img/jus_anggur.jpg'),
(20, 'teh manis', 5000, 111, 'minuman', 'assets/img/teh_manis.jpg'),
(21, 'jus sirsak', 5000, 222, 'minuman', 'assets/img/jus_sirsak.jpg'),
(22, 'jus melon', 5000, 123, 'minuman', 'assets/img/jus_melon.jpg'),
(30, 'aaaaaaa', 3434, 3434, 'dfdf', 'ee'),
(32, 'ads', 343, 22, 'fsdf', 'rerte'),
(34, 'dfdfdf', 333, 88, 'cvv', 'a'),
(35, 'aaaxxxxxx', 4343, 44, 'fgfg', 'rrrrr'),
(36, 'ttt', 323, 22, 'dfd', 'xxx'),
(37, 'yyy', 4343, 23423, 'd', 'uuuu'),
(38, 'rr5', 787, 33, 'vgdgvdfgd', 'hghyg'),
(39, 'fdfdf', 33, 545, 'cvgcg', 'frrr'),
(40, 'gfg', 44, 66, 'fgfg', 'ffffffff');

-- --------------------------------------------------------

--
-- Table structure for table `data_kartu_kredit`
--

CREATE TABLE IF NOT EXISTS `data_kartu_kredit` (
  `no_kartu` varchar(50) NOT NULL,
  `nama_pemegang_kartu` varchar(45) NOT NULL,
  `expired_date` date NOT NULL,
  PRIMARY KEY (`no_kartu`),
  UNIQUE KEY `no_kartu_UNIQUE` (`no_kartu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_kartu_kredit`
--

INSERT INTO `data_kartu_kredit` (`no_kartu`, `nama_pemegang_kartu`, `expired_date`) VALUES
('111134', 'abdul', '2013-10-25'),
('111231', 'ani', '2013-10-25'),
('111234', 'budi', '2013-11-08'),
('112233', 'karno', '2013-10-25'),
('123428', 'ibnu', '2013-10-25'),
('123451', 'adi', '2013-10-14'),
('221122', 'sri', '2013-10-25'),
('421233', 'asnul', '2013-10-25'),
('432111', 'badrun', '2013-10-25'),
('432123', 'ihsan', '2013-10-09'),
('443355', 'ana', '2013-10-25'),
('444321', 'umar', '2013-10-05'),
('444443', 'ali', '2013-10-25'),
('444532', 'indah', '2013-10-31'),
('444998', 'sumidah', '2013-10-25'),
('555222', 'ismail', '2013-10-25'),
('555432', 'ibrahim', '2013-10-05'),
('765222', 'hasnul', '2013-10-25'),
('888765', 'salim', '2013-10-25'),
('898665', 'qodrun', '2013-10-09');

-- --------------------------------------------------------

--
-- Table structure for table `data_keranjang`
--

CREATE TABLE IF NOT EXISTS `data_keranjang` (
  `id_user` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  PRIMARY KEY (`id_user`,`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE IF NOT EXISTS `data_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama_lengkap` varchar(45) NOT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `provinsi` varchar(45) DEFAULT NULL,
  `kabupaten_kota` varchar(45) DEFAULT NULL,
  `kodepos` varchar(10) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id_user`, `username`, `password`, `nama_lengkap`, `no_handphone`, `alamat`, `provinsi`, `kabupaten_kota`, `kodepos`, `email`) VALUES
(1, 'username', 'password', 'test', NULL, NULL, NULL, NULL, NULL, 'test@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `nama`) VALUES
(1, 'testaja'),
(2, 'coba lagi'),
(3, 'dong broh');

-- --------------------------------------------------------

--
-- Table structure for table `user_kk`
--

CREATE TABLE IF NOT EXISTS `user_kk` (
  `id_user` int(11) NOT NULL,
  `no_kartu` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`,`no_kartu`),
  UNIQUE KEY `no_kartu_UNIQUE` (`no_kartu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_keranjang`
--
ALTER TABLE `data_keranjang`
  ADD CONSTRAINT `fk_data_keranjang_data_barang1` FOREIGN KEY (`id_user`) REFERENCES `data_barang` (`id_barang`),
  ADD CONSTRAINT `fk_data_keranjang_data_user` FOREIGN KEY (`id_user`) REFERENCES `data_user` (`id_user`);

--
-- Constraints for table `user_kk`
--
ALTER TABLE `user_kk`
  ADD CONSTRAINT `fk_user_kk_data_kartu_kredit1` FOREIGN KEY (`no_kartu`) REFERENCES `data_kartu_kredit` (`no_kartu`),
  ADD CONSTRAINT `fk_user_kk_data_user1` FOREIGN KEY (`id_user`) REFERENCES `data_user` (`id_user`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
