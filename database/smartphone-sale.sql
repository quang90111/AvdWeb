-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 08, 2023 lúc 06:04 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `projectweb2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baohanh`
--

CREATE TABLE `baohanh` (
  `ID_Baohanh` int(11) NOT NULL,
  `Tenbaohanh` varchar(45) NOT NULL,
  `Thoigianbaohanh` int(10) UNSIGNED ZEROFILL NOT NULL,
  `Trangthai` varchar(10) CHARACTER SET armscii8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baohanh`
--

INSERT INTO `baohanh` (`ID_Baohanh`, `Tenbaohanh`, `Thoigianbaohanh`, `Trangthai`) VALUES
(1, '12 Tháng', 0000000012, 'T'),
(2, '6 tháng', 0000000006, 'T'),
(3, '1 tháng', 0000000001, 'T'),
(4, '3 tháng', 0000000003, 'T'),
(5, '2 tháng', 0000000002, 'T');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietchucnang`
--

CREATE TABLE `chitietchucnang` (
  `ID_chitietchucnang` int(11) NOT NULL,
  `id_quyen` int(11) NOT NULL,
  `id_chucnang` int(11) NOT NULL,
  `trangthai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietchucnang`
--

INSERT INTO `chitietchucnang` (`ID_chitietchucnang`, `id_quyen`, `id_chucnang`, `trangthai`) VALUES
(1, 1, 1, 'T'),
(2, 1, 2, 'T'),
(3, 1, 3, 'T'),
(4, 2, 1, 'T'),
(5, 2, 2, 'T');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
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
(12, 6, 14, 3, 3990000, 1, 1, 3591000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `id_chitietphieunhap` int(11) NOT NULL,
  `id_phieunhap` int(11) NOT NULL,
  `id_dienthoai` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`id_chitietphieunhap`, `id_phieunhap`, `id_dienthoai`, `soluong`, `gia`) VALUES
(1, 1, 12, 5, 12000000),
(2, 2, 12, 12, 12000000),
(3, 1, 12, 12, 12000000),
(4, 3, 22, 5, 120000111),
(5, 5, 21, 12, 3216),
(6, 5, 22, 5, 120001);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucnang`
--

CREATE TABLE `chucnang` (
  `id_chucnang` int(11) NOT NULL,
  `tenchucnang` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chucnang`
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
-- Cấu trúc bảng cho bảng `dienthoai`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dienthoai`
--

INSERT INTO `dienthoai` (`ID_dienthoai`, `ID_thuonghieu`, `ID_Nhacungcap`, `Tendt`, `Anhdt`, `Motadt`, `Giadt`, `Soluong`, `Luotxem`, `ID_khuyenmai`, `ID_baohanh`, `trangthai`) VALUES
(12, 2, 2, 'aaa', 'aaa', 'aaa', '1990000 ', 0000000027, 0000000000, 2, 2, 'Not Active'),
(13, 5, 5, 'Xiao Mi Mix Fold 2', 'XiaomiMixFold2.png', 'Xiaomi MIX Fold 2 là điện thoại màn hình gập thế hệ thứ 2 của công ty và là sản phẩm cạnh tranh với Samsung Galaxy Z Fold 4, OPPO Find N, Vivo Fold X và một vài điện thoại màn hình gập khác trên thị trường hiện nay.', '2990000', 0000000010, 0000000000, 1, 1, 'Active'),
(14, 5, 5, 'Xiao Mi 12 Pro', 'XiaoMi12Pro.png', 'Xiaomi 12 Pro được Xiaomi trang bị cho chiếc Flagship này tất cả các công nghệ tối tân nhất: Chip mạnh, bộ nhớ siêu nhanh, Camera cực nét và đặc biệt dung lượng Pin cực khủng. ', '3990000 ', 0000000010, 0000000000, 1, 1, 'Active'),
(15, 5, 5, 'Xiao Mi 11  Pro', 'XiaoMi11Pro.png', 'Xiaomi 11 Pro được Xiaomi trang bị cho chiếc Flagship này tất cả các công nghệ tối tân nhất: Chip mạnh, bộ nhớ siêu nhanh, Camera cực nét và đặc biệt dung lượng Pin cực khủng. ', '4990000 ', 0000000010, 0000000000, 1, 1, 'Active'),
(16, 2, 2, 'SamSung Z Flip 4', 'SamsungZFlip4.png', 'Nhỏ gọn và tinh tế, Samsung Galaxy Z Flip4 là chiếc smartphone sinh ra dành cho các tín đồ thời trang. Cơ chế gập duyên dáng, bộ màu sắc nhẹ nhàng và loạt chức năng quay chụp sẽ làm say lòng những người yêu cái đẹp.', '5800000', 0000000008, 0000000000, 1, 1, 'Active'),
(17, 2, 2, 'SamSung Galaxy S22', 'Samsunggalaxys22.png', ' Tận hưởng những công nghệ hàng đầu nhà Samsung, Galaxy S22 Plus 5G sẽ cho bạn trải nghiệm đỉnh cao từ thiết kế thời thượng, hiệu năng mạnh mẽ Snapdragon 8 Gen 1 và hệ thống camera đêm chuyên nghiệp nhất từ trước đến nay.', '6990000', 0000000008, 0000000000, 1, 1, 'Active'),
(18, 2, 2, 'SamSung Galaxy S23', 'Samsungalaxy23.jpg', 'Tự hào là điện thoại Galaxy đầu tiên sở hữu cảm biến tuyệt đỉnh 200MP, Samsung Galaxy S23 Ultra đưa người dùng vào không gian nhiếp ảnh tân tiến vượt trội. Sức mạnh còn bùng nổ với vi xử lý Snapdragon mạnh nhất cho cách mạng hiệu năng gaming đột phá. Tất cả được gói gọn trong thiết kế cao cấp và bền vững cho hiện tại và tương lai.', '7990000', 0000000010, 0000000000, 1, 1, 'Active'),
(19, 4, 3, 'Oppo Reno 8', 'OppoReno8.jpg', 'Kế thừa một trong những thương hiệu smartphone được lòng người dùng Việt nhất, OPPO Reno8 Z 5G cho thấy nét cuốn hút riêng với phong cách thiết kế độc đáo, độ hoàn thiện tốt, khả năng hỗ trợ 5G và bộ ba camera sau AI 64MP xứng danh chuyên gia chân dung.', '8990000', 0000000010, 0000000000, 1, 1, 'Active'),
(20, 4, 3, 'Oppo Reno 7', 'OppoReno7.jpg', 'OPPO Reno7 Z 5G chinh phục người dùng ngay từ ánh nhìn đầu tiên với thiết kế thời thượng bậc nhất. Bên trong điện thoại còn có nội lực mạnh mẽ từ công nghệ cải tiến, hệ thống camera chân dung tuyệt đỉnh, vi xử lý Snapdragon 695 5G và sạc siêu tốc 33W, giúp bạn sẵn sàng khám phá cuộc sống tràn đầy màu sắc.', '9490000', 0000000010, 0000000000, 1, 1, 'Active'),
(21, 4, 3, 'Oppo Reno 8Z', 'Oppo2.jpg', 'Trọn vẹn từng trải nghiệm trên OPPO Reno8 T 5G với nâng cấp toàn diện từ thế hệ chân dung 108MP, màn hình cong 120Hz tuyệt đẹp đến sạc nhanh Super VOOCTM 67W. Bạn sẽ bất ngờ với những gì OPPO Reno8 T 5G mang đến – một siêu phẩm trong tầm giá.T hiết kế OPPO Reno8 T 5G mãn nhãn trong từng trải nghiệm với màn hình cong tràn cạnh hai bên tuyệt đẹp, ôm trọn từng đường nét khi cầm trên tay, chân thực trong mọi góc độ', '3216', 0000000034, 0000000000, 1, 1, 'Active'),
(22, 1, 1, 'Iphone 11 Pro', 'Iphone11.jpg', 'Day la Iphone 11', '120001', 0000000034, 0000000000, 1, 1, 'Active'),
(23, 1, 1, 'Iphone 12 Pro', 'Iphone12.jpg', 'iPhone 12 ra mắt với vai trò mở ra một kỷ nguyên hoàn toàn mới. Tốc độ mạng 5G siêu tốc, bộ vi xử lý A14 Bionic nhanh nhất thế giới smartphone, màn hình OLED tràn cạnh tuyệt đẹp và camera siêu chụp đêm, tất cả đều có mặt trên iPhone 12.', '12599000', 0000000008, 0000000000, 1, 1, 'Not Active'),
(24, 1, 1, 'Iphone 13 Pro Max', 'Iphone13.jpg', 'iPhone 13 Pro Max được ưu ái trang bị camera chính 48MP hoàn toàn mới, với cảm biến quad-pixel tân tiến. Việc nâng cấp độ phân giải gấp bốn lần iPhone 13 Pro Max và sử dụng cảm biến ảnh lớn hơn 65% giúp hình ảnh trở nên sắc nét chưa từng thấy.', '13990000 ', 0000000006, 0000000000, 1, 1, 'Not Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id_donhang`, `ID_Khachhang`, `ID_nhanvien`, `Ngaydathang`, `Tonggiatien`, `Diachigiaohang`, `Trangthaidonhang`, `MaDH`, `NgayGiaoHang`, `NgayCapNhat`) VALUES
(1, 3, 1, '2023-04-04', 52981200, '256/27 Lãnh Binh Thăng P13 Q11', 'Đã hủy', 'MD001', '2023-04-11', '0000-00-00'),
(2, 3, 1, '2023-04-04', 41396400, '256/27 Lãnh Binh Thăng P13 Q11', 'Đã xuất kho', 'MD002', '2023-04-11', '0000-00-00'),
(3, 3, 1, '2023-04-04', 13473000, '256/27 Lãnh Binh Thăng P13 Q11', 'Đang giao', 'MD003', '2023-04-11', '0000-00-00'),
(5, 3, 1, '2023-04-04', 22455000, '256/27 Lãnh Binh Thăng P13 Q11', 'Đã giao', 'MD005', '2023-04-11', '0000-00-00'),
(6, 3, 1, '2023-04-10', 16155000, '256/27 Lãnh Binh Thăng P13 Q11', 'Đã hủy', NULL, '2023-04-17', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id_khachhang` int(11) NOT NULL,
  `tentaikhoan` varchar(45) NOT NULL,
  `tenkhachhang` varchar(45) DEFAULT NULL,
  `gioitinh` varchar(5) DEFAULT NULL,
  `diachi` varchar(45) DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id_khachhang`, `tentaikhoan`, `tenkhachhang`, `gioitinh`, `diachi`, `sdt`, `email`) VALUES
(2, 'luongkieuvy', NULL, NULL, 'lanh binh thang', '0769962548', 'luongkieuvy@gmail.com'),
(3, 'diplamtuan', '', '', '256/27 Lãnh Binh Thăng P13 Q11', '0768862538', 'diplamtuan@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `id_khuyenmai` int(11) NOT NULL,
  `tenkhuyenmai` varchar(45) NOT NULL,
  `motakhuyenmai` varchar(45) DEFAULT NULL,
  `Sogiamgia` int(11) NOT NULL,
  `trangthai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`id_khuyenmai`, `tenkhuyenmai`, `motakhuyenmai`, `Sogiamgia`, `trangthai`) VALUES
(1, 'Tết nguyên đán', 'Không', 10, 'T'),
(2, 'Nodel', 'Không', 20, 'T'),
(3, '30/4', 'Không', 15, 'T'),
(4, 'Tết Trung Thu', 'Không', 25, 'T');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id_nhacungcap` int(11) NOT NULL,
  `tennhacungcap` varchar(45) NOT NULL,
  `trangthai` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
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
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id_nhanvien` int(11) NOT NULL,
  `tennhanvien` varchar(45) NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `diachi` varchar(45) DEFAULT NULL,
  `gioitinh` varchar(5) DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `ID_quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id_nhanvien`, `tennhanvien`, `ngaysinh`, `diachi`, `gioitinh`, `sdt`, `ID_quyen`) VALUES
(1, 'Mặc định', NULL, NULL, NULL, NULL, 1),
(3, 'admin', NULL, NULL, NULL, NULL, 1),
(4, 'lethai', '2023-05-06', '12', 'Nam', '0383989856', 1),
(5, 'csdf', '2023-05-12', '12', 'Nam', '0312547896', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`id_phieunhap`, `maphieunhap`, `id_nhacungcap`, `id_nhanvien`, `tongtien`, `Ngaynhap`, `Tongsoluong`, `trangthai`) VALUES
(1, 'PN001', 4, 3, 12000000, '2023-04-20', 12, 'Hoàn thành\n'),
(2, 'PN002', 4, 3, 12000000, '2023-04-20', 14, 'Hoàn thành'),
(3, 'PN003', 4, 3, 12000000, '2023-05-01', 12, 'Hoàn thành'),
(4, 'PN004', 4, 1, 14000222, '2023-04-20', 14, 'Hoàn thành'),
(5, 'PN005', 4, 3, 12000000, '2023-04-20', 12, 'Hoàn thành');

--
-- Bẫy `phieunhap`
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
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `id_quyen` int(11) NOT NULL,
  `tenquyen` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`id_quyen`, `tenquyen`) VALUES
(1, 'Admin'),
(2, 'Nhân Viên'),
(3, 'Quản lí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id_taikhoan` int(11) NOT NULL,
  `tendangnhap` varchar(45) NOT NULL,
  `matkhau` varchar(45) NOT NULL,
  `loaitaikhoan` int(11) NOT NULL,
  `trangthai` varchar(20) NOT NULL,
  `ngaytao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id_taikhoan`, `tendangnhap`, `matkhau`, `loaitaikhoan`, `trangthai`, `ngaytao`) VALUES
(3, 'luongkieuvy', '1231231', 1, 'T', '2023-04-04'),
(4, 'diplamtuan', '1231231', 1, 'T', '2023-04-04'),
(5, 'admin', '1231231', 2, 'T', '2023-04-08'),
(6, 'lethai', '123123ab', 2, 'T', '2023-05-05'),
(7, 'csdf', '123wqewaed', 2, 'T', '2023-05-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id_thuonghieu` int(11) NOT NULL,
  `tenthuonghieu` varchar(45) NOT NULL,
  `anh` varchar(45) NOT NULL,
  `trangthai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`id_thuonghieu`, `tenthuonghieu`, `anh`, `trangthai`) VALUES
(1, 'Iphone', 'iphone.jpg', 'T'),
(2, 'Samsung', 'samsung.jpg', 'F'),
(3, 'Huawei', 'huawei.jpg', 'F'),
(4, 'Oppo', 'oppo.jpg', 'T'),
(5, 'xiaomi', 'xiaomi.jpg', 'T'),
(9, 'Google', 'google.png', 'T');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baohanh`
--
ALTER TABLE `baohanh`
  ADD PRIMARY KEY (`ID_Baohanh`),
  ADD UNIQUE KEY `ID_Baohanh_UNIQUE` (`ID_Baohanh`);

--
-- Chỉ mục cho bảng `chitietchucnang`
--
ALTER TABLE `chitietchucnang`
  ADD PRIMARY KEY (`ID_chitietchucnang`),
  ADD UNIQUE KEY `ID_chitietchucnang_UNIQUE` (`ID_chitietchucnang`),
  ADD KEY `fk_chucnang_idx` (`id_chucnang`),
  ADD KEY `fk_quyen_idx` (`id_quyen`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id_chitietdonhang`),
  ADD KEY `fk_dienthoai1_idx` (`id_dienthoai`),
  ADD KEY `FK_chitietdonhang` (`id_donhangnew`),
  ADD KEY `FK_khuyenmai_idx` (`ID_khuyenmai`),
  ADD KEY `fk_baohanh1_idx` (`ID_baohanh`);

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`id_chitietphieunhap`),
  ADD UNIQUE KEY `id_chitietphieunhap_UNIQUE` (`id_chitietphieunhap`),
  ADD KEY `fk_phieunhap_idx` (`id_phieunhap`),
  ADD KEY `fk_dienthoai1_idx` (`id_dienthoai`);

--
-- Chỉ mục cho bảng `chucnang`
--
ALTER TABLE `chucnang`
  ADD PRIMARY KEY (`id_chucnang`),
  ADD UNIQUE KEY `id_chucnang_UNIQUE` (`id_chucnang`);

--
-- Chỉ mục cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD PRIMARY KEY (`ID_dienthoai`),
  ADD UNIQUE KEY `ID_dienthoai_UNIQUE` (`ID_dienthoai`),
  ADD KEY `FK_thuonghieu_idx` (`ID_thuonghieu`),
  ADD KEY `FK_Nhacungcap1_idx` (`ID_Nhacungcap`),
  ADD KEY `FK_Khuyenmai_idx` (`ID_khuyenmai`),
  ADD KEY `FK_baohanh_idx` (`ID_baohanh`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_donhang`),
  ADD UNIQUE KEY `id_donhang_UNIQUE` (`id_donhang`),
  ADD KEY `fk_nhanvien_idx` (`ID_nhanvien`),
  ADD KEY `FK_KHACHHANG_idx` (`ID_Khachhang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_khachhang`),
  ADD UNIQUE KEY `id_khachhang_UNIQUE` (`id_khachhang`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`id_khuyenmai`),
  ADD UNIQUE KEY `id_khuyenmai_UNIQUE` (`id_khuyenmai`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id_nhacungcap`),
  ADD UNIQUE KEY `id_nhacungcap_UNIQUE` (`id_nhacungcap`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id_nhanvien`),
  ADD UNIQUE KEY `id_nhanvien_UNIQUE` (`id_nhanvien`),
  ADD KEY `FK_TENdangnhap_idx` (`tennhanvien`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id_phieunhap`),
  ADD UNIQUE KEY `id_phieunhap_UNIQUE` (`id_phieunhap`),
  ADD KEY `fk_nhacungcap_idx` (`id_nhacungcap`),
  ADD KEY `fk_nhanvien_idx` (`id_nhanvien`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id_quyen`),
  ADD UNIQUE KEY `id_quyen_UNIQUE` (`id_quyen`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id_taikhoan`),
  ADD UNIQUE KEY `id_taikhoan_UNIQUE` (`id_taikhoan`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`id_thuonghieu`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baohanh`
--
ALTER TABLE `baohanh`
  MODIFY `ID_Baohanh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `chitietchucnang`
--
ALTER TABLE `chitietchucnang`
  MODIFY `ID_chitietchucnang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id_chitietdonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `id_chitietphieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `chucnang`
--
ALTER TABLE `chucnang`
  MODIFY `id_chucnang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  MODIFY `ID_dienthoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_donhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id_khuyenmai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id_nhacungcap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id_nhanvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `id_phieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `quyen`
--
ALTER TABLE `quyen`
  MODIFY `id_quyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id_taikhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id_thuonghieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietchucnang`
--
ALTER TABLE `chitietchucnang`
  ADD CONSTRAINT `FK_QUYEN123` FOREIGN KEY (`id_quyen`) REFERENCES `quyen` (`id_quyen`),
  ADD CONSTRAINT `fk_chucnang` FOREIGN KEY (`id_chucnang`) REFERENCES `chucnang` (`id_chucnang`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `FK_chitietdonhang` FOREIGN KEY (`id_donhangnew`) REFERENCES `donhang` (`id_donhang`),
  ADD CONSTRAINT `fk_baohanh1` FOREIGN KEY (`ID_baohanh`) REFERENCES `baohanh` (`ID_Baohanh`),
  ADD CONSTRAINT `fk_dienthoai1` FOREIGN KEY (`id_dienthoai`) REFERENCES `dienthoai` (`ID_dienthoai`),
  ADD CONSTRAINT `fk_khuyenmai1` FOREIGN KEY (`ID_khuyenmai`) REFERENCES `khuyenmai` (`id_khuyenmai`);

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `FK_DIENTHOAI` FOREIGN KEY (`id_dienthoai`) REFERENCES `dienthoai` (`ID_dienthoai`),
  ADD CONSTRAINT `fk_phieunhap` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieunhap` (`id_phieunhap`);

--
-- Các ràng buộc cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD CONSTRAINT `FK_Nhacungcap1` FOREIGN KEY (`ID_Nhacungcap`) REFERENCES `nhacungcap` (`id_nhacungcap`),
  ADD CONSTRAINT `FK_baohanh` FOREIGN KEY (`ID_baohanh`) REFERENCES `baohanh` (`ID_Baohanh`),
  ADD CONSTRAINT `FK_khuyenmai` FOREIGN KEY (`ID_khuyenmai`) REFERENCES `khuyenmai` (`id_khuyenmai`),
  ADD CONSTRAINT `FK_thuonghieu` FOREIGN KEY (`ID_thuonghieu`) REFERENCES `thuonghieu` (`id_thuonghieu`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK_KHACHHANG` FOREIGN KEY (`ID_Khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `FK_NHANVIEN123` FOREIGN KEY (`ID_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `fk_nhacungcap` FOREIGN KEY (`id_nhacungcap`) REFERENCES `nhacungcap` (`id_nhacungcap`),
  ADD CONSTRAINT `fk_nhanvien` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
