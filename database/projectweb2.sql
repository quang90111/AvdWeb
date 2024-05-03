-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2024 at 12:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectweb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `baohanh`
--

CREATE TABLE `baohanh` (
  `ID_Baohanh` int(11) NOT NULL,
  `Tenbaohanh` varchar(45) NOT NULL,
  `Thoigianbaohanh` int(10) UNSIGNED ZEROFILL NOT NULL,
  `Trangthai` varchar(10) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `baohanh`
--

INSERT INTO `baohanh` (`ID_Baohanh`, `Tenbaohanh`, `Thoigianbaohanh`, `Trangthai`) VALUES
(1, '12 Tháng', 0000000012, 'T'),
(2, '6 tháng', 0000000006, 'T'),
(3, '1 tháng', 0000000001, 'T'),
(4, '3 tháng', 0000000003, 'T'),
(5, '2 tháng', 0000000002, 'T');

-- --------------------------------------------------------

--
-- Table structure for table `chitietchucnang`
--

CREATE TABLE `chitietchucnang` (
  `ID_chitietchucnang` int(11) NOT NULL,
  `id_quyen` int(11) NOT NULL,
  `id_chucnang` int(11) NOT NULL,
  `trangthai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietchucnang`
--

INSERT INTO `chitietchucnang` (`ID_chitietchucnang`, `id_quyen`, `id_chucnang`, `trangthai`) VALUES
(1, 1, 1, 'T'),
(2, 1, 2, 'T'),
(3, 1, 3, 'T'),
(4, 2, 1, 'T'),
(5, 2, 2, 'T');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id_chitietdonhang` int(11) NOT NULL,
  `id_donhangnew` int(11) NOT NULL,
  `id_dienthoai` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` double NOT NULL,
  `ID_khuyenmai` int(11) NOT NULL,
  `ID_baohanh` int(11) NOT NULL,
  `Giasaukm` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id_chitietdonhang`, `id_donhangnew`, `id_dienthoai`, `soluong`, `gia`, `ID_khuyenmai`, `ID_baohanh`, `Giasaukm`) VALUES
(1, 1, 22, 1, 11499000, 1, 1, 10349100),
(2, 1, 24, 1, 13990000, 1, 1, 12591000),
(3, 1, 23, 1, 12599000, 1, 1, 11339100),
(4, 1, 16, 1, 5800000, 1, 1, 5220000),
(5, 1, 17, 1, 6990000, 1, 1, 6291000),
(6, 1, 18, 1, 7990000, 1, 1, 7191000),
(7, 2, 22, 4, 11499000, 1, 1, 10349100),
(8, 3, 15, 3, 4990000, 1, 1, 4491000),
(10, 5, 15, 5, 4990000, 1, 1, 4491000),
(11, 6, 13, 2, 2990000, 1, 1, 2691000),
(12, 6, 14, 3, 3990000, 1, 1, 3591000),
(13, 7, 22, 1, 120001, 1, 1, 108000.9),
(14, 7, 16, 1, 5800000, 1, 1, 5220000),
(15, 8, 32, 1, 20000000, 1, 1, 18000000);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `id_chitietphieunhap` int(11) NOT NULL,
  `id_phieunhap` int(11) NOT NULL,
  `id_dienthoai` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`id_chitietphieunhap`, `id_phieunhap`, `id_dienthoai`, `soluong`, `gia`) VALUES
(1, 1, 12, 5, 12000000),
(2, 2, 12, 12, 12000000),
(3, 1, 12, 12, 12000000),
(4, 3, 22, 5, 120000111),
(5, 5, 21, 12, 3216),
(6, 5, 22, 5, 120001),
(7, 6, 32, 1, 20000000),
(8, 7, 34, 5, 6000000),
(9, 7, 33, 20, 9000000);

-- --------------------------------------------------------

--
-- Table structure for table `chucnang`
--

CREATE TABLE `chucnang` (
  `id_chucnang` int(11) NOT NULL,
  `tenchucnang` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chucnang`
--

INSERT INTO `chucnang` (`id_chucnang`, `tenchucnang`) VALUES
(1, 'Quản lí sản phẩm'),
(2, 'Quản lí Đơn hàng'),
(3, 'Quản lí Tài khoản'),
(4, 'Quản í phiếu nhập'),
(5, 'Quản lí Bảo hành'),
(6, 'Quản lí khuyến mãi'),
(7, 'Quản lí nhà cung cấp');

-- --------------------------------------------------------

--
-- Table structure for table `dienthoai`
--

CREATE TABLE `dienthoai` (
  `ID_dienthoai` int(11) NOT NULL,
  `ID_thuonghieu` int(11) NOT NULL,
  `ID_Nhacungcap` int(11) NOT NULL,
  `Tendt` varchar(45) NOT NULL,
  `Anhdt` varchar(45) NOT NULL,
  `Motadt` longtext DEFAULT NULL,
  `Giadt` varchar(45) NOT NULL,
  `Soluong` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `Luotxem` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `ID_khuyenmai` int(11) NOT NULL,
  `ID_baohanh` int(11) NOT NULL,
  `trangthai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dienthoai`
--

INSERT INTO `dienthoai` (`ID_dienthoai`, `ID_thuonghieu`, `ID_Nhacungcap`, `Tendt`, `Anhdt`, `Motadt`, `Giadt`, `Soluong`, `Luotxem`, `ID_khuyenmai`, `ID_baohanh`, `trangthai`) VALUES
(12, 2, 2, 'Samsung Galaxy S23 Ultra', 'sgS23U.png', 'Thông tin sản phẩm\nSamsung Galaxy S23 Ultra 5G 256GB là chiếc smartphone cao cấp nhất của nhà Samsung, sở hữu cấu hình không tưởng với con chip khủng được Qualcomm tối ưu riêng cho dòng Galaxy và camera lên đến 200 MP, xứng danh là chiếc flagship Android được mong đợi nhất trong năm 2023.\nTích hợp các tính năng AI', '12000000', 0000000039, 0000000000, 2, 2, 'Active'),
(13, 5, 5, 'Xiaomi Redmi Note 13', 'XRN13.png', 'Vào tháng 01/2024, Xiaomi Redmi Note 13 chính thức ra mắt tại Việt Nam, đánh dấu sự tiếp nối của dòng sản phẩm Redmi Note nổi tiếng. Điện thoại được trang bị cấu hình mạnh mẽ, thiết kế hiện đại, màn hình sắc nét và camera ấn tượng, hứa hẹn sẽ thu hút được sự quan tâm của người dùng Việt.\nMàn hình AMOLED cho chất lượng hiển thị sắc nét', '2990000', 0000000010, 0000000000, 1, 1, 'Active'),
(14, 5, 5, 'Xiao Mi 12 Pro', 'XiaoMi12Pro.png', 'Xiaomi 12 Pro được Xiaomi trang bị cho chiếc Flagship này tất cả các công nghệ tối tân nhất: Chip mạnh, bộ nhớ siêu nhanh, Camera cực nét và đặc biệt dung lượng Pin cực khủng. ', '3990000 ', 0000000010, 0000000000, 1, 1, 'Active'),
(15, 5, 5, 'Xiaomi Redmi 13C', 'XR13C.png', 'Trong thị trường điện thoại di động ngày càng cạnh tranh về giá, Xiaomi một nhà sản xuất hàng đầu thế giới, liên tục đổi mới để thu hút người dùng. Một minh chứng rõ ràng cho sự nỗ lực của họ là Xiaomi Redmi 13C, một sản phẩm chất lượng với giá phải chăng.\nNgoại hình vuông vức, hiện đại', '4990000 ', 0000000010, 0000000000, 1, 1, 'Active'),
(16, 2, 2, 'Samsung Galaxy S23 FE', 'sgS23FE.png', 'Samsung tiếp tục chiếm lĩnh thị trường điện thoại thông minh với sự xuất hiện của Samsung Galaxy S23 FE 5G. Điện thoại này được trang bị camera 50 MP có khả năng quay video 8K, màn hình 120 Hz. Với những tính năng này, hứa hẹn sẽ mang đến trải nghiệm tuyệt vời, đáp ứng mọi nhu cầu của người dùng.\nTích hợp các tính năng AI mới', '5800000', 0000000007, 0000000000, 1, 1, 'Active'),
(17, 2, 2, 'Samsung Galaxy S24 Ultra', 'Samsunggalaxys22.png', 'Samsung Galaxy S24 Ultra mẫu điện thoại cao cấp được ra mắt vào đầu năm 2024, sản phẩm tiếp tục kế thừa và cải tiến từ thế hệ trước. Điểm đặc biệt là sử dụng chip Snapdragon 8 Gen 3 for Galaxy, camera 200 MP và tích hợp nhiều tính năng AI.\nThiết kế sang trọng và có sử dụng Titanium', '6990000', 0000000008, 0000000000, 1, 1, 'Active'),
(18, 2, 2, 'SamSung Galaxy S23', 'Samsungalaxy23.jpg', 'Tự hào là điện thoại Galaxy đầu tiên sở hữu cảm biến tuyệt đỉnh 200MP, Samsung Galaxy S23 Ultra đưa người dùng vào không gian nhiếp ảnh tân tiến vượt trội. Sức mạnh còn bùng nổ với vi xử lý Snapdragon mạnh nhất cho cách mạng hiệu năng gaming đột phá. Tất cả được gói gọn trong thiết kế cao cấp và bền vững cho hiện tại và tương lai.', '7990000', 0000000010, 0000000000, 1, 1, 'Active'),
(19, 4, 3, 'OPPO Reno11 F', 'OR11F.png', 'Kế thừa một trong những thương hiệu smartphone được lòng người dùng Việt nhất, OPPO Reno8 Z 5G cho thấy nét cuốn hút riêng với phong cách thiết kế độc đáo, độ hoàn thiện tốt, khả năng hỗ trợ 5G và bộ ba camera sau AI 64MP xứng danh chuyên gia chân dung.', '8990000', 0000000010, 0000000000, 1, 1, 'Active'),
(20, 4, 3, 'OPPO A58', 'ORA58.png', 'Thị trường điện thoại di động ngày nay, OPPO A58 8GB là một trong những sản phẩm nổi bật với thiết kế vuông vức và hiện đại. Được thiết kế với mục tiêu tối ưu hóa trải nghiệm người dùng, chiếc điện thoại này mang đến một loạt tính năng ấn tượng trong một thiết kế thon gọn và nhẹ nhàng.\nThiết kế trẻ trung, sang trọng', '9490000', 0000000010, 0000000000, 1, 1, 'Active'),
(21, 4, 3, 'OPPO A18', 'OA18.png', 'OPPO A18 - một trong những sản phẩm điện thoại giá rẻ được OPPO giới thiệu tại thị trường Việt Nam trong những tháng cuối năm 2023. Thiết kế của máy vẫn giữ nguyên phong cách quen thuộc như các sản phẩm điện thoại OPPO A, đi kèm với đó là một màn hình sắc nét cùng một hiệu năng ổn định.\nThiết kế trẻ trung bật tung cá tính', '3216', 0000000046, 0000000000, 1, 1, 'Active'),
(22, 1, 1, 'Iphone 15 Pro Max', 'Iphone11.jpg', 'Đặc điểm nổi bật của iPhone 15 Pro Max\n• Tăng độ cứng cáp và tối ưu khối lượng với chất liệu Titan\n• Bứt phá mọi giới hạn về hiệu năng nhờ chip A17 Pro\n• Phiên bản duy nhất cải tiến camera tele 5x\n• Tích hợp camera 48 MP\n• Nút tác vụ (Action Button) thay thế cần gạt rung\n• Chuyển đổi cổng sạc USB-C, truyền tải dữ liệu tốc độ cao', '120001', 0000000043, 0000000000, 1, 1, 'Active'),
(23, 1, 1, 'Iphone 15 Plus', 'ip15P.png', 'Đặc điểm nổi bật của iPhone 15 Plus:\n• Màn hình Dynamic Island thay thế tai thỏ đầy tiện lợi\n• 5 phiên bản màu đặc sắc với thiết kế mặt kính pha màu đầu tiên trên thị trường\n• Sử dụng chip A16 Bionic cho hiệu năng vượt trội\n• Hệ thống camera 48MP, Telephoto 2x giúp chụp ảnh chân thực, sắc nét\n• Màn hình OLED Super Retina XDR cho chất lượng đồ họa lý tưởng\n• Ứng dụng hệ điều hành iOS 17 mới nhất', '12599000', 0000000008, 0000000000, 1, 1, 'Not Active'),
(24, 1, 1, 'Iphone 13 Pro Max', 'Iphone13.jpg', 'iPhone 13 Pro Max được ưu ái trang bị camera chính 48MP hoàn toàn mới, với cảm biến quad-pixel tân tiến. Việc nâng cấp độ phân giải gấp bốn lần iPhone 13 Pro Max và sử dụng cảm biến ảnh lớn hơn 65% giúp hình ảnh trở nên sắc nét chưa từng thấy.', '13990000 ', 0000000006, 0000000000, 1, 1, 'Not Active'),
(32, 1, 1, 'iPhone 14 Pro Max', 'ip14M.png', 'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.\nThiết kế cao cấp bền bỉ', '20000000', 0000000000, 0000000000, 1, 1, 'Active'),
(33, 9, 6, 'Google Pixel 7 Pro', 'GP7.png', 'Google Pixel 7 Pro: Camera đỉnh cao cùng chip Tensor G2 4nm có đủ sức trở thành ông hoàng Android?\n\nSự kiện Google Launch vào ngày 6 tháng 10 năm ngoái đã chứng kiến sự ra mắt của bộ đôi Pixel 7 và Pixel 7 Pro. Cặp điện thoại thông minh mới đi kèm với một số cải tiến trong thiết lập máy ảnh và được cung cấp sức mạnh bởi bộ xử lý Tensor G2 thế hệ thứ hai, một cải tiến so với chip Tensor năm ngoái. Năm nay, Google Pixel 7 Pro Like New 99% là một trong những chiếc điện thoại được săn đón nhất với những trang bị đầy mạnh mẽ. Cùng Viettablet đánh giá Pixel 7 Pro nhé.', '0', 0000000000, 0000000000, 1, 1, 'Active'),
(34, 9, 6, 'Google Pixel 6 Pro', 'GP7.png', 'Google Pixel 6 Pro: Thiết kế, cấu hình dự kiến\nGoogle Pixel 6 Pro là chiếc điện thoại nâng cấp của Pixel 6 sẽ được ra mắt vào khoảng tháng 10 năm nay. Điểm nổi bật nhất của chiếc điện chính là thiết kế mới lạ, màu sắc độc đáo với mặt lưng được bắt thêm 1 module chữ nhật dày hơn hẳn so với mặt lưng, chứa 3 camera cùng các cảm biến khác.', '0', 0000000000, 0000000000, 1, 1, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id_donhang` int(11) NOT NULL,
  `ID_Khachhang` int(11) NOT NULL,
  `ID_nhanvien` int(11) NOT NULL,
  `Ngaydathang` date NOT NULL,
  `Tonggiatien` double NOT NULL,
  `Diachigiaohang` varchar(45) NOT NULL,
  `Trangthaidonhang` varchar(45) NOT NULL,
  `MaDH` varchar(10) DEFAULT NULL,
  `NgayGiaoHang` date NOT NULL,
  `NgayCapNhat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id_donhang`, `ID_Khachhang`, `ID_nhanvien`, `Ngaydathang`, `Tonggiatien`, `Diachigiaohang`, `Trangthaidonhang`, `MaDH`, `NgayGiaoHang`, `NgayCapNhat`) VALUES
(1, 3, 1, '2024-04-04', 52981200, '256/27 Lãnh Binh Thăng P13 Q11', 'Đã hủy', 'MD001', '2023-04-11', '0000-00-00'),
(2, 3, 1, '2024-04-04', 41396400, '256/27 Lãnh Binh Thăng P13 Q11', 'Đã xuất kho', 'MD002', '2023-04-11', '0000-00-00'),
(3, 3, 1, '2024-04-04', 13473000, '256/27 Lãnh Binh Thăng P13 Q11', 'Đang giao', 'MD003', '2023-04-11', '0000-00-00'),
(5, 3, 1, '2024-04-04', 22455000, '256/27 Lãnh Binh Thăng P13 Q11', 'Đã giao', 'MD005', '2023-04-11', '0000-00-00'),
(6, 3, 1, '2024-04-10', 16155000, '256/27 Lãnh Binh Thăng P13 Q11', 'Đã hủy', NULL, '2023-04-17', '0000-00-00'),
(7, 4, 3, '2024-05-04', 5328000.9, '123', 'Đã giao', NULL, '2024-05-08', '2024-05-01'),
(8, 4, 6, '2024-05-03', 18000000, '123', 'Đã giao', NULL, '2024-05-10', '2024-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id_khachhang` int(11) NOT NULL,
  `tentaikhoan` varchar(45) NOT NULL,
  `tenkhachhang` varchar(45) DEFAULT NULL,
  `gioitinh` varchar(5) DEFAULT NULL,
  `diachi` varchar(45) DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id_khachhang`, `tentaikhoan`, `tenkhachhang`, `gioitinh`, `diachi`, `sdt`, `email`) VALUES
(2, 'TruongDucNghia', NULL, NULL, 'lanh binh thang', '0769962548', 'luongkieuvy@gmail.com'),
(3, 'PhanMinhQuang', '', '', '256/27 Lãnh Binh Thăng P13 Q11', '0768862538', 'diplamtuan@gmail.com'),
(4, '123', '', 'nam', '123', '0723456789', 'quangphanminh0@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `id_khuyenmai` int(11) NOT NULL,
  `tenkhuyenmai` varchar(45) NOT NULL,
  `motakhuyenmai` varchar(45) DEFAULT NULL,
  `Sogiamgia` int(11) NOT NULL,
  `trangthai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`id_khuyenmai`, `tenkhuyenmai`, `motakhuyenmai`, `Sogiamgia`, `trangthai`) VALUES
(1, 'Tết nguyên đán', 'Không', 10, 'T'),
(2, 'Nodel', 'Không', 20, 'T'),
(3, '30/4', 'Không', 15, 'T'),
(4, 'Tết Trung Thu', 'Không', 25, 'T');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id_nhacungcap` int(11) NOT NULL,
  `tennhacungcap` varchar(45) NOT NULL,
  `trangthai` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`id_nhacungcap`, `tennhacungcap`, `trangthai`) VALUES
(1, 'Hãng Iphone', 'T'),
(2, 'Hãng Samsung', 'T'),
(3, 'Hãng OPPO', 'F'),
(4, 'Hãng Huawei', 'T'),
(5, 'Hãng Xiaomi', 'T'),
(6, 'Hãng Google', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id_nhanvien` int(11) NOT NULL,
  `tennhanvien` varchar(45) NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `diachi` varchar(45) DEFAULT NULL,
  `gioitinh` varchar(5) DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `ID_quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id_nhanvien`, `tennhanvien`, `ngaysinh`, `diachi`, `gioitinh`, `sdt`, `ID_quyen`) VALUES
(1, 'Mặc định', NULL, NULL, NULL, NULL, 1),
(3, 'admin', NULL, NULL, NULL, NULL, 1),
(4, 'Quang', '2023-05-06', '12', 'Nam', '0383989856', 1),
(5, 'csdf', '2023-05-12', '12', 'Nam', '0312547896', 1),
(6, '1', '2024-05-30', '123', 'Nam', '0323456789', 2);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `id_phieunhap` int(11) NOT NULL,
  `maphieunhap` varchar(45) NOT NULL,
  `id_nhacungcap` int(11) NOT NULL,
  `id_nhanvien` int(11) NOT NULL,
  `tongtien` double NOT NULL,
  `Ngaynhap` date NOT NULL,
  `Tongsoluong` int(11) NOT NULL,
  `trangthai` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`id_phieunhap`, `maphieunhap`, `id_nhacungcap`, `id_nhanvien`, `tongtien`, `Ngaynhap`, `Tongsoluong`, `trangthai`) VALUES
(1, 'PN001', 4, 3, 12000000, '2024-04-20', 12, 'Hoàn thành\n'),
(2, 'PN002', 4, 3, 12000000, '2024-04-20', 14, 'Hoàn thành'),
(3, 'PN003', 4, 3, 12000000, '2024-05-01', 12, 'Hoàn thành'),
(4, 'PN004', 4, 1, 14000222, '2024-04-20', 14, 'Hoàn thành'),
(5, 'PN005', 4, 3, 12000000, '2024-04-20', 12, 'Hoàn thành'),
(6, 'PN006', 1, 3, 20000000, '2024-05-03', 1, 'Hoàn thành'),
(7, 'PN007', 6, 6, 210000000, '2024-05-03', 25, 'Đang xử lý');

--
-- Triggers `phieunhap`
--
DELIMITER $$
CREATE TRIGGER `tr_phieunhap_insert` BEFORE INSERT ON `phieunhap` FOR EACH ROW BEGIN
    DECLARE next_id INT;
    SET next_id = (SELECT COALESCE(MAX(SUBSTRING(maphieunhap, 3)), 0) + 1 FROM phieunhap);
    SET NEW.maphieunhap = CONCAT('PN', LPAD(next_id, 3, '0'));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_product_quantity_and_price` AFTER UPDATE ON `phieunhap` FOR EACH ROW BEGIN
  IF NEW.trangthai = 'Hoàn thành' THEN
    -- Cập nhật số lượng và giá cho tất cả các sản phẩm trong chi tiết phiếu nhập
    UPDATE `dienthoai` AS `dt`
    INNER JOIN `chitietphieunhap` AS `ctpn` ON `dt`.`ID_dienthoai` = `ctpn`.`id_dienthoai`
    SET `dt`.`Soluong` = `dt`.`Soluong` + `ctpn`.`soluong`,
      `dt`.`Giadt` = `ctpn`.`gia`
    WHERE `ctpn`.`id_phieunhap` = NEW.id_phieunhap;
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `id_quyen` int(11) NOT NULL,
  `tenquyen` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`id_quyen`, `tenquyen`) VALUES
(1, 'Admin'),
(2, 'Nhân Viên'),
(3, 'Quản lí');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id_taikhoan` int(11) NOT NULL,
  `tendangnhap` varchar(45) NOT NULL,
  `matkhau` varchar(45) NOT NULL,
  `loaitaikhoan` int(11) NOT NULL,
  `trangthai` varchar(20) NOT NULL,
  `ngaytao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id_taikhoan`, `tendangnhap`, `matkhau`, `loaitaikhoan`, `trangthai`, `ngaytao`) VALUES
(5, 'admin', '1231231', 2, 'T', '2023-04-08'),
(8, '1', 'a1234567', 2, 'T', '2024-05-01'),
(9, '123', 'a1234567', 1, 'T', '2024-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id_thuonghieu` int(11) NOT NULL,
  `tenthuonghieu` varchar(45) NOT NULL,
  `anh` varchar(45) NOT NULL,
  `trangthai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`id_thuonghieu`, `tenthuonghieu`, `anh`, `trangthai`) VALUES
(1, 'Iphone', 'iphone.jpg', 'T'),
(2, 'Samsung', 'samsung.jpg', 'F'),
(3, 'Huawei', 'huawei.jpg', 'F'),
(4, 'Oppo', 'oppo.jpg', 'T'),
(5, 'xiaomi', 'xiaomi.jpg', 'T'),
(9, 'Google', 'google.png', 'T');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baohanh`
--
ALTER TABLE `baohanh`
  ADD PRIMARY KEY (`ID_Baohanh`),
  ADD UNIQUE KEY `ID_Baohanh_UNIQUE` (`ID_Baohanh`);

--
-- Indexes for table `chitietchucnang`
--
ALTER TABLE `chitietchucnang`
  ADD PRIMARY KEY (`ID_chitietchucnang`),
  ADD UNIQUE KEY `ID_chitietchucnang_UNIQUE` (`ID_chitietchucnang`),
  ADD KEY `fk_chucnang_idx` (`id_chucnang`),
  ADD KEY `fk_quyen_idx` (`id_quyen`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id_chitietdonhang`),
  ADD KEY `fk_dienthoai1_idx` (`id_dienthoai`),
  ADD KEY `FK_chitietdonhang` (`id_donhangnew`),
  ADD KEY `FK_khuyenmai_idx` (`ID_khuyenmai`),
  ADD KEY `fk_baohanh1_idx` (`ID_baohanh`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`id_chitietphieunhap`),
  ADD UNIQUE KEY `id_chitietphieunhap_UNIQUE` (`id_chitietphieunhap`),
  ADD KEY `fk_phieunhap_idx` (`id_phieunhap`),
  ADD KEY `fk_dienthoai1_idx` (`id_dienthoai`);

--
-- Indexes for table `chucnang`
--
ALTER TABLE `chucnang`
  ADD PRIMARY KEY (`id_chucnang`),
  ADD UNIQUE KEY `id_chucnang_UNIQUE` (`id_chucnang`);

--
-- Indexes for table `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD PRIMARY KEY (`ID_dienthoai`),
  ADD UNIQUE KEY `ID_dienthoai_UNIQUE` (`ID_dienthoai`),
  ADD KEY `FK_thuonghieu_idx` (`ID_thuonghieu`),
  ADD KEY `FK_Nhacungcap1_idx` (`ID_Nhacungcap`),
  ADD KEY `FK_Khuyenmai_idx` (`ID_khuyenmai`),
  ADD KEY `FK_baohanh_idx` (`ID_baohanh`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_donhang`),
  ADD UNIQUE KEY `id_donhang_UNIQUE` (`id_donhang`),
  ADD KEY `fk_nhanvien_idx` (`ID_nhanvien`),
  ADD KEY `FK_KHACHHANG_idx` (`ID_Khachhang`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_khachhang`),
  ADD UNIQUE KEY `id_khachhang_UNIQUE` (`id_khachhang`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`id_khuyenmai`),
  ADD UNIQUE KEY `id_khuyenmai_UNIQUE` (`id_khuyenmai`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id_nhacungcap`),
  ADD UNIQUE KEY `id_nhacungcap_UNIQUE` (`id_nhacungcap`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id_nhanvien`),
  ADD UNIQUE KEY `id_nhanvien_UNIQUE` (`id_nhanvien`),
  ADD KEY `FK_TENdangnhap_idx` (`tennhanvien`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id_phieunhap`),
  ADD UNIQUE KEY `id_phieunhap_UNIQUE` (`id_phieunhap`),
  ADD KEY `fk_nhacungcap_idx` (`id_nhacungcap`),
  ADD KEY `fk_nhanvien_idx` (`id_nhanvien`);

--
-- Indexes for table `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id_quyen`),
  ADD UNIQUE KEY `id_quyen_UNIQUE` (`id_quyen`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id_taikhoan`),
  ADD UNIQUE KEY `id_taikhoan_UNIQUE` (`id_taikhoan`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`id_thuonghieu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baohanh`
--
ALTER TABLE `baohanh`
  MODIFY `ID_Baohanh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chitietchucnang`
--
ALTER TABLE `chitietchucnang`
  MODIFY `ID_chitietchucnang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id_chitietdonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `id_chitietphieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chucnang`
--
ALTER TABLE `chucnang`
  MODIFY `id_chucnang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dienthoai`
--
ALTER TABLE `dienthoai`
  MODIFY `ID_dienthoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_donhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id_khuyenmai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id_nhacungcap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id_nhanvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `id_phieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quyen`
--
ALTER TABLE `quyen`
  MODIFY `id_quyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id_taikhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id_thuonghieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietchucnang`
--
ALTER TABLE `chitietchucnang`
  ADD CONSTRAINT `FK_QUYEN123` FOREIGN KEY (`id_quyen`) REFERENCES `quyen` (`id_quyen`),
  ADD CONSTRAINT `fk_chucnang` FOREIGN KEY (`id_chucnang`) REFERENCES `chucnang` (`id_chucnang`);

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `FK_chitietdonhang` FOREIGN KEY (`id_donhangnew`) REFERENCES `donhang` (`id_donhang`),
  ADD CONSTRAINT `fk_baohanh1` FOREIGN KEY (`ID_baohanh`) REFERENCES `baohanh` (`ID_Baohanh`),
  ADD CONSTRAINT `fk_dienthoai1` FOREIGN KEY (`id_dienthoai`) REFERENCES `dienthoai` (`ID_dienthoai`),
  ADD CONSTRAINT `fk_khuyenmai1` FOREIGN KEY (`ID_khuyenmai`) REFERENCES `khuyenmai` (`id_khuyenmai`);

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `FK_DIENTHOAI` FOREIGN KEY (`id_dienthoai`) REFERENCES `dienthoai` (`ID_dienthoai`),
  ADD CONSTRAINT `fk_phieunhap` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieunhap` (`id_phieunhap`);

--
-- Constraints for table `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD CONSTRAINT `FK_Nhacungcap1` FOREIGN KEY (`ID_Nhacungcap`) REFERENCES `nhacungcap` (`id_nhacungcap`),
  ADD CONSTRAINT `FK_baohanh` FOREIGN KEY (`ID_baohanh`) REFERENCES `baohanh` (`ID_Baohanh`),
  ADD CONSTRAINT `FK_khuyenmai` FOREIGN KEY (`ID_khuyenmai`) REFERENCES `khuyenmai` (`id_khuyenmai`),
  ADD CONSTRAINT `FK_thuonghieu` FOREIGN KEY (`ID_thuonghieu`) REFERENCES `thuonghieu` (`id_thuonghieu`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK_KHACHHANG` FOREIGN KEY (`ID_Khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `FK_NHANVIEN123` FOREIGN KEY (`ID_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `fk_nhacungcap` FOREIGN KEY (`id_nhacungcap`) REFERENCES `nhacungcap` (`id_nhacungcap`),
  ADD CONSTRAINT `fk_nhanvien` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
