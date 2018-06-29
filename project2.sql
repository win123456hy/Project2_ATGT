-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2018 at 10:32 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project2`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `AnswerID` int(11) NOT NULL,
  `AnswerDetail` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `IsCorrect` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`AnswerID`, `AnswerDetail`, `QuestionID`, `IsCorrect`) VALUES
(1, 'Đường, cầu đường bộ, hầm đường bộ.', 1, 0),
(2, 'Đường, cầu đường bộ, hầm đường bộ, bến phà đường bộ. ', 1, 1),
(3, 'Đường, cầu đường bộ, hầm đường bộ, bến phà đường bộ và các công trình phụ trợ khác.\r\n', 1, 0),
(4, 'Cơ quan quản lý giao thông vận tải.\r\n', 2, 0),
(5, 'Ủy ban nhân dân cấp tỉnh. ', 2, 1),
(6, 'Cơ quan cảnh sát giao thông đường bộ.\r\n', 2, 0),
(7, 'Thanh tra giao thông đường bộ.\r\n', 2, 0),
(8, 'Các công trình phụ trợ khác.\r\n', 1, 0),
(9, 'Nghiêm cấm. ', 3, 1),
(10, 'Không bị nghiêm cấm.', 3, 0),
(11, 'Nghiêm cấm trong trường hợp sử dụng trái phép', 3, 0),
(12, 'Các trường hợp khác.', 3, 0),
(13, 'Là trách nhiệm của nghành Giao thông vận tải và ngành Công an.', 4, 0),
(14, 'Là trách nhiệm của cơ quan, tổ chức, cá nhân. ', 4, 1),
(15, 'Là trách nhiệm của cảnh sát giao thông.\r\n', 4, 0),
(16, 'Không ai cần trách nhiệm.', 4, 0),
(17, 'Trên đường có nhiều làn đường cho xe đi cùng chiều được phân biệt bằng vạch kẻ phân làn đường, người điều khiển phương tiện phải cho xe đi trong một làn đường và chỉ được chuyển làn đường ở những nơi cho phép; khi chuyển làn đường phải có tín hiệu báo trước và đảm bảo an toàn.\r\n', 5, 0),
(18, 'Trên đường một chiều có vạch kẻ phân làn đường, xe thô sơ phải đi trên làn đường bên phải trong cùng, xe cơ giới, xe máy chuyên dùng đi trên làn đường bên trái.', 5, 0),
(19, 'Phương tiện tham gia giao thông đường bộ di chuyển với tốc độ thấp hơn đi về bên phải.', 5, 0),
(20, 'Tất cả các ý nêu trên.', 5, 1),
(21, 'Nhường đường cho xe đi ở bên phải mình tới.\r\n', 6, 0),
(22, 'Nhường đường cho xe đi ở bên trái mình tới.', 6, 0),
(23, 'Nhường đường cho xe đi trên đường ưu tiên hoặc đường chính từ bất kỳ hường nào tới. ', 6, 1),
(24, 'Không nhường xe nào cả.', 6, 0),
(25, 'Giấy phép lái xe,đăng ký xe, lưu hành xe.', 7, 0),
(26, 'Giấy phép lái xe theo quy định, đăng ký xe, giấy vận chuyển, chứng minh thư nhân dân.', 7, 0),
(27, 'Lệnh vận chuyển, đăng ký xe, giấy phép lưu hành xe.\r\n', 7, 0),
(28, 'Giấy phép lái xe phù hợp với loại xe đó, đăng ký xe, giấy chứng nhận kiểm định kỹ thuật và bảo vệ môi trường, giấy chứng nhận bảo hiểm trách nhiệm dân sự của chủ xe cơ giới và giấy phép vận chuyển (nếu loại xe đó cần phải có).', 7, 1),
(29, 'Biển 1\r\n', 8, 0),
(30, 'Biển 1 và 3', 8, 0),
(31, 'Biển 2 ', 8, 1),
(32, 'Biển 2 và 3', 8, 0),
(33, 'Biển 1', 9, 0),
(34, 'Biển 1 và 2', 9, 0),
(35, 'Biển 2 và 3', 9, 0),
(36, 'Cả 3 biển trên ', 9, 1),
(37, 'Biển 1.\r\n', 10, 0),
(38, 'Biển 3', 10, 1),
(39, 'Biển 2.', 10, 0),
(40, 'Cả 3 biển trên.', 10, 0),
(41, 'Biển 1', 11, 0),
(42, 'Biển 1 và 2. ', 11, 1),
(43, 'Biển 2 và 3', 11, 0),
(44, 'Biển 2', 11, 0),
(45, 'Biển 1.', 12, 0),
(46, 'Biển 2.\r\n', 12, 0),
(47, 'Cả 2 biển trên. ', 12, 1),
(48, 'Không phải biển nào.', 12, 0),
(49, 'Xe tải, xe lam, xe con, mô tô.\r\n', 13, 0),
(50, 'Xe tải, mô tô, xe lam, xe con. ', 13, 1),
(51, 'Xe lam, xe tải, xe con, mô tô.\r\n', 13, 0),
(52, 'Mô tô, xe lam, xe tải, xe con.\r\n', 13, 0),
(53, 'Xe tải.\r\n', 14, 0),
(54, 'Xe con. ', 14, 1),
(55, 'Xe lam.', 14, 0),
(56, 'Xe con và Xe lam.', 14, 0),
(57, 'Xe khách, mô tô', 15, 0),
(58, 'Xe tải, mô tô.', 15, 0),
(59, 'Xe con, xe tải.', 15, 0),
(60, 'Tất cả các loại xe trên. ', 15, 1),
(61, 'Vạch kẻ đường là vạch chỉ sự phân chia làn đường, vị trí hoặc hướng đi, vị trí dừng lại. ', 16, 1),
(62, 'Vạch kẻ đường là vạch chỉ sự phân biệt vị trí dừng, đỗ trên đường.\r\n', 16, 0),
(63, 'Vạch kẻ đường là vạch chỉ sự phân chia làn đường', 16, 0),
(64, 'Tất cả các ý nêu trên\r\n', 16, 0),
(65, 'Gồm xe ô tô; xe kéo; xe mô tô hai bánh; xe mô tô ba bánh; xe găn máy; xe cơ giới dùng cho người khuyết tật và các loại xe tương tự.\r\n', 17, 0),
(66, 'Gồm xe ô tô, máy kéo,xe mô tô hai bánh; xe mô tô ba bánh', 17, 0),
(67, 'Gồm xe ô tô, máy kéo, rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo, xe ô tô hai bánh; xe mô tô ba bánh. xe gắn máy (kể cả xe gắn máy điện) và các loại xe tương tự. ', 17, 1),
(68, 'Tất cả đều sai', 17, 0),
(69, 'Nồng độ cồn vượt quá 40 miligam/100 mililit máu.', 18, 0),
(70, 'Nồng độ cồn vượt quá 50 miligam/100 mililit máu. ', 18, 1),
(71, 'Nồng độ cồn vượt quá 30 miligam/100 mililit máu.', 18, 0),
(72, 'Nồng độ cồn vượt quá 60 miligam/100 mililit máu.', 18, 0),
(73, 'Phải thực hiện chuyển dần sang làn đường phía bên phải, nếu có làn đường giảm tốc thì phải cho xe chạy trên làn đường đó trước khi rời khỏi cao tốc. ', 19, 1),
(74, 'Phải thực hiện chuyển dần sang làn đường phía bên phải', 19, 0),
(75, 'Phải thực hiện chuyển ngay sang các làn đường phía bên phải, nếu có làn đường giảm tốc thì phải cho xe chạy trên làn đường đó trước khi rời khỏi đường cao tốc.\r\n', 19, 0),
(76, 'Phải thực hiện chuyển ngay sang các làn đường phía bên trái', 19, 0),
(77, 'Phải cho xe dừng lại trước vạch dừng, trừ trường hợp đã đi quá vạch dừng thì được phép đi tiếp; trong trường hợp tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ, chú ý quan sát, nhường đường cho người đi bộ qua đường.', 20, 1),
(78, 'Phải cho xe dừng lại trước vạch dừng, trừ trường hợp đã đi quá vạch dừng thì được phép đi tiếp', 20, 0),
(79, 'Phải cho xe nhanh cóng vượt qua vạch dừng để đi qua đường giao nhau và chú ý đảm bảo an toàn; khi đèn tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ, chú ý quan sát người đi bộ để đảm bảo an toàn.', 20, 0),
(80, 'Tất cả các phương án', 20, 0),
(81, 'Phải nhường đường cho xe đi đến từ bên phải. ', 21, 1),
(82, 'Tất cả đều sai', 21, 0),
(83, 'Xe báo hiệu xin đường trước xe đó được đi trước', 21, 0),
(84, 'Phải nhường đường cho xe đi đến từ bên trái\r\n', 21, 0),
(85, '16 Tuổi', 22, 0),
(86, '18 Tuổi', 22, 1),
(87, '20 Tuổi', 22, 0),
(88, '14 Tuổi', 22, 0),
(89, 'Biển 1 ', 23, 1),
(90, 'Biển 3', 23, 0),
(91, 'Biển 2', 23, 0),
(92, 'Biển 1 và 3', 23, 0),
(93, 'Biển 1 và 2\r\n', 24, 0),
(94, 'Biển 2 và 3 ', 24, 1),
(95, 'Biển 2', 24, 0),
(96, 'Biển 3', 24, 0),
(97, 'Biển 1 ', 25, 1),
(98, 'Biển 3\r\n', 25, 0),
(99, 'Biển 2', 25, 0),
(100, 'Biển 2 và 3', 25, 0),
(101, 'Biển 1 ', 26, 1),
(102, 'Biển 2\r\n', 26, 0),
(103, 'Biển 3\r\n', 26, 0),
(104, 'Biển 2 và 3\r\n', 26, 0),
(105, 'Biển 1 ', 27, 1),
(106, 'Biển 2', 27, 0),
(107, 'Cả hai biển trên đều đúng', 27, 0),
(108, 'Cả hai biển trên đều sai', 27, 0),
(109, 'Xe khách, mô tô. ', 28, 1),
(110, 'Xe tải, mô tô.', 28, 0),
(111, 'Xe con, xe tải.', 28, 0),
(112, 'Tất cả các xe', 28, 0),
(113, 'Cả 3 hướng. ', 29, 1),
(114, 'Hướng 1 và 2.', 29, 0),
(115, 'Hướng 1 và 3.', 29, 0),
(116, 'Chỉ hướng 1.', 29, 0),
(117, 'Cả 3 hướng.\r\n', 30, 0),
(118, 'Hướng 1 và hướng 2.', 30, 0),
(119, 'Hướng 1 và hướng 3', 30, 1),
(120, 'Hướng 2 và hướng 3.', 30, 0),
(121, 'Đường, cầu đường bộ, hầm đường bộ.', 31, 0),
(122, 'Các công trình phụ trợ khác.\r\n', 31, 0),
(123, 'Đường, cầu đường bộ, hầm đường bộ, bến phà đường bộ và các công trình phụ trợ khác.\r\n', 31, 0),
(124, 'Đường, cầu đường bộ, hầm đường bộ, bến phà đường bộ. ', 31, 1),
(125, 'Cơ quan quản lý giao thông vận tải.\r\n', 32, 0),
(126, 'Ủy ban nhân dân cấp tỉnh. ', 32, 1),
(127, 'Cơ quan cảnh sát giao thông đường bộ.\r\n', 32, 0),
(128, 'Thanh tra giao thông đường bộ.\r\n', 32, 0),
(129, 'Các trường hợp khác.', 33, 0),
(130, 'Nghiêm cấm trong trường hợp sử dụng trái phép', 33, 0),
(131, 'Không bị nghiêm cấm.', 33, 0),
(132, 'Nghiêm cấm. ', 33, 1),
(133, 'Không ai cần trách nhiệm.', 34, 0),
(134, 'Là trách nhiệm của cảnh sát giao thông.\r\n', 34, 0),
(135, 'Là trách nhiệm của cơ quan, tổ chức, cá nhân. ', 34, 1),
(136, 'Là trách nhiệm của nghành Giao thông vận tải và ngành Công an.', 34, 0),
(137, 'Trên đường có nhiều làn đường cho xe đi cùng chiều được phân biệt bằng vạch kẻ phân làn đường, người điều khiển phương tiện phải cho xe đi trong một làn đường và chỉ được chuyển làn đường ở những nơi cho phép; khi chuyển làn đường phải có tín hiệu báo trước và đảm bảo an toàn.\r\n', 35, 0),
(138, 'Trên đường một chiều có vạch kẻ phân làn đường, xe thô sơ phải đi trên làn đường bên phải trong cùng, xe cơ giới, xe máy chuyên dùng đi trên làn đường bên trái.', 35, 0),
(139, 'Phương tiện tham gia giao thông đường bộ di chuyển với tốc độ thấp hơn đi về bên phải.', 35, 0),
(140, 'Tất cả các ý nêu trên.', 35, 1),
(141, 'Không nhường xe nào cả.', 36, 0),
(142, 'Nhường đường cho xe đi trên đường ưu tiên hoặc đường chính từ bất kỳ hường nào tới. ', 36, 1),
(143, 'Nhường đường cho xe đi ở bên trái mình tới.', 36, 0),
(144, 'Nhường đường cho xe đi ở bên phải mình tới.\r\n', 36, 0),
(145, 'Giấy phép lái xe,đăng ký xe, lưu hành xe.', 37, 0),
(146, 'Giấy phép lái xe theo quy định, đăng ký xe, giấy vận chuyển, chứng minh thư nhân dân.', 37, 0),
(147, 'Lệnh vận chuyển, đăng ký xe, giấy phép lưu hành xe.\r\n', 37, 0),
(148, 'Giấy phép lái xe phù hợp với loại xe đó, đăng ký xe, giấy chứng nhận kiểm định kỹ thuật và bảo vệ môi trường, giấy chứng nhận bảo hiểm trách nhiệm dân sự của chủ xe cơ giới và giấy phép vận chuyển (nếu loại xe đó cần phải có).', 37, 1),
(149, 'Biển 2 và 3', 38, 0),
(150, 'Biển 2 ', 38, 1),
(151, 'Biển 1 và 3', 38, 0),
(152, 'Biển 1\r\n', 38, 0),
(153, 'Biển 1', 39, 0),
(154, 'Biển 1 và 2', 39, 0),
(155, 'Biển 2 và 3', 39, 0),
(156, 'Cả 3 biển trên ', 39, 1),
(157, 'Cả 3 biển trên.', 40, 0),
(158, 'Biển 2.', 40, 0),
(159, 'Biển 3', 40, 1),
(160, 'Biển 1.\r\n', 40, 0),
(161, 'Biển 1', 41, 0),
(162, 'Biển 1 và 2. ', 41, 1),
(163, 'Biển 2 và 3', 41, 0),
(164, 'Biển 2', 41, 0),
(165, 'Không phải biển nào.', 42, 0),
(166, 'Cả 2 biển trên. ', 42, 1),
(167, 'Biển 2.\r\n', 42, 0),
(168, 'Biển 1.', 42, 0),
(169, 'Xe tải, xe lam, xe con, mô tô.\r\n', 43, 0),
(170, 'Xe tải, mô tô, xe lam, xe con. ', 43, 1),
(171, 'Xe lam, xe tải, xe con, mô tô.\r\n', 43, 0),
(172, 'Mô tô, xe lam, xe tải, xe con.\r\n', 43, 0),
(173, 'Xe con và Xe lam.', 44, 0),
(174, 'Xe lam.', 44, 0),
(175, 'Xe con. ', 44, 1),
(176, 'Xe tải.\r\n', 44, 0),
(177, 'Xe khách, mô tô', 45, 0),
(178, 'Xe tải, mô tô.', 45, 0),
(179, 'Xe con, xe tải.', 45, 0),
(180, 'Tất cả các loại xe trên. ', 45, 1),
(181, 'Tất cả các ý nêu trên\r\n', 46, 0),
(182, 'Vạch kẻ đường là vạch chỉ sự phân chia làn đường', 46, 0),
(183, 'Vạch kẻ đường là vạch chỉ sự phân biệt vị trí dừng, đỗ trên đường.\r\n', 46, 0),
(184, 'Vạch kẻ đường là vạch chỉ sự phân chia làn đường, vị trí hoặc hướng đi, vị trí dừng lại. ', 16, 1),
(185, 'Gồm xe ô tô; xe kéo; xe mô tô hai bánh; xe mô tô ba bánh; xe găn máy; xe cơ giới dùng cho người khuyết tật và các loại xe tương tự.\r\n', 47, 0),
(186, 'Gồm xe ô tô, máy kéo,xe mô tô hai bánh; xe mô tô ba bánh', 47, 0),
(187, 'Gồm xe ô tô, máy kéo, rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo, xe ô tô hai bánh; xe mô tô ba bánh. xe gắn máy (kể cả xe gắn máy điện) và các loại xe tương tự. ', 47, 1),
(188, 'Tất cả đều sai', 47, 0),
(189, 'Nồng độ cồn vượt quá 60 miligam/100 mililit máu.', 48, 0),
(190, 'Nồng độ cồn vượt quá 30 miligam/100 mililit máu.', 48, 0),
(191, 'Nồng độ cồn vượt quá 50 miligam/100 mililit máu. ', 48, 1),
(192, 'Nồng độ cồn vượt quá 40 miligam/100 mililit máu.', 48, 0),
(193, 'Phải thực hiện chuyển dần sang làn đường phía bên phải, nếu có làn đường giảm tốc thì phải cho xe chạy trên làn đường đó trước khi rời khỏi cao tốc. ', 49, 1),
(194, 'Phải thực hiện chuyển dần sang làn đường phía bên phải', 49, 0),
(195, 'Phải thực hiện chuyển ngay sang các làn đường phía bên phải, nếu có làn đường giảm tốc thì phải cho xe chạy trên làn đường đó trước khi rời khỏi đường cao tốc.\r\n', 49, 0),
(196, 'Phải thực hiện chuyển ngay sang các làn đường phía bên trái', 49, 0),
(197, 'Tất cả các phương án', 50, 0),
(198, 'Phải cho xe nhanh cóng vượt qua vạch dừng để đi qua đường giao nhau và chú ý đảm bảo an toàn; khi đèn tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ, chú ý quan sát người đi bộ để đảm bảo an toàn.', 50, 0),
(199, 'Phải cho xe dừng lại trước vạch dừng, trừ trường hợp đã đi quá vạch dừng thì được phép đi tiếp', 50, 0),
(200, 'Phải cho xe dừng lại trước vạch dừng, trừ trường hợp đã đi quá vạch dừng thì được phép đi tiếp; trong trường hợp tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ, chú ý quan sát, nhường đường cho người đi bộ qua đường.', 50, 1),
(201, 'Phải nhường đường cho xe đi đến từ bên phải. ', 51, 1),
(202, 'Tất cả đều sai', 51, 0),
(203, 'Xe báo hiệu xin đường trước xe đó được đi trước', 51, 0),
(204, 'Phải nhường đường cho xe đi đến từ bên trái\r\n', 51, 0),
(205, '14 Tuổi', 52, 0),
(206, '20 Tuổi', 52, 0),
(207, '18 Tuổi', 52, 1),
(208, '16 Tuổi', 52, 0),
(209, 'Biển 1 và 3', 53, 0),
(210, 'Biển 2', 53, 0),
(211, 'Biển 3', 53, 0),
(212, 'Biển 1 ', 53, 1),
(213, 'Biển 1 và 2\r\n', 54, 0),
(214, 'Biển 2 và 3 ', 54, 1),
(215, 'Biển 2', 54, 0),
(216, 'Biển 3', 54, 0),
(217, 'Biển 2 và 3', 55, 0),
(218, 'Biển 2', 25, 0),
(219, 'Biển 3\r\n', 55, 0),
(220, 'Biển 1 ', 55, 1),
(221, 'Biển 1 ', 56, 1),
(222, 'Biển 2\r\n', 56, 0),
(223, 'Biển 3\r\n', 56, 0),
(224, 'Biển 2 và 3\r\n', 56, 0),
(225, 'Cả hai biển trên đều sai', 57, 0),
(226, 'Cả hai biển trên đều đúng', 57, 0),
(227, 'Biển 2', 57, 0),
(228, 'Biển 1 ', 57, 1),
(229, 'Xe khách, mô tô. ', 58, 1),
(230, 'Xe tải, mô tô.', 58, 0),
(231, 'Xe con, xe tải.', 58, 0),
(232, 'Tất cả các xe', 58, 0),
(233, 'Chỉ hướng 1.', 59, 0),
(234, 'Hướng 1 và 3.', 59, 0),
(235, 'Hướng 1 và 2.', 59, 0),
(236, 'Cả 3 hướng. ', 59, 1),
(237, 'Cả 3 hướng.\r\n', 60, 0),
(238, 'Hướng 1 và hướng 2.', 60, 0),
(239, 'Hướng 1 và hướng 3', 60, 1),
(240, 'Hướng 2 và hướng 3.', 60, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CategoryDescription` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `CategoryDescription`) VALUES
(1, 'Xe may', 'Xe moto 2 banh'),
(2, 'Xe oto', 'Xe oto 4 banh'),
(3, 'Đường bộ', 'đường bộ'),
(4, 'Đường sắt', 'Đường sắt'),
(5, 'Đường Thủy', 'Đường Thủy');

-- --------------------------------------------------------

--
-- Table structure for table `examdetails`
--

CREATE TABLE `examdetails` (
  `ExamDetailID` int(11) NOT NULL,
  `ExamID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `AnswerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `ExamID` int(11) NOT NULL,
  `CreatedTime` date NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ImageID` int(11) NOT NULL,
  `ImageLink` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QuestionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ImageID`, `ImageLink`, `QuestionID`) VALUES
(1, 'Images/ImagesQuestion/8.png', 8),
(2, 'Images/ImagesQuestion/9.png', 9),
(3, 'Images/ImagesQuestion/10.png', 10),
(4, 'Images/ImagesQuestion/11.png', 11),
(5, 'Images/ImagesQuestion/12.png', 12),
(6, 'Images/ImagesQuestion/13.png', 13),
(7, 'Images/ImagesQuestion/14.png', 14),
(8, 'Images/ImagesQuestion/15.png', 15),
(9, 'Images/ImagesQuestion/23.png', 23),
(10, 'Images/ImagesQuestion/24.png', 24),
(11, 'Images/ImagesQuestion/25.png', 25),
(12, 'Images/ImagesQuestion/26.png', 26),
(13, 'Images/ImagesQuestion/27.png', 27),
(14, 'Images/ImagesQuestion/28.png', 28),
(15, 'Images/ImagesQuestion/29.png', 29),
(16, 'Images/ImagesQuestion/30.png', 30),
(17, 'Images/ImagesQuestion/8.png', 38),
(18, 'Images/ImagesQuestion/9.png', 39),
(19, 'Images/ImagesQuestion/10.png', 40),
(20, 'Images/ImagesQuestion/11.png', 41),
(21, 'Images/ImagesQuestion/12.png', 42),
(22, 'Images/ImagesQuestion/13.png', 43),
(23, 'Images/ImagesQuestion/14.png', 44),
(24, 'Images/ImagesQuestion/15.png', 45),
(25, 'Images/ImagesQuestion/23.png', 53),
(26, 'Images/ImagesQuestion/24.png', 54),
(27, 'Images/ImagesQuestion/25.png', 55),
(28, 'Images/ImagesQuestion/26.png', 56),
(29, 'Images/ImagesQuestion/27.png', 57),
(30, 'Images/ImagesQuestion/28.png', 58),
(31, 'Images/ImagesQuestion/29.png', 59),
(32, 'Images/ImagesQuestion/30.png', 60);

-- --------------------------------------------------------

--
-- Table structure for table `laws`
--

CREATE TABLE `laws` (
  `LawID` int(11) NOT NULL,
  `LawTitle` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LawDetail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `LawTimeRelease` date NOT NULL,
  `CategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `laws`
--

INSERT INTO `laws` (`LawID`, `LawTitle`, `LawDetail`, `LawTimeRelease`, `CategoryID`) VALUES
(1, 'Điều 1. Phạm vi điều chỉnh\r\n', 'Luật này quy định về quy tắc giao thông đường bộ; kết cấu hạ tầng giao thông đường bộ; phương tiện và người tham gia giao thông đường bộ; vận tải đường bộ và quản lý nhà nước về giao thông đường bộ.\r\n', '2017-07-01', 3),
(2, 'Điều 2. Đối tượng áp dụng', 'Luật này áp dụng đối với tổ chức, cá nhân liên quan đến giao thông đường bộ trên lãnh thổ nước Cộng hòa xã hội chủ nghĩa Việt Nam.', '2017-07-01', 3),
(3, 'Điều 3. Giải thích từ ngữ\r\n', 'Trong Luật này, các từ ngữ dưới đây được hiểu như sau:\r\n1. Đường bộ gồm đường, cầu đường bộ, hầm đường bộ, bến phà đường bộ.\r\n2. Công trình đường bộ gồm đường bộ, nơi dừng xe, đỗ xe trên đường bộ, đèn tín hiệu, biển báo hiệu, vạch kẻ đường, cọc tiêu, rào chắn, đảo giao thông, dải phân cách, cột cây số, tường, kè, hệ thống thoát nước, trạm kiểm tra tải trọng xe, trạm thu phí và các công trình, thiết bị phụ trợ đường bộ khác.\r\n3.Kết cấu hạ tầng giao thông đường bộ gồm công trình đường bộ, bến xe, bãi đỗ xe, trạm dừng nghỉ và các công trình phụ trợ khác trên đường bộ phục vụ giao thông và hành lang an toàn đường bộ.\r\n4. Đất của đường bộ là phần đất trên đó công trình đường bộ được xây dựng và phần đất dọc hai bên đường bộ để quản lý, bảo trì, bảo vệ công trình đường bộ.\r\n5.Hành lang an toàn đường bộ là dải đất dọc hai bên đất của đường bộ, tính từ mép ngoài đất của đường bộ ra hai bên để bảo đảm an toàn giao thông đường bộ.\r\n6. Phần đường xe chạy là phần của đường bộ được sử dụng cho phương tiện giao thông qua lại.\r\n7. Làn đường là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có bề rộng đủ cho xe chạy an toàn.\r\n8. Khổ giới hạn của đường bộ là khoảng trống có kích thước giới hạn về chiều cao, chiều rộng của đường, cầu, bến phà, hầm đường bộ để các xe kể cả hàng hóa xếp trên xe đi qua được an toàn.\r\n9. Đường phốlà đường đô thị, gồm lòng đường và hè phố. \r\n10. Dải phân cách là bộ phận của đường để phân chia mặt đường thành hai chiều xe chạy riêng biệt hoặc để phân chia phần đường của xe cơ giới và xe thô sơ. Dải phân cách gồm loại cố định và loại di động.  \r\n11.Nơi đường giao nhau cùng mức (sau đây gọi là nơi đường giao nhau) là nơi hai hay nhiều đường bộ gặp nhau trên cùng một mặt phẳng, gồm cả mặt bằng hình thành vị trí giao nhau đó. \r\n12. Đường cao tốclà đường dành cho xe cơ giới, có dải phân cách chia đường cho xe chạy hai chiều riêng biệt; không giao nhau cùng mức với một hoặc các đường khác; được bố trí đầy đủ trang thiết bị phục vụ, bảo đảm giao thông liên tục, an toàn, rút ngắn thời gian hành trình và chỉ cho xe ra, vào ở những điểm nhất định.\r\n13.Đường chính là đường bảo đảm giao thông chủ yếu trong khu vực.\r\n14. Đường nhánhlà đường nối vào đường chính.\r\n15. Đường ưu tiên là đường mà trên đó phương tiện tham gia giao thông đường bộ được các phương tiện giao thông đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên.\r\n16. Đường gom là đường để gom hệ thống đường giao thông nội bộ của các khu đô thị, công nghiệp, kinh tế, dân cư, thương mại - dịch vụ và các đường khác vào đường chính hoặc vào đường nhánh trước khi đấu nối vào đường chính. \r\n17. Phương tiện giao thông đường bộ gồm phương tiện giao thông cơ giới đường bộ, phương tiện giao thông thô sơ đường bộ.\r\n18. Phương tiện giao thông cơ giới đường bộ (sau đây gọi là xe cơ giới) gồm xe ô tô; máy kéo; rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo; xe mô tô hai bánh; xe mô tô ba bánh; xe gắn máy (kể cả xe máy điện) và các loại xe tương tự.\r\n19. Phương tiện giao thông thô sơ đường bộ (sau đây gọi là xe thô sơ) gồm xe đạp (kể cả xe đạp máy), xe xích lô, xe lăn dùng cho người khuyết tật, xe súc vật kéo và các loại xe tương tự. \r\n20. Xe máy chuyên dùng gồm xe máy thi công, xe máy nông nghiệp, lâm nghiệp và các loại xe đặc chủng khác sử dụng vào mục đích quốc phòng, an ninh có tham gia giao thông đường bộ.\r\n21. Phương tiện tham gia giao thông đường bộ gồm phương tiện giao thông đường bộ và xe máy chuyên dùng.\r\n22. Người tham gia giao thông gồm người điều khiển, người sử dụng phương tiện tham gia giao thông đường bộ; người điều khiển, dẫn dắt súc vật; người đi bộ trên đường bộ.\r\n23. Người điều khiển phương tiện gồm người điều khiển xe cơ giới, xe thô sơ, xe máy chuyên dùng tham gia giao thông đường bộ.\r\n24. Người lái xe là người điều khiển xe cơ giới.\r\n25. Người điều khiển giao thông là cảnh sát giao thông; người được giao nhiệm vụ hướng dẫn giao thông tại nơi thi công, nơi ùn tắc giao thông, ở bến phà, tại cầu đường bộ đi chung với đường sắt.\r\n26. Hành khách là người được chở trên phương tiện vận tải hành khách đường bộ, có trả tiền.\r\n27. Hành lý là vật phẩm mà hành khách mang theo trên cùng phương tiện hoặc gửi theo phương tiện khác.\r\n28. Hàng hóa là máy móc, thiết bị, nguyên vật liệu, nhiên liệu, hàng tiêu dùng, động vật sống và các động sản khác được vận chuyển bằng phương tiện giao thông đường bộ.\r\n29. Hàng nguy hiểm là hàng hóa có chứa các chất nguy hiểm khi chở trên đường có khả năng gây nguy hại tới tính mạng, sức khỏe con người, môi trường, an toàn và an ninh quốc gia.\r\n30. Vận tải đường bộ là hoạt động sử dụng phương tiện giao thông đường bộ để vận chuyển người, hàng hóa trên đường bộ. \r\n31. Người vận tải là tổ chức, cá nhân sử dụng phương tiện giao thông đường bộ để thực hiện hoạt động vận tải đường bộ. \r\n32. Cơ quan quản lý đường bộ là cơ quan thực hiện chức năng quản lý nhà nước chuyên ngành thuộc Bộ Giao thông vận tải; cơ quan chuyên môn thuộc Ủy ban nhân dân tỉnh, thành phố trực thuộc trung ương (sau đây gọi chung là cấp tỉnh), Ủy ban nhân dân huyện, quận, thị xã, thành phố thuộc tỉnh (sau đây gọi chung là cấp huyện); Ủy ban nhân dân xã, phường, thị trấn (sau đây gọi chung là cấp xã).\r\n', '2017-07-01', 3),
(4, 'Điều 4. Nguyên tắc hoạt động giao thông đường bộ', '1. Hoạt động giao thông đường bộ phải bảo đảm thông suốt, trật tự, an toàn, hiệu quả; góp phần phát triển kinh tế - xã hội, bảo đảm quốc phòng, an ninh và bảo vệ môi trường.\r\n2. Phát triển giao thông đường bộ theo quy hoạch, từng bước hiện đại và đồng bộ; gắn kết phương thức vận tải đường bộ với các phương thức vận tải khác.\r\n3. Quản lý hoạt động giao thông đường bộ được thực hiện thống nhất trên cơ sở phân công, phân cấp trách nhiệm, quyền hạn cụ thể, đồng thời có sự phối hợp chặt chẽ giữa các bộ, ngành và chính quyền địa phương các cấp.\r\n4. Bảo đảm trật tự, an toàn giao thông đường bộ là trách nhiệm của cơ quan, tổ chức, cá nhân.\r\n5. Người tham gia giao thông phải có ý thức tự giác, nghiêm chỉnh chấp hành quy tắc giao thông, giữ gìn an toàn cho mình và cho người khác. Chủ phương tiện và người điều khiển phương tiện phải chịu trách nhiệm trước pháp luật về việc bảo đảm an toàn của phương tiện tham gia giao thông đường bộ.\r\n6. Mọi hành vi vi phạm pháp luật giao thông đường bộ phải được phát hiện, ngăn chặn kịp thời, xử lý nghiêm minh, đúng pháp luật.\r\n', '2017-07-01', 3),
(5, 'Điều 5. Chính sách phát triển giao thông đường bộ\r\n', '1. Nhà nước tập trung các nguồn lực phát triển giao thông đường bộ, ưu tiên đầu tư phát triển kết cấu hạ tầng giao thông đường bộ ở vùng kinh tế trọng điểm, các thành phố, miền núi, vùng sâu, vùng xa, biên giới, hải đảo, vùng dân tộc thiểu số; có chính sách huy động các nguồn lực để quản lý, bảo trì đường bộ.\r\n2. Nhà nước có chính sách ưu tiên phát triển vận tải hành khách công cộng; hạn chế sử dụng phương tiện giao thông cá nhân ở các thành phố.\r\n3. Nhà nước khuyến khích, tạo điều kiện cho tổ chức, cá nhân Việt Nam và nước ngoài đầu tư, kinh doanh khai thác kết cấu hạ tầng giao thông đường bộ và hoạt động vận tải đường bộ; nghiên cứu, ứng dụng khoa học, công nghệ tiên tiến và đào tạo nguồn nhân lực trong lĩnh vực giao thông đường bộ.\r\n', '2017-07-01', 3),
(6, 'Điều 6. Quy hoạch giao thông vận tải đường bộ', '1. Quy hoạch giao thông vận tải đường bộ là quy hoạch lĩnh vực chuyên ngành, gồm quy hoạch kết cấu hạ tầng, quy hoạch phương tiện giao thông và vận tải đường bộ.\r\n2. Quy hoạch giao thông vận tải đường bộ được lập trên cơ sở chiến lược phát triển kinh tế - xã hội, bảo đảm quốc phòng, an ninh và hội nhập quốc tế, đồng bộ với quy hoạch ngành, lĩnh vực; gắn kết chặt chẽ với quy hoạch các chuyên ngành giao thông vận tải khác.\r\n3. Quy hoạch giao thông vận tải đường bộ được lập cho ít nhất 10 năm và định hướng phát triển cho ít nhất 10 năm tiếp theo; được điều chỉnh phù hợp với tình hình phát triển kinh tế - xã hội trong từng giai đoạn. Việc điều chỉnh quy hoạch phải bảo đảm tính kế thừa của các quy hoạch đã được phê duyệt.\r\nQuy hoạch giao thông vận tải đường bộ sau khi được phê duyệt phải được công bố để cơ quan, tổ chức, cá nhân có liên quan biết, thực hiện và tham gia giám sát.\r\n4. Quy hoạch giao thông vận tải đường bộ phải xác định rõ mục tiêu, quan điểm, tính chất và quy mô phát triển; nhu cầu sử dụng đất, nhu cầu vốn, nguồn vốn, nguồn nhân lực; xác định danh mục các dự án, dự án ưu tiên; đánh giá tác động của quy hoạch; xác định cơ chế, chính sách và giải pháp thực hiện quy hoạch.\r\n5. Bộ Giao thông vận tải lập quy hoạch giao thông vận tải đường bộ trong phạm vi cả nước, liên vùng, vùng; quy hoạch quốc lộ, đường cao tốc trình Thủ tướng Chính phủ phê duyệt sau khi có ý kiến của các bộ, cơ quan ngang bộ và Uỷ ban nhân dân cấp tỉnh có liên quan.\r\n6. Uỷ ban nhân dân cấp tỉnh tổ chức lập, trình Hội đồng nhân dân cùng cấp quyết định quy hoạch giao thông vận tải đường bộ do địa phương quản lý, trước khi trình Hội đồng nhân dân cùng cấp quyết định phải có ý kiến của Bộ Giao thông vận tải.\r\nĐối với quy hoạch giao thông vận tải đường bộ của thành phố trực thuộc trung ương loại đô thị đặc biệt thì Uỷ ban nhân dân thành phố lập, trình Hội đồng nhân dân cùng cấp thông qua và phải có ý kiến của Bộ Giao thông vận tải, Bộ Xây dựng trước khi trình Thủ tướng Chính phủ phê duyệt.\r\n7. Quy hoạch các công trình kỹ thuật hạ tầng khác phải phù hợp, đồng bộ với quy hoạch kết cấu hạ tầng giao thông đường bộ.\r\n8. Nhà nước bảo đảm vốn ngân sách nhà nước và có chính sách huy động các nguồn vốn khác cho công tác lập quy hoạch giao thông vận tải đường bộ.\r\n', '2017-07-01', 3),
(7, 'Điều 7. Tuyên truyền, phổ biến, giáo dục pháp luật về giao thông đường bộ\r\n', '1. Cơ quan thông tin, tuyên truyền có trách nhiệm tổ chức tuyên truyền, phổ biến pháp luật về giao thông đường bộ thường xuyên, rộng rãi đến toàn dân.\r\n2. Uỷ ban nhân dân các cấp trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm tổ chức tuyên truyền, phổ biến, giáo dục pháp luật về giao thông đường bộ tại địa phương, có hình thức tuyên truyền, phổ biến phù hợp đến đồng bào các dân tộc thiểu số.\r\n3. Cơ quan quản lý nhà nước về giáo dục và đào tạo có trách nhiệm đưa pháp luật về giao thông đường bộ vào chương trình giảng dạy trong nhà trường và các cơ sở giáo dục khác phù hợp với từng ngành học, cấp học.\r\n4. Mặt trận Tổ quốc Việt Nam và các tổ chức thành viên của Mặt trận có trách nhiệm phối hợp với cơ quan hữu quan và chính quyền địa phương tuyên truyền, vận động nhân dân thực hiện pháp luật về giao thông đường bộ.\r\n5. Cơ quan, tổ chức có trách nhiệm tổ chức tuyên truyền, phổ biến, giáo dục pháp luật về giao thông đường bộ cho cán bộ, chiến sĩ, công chức, viên chức, người lao động khác thuộc thẩm quyền quản lý.\r\nThành viên trong gia đình có trách nhiệm tuyên truyền, giáo dục, nhắc nhở thành viên khác chấp hành pháp luật về giao thông đường bộ. \r\n', '2017-07-01', 3),
(8, 'Điều 8. Các hành vi bị nghiêm cấm', '1. Phá hoại đường, cầu, hầm, bến phà đường bộ, đèn tín hiệu, cọc tiêu, biển báo hiệu, gương cầu, dải phân cách, hệ thống thoát nước và các công trình, thiết bị khác thuộc kết cấu hạ tầng giao thông đường bộ.\r\n2. Đào, khoan, xẻ đường trái phép; đặt, để chướng ngại vật trái phép trên đường; đặt, rải vật nhọn, đổ chất gây trơn trên đường; để trái phép vật liệu, phế thải, thải rác ra đường; mở đường, đấu nối trái phép vào đường chính; lấn, chiếm hoặc sử dụng trái phép đất của đường bộ, hành lang an toàn đường bộ; tự ý tháo mở nắp cống, tháo dỡ, di chuyển trái phép hoặc làm sai lệch công trình đường bộ.\r\n3. Sử dụng lòng đường, lề đường, hè phố trái phép.\r\n4. Đưa xe cơ giới, xe máy chuyên dùng không bảo đảm tiêu chuẩn an toàn kỹ thuật và bảo vệ môi trường tham gia giao thông đường bộ.\r\n5. Thay đổi tổng thành, linh kiện, phụ kiện xe cơ giới để tạm thời đạt tiêu chuẩn kỹ thuật của xe khi đi kiểm định.\r\n6. Đua xe, cổ vũ đua xe, tổ chức đua xe trái phép, lạng lách, đánh võng.\r\n7. Điều khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma túy.\r\n8. Điều khiển xe ô tô, máy kéo, xe máy chuyên dùng trên đường mà trong máu hoặc hơi thở có nồng độ cồn.\r\nĐiều khiển xe mô tô, xe gắn máy mà trong máu có nồng độ cồn vượt quá 50 miligam/100 mililít máu hoặc 0,25 miligam/1 lít khí thở.\r\n9. Điều khiển xe cơ giới không có giấy phép lái xe theo quy định.\r\nĐiều khiển xe máy chuyên dùng tham gia giao thông đường bộ không có chứng chỉ bồi dưỡng kiến thức pháp luật về giao thông đường bộ, bằng hoặc chứng chỉ điều khiển xe máy chuyên dùng.\r\n10. Giao xe cơ giới, xe máy chuyên dùng cho người không đủ điều kiện để điều khiển xe tham gia giao thông đường bộ.\r\n11. Điều khiển xe cơ giới chạy quá tốc độ quy định, giành đường, vượt ẩu.\r\n12. Bấm còi, rú ga liên tục; bấm còi trong thời gian từ 22 giờ đến 5 giờ, bấm còi hơi, sử dụng đèn chiếu xa trong đô thị và khu đông dân cư, trừ các xe được quyền ưu tiên đang đi làm nhiệm vụ theo quy định của Luật này.\r\n13. Lắp đặt, sử dụng còi, đèn không đúng thiết kế của nhà sản xuất đối với từng loại xe cơ giới; sử dụng thiết bị âm thanh gây mất trật tự an toàn giao thông, trật tự công cộng.\r\n14. Vận chuyển hàng cấm lưu thông, vận chuyển trái phép hoặc không thực hiện đầy đủ các quy định về vận chuyển hàng nguy hiểm, động vật hoang dã.\r\n15. Đe dọa, xúc phạm, tranh giành, lôi kéo hành khách; bắt ép hành khách sử dụng dịch vụ ngoài ý muốn; chuyển tải, xuống khách hoặc các hành vi khác nhằm trốn tránh phát hiện xe chở quá tải, quá số người quy định.\r\n16. Kinh doanh vận tải bằng xe ô tô khi không đáp ứng đủ điều kiện kinh doanh theo quy định.\r\n17. Bỏ trốn sau khi gây tai nạn để trốn tránh trách nhiệm.\r\n18. Khi có điều kiện mà cố ý không cứu giúp người bị tai nạn giao thông.\r\n19. Xâm phạm tính mạng, sức khỏe, tài sản của người bị nạn và người gây tai nạn.\r\n20. Lợi dụng việc xảy ra tai nạn giao thông để hành hung, đe dọa, xúi giục, gây sức ép, làm mất trật tự, cản trở việc xử lý tai nạn giao thông.\r\n21. Lợi dụng chức vụ, quyền hạn, nghề nghiệp của bản thân hoặc người khác để vi phạm pháp luật về giao thông đường bộ.\r\n22. Sản xuất, sử dụng trái phép hoặc mua, bán biển số xe cơ giới, xe máy chuyên dùng.\r\n23. Hành vi vi phạm quy tắc giao thông đường bộ, hành vi khác gây nguy hiểm cho người và phương tiện tham gia giao thông đường bộ.\r\n', '2017-07-01', 3),
(9, 'Điều 9. Quy tắc chung\r\n', '1. Người tham gia giao thông phải đi bên phải theo chiều đi của mình, đi đúng làn đường, phần đường quy định và phải chấp hành hệ thống báo hiệu đường bộ.\r\n2. Xe ô tô có trang bị dây an toàn thì người lái xe và người ngồi hàng ghế phía trước trong xe ô tô phải thắt dây an toàn.\r\n', '2017-07-01', 3),
(10, 'Điều 10. Hệ thống báo hiệu đường bộ\r\n', '1. Hệ thống báo hiệu đường bộ gồm hiệu lệnh của người điều khiển giao thông; tín hiệu đèn giao thông,biển báo hiệu, vạch kẻ đường, cọc tiêu hoặc tường bảo vệ, rào chắn.\r\n2. Hiệu lệnh của người điều khiển giao thông quy định như sau: \r\na) Tay giơ thẳng đứng để báo hiệu cho người tham gia giao thông ở các hướng dừng lại;\r\nb) Hai tay hoặc một tay dang ngang để báo hiệu cho người tham gia giao thông ở phía trước và ở phía sau người điều khiển giao thông phải dừng lại; người tham gia giao thông ở phía bên phải và bên trái của người điều khiển giao thông được đi;\r\nc) Tay phải giơ về phía trước để báo hiệu cho người tham gia giao thông ở phía sau và bên phải người điều khiển giao thông phải dừng lại; người tham gia giao thông ở phía trước người điều khiển giao thông được rẽ phải; người tham gia giao thông ở phía bên trái người điểu khiển giao thông được đi tất cả các hướng; người đi bộ qua đường phải đi sau lưng người điều khiển giao thông.\r\n3. Tín hiệu đèn giao thông có ba mầu, quy định như sau:\r\na) Tín hiệu xanh là được đi;\r\nb) Tín hiệu đỏ là cấm đi;\r\nc) Tín hiệu vàng là phải dừng lại trước vạch dừng, trừ trường hợp đã đi quá vạch dừng thì được đi tiếp; trong trường hợp tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ, chú ý quan sát, nhường đường cho người đi bộ qua đường.\r\n4. Biển báo hiệu đường bộ gồm năm nhóm, quy định như sau:\r\na) Biển báo cấm để biểu thị các điều cấm;\r\nb) Biển báo nguy hiểm để cảnh báo các tình huống nguy hiểm có thể xảy ra;\r\nc) Biển hiệu lệnh để báo các hiệu lệnh phải thi hành;\r\nd) Biển chỉ dẫn để chỉ dẫn hướng đi hoặc các điều cần biết;\r\nđ) Biển phụ để thuyết minh bổ sung các loại biển báo cấm, biển báo nguy hiểm, biển hiệu lệnh và biển chỉ dẫn.\r\n5. Vạch kẻ đường là vạch chỉ sự phân chia làn đường, vị trí hoặc hướng đi, vị trí dừng lại.\r\n6. Cọc tiêu hoặc tường bảo vệ được đặt ở mép các đoạn đường nguy hiểm để hướng dẫn cho người tham gia giao thông biết phạm vi an toàn của nền đường và hướng đi của đường.\r\n7. Rào chắn được đặt ở nơi đường bị thắt hẹp, đầu cầu, đầu cống, đầu đoạn đường cấm, đường cụt không cho xe, người qua lại hoặc đặt ở những nơi cần điều khiển, kiểm soát sự đi lại.\r\n8. Bộ trưởng Bộ Giao thông vận tải quy định cụ thể về báo hiệu đường bộ.\r\n', '2017-07-01', 3),
(11, 'Điều 11. Chấp hành báo hiệu đường bộ\r\n', '1. Người tham gia giao thông phải chấp hành hiệu lệnh và chỉ dẫn của hệ thống báo hiệu đường bộ.\r\n2. Khi có người điều khiển giao thông thì người tham gia giao thông phải chấp hành hiệu lệnh của người điều khiển giao thông.\r\n3. Tại nơi có biển báo hiệu cố định lại có báo hiệu tạm thời thì người tham gia giao thông phải chấp hành hiệu lệnh của báo hiệu tạm thời.\r\n4. Tại nơi có vạch kẻ đường dành cho người đi bộ, người điều khiển phương tiện phải quan sát, giảm tốc độ và nhường đường cho người đi bộ, xe lăn của người khuyết tật qua đường.\r\nNhững nơi không có vạch kẻ đường cho người đi bộ, người điều khiển phương tiện phải quan sát, nếu thấy người đi bộ, xe lăn của người khuyết tật đang qua đường thì phải giảm tốc độ, nhường đường cho người đi bộ, xe lăn của người khuyết tật qua đường bảo đảm an toàn.\r\n', '2017-07-01', 3),
(12, 'Điều 12. Tốc độ xe và khoảng cách giữa các xe', '1. Người lái xe, người điều khiển xe máy chuyên dùng phải tuân thủ quy định về tốc độ xe chạy trên đường và phải giữ một khoảng cách an toàn đối với xe chạy liền trước xe của mình; ở nơi có biển báo \"Cự ly tối thiểu giữa hai xe\" phải giữ khoảng cách không nhỏ hơn số ghi trên biển báo.\r\n2. Bộ trưởng Bộ Giao thông vận tải quy định về tốc độ xe và việc đặt biển báo tốc độ; tổ chức thực hiện đặt biển báo tốc độ trên các tuyến quốc lộ.\r\n3. Chủ tịch Uỷ ban nhân dân cấp tỉnh tổ chức thực hiện việc đặt biển báo tốc độ trên các tuyến đường do địa phương quản lý. \r\n', '2017-07-01', 3),
(13, 'Điều 13. Sử dụng làn đường\r\n', '1. Trên đường có nhiều làn đường cho xe đi cùng chiều được phân biệt bằng vạch kẻ phân làn đường, người điều khiển phương tiện phải cho xe đi trong một làn đường và chỉ được chuyển làn đường ở những nơi cho phép; khi chuyển làn đường phải có tín hiệu báo trước và phải bảo đảm an toàn.\r\n2. Trên đường một chiều có vạch kẻ phân làn đường, xe thô sơ phải đi trên làn đường bên phải trong cùng, xe cơ giới, xe máy chuyên dùng đi trên làn đường bên trái.\r\n3. Phương tiện tham gia giao thông đường bộ di chuyển với tốc độ thấp hơn phải đi về bên phải.\r\n', '2017-07-01', 3),
(16, 'Điều 14. Vượt xe\r\n', '1. Xe xin vượt phải có báo hiệu bằng đèn hoặc còi; trong đô thị và khu đông dân cư từ 22 giờ đến 5 giờ chỉ được báo hiệu xin vượt bằng đèn.\r\n2. Xe xin vượt chỉ được vượt khi không có chướng ngại vật phía trước, không có xe chạy ngược chiều trong đoạn đường định vượt, xe chạy trước không có tín hiệu vượt xe khác và đã tránh về bên phải.\r\n3. Khi có xe xin vượt, nếu đủ điều kiện an toàn, người điều khiển phương tiện phía trước phải giảm tốc độ, đi sát về bên phải của phần đường xe chạy cho đến khi xe sau đã vượt qua, không được gây trở ngại đối với xe xin vượt.\r\n4. Khi vượt, các xe phải vượt về bên trái, trừ các trường hợp sau đây thì được phép vượt bên phải:\r\na) Khi xe phía trước có tín hiệu rẽ trái hoặc đang rẽ trái;\r\nb) Khi xe điện đang chạy giữa đường;\r\nc) Khi xe chuyên dùng đang làm việc trên đường mà không thể vượt bên trái được.\r\n5. Không được vượt xe khi có một trong các trường hợp sau đây:\r\na) Không bảo đảm các điều kiện quy định tại khoản 2 Điều này;\r\nb) Trên cầu hẹp có một làn xe;\r\nc) Đường vòng, đầu dốc và các vị trí có tầm nhìn hạn chế;\r\nd) Nơi đường giao nhau, đường bộ giao nhau cùng mức với đường sắt;\r\nđ) Khi điều kiện thời tiết hoặc đường không bảo đảm an toàn cho việc vượt;\r\ne) Xe được quyền ưu tiên đang phát tín hiệu ưu tiên đi làm nhiệm vụ.\r\n', '2017-07-01', 3),
(17, 'Điều 15. Chuyển hướng xe\r\n', '1. Khi muốn chuyển hướng, người điều khiển phương tiện phải giảm tốc độ và có tín hiệu báo hướng rẽ.\r\n2. Trong khi chuyển hướng, người lái xe, người điều khiển xe máy chuyên dùng phải nhường quyền đi trước cho người đi bộ, người đi xe đạp đang đi trên phần đường dành riêng cho họ, nhường đường cho các xe đi ngược chiều và chỉ cho xe chuyển hướng khi quan sát thấy không gây trở ngại hoặc nguy hiểm cho người và phương tiện khác.\r\n3. Trong khu dân cư, người lái xe, người điều khiển xe máy chuyên dùng chỉ được quay đầu xe ở nơi đường giao nhau và nơi có biển báo cho phép quay đầu xe.\r\n4. Không được quay đầu xe ở phần đường dành cho người đi bộ qua đường, trên cầu, đầu cầu, gầm cầu vượt, ngầm, trong hầm đường bộ, đường cao tốc, tại nơi đường bộ giao nhau cùng mức với đường sắt,đường hẹp, đường dốc, đoạn đường cong tầm nhìn bị che khuất.\r\n', '2017-07-01', 3),
(20, 'Điều 16. Lùi xe\r\n', '1. Khi lùi xe, người điều khiển phải quan sát phía sau, có tín hiệu cần thiết và chỉ khi nào thấy không nguy hiểm mới được lùi.\r\n2. Không được lùi xe ở khu vực cấm dừng, trên phần đường dành cho người đi bộ qua đường, nơi đường bộ giao nhau, đường bộ giao nhau cùng mức với đường sắt, nơi tầm nhìn bị che khuất, trong hầm đường bộ, đường cao tốc.\r\n', '2017-07-01', 3),
(21, 'Điều 17. Tránh xe đi ngược chiều\r\n', '1. Trên đường không phân chia thành hai chiều xe chạy riêng biệt, hai xe đi ngược chiều tránh nhau, người điều khiển phải giảm tốc độ và cho xe đi về bên phải theo chiều xe chạy của mình.\r\n2. Các trường hợp nhường đường khi tránh nhau quy định như sau:\r\na) Nơi đường hẹp chỉ đủ cho một xe chạy và có chỗ tránh xe thì xe nào ở gần chỗ tránh hơn phải vào vị trí tránh, nhường đường cho xe kia đi;\r\nb) Xe xuống dốc phải nhường đường cho xe đang lên dốc;\r\nc) Xe nào có chướng ngại vật phía trước phải nhường đường cho xe không có chướng ngại vật đi trước.\r\n3. Xe cơ giới đi ngược chiều gặp nhau không được dùng đèn chiếu xa.\r\n', '2017-07-01', 3),
(22, 'Điều 18. Dừng xe, đỗ xe trên đường bộ\r\n', '1. Dừng xe là trạng thái đứng yên tạm thời của phương tiện giao thông trong một khoảng thời gian cần thiết đủ để cho người lên, xuống phương tiện, xếp dỡ hàng hóa hoặc thực hiện công việc khác.\r\n2. Đỗ xe là trạng thái đứng yên của phương tiện giao thông không giới hạn thời gian.\r\n3. Người điều khiển phương tiện khi dừng xe, đỗ xe trên đường bộ phải thực hiện quy định sau đây:\r\na) Có tín hiệu báo cho người điều khiển phương tiện khác biết;\r\nb) Cho xe dừng, đỗ ở nơi có lề đường rộng hoặc khu đất ở bên ngoài phần đường xe chạy; trường hợp lề đường hẹp hoặc không có lề đường thì phải cho xe dừng, đỗ sát mép đường phía bên phải theo chiều đi của mình;\r\nc) Trường hợp trên đường đã xây dựng nơi dừng xe, đỗ xe hoặc quy định các điểm dừng xe, đỗ xe thì phải dừng, đỗ xe tại các vị trí đó;\r\nd) Sau khi đỗ xe, chỉ được rời khỏi xe khi đã thực hiện các biện pháp an toàn; nếu xe đỗ chiếm một phần đường xe chạy phải đặt ngay biển báo hiệu nguy hiểm ở phía trước và phía sau xe để người điều khiển phương tiện khác biết;\r\nđ) Không mở cửa xe, để cửa xe mở hoặc bước xuống xe khi chưa bảo đảm điều kiện an toàn;\r\ne) Khi dừng xe, không được tắt máy và không được rời khỏi vị trí lái;\r\ng) Xe đỗ trên đoạn đường dốc phải được chèn bánh.\r\n4. Người điều khiển phương tiện không được dừng xe, đỗ xe tại các vị trí sau đây:\r\na) Bên trái đường một chiều;\r\nb) Trên các đoạn đường cong và gần đầu dốc tầm nhìn bị che khuất;\r\nc) Trên cầu, gầm cầu vượt;\r\nd) Song song với một xe khác đang dừng, đỗ;\r\nđ) Trên phần đường dành cho người đi bộ qua đường;\r\ne) Nơi đường giao nhau và trong phạm vi 5 mét tính từ mép đường giao nhau;\r\ng) Nơi dừng của xe buýt;\r\nh) Trước cổng và trong phạm vi 5 mét hai bên cổng trụ sở cơ quan, tổ chức; \r\ni) Tại nơi phần đường có bề rộng chỉ đủ cho một làn xe;\r\nk) Trong phạm vi an toàn của đường sắt;\r\nl) Che khuất biển báo hiệu đường bộ.\r\n', '2017-07-01', 3),
(23, 'Điều 19. Dừng xe, đỗ xe trên đường phố\r\n', 'Người điều khiển phương tiện khi dừng xe, đỗ xe trên đường phố phải tuân theo quy định tại Điều 18 của Luật này và các quy định sau đây:\r\n1. Phải cho xe dừng, đỗ sát theo lề đường, hè phố phía bên phải theo chiều đi của mình; bánh xe gần nhất không được cách xa lề đường, hè phố quá 0,25 mét và không gây cản trở, nguy hiểm cho giao thông. Trường hợp đường phố hẹp, phải dừng xe, đỗ xe ở vị trí cách xe ô tô đang đỗ bên kia đường tối thiểu 20 mét.\r\n2. Không được dừng xe, đỗ xe trên đường xe điện, trên miệng cống thoát nước, miệng hầm của đường điện thoại, điện cao thế, chỗ dành riêng cho xe chữa cháy lấy nước. Không được để phương tiện giao thông ở lòng đường, hè phố trái quy định.\r\n', '2017-07-01', 3),
(24, 'Điều 20. Xếp hàng hóa trên phương tiện giao thông đường bộ\r\n', '1. Hàng hóa xếp trên xe phải gọn gàng, chằng buộc chắc chắn, không để rơi vãi dọc đường, không kéo lê hàng hóa trên mặt đường và không cản trở việc điều khiển xe.\r\n2. Khi xếp hàng hóa vượt phía trước và phía sau xe thì ban ngày phải có cờ báo hiệu màu đỏ, ban đêm hoặc khi trời tối phải có đèn đỏ báo hiệu.\r\n3. Bộ trưởng Bộ Giao thông vận tải quy định cụ thể việc xếp hàng hóa trên phương tiện giao thông đường bộ.\r\n', '2017-07-01', 3),
(25, 'Điều 21. Trường hợp chở người trên xe ô tô chở hàng\r\n', '1. Chỉ được chở người trên xe ô tô chở hàng trong các trường hợp sau đây:\r\na) Chở người đi làm nhiệm vụ phòng, chống thiên tai hoặc thực hiện nhiệm vụ khẩn cấp; chở cán bộ, chiến sĩ của lực lượng vũ trang nhân dân đi làm nhiệm vụ; chở người bị nạn đi cấp cứu;\r\nb) Chở công nhân duy tu, bảo dưỡng đường bộ; chở người đi thực hành lái xe trên xe tập lái; chở người diễu hành theo đoàn;\r\nc) Giải tỏa người ra khỏi khu vực nguy hiểm hoặc trong trường hợp khẩn cấp khác theo quy định của pháp luật.\r\n2. Xe ô tô chở người trong các trường hợp quy định tại khoản 1 Điều này phải có thùng cố định, bảo đảm an toàn khi tham gia giao thông.\r\n', '2017-07-01', 3),
(26, 'Điều 22. Quyền ưu tiên của một số loại xe\r\n', '1. Những xe sau đây được quyền ưu tiên đi trước xe khác khi qua đường giao nhau từ bất kỳ hướng nào tới theo thứ tự:\r\na) Xe chữa cháy đi làm nhiệm vụ;\r\nb) Xe quân sự, xe công an đi làm nhiệm vụ khẩn cấp, đoàn xe có xe cảnh sát dẫn đường; \r\nc) Xe cứu thương đang thực hiện nhiệm vụ cấp cứu;\r\nd) Xe hộ đê, xe đi làm nhiệm vụ khắc phục sự cố thiên tai, dịch bệnh hoặc xe đi làm nhiệm vụ trong tình trạng khẩn cấp theo quy định của pháp luật;\r\nđ) Đoàn xe tang.\r\n2. Xe quy định tại các điểm a, b, c và d khoản 1 Điều này khi đi làm nhiệm vụ phải có tín hiệu còi, cờ, đèn theo quy định; không bị hạn chế tốc độ; được phép đi vào đường ngược chiều, các đường khác có thể đi được, kể cả khi có tín hiệu đèn đỏ và chỉ phải tuân theo chỉ dẫn của người điều khiển giao thông.\r\nChính phủ quy định cụ thể tín hiệu của xe được quyền ưu tiên.  \r\n3. Khi có tín hiệu của xe được quyền ưu tiên, người tham gia giao thông phải nhanh chóng giảm tốc độ, tránh hoặc dừng lại sát lề đường bên phải để nhường đường. Không được gây cản trở xe được quyền ưu tiên.\r\n', '2017-07-01', 3),
(27, 'Điều 23. Qua phà, qua cầu phao\r\n', '1. Khi đến bến phà, cầu phao, các xe phải xếp hàng trật tự, đúng nơi quy định, không làm cản trở giao thông.\r\n2. Khi xuống phà, đang ở trên phà và khi lên bến, mọi người phải xuống xe, trừ người điều khiển xe cơ giới, xe máy chuyên dùng, người bệnh, người già yếu và người khuyết tật.\r\n3. Xe cơ giới, xe máy chuyên dùng phải xuống phà trước, xe thô sơ, người đi bộ xuống phà sau; khi lên bến, người đi bộ lên trước, các phương tiện giao thông lên sau theo hướng dẫn của người điều khiển giao thông.\r\n4. Thứ tự ưu tiên qua phà, qua cầu phao quy định như sau:\r\na) Các xe được quyền ưu tiên quy định tại khoản 1 Điều 22 của Luật này;\r\nb) Xe chở thư báo;\r\nc) Xe chở thực phẩm tươi sống;\r\nd) Xe chở khách công cộng.\r\nTrong trường hợp các xe cùng loại ưu tiên đến bến phà, cầu phao thì xe nào đến trước được qua trước.\r\n', '2017-07-01', 3),
(28, 'Điều 24. Nhường đường tại nơi đường giao nhau\r\n', 'Khi đến gần đường giao nhau, người điều khiển phương tiện phải cho xe giảm tốc độ và nhường đường theo quy định sau đây:\r\n1. Tại nơi đường giao nhau không có báo hiệu đi theo vòng xuyến, phải nhường đường cho xe đi đến từ bên phải;\r\n2. Tại nơi đường giao nhau có báo hiệu đi theo vòng xuyến, phải nhường đường cho xe đi bên trái;\r\n3. Tại nơi đường giao nhau giữa đường không ưu tiên và đường ưu tiên hoặc giữa đường nhánh và đường chính thì xe đi từ đường không ưu tiên hoặc đường nhánh phải nhường đường cho xe đi trên đường ưu tiên hoặc đường chính từ bất kỳ hướng nào tới.\r\n', '2017-07-01', 3),
(29, 'Điều 25. Đi trên đoạn đường bộ giao nhau cùng mức với đường sắt, cầu đường bộ đi chung với đường sắt', '1. Trên đoạn đường bộ giao nhau cùng mức với đường sắt, cầu đường bộ đi chung với đường sắt,phương tiện giao thông đường sắt được quyền ưu tiên đi trước.\r\n2. Tại nơi đường bộ giao nhau cùng mức với đường sắt có đèn tín hiệu, rào chắn và chuông báo hiệu, khi đèn tín hiệu mầu đỏ đã bật sáng, có tiếng chuông báo hiệu, rào chắn đang dịch chuyển hoặc đã đóng, người tham gia giao thông đường bộ phải dừng lại phía phần đường của mình và cách rào chắn một khoảng cách an toàn; khi đèn tín hiệu đã tắt, rào chắn mở hết, tiếng chuông báo hiệu ngừng mới được đi qua.\r\n3. Tại nơi đường bộ giao nhau cùng mức với đường sắt chỉ có đèn tín hiệu hoặc chuông báo hiệu, khi đèn tín hiệu mầu đỏ đã bật sáng hoặc có tiếng chuông báo hiệu, người tham gia giao thông đường bộ phải dừng ngay lại và giữ khoảng cách tối thiểu 5 mét tính từ ray gần nhất; khi đèn tín hiệu đã tắt hoặc tiếng chuông báo hiệu ngừng mới được đi qua.\r\n4. Tại nơi đường bộ giao nhau cùng mức với đường sắt không có đèn tín hiệu, rào chắn và chuông báo hiệu, người tham gia giao thông đường bộ phải quan sát cả hai phía, khi thấy chắc chắn không có phương tiện đường sắt đang đi tới mới được đi qua, nếu thấy có phương tiện đường sắt đang đi tới thì phải dừng lại và giữ khoảng cách tối thiểu 5 mét tính từ ray gần nhất và chỉ khi phương tiện đường sắt đã đi qua mới được đi.\r\n5. Khi phương tiện tham gia giao thông đường bộ bị hư hỏng tại nơi đường bộ giao nhau cùng mức với đường sắt hoặc trong phạm vi an toàn đường sắt thì người điều khiển phương tiện phải bằng mọi cách nhanh nhất đặt báo hiệu trên đường sắt cách tối thiểu 500 mét về hai phía để báo cho người điều khiển phương tiện đường sắt và tìm cách báo cho người quản lý đường sắt, nhà ga nơi gần nhất, đồng thời phải bằng mọi biện pháp nhanh chóng đưa phương tiện ra khỏi phạm vi an toàn đường sắt.\r\n6. Những người có mặt tại nơi phương tiện tham gia giao thông đường bộ bị hư hỏng trên đoạn đường bộ giao nhau cùng mức với đường sắt có trách nhiệm giúp đỡ người điều khiển phương tiện đưa phương tiện ra khỏi phạm vi an toàn đường sắt.\r\n', '2017-07-01', 3),
(30, 'Điều 26. Giao thông trên đường cao tốc\r\n', '1. Người lái xe, người điều khiển xe máy chuyên dùngtrên đường cao tốc ngoài việc tuân thủ các quy tắc giao thông quy định tại Luật này còn phải thực hiện cácquy định sau đây:\r\na) Khi vào đường cao tốc phải có tín hiệu xin vào và phải nhường đường cho xe đang chạy trên đường, khi thấy an toàn mới cho xe nhập vào dòng xe ở làn đường sát mép ngoài, nếu có làn đường tăng tốc thì phải cho xe chạy trên làn đường đó trước khi vào làn đường của đường cao tốc;\r\nb) Khi ra khỏi đường cao tốc phải thực hiện chuyển dần sang làn đường phía bên phải, nếu có làn đường giảm tốc thì phải cho xe chạy trên làn đường đó trước khi rời khỏi đường cao tốc;\r\nc) Không được cho xe chạy ở làn dừng xe khẩn cấp và phần lề đường;\r\nd) Không được cho xe chạy quá tốc độ tối đa và dưới tốc độ tối thiểu ghi trên biển báo hiệu, sơn kẻ trên mặt đường. \r\n2. Người lái xe, người điều khiển xe máy chuyên dùngphải cho xe chạy cách nhau một khoảng cách an toàn ghi trên biển báo hiệu. \r\n3. Chỉ được dừng xe, đỗ xe ở nơi quy định; trường hợp buộc phải dừng xe, đỗ xe không đúng nơi quy định thì người lái xe phải đưa xe ra khỏi phần đường xe chạy, nếu không thể được thì phải báo hiệu để người lái xe khác biết.\r\n4. Người đi bộ, xe thô sơ, xe gắn máy, xe mô tô và máy kéo; xe máy chuyên dùng có tốc độ thiết kế nhỏ hơn 70 km/h không được đi vào đường cao tốc, trừ người, phương tiện, thiết bị phục vụ việc quản lý, bảo trì đường cao tốc.\r\n', '2017-07-01', 3),
(31, 'Điều 27. Giao thông trong hầm đường bộ\r\n', 'Người điều khiển phương tiện trong hầm đường bộ ngoài việc tuân thủ các quy tắc giao thông quy định tại Luật này còn phải thực hiện các quy định sau đây:\r\n1. Xe cơ giới, xe máy chuyên dùng phải bật đèn; xe thô sơ phải bậtđèn hoặc có vật phát sáng báo hiệu;\r\n2. Chỉ được dừng xe, đỗ xe ở nơi quy định.\r\n', '2017-07-01', 3),
(32, 'Điều 28. Tải trọng và khổ giới hạn của đường bộ\r\n', '1. Người điều khiển phương tiện phải tuân thủ các quy định về tải trọng, khổ giới hạn của đường bộ và chịu sự kiểm tra của cơ quan có thẩm quyền.\r\n2. Trường hợp đặc biệt, xe quá tải trọng, quá khổ giới hạn của đường bộ, xe bánh xích gây hư hại mặt đường có thể được lưu hành trên đường nhưng phải được cơ quan quản lý đường bộ có thẩm quyền cấp giấy phép và phải thực hiện các biện pháp bắt buộc để bảo vệ đường bộ, bảo đảm an toàn giao thông.\r\n3. Bộ trưởng Bộ Giao thông vận tải quy định về tải trọng, khổ giới hạn của đường bộ và công bố về tải trọng, khổ giới hạn của quốc lộ; quy định việc cấp giấy phép lưu hành cho xe quá tải trọng, quá khổ giới hạn của đường bộ, xe bánh xích gây hư hại mặt đường.\r\n4. Chủ tịch Uỷ ban nhân dân cấp tỉnh công bố về tải trọng, khổ giới hạn của đường bộ do địa phương quản lý.\r\n', '2017-07-01', 3),
(33, 'Điều 29. Xe kéo xe và xe kéo rơ moóc\r\n', '1. Một xe ô tô chỉ được kéo theo một xe ô tô hoặc xe máy chuyên dùng khác khi xe này không tự chạy được và phải bảo đảm các quy định sau đây:\r\na) Xe được kéo phải có người điều khiển và hệ thống lái của xe đó phải còn hiệu lực;\r\nb) Việc nối xe kéo với xe được kéo phải bảo đảm chắc chắn, an toàn; trường hợp hệ thống hãm của xe được kéo không còn hiệu lực thì xe kéo nhau phải nối bằng thanh nối cứng;\r\nc) Phía trước của xe kéo và phía sau của xe được kéo phải có biển báo hiệu.\r\n2. Xe kéo rơ moóc phải có tổng trọng lượng lớn hơn tổng trọng lượng của rơ moóc hoặc phải có hệ thống hãm có hiệu lực cho rơ moóc.\r\n3. Không được thực hiện các hành vi sau đây:\r\na) Xe kéo rơ moóc, xe kéo sơ mi rơ moóc kéo thêm rơ moóc hoặc xe khác;\r\nb) Chở người trên xe được kéo;\r\nc) Kéo theo xe thô sơ, xe gắn máy, xe mô tô', '2017-07-01', 3),
(34, 'Điều 30. Người điều khiển, người ngồi trên xe mô tô, xe gắn máy\r\n', '1. Người điều khiển xe mô tô hai bánh, xe gắn máy chỉ được chở một người, trừ những trường hợp sau thì được chở tối đa hai người:\r\na) Chở người bệnh đi cấp cứu;\r\nb) Áp giải người có hành vi vi phạm pháp luật;\r\nc) Trẻ em dưới 14 tuổi.\r\n2. Người điều khiển, người ngồi trên xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy phải đội mũ bảo hiểm có cài quai đúng quy cách.\r\n3. Người điều khiển xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy không được thực hiện các hành vi sau đây:\r\na) Đi xe dàn hàng ngang;\r\nb) Đi xe vào phần đường dành cho người đi bộ và phương tiện khác;\r\nc) Sử dụng ô, điện thoại di động, thiết bị âm thanh, trừ thiết bị trợ thính;\r\nd) Sử dụng xe để kéo, đẩy xe khác, vật khác, mang, vác và chở vật cồng kềnh;\r\nđ) Buông cả hai tay hoặc đi xe bằng một bánh đối với xe hai bánh, bằng hai bánh đối với xe ba bánh;\r\ne) Hành vi khác gây mất trật tự, an toàn giao thông.\r\n4. Người ngồi trên xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy khi tham gia giao thông không được thực hiện các hành vi sau đây:\r\na) Mang, vác vật cồng kềnh;\r\nb) Sử dụng ô;\r\nc) Bám, kéo hoặc đẩy các phương tiện khác;\r\nd) Đứng trên yên, giá đèo hàng hoặc ngồi trên tay lái;\r\nđ) Hành vi khác gây mất trật tự, an toàn giao thông.\r\n', '2017-07-01', 3),
(35, 'Điều 31. Người điều khiển, người ngồi trên xe đạp, người điều khiển xe thô sơ khác\r\n', '1. Người điều khiển xe đạp chỉ được chở một người, trừ trường hợp chở thêm một trẻ em dưới 7 tuổi thì được chở tối đa hai người.\r\nNgười điều khiển xe đạp phải thực hiện quy định tại khoản 3 Điều 30 của Luật này; người ngồi trên xe đạp khi tham gia giao thông phải thực hiện quy định tại khoản 4 Điều 30 của Luật này.\r\n2. Người điều khiển, người ngồi trên xe đạp máy phải đội mũ bảo hiểm có cài quai đúng quy cách.\r\n3. Người điều khiển xe thô sơ khác phải cho xe đi hàng một, nơi có phần đường dành cho xe thô sơ thì phải đi đúng phần đường quy định; khi đi ban đêm phải có báo hiệu ở phía trước và phía sau xe. Người điều khiển xe súc vật kéo phải có biện pháp bảo đảm vệ sinh trên đường.\r\n4. Hàng hóa xếp trên xe thô sơ phải bảo đảm an toàn, không gây cản trở giao thông và che khuất tầm nhìn của người điều khiển.\r\n', '2017-07-01', 3),
(36, 'Điều 32. Người đi bộ\r\n', '1. Người đi bộ phải đi trên hè phố, lề đường; trường hợp đường không có hè phố, lề đường thì người đi bộ phải đi sát mép đường.\r\n2. Người đi bộ chỉ được qua đường ở những nơi có đèn tín hiệu, có vạch kẻ đường hoặc có cầu vượt, hầm dành cho người đi bộ và phải tuân thủ tín hiệu chỉ dẫn.\r\n3. Trường hợp không có đèn tín hiệu, không có vạch kẻ đường, cầu vượt, hầm dành cho người đi bộ thì người đi bộ phải quan sát các xe đang đi tới, chỉ qua đường khi bảo đảm an toàn và chịu trách nhiệm bảo đảm an toàn khi qua đường.\r\n4. Người đi bộ không được vượt qua dải phân cách, không đu bám vào phương tiện giao thông đang chạy; khi mang vác vật cồng kềnh phải bảo đảm an toàn và không gây trở ngại cho người và phương tiện tham gia giao thông đường bộ.\r\n5. Trẻ em dưới 7 tuổi khi đi qua đường đô thị, đường thường xuyên có xe cơ giới qua lại phải có người lớn dắt; mọi người có trách nhiệm giúp đỡ trẻ em dưới 7 tuổi khi đi qua đường.\r\n', '2017-07-01', 3),
(37, 'Điều 33. Người khuyết tật, người già yếu tham gia giao thông\r\n', '1. Người khuyết tật sử dụng xe lăn không có động cơ được đi trên hè phố và nơi có vạch kẻ đường dành cho người đi bộ.\r\n2. Người khiếm thị khi đi trên đường bộ phải có người dắt hoặc có công cụ để báo hiệu cho người khác nhận biết đó là người khiếm thị.\r\n3. Mọi người có trách nhiệm giúp đỡ người khuyết tật, người già yếu khi đi qua đường.\r\n', '2017-07-01', 3),
(38, 'Điều 34. Người dẫn dắt súc vật đi trên đường bộ\r\n', '1. Người dẫn dắt súc vật đi trên đường bộ phải cho súc vật đi sát mép đường và bảo đảm vệ sinh trên đường; trường hợp cần cho súc vật đi ngang qua đường thì phải quan sát và chỉ được đi qua đường khi có đủ điều kiện an toàn.\r\n2. Không được dẫn dắt súc vật đi vào phần đường dành cho xe cơ giới.\r\n', '2017-07-01', 3),
(39, 'Điều 35. Các hoạt động khác trên đường bộ\r\n', '1. Tổ chức hoạt động văn hóa, thể thao, diễu hành, lễ hội trên đường bộ thực hiện theo quy định sau đây:\r\na) Cơ quan, tổ chức có nhu cầu sử dụng đường bộ để tiến hành hoạt động văn hóa, thể thao, diễu hành, lễ hội phải được cơ quan quản lý đường bộ có thẩm quyền thống nhất bằng văn bản về phương án bảo đảm giao thông trước khi xin phép tổ chức các hoạt động trên theo quy định của pháp luật;\r\nb) Trường hợp cần hạn chế giao thông hoặc cấm đường thì cơ quan quản lý đường bộ phải ra thông báo phương án phân luồng giao thông; cơ quan, tổ chức có nhu cầu sử dụng đường bộ quy định tại điểm a khoản 1 Điều này phải thực hiện việc đăng tải thông báo trên các phương tiện thông tin đại chúng và thực hiện các biện pháp bảo đảm trật tự, an toàn cho người và phương tiện tham gia giao thông đường bộ;\r\nc) Ủy ban nhân dân nơi tổ chức hoạt động văn hóa, thể thao, diễu hành, lễ hội có trách nhiệm chỉ đạo cơ quan chức năng của địa phương tổ chức việc phân luồng, bảo đảm giao thông tại khu vực diễn ra hoạt động văn hóa, thể thao, diễu hành, lễ hội.\r\n2. Không được thực hiện các hành vi sau đây:\r\na) Họp chợ, mua, bán hàng hóa trên đường bộ;\r\nb) Tụ tập đông người trái phép trên đường bộ;\r\nc) Thả rông súc vật trên đường bộ;\r\nd) Phơi thóc, lúa, rơm rạ, nông sản hoặc để vật khác trên đường bộ;\r\nđ) Đặt biển quảng cáo trên đất của đường bộ;\r\ne) Lắp đặt biển hiệu, biển quảng cáo hoặc thiết bị khác làm giảm sự chú ý, gây nhầm lẫn nội dung biển báo hiệu hoặc gây cản trở người tham gia giao thông; \r\ng) Che khuất biển báo hiệu, đèn tín hiệu giao thông;\r\nh) Sử dụng bàn trượt, pa-tanh, các thiết bị tương tự trên phần đường xe chạy;\r\ni) Hành vi khác gây cản trở giao thông.\r\n', '2017-07-01', 3),
(40, 'Điều 36. Sử dụng đường phố và các hoạt động khác trên đường phố\r\n', '1. Lòng đường và hè phố chỉ được sử dụng cho mục đích giao thông.\r\n2. Các hoạt động khác trên đường phố phải thực hiện theo quy định tại khoản 1 Điều 35 của Luật này, trường hợp đặc biệt, việc sử dụng tạm thời một phần lòng đường, hè phố vào mục đích khác do Ủy ban nhân dân cấp tỉnh quy định nhưng không được làm ảnh hưởng đến trật tự, an toàn giao thông.\r\n3. Không được thực hiện các hành vi sau đây:\r\na) Các hành vi quy định tại khoản 2 Điều 35 của Luật này;\r\nb) Đổ rác hoặc phế thải không đúng nơi quy định;\r\nc) Xây, đặt bục, bệ trái phép trên đường.\r\n', '2017-07-01', 3),
(41, 'Điều 37. Tổ chức giao thông và điều khiển giao thông\r\n', '1. Tổ chức giao thông gồm các nội dung sau đây:\r\na) Phân làn, phân luồng, phân tuyến và quy định thời gian đi lại cho người và phương tiện tham gia giao thông đường bộ;\r\nb) Quy định các đoạn đường cấm đi, đường đi một chiều, nơi cấm dừng, cấm đỗ, cấm quay đầu xe; lắp đặt báo hiệu đường bộ;\r\nc) Thông báo khi có sự thay đổi về việc phân luồng, phân tuyến, thời gian đi lại tạm thời hoặc lâu dài; thực hiện các biện pháp ứng cứu khi có sự cố xảy ra và các biện pháp khác về đi lại trên đường bộ để bảo đảm giao thông thông suốt, an toàn.\r\n2. Trách nhiệm tổ chức giao thông quy định như sau:\r\na) Bộ trưởng Bộ Giao thông vận tải chịu trách nhiệm tổ chức giao thông trên hệ thống quốc lộ;\r\nb) Chủ tịch Ủy ban nhân dân cấp tỉnh chịu trách nhiệm tổ chức giao thông trên các hệ thống đường bộ thuộc phạm vi quản lý.\r\n3. Trách nhiệm điều khiển giao thông của cảnh sát giao thông như sau:\r\na) Chỉ huy, điều khiển giao thông trên đường; hướng dẫn, bắt buộc người tham gia giao thông chấp hành quy tắc giao thông;\r\nb) Khi có tình huống gây ách tắc giao thông hoặc có yêu cầu cần thiết khác về bảo đảm an ninh, trật tự được tạm thời đình chỉ đi lại ở một số đoạn đường nhất định, phân lại luồng, phân lại tuyến và nơi tạm dừng xe, đỗ xe.\r\n', '2017-07-01', 3),
(42, 'Điều 38. Trách nhiệm của cá nhân, cơ quan, tổ chức khi xảy ra tai nạn giao thông.\r\n', '1. Người điều khiển phương tiệnvà những người liên quan trực tiếp đến vụ tai nạn có trách nhiệm sau đây:\r\na) Dừng ngay phương tiện; giữ nguyên hiện trường; cấp cứu người bị nạn và phải có mặt khi cơ quan có thẩm quyền yêu cầu;\r\nb) Ở lại nơi xảy ra tai nạn cho đến khi người của cơ quan công an đến, trừ trường hợp người điều khiển phương tiện cũng bị thương phải đưa đi cấp cứu hoặc phải đưa người bị nạn đi cấp cứuhoặc vì lý do bị đe dọa đến tính mạng, nhưng phải đến trình báo ngay với cơ quan công an nơi gần nhất;\r\nc) Cung cấp thông tin xác thực về vụ tai nạn cho cơ quan có thẩm quyền.\r\n2. Những người có mặt tại nơi xảy ra vụ tai nạn có trách nhiệm sau đây:\r\na) Bảo vệ hiện trường;\r\nb) Giúp đỡ, cứu chữa kịp thời người bị nạn;\r\nc) Báo tin ngay cho cơ quan công an, y tế hoặc Ủy ban nhân dân nơi gần nhất;\r\nd) Bảo vệ tài sản của người bị nạn;\r\nđ) Cung cấp thông tin xác thực về vụ tai nạn theo yêu cầu của cơ quan có thẩm quyền.\r\n3. Người điều khiển phương tiện khác khi đi qua nơi xảy ra vụ tai nạn có trách nhiệm chở người bị nạn đi cấp cứu. Các xe được quyền ưu tiên, xe chở người được hưởng quyền ưu đãi, miễn trừ ngoại giao, lãnh sự không bắt buộc thực hiện quy định tại khoản này.\r\n4. Cơ quan công an khi nhận được tin về vụ tai nạn có trách nhiệm cử người tới ngay hiện trường để điều tra vụ tai nạn, phối hợp với cơ quan quản lý đường bộ và Ủy ban nhân dân địa phương bảo đảm giao thông thông suốt, an toàn.\r\n5. Ủy ban nhân dân cấp xã nơi xảy ra tai nạn có trách nhiệm kịp thời thông báo cho cơ quan công an, y tế đến để xử lý, giải quyết vụ tai nạn; tổ chức cứu chữa, giúp đỡ người bị nạn, bảo vệ hiện trường, bảo vệ tài sản của người bị nạn; trường hợp có người chết mà không rõ tung tích, không có thân nhân hoặc thân nhân không có khả năng chôn cất thì sau khi cơ quan nhà nước có thẩm quyền đã hoàn tất các công việc theo quy định của pháp luật và đồng ý cho chôn cất, Ủy ban nhân dân cấp xã có trách nhiệm tổ chức chôn cất.\r\nTrường hợp vụ tai nạn vượt quá khả năng giải quyết, Uỷ ban nhân dân cấp xã phải kịp thời báo cáo Uỷ ban nhân dân cấp trên.\r\n6. Bộ Công an có trách nhiệm thống kê, tổng hợp, xây dựng cơ sở dữ liệu thông tin về tai nạn giao thông đường bộ, cung cấp cho cơ quan, tổ chức, cá nhân theo quy định của pháp luật.\r\n', '2017-07-01', 3),
(43, 'Điều 58. Điều kiện của người lái xe tham gia giao thông\r\n', '1. Người lái xe tham gia giao thông phải đủ độ tuổi, sức khoẻ quy định tại Điều 60 của Luật này vàcó giấy phép lái xe phù hợp với loại xe được phép điều khiển do cơ quan nhà nước có thẩm quyền cấp.\r\nNgười tập lái xe ô tô khi tham gia giao thông phải thực hành trên xe tập lái và có giáo viên bảo trợ tay lái.\r\n2. Người lái xe khi điều khiển phương tiện phải mang theo các giấy tờ sau:\r\na) Đăng ký xe;\r\nb) Giấy phép lái xe đối với người điều khiển xe cơ giới quy định tại Điều 59 của Luật này;\r\nc) Giấy chứng nhận kiểm định an toàn kỹ thuật và bảo vệ môi trường đối với xe cơ giới quy định tại Điều 55 của Luật này;\r\nd) Giấy chứng nhận bảo hiểm trách nhiệm dân sự của chủ xe cơ giới.\r\n', '2017-07-01', 3),
(44, 'Điều 59. Giấy phép lái xe\r\n', '1. Căn cứ vào kiểu loại, công suất động cơ, tải trọng và công dụng của xe cơ giới, giấy phép lái xe được phân thành giấy phép lái xe không thời hạn và giấy phép lái xe có thời hạn. \r\n2. Giấy phép lái xe không thời hạn bao gồm các hạng sau đây:\r\na) Hạng A1 cấp cho người lái xe mô tô hai bánh có dung tích xi-lanh từ 50 cm3 đến dưới 175 cm3;\r\nb) Hạng A2 cấp cho người lái xe mô tô hai bánh có dung tích xi-lanh từ 175 cm3 trở lên và các loại xe quy định cho giấy phép lái xe hạng A1;\r\nc) Hạng A3 cấp cho người lái xe mô tô ba bánh, các loại xe quy định cho giấy phép lái xe hạng A1 và các xe tương tự.\r\n3. Người khuyết tật điều khiểnxe mô tô ba bánh dùng cho người khuyết tật được cấp giấy phép lái xe hạng A1.\r\n4. Giấy phép lái xe có thời hạn gồm các hạng sau đây:\r\na) Hạng A4 cấp cho người lái máy kéo có trọng tải đến 1.000 kg;\r\nb) Hạng B1 cấp cho người không hành nghề lái xe điều khiển xe ô tô chở người đến 9 chỗ ngồi; xe ô tô tải, máy kéo có trọng tải dưới 3.500 kg;\r\nc) Hạng B2 cấp cho người hành nghề lái xe điều khiển xe ô tô chở người đến 9 chỗ ngồi; xe ô tô tải, máy kéo có trọng tải dưới 3.500 kg;\r\nd) Hạng C cấp cho người lái xe ô tô tải, máy kéo có trọng tải từ 3.500 kg trở lên và các loại xe quy định cho các giấy phép lái xe hạng B1, B2;\r\nđ) Hạng D cấp cho người lái xe ô tô chở người từ 10 đến 30 chỗ ngồi và các loại xe quy định cho các giấy phép lái xe hạng B1, B2, C;\r\ne) Hạng E cấp cho người lái xe ô tô chở người trên 30 chỗ ngồi và các loại xe quy định cho các giấy phép lái xe hạng B1, B2, C, D;\r\ng) Giấy phép lái xe hạng FB2, FD, FE cấp cho người lái xe đã có giấy phép lái xe hạng B2, D, E để lái các loại xe quy định cho các giấy phép lái xe hạng này khi kéo rơ moóc hoặc xe ô tô chở khách nối toa; hạng FC cấp cho người lái xe đã có giấy phép lái xe hạng C để lái các loại xe quy định cho hạng C khi kéo rơ moóc, đầu kéo kéo sơ mi rơ moóc. \r\n5. Giấy phép lái xe có giá trị sử dụng trong phạm vi lãnh thổ Việt Nam và lãnh thổ của nước hoặc vùng lãnh thổ mà Việt Nam ký cam kết công nhận giấy phép lái xe của nhau.\r\n', '2017-07-01', 3);
INSERT INTO `laws` (`LawID`, `LawTitle`, `LawDetail`, `LawTimeRelease`, `CategoryID`) VALUES
(45, 'Điều 60. Tuổi, sức khỏe của người lái xe\r\n', '1. Độ tuổi của người lái xe quy định như sau:\r\na) Người đủ 16 tuổi trở lên được lái xe gắn máy có dung tích xi-lanh dưới 50 cm3;\r\nb) Người đủ 18 tuổi trở lên được lái xe mô tô hai bánh, xe mô tô ba bánh có dung tích xi-lanh từ 50 cm3 trở lên và các loại xe có kết cấu tương tự; xe ô tô tải, máy kéo có trọng tải dưới 3.500 kg; xe ô tô chở người đến 9 chỗ ngồi;\r\nc) Người đủ 21 tuổi trở lên được lái xe ô tô tải, máy kéo có trọng tải từ 3.500 kg trở lên; lái xe hạng B2 kéo rơ moóc (FB2);\r\nd) Người đủ 24 tuổi trở lên được lái xe ô tô chở người từ 10 đến 30 chỗ ngồi; lái xe hạng C kéo rơ moóc, sơ mi rơ moóc (FC);\r\nđ) Người đủ 27 tuổi trở lên được lái xe ô tô chở người trên 30 chỗ ngồi; lái xe hạng D kéo rơ moóc (FD);\r\ne) Tuổi tối đa của người lái xe ô tô chở người trên 30 chỗ ngồi là 50 tuổi đối với nữ và 55 tuổi đối với nam.\r\n2. Người lái xe phải có sức khỏe phù hợp với loại xe, công dụng của xe. Bộ trưởng Bộ Y tế chủ trì, phối hợp với Bộ trưởng Bộ Giao thông vận tải quy định về tiêu chuẩn sức khỏe của người lái xe, việc khám sức khỏe định kỳ đối với người lái xe ô tô và quy định về cơ sở y tế khám sức khoẻ của người lái xe.\r\n', '2017-07-01', 3),
(46, 'Điều 61. Đào tạo lái xe, sát hạch để cấp giấy phép lái xe\r\n', '1. Cơ sở đào tạo lái xe là loại hình cơ sở dạy nghề, phải có đủ điều kiện về lớp học, sân tập lái, xe tập lái, đội ngũ giáo viên, giáo trình, giáo án và phải được giấy cấp phép theo quy định.\r\n2. Cơ sở đào tạo lái xe phải thực hiện đúng nội dung và chương trình quy định cho từng loại, hạng giấy phép lái xe.\r\n3. Người có nhu cầu được cấp giấy phép lái xe hạng A1, A2, A3, A4, B1 phải được đào tạo. Người có nhu cầu được cấp giấy phép lái xe hạng B2, C, D, E và các giấy phép lái xe hạng F phải được đào tạo tập trung tại cơ sở đào tạo.\r\n4. Việc đào tạo để nâng hạng giấy phép lái xe thực hiện cho những trường hợp sau đây:\r\na) Nâng hạng giấy phép lái xe từ hạng B1 lên hạng B2;\r\nb) Nâng hạng giấy phép lái xe từ hạng B2 lên hạng C hoặc lên hạng D;\r\nc) Nâng hạng giấy phép lái xe từ hạng C lên hạng D hoặc lên hạng E;\r\nd) Nâng hạng giấy phép lái xe từ hạng D lên hạng E;\r\nđ) Nâng hạng giấy phép lái xe từ các hạng B2, C, D, E lên các hạng giấy phép lái các xe tương ứng có kéo rơ moóc, sơ mi rơ moóc.\r\n5. Người có nhu cầu được đào tạo nâng hạng giấy phép lái xe theo quy định tại khoản 4 Điều này còn phải có đủ thời gian và số ki-lô-mét lái xe an toàn quy định cho từng hạng giấy phép lái xe; người có nhu cầu được đào tạo nâng hạng giấy phép lái xe lên hạng D, E tối thiểu phải có trình độ văn hóa trung học cơ sở.\r\n6. Việc đào tạo lái xe ô tô chở người từ 10 chỗ ngồi trở lên và lái xe kéo rơ moóc chỉ được thực hiện bằng hình thức đào tạo nâng hạng với các điều kiện quy định tại khoản 4 và khoản 5 Điều này.\r\n7. Việc sát hạch để cấp giấy phép lái xe ô tô phải thực hiện tại các trung tâm sát hạch lái xe. Các trung tâm sát hạch lái xe phải được xây dựng theo quy hoạch, có đủ cơ sở vật chất - kỹ thuật đáp ứng yêu cầu sát hạch lái xe theo quy định.\r\n8. Người sát hạch lái xe phải có thẻ sát hạch viên theo quy định và phải chịu trách nhiệm về kết quả sát hạch của mình.\r\n9. Người đã qua đào tạo và đạt kết quả kỳ sát hạch được cấp giấy phép lái xe đúng hạng đã trúng tuyển.\r\nTrường hợp giấy phép lái xe có thời hạn, trước khi hết thời hạn sử dụng người lái xe phải khám sức khỏe và làm các thủ tục theo quy định để được đổi giấy phép lái xe.\r\n10. Bộ trưởng Bộ Giao thông vận tải quy định điều kiện, tiêu chuẩn và cấp giấy phép cho cơ sở đào tạo; quy định hình thức, nội dung, chương trình đào tạo; sát hạch và cấp, đổi, thu hồi giấy phép lái xe; Bộ trưởng Bộ Quốc phòng, Bộ trưởng Bộ Công an quy định về cơ sở đào tạo, tổ chức đào tạo, sát hạch và cấp, đổi, thu hồi giấy phép lái xe cho lực lượng quân đội, công an làm nhiệm vụ quốc phòng, an ninh.\r\n', '2017-07-01', 3),
(47, 'Điều 62. Điều kiện của người điều khiển xe máy chuyên dùng tham gia giao thông\r\n', '1. Người điều khiển xe máy chuyên dùng tham gia giao thông phải đủ độ tuổi, sức khỏe phù hợp với ngành nghề lao động và có chứng chỉ bồi dưỡng kiến thức pháp luật về giao thông đường bộ, bằng hoặc chứng chỉ điều khiển xe máy chuyên dùng do cơ sở đào tạo người điều khiển xe máy chuyên dùng cấp.\r\n2. Người điều khiển xe máy chuyên dùng khi tham gia giao thông phải mang theo các giấy tờ sau đây:\r\na) Đăng ký xe;\r\nb) Chứng chỉ bồi dưỡng kiến thức pháp luật về giao thông đường bộ, bằng hoặc chứng chỉ điều khiển xe máy chuyên dùng;\r\nc) Giấy chứng nhận kiểm định an toàn kỹ thuật và bảo vệ môi trường đối với xe máy chuyên dùng quy định tại Điều 57 của Luật này.\r\n', '2017-07-01', 3),
(48, 'Điều 1. Phạm vi điều chỉnh', 'Luật này quy định về hoạt động giao thông đường thủy nội địa; các điều kiện bảo đảm an toàn giao thông đường thuỷ nội địa đối với kết cấu hạ tầng, phương tiện và người tham gia giao thông, vận tải đường thuỷ nội địa.', '2005-01-01', 5),
(49, 'Điều 1. Phạm vi điều chỉnh', 'Luật này quy định về quy hoạch, đầu tư, xây dựng, bảo vệ, quản lý, bảo trì và phát triển kết cấu hạ tầng đường sắt; công nghiệp đường sắt, phương tiện giao thông đường sắt; tín hiệu, quy tắc giao thông và bảo đảm trật tự, an toàn giao thông đường sắt; kinh doanh đường sắt; quyền và nghĩa vụ của tổ chức, cá nhân có liên quan đến hoạt động đường sắt; quản lý nhà nước về hoạt động đường sắt.', '2005-01-01', 4),
(50, 'Điều 2. Đối tượng áp dụng', 'Luật này áp dụng đối với tổ chức, cá nhân liên quan đến hoạt động giao thông đường thuỷ nội địa.\r\n\r\nTrường hợp điều ước quốc tế mà Cộng hoà xã hội chủ nghĩa Việt Nam ký kết hoặc gia nhập có quy định khác với Luật này thì áp dụng quy định của điều ước quốc tế đó.', '2005-01-01', 4);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `QuestionID` int(11) NOT NULL,
  `QuestionDetail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `CategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`QuestionID`, `QuestionDetail`, `CategoryID`) VALUES
(1, 'Khái niệm đường bộ được hiểu thế nào? Đường bộ gồm:', 1),
(2, 'Cơ quan nào quy định các đoạn đường cấm đi, đường đi một chiều, nơi cấm dừng, cấm đõ, cấp quay đầu xe, lắp đặt báo hiệu đường bộ thuộc địa phương quản lý?\r\n', 1),
(3, 'Người điều khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma túy có bị nghiêm cấm hay không?\r\n', 1),
(4, 'Đảm bảo trật tự, an toàn giao thông đường bộ là trách nhiệm của ai?\r\n', 1),
(5, 'Trên đường có nhiều làn đường, người điều kiển phương tiện tham gia giao thông sử dụng làn đường như thế nào là đúng?\r\n', 1),
(6, 'Tại nơi đường giao nhau, người lái xe đang đi trên đuognừ không ưu tiên phải nhường đường như thế nào?\r\n', 1),
(7, 'Khi Điều khiển xe chạy trên đường người lái xe phải mang theo các loại giấy tờ gì?\r\n', 1),
(8, 'Biển nào cấm người đi bộ?', 1),
(9, 'Biển báo nào báo hiệu nguy hểm giao nhau với đường sắt?\r\n', 1),
(10, 'Biển nào báo hiệu giao nhau với đường ưu tiên?\r\n', 1),
(11, 'Biển nào báo hiệu cấm xe mô tô ba bánh đi vào?\r\n', 1),
(12, ' Biển nào cấm quay xe?', 1),
(13, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?\r\n', 1),
(14, 'Xe nào được quyền đi trước?', 1),
(15, 'Trong hình dưới đây, xe nào chấp hành đúng quy tắc giao thông?\r\n', 1),
(16, 'Vạch kẻ đường được hiểu như thế nào là đúng?\r\n', 1),
(17, 'Khái niệm phương tiện giao thông cơ giới đường bộ được hiểu thế nào là đúng?', 1),
(18, 'Người điều khiển xe mô tô, xe gắn máy trên đường mà mấu trong có nồng độ còn vượt quá bao nhiêu thì bị cấm?\r\n', 1),
(19, 'Ngươi lái xe làm gì khi điều khiển xe ra khỏi đường cao tốc?\r\n', 1),
(20, 'Tại nơi đường giao nhau, khi đèn điều khiển giao thông có tín hiệu vàng, người điều khiển phương tiện phải thực hiện như thế nào?', 1),
(21, 'Tại nơi đường giao nhau không có báo hiệu đi theo vòng xuyến, người điều khiển phương tiện phải nhường đường như thế nào là đúng quy tắc giao thông?\r\n', 1),
(22, 'Người đủ bao nhiêu tuổi trở lên thì được điều khiển xe mô tô 2 bánh, mô tô 3 bánh có dung tích xi lanh từ 50CM2 trở lên và các loại xe có kết cấu tương tự; xe ô tô tải dưới 3,5 tấn, xe ô tô chở người đến 9 chỗ?\r\n', 1),
(23, 'Gặp biển báo nào người lái xe phải nhường đường cho người đi bộ?\r\n', 1),
(24, 'Biển bào báo hiệu đường sắt giao nhau với đường bộ không có rào chắn?\r\n', 1),
(25, 'Biển nào báo hiệu đường giao nhau của các tuyết đường cùng cấp?\r\n', 1),
(26, ' Biển báo nào báo hiệu cấp xe mô tô 2 bánh đi vào?\r\n', 1),
(27, ' Biển báo nào cấm xe rẽ trái ?', 1),
(28, 'Theo tín hiệu đèn, xe nào phải dừng lại là đúng quy tắc giao thông?\r\n', 1),
(29, 'Theo hướng mũi tên, nhường hướng nào xe gắn máy đi được?\r\n', 1),
(30, 'Theo hướng mũi tên, những hướng nào xe mô tô được phép đi?\r\n', 1),
(31, 'Khái niệm đường bộ được hiểu thế nào? Đường bộ gồm:', 2),
(32, 'Cơ quan nào quy định các đoạn đường cấm đi, đường đi một chiều, nơi cấm dừng, cấm đõ, cấp quay đầu xe, lắp đặt báo hiệu đường bộ thuộc địa phương quản lý?\r\n', 2),
(33, 'Người điều khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma túy có bị nghiêm cấm hay không?\r\n', 2),
(34, 'Đảm bảo trật tự, an toàn giao thông đường bộ là trách nhiệm của ai?\r\n', 2),
(35, 'Trên đường có nhiều làn đường, người điều kiển phương tiện tham gia giao thông sử dụng làn đường như thế nào là đúng?\r\n', 2),
(36, 'Tại nơi đường giao nhau, người lái xe đang đi trên đuognừ không ưu tiên phải nhường đường như thế nào?\r\n', 2),
(37, 'Khi Điều khiển xe chạy trên đường người lái xe phải mang theo các loại giấy tờ gì?\r\n', 2),
(38, 'Biển nào cấm người đi bộ?', 1),
(39, 'Biển báo nào báo hiệu nguy hểm giao nhau với đường sắt?\r\n', 2),
(40, 'Biển nào báo hiệu giao nhau với đường ưu tiên?\r\n', 2),
(41, 'Biển nào báo hiệu cấm xe mô tô ba bánh đi vào?\r\n', 2),
(42, ' Biển nào cấm quay xe?', 2),
(43, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?\r\n', 2),
(44, 'Xe nào được quyền đi trước?', 2),
(45, 'Trong hình dưới đây, xe nào chấp hành đúng quy tắc giao thông?\r\n', 2),
(46, 'Vạch kẻ đường được hiểu như thế nào là đúng?\r\n', 2),
(47, 'Khái niệm phương tiện giao thông cơ giới đường bộ được hiểu thế nào là đúng?', 2),
(48, 'Người điều khiển xe mô tô, xe gắn máy trên đường mà mấu trong có nồng độ còn vượt quá bao nhiêu thì bị cấm?\r\n', 2),
(49, 'Ngươi lái xe làm gì khi điều khiển xe ra khỏi đường cao tốc?\r\n', 2),
(50, 'Tại nơi đường giao nhau, khi đèn điều khiển giao thông có tín hiệu vàng, người điều khiển phương tiện phải thực hiện như thế nào?', 2),
(51, 'Tại nơi đường giao nhau không có báo hiệu đi theo vòng xuyến, người điều khiển phương tiện phải nhường đường như thế nào là đúng quy tắc giao thông?\r\n', 2),
(52, 'Người đủ bao nhiêu tuổi trở lên thì được điều khiển xe mô tô 2 bánh, mô tô 3 bánh có dung tích xi lanh từ 50CM2 trở lên và các loại xe có kết cấu tương tự; xe ô tô tải dưới 3,5 tấn, xe ô tô chở người đến 9 chỗ?\r\n', 2),
(53, 'Gặp biển báo nào người lái xe phải nhường đường cho người đi bộ?\r\n', 2),
(54, 'Biển bào báo hiệu đường sắt giao nhau với đường bộ không có rào chắn?\r\n', 2),
(55, 'Biển nào báo hiệu đường giao nhau của các tuyết đường cùng cấp?\r\n', 2),
(56, ' Biển báo nào báo hiệu cấp xe mô tô 2 bánh đi vào?\r\n', 2),
(57, ' Biển báo nào cấm xe rẽ trái ?', 2),
(58, 'Theo tín hiệu đèn, xe nào phải dừng lại là đúng quy tắc giao thông?\r\n', 2),
(59, 'Theo hướng mũi tên, nhường hướng nào xe gắn máy đi được?\r\n', 2),
(60, 'Theo hướng mũi tên, những hướng nào xe mô tô được phép đi?\r\n', 2);

-- --------------------------------------------------------

--
-- Table structure for table `trafficsigns`
--

CREATE TABLE `trafficsigns` (
  `TrafficSignID` int(11) NOT NULL,
  `TrafficLink` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TrafficTitle` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TrafficDetail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserID` int(11) NOT NULL,
  `Gender` tinyint(4) NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CreatedTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserName`, `UserID`, `Gender`, `Email`, `Password`, `CreatedTime`) VALUES
(NULL, 1, 1, 'nkb.bang@gmail.com', 'abc123', '2018-06-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`AnswerID`),
  ADD KEY `FK_Answers_Questions` (`QuestionID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `examdetails`
--
ALTER TABLE `examdetails`
  ADD PRIMARY KEY (`ExamDetailID`),
  ADD KEY `FK_ExamDetails_Answers` (`AnswerID`),
  ADD KEY `FK_ExamDetails_Exams` (`ExamID`),
  ADD KEY `FK_ExamDetails_Questions` (`QuestionID`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`ExamID`),
  ADD KEY `FK_Exams_Users` (`UserID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ImageID`),
  ADD KEY `FK_Images_Questions` (`QuestionID`);

--
-- Indexes for table `laws`
--
ALTER TABLE `laws`
  ADD PRIMARY KEY (`LawID`),
  ADD KEY `FK_Laws_Categories` (`CategoryID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`QuestionID`),
  ADD KEY `FK_Questions_Categories` (`CategoryID`);

--
-- Indexes for table `trafficsigns`
--
ALTER TABLE `trafficsigns`
  ADD PRIMARY KEY (`TrafficSignID`),
  ADD KEY `FK_TrafficSigns_Categories` (`CategoryID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `AnswerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `examdetails`
--
ALTER TABLE `examdetails`
  MODIFY `ExamDetailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `ExamID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `ImageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `laws`
--
ALTER TABLE `laws`
  MODIFY `LawID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `FK_Answers_Questions` FOREIGN KEY (`QuestionID`) REFERENCES `questions` (`QuestionID`);

--
-- Constraints for table `examdetails`
--
ALTER TABLE `examdetails`
  ADD CONSTRAINT `FK_ExamDetails_Answers` FOREIGN KEY (`AnswerID`) REFERENCES `answers` (`AnswerID`),
  ADD CONSTRAINT `FK_ExamDetails_Exams` FOREIGN KEY (`ExamID`) REFERENCES `exams` (`ExamID`),
  ADD CONSTRAINT `FK_ExamDetails_Questions` FOREIGN KEY (`QuestionID`) REFERENCES `questions` (`QuestionID`);

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `FK_Exams_Users` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_Images_Questions` FOREIGN KEY (`QuestionID`) REFERENCES `questions` (`QuestionID`);

--
-- Constraints for table `laws`
--
ALTER TABLE `laws`
  ADD CONSTRAINT `FK_Laws_Categories` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `FK_Questions_Categories` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`);

--
-- Constraints for table `trafficsigns`
--
ALTER TABLE `trafficsigns`
  ADD CONSTRAINT `FK_TrafficSigns_Categories` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
