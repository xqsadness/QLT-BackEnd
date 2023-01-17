-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 06, 2023 lúc 10:51 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `chothuecot`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`id`, `city`, `description`, `image`, `street`) VALUES
(2, 'TP BMT', 'Dài, rộng, hai chiều', 'street.jpg', '10/3'),
(3, 'TP BMT', 'Dài rộng', 'street.jpg', 'Hà Huy Tập'),
(4, 'TP BMT', 'Dài, rộng, hai chiều', 'street.jpg', 'Đường 30/4'),
(5, 'TP BMT', 'Đông đúc', 'street.jpg', 'Lê Duẩn'),
(6, 'TP BMT', 'Đông đúc , hai chiều', 'street.jpg', 'Nguyễn Tất Thành'),
(7, 'TP BMT', 'đông đúc', 'street.jpg', 'Phan Chu Trinh'),
(8, 'TP BMT', 'đông đúc', 'street.jpg', 'Phan Bội Châu'),
(9, 'TP BMT', 'Đang phát triển', 'street.jpg', 'Hùng Vương'),
(19, 'TP BMT', 'Đường 2 chiều, rộng ', 'street.jpg', 'Nguyễn Chí Thanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address_point`
--

CREATE TABLE `address_point` (
  `id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` double NOT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `address_point`
--

INSERT INTO `address_point` (`id`, `lat`, `lng`, `name`, `number`, `address_id`) VALUES
(1, 12.68261389683995, 108.01886267507234, 'start', 1, 2),
(3, 12.71667251845865, 108.08725706548584, 'end', 5, 2),
(4, 12.700234728318328, 108.0269264470363, 'vx1', 2, 2),
(7, 12.716340093546744, 108.07296084828326, 'vx2', 4, 2),
(8, 12.711507263430642, 108.05307647493534, 'n4-ymoan', 3, 2),
(9, 12.697307435486369, 108.05536450793001, 'start', 1, 3),
(10, 12.724902703889477, 108.07873711863242, 'end', 4, 3),
(11, 12.704710285367417, 108.06394877874683, 'n4-dongkhoi', 2, 3),
(12, 12.716414198333007, 108.07319641113281, 'vx-10/3', 3, 3),
(13, 12.644080998452692, 108.01606341539521, 'start', 1, 4),
(14, 12.682556436859317, 108.01884823252239, 'end', 3, 4),
(15, 12.672917679668933, 108.01878197114941, 'n4-yngong', 2, 4),
(18, 12.676706551438581, 108.04361643616085, 'start', 1, 5),
(19, 12.644220590142695, 108.01646006134942, 'end', 5, 5),
(20, 12.66923925960997, 108.04149471146788, 'n3-dinhtienhoang', 2, 5),
(21, 12.662065900782268, 108.03337030896891, 'n3-giaiphong', 3, 5),
(22, 12.656857539895878, 108.02774906158447, 'n3-eakao', 4, 5),
(23, 12.680315329196747, 108.0452923040984, 'start', 1, 6),
(24, 12.692577994990007, 108.06352942476585, 'end', 3, 6),
(25, 12.687756597763542, 108.0565227587511, 'n3-amakhe', 2, 6),
(26, 12.680552243300445, 108.0446792340304, 'start', 1, 7),
(27, 12.697233680594987, 108.05531547211696, 'end', 3, 7),
(28, 12.68742498211636, 108.04670688152423, 'n4-tranhungdao', 2, 7),
(29, 12.681590340031896, 108.04701845298474, 'start', 1, 8),
(30, 12.68256530241241, 108.0188714177377, 'end', 7, 8),
(31, 12.682442880340158, 108.04353693577701, 'n4-lythuongkiet', 2, 8),
(32, 12.6824377649331, 108.04137040400204, 'n4-lehongphong', 3, 8),
(33, 12.682445903162442, 108.03936373001781, 'n4-tranbinhtrong', 4, 8),
(34, 12.682481181988159, 108.03286100172674, 'n4-nguyentriphuong', 5, 8),
(35, 12.681174805185176, 108.02504531698614, 'n3-maixuanthuong', 6, 8),
(36, 12.679931445826817, 108.045171185699, 'start', 1, 9),
(37, 12.680590146995026, 108.07193788016693, 'end', 5, 9),
(38, 12.683042461262087, 108.05483277927055, 'n3-nguyencongtru', 2, 9),
(39, 12.683869464998246, 108.05907664656965, 'n3-amakhe', 3, 9),
(40, 12.684411850340377, 108.06886745899482, 'n3-yniksok', 4, 9),
(41, 12.693010598725762, 108.06432550425642, 'start', 1, 19),
(42, 12.716563504775333, 108.08743515448407, 'end', 4, 19),
(43, 12.701200064618336, 108.07567079170157, 'n3-phamhung', 2, 19),
(44, 12.707809877015064, 108.08147366101143, '48-nguyenchithanh', 3, 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `bank_account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bank`
--

INSERT INTO `bank` (`id`, `bank_account_name`, `bank_account_number`, `bank_code`, `bank_name`) VALUES
(1, 'LY XUAN QUY', '0889080610', 'mbbank ', 'Mb Bank');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `month` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_item`
--

INSERT INTO `cart_item` (`id`, `month`, `product_id`, `user_id`) VALUES
(33, 1, 3, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `description`, `name`) VALUES
(2, 'hình tam giác đều, hình ảnh quảng cáo được phun lên giấy ảnh đề can PP. Loại quảng cáo này khá linh động và dễ quảng cáo.', 'Một cột , Tam giác'),
(3, 'Có diện tích lớn, tầm cao, bao gồm cả loại truyền thống từ bạt Hiflex, mica hay là loại kỹ thuật số tiên tiến như DOOH. Kích thước của chúng khá lớn dưới 80m² (trong nội thành) tới 250m² (trên đường cao tốc, quốc lộ).', 'Tấm lớn'),
(4, 'Áp dụng công nghệ số qua màn hình LED, LCD, FRAME.', 'Kỹ thuật số');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `checked` bit(1) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notification`
--

INSERT INTO `notification` (`id`, `checked`, `date`, `message`, `target_id`, `type`, `user_id`) VALUES
(1, b'1', '2022-12-17 15:09:31.920000', 'Đơn hàng mã số O71671289770 mới được đặt', 1, 0, NULL),
(2, b'1', '2022-12-17 15:10:30.749000', 'Đơn hàng mã số O71671289770 của bạn đã bị hủy', 1, 0, 7),
(3, b'1', '2022-12-17 15:11:41.653000', 'Đơn hàng mã số O71671289900 mới được đặt', 2, 0, NULL),
(4, b'1', '2022-12-17 15:12:12.787000', 'Đơn hàng mã số O71671289900 của bạn đã bị hủy', 2, 0, 7),
(5, b'1', '2022-12-17 15:13:15.423000', 'Đơn hàng mã số O71671289994 mới được đặt', 3, 0, NULL),
(6, b'1', '2022-12-17 15:13:50.044000', 'Đơn hàng mã số O71671289994 của bạn đã bị hủy', 3, 0, 7),
(7, b'1', '2022-12-17 15:15:29.939000', 'Đơn hàng mã số O71671290129 mới được đặt', 4, 0, NULL),
(8, b'1', '2022-12-17 15:15:49.123000', 'Đơn hàng mã số O71671290129 của bạn đã bị hủy', 4, 0, 7),
(9, b'1', '2022-12-20 16:46:06.636000', 'Đơn hàng mã số O91671529566 mới được đặt', 5, 0, NULL),
(10, b'1', '2022-12-20 16:49:38.983000', 'Đơn hàng mã số O91671529566 đã được xác nhận', 5, 0, NULL),
(11, b'1', '2022-12-20 16:51:13.071000', 'Đơn hàng mã số O91671529566 của bạn đã được xác nhận', 5, 0, 9),
(12, b'1', '2022-12-20 16:56:59.061000', 'Đơn hàng gia hạn mã số E91671530218 vừa được đặt', 6, 0, NULL),
(13, b'1', '2022-12-20 12:32:52.711000', 'Đơn hàng mã số O41671539571 mới được đặt', 7, 0, NULL),
(14, b'1', '2022-12-20 12:33:40.742000', 'Đơn hàng mã số O41671539571 của bạn đã được xác nhận', 7, 0, 4),
(15, b'1', '2022-12-20 19:57:05.410000', 'Đơn hàng mã số O41671541024 mới được đặt', 8, 0, NULL),
(16, b'1', '2022-12-20 19:57:37.138000', 'Đơn hàng mã số O41671541024 của bạn đã được xác nhận', 8, 0, 4),
(17, b'1', '2022-12-20 18:00:12.375000', 'Đơn hàng mã số E91671530218 của bạn đã bị hủy', 6, 0, 9),
(18, b'1', '2022-12-20 18:00:16.426000', 'Đơn hàng mã số E91671530218 của bạn đã bị hủy', 6, 0, 9),
(19, b'1', '2022-12-21 16:11:21.757000', 'Đơn hàng mã số O91671613881 mới được đặt', 9, 0, NULL),
(20, b'1', '2022-12-21 16:13:44.553000', 'Đơn hàng mã số O91671613881 của bạn đã bị hủy', 9, 0, 9),
(21, b'1', '2022-12-21 16:14:33.964000', 'Đơn hàng mã số O91671614073 mới được đặt', 10, 0, NULL),
(22, b'1', '2022-12-21 16:14:56.195000', 'Đơn hàng mã số O91671614073 của bạn đã được xác nhận', 10, 0, 9),
(23, b'1', '2022-12-22 20:39:26.410000', 'Đơn hàng mã số O71671716366 mới được đặt', 11, 0, NULL),
(24, b'1', '2022-12-22 20:40:12.651000', 'Đơn hàng mã số O71671716366 của bạn đã được xác nhận', 11, 0, 7),
(25, b'1', '2022-12-22 20:44:25.936000', 'Đơn hàng mã số O71671716665 mới được đặt', 12, 0, NULL),
(26, b'1', '2022-12-22 20:44:44.976000', 'Đơn hàng mã số O71671716665 của bạn đã được xác nhận', 12, 0, 7),
(27, b'1', '2022-12-22 21:18:02.000000', 'Đơn hàng mã số O71671718682 mới được đặt', 13, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `cancel_time` datetime(6) DEFAULT NULL,
  `confirmed_time` datetime(6) DEFAULT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_time` datetime(6) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` float NOT NULL,
  `users_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `cancel_time`, `confirmed_time`, `order_code`, `order_time`, `quantity`, `total`, `users_id`) VALUES
(5, NULL, '2022-12-20 16:51:13.023000', 'O91671529566', '2022-12-20 16:46:06.347000', 3, 10600000, 9),
(6, NULL, '2022-12-20 18:00:08.661000', 'E91671530218', '2022-12-20 16:56:58.853000', 1, 8000000, 9),
(7, NULL, '2022-12-20 12:33:40.507000', 'O41671539571', '2022-12-20 12:32:51.997000', 1, 3400000, 4),
(8, NULL, '2022-12-20 19:57:36.931000', 'O41671541024', '2022-12-20 19:57:04.959000', 1, 4000000, 4),
(9, NULL, '2022-12-21 16:13:44.495000', 'O91671613881', '2022-12-21 16:11:21.561000', 1, 4100000, 9),
(10, NULL, '2022-12-21 16:14:56.142000', 'O91671614073', '2022-12-21 16:14:33.799000', 1, 4800000, 9),
(11, NULL, '2022-11-22 20:40:12.610000', 'O71671716366', '2022-11-22 20:39:26.242000', 2, 10200000, 7),
(12, NULL, '2022-10-22 20:44:44.936000', 'O71671716665', '2022-10-22 20:44:25.771000', 2, 6400000, 7),
(13, '2022-12-22 22:18:02.681000', NULL, 'O71671718682', '2022-12-22 21:18:02.681000', 2, 10800000, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `expired_date` datetime(6) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `expired_date`, `month`, `start_date`, `orders_id`, `product_id`) VALUES
(9, '2023-01-19 16:51:13.023000', 1, '2022-12-20 16:51:13.023000', 5, 65),
(10, '2023-01-19 16:51:13.023000', 1, '2022-12-20 16:51:13.023000', 5, 66),
(11, '2023-01-19 16:51:13.023000', 1, '2022-12-20 16:51:13.023000', 5, 60),
(12, NULL, 2, NULL, 6, 65),
(13, '2023-01-19 12:33:40.507000', 1, '2022-12-20 12:33:40.507000', 7, 70),
(14, '2023-01-19 19:57:36.931000', 1, '2022-12-20 19:57:36.931000', 8, 56),
(15, NULL, 1, NULL, 9, 77),
(16, '2023-01-20 16:14:56.142000', 1, '2022-12-21 16:14:56.142000', 10, 79),
(17, '2023-01-21 20:40:12.610000', 2, '2022-11-22 20:40:12.610000', 11, 90),
(18, '2023-01-21 20:40:12.610000', 2, '2022-11-22 20:40:12.610000', 11, 89),
(19, '2023-01-21 20:44:44.936000', 3, '2022-10-22 20:44:44.936000', 12, 85),
(20, '2023-01-21 20:44:44.936000', 3, '2022-10-22 20:44:44.936000', 12, 84),
(21, '2023-01-21 21:18:02.681000', 1, '2022-12-22 21:18:02.681000', 13, 45),
(22, '2023-01-21 21:18:02.681000', 1, '2022-12-22 21:18:02.681000', 13, 52);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_track`
--

CREATE TABLE `order_track` (
  `id` int(11) NOT NULL,
  `notes` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_time` datetime(6) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_track`
--

INSERT INTO `order_track` (`id`, `notes`, `status`, `updated_time`, `order_id`) VALUES
(9, 'Đơn hàng của bạn đã đặt thành công', 'NEW', '2022-12-20 16:46:06.364000', 5),
(10, 'Khách hàng đã xác nhận đơn hàng', 'USER_CONFIRMED', '2022-12-20 16:49:38.929000', 5),
(11, 'Admin đã xác nhận thanh toán', 'PAID', '2022-12-20 16:51:13.071000', 5),
(12, 'Khách hàng đã yêu cầu gia hạn', 'EXTEND', '2022-12-20 16:56:58.853000', 6),
(13, 'Đơn hàng của bạn đã đặt thành công', 'NEW', '2022-12-20 12:32:52.001000', 7),
(14, 'Admin đã xác nhận thanh toán', 'PAID', '2022-12-20 12:33:40.742000', 7),
(15, 'Đơn hàng của bạn đã đặt thành công', 'NEW', '2022-12-20 19:57:05.063000', 8),
(16, 'Admin đã xác nhận thanh toán', 'PAID', '2022-12-20 19:57:37.138000', 8),
(17, 'Đơn hàng của bạn đã bị hủy', 'CANCELLED', '2022-12-20 18:00:06.660000', 6),
(18, 'Đơn hàng của bạn đã bị hủy', 'CANCELLED', '2022-12-20 18:00:08.661000', 6),
(19, 'Đơn hàng của bạn đã đặt thành công', 'NEW', '2022-12-21 16:11:21.572000', 9),
(20, 'Đơn hàng của bạn đã bị hủy', 'CANCELLED', '2022-12-21 16:13:44.495000', 9),
(21, 'Đơn hàng của bạn đã đặt thành công', 'NEW', '2022-12-21 16:14:33.799000', 10),
(22, 'Admin đã xác nhận thanh toán', 'PAID', '2022-12-21 16:14:56.195000', 10),
(23, 'Đơn hàng của bạn đã đặt thành công', 'NEW', '2022-12-22 20:39:26.243000', 11),
(24, 'Admin đã xác nhận thanh toán', 'PAID', '2022-12-22 20:40:12.651000', 11),
(25, 'Đơn hàng của bạn đã đặt thành công', 'NEW', '2022-12-22 20:44:25.771000', 12),
(26, 'Admin đã xác nhận thanh toán', 'PAID', '2022-12-22 20:44:44.976000', 12),
(27, 'Đơn hàng của bạn đã đặt thành công', 'NEW', '2022-12-22 21:18:02.683000', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` double NOT NULL,
  `price` float NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `enabled` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `description`, `image`, `lat`, `lng`, `name`, `number`, `price`, `address_id`, `category_id`, `enabled`) VALUES
(3, 'Quảng cáo 3 mặt', 'mot-cot-tam-giac.jpg', 12.644578135908308, 108.01631212234497, 'TG01', 1.1191598759399302, 4000000, 4, 2, b'0'),
(45, '3 mặt dễ quảng cáo', 'mot-cot-tam-giac.jpg', 12.651208180965364, 108.01457509608726, 'TG02', 1.3062526015902551, 5000000, 4, 2, b'1'),
(46, 'Thoáng', 'quang-cao-tam-lon.jpg', 12.662245703927486, 108.01866444273072, 'BNL01', 1.8792007800935515, 4500000, 4, 3, b'1'),
(47, 'Nhiều người qua lại', 'quang-cao-tam-lon.jpg', 12.680421037180505, 108.01889485542544, 'BN02', 2.650148178762193, 4500000, 4, 3, b'1'),
(49, 'Dễ quảng cáo', 'quang-cao-tam-lon.jpg', 12.67672435301335, 108.01887387815437, 'BN03', 1.8114682436066656, 4300000, 4, 3, b'1'),
(50, 'Dễ nhìn', 'mot-cot-tam-giac.jpg', 12.694574595278931, 108.01882603157172, 'TG05', 1.952797518217831, 5000000, 2, 2, b'1'),
(51, 'Dễ nhìn', 'quang-cao-tam-lon.jpg', 12.702388845627649, 108.03426605569236, 'BNL06', 2.1410707458425393, 4300000, 2, 3, b'1'),
(52, '3 mặt dễ quảng cáo', 'quang-cao-tam-lon.jpg', 12.714996860452972, 108.06306089984119, 'BNL08', 3.0219608482398685, 5800000, 2, 2, b'1'),
(53, 'Gần vòng xuyến', 'quang-cao-tam-lon.jpg', 12.71660914672718, 108.08635997202676, 'BNL11', 1.2943910874837834, 6000000, 2, 3, b'1'),
(54, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.646076857347389, 108.01843913717347, 'LD01', 4.779477479713931, 3200000, 5, 4, b'1'),
(55, 'Gần trường đại học', 'quang-cao-ky-thuat-so.jpg', 12.652451262609125, 108.0246940485962, 'LD02', 4.874331815988163, 3800000, 5, 4, b'1'),
(56, 'Đông người qua lại', 'quang-cao-tam-lon.jpg', 12.659718698075107, 108.03033095689929, 'LD03', 3.3518464061649844, 4000000, 5, 3, b'1'),
(57, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.665554473364578, 108.03786351761235, 'LD04', 1.703875962043386, 4000000, 5, 4, b'1'),
(58, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.67313060361302, 108.04266096694487, 'LD05', 1.0407073429533007, 4100000, 5, 4, b'1'),
(60, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.682405262950697, 108.04434927625734, 'PBC01', 1.905523514747836, 3700000, 8, 4, b'1'),
(61, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.682364170456252, 108.04560999590146, 'PBC02', 1.7727396880134296, 3400000, 8, 4, b'1'),
(63, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.682389597855282, 108.04258996094251, 'PBC03', 2.375976791215024, 3000000, 8, 4, b'1'),
(65, 'Nhiều người qua lại , quảng cáo lớn', 'quang-cao-tam-lon.jpg', 12.682487720912475, 108.02199633171472, 'PBC05', 6.071579618860615, 4000000, 8, 3, b'1'),
(66, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.682445487935748, 108.0346221945032, 'PBC06', 4.534061374349341, 2900000, 8, 4, b'1'),
(68, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.684146703506084, 108.04592430803166, 'PCT01', 1.25908139047658, 3800000, 7, 4, b'1'),
(69, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.689120826351965, 108.04819765704745, 'PCT02', 2.1897305686717736, 3400000, 7, 4, b'1'),
(70, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.691311739369647, 108.05021187050312, 'PCT03', 2.45756080600133, 3400000, 7, 4, b'1'),
(71, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.694057792911517, 108.05260763385107, 'PCT05', 1.7810564183477335, 3400000, 7, 4, b'1'),
(72, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.696429939988027, 108.05457433807543, 'PCT06', 2.313692976787884, 3400000, 7, 4, b'1'),
(73, 'Nhiều người qua lại', 'quang-cao-tam-lon.jpg', 12.686590663288383, 108.05514390183906, 'NTT01', 1.773996603569917, 4000000, 6, 3, b'1'),
(74, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.689452800183737, 108.05918013517241, 'NTT02', 2.8310161783931145, 4100000, 6, 4, b'1'),
(77, 'Nhiều người qua lại', 'quang-cao-tam-lon.jpg', 12.724395554875915, 108.07878557615177, 'HHT01', 3.064718087363071, 4100000, 3, 3, b'1'),
(78, 'Nhiều người qua lại', 'quang-cao-tam-lon.jpg', 12.72033209669918, 108.07652256384102, 'HHT02', 3.3692843048255616, 4100000, 3, 3, b'1'),
(79, 'Nhiều người qua lại', 'mot-cot-tam-giac.jpg', 12.716484639114642, 108.07325812501985, 'HTT03', 3.5979244545424223, 4800000, 3, 2, b'1'),
(80, 'Gần trường học ', 'quang-cao-ky-thuat-so.jpg', 12.711666068556228, 108.06957884113889, 'HHT04', 2.0729277161433597, 3500000, 3, 4, b'1'),
(81, 'Gần trường học', 'quang-cao-ky-thuat-so.jpg', 12.712271235091269, 108.0698794026249, 'HHT05', 2.06778797398363, 3500000, 3, 4, b'1'),
(82, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.70281992845657, 108.0607322089203, 'HHT06', 1.634934447153154, 3500000, 3, 4, b'1'),
(83, 'Nhiều người qua lại', 'quang-cao-ky-thuat-so.jpg', 12.69810809513708, 108.0560819137536, 'HHT08', 1.654514398853928, 3500000, 3, 4, b'1'),
(84, 'Nhiều người qua lại', 'quang-cao-tam-lon.jpg', 12.679901104234782, 108.04750443370169, 'HV01', 1.7565913614103195, 3200000, 9, 3, b'1'),
(85, 'Gần trường học', 'quang-cao-ky-thuat-so.jpg', 12.680518836656473, 108.05054213339531, 'HV02', 1.6014327817810583, 3200000, 9, 4, b'1'),
(86, 'Vị trí thoáng', 'mot-cot-tam-giac.jpg', 12.68420674442731, 108.05750988787223, 'HV03', 2.1992194801819887, 3700000, 9, 2, b'1'),
(87, 'Vị trí thoáng', 'quang-cao-tam-lon.jpg', 12.683898959004821, 108.06255814083421, 'HV04', 3.8923580893216045, 3500000, 9, 3, b'1'),
(88, 'Vị trí thoáng', 'quang-cao-tam-lon.jpg', 12.681464083882844, 108.07136646420969, 'HV05', 4.24239250402499, 3500000, 9, 3, b'1'),
(89, 'Gần khu đô thị', 'mot-cot-tam-giac.jpg', 12.715941378544152, 108.08690899220797, 'NCT01', 3.5448254880469037, 5200000, 19, 2, b'1'),
(90, 'Nhiều người qua lại', 'quang-cao-tam-lon.jpg', 12.71104538279502, 108.08333437280572, 'NCT02', 3.895547308392092, 5000000, 19, 3, b'1'),
(91, 'Nhiều người qua lại', 'quang-cao-tam-lon.jpg', 12.69839662555244, 108.0720762352593, 'NCT03', 1.8093686495220171, 4700000, 19, 3, b'1'),
(92, 'Nhiều người qua lại', 'quang-cao-tam-lon.jpg', 12.699544325539646, 108.07363517533882, 'NCT04', 1.0897891279951883, 4700000, 19, 3, b'1'),
(93, 'Cạnh bến xe', 'quang-cao-ky-thuat-so.jpg', 12.700764203021183, 108.07516461955221, 'NCT05', 1.1433201875380468, 4600000, 19, 4, b'1'),
(94, 'Nhiều người qua lại', 'quang-cao-tam-lon.jpg', 12.70470845468144, 108.07956765918874, 'NCT06', 2.5456007580730926, 4600000, 19, 3, b'1'),
(95, 'Nhiều người qua lại', 'quang-cao-tam-lon.jpg', 12.710108994815757, 108.08268131297642, ' NCT07', 3.7915012890981483, 4700000, 19, 3, b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`key`, `category`, `value`) VALUES
('CUSTOMER_VERIFY_CONTENT', 'MAIL_TEMPLATES', 'Hi, [[name]]! please check this link to <a href=\"[[URL]]\" target=\"_self\">verify</a> verify your email. Thank you'),
('CUSTOMER_VERIFY_SUBJECT', 'MAIL_TEMPLATES', 'Email to verify...'),
('MAIL_FROM', 'MAIL_SERVER', 'quylxpk01793@fpt.edu.vn'),
('MAIL_HOST', 'MAIL_SERVER', 'smtp.gmail.com'),
('MAIL_PASSWORD', 'MAIL_SERVER', 'glmwqtkmotdbzkcg'),
('MAIL_PORT', 'MAIL_SERVER', '587'),
('MAIL_SENDER_NAME', 'MAIL_SERVER', 'QuangCaoTru'),
('MAIL_USERNAME', 'MAIL_SERVER', 'quylxpk01793@fpt.edu.vn'),
('SMTP_AUTH', 'MAIL_SERVER', 'true'),
('SMTP_SECURED', 'MAIL_SERVER', 'true');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified` bit(1) DEFAULT NULL,
  `email_verify_code` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `created_date`, `avatar`, `email`, `email_verified`, `email_verify_code`, `enabled`, `first_name`, `last_name`, `password`, `phone_number`) VALUES
(1, '2022-12-17 10:01:23.252000', NULL, 'trungquy01814@gmail.com', NULL, NULL, b'1', 'admin', 'quanlitru', '$2a$10$d4HPx4vMVJGw60gKyCyGN.zjZfZFWc/LcDQj30ikS4a1QGm285Na2', '+84706100228'),
(2, '2022-12-17 06:45:32.014000', NULL, 'giangmas@gmail.com', b'0', 'HbjxR5GStlsepIVViULxBgy0YSxLXz5MuRWN1ftGtnMi7DpZpUHPglQHdjMk5ECw', b'1', 'giang', 'pham', '$2a$10$hEUKLh20eyJrBLNqxl.cRORC65QUS8W1Qw0S0S9s00jjYObP47/1G', '+84869773152'),
(3, '2022-12-17 07:58:36.012000', NULL, 'truongvan6322@gmail.com', b'0', 'FTCjcKrKC4GAZuqSU4zkqgSAWMEc6PQqbRGokd0buxSAxI31eT7lN7ruUg2NI4gq', b'1', 'xuan', 'quy', '$2a$10$EYdynk.OgdKZZ6JTTfm8q.2t0d9ArNpTonUAm4RGbAvGS.hlhw.5m', '+84147258369'),
(4, '2022-12-17 14:05:49.130000', NULL, 'xuanquy2433@gmail.com', b'0', 'GWg5eQg4mwEamEqDQVPyEBXoWbkmv0y7Rqa0DitVtG6Kp9F9tfFxZfZMZ8Sx5NZP', b'1', 'van', 'truong', '$2a$10$pBkIyIETII71Gt.w15cc5uY9B.Xqm.Mh4Dtf8SDUMiUyHzh6B6Rkm', '+84889080610'),
(6, '2022-12-17 14:21:22.661000', NULL, 'hdhdh@gmail.com', b'0', 'hl3kg3HgF9HG5Im1KafqLXPNiXFPm5y8Cdz8WHMl4BbUA7dlrLp5x3qRJHPxkyoV', b'1', 'Aoma', 'Haha', '$2a$10$NauwH410.LkOazsidyyzMuA7jz.R3LOYbzGPdxWchoij5rqzhxpAS', '+84545424548'),
(7, '2022-12-17 14:35:42.379000', NULL, 'thangptpk01991@fpt.edu.vn', b'0', 'jCPETOyGAUTBZE5EMQWNWJyzV4Y1yIxYNbBDOPT2JjnHmTUM0Wg5krKccEuwuKW8', b'1', 'PHAN', 'THANG', '$2a$10$JDCW/Q6I83fussx.YM5QiOmPqyLzX5YkOiJaFtRaIYZfkRUrkYHfK', '+84372084567'),
(8, '2022-12-19 11:10:39.880000', NULL, 'ahshs@gmail.com', b'0', 'T5xitjBQSFvpZ0MqnhZe6DydKCqmeg6Pp5a96ZwNRSv8ufpZEfpYaWaB4azy9zmM', b'1', 'van', 'truong', '$2a$10$uop3YETwXkJn5T2BARAdZOYVUitMIfh7DGFMgPtw4Etuhv8mxahWK', '+841472583699'),
(9, '2022-12-20 14:53:01.084000', NULL, 'trungquy50@gmail.com', b'0', 'BanfNghoZWyMTAihqqhsJGomslyRVIwFV5PK3gdZn0PEuJvJ4LwJWk1IZ0jYh3us', b'1', 'trung', 'quy', '$2a$10$6HYxY4elJzqsB2CAeHWXkeF83XQMfJ6gQn2CfoqiWW8wRnl1/lBq.', '+84378583429');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_roles`
--

CREATE TABLE `users_roles` (
  `users_id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users_roles`
--

INSERT INTO `users_roles` (`users_id`, `roles_id`) VALUES
(1, 2),
(2, 1),
(3, 2),
(4, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_wishlist`
--

CREATE TABLE `users_wishlist` (
  `userswl_id` int(11) NOT NULL,
  `wishlist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users_wishlist`
--

INSERT INTO `users_wishlist` (`userswl_id`, `wishlist_id`) VALUES
(4, 3),
(4, 70),
(9, 61);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `web_image`
--

CREATE TABLE `web_image` (
  `id` int(11) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `web_image`
--

INSERT INTO `web_image` (`id`, `active`, `category`, `image`) VALUES
(8, b'1', 'logo', '1-01-01.png'),
(9, b'1', 'banner', 'soheb-zaidi-EFesRF0KyNg-unsplash.jpg'),
(10, b'1', 'banner', 'johny-vino-nl-09Hf3lpI-unsplash.jpg'),
(11, b'1', 'banner', 'eleni-afiontzi-gLU8GZpHtRA-unsplash.jpg'),
(14, b'1', 'banner', '4d4db119a6617f3f2670.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wish_list`
--

CREATE TABLE `wish_list` (
  `product_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `address_point`
--
ALTER TABLE `address_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKq32hiwa8hsbm235sk70y4dyc2` (`address_id`);

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjcyd5wv4igqnw413rgxbfu4nv` (`product_id`),
  ADD KEY `FKka3t831w0aw2vrwgsbhcn5y4m` (`user_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKe6k45xxoin4fylnwg2jkehwjf` (`users_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7xf2gmq3yok90kilflnu8aa7e` (`orders_id`),
  ADD KEY `FKb8bg2bkty0oksa3wiq5mp5qnc` (`product_id`);

--
-- Chỉ mục cho bảng `order_track`
--
ALTER TABLE `order_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK31jv1s212kajfn3kk1ksmnyfl` (`order_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKi1ur6f3l639cmp0cgmjox2b3a` (`address_id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`),
  ADD UNIQUE KEY `UK_9q63snka3mdh91as4io72espi` (`phone_number`);

--
-- Chỉ mục cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`users_id`,`roles_id`),
  ADD KEY `FKa62j07k5mhgifpp955h37ponj` (`roles_id`);

--
-- Chỉ mục cho bảng `users_wishlist`
--
ALTER TABLE `users_wishlist`
  ADD PRIMARY KEY (`userswl_id`,`wishlist_id`),
  ADD KEY `FKmmcgy6v8kxl3k0w6j6xb505go` (`wishlist_id`);

--
-- Chỉ mục cho bảng `web_image`
--
ALTER TABLE `web_image`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wish_list`
--
ALTER TABLE `wish_list`
  ADD PRIMARY KEY (`product_id`,`users_id`),
  ADD KEY `FKrr5saktj5vsx1ha931vupqb1s` (`users_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `address_point`
--
ALTER TABLE `address_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `order_track`
--
ALTER TABLE `order_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `web_image`
--
ALTER TABLE `web_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `address_point`
--
ALTER TABLE `address_point`
  ADD CONSTRAINT `FKq32hiwa8hsbm235sk70y4dyc2` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

--
-- Các ràng buộc cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `FKjcyd5wv4igqnw413rgxbfu4nv` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKka3t831w0aw2vrwgsbhcn5y4m` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKe6k45xxoin4fylnwg2jkehwjf` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FK7xf2gmq3yok90kilflnu8aa7e` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FKb8bg2bkty0oksa3wiq5mp5qnc` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `order_track`
--
ALTER TABLE `order_track`
  ADD CONSTRAINT `FK31jv1s212kajfn3kk1ksmnyfl` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FKi1ur6f3l639cmp0cgmjox2b3a` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

--
-- Các ràng buộc cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKa62j07k5mhgifpp955h37ponj` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKml90kef4w2jy7oxyqv742tsfc` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `users_wishlist`
--
ALTER TABLE `users_wishlist`
  ADD CONSTRAINT `FKmmcgy6v8kxl3k0w6j6xb505go` FOREIGN KEY (`wishlist_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKqtqb59p30ssm56fikbyj47mn3` FOREIGN KEY (`userswl_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `wish_list`
--
ALTER TABLE `wish_list`
  ADD CONSTRAINT `FKqn4e0ta2823kynefeg4jektp0` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKrr5saktj5vsx1ha931vupqb1s` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
