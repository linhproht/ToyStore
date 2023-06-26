-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 05, 2023 lúc 05:05 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `online_shopping`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `Cat_ID` varchar(10) NOT NULL,
  `Cat_Name` varchar(30) NOT NULL,
  `Cat_Des` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`Cat_ID`, `Cat_Name`, `Cat_Des`) VALUES
('C001', 'Iphone', 'Iphone Product'),
('C002', 'Ipad', 'Ipad Product'),
('C003', 'Desktop computer', 'Desktop computer product'),
('Cate 005', 'PC', 'PC'),
('Cate 006', 'Laptop', 'laptop'),
('Cate2077', 'Personal Comuter', 'Example');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `CustName` varchar(30) NOT NULL,
  `gender` int(11) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `CusDate` int(11) NOT NULL,
  `CusMonth` int(11) NOT NULL,
  `CusYear` int(11) NOT NULL,
  `SSN` varchar(10) DEFAULT NULL,
  `ActiveCode` varchar(100) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`Username`, `Password`, `CustName`, `gender`, `Address`, `telephone`, `email`, `CusDate`, `CusMonth`, `CusYear`, `SSN`, `ActiveCode`, `state`) VALUES
('Finn', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Hung Dung', 0, 'Can Tho', '0903100550', 'nhdung.CPL@gmail.com', 31, 8, 1980, '', '', 1),
('linhproht', 'fcea920f7412b5da7be0cf42b8c93759', 'van Nguyễn Duy Linh', 0, 'p9, 3/2', '0833102718', 'vnguyenduylinh@gmail.com', 16, 9, 1988, '', '', 1),
('nhdung', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Hung Dung', 0, 'Can Thow', '0903100550', 'nhdung@gmail.com', 31, 8, 1980, '', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `Product_ID` varchar(10) NOT NULL,
  `Product_Name` varchar(30) NOT NULL,
  `Price` bigint(20) NOT NULL,
  `oldPrice` decimal(12,2) NOT NULL,
  `SmallDesc` varchar(1000) NOT NULL,
  `DetailDesc` text NOT NULL,
  `ProDate` datetime NOT NULL,
  `Pro_qty` int(11) NOT NULL,
  `Pro_image` varchar(200) NOT NULL,
  `Cat_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`Product_ID`, `Product_Name`, `Price`, `oldPrice`, `SmallDesc`, `DetailDesc`, `ProDate`, `Pro_qty`, `Pro_image`, `Cat_ID`) VALUES
('P001', 'Iphone 11 Pro Max', 28000000, '0.00', 'New Iphone', '<p>\r\n	New Iphone of Apple in 2019</p>\r\n', '2023-02-02 09:01:44', 30, '2_AppleIpad4_3.jpg', 'C001'),
('P002', 'Ipad pro', 20000000, '0.00', 'New Ipad ', '<p>\r\n	New Ipad of Apple in 2019</p>\r\n', '2023-02-02 09:01:54', 10, '4_Ipad2_2.jpg', 'C002'),
('P003', 'User Computer Desktop', 15000000, '0.00', 'Computer Desktop with new Generation', '<p>\r\n	Computer Desktop with new Generation</p>\r\n', '2023-02-02 09:01:37', 20, '2_AppleIpad4_2.jpg', 'C003'),
('P004', 'Iphone 14 pro max', 39900000, '0.00', 'iphone', '<p>\r\n	iphone 14 promax</p>\r\n', '2023-02-02 08:21:28', 1, 'iphone14promax.jpg', 'C001'),
('P005', 'Ipad Gen 10', 129000000, '0.00', 'ipad', '<p>\r\n	i pad gen 10</p>\r\n', '2023-02-02 08:22:09', 3, 'ipadgen10.jpg', 'C002'),
('P006', 'PC White series', 12180000, '0.00', 'pc', '<p>\r\n	pc white series</p>\r\n', '2023-02-02 08:23:05', 4, 'whiteseries.jpg', 'Cate 005'),
('P007', 'IphoneX', 10000000, '0.00', 'iphone ', '<p>\r\n	I phone X</p>\r\n', '2023-02-02 08:23:58', 4, 'iphonex.jpg', 'C001'),
('P008', 'Ace Nitro 5', 32000000, '0.00', 'laptop', '<p>\r\n	Laptop Acer Nitro 5 5000 series</p>\r\n', '2023-02-02 08:24:41', 4, 'acernitro5.jpg', 'Cate 006');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cat_ID`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Username`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Cat_ID` (`Cat_ID`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Cat_ID`) REFERENCES `category` (`Cat_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
