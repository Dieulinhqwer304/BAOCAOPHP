-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2025 at 11:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larave`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `id_ctdonhang` int(10) UNSIGNED NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `soluong` tinyint(4) DEFAULT NULL,
  `giamgia` int(11) DEFAULT NULL,
  `giatien` int(11) DEFAULT NULL,
  `giakhuyenmai` int(11) DEFAULT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_dathang` int(10) UNSIGNED NOT NULL,
  `id_kh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`id_ctdonhang`, `tensp`, `soluong`, `giamgia`, `giatien`, `giakhuyenmai`, `id_sanpham`, `id_dathang`, `id_kh`) VALUES
(44, 'Túi Chanel 11.12', 1, 2, 273540000, 268069200, 29, 52, 6);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `sanpham_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Đây là bình luận thử nghiệm bằng tinker', '2025-05-25 01:47:00', '2025-05-25 01:47:00'),
(2, 1, 1, 'Test bình luận', '2025-05-25 01:48:18', '2025-05-25 01:48:18'),
(6, 5, 14, 'ka', '2025-05-25 02:18:39', '2025-05-25 02:18:39'),
(7, 5, 14, 'la', '2025-05-25 02:48:52', '2025-05-25 02:48:52'),
(9, 5, 30, 'hêlo', '2025-05-25 02:58:15', '2025-05-25 02:58:15'),
(10, 5, 30, 'bùi', '2025-05-25 02:58:24', '2025-05-25 02:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `ten_danhmuc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `ten_danhmuc`) VALUES
(9, 'Gucci'),
(10, 'Christian Dior'),
(11, 'Hermes'),
(12, 'Chanel');

-- --------------------------------------------------------

--
-- Table structure for table `dathang`
--

CREATE TABLE `dathang` (
  `id_dathang` int(10) UNSIGNED NOT NULL,
  `ngaydathang` datetime DEFAULT current_timestamp(),
  `ngaygiaohang` datetime DEFAULT current_timestamp(),
  `tongtien` int(11) NOT NULL,
  `phuongthucthanhtoan` varchar(10) NOT NULL,
  `diachigiaohang` varchar(100) DEFAULT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL,
  `trangthai` varchar(100) DEFAULT NULL,
  `id_kh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dathang`
--

INSERT INTO `dathang` (`id_dathang`, `ngaydathang`, `ngaygiaohang`, `tongtien`, `phuongthucthanhtoan`, `diachigiaohang`, `hoten`, `email`, `sdt`, `trangthai`, `id_kh`) VALUES
(51, '2025-06-05 03:58:49', '2025-06-08 20:58:49', 0, 'COD', 'Phùng Khoang', 'Lê Thạc Thao', 'thaolethac2121@gmail.com', 396865496, 'đang xử lý', 6),
(52, '2025-06-05 04:01:24', '2025-06-08 21:01:24', 268069200, 'COD', 'Phùng Khoang', 'Lê Thạc Thao', 'thaolethac2121@gmail.com', 396865496, 'đang xử lý', 6);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id_kh` int(11) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL,
  `id_phanquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id_kh`, `hoten`, `email`, `password`, `diachi`, `sdt`, `id_phanquyen`) VALUES
(1, 'teo', 'teo@gmail.com', '$2y$12$o42vmZrn2TzpqtP0NJ/VyOd0qgv2coPm76eyZ/ZNwUgBHNUUW6H2y', 'Đống Đa, Hà nội', 379487241, 2),
(2, 'admin', 'admin@gmail.com', '$2y$12$/NpqKoSr.zwBa83nJfw8KuHTYjVmH51H/boJ.CxtIR8Sn/tTVg.NS', 'Đống Đa, Hà nội', 379487352, 1),
(3, 'demotk', 'demotk@gmail.com', '$2y$12$z66Zyr0M/Ag7j6iQZvwjjuuqL4yQP/k68uo3Cmq0kxKghvuQFzjpK', 'demotk', 364877529, 2),
(4, 'dieulinh', 'dlinh30042004@gmail.com', '$2y$12$/NpqKoSr.zwBa83nJfw8KuHTYjVmH51H/boJ.CxtIR8Sn/tTVg.NS', '102aaaa', 359723803, 1),
(5, 'hoà nguyễn', 'hoacutehd2003@gmail.com', '$2y$12$ebsDSfsT/w/yLAyfHmqkr.m8TuEhy4CY4VhCqaibCspDj742B4sx2', 'Chùa Bộc', 364273858, 2),
(6, 'Lê Thạc Thao', 'thaolethac2121@gmail.com', '$2y$12$Q.gghgbTL77OnsyKq.gPRuJ7BGsyypKo8c/PLHpwFhCWOd6MDd.m2', 'Phùng Khoang', 396865496, 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_04_21_090007_create_chitiet_donhang_table', 1),
(3, '2024_04_21_090007_create_danhmuc_table', 1),
(4, '2024_04_21_090007_create_dathang_table', 1),
(5, '2024_04_21_090007_create_phanquyen_table', 1),
(6, '2024_04_21_090007_create_sanpham_table', 1),
(7, '2024_04_21_090010_add_foreign_keys_to_sanpham_table', 1),
(8, '2024_04_21_092420_add_foreign_key_to_chitiet_donhang_table', 1),
(9, '2024_04_22_080854_create_khachhang_table', 1),
(10, '2024_04_22_080855_add_foreign_keys_to_khachhang_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `id_phanquyen` int(11) NOT NULL,
  `tenquyen` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`id_phanquyen`, `tenquyen`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensp` varchar(100) DEFAULT NULL,
  `anhsp` varchar(255) DEFAULT NULL,
  `giasp` int(11) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `giamgia` int(11) DEFAULT NULL,
  `giakhuyenmai` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sanpham`, `tensp`, `anhsp`, `giasp`, `mota`, `giamgia`, `giakhuyenmai`, `soluong`, `id_danhmuc`) VALUES
(1, 'Túi mini GG Marmont', 'frontend/upload/CSbNOaunklf0NDNNJH1eQ9RILe9B647zRPYOn4BL.jpg', 31250000, '•	Có hình trái tim, chiếc túi mini GG Marmont có hình bóng vui tươi bằng da Gucci Rosso Ancora đỏ matelassé chevron mềm mại. Thiết kế nhỏ gọn được hoàn thiện bằng phần cứng Double G đặc trưng với tông màu vàng nhạt.\r\n•	Da Gucci Rosso Ancora đỏ matelassé chevron\r\n•	Phần cứng tông màu vàng nhạt\r\n•	Lớp lót taffeta đỏ\r\n•	Double G\r\n•	Bên trong: 1 khe cắm thẻ\r\n•	Tay cầm có độ dài 3,1\"\r\n•	Dây đeo vai có thể tháo rời và điều chỉnh được với độ dài 18,9\"\r\n•	Khóa kéo\r\n•	Trọng lượng: Khoảng 0,36lbs\r\n•	W5,3\" x H4,5\" x D1\"\r\n•	Sản xuất tại Ý\r\n•	Phù hợp với Airpods và son môi', 2, 30625000, 10, 9),
(2, 'Túi Gucci Bamboo Diva', 'frontend/upload/95kNC4QMu8fgh4Az8ftrikVbxs1StfX9FjUNg3Ui.jpg', 130000000, 'Trong bộ sưu tập Xuân Hè 2025, chiếc túi xách quai xách nhỏ này tái hiện phần cứng tre đặc trưng với các chi tiết bằng đồng thau và men. Gucci Bamboo Diva là điểm nhấn cho mọi phong cách.\r\n• Da bóng màu xanh lá cây rừng\r\n• Phần cứng hình tre tráng men với chi tiết bằng đồng thau\r\n• Cấu trúc 3 miếng ghép\r\n• Lớp lót bằng da màu xanh lá cây rừng\r\n• Bên trong: 1 túi có khóa kéo, gương và túi có thể tháo rời\r\n• Tay cầm dài 4\"\r\n• Dây đeo bằng da có thể tháo rời và điều chỉnh với độ dài 19,7\"; Chiều dài: 39\"-45,7\"\r\n• Khóa hình tre\r\n• 10,5\"W x 5,1\"H x 3,1\"D\r\n• Trọng lượng: xấp xỉ 0,9kg\r\n• Sản xuất tại Ý\r\n• Phù hợp với iPhone Pro Max/Plus, Airpods, ví dài và son môi', 5, 123500000, 10, 9),
(3, 'Túi mini Gucci Bamboo Diva', 'frontend/upload/iYz8TkTBrtkLDfsSCTax6JP4gQqBsqN1wfffJ3i1.jpg', 130000000, 'Trong bộ sưu tập Xuân Hè 2025, Gucci Bamboo 1947 giới thiệu các chi tiết tông màu với quai xách và khóa bằng da hình tre. Kiểu dáng này cũng có thể đeo chéo hoặc đeo qua vai.\r\n• Gucci Rosso Ancora da mềm màu đỏ\r\n• Phần cứng tông vàng nhạt\r\n• Cấu trúc 3 miếng ghép\r\n• Lớp lót bằng da đỏ Gucci Rosso Ancora\r\n• Bên trong: 1 túi có khóa kéo, gương và túi có thể tháo rời\r\n• Tay xách bằng da hình tre có độ dài 4,3\"\r\n• Dây đeo bằng da có thể tháo rời và điều chỉnh: Độ dài 21,7\"; chiều dài: 39\" - 43,7\"\r\n• Khóa xách hình tre\r\n• 8,3\"W x 5,9\"H x 2,8\"D\r\n• Trọng lượng: xấp xỉ 1,8lbs\r\n• Sản xuất tại Ý\r\n• Phù hợp với iPhone Pro Max/Plus, Airpods, ví dài và son môi', 5, 123500000, 11, 9),
(4, 'Túi Tote GG Emblem', 'frontend/upload/uNJERAtoXUfztG3m7MNZwBMxbZb8fB7DDzAqAA8r.jpg', 57250000, 'Bộ sưu tập GG Emblem tái hiện lịch sử thanh lịch và thủ công của Nhà. Chiếc túi tote này có các khía đánh số trên quai xách có thể điều chỉnh, lấy cảm hứng từ thế giới cưỡi ngựa.\r\n• Vải phủ GG Monogram mới màu be và nâu sẫm\r\n• Viền da màu xanh nhạt với đường khâu tương phản\r\n• Phần cứng tông vàng nhạt\r\n• Lớp lót bằng vải cotton Web màu xanh lá cây và đỏ\r\n• Mặt dây chuyền túi được hiển thị được bán riêng và không bao gồm trong túi xách.\r\n• Khoen chữ D bổ sung cho các vật dụng có thể tháo rời\r\n• Các khía đánh số trên quai xách có thể điều chỉnh; độ dài: 8,5\" - 12,4\"\r\n• Bên trong: 2 ngăn và 1 ngăn khóa kéo ở giữa\r\n• Khóa bấm từ tính\r\n• Rộng 15\" x Cao 9,8\" x Sâu 5,9\"\r\n• Trọng lượng: 0,5 kg\r\n• Sản xuất tại Ý\r\n• Phù hợp với iPhone Pro Max/Plus, Airpods, ví dài và son môi', 2, 56105000, 15, 9),
(5, 'Túi GG Marmont medium shoulder', 'frontend/upload/rLbIoZpjpWDOHYzaLnyltTmOsREart2ZA5XdPyRr.jpg', 71250000, 'GG Marmont, bộ sưu tập đặc trưng của Nhà mốt, có phần cứng Double G, dây đeo xích nhiều mặt và kết cấu mềm mại bằng da cực kỳ dẻo dai. Túi sau bóng bẩy mang đến nét chức năng cho kích thước trung bình và lớn.\r\n• Da cừu hình chữ V matelassé màu trắng\r\n• Phần cứng tông vàng nhạt\r\n• Lớp lót viscose đỏ Gucci Rosso Ancora\r\n• Double G\r\n• Bên trong: 1 túi khóa kéo\r\n• Bên ngoài: 1 túi mở\r\n• Dây xích trượt có thể đeo như dây đeo vai với độ dài 22\"\r\n• Vạt có khóa lò xo\r\n• 10,2\" x 5,9\" x 2,8\"\r\n• Trọng lượng: Khoảng 0,6kg\r\n• Sản xuất tại Ý\r\n• Phù hợp với iPhone Pro Max/Plus, Airpods, ví dài và son môi', 5, 67687500, 10, 9),
(6, 'Túi Woven mini bucket', 'frontend/upload/vn9TMmXqBX8CM5hkG29ca9fvy9kYYjs8YTSDiVQw.jpg', 57500000, 'Túi được làm nổi bật với chi tiết raffia độc đáo và viền da mịn, gợi nhớ đến phong cách thời tiết ấm áp. Chiếc túi bucket mini này được chế tác từ vải viscose mô phỏng hiệu ứng raffia tự nhiên và được hoàn thiện với miếng da trang trí biểu tượng Double G ở mặt trước.\r\n• Chất liệu viscose mô phỏng raffia tự nhiên\r\n• Viền da màu nâu\r\n• Phụ kiện kim loại màu vàng nhạt\r\n• Lót bằng vải lanh cotton màu nâu\r\n• Miếng da biểu tượng Double G\r\n• Dây đeo dạng dây thừng có thể đeo vai (dài 12.6\") hoặc xách tay (dài 6.7\")\r\n• Kích thước: Rộng 7.1\" x Cao 6.9\" x Sâu 5.5\"\r\n• Trọng lượng: khoảng 0.77 lbs (~ 350g)\r\n• Sản xuất tại Ý\r\n• Đựng vừa iPhone Plus, AirPods, ví và son môi', 2, 56350000, 9, 9),
(7, 'Túi GG Emblem medium bucket', 'frontend/upload/8f0VoPTzETFmoKn1ku2ZT02IIsNVXlZ3CDB36tkK.jpg', 72500000, 'Bộ sưu tập GG Emblem mới tái hiện lại nét thanh lịch và sự tinh xảo trong di sản chế tác của thương hiệu. Chiếc túi bucket này nổi bật với thiết kế tiện dụng gồm hai ngăn chính lót vải cotton Web và một ngăn kéo khóa ở giữa.\r\nThông tin chi tiết:\r\n• Vải canvas phủ lớp chống thấm GG Monogram mới màu be và nâu đậm\r\n• Viền da màu nâu với đường chỉ may tương phản\r\n• Lớp lót bên trong bằng vải cotton Web màu xanh lá và đỏ\r\n• Móc trang trí túi trong hình được bán riêng và không đi kèm với túi\r\n• Bên trong: 2 ngăn chính và 1 ngăn có khóa kéo ở giữa\r\n• Chiều dài tay cầm: 7 inch \r\n• Dây đeo da có thể điều chỉnh: độ dài từ 21.2\" – 23.6\", chiều dài tổng: 41.3\" – 42.5\" \r\n• Trọng lượng: khoảng 0.68 kg\r\n• Kích thước: Rộng 9.8\" x Cao 9.8\" x Sâu 5.9\"\r\n• Sản xuất tại Ý\r\n• Đựng vừa iPhone Pro Max/Plus, AirPods, ví dài và son môi', 2, 71050000, 10, 9),
(8, 'Túi Gucci Softbit maxi shoulder', 'frontend/upload/v88NQMeZxGeNozP01CvGVbi2nzKAJRsvmSOq9S3H.jpg', 97500000, 'Chiếc túi đeo vai Gucci Softbit mới tái hiện phần khóa đặc trưng của thương hiệu thành chi tiết Half Horsebit cỡ lớn. Thiết kế này vừa mang tính thẩm mỹ, vừa tiện dụng với phần khóa nam châm và dáng túi mềm mại, được chế tác từ da hạt mềm mại với kết cấu phong phú.\r\n•	Da hạt màu taupe (xám nâu nhạt)\r\n•	Phụ kiện kim loại tông màu vàng\r\n•	Lớp lót microfiber màu nâu đậm\r\n•	Bên trong có túi rời có thể tháo ra\r\n•	Dây đeo vai rơi xuống: 7.9 inch (~20 cm)\r\n•	Kích thước: Rộng 18.1\" x Cao 10.2\" x Sâu 6\" (~46 x 26 x 15 cm)\r\n•	Trọng lượng: khoảng 3.1 lbs (~1.4 kg)\r\n•	Sản xuất tại Ý\r\n•	Đựng vừa iPhone Pro Max/Plus, AirPods, ví dài và son môi\r\n•	Khóa nam châm Half Horsebit', 5, 92625000, 7, 9),
(9, 'Túi Gucci Diana small', 'frontend/upload/oqkyba439nYcBy0kNPM3Q7AXErPmXXBbxE29dQk1.jpg', 97500000, 'Chiếc túi tote Gucci Diana kết hợp những chi tiết đặc trưng của thương hiệu, như tay cầm tre và phụ kiện kim loại Double G.\r\n•	Vải hiệu ứng raffia GG màu nâu tự nhiên\r\n•	Viền da màu nâu\r\n•	Lớp lót cotton lanh màu nâu\r\n•	Phụ kiện kim loại Double G\r\n•	Tay cầm bằng tre với độ rơi 3.1 inch (~8 cm)\r\n•	Dây đeo vai có thể tháo rời và điều chỉnh với độ rơi 20 inch (~51 cm)\r\n•	Trọng lượng: khoảng 0.48kg\r\n•	Kích thước: Rộng 7.9\" x Cao 6.3\" x Sâu 3.9\" (~20 x 16 x 10 cm)\r\n•	Sản xuất tại Ý\r\n•	Đựng vừa iPhone Pro Max/Plus, AirPods, ví nhỏ và son môi', 5, 92625000, 12, 9),
(10, 'Túi Gucci Diana small', 'frontend/upload/jDnVStTpLK7WHo0taFowLlDoj99BIEvI3WigMMk2.jpg', 130000000, 'Chiếc túi tote Gucci Diana kết hợp những chi tiết đặc trưng của thương hiệu, như tay cầm tre và phụ kiện kim loại Double G.\r\n•	Da đen bóng, đánh bóng\r\n•	Phần cứng màu vàng\r\n•	Tay cầm bằng tre tráng men với chi tiết bằng đồng thau\r\n•	Lớp lót bằng da màu đen\r\n•	Đôi G\r\n•	Bên trong: 1 túi mở\r\n•	thả 3,1\"\r\n•	Dây đeo vai bằng da có thể tháo rời và điều chỉnh: dài 18,9\" - 21,7\"; dài 36,6\" - 42,9\"\r\n•	Rộng 7,8\" x Cao 6,3\" x Sâu 3,9\"\r\n•	Trọng lượng: khoảng 2lbs\r\n•	Sản xuất tại Ý\r\n•	Phù hợp với iPhone Pro Max/Plus, Airpods, ví dài và son môi', 5, 123500000, 15, 9),
(11, 'Túi Dioriviera Medium Lady D-Lite', 'frontend/upload/UyHvJx7XY0oaXCcTUuJWBBKlMgtMdUuIxEfvjnL2.jpg', 145000000, 'Tên sản phẩm: Dioriviera Medium Lady D-Lite Bag\r\nGiá: 145.000.000\r\nMô tả: Là một phần của bộ sưu tập giới hạn Dioriviera, túi Lady D-Lite thể hiện tầm nhìn về sự thanh lịch và vẻ đẹp của nhà mốt Dior.\r\nTinh tế và sang trọng, thiết kế này được thêu toàn bộ với họa tiết Toile de Jouy Palms màu trắng và xanh của nghệ sĩ Pietro Ruffo, tái hiện vẻ đẹp thiên nhiên qua khung cảnh rừng nhiệt đới sống động cùng hệ động vật đa dạng.\r\nPhía trước túi nổi bật với chữ ký Christian Dior Paris, trong khi các charm chữ cái D.I.O.R. bằng kim loại mạ vàng nhạt tô điểm và làm nổi bật phom dáng túi.\r\nTúi đi kèm một quai đeo vai bản to, có thể tháo rời và đảo chiều, được thêu tinh xảo, cho phép bạn xách tay hoặc đeo chéo.\r\nChiếc Lady D-Lite size trung này có thể kết hợp linh hoạt với các thiết kế khác trong dòng Dioriviera.', 3, 140650000, 15, 10),
(12, 'Túi Mini Dior Caro Bucket', 'frontend/upload/be5Dknu1RMi5IwWF2SS928PlF7U6RUMlDIz3bEe1.jpg', 95000000, 'Ra mắt mùa Thu 2025, túi Dior Caro bucket bag là hiện thân của phong cách hiện đại và thanh lịch.\r\nĐược chế tác từ chất liệu da cừu non màu hồng phấn, nổi bật với kỹ thuật chần bông Macrocannage đặc trưng, thiết kế có ngăn chính dạng túi rút tiện lợi.\r\nTúi có một ngăn nắp phía trước được trang trí bằng logo CD kim loại hoàn thiện ánh vàng cổ điển, đủ sức chứa những vật dụng thiết yếu nhỏ gọn.\r\n\r\nNhờ tay cầm trên có thể tháo rời cùng quai đeo da có thể điều chỉnh và tháo rời, phiên bản túi bucket mini này có thể được xách tay, đeo vai hoặc đeo chéo linh hoạt.\r\n⸻\r\nChi tiết sản phẩm:\r\n • Chất liệu chính: Da cừu non và da bê\r\n • Lót trong bằng da bê\r\n • Logo CD ở mặt trước\r\n • Khóa túi rút\r\n • Ngăn trượt phía trước có nắp từ tính\r\n • Tay cầm da có thể tháo rời\r\n • Dây đeo vai da có thể điều chỉnh và tháo rời\r\n • Tặng kèm túi vải bảo quản (dust bag)\r\n • Sản xuất tại Ý', 2, 93100000, 12, 10),
(13, 'Small Dior Toujours Vertical Tote', 'frontend/upload/qtcupB8yin34O84QDYsmvFn2jTdHlvnzd4elHtzf.jpg', 93000000, 'Túi tote Dior Toujours dáng đứng nổi bật với thiết kế hiện đại và tính ứng dụng cao.\r\nĐược chế tác từ chất liệu da bê màu be phấn, bề mặt túi nổi bật với họa tiết chần bông Macrocannage tinh tế. Thiết kế sở hữu ngăn trong rộng rãi, lý tưởng để đựng tất cả vật dụng thiết yếu hàng ngày.\r\n\r\nPhần dây da mảnh giúp cố định đồ đạc bên trong, trong khi ký tự “D” của khóa CD Lock có thể xoay để điều chỉnh hai bên thân túi, làm nổi bật phom dáng đặc trưng.\r\nTay cầm da phía trên đi kèm với một quai đeo da có thể tháo rời, cho phép bạn linh hoạt xách tay, đeo vai hoặc đeo chéo.\r\n\r\n⸻\r\n\r\nChi tiết sản phẩm:\r\n • Chất liệu chính: Da bê\r\n • Lót trong bằng da bê\r\n • Khóa kép: dây da luồn mảnh và dây có khóa CD Lock mang dòng chữ Christian Dior Paris\r\n • Charm chữ cái D.I.O.R.\r\n • Ngăn trong để thẻ\r\n • Tay cầm da\r\n • Quai đeo vai da có thể tháo rời\r\n • Tặng kèm túi vải bảo quản (dust bag)\r\n • Sản xuất tại Ý', 3, 90210000, 15, 10),
(14, 'Túi Mini Lady Dior', 'frontend/upload/j6q9ZazZi1SrG1aZswZQACyHJrKEQTrRX13GEU7P.jpg', 145000000, 'Tên sản phẩm: Mini Lady Dior Bag\r\nGiá: 145.000.000 đồng\r\nMô tả:\r\nTúi Lady Dior là hiện thân trọn vẹn của tầm nhìn về sự thanh lịch và vẻ đẹp tinh tế của nhà mốt Dior.\r\nMang dáng vẻ thanh thoát và sang trọng, thiết kế vượt thời gian này được chế tác từ da cừu non ánh ngọc trai màu latte, nổi bật với họa tiết chần bông Cannage đặc trưng, tạo nên bề mặt vân nổi độc đáo không thể nhầm lẫn.\r\n\r\nCác charm kim loại ánh vàng nhạt mang chữ cái D.I.O.R. tô điểm và làm bừng sáng phom dáng túi.\r\nTúi đi kèm dây đeo vai dạng xích có thể tháo rời, cho phép bạn xách tay hoặc đeo chéo, lý tưởng khi sử dụng trong các dịp trang trọng hoặc buổi tối.\r\n\r\n⸻\r\n\r\nChi tiết sản phẩm:\r\n • Chất liệu chính: Da cừu non\r\n • Lót trong: Da dê và da cừu\r\n • Dây đeo dạng xích có thể tháo rời\r\n • Ngăn trong có khóa kéo\r\n • Có thể kết hợp với các loại dây đeo thêu thủ công của Dior\r\n • Tặng kèm túi vải bảo quản (dust bag)\r\n • Sản xuất tại Ý', 5, 137750000, 16, 10),
(15, 'Túi Small Dior Toujours', 'frontend/upload/Me3iTIursqKkauDTdqqVosOSThECPQo7X632ONLb.jpg', 99000000, 'Túi Dior Toujours gây ấn tượng với thiết kế năng động và tính ứng dụng cao.\r\nĐược chế tác từ chất liệu da bê màu latte, nổi bật với đường chần bông Macrocannage đặc trưng, túi sở hữu ngăn chứa rộng rãi cùng túi phụ bên trong đồng bộ, giúp sắp xếp vật dụng thiết yếu một cách gọn gàng.\r\n\r\nDây da mảnh giúp cố định đồ đạc bên trong, trong khi chi tiết chữ “D” trong khóa CD Lock có thể xoay để điều chỉnh phom dáng hai bên túi, tạo hiệu ứng thị giác hài hòa và tinh tế.\r\nTay cầm da phía trên có thể điều chỉnh độ dài thông qua các lỗ nhỏ, giúp bạn dễ dàng xách tay một cách thoải mái và linh hoạt.\r\n\r\n⸻\r\n\r\nChi tiết sản phẩm:\r\n • Chất liệu chính: Da bê\r\n • Lót trong: Da lộn bò và da bê\r\n • Khóa kép: Dây da luồn mảnh và dây có khóa CD Lock khắc dòng chữ Christian Dior Paris\r\n • Charm chữ cái D.I.O.R.\r\n • Túi phụ bên trong có thể tháo rời\r\n • Tay cầm da có thể điều chỉnh\r\n • Tặng kèm túi vải bảo quản (dust bag)\r\n • Sản xuất tại Ý', 5, 94050000, 12, 10),
(16, 'Túi Small Dior Caro Backpack', 'frontend/upload/qULZzX97Vjgm7hPm48zZBduhRYvBCgdvtNYg3DPt.jpg', 94000000, 'Mang đậm tinh thần hiện đại và thanh lịch, ba lô Dior Caro là lựa chọn hoàn hảo cho phong cách năng động mà vẫn giữ nét thời thượng.\r\nĐược chế tác từ chất liệu da cao cấp (thường là da bê hoặc da cừu non), thiết kế nổi bật với họa tiết Macrocannage chần bông đặc trưng của nhà Dior, tạo nên diện mạo sang trọng nhưng trẻ trung.\r\n\r\nTúi có kích thước nhỏ gọn nhưng đủ sức chứa những vật dụng cần thiết hàng ngày. Phần nắp túi được tô điểm bằng khóa kim loại CD ánh vàng cổ điển – biểu tượng đặc trưng của dòng Dior Caro.\r\n\r\nQuai đeo có thể điều chỉnh, giúp bạn linh hoạt sử dụng như đeo lưng, đeo vai hoặc xách tay tùy hoàn cảnh.\r\n\r\n⸻\r\n\r\nChi tiết sản phẩm (mô tả mẫu chuẩn):\r\n • Chất liệu chính: Da bê hoặc da cừu non\r\n • Họa tiết chần bông Macrocannage\r\n • Nắp túi có khóa CD ánh vàng cổ điển\r\n • Dây đeo vai có thể điều chỉnh độ dài\r\n • Ngăn trong rộng rãi + ngăn phụ nhỏ\r\n • Logo Christian Dior Paris dập chìm hoặc in bên trong\r\n • Tặng kèm túi vải bảo quản (dust bag)\r\n • Sản xuất tại Ý', 5, 89300000, 10, 10),
(17, 'Ví cầm tay da Togo – Pouch in Togo Calfskin', 'frontend/upload/SyNnlT1ab3vFbH9Zgqib3CN892mUK3BVsIT9x6WY.jpg', 245000000, 'Ví cầm tay da Togo – Pouch in Togo Calfskin\r\nChất liệu cao cấp, thiết kế tinh tế – chiếc ví cầm tay này là lựa chọn hoàn hảo cho phong cách hiện đại, thanh lịch và tiện dụng.\r\n • Chất liệu: Da bê Togo – nổi bật với độ bền cao, mềm mại, vân da tự nhiên\r\n • Ngăn chứa: Có ngăn riêng để đựng danh thiếp\r\n • Phụ kiện đi kèm: Dây đeo tay (lanyard) có thể tháo rời\r\n • Cách sử dụng: Có thể cầm tay hoặc đeo ở cổ tay\r\n • Xuất xứ: Sản xuất tại Pháp\r\n • Phần kim loại: Mạ Palladium (bóng, chống gỉ, sang trọng)\r\n • Kích thước:\r\n • Dài: 10 inch (~25,4 cm)\r\n • Cao: 7.9 inch (~20 cm)\r\n • Rộng: 1.6 inch (~4 cm)', 2, 240100000, 10, 11),
(18, 'Túi Herbag Zip cabine', 'frontend/upload/gTf4u7ho67xBeqGuPZ7IOUZg649H1nO9NzzcSNoB.jpg', 123750000, 'Chất liệu: Thân túi làm từ vải canvas Militaire kết hợp với da bò Hunter cao cấp.\r\n • Khóa: Sử dụng khóa Clou de Selle đặc trưng của Hermès.\r\n • Ngăn chứa:\r\n • Ngăn chính rộng rãi, phù hợp để đựng laptop và các vật dụng cần thiết.\r\n • Túi kéo bên trong có thể tháo rời.\r\n • Túi kéo phía sau tiện lợi cho việc cất giữ đồ dùng nhỏ.\r\n • Tay cầm: Có thể gập lại khi không sử dụng.\r\n • Dây đeo: Dây đeo vai có thể điều chỉnh, cho phép đeo chéo hoặc đeo vai.\r\n • Kích thước: Dài 50 cm x Cao 34 cm x Rộng 22.5 cm.\r\n • Hoàn thiện kim loại: Mạ palladium sáng bóng.\r\n • Xuất xứ: Sản xuất tại Pháp.', 2, 121275000, 10, 11),
(19, 'Túi Garden Party 49 voyage', 'frontend/upload/MGpA5CDlc3AT3xY2J6Vo3jj3VSwS6qb6Idwd6Nmf.jpg', 183750000, '• Chất liệu: Canvas Militaire kết hợp với da bê Negonda cao cấp.\r\n • Khóa: Khóa bấm Clou de Selle đặc trưng của Hermès.\r\n • Ngăn chứa: Một ngăn chính rộng rãi và một túi kéo bên trong.\r\n • Cách mang: Có thể xách tay hoặc đeo vai.\r\n • Hoàn thiện kim loại: Mạ palladium sáng bóng.\r\n • Xuất xứ: Sản xuất tại Pháp.\r\n • Kích thước: Dài 49 cm x Cao 36 cm x Rộng 25 cm (tương đương 19.3” x 14.2” x 9.8”).', 2, 180075000, 10, 11),
(20, 'Túi Garden Party pockets vertical', 'frontend/upload/2ghzW9L3k8XlETp9LgImtxFxcgMaoFqy8e9R6Pv8.jpg', 198750000, 'Chất liệu: Canvas Militaire kết hợp với da bê Negonda cao cấp\r\n • Kích thước: Dài 33.5 cm x Cao 37 cm x Rộng 18 cm\r\n • Ngăn chứa:\r\n • 1 ngăn chính rộng rãi\r\n • 2 túi bên hông\r\n • 1 túi kéo bên ngoài\r\n • 1 túi kéo bên trong\r\n • Cách mang: Có thể xách tay\r\n • Hoàn thiện kim loại: Mạ palladium sáng bóng\r\n • Xuất xứ: Sản xuất tại Pháp', 2, 194775000, 10, 11),
(21, 'Túi Bolide 1923 - 45 Racing', 'frontend/upload/SIM9lvmvFth2GMntv1BNSOtv97hGyc3MkPASDUNQ.jpg', 907500000, '• Chất liệu: Kết hợp giữa da bê Evergrain, Evercolor và Swift cao cấp.\r\n • Thiết kế: Lấy cảm hứng từ áo khoác mô tô, với họa tiết chữ “H” năng động tượng trưng cho tia sét, thể hiện sự chuyển động và tốc độ.\r\n • Kỹ thuật chế tác: Sử dụng kỹ thuật thêu appliqué và bọc nổi 14 mảnh da, đòi hỏi hơn 30 giờ làm việc thủ công.\r\n • Kích thước: Dài 45 cm x Cao 37 cm x Rộng 23 cm (tương đương 17.7” x 14.6” x 9.1”).\r\n • Hoàn thiện kim loại: Mạ palladium sáng bóng.\r\n • Xuất xứ: Sản xuất tại Pháp.', 2, 889350000, 10, 11),
(22, 'Túi Chanel Classic mini (vải tweed)', 'frontend/upload/YXUhHMqrAlWS2aw5u8G6HA7kEbhQVijrEQ2EcrtA.jpg', 139250000, '•	Chất liệu Vải Tweed & Kim loại mạ vàng\r\n•	Màu sắc: Trắng, Xanh dương & Hồng\r\n•	Kích thước: 12 x 20 x 6 cm (có thể quy đổi sang inch)\r\n•	Sản xuất ở Pháp', 2, 136465000, 15, 12),
(23, 'Túi Chanel 25', 'frontend/upload/8HZjYutc7g0fy3rM4ENuLumKjAW8d04eaXru3rGu.jpg', 168250000, '•	Chất liệu Da bê hiệu ứng hạt & Kim loại mạ vàng\r\n•	Màu sắc: Hồng nhạt\r\n•	Kích thước: 30 x 26 x 14cm(có thể quy đổi sang inch)\r\n•	Sản xuất ở Pháp', 2, 164885000, 15, 12),
(24, 'Túi Camera Case mini', 'frontend/upload/vVHCPBnZq3MWddQJzHiPEMzb0cSuWf5zag6aev0g.jpg', 150850000, '•	Chất liệu Da cừu bóng & Kim loại mạ vàng\r\n•	Màu sắc: Khaki\r\n•	Kích thước: 13 x 19 x 6cm (có thể quy đổi sang inch)\r\n•	Sản xuất ở Pháp', 2, 147833000, 16, 12),
(25, 'Túi hộp Cruise 2024/25', 'frontend/upload/bNGa3oAv9Fe9hFu78FsHsu6L4GiHY7Kb6xWhT03E.jpg', 156650000, '•	Chất liệu Da cừu bóng & Kim loại mạ vàng\r\n•	Màu sắc: Trắng\r\n•	Kích thước: 16.5 x 9 x 9cm (có thể quy đổi sang inch)\r\n•	Sản xuất ở Pháp', 2, 153517000, 15, 12),
(26, 'Túi Chanel đeo hông', 'frontend/upload/iFE2Nj9kFvJp7pXLIbiXUnNMVRqxgdCbubxQ3kCR.jpg', 142150000, 'Nằm trong bộ sưu tập Pre-Collection Xuân Hè 2025\r\n•	Chất liệu Da cừu bóng & Kim loại mạ vàng\r\n•	Màu sắc: Đen\r\n•	Kích thước: 15 x 34 x 8cm (có thể quy đổi sang inch)\r\n•	Sản xuất ở Pháp', 2, 139307000, 15, 12),
(27, 'Túi vanity mini', 'frontend/upload/PO3OY4JQb2uwNABFzk56buMsC2Za1ACD9qCIHhZ4.jpg', 142150000, 'Nằm trong bộ sưu tập Pre-Collection Xuân Hè 2025\r\n•	Chất liệu Da cừu bóng, Ngọc trai nhân tạo & Kim loại màu vàng\r\n•	Màu sắc: Đen\r\n•	Kích thước: 17 x 18 x 7cm (có thể quy đổi sang inch)\r\n•	Sản xuất ở Pháp', 2, 139307000, 15, 12),
(28, 'Túi Chanel 19', 'frontend/upload/zboQPDmLlZoRKwiDP7EwlVvJ11jNGOGtjLRmDiV3.jpg', 181430000, '•	Chất Da cừu bóng, Kim loại mạ vàng, bạc & ruthenium\r\n•	Màu sắc: Đen\r\n•	Kích thước: 16 x 26 x 9cm (có thể quy đổi sang inch)\r\n•	Sản xuất ở Pháp', 2, 177801400, 16, 12),
(29, 'Túi Chanel 11.12', 'frontend/upload/DbSJxRPsjxKmmLafgfIOXBnlVXCh2tq0Q6ZvZ2Lc.jpg', 273540000, '•	Chất Vải Tweed & Kim loại mạ vàng\r\n•	Màu sắc: Xanh dương nhạt & Đen\r\n•	Kích thước 15.5 x 25.5 x 6.5cm (có thể quy đổi sang inch)\r\n•	Sản xuất ở Pháp', 2, 268069200, 10, 12),
(30, 'Túi Chanel nắp gập mini', 'frontend/upload/nh0yV31spYEwLqQEISJVL8LkhWcjCEVVxzTuip5w.jpg', 185290000, '•	Chất Da bê hiệu ứng bện ánh kim & Kim loại màu vàng kim\r\n•	Màu sắc: Silvery\r\n•	Kích thước 13 x 19 x 5.5cm(có thể quy đổi sang inch)\r\n•	Sản xuất ở Pháp', 2, 181584200, 15, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD PRIMARY KEY (`id_ctdonhang`),
  ADD KEY `chitiet_donhang_id_dathang_foreign` (`id_dathang`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comments_user` (`user_id`),
  ADD KEY `fk_comments_sanpham` (`sanpham_id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`id_dathang`),
  ADD KEY `dathang_id_dathang_index` (`id_dathang`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_kh`),
  ADD KEY `fk_dk` (`id_phanquyen`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`id_phanquyen`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD KEY `fk_customer` (`id_danhmuc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `id_ctdonhang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dathang`
--
ALTER TABLE `dathang`
  MODIFY `id_dathang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD CONSTRAINT `chitiet_donhang_id_dathang_foreign` FOREIGN KEY (`id_dathang`) REFERENCES `dathang` (`id_dathang`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_sanpham` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id_sanpham`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_comments_user` FOREIGN KEY (`user_id`) REFERENCES `khachhang` (`id_kh`) ON DELETE CASCADE;

--
-- Constraints for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `fk_dk` FOREIGN KEY (`id_phanquyen`) REFERENCES `phanquyen` (`id_phanquyen`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
