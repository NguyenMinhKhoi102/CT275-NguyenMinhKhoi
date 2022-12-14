-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 11:26 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ct275_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `hd_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id`, `so_luong`, `sp_id`, `hd_id`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 2),
(3, 1, 1, 3),
(4, 11, 1, 4),
(5, 1, 1, 5),
(6, 1, 1, 6),
(7, 1, 1, 7),
(8, 1, 1, 8),
(9, 1, 8, 9),
(10, 1, 8, 10),
(11, 1, 8, 11),
(12, 1, 8, 12),
(13, 1, 8, 13),
(14, 1, 1, 14),
(15, 7, 8, 15),
(16, 1, 1, 16),
(17, 1, 8, 17),
(18, 10, 8, 18),
(19, 1, 1, 21),
(20, 1, 8, 22),
(21, 1, 1, 23),
(22, 1, 8, 24),
(23, 6, 8, 25),
(24, 5, 8, 26),
(25, 3, 26, 27),
(26, 2, 35, 28),
(27, 1, 31, 28),
(28, 3, 36, 28),
(29, 1, 26, 28);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `kh_id` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`id`, `sp_id`, `kh_id`, `so_luong`) VALUES
(9, 8, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `ngaylap` date NOT NULL,
  `trangthai` char(1) DEFAULT '0',
  `kh_id` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id`, `ngaylap`, `trangthai`, `kh_id`, `thanhtien`) VALUES
(1, '2022-11-09', '0', 1, 4000000),
(2, '2022-11-09', '0', 1, 7000000),
(3, '2022-11-09', '1', 1, 9000000),
(4, '2022-11-09', '0', 1, 1100000),
(5, '2022-11-10', '0', 1, 100000),
(6, '2022-11-10', '0', 1, 100000),
(7, '2022-11-10', '0', 1, 900000),
(8, '2022-11-10', '0', 1, 900000),
(9, '2022-11-10', '0', 1, 2000000),
(10, '2022-11-10', '0', 1, 2000000),
(11, '2022-11-10', '0', 1, 2000000),
(12, '2022-11-10', '0', 1, 2000000),
(13, '2022-11-10', '0', 1, 2000000),
(14, '2022-11-10', '0', 1, 900000),
(15, '2022-11-10', '0', 1, 14000000),
(16, '2022-11-10', '0', 1, 900000),
(17, '2022-11-11', '0', 1, 2000000),
(18, '2022-11-11', '0', 1, 20000000),
(19, '2022-11-11', '0', 1, 220000),
(20, '2022-11-11', '0', 1, 2000000),
(21, '2022-11-11', '0', 1, 900000),
(22, '2022-11-11', '0', 1, 2000000),
(23, '2022-11-12', '0', 10, 900000),
(24, '2022-11-12', '0', 10, 2000000),
(25, '2022-11-12', '0', 10, 12000000),
(26, '2022-11-12', '1', 1, 10000000),
(27, '2022-11-13', '0', 1, 4275000),
(28, '2022-11-13', '0', 1, 10625000);

-- --------------------------------------------------------

--
-- Stand-in structure for view `info_giohang`
-- (See below for the actual view)
--
CREATE TABLE `info_giohang` (
`id` int(11)
,`tensanpham` varchar(100)
,`so_luong` int(11)
,`gia` int(11) unsigned
,`hinh_anh` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `hoten` varchar(40) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` char(10) NOT NULL,
  `sdt` char(10) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `vai_tro` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `email`, `matkhau`, `hoten`, `ngaysinh`, `gioitinh`, `sdt`, `diachi`, `vai_tro`) VALUES
(1, 'huyb1910227@gmail.com', 'bbb8aae57c104cda40c93843ad5e6db8', '????? Th??i Gia Huy', '2001-12-18', 'Nam', '0932988029', '221/8, P. Long H??a, Q. B??nh Th???y, TP. C???n Th??', 0),
(10, 'hoanguyen@gmail.com', 'bbb8aae57c104cda40c93843ad5e6db8', 'Nguy???n Th??? Hoa', '2000-11-08', 'N???', '0921772830', '176, P. An H??a, ???????ng Nguy???n V??n C???, Q. Ninh Ki???u, TP. C???n Th??', 0),
(11, 'khoib1910241@gmail.com', 'bbb8aae57c104cda40c93843ad5e6db8', 'Nguy???n Minh Kh??i', '1999-03-10', 'Nam', '0981772661', '21/78', 1),
(13, 'student@cit.ctu.edu.vn', '25d55ad283aa400af464c76d713c07ad', 'Nguy???n V??n A', '2000-11-03', 'Nam', '0932988567', '12/867', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloai` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloai`) VALUES
(1, 'K??nh m??t'),
(2, 'K??nh th?????ng'),
(3, 'K??nh c???n.');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `gia` int(11) UNSIGNED NOT NULL,
  `kich_thuoc` varchar(50) NOT NULL,
  `mo_ta` text NOT NULL,
  `nhan_hieu` varchar(50) NOT NULL,
  `hinh_anh` varchar(100) DEFAULT 'no-image-available.png',
  `gioi_tinh` varchar(100) NOT NULL,
  `loai_id` int(11) NOT NULL,
  `giam_gia` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `gia`, `kich_thuoc`, `mo_ta`, `nhan_hieu`, `hinh_anh`, `gioi_tinh`, `loai_id`, `giam_gia`) VALUES
(1, 'K??nh m??t th???i trang cho nam Ray-ban', 9000000, '52 x 16 x 147', 'Ch???t li???u cao c???p nay k??m theo ki???u d??ng hi???n ?????i, ph?? h???p v???i m???i l???a tu???i.', 'Ray-ban', 'sun.jpg', 'Nam', 1, 10),
(8, 'K??nh m??t n??? th???i trang Gucci n???i b???t 2022', 4000000, '54 x 18 x 147', 'Ch???t li???u cao c???p, sang tr???ng, tinh t??? ???? ??en l???i s??? h??i l??ng cho kh??ch h??ng.', 'Gucci', '20221112191950_gucci-logo-gg0572o-006_b9acd4f92.png', 'N???', 1, 0),
(26, 'M???t k??nh th???i trang Unisex Chanel-Coco', 1500000, '50 x 20 x 140', 'Lo???i k??nh th???i trang ph?? h???p cho c??? nam v?? n???, c?? kh??? n??ng ch???ng tia UV g??y h???i cho m???t', 'Chanel', '20221112185049_chanel-coco-charms-3437-c501-glasses-hd-1.jpg', 'Unisex', 2, 5),
(27, 'K??nh c???n nam Ray-Ban cao c???p 2020', 3000000, '52 x 30 x 145', 'Lo???i m???t k??nh c???n ph?? h???p v???i m???i l???a tu???i v?? ?????y ????? ????? c???n kh??c nhau.', 'Ray-Ban', '20221112185455_16cae761-708e.jpg', 'Nam', 3, 0),
(28, 'M???t kinh c???n Nam Inkey th???i trang', 800000, '54 x 18 x 147', 'Lo???i m???t k??nh c???n gi?? r???, ti???t ki???m v???i ch???t li???u b???n b???.', 'Inkey', '20221112185816_inkey-bt-ik-10-02.png', 'Nam', 3, 0),
(29, 'M???t k??nh th???i trang Lafont Unisex cao c???p', 4000000, '52 x 30 x 145', 'Lo???i m???t k??nh th???i trang, ??ang l?? xu h?????ng.', 'Lafont', '20221112190117_den-1-scaled.jpg', 'Unisex', 2, 12),
(30, 'K??nh c???n Unisex Flexon v??ng ?????ng r???c r???', 5000000, '54 x 18 x 147', 'K??nh c???n v???i m??u s???c b???t m???t v?? th???i trang.', 'Flexon', '20221112190341_gong-kinh-nam-nua-vien-800x800.jpg', 'Unisex', 3, 0),
(31, 'K??nh c???n Nam Flexon m??u b???c g???ng tr??n', 2500000, '52 x 30 x 145', '????y l?? lo???i k??nh ??ang ???????c y??u th??ch.', 'Flexon', '20221112190546_DSCF4080-e1564115601725.jpg', 'Nam', 3, 0),
(32, 'K??nh c???n g???ng vu??ng m??u b???c Flexon cho nam', 500000, '52 x 30 x 145', 'K??nh c???n c?? m??u b???c, ch???t li???u b???n b???.', 'Flexon', '20221112190747_IMG_8894-700x700.jpg', 'Nam', 3, 0),
(33, 'K??nh m??t n??? th???i trang Rossi m??u v??ng ?????ng', 12000000, '54 x 18 x 147', 'Lo???i k??nh cao c???p ???????c m??? v??ng tinh t???.', 'Rossi', '20221112191004_Best Sunglasses Women-2022.png', 'N???', 1, 0),
(34, 'K??nh m??t Tom Ford th???i trang d??nh cho nam', 6000000, '54 x 18 x 147', 'Lo???i k??nh m??t cho nam v???i ph??ng c??ch m???nh m???, tr??? trung.', 'Tom Ford', '20221112191205_occhiali-da-sole.jpg', 'Nam', 1, 0),
(35, 'K??nh m??t n??? th???i trang Chanel ??en', 2500000, '54 x 18 x 147', 'Lo???i k??nh cao c???p, hi???n ?????i, ph?? h???p v???i m???i l???a tu???i.', 'Chanel', '20221112191348_best-women-sunglass.jpg', 'N???', 1, 0),
(36, 'K??nh m??t nam th???i trang Costa', 4200000, '54 x 18 x 147', '????y l?? lo???i k??nh ???????c y??u th??ch nh???t n??m 2020.', 'Costa', '20221112191709_best-sunglasses-men-randolph-aviator-luxe-digital-780x520.jpg', 'Nam', 1, 0);

-- --------------------------------------------------------

--
-- Structure for view `info_giohang`
--
DROP TABLE IF EXISTS `info_giohang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `info_giohang`  AS SELECT `g`.`id` AS `id`, `s`.`tensanpham` AS `tensanpham`, `g`.`so_luong` AS `so_luong`, `s`.`gia` AS `gia`, `s`.`hinh_anh` AS `hinh_anh` FROM ((`giohang` `g` join `khachhang` `k` on(`g`.`kh_id` = `k`.`id`)) join `sanpham` `s` on(`g`.`sp_id` = `s`.`id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sp_id` (`sp_id`),
  ADD KEY `hd_id` (`hd_id`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sp_id` (`sp_id`),
  ADD KEY `kh_id` (`kh_id`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kh_id` (`kh_id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `sdt` (`sdt`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loai_id` (`loai_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `FK_chitiethoadon_hoadon` FOREIGN KEY (`hd_id`) REFERENCES `hoadon` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_chitiethoadon_sanpham` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `FK__khachhang` FOREIGN KEY (`kh_id`) REFERENCES `khachhang` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__sanpham` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`kh_id`) REFERENCES `khachhang` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`loai_id`) REFERENCES `loaisanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
