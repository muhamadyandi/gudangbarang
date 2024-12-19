-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 03:49 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sp_stockbarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_item`
--

CREATE TABLE `m_item` (
  `item_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_item`
--

INSERT INTO `m_item` (`item_id`, `item_code`, `item_name`, `item_quantity`, `item_price`, `item_supplier_id`) VALUES
(17, 'Pakaian', 'Kaos Polos', 19, 85000, 5),
(18, 'Pakaian', 'Celana Pendek', 19, 80000, 5),
(19, 'Sepatu', 'Nike Court Vision', 8, 1250000, 6),
(20, 'Sepatu', 'Adidas Wingtip Black', 9, 1150000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `m_mutasi`
--

CREATE TABLE `m_mutasi` (
  `mutasi_id` int(11) NOT NULL,
  `mutasi_item_id` int(11) NOT NULL,
  `mutasi_date` date NOT NULL,
  `mutasi_quantity` int(11) NOT NULL,
  `mutasi_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_mutasi`
--

INSERT INTO `m_mutasi` (`mutasi_id`, `mutasi_item_id`, `mutasi_date`, `mutasi_quantity`, `mutasi_price`) VALUES
(8, 7, '2021-02-23', 5, 175000),
(9, 6, '2021-02-25', 5, 175000),
(10, 9, '2021-03-16', 10, 500000),
(11, 10, '2021-03-16', 10, 500000),
(12, 3, '2021-03-18', 10, 500000),
(13, 3, '2021-03-18', 10, 500000),
(14, 8, '2021-03-22', 10, 350000),
(15, 8, '2021-03-22', 10, 350000),
(16, 17, '2024-12-25', 12, 1020000),
(17, 18, '2024-12-25', 12, 960000),
(18, 19, '2024-12-25', 4, 5000000),
(19, 20, '2024-12-25', 3, 3450000);

-- --------------------------------------------------------

--
-- Table structure for table `m_supplier`
--

CREATE TABLE `m_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(30) NOT NULL,
  `supplier_contact` varchar(100) NOT NULL,
  `supplier_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_supplier`
--

INSERT INTO `m_supplier` (`supplier_id`, `supplier_name`, `supplier_contact`, `supplier_address`) VALUES
(5, 'Adit', 'Wa : +62 8123 1234 123', 'Bandung'),
(6, 'Sopo', 'Wa : +62 8321 4321 321', 'Cirebon');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_level` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama_user`, `username`, `password`, `user_level`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_item`
--
ALTER TABLE `m_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `m_mutasi`
--
ALTER TABLE `m_mutasi`
  ADD PRIMARY KEY (`mutasi_id`);

--
-- Indexes for table `m_supplier`
--
ALTER TABLE `m_supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_item`
--
ALTER TABLE `m_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `m_mutasi`
--
ALTER TABLE `m_mutasi`
  MODIFY `mutasi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `m_supplier`
--
ALTER TABLE `m_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
