-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 14, 2025 at 02:04 PM
-- Server version: 10.6.21-MariaDB-ubu2204
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(32) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `order` tinyint(1) NOT NULL,
  `mess` tinyint(1) NOT NULL,
  `statistics` tinyint(1) NOT NULL,
  `user` tinyint(1) NOT NULL,
  `product` tinyint(1) NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `review` tinyint(1) NOT NULL,
  `layout` tinyint(1) NOT NULL,
  `decentralization` tinyint(1) NOT NULL,
  `note` varchar(255) NOT NULL,
  `api_key` varchar(64) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `order`, `mess`, `statistics`, `user`, `product`, `discount`, `review`, `layout`, `decentralization`, `note`, `api_key`, `time`) VALUES
('3eeec5ce55d6', 'admin@gmail.com', 'admin@gmail.com', 'admin@gmail.com', 1, 1, 1, 1, 1, 1, 1, 1, 1, '', 'a34681b2fb439c8d2b9e27c79bc9ab43ad7f5c4c0cc3adf40b817e4558e64b50', '2025-03-14 20:29:35'),
('highest', 'admin1', 'admin1@gmail.com', 'admin1@gmail.com', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'cao nhất', 'c3370c0e0f999e26658a571584cb9f5078740c54a587a58d6ba27f0fa2ceb2c8', '2025-03-14 20:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `body_review`
--

CREATE TABLE `body_review` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `body_review`
--

INSERT INTO `body_review` (`id`, `name`, `description`, `icon`) VALUES
(1, 'Đa Dạng Món Ăn', 'Từ burger đến pizza, chúng tôi có đủ loại món ăn để thỏa mãn mọi khẩu vị.', 'FaUtensils'),
(2, 'Phục Vụ Nhanh Chóng', 'Đảm bảo thời gian chờ đợi tối thiểu để bạn có thể thưởng thức bữa ăn nhanh chóng.', 'FaClock'),
(3, 'Giao Hàng Tận Nơi', 'Dịch vụ giao hàng nhanh chóng và tiện lợi đến tận cửa nhà bạn.', 'FaTruck'),
(4, 'Chất Lượng Đảm Bảo', 'Cam kết sử dụng nguyên liệu tươi ngon và quy trình chế biến an toàn.', 'AiFillLike'),
(5, 'Đa Dạng Món Ăn', '', ''),
(6, 'Sử dụng nguyên liệu tươi sạch, không chất bảo quản', '', 'TiTick'),
(7, 'Quy trình chế biến đảm bảo vệ sinh an toàn thực phẩm', '', 'TiTick'),
(8, 'Kiểm soát chất lượng nghiêm ngặt trước khi phục vụ', '', 'TiTick'),
(9, 'Đa dạng lựa chọn cho các chế độ ăn đặc biệt', '', 'TiTick'),
(10, 'Cập nhật menu thường xuyên với các món ăn mới\r\n', '', 'TiTick'),
(41, '', '', 'TiTick'),
(43, '', '', 'TiTick'),
(44, '', '', 'TiTick'),
(45, '', '', 'TiTick'),
(46, '', '', 'TiTick'),
(47, '', '', 'TiTick'),
(48, '', '', 'TiTick');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `checker` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `copyright_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`id`, `name`, `logo`, `description`, `copyright_text`) VALUES
(1, 'ChefGofood', 'new_logo.png', 'Hương vị tuyệt vời', '© 2025 _03.ntanh');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id`, `title`, `icon`, `content`, `type`) VALUES
(1, '', 'IoIosMap', '123 Đường Ẩm Thực', ''),
(3, '', 'FaPhoneAlt', '0866443648', ''),
(4, '', 'MdEmail', '03.ntanh@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `detail_address`
--

CREATE TABLE `detail_address` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_address`
--

INSERT INTO `detail_address` (`id`, `user_id`, `note`, `address`, `phone`) VALUES
(81, '67bf8ed504213', 'Nhà', 'SN6 ,Ngõ 352 Phương canh', '0866443648');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `discount_percent` int(11) DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `minimum_price` decimal(15,0) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `code`, `description`, `discount_percent`, `valid_from`, `valid_to`, `quantity`, `minimum_price`, `status`) VALUES
(65, 'Giảm 20% tổng bill cho hóa đơn đầu tiên', '16RNX9DY', '', 20, '2025-03-01', '2025-03-22', 120, '500000', 1),
(66, 'Giảm 10% cho hóa đơn trên 500.000', 'FUPS1VFS', '', 10, '2025-03-14', '2025-03-24', 0, '500', 0),
(67, 'Giảm giá ngày hội mùa xuân', 'O301VM8R', '', 20, '2025-03-01', '2025-04-12', 1000, '50000', 1),
(68, 'Lễ hội tình nhân', 'DJ2MOZJT', '', 30, '2025-03-14', '2025-03-15', 100, '100000', 1),
(69, 'Kỉ niệm 30/4 - 1/5', 'HVQTSPRY', '', 50, '2025-04-05', '2025-04-12', 6, '100', 1),
(70, 'Giảm 20% cho hóa đơn trên 1 triệu', 'FC2N9VYU', '', 10, '2025-03-07', '2025-04-18', 1110, '1000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `discount_history`
--

CREATE TABLE `discount_history` (
  `id` int(11) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `status` varchar(255) NOT NULL,
  `Datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `discount_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_user`
--

CREATE TABLE `discount_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minimum_price` float(15,0) NOT NULL,
  `discount_percent` varchar(255) NOT NULL,
  `valid_from` datetime NOT NULL,
  `valid_to` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount_user`
--

INSERT INTO `discount_user` (`id`, `name`, `user_id`, `email`, `code`, `description`, `minimum_price`, `discount_percent`, `valid_from`, `valid_to`, `status`) VALUES
(66, 'Giảm 50% cho đơn hàng trên 5 triệu', '67d41d5010c4f', 'thuongnt@gmail.com', 'XXWG6LJV', 'Giảm 50% cho đơn hàng trên 5 triệu', 1000000, '50', '2025-03-14 00:00:00', '2025-04-12 00:00:00', 1),
(67, 'Giảm 10% cho hội viên mới', '67d41d1b96ccd', 'anhlt@gmail.com', '0R7HNBYD', 'Nhanh tay nhận ngay', 100, '10', '2025-03-01 00:00:00', '2025-03-29 00:00:00', 1),
(68, 'Giảm 20% cho hội viên', '67d41cccc9a62', 'nam03@gmail.com', 'K869GDPZ', 'Nhah Tay đón nhận', 100, '20', '2025-03-08 00:00:00', '2025-05-10 00:00:00', 1),
(69, 'Giảm 100% cho thành viên vip', '67bf8ed504213', '20210487@eaut.edu.vn', 'L58RM54Q', '', 0, '100', '2025-02-28 00:00:00', '2025-03-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `created_at`) VALUES
(17, '67d419ab7f4a4', '423', '2025-03-14 12:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `footer_links`
--

CREATE TABLE `footer_links` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footer_links`
--

INSERT INTO `footer_links` (`id`, `title`, `url`) VALUES
(1, 'Điều khoản sử dụng', '/terms'),
(2, 'Chính sách bảo mật', '/privacy'),
(3, 'Cookies', '/cookies');

-- --------------------------------------------------------

--
-- Table structure for table `head_review`
--

CREATE TABLE `head_review` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `color` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `head_review`
--

INSERT INTO `head_review` (`id`, `name`, `description`, `color`) VALUES
(1, 'Về ChefGofood', 'Thưởng thức hương vị nhanh chóng, ngon miệng', ''),
(2, 'Câu Chuyện Của Chúng Tôi', 'ChefGofood được thành lập vào năm 2025 với mục tiêu mang đến cho khách hàng những bữa ăn ngon, nhanh chóng và tiện lợi. Chúng tôi cam kết sử dụng nguyên liệu tươi ngon nhất và áp dụng các quy trình chế biến hiện đại để đảm bảo chất lượng tuyệt vời', '');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `admin_id` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `sender_type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `admin_id`, `content`, `sender_type`, `status`, `created_at`) VALUES
(180, '67bf8ed504213', 'highest', 'hi chào bạn ', 'user', 0, '2025-03-14 13:03:41'),
(181, '67bf8ed504213', 'highest', 'đơn mình đặt lâu đến quá', 'user', 0, '2025-03-14 13:03:50'),
(182, '67bf8ed504213', 'highest', 'dạ em xin lỗi ', 'admin', 1, '2025-03-14 13:03:58'),
(183, '67bf8ed504213', 'highest', 'đơn của mình sắp xong rồi ạ ', 'admin', 1, '2025-03-14 13:04:09'),
(185, '67bf8ed504213', '3eeec5ce55d6', 'alo ', 'admin', 1, '2025-03-14 13:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `nav_menu`
--

CREATE TABLE `nav_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` text NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `order_number` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `highlight` tinyint(1) DEFAULT 0,
  `class_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nav_menu`
--

INSERT INTO `nav_menu` (`id`, `title`, `image`, `url`, `order_number`, `is_active`, `highlight`, `class_name`) VALUES
(1, 'Trang Chủ', '', '/', 1, 1, 0, 'nav-link'),
(2, 'Món ăn', '', '/food', 2, 1, 0, 'nav-link'),
(3, 'Ưu đãi', '', '/discount', 3, 1, 0, 'nav-link'),
(4, 'Giới thiệu', '', '/abouts', 4, 1, 0, 'nav-link'),
(5, 'CHEFGOFOOD', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741947116/482223428_632237039661846_9140837627383345726_n_py2gjv.jpg', '/', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_section`
--

CREATE TABLE `newsletter_section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `button_text` varchar(100) DEFAULT NULL,
  `placeholder_text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter_section`
--

INSERT INTO `newsletter_section` (`id`, `title`, `description`, `button_text`, `placeholder_text`) VALUES
(1, 'Đăng ký nhận ưu đãi', 'Nhận ngay ưu đãi 20% cho đơn hàng đầu tiên!', 'Đăng ký ngay', 'Email của bạn');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(64) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `address_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `discount_code` varchar(255) DEFAULT NULL,
  `total_price` decimal(15,0) NOT NULL,
  `subtotal` decimal(15,0) NOT NULL,
  `review` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address_id`, `status`, `reason`, `quantity`, `note`, `discount_code`, `total_price`, `subtotal`, `review`, `created_at`, `updated_at`) VALUES
('67bf9078', '67bf8ed504213', 81, 'Completed', NULL, 1, '', '', '110000', '100000', 0, '2025-02-26 22:06:48', '2025-02-26 22:07:50'),
('67bf90c8', '67bf8ed504213', 81, 'Completed', NULL, 2, '', '', '240000', '210000', 1, '2025-02-26 22:08:08', '2025-02-26 22:08:21'),
('67c4a970', '67bf8ed504213', 81, 'Completed', NULL, 1, '', '', '42000', '15000', 1, '2025-03-02 18:54:40', '2025-03-08 04:15:09'),
('67cd89e1', '67bf8ed504213', 81, 'Completed', NULL, 1, '', '', '65000', '35000', 1, '2025-03-09 12:30:25', '2025-03-14 12:42:03'),
('67d42584', '67bf8ed504213', 81, 'Completed', NULL, 138, '', '', '2058600', '2070000', 1, '2025-03-14 12:48:04', '2025-03-14 12:49:06'),
('67d4261a', '67bf8ed504213', 81, 'Completed', NULL, 100, '', '', '1950000', '2000000', 1, '2025-03-14 12:50:34', '2025-03-14 12:50:53'),
('67d42675', '67bf8ed504213', 81, 'Completed', NULL, 104, '', '', '4450000', '5200000', 1, '2025-03-14 12:52:05', '2025-03-14 12:52:18'),
('67d426ca', '67bf8ed504213', 81, 'Completed', NULL, 100, '', '', '2580000', '3000000', 1, '2025-03-14 12:53:30', '2025-03-14 12:53:35'),
('67d42709', '67bf8ed504213', 81, 'Completed', NULL, 102, '', '', '1968000', '2040000', 1, '2025-03-14 12:54:33', '2025-03-14 12:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `order_process`
--

CREATE TABLE `order_process` (
  `id` int(11) NOT NULL,
  `step_number` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `order_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_process`
--

INSERT INTO `order_process` (`id`, `step_number`, `title`, `description`, `icon`, `order_number`) VALUES
(1, 1, 'Vào trang web của Món Ngon Online', 'Truy cập website để bắt đầu đặt món', 'CiGlobe', 1),
(2, 2, 'Đăng nhập tài khoản', 'Đăng nhập để nhận ưu đãi đặc biệt', 'CiUser', 2),
(3, 3, 'Lựa chọn sản phẩm yêu thích', 'Khám phá menu đa dạng của chúng tôi', 'CiHeart', 3),
(4, 4, 'Thêm ghi chú', 'Tùy chỉnh món ăn theo ý thích', 'CiEdit', 4),
(5, 5, 'Tạo đơn hàng', 'Xác nhận và thanh toán đơn hàng', 'MdOutlineShoppingCart', 5),
(6, 6, 'Chuẩn bị tận hưởng', 'Đơn hàng đang được chuẩn bị', 'CiFaceSmile', 6),
(8, 0, 'Các bước đặt món tại FASTFOOT', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reset_code` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` datetime NOT NULL,
  `used` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_id`, `email`, `reset_code`, `created_at`, `expires_at`, `used`) VALUES
(38, '67bf8ed504213', '20210487@eaut.edu.vn', '986214', '2025-03-02 19:09:22', '2025-03-03 02:24:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` varchar(64) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_method`, `payment_status`, `payment_date`) VALUES
(339, '67bf9078', 'cash', 'Pending', '2025-02-26 22:06:48'),
(340, '67bf90c8', 'cash', 'Pending', '2025-02-26 22:08:08'),
(341, '67c4a970', 'credit', 'Pending', '2025-03-02 18:54:40'),
(342, '67cd89e1', 'cash', 'Pending', '2025-03-09 12:30:26'),
(344, '67d42584', 'cash', 'Pending', '2025-03-14 12:48:04'),
(345, '67d4261a', 'cash', 'Pending', '2025-03-14 12:50:34'),
(346, '67d42675', 'cash', 'Pending', '2025-03-14 12:52:05'),
(347, '67d426ca', 'cash', 'Pending', '2025-03-14 12:53:30'),
(348, '67d42709', 'cash', 'Pending', '2025-03-14 12:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(225) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sold` int(11) DEFAULT 0,
  `price` decimal(15,0) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` varchar(255) NOT NULL,
  `lock` tinyint(1) NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `image_url` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `sold`, `price`, `quantity`, `status`, `type`, `lock`, `discount`, `image_url`, `created_at`) VALUES
('1', 'Bánh hamburger', 'Hamburger với thịt bò và phô mai', 15, '30000', 500, 1, 'cake', 0, '10', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946473/t76e-hero_o0qgod.jpg', '2024-10-31 17:00:00'),
('10', 'Gà rán', 'Gà rán giòn vàng, hương vị đặc biệt', 144, '50000', 596, 1, 'food', 0, '15', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946586/cach-lam-canh-ga-chien_zixjfx.jpg', '2024-10-31 17:00:00'),
('11', 'Bánh mì kẹp thịt gà', 'Bánh mì kẹp thịt gà nướng và rau', 8, '25000', 320, 1, 'cake', 0, '10', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946594/banh-mi-kep-thit-ga-ngon-giadinhvn-1009-1657785458_ykjhyh.jpg', '2024-10-31 17:00:00'),
('12', 'Salad trộn', 'Salad rau trộn tươi ngon', 5, '20000', 150, 1, 'food', 0, '5', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741959665/44796448-1320-4318-9972-2aba2382b41b.png', '2024-10-31 17:00:00'),
('13', 'Bánh crepe', 'Bánh crepe mỏng với nhân ngọt', 9, '12000', 230, 1, 'cake', 0, '8', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946637/241309661_10159590308179082_2038797699478654587_n_fvos4n.jpg', '2024-10-31 17:00:00'),
('14', 'Bánh gối', 'Bánh gối với nhân thịt và trứng', 14, '18000', 400, 1, 'cake', 0, '7', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946676/nh2-1628235250-5746-1628235416_svgvj0.jpg', '2024-10-31 17:00:00'),
('15', 'Bánh mì ốp la', 'Bánh mì kèm trứng ốp la', 19, '15000', 498, 1, 'cake', 0, '10', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946655/bm_opla_8847c2f03b184e1b845b604fa9aa115c_1024x1024_tsgycl.webp', '2024-10-31 17:00:00'),
('16', 'Mì trộn', 'Mì trộn khô với thịt và rau', 11, '30000', 300, 1, 'food', 0, '8', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946692/4b7beb1b-96d5-463f-a8b1-0a2ff3d22db00xeujnvy_q5bvby.jpg', '2024-10-31 17:00:00'),
('17', 'Xúc xích chiên', 'Xúc xích chiên với tương ớt', 22, '15000', 596, 1, 'food', 0, '5', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946703/xuc-xich_nzqklc.webp', '2024-10-31 17:00:00'),
('18', 'Gỏi cuốn', 'Gỏi cuốn tôm thịt với nước chấm', 19, '20000', 347, 1, 'food', 0, '12', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946708/download_pouzth.jpg', '2024-10-31 17:00:00'),
('19', 'Bánh cuốn', 'Bánh cuốn nóng với thịt và mộc nhĩ', 21, '22000', 240, 1, 'food', 0, '10', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946725/banh-cuon-nong-thom-ngon_oeftjg.webp', '2024-10-31 17:00:00'),
('2', 'Khoai tây chiên', 'Khoai tây chiên giòn vàng ươm', 132, '20000', 898, 1, 'food', 0, '5', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946500/Anh-5-Chien-lua-2-giup-khoai-t-3749-5930-1697865383_fn1isi.webp', '2024-10-31 17:00:00'),
('21', 'Bánh tiramisu', 'Bánh tiramisu thơm ngon với lớp kem và cà phê', 10, '60000', 100, 1, 'cake', 0, '15', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946731/3_c31e16c02c9d4afab72bb20e13abe84d_master_uqldzl.webp', '2024-10-31 17:00:00'),
('211', 'Bánh macaron', 'Bánh macaron nhiều màu sắc và hương vị', 15, '75000', 120, 1, 'cake', 0, '10', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946993/image2-1608870976-423-width640height400_yqetyy.jpg', '2024-10-31 17:00:00'),
('231', 'Bánh quy bơ', 'Bánh quy giòn tan vị bơ', 30, '20000', 300, 1, 'cake', 0, '5', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946997/vn-11134207-7r98o-lpamrp3xia1nb2_jacaly.jpg', '2024-10-31 17:00:00'),
('27', 'Nước ép dứa', 'Nước ép dứa tươi, giàu vitamin C', 12, '20000', 300, 1, 'water', 0, '6', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946736/nuoc-ep-dua-tao_dwlnan.jpg', '2024-10-31 17:00:00'),
('28', 'Bánh cheesecake', 'Bánh cheesecake với lớp phô mai mềm', 14, '70000', 120, 1, 'cake', 0, '12', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946754/cach-lam-banh-cheesecake-xoai-1_88cd8bbac20d431e939338b053840993_zrmp56.webp', '2024-10-31 17:00:00'),
('29', 'Nước cam tươi', 'Nước cam nguyên chất, không đường', 18, '25000', 600, 1, 'water', 0, '7', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946759/cong-dung-cua-nuoc-cam1_qiam4g.jpg', '2024-10-31 17:00:00'),
('3', 'Pizza pepperoni', 'Pizza với pepperoni, phô mai và nước sốt đặc biệt', 20, '80000', 200, 1, 'food', 0, '15', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946504/1000_F_252994140_DioyAIIoQLMiWt0nFUg98WKfBzVPJ4QN_o5xmie.jpg', '2024-10-31 17:00:00'),
('30', 'Bánh mì ngọt', 'Bánh mì ngọt mềm, thơm vị bơ', 25, '15000', 400, 1, 'cake', 0, '5', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946764/shutterstock_1886026849_c7hsfs.jpg', '2024-10-31 17:00:00'),
('31', 'Bánh muffin', 'Bánh muffin việt quất ngọt', 11, '25000', 200, 1, 'cake', 0, '8', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946776/muffin-640w_nrev6r.webp', '2024-10-31 17:00:00'),
('33', 'Bánh su kem', 'Bánh su kem mềm với nhân kem vani', 17, '30000', 90, 1, 'cake', 0, '9', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946781/vn-11134513-7r98o-lsv3ikawt3tl2a_resize_ss1242x600_crop_w1242_h600_cT_fjhkwz.jpg', '2024-10-31 17:00:00'),
('331', 'Bánh waffle', 'Waffle giòn tan với lớp sốt siro', 14, '50000', 180, 1, 'cake', 0, '10', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741947010/Banh-waffle-la-gi-banh-waffle-an-voi-gi-an-banh-waffle-co-map-khong-1-1200x676_bz7i9d.jpg', '2024-10-31 17:00:00'),
('34', 'Nước ép táo', 'Nước ép táo tươi nguyên chất', 21, '22000', 450, 1, 'water', 0, '6', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946786/cong-thuc-lam-nuoc-ep-tao-1_xawdip.jpg', '2024-10-31 17:00:00'),
('341', 'Bánh bao nhân thịt', 'Bánh bao hấp nóng với nhân thịt heo', 159, '20000', 398, 1, 'food', 0, '4', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741947023/d3a25abe57ebbdefdef129bf023a7479_l8p2ft.jpg', '2024-10-31 17:00:00'),
('35', 'Bánh croissant', 'Bánh croissant giòn xốp, thơm vị bơ', 15, '35000', 160, 1, 'cake', 0, '8', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946800/cach-lam-banh-sung-bo-banh-croissant-ngan-lop-thom-ngon-noi-tieng-cua-phap-202201171412571855_tnx2m5.jpg', '2024-10-31 17:00:00'),
('351', 'Bánh mì phô mai', 'Bánh mì mềm bơ tỏi phô mai', 12, '25000', 200, 1, 'food', 0, '6', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741947028/cach-lam-banh-mi-bo-toi-pho-mai_rnmwrp.webp', '2024-10-31 17:00:00'),
('36', 'Bánh gyoza', 'Bánh gyoza Nhật Bản với nhân thịt và rau', 5, '4000', 59971, 1, 'cake', 0, '30', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946805/gyoza-la-gi-cach-lam-ha-cao-gyoza-tai-nha-ngon-dung-dieu-202103091516069028_ywjku8.jpg', '2024-10-31 17:00:00'),
('366', 'Nước dừa', 'Nước dừa tươi mát, giải khát tự nhiên', 27, '12000', 800, 1, 'water', 0, '5', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741947033/coconut-water-1702813644-17188523903731938537363-1718945688621-17189456905841471885485-0-14-675-1094-crop-17189457129742067407943_j3iwtt.webp', '2024-10-31 17:00:00'),
('38', 'Nước dưa hấu ép', 'Nước dưa hấu tươi, thanh mát', 14, '15000', 300, 1, 'water', 0, '7', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946812/nuoc_ep_dua_hau_2_Cropped_ecf9a5caeb_wkfm2k.jpg', '2024-10-31 17:00:00'),
('39', 'Bánh flan', 'Bánh flan mềm mịn với caramel', 16, '30000', 110, 1, 'cake', 0, '9', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946817/bi-quyet-lam-banh-flan-bang-sua-dac-va-sua-tuoi-1_ejlnt8.webp', '2024-10-31 17:00:00'),
('4', 'Bánh taco', 'Taco thịt bò với rau và sốt cay', 10, '30000', 300, 1, 'cake', 0, '10', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946516/17-171188_steak-eze-steak-tacos-png_bbql1q.jpg', '2024-10-31 17:00:00'),
('40', 'Nước ép nho', 'Nước ép nho tươi giàu chất chống oxy hóa', 10, '20000', 250, 1, 'water', 0, '8', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741958986/b84909b1-966f-4c91-849f-864b728b12eb.png', '2024-10-31 17:00:00'),
('41', 'Bánh crepe sầu riêng', 'Bánh crepe mềm với nhân sầu riêng', 12, '70000', 150, 1, 'cake', 0, '10', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946831/banh-crepe-sau-rieng-ngon-tphcm-8_tkwe60.webp', '2024-10-31 17:00:00'),
('423', 'Bánh xèo', 'Bánh xèo giòn kèm rau sống và nước mắm', 150, '30000', 100, 1, 'food', 0, '15', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741947038/cach-lam-banh-xeo-mien-trung_yj92by.webp', '2024-10-31 17:00:00'),
('43', 'Bánh cheesecake', 'Bánh cheesecake phô mai với lớp đế giòn', 10, '70000', 100, 1, 'cake', 0, '12', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946858/cheesecake-oreo-1_atk2k5.webp', '2024-10-31 17:00:00'),
('46', 'Bánh pudding dâu tây', 'Pudding mềm với vị dâu tây ngọt ngào', 22, '50000', 140, 1, 'cake', 0, '10', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946835/cach-lam-pudding-bang-bot-pha-san-vi-trung-tra-xanh-e54-6469749_mlzdus.jpg', '2024-10-31 17:00:00'),
('47', 'Bánh mochi', 'Bánh mochi dẻo với nhân đậu đỏ', 30, '10000', 400, 1, 'cake', 0, '6', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946930/stock-photo-daifuku-is-a-rice-cake-stuffed-with-sweet-filling-like-red-bean-paste-2215265333_ktefhf.jpg', '2024-10-31 17:00:00'),
('48', 'Nước chanh Tươi Gừng', 'Nước chanh tự nhiên tươi mát', 198, '15000', 362, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946881/base64-1697954406768676599540_ivrkvp.png', '2024-10-31 17:00:00'),
('49', 'Bánh brownie', 'Bánh brownie sô-cô-la đậm đà', 25, '45000', 120, 1, 'cake', 0, '15', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946885/brownies-huong-vi-nong-nan-tang-nhung-tin-do-chocolate_w8vrfn.jpg', '2024-10-31 17:00:00'),
('5', 'Hotdog', 'Hotdog với xúc xích bò phomai', 25, '20000', 400, 1, 'cake', 0, '5', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946520/2-cong-thuc-lam-banh-hotdog-xuc-xich-hotdog-pho-mai-han-quoc-gay-nghien-14-760x367_nr1xpy.png', '2024-10-31 17:00:00'),
('51', 'Bánh tart chanh', 'Bánh tart với lớp nhân chanh chua ngọt', 16, '60000', 110, 1, 'cake', 0, '10', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946903/cach-lam-banh-tart-chanh-chua-chua-ngot-ngot-1-1628578677_d0vepu.jpg', '2024-10-31 17:00:00'),
('52', 'Bánh cupcake sô-cô-la', 'Cupcake với nhân sô-cô-la ngọt ngào', 20, '25000', 300, 1, 'cake', 0, '5', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946908/cach-lam-banh-cupcake-socola-3-e1660152413484_j4a972.jpg', '2024-10-31 17:00:00'),
('53', 'Nước ép cà rốt', 'Nước ép cà rốt tươi bổ dưỡng', 28, '20000', 600, 1, 'water', 0, '7', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946944/images879583_nuocepcarotvagung_shutterstock_371357236_GXFO_qxqd7l.jpg', '2024-10-31 17:00:00'),
('54', 'Bánh sừng bò', 'Bánh sừng bò giòn tan', 19, '30000', 250, 1, 'cake', 0, '6', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946949/photo-1551782450-a2132b4ba21d_rlirro.jpg', '2024-10-31 17:00:00'),
('6', 'Bánh sandwich gà', 'Sandwich với gà nướng và rau xanh', 18, '30000', 350, 1, 'cake', 0, '8', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946534/Chicken-curry_ulra8c.jpg', '2024-10-31 17:00:00'),
('672b67c9686eb', 'Bánh mỳ que', 'bánh mỳ dài như que', 10, '3000', 964, 1, 'cake', 0, '', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946488/banh-mi-que-da-nang-13_1628093657_rjdwoo.webp', '2024-11-06 06:57:45'),
('672b681200a16', 'Xôi mặn thơm ngon', 'Xôi mặn là món ăn sáng quen thuộc với nhiều gia đình bởi sự đơn giản trong cách nấu và hương vị thơm ngon nhưng vẫn đầy đủ chất dinh dưỡng của món ăn này.', 0, '30000', 9984, 1, 'food', 0, '', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946469/Thanh-pham-2-1-8330-1677040910_j7uwnx.jpg', '2024-11-06 06:58:58'),
('672b7e2f4e006', 'Nem nướng nha trang', 'Nem nướng là một trong những đặc sản ở miền Trung và miền Nam với nhiều tên gọi khác khác nhau như nem nướng cây sả, nem lụi.', 7, '30000', 988, 1, 'food', 0, '', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946458/nem-nuong-nha-trang-o-quan-1_edhqxc.webp', '2024-11-06 08:33:19'),
('672b7ea443358', 'Lạp xưởng nướng đá', 'Lạp xưởng là món ăn được nhiều người yêu thích đặc biệt là vào những ngày Tết cổ truyền. Với những lo ngại về vấn đề an toàn thực phẩm, cách làm lạp xưởng được hướng dẫn ngay dưới đây vừa đơn giản vừa thơm ngon, lại rất an toàn cho sức khỏe người dùng mà bạn có thể tham khảo để áp dụng.', 1, '15000', 995, 1, 'food', 0, '20', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946445/Thi%E1%BA%BFt_k%E1%BA%BF_ch%C6%B0a_c%C3%B3_t%C3%AAn_-_2024-12-10T154339.027_mhohkk.jpg', '2024-11-06 08:35:16'),
('672b804ce992a', 'Bánh tráng nướng', 'Bánh tráng nướng Đà Lạt - Món ăn ngon khó cưỡng nhất định phải thử', 2, '20000', 99, 1, 'food', 0, '10', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946436/cach-lam-banh-trang-nuong-bang-noi-chien-khong-dau-6_prqao8.jpg', '2024-11-06 08:42:20'),
('672eacec1a3eb', 'Bánh mỳ BigC', 'Được làm bởi các thợ làm bánh lành nghề', 89, '7000', 99, 1, 'cake', 0, '10', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946340/b35f8d738fc46ae092a7687aa81b8aba_ggn65o.png', '2024-11-08 18:29:32'),
('672ff52fb4364', 'bún đậu mắm tôm', 'bún đậu mắm tôm nhà trồng tự cấp', 127, '35000', 9984, 1, 'food', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946337/bun-dau-mam-tom_1_hbppiw.jpg', '2024-11-09 17:50:07'),
('67c23562d55e3', 'bánh tiramisu', 'Bánh tiramisu gồm các lớp bánh quy ladyfinger ngâm cà phê, xen kẽ kem mascarpone, rắc cacao hoặc sô-cô-la, mang hương vị ngọt ngào đan xen đắng nhẹ đầy hấp dẫn.', 0, '50000', 200, 1, 'cake', 0, '5', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946326/banhngon2-1471922491_d2320k.webp', '2025-02-28 22:14:58'),
('67c2361391d32', 'Trà Sữa Thái Xanh', 'Được pha từ trà xanh ướp hương kết hợp với sữa, tạo nên vị béo ngậy, thơm mát', 0, '25000', 500, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946314/trasuathaixanh2_6f5ace808a1041b39264c2b37f16453d_master_f3xi2r.webp', '2025-02-28 22:17:55'),
('67c236c4244a6', 'Trà sữa trân châu đường đen', 'Trà Sữa Trân Châu Đường Đen là sự kết hợp hoàn hảo giữa trà sữa béo ngậy và trân châu mềm dẻo nấu cùng đường đen thơm caramel', 0, '25000', 200, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946311/tra-sua-truyen-thong_txkbtu.jpg', '2025-02-28 22:20:52'),
('67c23736129c2', 'Trà sữa hoa đậu biếc', 'Trà Sữa Hoa Đậu Biếc là thức uống độc đáo với màu xanh tím tự nhiên từ hoa đậu biếc, kết hợp cùng vị béo ngậy của sữa và hương trà dịu nhẹ. Không chỉ đẹp mắt, trà còn mang lại cảm giác thanh mát và chứa nhiều lợi ích cho sức khỏe.', 0, '25000', 299, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946292/tra-sua-hoa-dau-biec-tu-mau-tu-nhien_vioczp.webp', '2025-02-28 22:22:46'),
('67c237a369000', 'Trà sữa việt quất', 'Trà Sữa Việt Quất là sự kết hợp hài hòa giữa hương trà thơm dịu, vị béo ngậy của sữa và vị chua ngọt đặc trưng của việt quất. Thức uống này không chỉ hấp dẫn bởi màu sắc đẹp mắt mà còn mang lại cảm giác tươi mát, sảng khoái khi thưởng thức.', 0, '25000', 400, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946290/tra-sua-viet-quat-mat-lanh_xgmwnq.webp', '2025-02-28 22:24:35'),
('67c238986ae46', 'Trà sữa dâu tây', 'Trà Sữa Dâu Tây có hương vị ngọt dịu, thơm béo từ sữa kết hợp với vị chua nhẹ của dâu tây, tạo nên thức uống tươi mát và hấp dẫn.', 0, '30000', 199, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946287/tra-sua-dau-thom-mat_jgiobq.webp', '2025-02-28 22:28:40'),
('67c2397134d3d', 'Trà sữa ô long', 'Trà Sữa Ô Long là sự kết hợp giữa vị trà ô long đậm đà, hậu ngọt cùng độ béo mịn của sữa, tạo nên thức uống thơm ngon, thanh tao và đầy cuốn hút.', 0, '25000', 499, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946275/cach-lam-tra-sua-thach-tran-chau-img_62b97b7af3029_chjary.jpg', '2025-02-28 22:32:17'),
('67c23a79d466d', 'Trà sữa ca cao', 'Trà Sữa Cacao là sự hòa quyện giữa vị đắng nhẹ của cacao và độ béo ngậy của sữa, tạo nên thức uống thơm ngon, đậm đà và đầy lôi cuốn.', 0, '30000', 500, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946263/tra-sua-socola-chuoi_hs7tgd.jpg', '2025-02-28 22:36:41'),
('67c23b3960eea', 'Trà vải thiều', 'Trà Vải là sự kết hợp tinh tế giữa hương trà thanh mát và vị ngọt dịu, mọng nước của vải, tạo nên thức uống thơm ngon, sảng khoái và đầy cuốn hút.', 0, '30000', 199, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946220/cach-lam-tra-vai-thom-ngon-giai-nhiet-mua-he-4_aajcxh.webp', '2025-02-28 22:39:53'),
('67c23baa089aa', 'Trà vải lài', 'Trà Vải Lài là sự hòa quyện giữa hương thơm thanh khiết của hoa lài và vị ngọt dịu, tươi mát của vải, mang đến thức uống nhẹ nhàng, thơm ngon và sảng khoái.', 0, '33000', 299, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946254/PHONG-LAN-scaled-1_xtkqeq.jpg', '2025-02-28 22:41:46'),
('67c23c6c71d07', 'Trà chanh giải nhiệt', 'Trà Chanh là thức uống thanh mát, kết hợp giữa vị chua nhẹ của chanh và hương trà thơm dịu, mang đến cảm giác sảng khoái và giải nhiệt hiệu quả.', 0, '15000', 500, 1, 'water', 0, '', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946217/main-header_pzufth.avif', '2025-02-28 22:45:00'),
('67c23d53cfbec', 'Trà sữa chân trâu đường đen', 'Trà Sữa Thạch Trân Châu là sự kết hợp hoàn hảo giữa trà sữa béo ngậy, trân châu dẻo dai và thạch giòn mát, mang đến hương vị thơm ngon và trải nghiệm nhai thú vị.', 0, '25000', 150, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946205/f059be41-fccb-444f-9569-726267849554.png', '2025-02-28 22:48:51'),
('67c23e746906e', 'Trà sữa dừa', 'Trà Sữa Dừa là sự kết hợp độc đáo giữa hương trà thơm dịu và vị béo ngậy của dừa, tạo nên thức uống ngọt thanh, mát lành và đầy hấp dẫn.', 0, '25000', 189, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946133/8.18a-min_xktqav.jpg', '2025-02-28 22:53:40'),
('67c24920d57c1', 'Bánh cupcake đỏ', 'Red Velvet Cupcake – Bánh cupcake đỏ mềm mịn, phủ kem phô mai béo ngậy và trang trí với dâu tây tươi.', 0, '25000', 100, 1, 'cake', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946114/cac-loai-banh-ngot-duoc-yeu-thich-nhat-tai-viet-nam-202103090933169585_hhyrlk.jpg', '2025-02-28 23:39:12'),
('67c249e110b2c', 'Bánh Ngọt', 'Bánh ngọt Ý nổi tiếng, làm từ bánh quy ladyfinger, phô mai mascarpone, cà phê và cacao.', 0, '40000', 50, 1, 'cake', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946112/cac-loai-banh-ngot-ngon-nhat-the-gioi-959-1_r4ntk6.jpg', '2025-02-28 23:42:25'),
('67c24a370313f', 'Bánh bông lan trà xanh', 'Bánh bông lan trà xanh – Bánh mềm xốp, có hương vị trà xanh thanh mát, phủ kem tươi và trang trí trái cây.', 0, '20000', 99, 1, 'cake', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946100/DELI-Banh-Kem-Dua-La-Dua-002-scaled_q2hwdq.jpg', '2025-02-28 23:43:51'),
('67c30898b1217', 'Bánh mì nướng mật ong', '🔥 Bánh mì nướng mật ong – giòn rụm, thơm lừng, ngọt dịu tự nhiên! Đặt ngay để thưởng thức! 🍯🥖', 0, '10000', 300, 1, 'cake', 0, '20', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946098/banh-mi-mat-ong-1_qybdyy.png', '2025-03-01 13:16:08'),
('67c49843d7631', 'Bánh Da Lợn', 'một loại bánh truyền thống Việt Nam có vị ngọt, mềm dẻo với hương thơm của lá dứa và nước cốt dừa. Đặc biệt thích hợp làm quà hoặc ăn vặt! 🍀✨', 0, '70000', 500, 1, 'cake', 0, '', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946075/3bc170aa44fb889e1c6bf9f773543f3f-15476934637861645109945_qs6pyy.webp', '2025-03-02 17:41:23'),
('67c498daefeb8', 'Bánh Trôi Nước', 'Bánh trôi nước – món bánh dân dã với vỏ nếp dẻo thơm, nhân đậu xanh hoặc mè đen ngọt bùi, chan với nước đường gừng ấm nóng. 🏮✨', 0, '20000', 200, 1, 'cake', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946073/t.h.i.e.n.g.a-cach-lam-bnh-troi-nuoc_rcuisj.jpg', '2025-03-02 17:43:54'),
('67c49958af7dd', 'Bánh Bột Lọc', 'Bánh bột lọc – món bánh Huế dẻo dai, trong suốt với nhân tôm thịt đậm đà, chấm nước mắm cay ngon khó cưỡng! 🦐🔥', 0, '30000', 500, 1, 'cake', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946071/banh_bot_loc_hue_rhmsys.jpg', '2025-03-02 17:46:00'),
('67c49ad23a9ba', 'Bánh dorayaki', 'một loại bánh ngọt truyền thống của Nhật Bản. Bánh gồm hai lớp bông lan mềm mịn, kẹp nhân đậu đỏ ngọt bùi, đôi khi có nhân sô-cô-la, trà xanh hoặc kem', 0, '30000', 500, 1, 'cake', 0, '5', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946063/banh_ran_doremon_khong_dau_mo_it_ngot_de_an_lqydf7.jpg', '2025-03-02 17:52:18'),
('67cb292d010d1', 'Cơm nắm', 'Onigiri – món cơm nắm Nhật Bản thơm ngon, tiện lợi, thường được bọc rong biển và có nhiều loại nhân hấp dẫn như cá hồi, mơ muối, rong biển. 🍙', 0, '20000', 200, 1, 'food', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741958787/eebe1dd5-bb6e-4b50-b8f8-b07066601c89.png', '2025-03-07 17:13:17'),
('67cb2b267456a', 'Trà Sữa Khoai Môn', 'Trà sữa khoai môn là sự kết hợp thơm béo giữa trà, sữa và khoai môn xay nhuyễn, tạo nên hương vị ngọt dịu, béo bùi cùng màu tím hấp dẫn.', 0, '25000', 300, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741958712/79d2571b-dc29-496d-a1c5-4dbe7d1c77be.png', '2025-03-07 17:21:42'),
('67cb2c3687887', 'Cơm Tấm Sườn Nướng', 'Cơm tấm sườn nướng là món ăn đặc trưng của Việt Nam, gồm cơm tấm dẻo thơm ăn kèm sườn nướng vàng óng, nước mắm chua ngọt, dưa chua và canh nóng, tạo nên hương vị hài hòa đậm đà.', 0, '45000', 100, 1, 'food', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741959310/1adba9b4-8153-40b2-9e26-0806ffb3c9eb.png', '2025-03-07 17:26:14'),
('67cb2d065f101', 'Cơm Tấm Sườn Bì Chả', 'Cơm tấm sườn bì chả là một món ăn đặc trưng của ẩm thực miền Nam Việt Nam, đặc biệt phổ biến tại Sài Gòn.', 0, '45000', 100, 1, 'food', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946050/7Honthinthnhphm1-1709800144-8583-1709800424_bza6pm.jpg', '2025-03-07 17:29:42'),
('67cc087c56b14', 'Cơm Niêu', 'Món ăn gồm cơm chiên vàng, thịt ba chỉ kho cháy cạnh, ăn kèm rau thơm, dưa leo và cà chua, giá khoảng', 0, '50000', 100, 1, 'food', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946036/image_nc98tx.webp', '2025-03-08 09:06:04'),
('67cc092ea1c93', 'Bún Bò Trộn', 'Bún bò trộn là món ăn gồm bún tươi, thịt bò xào mềm, rau sống, đậu phộng, hành phi và nước mắm chua ngọt trộn đều.', 0, '45000', 100, 1, 'food', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946028/mon-bun-tron-thit-bo_chwfwm.png', '2025-03-08 09:09:02'),
('67cc0a08e493e', 'Bún Gà', 'Bún gà là món ăn với bún tươi, thịt gà mềm, nước dùng thanh ngọt, ăn kèm rau sống và nước mắm chua cay.', 0, '40000', 200, 1, 'food', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946016/Bc7Thnhphm1-1726475677-7141-1726475875_btunue_mjikdo.jpg', '2025-03-08 09:12:40'),
('67cc0b383bc61', 'Cơm Chiên Tôm', 'Đây là món cơm chiên tôm với hạt cơm vàng giòn, tôm chiên thơm ngon, rau củ và hành lá, thường ăn kèm chanh hoặc ớt để tăng hương vị. Bạn cần thông tin gì thêm không? 😊', 0, '45000', 198, 1, 'food', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741945978/0400283070002-4.jpg_zt4a6w.webp', '2025-03-08 09:17:44'),
('67cc0c1f6e3b3', 'Bún Chả Chấm', 'Bún chả chấm gồm bún tươi, chả nướng than, nước mắm chua ngọt, ăn kèm rau sống.', 1, '35000', 349, 1, 'food', 0, '', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741945969/bun-cha-ha-noi-01_k7gah1.jpg', '2025-03-08 09:21:35'),
('67cc0ca83c75e', 'Nước Ép Dâu Tây', '**Nước ép dâu tây** có vị chua ngọt, giàu vitamin, giúp giải khát và làm đẹp da.', 0, '30000', 99, 1, 'water', 0, '', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741945952/dau-tay_betatf.png', '2025-03-08 09:23:52'),
('67cc0e2436120', 'Nước Ép Ổi Đỏ', 'Nước ép ổi thanh mát, giàu vitamin C, giúp tăng đề kháng và đẹp da.', 0, '30000', 100, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741945943/13-tac-dung-cua-nuoc-ep-oi-doi-voi-suc-khoe-ban-nen-biet-2-800x450_i6k1ms.jpg', '2025-03-08 09:30:12'),
('67cc115d0fc05', 'Nước Ép Ổi Xanh', '**Nước ép ổi xanh** có vị chua nhẹ, giàu vitamin C, giúp thanh lọc cơ thể và đẹp da.', 0, '30000', 100, 1, 'water', 0, '2', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741945933/ep-oi-16242507673521784335867_zndjsd.jpg', '2025-03-08 09:43:57'),
('7', 'Sushi cuộn', 'Sushi cuộn với cá hồi và rau', 12, '40000', 250, 1, 'food', 0, '12', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946538/cach-lam-com-cuon-ngon-1_rpvxb6.png', '2024-10-31 17:00:00'),
('8', 'Mì xào', 'Mì xào với tôm, rau củ và sốt đặc biệt', 22, '30000', 450, 1, 'food', 0, '7', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741959523/340d40d4-1b3c-442e-a736-af0bbc48607f.png', '2024-10-31 17:00:00'),
('9', 'Bánh bao chiên', 'Bánh bao chiên nhân thịt ,trứng', 17, '15000', 600, 1, 'food', 0, '6', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946556/maxresdefault_myd9wn.jpg', '2024-10-31 17:00:00'),
('P002', 'Chicken Wings', 'Crispy fried chicken wings with spicy sauce.', 0, '120000', 196, 1, 'food', 0, '15', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946405/Vietnamese-fish-sauce-wings-VyTran-2_rhtqcf.jpg', '2024-11-08 06:54:05'),
('P003', 'Pizza Margherita', 'Traditional Italian pizza with mozzarella cheese and fresh basil.', 5, '250000', 32, 1, 'food', 0, '', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946416/margherita-pizza-with-slices-lemon-wooden-tray_974629-105965_hxm5yy.avif', '2024-11-08 06:54:05'),
('P005', 'Vegan Salad', 'A fresh and healthy salad with mixed greens, avocado, and nuts.', 2, '45000', 99, 1, 'food', 0, '20', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946425/italian-chopped-salad-recipe-2_qqh8bp.jpg', '2024-11-08 06:54:05'),
('P016', 'Chocolate Cake', 'Delicious chocolate cake with rich chocolate frosting.', 4, '50000', 99, 1, 'cake', 0, '10', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946356/brownie-kem-chocolate-sieu-ngon-600x400_htylpu.webp', '2024-11-08 06:58:59'),
('P017', 'Cheesecake', 'Classic cheesecake with a creamy texture and graham cracker crust.', 13, '15000', 90, 1, 'cake', 0, '', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946359/istockphoto-899577720-170667a_jwgvjy.jpg', '2024-11-08 06:58:59'),
('P018', 'Carrot Cake', 'Moist carrot cake with cream cheese frosting and walnuts.', 16, '20000', 77, 1, 'cake', 0, '20', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946379/Homemade-Carrot-Cake-Recipe-Video_tgslcy.jpg', '2024-11-08 06:58:59'),
('P023', 'Beef Tacos', 'Mexican-style tacos with seasoned beef, lettuce, and cheese.', 0, '30000', 74, 1, 'food', 0, '', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946382/tacos-la-gi_bhhhyp.webp', '2024-11-08 06:58:59'),
('P024', 'Sushi Platter', 'Assorted sushi with fresh fish, rice, and vegetables.', 2, '220000', 19, 1, 'food', 0, '20', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946385/Sushi-va-Sashimi-1_ghvxko.jpg', '2024-11-08 06:58:59'),
('P025', 'Apple Pie', 'Traditional apple pie with a flaky crust and sweet apple filling.', 8, '75000', 55, 1, 'cake', 0, '', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741946402/banh-tao-nuong_utge8n.webp', '2024-11-08 06:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `order_id` varchar(64) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(744, '67bf9078', 'P005', 1, '100000'),
(745, '67bf90c8', 'P005', 1, '100000'),
(746, '67bf90c8', 'P025', 1, '110000'),
(747, '67c4a970', '672b7ea443358', 1, '15000'),
(748, '67cd89e1', '67cc0c1f6e3b3', 1, '35000'),
(750, '67d42584', '48', 138, '15000'),
(751, '67d4261a', '341', 100, '20000'),
(752, '67d42675', '10', 104, '50000'),
(753, '67d426ca', '423', 100, '30000'),
(754, '67d42709', '2', 102, '20000');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `discount_percent` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `min_order_value` decimal(15,0) DEFAULT NULL,
  `max_discount` decimal(15,0) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `product_id` varchar(225) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `image_1` text NOT NULL,
  `image_2` text NOT NULL,
  `image_3` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `rating`, `comment`, `image_1`, `image_2`, `image_3`, `created_at`) VALUES
(152, '67bf8ed504213', 'P005', 5, 'ngon quá', 'https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Kale-salad-1b22634.jpg?quality=90&resize=556,505', 'https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Kale-salad-1b22634.jpg?quality=90&resize=556,505', 'https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Kale-salad-1b22634.jpg?quality=90&resize=556,505', '2025-02-26 22:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `platform`, `icon`, `url`) VALUES
(1, '', 'FaFacebookF', 'https://www.facebook.com/share/15xTP5mGwh/?mibextid=wwXIfr'),
(2, '', 'FaInstagram', 'https://www.instagram.com/'),
(3, '', 'RiTwitterXLine', 'https://x.com/');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(64) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `api_key` varchar(64) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` tinyint(1) DEFAULT NULL,
  `avata` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `api_key`, `created_at`, `role`, `avata`) VALUES
('67bf8ed504213', 'Nguyễn Thị Ánh', '20210487@eaut.edu.vn', '20210487@eaut.edu.vn', '27e50f2cb290cdcd613f71606a321a40aada160299ef9c9581278ab63b179f79', '2025-02-26 21:59:49', 1, 'https://tse4.mm.bing.net/th?id=OIP.Zmki3GIiRk-XKTzRRlxn4QHaER&pid=Api&P=0&h=220'),
('67d419ab7f4a4', 'thuan@gmail.com', 'thuan@gmail.com', 'thuan@gmail.com', '13ea1d9cd5d201f6d66857bcd319b68c1f49f54674c68980623930837fa80006', '2025-03-14 11:57:31', 1, 'https://tse4.mm.bing.net/th?id=OIP.Zmki3GIiRk-XKTzRRlxn4QHaER&pid=Api&P=0&h=220'),
('67d41c8166517', 'Trang Ánh', 'anhbui@gmail.com', 'anhbui@gmail.com', 'f83b2cce3f6264b922ed663fc447e2ce93262f00488158d0e1ad59edb5108083', '2025-03-14 12:09:37', 1, 'https://tse4.mm.bing.net/th?id=OIP.Zmki3GIiRk-XKTzRRlxn4QHaER&pid=Api&P=0&h=220'),
('67d41ca27a411', 'Đắc Huy', 'dachuy@gmail.com', 'dachuy@gmail.com', '1dc2f2f6d92bb0be5a20417b367ffd14f892876b76aa97bde7d50f6129da4e92', '2025-03-14 12:10:10', 1, 'https://tse4.mm.bing.net/th?id=OIP.Zmki3GIiRk-XKTzRRlxn4QHaER&pid=Api&P=0&h=220'),
('67d41cb4c3181', 'Vũ Huy', 'vuhuy@gmail.com', 'vuhuy@gmail.com', '91939d9767f32dfbf630ca833fe74e5ffaeb206141aea1cef60637d74f146ec4', '2025-03-14 12:10:28', 1, 'https://tse4.mm.bing.net/th?id=OIP.Zmki3GIiRk-XKTzRRlxn4QHaER&pid=Api&P=0&h=220'),
('67d41cccc9a62', 'Thành Nam', 'nam03@gmail.com', 'nam03@gmail.com', '45ca4e71a6274d51fe97852db04ff3871b941acab80bed510498633c87547e10', '2025-03-14 12:10:52', 1, 'https://tse4.mm.bing.net/th?id=OIP.Zmki3GIiRk-XKTzRRlxn4QHaER&pid=Api&P=0&h=220'),
('67d41d1b96ccd', 'Tiến Anh', 'anhlt@gmail.com', 'anhlt@gmail.com', '1aa066cf6b6453864549e8e4e83f9281c935504bf7bc0c5d65a49cd37b49a7b1', '2025-03-14 12:12:11', 1, 'https://tse4.mm.bing.net/th?id=OIP.Zmki3GIiRk-XKTzRRlxn4QHaER&pid=Api&P=0&h=220'),
('67d41d5010c4f', 'Nguyễn Thương', 'thuongnt@gmail.com', 'thuongnt@gmail.com', 'eb2eca61f876f782efc977ed08b37a30b1fab0645372a1ffeaa45860c8c50ba3', '2025-03-14 12:13:04', 1, 'https://tse4.mm.bing.net/th?id=OIP.Zmki3GIiRk-XKTzRRlxn4QHaER&pid=Api&P=0&h=220');

-- --------------------------------------------------------

--
-- Table structure for table `website_info`
--

CREATE TABLE `website_info` (
  `id` int(11) NOT NULL,
  `site_name` varchar(100) DEFAULT NULL,
  `logo_url` text DEFAULT NULL,
  `site_slogan` text DEFAULT NULL,
  `opening_hours` varchar(100) DEFAULT NULL,
  `search_placeholder` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `website_info`
--

INSERT INTO `website_info` (`id`, `site_name`, `logo_url`, `site_slogan`, `opening_hours`, `search_placeholder`) VALUES
(1, 'CHEFGOFOOD', 'https://res.cloudinary.com/dsm2g8fub/image/upload/v1741958363/b0a4f324-6ab8-45b3-916c-3385c12e3527.png', '\"Đặt Món Ngon, Giao Nhanh Tận Nơi, Thưởng Thức Mọi Lúc\"', '6:00 A.M - 12:00 P.M', 'Tìm kiếm món ăn bạn muốn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `body_review`
--
ALTER TABLE `body_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_address`
--
ALTER TABLE `detail_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_history`
--
ALTER TABLE `discount_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `discount_user`
--
ALTER TABLE `discount_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_favorite` (`user_id`,`product_id`),
  ADD KEY `idx_user_favorites` (`user_id`),
  ADD KEY `idx_product_favorites` (`product_id`);

--
-- Indexes for table `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `head_review`
--
ALTER TABLE `head_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `nav_menu`
--
ALTER TABLE `nav_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_section`
--
ALTER TABLE `newsletter_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `order_process`
--
ALTER TABLE `order_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_info`
--
ALTER TABLE `website_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `body_review`
--
ALTER TABLE `body_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=631;

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `detail_address`
--
ALTER TABLE `detail_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `discount_history`
--
ALTER TABLE `discount_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `discount_user`
--
ALTER TABLE `discount_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `head_review`
--
ALTER TABLE `head_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `nav_menu`
--
ALTER TABLE `nav_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `newsletter_section`
--
ALTER TABLE `newsletter_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_process`
--
ALTER TABLE `order_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=755;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `website_info`
--
ALTER TABLE `website_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `detail_address`
--
ALTER TABLE `detail_address`
  ADD CONSTRAINT `detail_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `discount_history`
--
ALTER TABLE `discount_history`
  ADD CONSTRAINT `discount_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `discount_user`
--
ALTER TABLE `discount_user`
  ADD CONSTRAINT `discount_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`address_id`) REFERENCES `detail_address` (`id`);

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `product_order_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_order_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
