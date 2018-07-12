-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2018 at 04:01 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

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
(5, 'abc', 2, 1),
(6, 'Cơ quan cảnh sát giao thông đường bộ.\r\n', 2, 0),
(7, 'Thanh tra giao thông đường bộ', 2, 0),
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
(240, 'Hướng 2 và hướng 3.', 60, 0),
(241, 'âsasasas', 61, 1),
(242, 'âsasasasâsasa', 61, 0),
(243, 'âsasasasâsasaư1212', 61, 0),
(244, 'âsasasasâsasaư12121', 61, 0),
(245, '1', 63, 0),
(246, '2', 63, 0),
(247, '3', 63, 0),
(248, '4', 63, 1);

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
(5, 'Đường Thủy', 'Đường Thủy'),
(6, 'Biển Báo Cấm', NULL),
(7, 'Biển Báo Chỉ Dẫn', NULL),
(8, 'Biển Báo Hiệu Lệnh', NULL),
(9, 'Biển Báo Nguy Hiểm', NULL);

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

--
-- Dumping data for table `examdetails`
--

INSERT INTO `examdetails` (`ExamDetailID`, `ExamID`, `QuestionID`, `AnswerID`) VALUES
(21, 12, 1, 1),
(22, 12, 7, 26),
(23, 12, 10, 39),
(24, 12, 11, 43),
(25, 12, 12, 47),
(26, 12, 14, 55),
(27, 16, 1, 1),
(28, 17, 1, 3),
(29, 17, 22, 86),
(30, 19, 9, 33),
(31, 20, 1, 1),
(32, 20, 4, 14),
(33, 20, 5, 17),
(34, 20, 7, 26),
(35, 20, 8, 30),
(36, 20, 12, 46),
(37, 20, 13, 50),
(38, 20, 15, 58),
(39, 20, 16, 62),
(40, 20, 17, 65),
(41, 20, 18, 69),
(42, 20, 20, 77),
(43, 20, 25, 97),
(44, 21, 1, 1),
(45, 21, 6, 22),
(46, 21, 7, 26),
(47, 21, 8, 30),
(48, 21, 12, 46),
(49, 22, 1, 3),
(50, 22, 7, 28),
(51, 22, 10, 38),
(52, 22, 11, 43),
(53, 22, 12, 46),
(54, 22, 13, 50),
(55, 23, 3, 9),
(56, 23, 10, 38),
(57, 23, 13, 50),
(58, 23, 15, 58),
(59, 24, 3, 9),
(60, 24, 5, 19),
(61, 24, 6, 21),
(62, 24, 7, 27),
(63, 24, 10, 38),
(64, 24, 11, 42),
(65, 24, 13, 51),
(66, 24, 15, 59),
(67, 24, 16, 63),
(68, 24, 18, 70),
(69, 24, 19, 74),
(70, 24, 20, 77),
(71, 25, 1, 1),
(72, 25, 10, 38),
(73, 25, 12, 47),
(74, 25, 17, 68),
(75, 25, 18, 70),
(76, 25, 19, 74),
(77, 26, 14, 54),
(78, 27, 8, 29),
(79, 27, 10, 38),
(80, 27, 11, 42),
(81, 27, 12, 45),
(82, 27, 13, 50),
(83, 27, 14, 54),
(84, 27, 15, 58),
(85, 29, 2, 5),
(86, 29, 9, 34),
(87, 30, 1, 1),
(88, 31, 1, 2),
(89, 31, 5, 18),
(90, 31, 6, 23),
(91, 31, 10, 39),
(92, 31, 11, 42),
(93, 32, 16, 62),
(94, 32, 19, 73),
(95, 32, 23, 91),
(96, 33, 1, 2),
(97, 33, 2, 4),
(98, 33, 4, 13),
(99, 33, 5, 18),
(100, 33, 6, 21),
(101, 33, 8, 29),
(102, 33, 9, 33),
(103, 33, 13, 49),
(104, 33, 16, 61),
(105, 33, 17, 184),
(106, 33, 19, 74),
(107, 33, 20, 79),
(108, 33, 22, 86),
(109, 33, 38, 120),
(110, 34, 11, 41),
(111, 34, 14, 55),
(112, 34, 17, 65),
(113, 34, 20, 77),
(114, 34, 24, 93),
(115, 34, 26, 101),
(116, 38, 13, 49),
(117, 38, 15, 58),
(118, 38, 18, 70),
(119, 38, 20, 78),
(120, 38, 22, 86),
(121, 38, 26, 101),
(122, 38, 28, 109),
(123, 38, 38, 149);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `ExamID` int(11) NOT NULL,
  `CreatedTime` date NOT NULL,
  `UserID` int(11) NOT NULL,
  `Score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`ExamID`, `CreatedTime`, `UserID`, `Score`) VALUES
(12, '2018-07-02', 3, 1),
(16, '2018-07-03', 3, 0),
(17, '2018-07-03', 3, 1),
(19, '2018-07-03', 3, 0),
(20, '2018-07-06', 3, 4),
(21, '2018-07-06', 3, 0),
(22, '2018-07-06', 3, 3),
(23, '2018-07-06', 3, 3),
(24, '2018-07-06', 3, 5),
(25, '2018-07-06', 3, 3),
(26, '2018-07-06', 3, 1),
(27, '2018-07-06', 3, 4),
(28, '2018-07-06', 3, 0),
(29, '2018-07-09', 4, 1),
(30, '2018-07-09', 6, 0),
(31, '2018-07-09', 3, 3),
(32, '2018-07-09', 3, 1),
(33, '2018-07-12', 8, 4),
(34, '2018-07-12', 17, 2),
(35, '2018-07-12', 8, 0),
(36, '2018-07-12', 8, 0),
(37, '2018-07-12', 8, 0),
(38, '2018-07-12', 8, 4),
(39, '2018-07-12', 3, 0),
(40, '2018-07-12', 3, 0),
(41, '2018-07-12', 3, 0),
(42, '2018-07-12', 3, 0),
(43, '2018-07-12', 3, 0);

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
(50, 'Điều 2. Đối tượng áp dụng', 'Luật này áp dụng đối với tổ chức, cá nhân liên quan đến hoạt động giao thông đường thuỷ nội địa.\r\n\r\nTrường hợp điều ước quốc tế mà Cộng hoà xã hội chủ nghĩa Việt Nam ký kết hoặc gia nhập có quy định khác với Luật này thì áp dụng quy định của điều ước quốc tế đó.', '2005-01-01', 4),
(51, '42/2017/TT-BGTVT - Quy định điều kiện', 'Quy định điều kiện của người điều khiển phương tiện, nhân viên phục vụ, trang thiết bị, chất lượng dịch vụ trên phương tiện vận tải khách du lịch', '2017-11-15', 5),
(52, '15/2017/TT-BGTVT - Ban hành Quy chuẩn', 'Ban hành Quy chuẩn kỹ thuật quốc gia về phân cấp và đóng phương tiện thủy nội địa vỏ thép chở xô hóa chất nguy hiểm', '2017-05-15', 5),
(53, '10/2017/TT-BGTVT Ban hành quy chuẩn kỹ', 'Ban hành quy chuẩn kỹ thuật quốc gia về thiết bị nâng trên các công trình biển', '2017-04-04', 5),
(54, '09/2017/TT-BGTVT Ban hành quy chuẩn kỹ', 'Ban hành quy chuẩn kỹ thuật quốc gia về thiết bị nâng trên các phương tiện thủy nội địa', '2017-03-20', 5),
(55, '02/2017/TT-BGTVT Sửa đổi, bổ sung một', 'Sửa đổi, bổ sung một số điều của Thông tư số 56/2014/TT-BGTVT ngày 24 tháng 10 năm 2014 của Bộ trưởng Bộ Giao thông vận tải quy định thi, kiểm tra, cấp, cấp lại, chuyển đổi giấy chứng nhận khả năng chuyên môn, chứng chỉ chuyên môn thuyền viên, người', '2017-01-20', 5),
(56, '04/2017/TT-BGTVT THÔNG TƯ SỐ 04/2017', 'THÔNG TƯ SỐ 04/2017/TT-BGTVT NGÀY 20/01/2017 SỬA ĐỔI, BỔ SUNG MỘT SỐ ĐIỀU CỦA THÔNG TƯ SỐ 47/2015/TT-BGTVT NGÀY 14 THÁNG 9 NĂM 2015 CỦA BỘ TRƯỞNG BỘ GIAO THÔNG VẬN TẢI QUY ĐỊNH PHẠM VI, TRÁCH NHIỆM CỦA THUYỀN VIÊN, NGƯỜI LÁI PHƯƠNG TIỆN VÀ ĐỊNH BIÊN', '2017-01-20', 5),
(57, '03/2017/TT-BGTVT Quy định nội dung', 'Quy định nội dung, chương trình đào tạo thuyền viên, người lái phương tiện thủy nội địa', '2017-01-20', 5),
(58, '12/2016/TT-BGTVT - HƯỚNG DẪN THI HÀNH', 'HƯỚNG DẪN THI HÀNH MỘT SỐ ĐIỀU CỦA NGHỊ ĐỊNH SỐ 132/2015/NĐ-CP NGÀY 25 THÁNG 12 NĂM 2015 CỦA CHÍNH PHỦ QUY ĐỊNH XỬ PHẠT VI PHẠM HÀNH CHÍNH TRONG LĨNH VỰC GIAO THÔNG ĐƯỜNG THỦY NỘI ĐỊA', '2016-06-09', 5),
(59, '59/2015/TT-BGTVT SỬA ĐỔI, BỔ SUNG MỘT', 'SỬA ĐỔI, BỔ SUNG MỘT SỐ ĐIỀU CỦA THÔNG TƯ SỐ 80/2014/TT-BGTVT NGÀY 30 THÁNG 12 NĂM 2014 CỦA BỘ TRƯỞNG BỘ GIAO THÔNG VẬN TẢI QUY ĐỊNH VỀ VẬN TẢI HÀNH KHÁCH, HÀNH LÝ, BAO GỬI TRÊN ĐƯỜNG THỦY NỘI ĐỊA', '2015-10-30', 5),
(60, '51/2015/QĐ-TTg VỀ QUY ĐỊNH TỔ CHỨC', 'VỀ QUY ĐỊNH TỔ CHỨC TÌM KIẾM, CỨU NẠN GIAO THÔNG ĐƯỜNG THỦY NỘI ĐỊA', '2015-10-14', 5),
(61, '132/2015/NĐ-CP QUY ĐỊNH XỬ PHẠT', 'QUY ĐỊNH XỬ PHẠT VI PHẠM HÀNH CHÍNH TRONG LĨNH VỰC GIAO THÔNG ĐƯỜNG THỦY NỘI ĐỊA', '2015-12-25', 5),
(62, 'Điều 1. Phạm vi điều chỉnh', 'Luật này quy định về hoạt động giao thông đường thủy nội địa; các điều kiện bảo đảm an toàn giao thông đường thuỷ nội địa đối với kết cấu hạ tầng, phương tiện và người tham gia giao thông, vận tải đường thuỷ nội địa.', '2001-12-25', 5),
(63, 'Điều 2. Đối tượng áp dụng', 'Luật này áp dụng đối với tổ chức, cá nhân liên quan đến hoạt động giao thông đường thuỷ nội địa.\r\n\r\nTrường hợp điều ước quốc tế mà Cộng hoà xã hội chủ nghĩa Việt Nam ký kết hoặc gia nhập có quy định khác với Luật này thì áp dụng quy định của điều ước quốc tế đó.', '2001-12-25', 5),
(64, 'Điều 3. Giải thích từ ngữ', 'Trong Luật này, các từ ngữ dưới đây được hiểu như sau:\r\n\r\n1. Hoạt động giao thông đường thuỷ nội địa là hoạt động của người, phương tiện tham gia giao thông, vận tải đường thuỷ nội địa; quy hoạch phát triển, xây dựng, khai thác, bảo vệ kết cấu hạ tầng giao thông đường thuỷ nội địa và quản lý nhà nước về giao thông đường thuỷ nội địa.\r\n\r\n2. Luồng chạy tàu thuyền (sau đây gọi là luồng) là vùng nước được giới hạn bằng hệ thống báo hiệu đường thuỷ nội địa để phương tiện đi lại thông suốt, an toàn.\r\n\r\n3. Âu tàu là công trình chuyên dùng dâng nước, hạ nước để đưa phương tiện qua nơi có mực nước chênh lệch trên đường thuỷ nội địa.\r\n\r\n4. Đường thủy nội địa là luồng, âu tàu, các công trình đưa phương tiện qua đập, thác trên sông, kênh, rạch hoặc luồng trên hồ, đầm, phá, vụng, vịnh, ven bờ biển, ra đảo, nối các đảo thuộc nội thuỷ của nước Cộng hoà xã hội chủ nghĩa Việt Nam được tổ chức quản lý, khai thác giao thông vận tải.\r\n\r\n5. Hành lang bảo vệ luồng là phần giới hạn của vùng nước hoặc dải đất dọc hai bên luồng để lắp đặt báo hiệu, bảo vệ luồng và bảo đảm an toàn giao thông.\r\n\r\n6. Thanh thải là việc loại bỏ các vật chướng ngại trên đường thuỷ nội địa.\r\n\r\n7. Phương tiện thuỷ nội địa (sau đây gọi là phương tiện) là tàu, thuyền và các cấu trúc nổi khác, có động cơ hoặc không có động cơ, chuyên hoạt động trên đường thuỷ nội địa.\r\n\r\n8. Phương tiện thô sơ là phương tiện không có động cơ chỉ di chuyển bằng sức người hoặc sức gió, sức nước.\r\n\r\n9. Bè là phương tiện được kết ghép lại bằng tre, nứa, gỗ hoặc các vật nổi khác để chuyển đi hoặc dùng làm phương tiện vận chuyển tạm thời trên đường thuỷ nội địa.\r\n\r\n10. Hoán cải phương tiện là việc thay đổi tính năng, kết cấu, công dụng của phương tiện.\r\n\r\n11. Phương tiện đi đối hướng nhau là hai phương tiện đi ngược hướng nhau mà từ phương tiện của mình nhìn thấy mũi phương tiện kia thẳng trước mũi phương tiện của mình.\r\n\r\n12. Đoàn lai là đoàn gồm nhiều phương tiện được ghép với nhau, di chuyển nhờ phương tiện có động cơ chuyên lai kéo, lai đẩy hoặc lai áp mạn.\r\n\r\n13. Đoàn lai hỗn hợp là đoàn lai được ghép thành đội hình có ít nhất hai trong ba phương thức lai kéo, lai đẩy, lai áp mạn.\r\n\r\n14. Trọng tải toàn phần của phương tiện là khối lượng tính bằng tấn của hàng hoá, nhiên liệu, dầu bôi trơn, nước trong khoang két, lương thực, thực phẩm, hành khách và hành lý, thuyền viên và tư trang của họ.\r\n\r\n15. Sức chở người của phương tiện là số lượng người tối đa được phép chở trên phương tiện, trừ thuyền viên, người lái phương tiện và trẻ em dưới một tuổi.\r\n\r\n16. Vạch dấu mớn nước an toàn là vạch đánh dấu trên phương tiện để giới hạn phần thân phương tiện được phép chìm trong nước khi hoạt động.\r\n\r\n17. Mạn được gió của thuyền là mạn có hướng gió thổi vào cánh buồm chính.\r\n\r\n18. Thuyền viên là người làm việc theo chức danh quy định trên phương tiện không có động cơ trọng tải toàn phần trên 15 tấn hoặc phương tiện có động cơ tổng công suất máy chính trên 15 mã lực hoặc phương tiện có sức chở trên 12 người.\r\n\r\n19. Thuyền trưởng là chức danh của người chỉ huy cao nhất trên phương tiện không có động cơ trọng tải toàn phần trên 15 tấn hoặc phương tiện có động cơ tổng công suất máy chính trên 15 mã lực hoặc phương tiện có sức chở trên 12 người.\r\n\r\n20. Người lái phương tiện là người trực tiếp điều khiển phương tiện không có động cơ trọng tải toàn phần đến 15 tấn hoặc phương tiện có động cơ tổng công suất máy chính đến 15 mã lực hoặc phương tiện có sức chở đến 12 người hoặc bè.\r\n\r\n21. Hoa tiêu đường thuỷ nội địa (sau đây gọi là hoa tiêu) là người tư vấn, giúp thuyền trưởng điều khiển phương tiện hành trình an toàn.\r\n\r\n22. Người vận tải là tổ chức, cá nhân sử dụng phương tiện để vận tải người, hàng hóa trên đường thuỷ nội địa.\r\n\r\n23. Người kinh doanh vận tải là người vận tải giao kết hợp đồng vận tải hàng hoá, hành khách với người thuê vận tải để thực hiện việc vận tải hàng hoá, hành khách mà có thu cước phí vận tải.\r\n\r\n24. Người thuê vận tải là tổ chức, cá nhân giao kết hợp đồng vận tải hàng hoá, hành khách với người kinh doanh vận tải.\r\n\r\n25. Người nhận hàng là tổ chức, cá nhân có tên nhận hàng ghi trên giấy vận chuyển.\r\n\r\n26. Hành lý là vật dùng, hàng hoá của hành khách mang theo trong cùng chuyến đi, bao gồm hành lý xách tay và hành lý ký gửi.\r\n\r\n27. Bao gửi là hàng hoá gửi theo bất kỳ phương tiện chở khách nào mà người gửi không đi cùng trên phương tiện đó.', '2001-12-24', 5),
(65, 'Điều 4. Nguyên tắc hoạt động giao', 'Điều 4. Nguyên tắc hoạt động giao thông đường thuỷ nội địa\r\n\r\n1. Hoạt động giao thông đường thuỷ nội địa phải bảo đảm thông suốt, trật tự, an toàn cho người, phương tiện, tài sản và bảo vệ môi trường; phục vụ phát triển kinh tế - xã hội và góp phần bảo đảm quốc phòng, an ninh, bảo vệ chủ quyền và lợi ích quốc gia.\r\n\r\n2. Bảo đảm trật tự, an toàn giao thông đường thuỷ nội địa là trách nhiệm của toàn xã hội, của chính quyền các cấp, của tổ chức, cá nhân quản lý hoặc trực tiếp tham gia giao thông; thực hiện đồng bộ các giải pháp về kỹ thuật, an toàn của phương tiện, kết cấu hạ tầng giao thông đường thuỷ nội địa; đào tạo, nâng cao trình độ chuyên môn, nghiệp vụ; phổ biến, giáo dục ý thức chấp hành pháp luật cho người tham gia giao thông đường thuỷ nội địa; xử lý nghiêm các hành vi vi phạm pháp luật về trật tự, an toàn giao thông đường thuỷ nội địa theo quy định của pháp luật.\r\n\r\n3. Phát triển giao thông đường thuỷ nội địa phải theo quy hoạch, kế hoạch và đồng bộ.\r\n\r\n4. Quản lý hoạt động giao thông đường thuỷ nội địa được thực hiện thống nhất trên cơ sở phân công, phân cấp trách nhiệm, quyền hạn rõ ràng, đồng thời có sự phối hợp chặt chẽ giữa các bộ, ngành và chính quyền các cấp.', '2001-12-24', 5),
(66, 'Điều 5. Chính sách phát triển giao thông', 'Điều 5. Chính sách phát triển giao thông đường thuỷ nội địa\r\n\r\n1. Nhà nước ưu tiên đầu tư phát triển kết cấu hạ tầng giao thông đường thuỷ nội địa trên các tuyến giao thông đường thuỷ nội địa trọng điểm, khu vực kinh tế trọng điểm, vùng sâu, vùng xa có lợi thế về giao thông đường thuỷ nội địa so với các loại hình giao thông khác.\r\n\r\n2. Nhà nước khuyến khích, tạo điều kiện cho tổ chức, cá nhân Việt Nam, tổ chức, cá nhân nước ngoài đầu tư phát triển kết cấu hạ tầng giao thông đường thuỷ nội địa, ứng dụng khoa học, công nghệ tiên tiến, đào tạo nguồn nhân lực chuyên ngành và đầu tư kinh doanh, khai thác vận tải đường thuỷ nội địa để phát triển giao thông đường thuỷ nội địa bền vững.', '2001-12-24', 5),
(67, 'Điều 6. Tuyên truyền, phổ biến', 'Điều 6. Tuyên truyền, phổ biến, giáo dục pháp luật về giao thông đường thuỷ nội địa\r\n\r\n1. Tổ chức liên quan đến giao thông đường thuỷ nội địa có trách nhiệm tuyên truyền, phổ biến, giáo dục pháp luật về giao thông đường thuỷ nội địa cho nhân dân và cán bộ, công chức, người lao động trong phạm vi quản lý của mình.\r\n\r\n2. Cơ quan thông tin, tuyên truyền có trách nhiệm tổ chức tuyên truyền, phổ biến pháp luật về giao thông đường thuỷ nội địa thường xuyên, rộng rãi đến toàn dân.\r\n\r\n3. Cơ quan quản lý nhà nước về giáo dục và đào tạo có trách nhiệm chỉ đạo việc giáo dục pháp luật về giao thông đường thuỷ nội địa trong các cơ sở giáo dục phù hợp với đặc điểm của từng vùng lãnh thổ', '2001-12-24', 5),
(68, 'Điều 7. Trách nhiệm của tổ chức', 'Điều 7. Trách nhiệm của tổ chức, cá nhân khi có tai nạn trên đường thuỷ nội địa\r\n\r\n1. Thuyền trưởng, người lái phương tiện và người có mặt tại nơi xảy ra tai nạn giao thông đường thuỷ nội địa hoặc phát hiện người, phương tiện bị nạn trên đường thuỷ nội địa phải tìm mọi biện pháp để kịp thời cứu người, phương tiện, tài sản bị nạn; bảo vệ dấu vết, vật chứng liên quan đến tai nạn; báo cho cơ quan công an hoặc Uỷ ban nhân dân nơi gần nhất và phải có mặt theo yêu cầu của cơ quan điều tra có thẩm quyền.\r\n\r\n2. Cơ quan công an hoặc Uỷ ban nhân dân nơi nhận được tin báo phải cử ngay người đến nơi xảy ra tai nạn hoặc nơi phát hiện người, phương tiện bị nạn, được quyền huy động người, phương tiện để cứu vớt, cứu chữa người bị nạn, bảo vệ tài sản, phương tiện bị nạn, dấu vết, vật chứng liên quan đến tai nạn; bảo đảm trật tự, an toàn giao thông thông suốt; trường hợp tai nạn, sự cố gây tác hại đến môi trường thì phải báo ngay cho cơ quan quản lý nhà nước về bảo vệ môi trường.\r\n\r\n3. Cơ quan công an hoặc cơ quan khác của Nhà nước có thẩm quyền khi nhận được tin xảy ra tai nạn trên đường thuỷ nội địa phải kịp thời tiến hành điều tra và xử lý theo quy định của pháp luật.\r\n\r\n4. Uỷ ban nhân dân nơi xảy ra tai nạn hoặc nơi phát hiện người bị nạn có trách nhiệm giúp đỡ người bị nạn; trường hợp tai nạn gây chết người, sau khi cơ quan điều tra có thẩm quyền đồng ý cho chôn cất mà nạn nhân không rõ tung tích, không có thân nhân hoặc thân nhân không có khả năng chôn cất thì tiến hành chôn cất nạn nhân theo quy định của pháp luật.', '2001-12-24', 5),
(69, 'Điều 8. Các hành vi bị cấm', 'Điều 8. Các hành vi bị cấm\r\n\r\n1. Phá hoại công trình giao thông đường thuỷ nội địa; tạo vật chướng ngại gây cản trở giao thông đường thuỷ nội địa.\r\n\r\n2. Mở cảng, bến thuỷ nội địa trái phép; đón, trả người hoặc xếp, dỡ hàng hoá không đúng nơi quy định.\r\n\r\n3. Xây dựng trái phép nhà, lều quán hoặc các công trình khác trên đường thuỷ nội địa và phạm vi bảo vệ kết cấu hạ tầng giao thông đường thuỷ nội địa.\r\n\r\n4. Đổ đất, đá, cát, sỏi hoặc chất thải khác, khai thác trái phép khoáng sản trong phạm vi luồng và hành lang bảo vệ luồng; đặt cố định ngư cụ, phương tiện khai thác, nuôi trồng thuỷ sản trên luồng.\r\n\r\n5. Đưa phương tiện không đủ điều kiện hoạt động theo quy định tại Điều 24 của Luật này tham gia giao thông đường thuỷ nội địa; sử dụng phương tiện không đúng công dụng hoặc không đúng vùng hoạt động theo giấy chứng nhận an toàn kỹ thuật và bảo vệ môi trường của cơ quan đăng kiểm.\r\n\r\n6. Bố trí thuyền viên không đủ định biên theo quy định khi đưa phương tiện vào hoạt động; thuyền viên, người lái phương tiện làm việc trên phương tiện không có bằng, chứng chỉ chuyên môn hoặc bằng, chứng chỉ chuyên môn không phù hợp.\r\n\r\n7. Chở hàng hoá độc hại, dễ cháy, dễ nổ, động vật lớn chung với hành khách; chở quá sức chở người của phương tiện hoặc quá vạch dấu mớn nước an toàn.\r\n\r\n8. Làm việc trên phương tiện khi trong máu có nồng độ cồn vượt quá 80 miligam/100 mililít máu hoặc 40 miligam/1lít khí thở hoặc có các chất kích thích khác mà pháp luật cấm sử dụng.\r\n\r\n9. Bỏ trốn sau khi gây tai nạn để trốn tránh trách nhiệm; xâm phạm tính mạng, tài sản khi phương tiện bị nạn; lợi dụng việc xảy ra tai nạn làm mất trật tự, cản trở việc xử lý tai nạn.\r\n\r\n10. Vi phạm báo hiệu hạn chế tạo sóng hoặc các báo hiệu cấm khác.\r\n\r\n11. Tổ chức đua hoặc tham gia đua trái phép phương tiện trên đường thuỷ nội địa; lạng lách gây nguy hiểm cho phương tiện khác.\r\n\r\n12. Lợi dụng chức vụ, quyền hạn để sách nhiễu, gây phiền hà khi thực hiện nhiệm vụ; thực hiện hoặc cho phép thực hiện hành vi vi phạm pháp luật về giao thông đường thuỷ nội địa.\r\n\r\n13. Các hành vi khác vi phạm pháp luật về giao thông đường thuỷ nội địa.', '2001-12-24', 5),
(70, 'Điều 1. Phạm vi điều chỉnh', 'Điều 1. Phạm vi điều chỉnh\r\n\r\nLuật này quy định về quy hoạch, đầu tư, xây dựng, bảo vệ, quản lý, bảo trì và phát triển kết cấu hạ tầng đường sắt; công nghiệp đường sắt, phương tiện giao thông đường sắt; tín hiệu, quy tắc giao thông và bảo đảm trật tự, an toàn giao thông đường sắt; kinh doanh đường sắt; quyền và nghĩa vụ của tổ chức, cá nhân có liên quan đến hoạt động đường sắt; quản lý nhà nước về hoạt động đường sắt.', '2016-06-16', 4),
(71, 'Điều 2. Đối tượng áp dụng', 'Điều 2. Đối tượng áp dụng\r\n\r\nLuật này áp dụng đối với tổ chức, cá nhân trong nước và nước ngoài có liên quan đến hoạt động đường sắt trên lãnh thổ nước Cộng hòa xã hội chủ nghĩa Việt Nam.', '2016-06-16', 4),
(72, 'Điều 3. Giải thích từ ngữ', 'Điều 3. Giải thích từ ngữ\r\n\r\nTrong Luật này, các từ ngữ dưới đây được hiểu như sau:\r\n\r\n1. Cầu chung là cầu có mặt cầu dùng chung cho phương tiện giao thông đường sắt và phương tiện giao thông đường bộ.\r\n\r\n2. Chạy tàu là hoạt động để điều khiển sự di chuyển của phương tiện giao thông đường sắt.\r\n\r\n3. Chứng vật chạy tàu là bằng chứng cho phép phương tiện giao thông đường sắt được chạy vào khu gian và được thể hiện bằng tín hiệu đèn màu, tín hiệu cánh, thẻ đường, giấy phép, phiếu đường.\r\n\r\n4. Công lệnh tải trọng là quy định về tải trọng tối đa cho phép trên một trục và tải trọng rải đều tối đa cho phép theo chiều dài của phương tiện giao thông đường sắt được quy định trên từng cầu, đoạn, khu gian, khu đoạn, tuyến đường sắt.\r\n\r\n5. Công lệnh tốc độ là quy định về tốc độ tối đa cho phép phương tiện giao thông đường sắt chạy trên từng cầu, đoạn, khu gian, khu đoạn, tuyến đường sắt.\r\n\r\n6. Công trình đường sắt là công trình xây dựng phục vụ giao thông vận tải đường sắt, bao gồm đường, cầu, cống, hầm, kè, tường chắn, ga, đề-pô, hệ thống thoát nước, hệ thống thông tin, tín hiệu, hệ thống báo hiệu cố định, hệ thống cấp điện và các công trình, thiết bị phụ trợ khác của đường sắt.\r\n\r\n7. Công trình công nghiệp đường sắt là công trình được xây dựng để phục vụ cho các hoạt động sản xuất, lắp ráp, sửa chữa, hoán cải phương tiện giao thông đường sắt; sản xuất phụ kiện, phụ tùng, vật tư, thiết bị chuyên dùng cho đường sắt.\r\n\r\n8. Đề-pô là nơi tập kết tàu để bảo dưỡng, sửa chữa, thực hiện các tác nghiệp kỹ thuật khác.\r\n\r\n9. Đường ngang là đoạn đường bộ giao nhau cùng mức với đường sắt được cơ quan có thẩm quyền cho phép xây dựng và khai thác.\r\n\r\n10. Đường sắt tốc độ cao là một loại hình của đường sắt quốc gia có tốc độ thiết kế từ 200 km/h trở lên, có khổ đường 1.435 mm, đường đôi, điện khí hóa.\r\n\r\n11. Ga đường sắt là nơi để phương tiện giao thông đường sắt dừng, tránh, vượt, đón, trả khách, xếp, dỡ hàng hoá, thực hiện tác nghiệp kỹ thuật và các dịch vụ khác.\r\n\r\n12. Hàng siêu trọng là hàng không thể tháo rời, có khối lượng vượt quá tải trọng cho phép của toa xe hoặc khi xếp lên toa xe có tổng khối lượng hàng hóa và toa xe vượt quá tải trọng quy định của công lệnh tải trọng đã được công bố.\r\n\r\n13. Hàng siêu trường là hàng không thể tháo rời, khi xếp lên toa xe có kích thước vượt quá khổ giới hạn đầu máy, khổ giới hạn và chiều dài toa xe của khổ đường tương ứng.\r\n\r\n14. Hoạt động đường sắt là hoạt động của tổ chức, cá nhân trong lĩnh vực quy hoạch, kinh doanh đường sắt, bảo đảm trật tự, an toàn giao thông đường sắt và các hoạt động khác có liên quan.\r\n\r\n15. Kết cấu hạ tầng đường sắt là công trình đường sắt, phạm vi bảo vệ công trình đường sắt và hành lang an toàn giao thông đường sắt.\r\n\r\n16. Ke ga là công trình đường sắt trong ga đường sắt để phục vụ hành khách lên, xuống tàu, xếp, dỡ hàng hóa.\r\n\r\n17. Khổ đường sắt là khoảng cách ngắn nhất giữa hai má trong của đường ray.\r\n\r\n18. Khu gian là đoạn đường sắt nối hai ga liền kề, được tính từ vị trí xác định tín hiệu vào ga của ga phía bên này đến vị trí xác định tín hiệu vào ga gần nhất của ga phía bên kia.\r\n\r\n19. Khu đoạn là tập hợp một số khu gian và ga đường sắt kế tiếp nhau phù hợp với tác nghiệp chạy tàu.\r\n\r\n20. Kinh doanh kết cấu hạ tầng đường sắt là việc thực hiện một, một số hoặc toàn bộ hoạt động đầu tư, sử dụng, bán, cho thuê, chuyển nhượng quyền khai thác kết cấu hạ tầng đường sắt để phục vụ hoạt động vận tải đường sắt và các dịch vụ thương mại khác nhằm mục đích sinh lợi.\r\n\r\n21. Kinh doanh vận tải đường sắt là việc thực hiện vận chuyển hành khách, hành lý và hàng hóa bằng đường sắt nhằm mục đích sinh lợi.\r\n\r\n22. Kinh doanh đường sắt đô thị là việc thực hiện một, một số hoặc toàn bộ các công đoạn từ đầu tư đến vận chuyển hành khách trong đô thị nhằm mục đích sinh lợi.\r\n\r\n23. Lối đi tự mở là đoạn đường bộ giao nhau với đường sắt do tổ chức, cá nhân tự xây dựng và khai thác khi chưa được cơ quan có thẩm quyền cho phép.\r\n\r\n24. Nút giao cùng mức là nơi có hai hoặc nhiều đường giao thông giao nhau trên cùng một mặt bằng.\r\n\r\n25. Nút giao khác mức là nơi có hai hoặc nhiều đường giao thông giao nhau không cùng một mặt bằng.\r\n\r\n26. Phương tiện giao thông đường sắt là đầu máy, toa xe, phương tiện chuyên dùng di chuyển trên đường sắt.\r\n\r\n27. Tuyến đường sắt là một hoặc nhiều khu đoạn liên tiếp tính từ ga đường sắt đầu tiên đến ga đường sắt cuối cùng.\r\n\r\n28. Tàu là phương tiện giao thông đường sắt được lập bởi đầu máy và toa xe hoặc đầu máy chạy đơn, toa xe động lực, phương tiện động lực chuyên dùng di chuyển trên đường sắt.', '2016-06-16', 4),
(73, 'Điều 4. Nguyên tắc cơ bản trong', 'Điều 4. Nguyên tắc cơ bản trong hoạt động đường sắt\r\n\r\n1. Bảo đảm hoạt động giao thông vận tải đường sắt thông suốt, trật tự, an toàn, chính xác và hiệu quả; phục vụ nhu cầu đi lại thuận tiện của người dân, phát triển kinh tế - xã hội, bảo đảm quốc phòng, an ninh và bảo vệ môi trường.\r\n\r\n2. Phát triển đường sắt theo quy hoạch, kế hoạch, gắn kết với các loại hình giao thông vận tải khác và hội nhập quốc tế, bảo đảm văn minh, hiện đại và đồng bộ.\r\n\r\n3. Điều hành thống nhất, tập trung hoạt động giao thông vận tải đường sắt.\r\n\r\n4. Tách bạch giữa chức năng quản lý nhà nước của cơ quan nhà nước với hoạt động kinh doanh của doanh nghiệp, giữa kinh doanh kết cấu hạ tầng với kinh doanh vận tải trên đường sắt do Nhà nước đầu tư.\r\n\r\n5. Bảo đảm cạnh tranh lành mạnh, bình đẳng giữa các tổ chức, cá nhân thuộc mọi thành phần kinh tế tham gia kinh doanh đường sắt.', '2016-06-16', 4),
(74, 'Điều 5. Chính sách của Nhà nước', 'Điều 5. Chính sách của Nhà nước về phát triển đường sắt\r\n\r\n1. Ưu tiên tập trung nguồn lực để đầu tư phát triển, nâng cấp, bảo trì, bảo vệ kết cấu hạ tầng đường sắt quốc gia, đường sắt đô thị để bảo đảm giao thông vận tải đường sắt đóng vai trò chủ đạo trong hệ thống giao thông vận tải cả nước.\r\n\r\n2. Khuyến khích, hỗ trợ, tạo điều kiện và bảo vệ quyền, lợi ích hợp pháp của tổ chức, cá nhân trong nước và nước ngoài đầu tư, kinh doanh đường sắt.\r\n\r\n3. Dành quỹ đất theo quy hoạch để phát triển kết cấu hạ tầng đường sắt, công trình công nghiệp đường sắt.\r\n\r\n4. Khuyến khích, hỗ trợ phát triển công nghiệp đường sắt, nghiên cứu, ứng dụng khoa học và công nghệ tiên tiến, công nghệ cao, đào tạo nguồn nhân lực để phát triển đường sắt hiện đại.\r\n\r\n5. Khuyến khích và tạo điều kiện thuận lợi cho tổ chức, cá nhân đầu tư phát triển hệ thống đường sắt chuyên dùng.\r\n\r\n6. Ưu tiên phân bổ ngân sách trung ương trong kế hoạch đầu tư công trung hạn và hằng năm với tỉ lệ thích đáng để bảo đảm phát triển kết cấu hạ tầng đường sắt quốc gia theo quy hoạch.\r\n\r\nHằng năm, Chính phủ báo cáo Quốc hội về việc thực hiện chính sách phát triển giao thông vận tải đường sắt và việc sử dụng ngân sách nhà nước đầu tư cho giao thông vận tải đường sắt.', '2016-06-16', 4),
(75, 'Điều 6. Ưu đãi, hỗ trợ trong ', 'Điều 6. Ưu đãi, hỗ trợ trong hoạt động đường sắt\r\n\r\n1. Kinh doanh kết cấu hạ tầng đường sắt, kinh doanh vận tải đường sắt, kinh doanh đường sắt đô thị và công nghiệp đường sắt là các ngành, nghề ưu đãi đầu tư.\r\n\r\n2. Tổ chức, cá nhân hoạt động đường sắt được hưởng ưu đãi, hỗ trợ như sau:\r\n\r\na) Giao đất không thu tiền sử dụng đất đối với diện tích đất xây dựng kết cấu hạ tầng đường sắt quốc gia, đường sắt đô thị; miễn tiền thuê đất đối với diện tích đất xây dựng kết cấu hạ tầng đường sắt chuyên dùng, công trình công nghiệp đường sắt;\r\n\r\nb) Căn cứ vào khả năng nguồn lực thực tế, Nhà nước cho vay với lãi suất vay tín dụng đầu tư ưu đãi từ nguồn tín dụng đầu tư của Nhà nước hoặc được cấp bảo lãnh Chính phủ về vốn vay theo quy định của pháp luật về quản lý nợ công đối với đầu tư phát triển kết cấu hạ tầng đường sắt quốc gia, đường sắt đô thị; đầu tư mua sắm phương tiện giao thông đường sắt, máy móc, thiết bị phục vụ duy tu bảo dưỡng đường sắt; phát triển công nghiệp đường sắt;\r\n\r\nc) Doanh nghiệp kinh doanh kết cấu hạ tầng đường sắt, kinh doanh đường sắt đô thị, công nghiệp đường sắt được hưởng ưu đãi về thuế suất thuế thu nhập doanh nghiệp theo quy định của pháp luật về thuế thu nhập doanh nghiệp;\r\n\r\nd) Được miễn thuế nhập khẩu đối với máy móc, thiết bị, phụ tùng thay thế, phương tiện giao thông đường sắt, nguyên liệu, vật tư dùng để chế tạo máy móc, thiết bị hoặc để chế tạo linh kiện, chi tiết, bộ phận rời, phụ tùng của máy móc, thiết bị cần thiết cho hoạt động đường sắt và vật tư cần thiết cho xây dựng kết cấu hạ tầng đường sắt mà trong nước chưa sản xuất được.\r\n\r\n3. Tổ chức, cá nhân khi đầu tư xây dựng kết cấu hạ tầng đường sắt quốc gia, đường sắt đô thị được Nhà nước bảo đảm toàn bộ kinh phí giải phóng mặt bằng đối với đất dành cho đường sắt để xây dựng kết cấu hạ tầng đường sắt.\r\n\r\n4. Tổ chức, cá nhân kinh doanh kết cấu hạ tầng đường sắt được dành riêng dải tần số vô tuyến điện phục vụ công tác điều hành giao thông vận tải đường sắt và hệ thống cung cấp điện sức kéo phục vụ chạy tàu.', '2016-06-16', 4),
(76, 'Điều 7. Quy hoạch phát triển giao thông', 'Điều 7. Quy hoạch phát triển giao thông vận tải đường sắt\r\n\r\n1. Quy hoạch phát triển giao thông vận tải đường sắt là cơ sở định hướng đầu tư, phát triển, khai thác mạng lưới đường sắt.\r\n\r\n2. Quy hoạch phát triển giao thông vận tải đường sắt bao gồm các nội dung về kết cấu hạ tầng đường sắt và cơ sở quốc gia công nghiệp đường sắt.\r\n\r\n3. Quy hoạch phát triển giao thông vận tải đường sắt phải đáp ứng các yêu cầu sau đây:\r\n\r\na) Bảo đảm kết nối liên vùng, đáp ứng nhu cầu phát triển kinh tế - xã hội, quốc phòng, an ninh, bảo vệ môi trường và hội nhập quốc tế;\r\n\r\nb) Gắn kết giữa phát triển kết cấu hạ tầng đường sắt với phát triển phương tiện, dịch vụ vận tải và công nghiệp đường sắt theo hướng tiên tiến, hiện đại, an toàn;\r\n\r\nc) Bảo đảm kết nối phương thức vận tải đường sắt với các phương thức vận tải khác để tạo nên hệ thống giao thông vận tải đồng bộ, bền vững, an toàn, hiệu quả và ít tác động tiêu cực tới môi trường;\r\n\r\nd) Nghiên cứu nội dung về phát triển kết cấu hạ tầng đường sắt khi lập quy hoạch phát triển giao thông vận tải của đô thị đặc biệt, đô thị loại I, cảng hàng không quốc tế đầu mối, cảng biển đặc biệt và cảng biển loại I.\r\n\r\n4. Tổ chức lập, phê duyệt quy hoạch phát triển giao thông vận tải đường sắt:\r\n\r\na) Bộ trưởng Bộ Giao thông vận tải tổ chức lập quy hoạch phát triển giao thông vận tải đường sắt quốc gia và đường sắt đô thị đi qua địa giới hành chính từ 02 tỉnh, thành phố trực thuộc Trung ương trở lên, trình Thủ tướng Chính phủ phê duyệt; tổ chức lập, phê duyệt quy hoạch chi tiết tuyến, ga đường sắt quốc gia trong đô thị loại III trở lên, ga đầu mối, ga liên vận quốc tế;\r\n\r\nb) Chủ tịch Ủy ban nhân dân cấp tỉnh tổ chức lập quy hoạch đô thị, quy hoạch tỉnh trong đó có nội dung phát triển đường sắt đô thị, đường sắt chuyên dùng, trình Thủ tướng Chính phủ phê duyệt.', '2016-06-16', 4),
(77, 'Điều 8. Hợp tác quốc tế về đường sắt', 'Điều 8. Hợp tác quốc tế về đường sắt\r\n\r\n1. Hợp tác quốc tế về đường sắt phải bảo đảm độc lập, chủ quyền, toàn vẹn lãnh thổ và lợi ích quốc gia; đáp ứng yêu cầu về hội nhập quốc tế; tuân thủ điều ước quốc tế mà nước Cộng hòa xã hội chủ nghĩa Việt Nam là thành viên.\r\n\r\n2. Ưu tiên hoạt động hợp tác quốc tế đối với kết nối khu vực và quốc tế, kinh doanh vận tải đường sắt; đầu tư phát triển, kinh doanh kết cấu hạ tầng đường sắt; phát triển công nghiệp đường sắt; nghiên cứu khoa học, chuyển giao công nghệ; đào tạo phát triển nguồn nhân lực.\r\n\r\n3. Bộ, cơ quan ngang Bộ trong phạm vi chức năng, nhiệm vụ, quyền hạn của mình có trách nhiệm chủ trì hoặc phối hợp với Bộ Giao thông vận tải bảo đảm thuận tiện, nhanh chóng trong việc thông quan tại ga liên vận quốc tế.', '2016-06-16', 4),
(78, 'Điều 9. Các hành vi bị nghiêm cấm', 'Điều 9. Các hành vi bị nghiêm cấm trong hoạt động đường sắt\r\n\r\n1. Phá hoại công trình đường sắt, phương tiện giao thông đường sắt.\r\n\r\n2. Lấn chiếm hành lang an toàn giao thông đường sắt, phạm vi bảo vệ công trình đường sắt.\r\n\r\n3. Tự mở lối đi qua đường sắt; xây dựng trái phép cầu vượt, hầm chui, cống hoặc công trình khác trong phạm vi đất dành cho đường sắt; khoan, đào trái phép trong phạm vi bảo vệ công trình đường sắt.\r\n\r\n4. Làm sai lệch công trình, hệ thống báo hiệu trên đường sắt; làm che lấp hoặc làm sai lạc tín hiệu giao thông đường sắt.\r\n\r\n5. Ngăn cản việc chạy tàu, tùy tiện báo hiệu hoặc sử dụng các thiết bị để dừng tàu, trừ trường hợp phát hiện có sự cố gây mất an toàn giao thông đường sắt.\r\n\r\n6. Vượt rào, vượt chắn đường ngang, vượt qua đường ngang khi có tín hiệu cấm; vượt rào ngăn giữa đường sắt với khu vực xung quanh.\r\n\r\n7. Xả chất thải không bảo đảm vệ sinh môi trường lên đường sắt; để vật chướng ngại, đổ chất độc hại, chất phế thải lên đường sắt; để chất dễ cháy, chất dễ nổ trong phạm vi bảo vệ công trình đường sắt và hành lang an toàn giao thông đường sắt.\r\n\r\n8. Chăn thả súc vật, họp chợ trên đường sắt, trong phạm vi bảo vệ công trình đường sắt và hành lang an toàn giao thông đường sắt.\r\n\r\n9. Đi, đứng, nằm, ngồi hoặc hành vi khác trên nóc toa xe, đầu máy, bậc lên xuống toa xe; đu bám, đứng, ngồi hai bên thành toa xe, đầu máy, nơi nối giữa các toa xe, đầu máy; mở cửa lên, xuống tàu, đưa đầu, tay, chân và vật khác ra ngoài thành toa xe khi tàu đang chạy, trừ nhân viên đường sắt, lực lượng chức năng đang thi hành nhiệm vụ.\r\n\r\n10. Đi, đứng, nằm, ngồi hoặc hành vi khác trên đường sắt, trừ nhân viên đường sắt, lực lượng chức năng đang thi hành nhiệm vụ.\r\n\r\n11. Ném đất, đá hoặc vật khác lên tàu hoặc từ trên tàu xuống.\r\n\r\n12.\r\n\r\n Mang, vận chuyển hàng hóa cấm lưu thông, động vật có dịch bệnh vào ga, lên tàu; mang, vận chuyển trái phép động vật hoang dã, chất phóng xạ, chất dễ cháy, chất dễ nổ và hàng nguy hiểm khác vào ga, lên tàu; mang, vận chuyển thi hài, hài cốt vào ga, lên tàu đường sắt đô thị.\r\n\r\n13. Làm, tiêu thụ vé giả; bán vé trái quy định.\r\n\r\n14. Đưa phương tiện giao thông đường sắt, trang thiết bị không bảo đảm an toàn kỹ thuật vào hoạt động phục vụ giao thông đường sắt; sử dụng toa xe chở hàng để vận chuyển hành khách; tự ý thay đổi kết cấu, hình dáng, tính năng sử dụng của phương tiện giao thông đường sắt; giao hoặc để cho người không đủ điều kiện điều khiển phương tiện giao thông đường sắt.\r\n\r\n15. Nối vào tàu khách các toa xe vận tải động vật, hàng hoá có mùi hôi thối, chất dễ cháy, chất dễ nổ, chất độc hại và hàng nguy hiểm khác.\r\n\r\n16. Điều khiển tàu chạy quá tốc độ quy định.\r\n\r\n17. Nhân viên đường sắt trực tiếp phục vụ chạy tàu trong khi làm nhiệm vụ mà trong máu hoặc hơi thở có nồng độ cồn hoặc có chất kích thích khác mà pháp luật cấm sử dụng.', '2016-06-16', 4),
(79, 'Điều 10. Hệ thống đường sắt Việt Nam', 'Điều 10. Hệ thống đường sắt Việt Nam\r\n\r\n1. Hệ thống đường sắt Việt Nam bao gồm đường sắt quốc gia, đường sắt đô thị và đường sắt chuyên dùng được quy định như sau:\r\n\r\na) Đường sắt quốc gia phục vụ nhu cầu vận tải chung của cả nước, từng vùng kinh tế và liên vận quốc tế;\r\n\r\nb) Đường sắt đô thị phục vụ nhu cầu vận tải hành khách ở đô thị và vùng phụ cận;\r\n\r\nc) Đường sắt chuyên dùng phục vụ nhu cầu vận tải riêng của tổ chức, cá nhân.\r\n\r\n2. Thẩm quyền quyết định công bố, điều chỉnh hệ thống đường sắt được quy định như sau:\r\n\r\na) Đường sắt quốc gia, đường sắt chuyên dùng có nối ray với đường sắt quốc gia do Bộ trưởng Bộ Giao thông vận tải quyết định công bố, điều chỉnh; đường sắt đô thị có nối ray hoặc chạy chung với đường sắt quốc gia do Bộ trưởng Bộ Giao thông vận tải quyết định công bố, điều chỉnh sau khi thống nhất với Chủ tịch Ủy ban nhân dân cấp tỉnh có đường sắt đô thị;\r\n\r\nb) Đường sắt đô thị, đường sắt chuyên dùng không nối ray với đường sắt quốc gia do Chủ tịch Ủy ban nhân dân cấp tỉnh quyết định công bố, điều chỉnh; trường hợp đường sắt đô thị, đường sắt chuyên dùng không nối ray với đường sắt quốc gia đi qua địa giới hành chính từ 02 tỉnh, thành phố trực thuộc Trung ương trở lên thì Bộ trưởng Bộ Giao thông vận tải quyết định công bố, điều chỉnh sau khi có ý kiến của Chủ tịch Ủy ban nhân dân các tỉnh, thành phố này.\r\n\r\n3. Thẩm quyền quy định việc đặt tên tuyến, tên ga đường sắt; quyết định đưa tuyến, đoạn tuyến, ga đường sắt vào khai thác; dừng khai thác, tháo dỡ tuyến được quy định như sau:\r\n\r\na) Chính phủ quy định việc đặt tên tuyến, tên ga đường sắt và tháo dỡ tuyến, đoạn tuyến, ga đường sắt;\r\n\r\nb) Bộ trưởng Bộ Giao thông vận tải quyết định đưa vào khai thác, dừng khai thác tuyến, đoạn tuyến, ga đường sắt quốc gia;\r\n\r\nc) Chủ tịch Ủy ban nhân dân cấp tỉnh quyết định đưa vào khai thác, dừng khai thác tuyến, đoạn tuyến, ga đường sắt đô thị;\r\n\r\nd) Chủ đầu tư quyết định đưa vào khai thác, dừng khai thác tuyến, đoạn tuyến, ga đường sắt chuyên dùng do mình đầu tư.', '2016-06-16', 4),
(80, 'Điều 11. Tài sản kết cấu hạ tầng đường sắt', 'Điều 11. Tài sản kết cấu hạ tầng đường sắt\r\n\r\n1. Tài sản kết cấu hạ tầng đường sắt bao gồm:\r\n\r\na) Tài sản kết cấu hạ tầng đường sắt trực tiếp liên quan đến chạy tàu bao gồm công trình, hạng mục công trình đường sắt hoặc công trình phụ trợ khác trực tiếp phục vụ công tác chạy tàu, đón tiễn hành khách, xếp dỡ hàng hóa;\r\n\r\nb) Tài sản kết cấu hạ tầng đường sắt không trực tiếp liên quan đến chạy tàu là tài sản kết cấu hạ tầng đường sắt không thuộc quy định tại điểm a khoản này.\r\n\r\n2. Trách nhiệm quản lý tài sản kết cấu hạ tầng đường sắt do Nhà nước đầu tư:\r\n\r\na) Chính phủ thực hiện chức năng đại diện chủ sở hữu, thống nhất quản lý tài sản kết cấu hạ tầng đường sắt theo quy định của pháp luật về quản lý, sử dụng tài sản công;\r\n\r\nb) Bộ Giao thông vận tải thực hiện nhiệm vụ, quyền hạn của đại diện chủ sở hữu đối với tài sản kết cấu hạ tầng đường sắt quốc gia;\r\n\r\nc) Ủy ban nhân dân cấp tỉnh thực hiện nhiệm vụ, quyền hạn của đại diện chủ sở hữu đối với tài sản kết cấu hạ tầng đường sắt đô thị;\r\n\r\nd) Doanh nghiệp kinh doanh kết cấu hạ tầng đường sắt sử dụng, khai thác, bảo vệ tài sản kết cấu hạ tầng đường sắt khi được Nhà nước giao, cho thuê hoặc chuyển nhượng theo quy định của pháp luật.\r\n\r\n3. Tổ chức, cá nhân tự quản lý, sử dụng và khai thác tài sản kết cấu hạ tầng đường sắt do mình đầu tư theo quy định của pháp luật.\r\n\r\n4. Chính phủ quy định Danh mục tài sản kết cấu hạ tầng đường sắt quy định tại khoản 1 Điều này; quản lý, sử dụng tài sản kết cấu hạ tầng đường sắt do Nhà nước đầu tư', '2016-06-16', 4),
(81, 'Điều 12. Đất dành cho đường sắt', 'Điều 12. Đất dành cho đường sắt\r\n\r\n1. Đất dành cho đường sắt bao gồm:\r\n\r\na) Đất dùng để xây dựng công trình đường sắt;\r\n\r\nb) Đất trong phạm vi bảo vệ công trình đường sắt;\r\n\r\nc) Đất trong phạm vi hành lang an toàn giao thông đường sắt.\r\n\r\n2. Việc sử dụng đất dành cho đường sắt được quy định như sau:\r\n\r\na) Đất dành cho đường sắt được dùng để xây dựng công trình đường sắt và bảo đảm an toàn giao thông đường sắt theo quy hoạch, kế hoạch sử dụng đất đã được cấp có thẩm quyền phê duyệt;\r\n\r\nb) Trường hợp đất dành cho đường sắt phải sử dụng kết hợp để xây dựng công trình thiết yếu phục vụ quốc phòng, an ninh, kinh tế - xã hội không thể bố trí ngoài phạm vi đất này thì không được làm ảnh hưởng đến công trình đường sắt, an toàn giao thông đường sắt và khi thực hiện phải được cấp phép theo quy định của Bộ trưởng Bộ Giao thông vận tải;\r\n\r\nc) Tổ chức, cá nhân được giao, cho thuê hoặc chuyển nhượng kết cấu hạ tầng đường sắt có trách nhiệm sử dụng, khai thác đất dành cho đường sắt theo quy hoạch được cấp có thẩm quyền phê duyệt và quy định của pháp luật.\r\n\r\n3. Quản lý đất dành cho đường sắt được quy định như sau:\r\n\r\na) Việc quản lý đất dành cho đường sắt do cơ quan quản lý nhà nước chịu trách nhiệm quản lý theo quy định của pháp luật về đất đai;\r\n\r\nb) Cơ quan quản lý nhà nước quản lý tài sản kết cấu hạ tầng đường sắt được giao quản lý đất dùng để xây dựng công trình đường sắt, đất trong phạm vi bảo vệ công trình đường sắt; quản lý việc sử dụng đất dành cho đường sắt theo quy hoạch được cấp có thẩm quyền phê duyệt;\r\n\r\nc) Ủy ban nhân dân các cấp quản lý đất dành cho đường sắt đã được quy hoạch, đất trong phạm vi hành lang an toàn giao thông đường sắt;\r\n\r\nd) Đất dành cho đường sắt trong phạm vi đất cảng hàng không, sân bay dân dụng, cảng biển được quản lý theo quy định của pháp luật về đất đai.\r\n\r\n4. Chính phủ quy định chi tiết Điều này.', '2016-06-16', 4),
(82, 'Điều 13. Cấp kỹ thuật đường sắt', 'Điều 13. Cấp kỹ thuật đường sắt\r\n\r\n1. Đường sắt quốc gia, đường sắt đô thị, đường sắt chuyên dùng được phân thành các cấp kỹ thuật đường sắt. Mỗi cấp kỹ thuật đường sắt có tiêu chuẩn tương ứng.\r\n\r\n2. Việc tổ chức lập, thẩm định, công bố tiêu chuẩn về cấp kỹ thuật đường sắt thực hiện theo quy định của pháp luật về tiêu chuẩn, quy chuẩn kỹ thuật.', '2016-06-16', 4),
(83, 'Điều 14. Khổ đường sắt', 'Điều 14. Khổ đường sắt\r\n\r\n1. Đường sắt quốc gia, đường sắt chuyên dùng nối ray với đường sắt quốc gia có khổ đường tiêu chuẩn là 1.435 mm hoặc khổ đường hẹp là 1.000 mm.\r\n\r\n2. Đường sắt quốc gia, đường sắt đô thị đầu tư mới có khổ đường 1.435 mm. Trường hợp đặc biệt có khổ đường khác do Thủ tướng Chính phủ quyết định.\r\n\r\n3. Đường sắt chuyên dùng không nối ray với đường sắt quốc gia đi qua khu vực dân cư do chủ đầu tư quyết định khổ đường sau khi có ý kiến của Bộ Giao thông vận tải.', '2016-06-16', 4),
(84, 'Điều 15. Kết nối ray các tuyến đường sắt', 'Điều 15. Kết nối ray các tuyến đường sắt\r\n\r\n1. Vị trí kết nối ray các tuyến đường sắt trong nước phải tại ga đường sắt.\r\n\r\n2. Chỉ đường sắt quốc gia mới được kết nối ray với đường sắt nước ngoài. Thủ tướng Chính phủ quyết định việc kết nối ray giữa đường sắt quốc gia với đường sắt nước ngoài.\r\n\r\n3. Bộ trưởng Bộ Giao thông vận tải quy định điều kiện, trình tự, thủ tục thực hiện việc kết nối ray đường sắt đô thị, đường sắt chuyên dùng với đường sắt quốc gia; việc kết nối ray các tuyến đường sắt đô thị.\r\n\r\n4. Tổ chức, cá nhân quyết định việc kết nối ray đường sắt chuyên dùng với đường sắt chuyên dùng do mình đầu tư.', '2016-06-16', 4),
(85, 'Điều 16. Ga đường sắt', 'Điều 16. Ga đường sắt\r\n\r\n1. Ga đường sắt được phân loại như sau:\r\n\r\na) Ga hành khách để đón, trả khách, thực hiện dịch vụ liên quan đến vận tải hành khách, tác nghiệp kỹ thuật và kinh doanh dịch vụ thương mại khác;\r\n\r\nb) Ga hàng hoá để giao, nhận, xếp, dỡ, bảo quản hàng hoá, thực hiện dịch vụ khác liên quan đến vận tải hàng hoá và tác nghiệp kỹ thuật;\r\n\r\nc) Ga kỹ thuật để thực hiện các tác nghiệp kỹ thuật phục vụ chạy tàu;\r\n\r\nd) Ga hỗn hợp có chức năng của 02 hoặc 03 loại ga quy định tại các điểm a, b và c khoản này.\r\n\r\n2. Ga đường sắt phải đáp ứng các yêu cầu sau đây:\r\n\r\na) Tùy theo cấp kỹ thuật ga, ga đường sắt gồm có nhà ga, quảng trường, kho, bãi hàng, ke ga, tường rào, khu dịch vụ, trang thiết bị cần thiết và công trình khác có liên quan đến hoạt động đường sắt;\r\n\r\nb) Ga đường sắt phải có tên ga và thông tin, chỉ dẫn cho khách hàng. Tên ga không trùng nhau và phù hợp với địa danh, lịch sử, văn hóa, thuần phong mỹ tục của địa phương. Tại các ga trên đường sắt quốc gia trong đô thị loại III trở lên, ga đầu mối, ga liên vận quốc tế phải bố trí nơi làm việc cho cơ quan quản lý nhà nước hoạt động thường xuyên có liên quan đến hoạt động đường sắt theo quy hoạch được cấp có thẩm quyền phê duyệt;\r\n\r\nc) Phải có hệ thống thoát hiểm; hệ thống phòng cháy và chữa cháy; hệ thống cấp điện, chiếu sáng, thông gió; hệ thống cấp, thoát nước; hệ thống bảo đảm vệ sinh môi trường và yêu cầu kỹ thuật khác của nhà ga;\r\n\r\nd) Ga hành khách phải có công trình, thiết bị chỉ dẫn tiếp cận cho người khuyết tật và đối tượng được ưu tiên theo quy định của pháp luật; hệ thống điện thoại khẩn cấp, phương tiện sơ cứu y tế;\r\n\r\nđ) Ga liên vận quốc tế, ga trung tâm phải có kiến trúc mang đặc trưng lịch sử, bản sắc văn hóa truyền thống của địa phương, vùng miền. Ga đường sắt tốc độ cao phải có thiết bị kiểm soát bảo đảm an ninh, an toàn;\r\n\r\ne) Tại các ga đường sắt quốc gia, ga đường sắt đô thị được phép xây dựng công trình kinh doanh dịch vụ thương mại, văn phòng.\r\n\r\n3. Phạm vi ga theo chiều dọc được xác định bởi dải đất từ vị trí xác định tín hiệu vào ga phía bên này đến vị trí xác định tín hiệu vào ga phía bên kia; theo chiều ngang ga được xác định bởi khoảng đất phía trong tường rào ga hoặc mốc chỉ giới ga theo quy hoạch được cấp có thẩm quyền phê duyệt.\r\n\r\n4. Bộ trưởng Bộ Giao thông vận tải quy định cấp kỹ thuật ga đường sắt.', '2016-06-16', 4),
(86, 'Điều 17. Đường sắt giao nhau ', 'Điều 17. Đường sắt giao nhau với đường sắt hoặc với đường bộ\r\n\r\n1. Đường sắt giao nhau với đường sắt phải giao khác mức, trừ trường hợp đường sắt chuyên dùng giao nhau với đường sắt chuyên dùng.\r\n\r\n2. Đường sắt giao nhau với đường bộ phải xây dựng nút giao khác mức trong các trường hợp sau đây:\r\n\r\na) Đường sắt có tốc độ thiết kế từ 100 km/h trở lên giao nhau với đường bộ;\r\n\r\nb) Đường sắt giao nhau với đường bộ từ cấp III trở lên; đường sắt giao nhau với đường bộ đô thị;\r\n\r\nc) Đường sắt đô thị giao nhau với đường bộ, trừ đường xe điện bánh sắt.\r\n\r\n3. Chủ đầu tư xây dựng đường sắt mới phải chịu trách nhiệm xây dựng nút giao khác mức theo quy định tại khoản 1 và khoản 2 Điều này. Chủ đầu tư xây dựng đường bộ mới phải chịu trách nhiệm xây dựng nút giao khác mức theo quy định tại khoản 2 Điều này.\r\n\r\n4. Trường hợp không thuộc quy định tại khoản 2 Điều này hoặc khi chưa có đủ điều kiện tổ chức giao khác mức thì Ủy ban nhân dân các cấp, doanh nghiệp kinh doanh kết cấu hạ tầng đường sắt, chủ đầu tư dự án hoặc tổ chức, cá nhân có nhu cầu giao thông qua đường sắt phải tuân theo những quy định sau đây:\r\n\r\na) Nơi xây dựng đường ngang phải được cơ quan có thẩm quyền cấp phép;\r\n\r\nb) Nơi không được phép xây dựng đường ngang phải xây dựng đường gom nằm ngoài hành lang an toàn giao thông đường sắt để dẫn tới đường ngang hoặc nút giao khác mức gần nhất.\r\n\r\n5. Bộ trưởng Bộ Giao thông vận tải quy định chi tiết về:\r\n\r\na) Đường ngang, giao thông tại khu vực đường ngang; việc cấp, gia hạn Giấy phép xây dựng, cải tạo, nâng cấp, bãi bỏ đường ngang;\r\n\r\nb) Cầu chung, giao thông trên khu vực cầu chung;\r\n\r\nc) Kết nối tín hiệu đèn giao thông đường bộ với tín hiệu đèn báo hiệu trên đường bộ tại đường ngang, cung cấp thông tin hỗ trợ cảnh giới tại các điểm giao cắt giữa đường bộ và đường sắt.\r\n\r\n6. Chính phủ quy định việc xử lý các vị trí đường sắt giao nhau với đường sắt, đường sắt giao nhau với đường bộ không phù hợp với quy định của Luật này, các lối đi tự mở và lộ trình thực hiện.', '2016-06-16', 4),
(87, 'Điều 18. Đường sắt và đường bộ', 'Điều 18. Đường sắt và đường bộ chạy song song gần nhau\r\n\r\n1. Trường hợp đường sắt, đường bộ chạy song song gần nhau thì phải bảo đảm đường này nằm ngoài hành lang an toàn giao thông của đường kia; trường hợp địa hình không cho phép thì trên lề đường bộ phía giáp với đường sắt phải xây dựng công trình phòng hộ ngăn cách, trừ trường hợp đỉnh ray đường sắt cao hơn mặt đường bộ từ 03 m trở lên.\r\n\r\n2. Trường hợp đường sắt, đường bộ chạy song song chồng lên nhau thì khoảng cách theo phương thẳng đứng từ điểm cao nhất của mặt đường bộ phía dưới hoặc đỉnh ray đường sắt phía dưới đến điểm thấp nhất của kết cấu nhịp cầu phía trên phải bằng chiều cao bảo đảm an toàn giao thông của công trình phía dưới.', '2016-06-16', 4),
(88, 'Điều 19. Hệ thống báo hiệu ', 'Điều 19. Hệ thống báo hiệu cố định trên đường sắt\r\n\r\n1. Hệ thống báo hiệu cố định trên đường sắt bao gồm:\r\n\r\na) Cột tín hiệu, đèn tín hiệu;\r\n\r\nb) Biển hiệu, mốc hiệu;\r\n\r\nc) Biển báo;\r\n\r\nd) Rào, chắn;\r\n\r\nđ) Cọc mốc chỉ giới;\r\n\r\ne) Các báo hiệu khác.\r\n\r\n2. Hệ thống báo hiệu cố định trên đường sắt phải được xây dựng, lắp đặt đầy đủ phù hợp với cấp kỹ thuật và loại đường sắt; bảo đảm thường xuyên hoạt động tốt.', '2016-06-16', 4),
(89, 'Điều 20. Đầu tư xây dựng kết cấu', 'Điều 20. Đầu tư xây dựng kết cấu hạ tầng đường sắt\r\n\r\n1. Đầu tư xây dựng kết cấu hạ tầng đường sắt là việc đầu tư xây dựng mới, đổi mới công nghệ, nâng cấp, cải tạo kết cấu hạ tầng đường sắt theo quy định của pháp luật.\r\n\r\n2. Việc góp vốn nhà nước tham gia vào dự án đầu tư phát triển kết cấu hạ tầng đường sắt quốc gia, đường sắt đô thị theo hình thức đối tác công tư trong thời gian xây dựng hoặc kéo dài suốt vòng đời dự án do Thủ tướng Chính phủ quyết định.\r\n\r\n3. Bộ trưởng Bộ Giao thông vận tải, Ủy ban nhân dân cấp tỉnh tổ chức xây dựng và công bố dự án đầu tư xây dựng công trình đường sắt thuộc thẩm quyền quản lý theo quy định của pháp luật.', '2016-06-16', 4);
INSERT INTO `laws` (`LawID`, `LawTitle`, `LawDetail`, `LawTimeRelease`, `CategoryID`) VALUES
(90, 'Điều 21. Quản lý, bảo trì kết cấu hạ', 'Điều 21. Quản lý, bảo trì kết cấu hạ tầng đường sắt\r\n\r\n1. Kết cấu hạ tầng đường sắt đưa vào khai thác phải được bảo trì theo quy định của pháp luật.\r\n\r\n2. Trách nhiệm quản lý, bảo trì kết cấu hạ tầng đường sắt được quy định như sau:\r\n\r\na) Bộ trưởng Bộ Giao thông vận tải quy định việc quản lý, bảo trì kết cấu hạ tầng đường sắt quốc gia; tổ chức quản lý bảo trì kết cấu hạ tầng đường sắt quốc gia do Nhà nước đầu tư;\r\n\r\nb) Ủy ban nhân dân cấp tỉnh quy định việc quản lý, bảo trì kết cấu hạ tầng đường sắt đô thị; tổ chức quản lý bảo trì kết cấu hạ tầng đường sắt đô thị do Nhà nước đầu tư;\r\n\r\nc) Doanh nghiệp kinh doanh kết cấu hạ tầng đường sắt thực hiện bảo trì kết cấu hạ tầng đường sắt do Nhà nước đầu tư theo quy định của pháp luật khi được giao, cho thuê hoặc chuyển nhượng;\r\n\r\nd) Tổ chức, cá nhân tự quản lý, bảo trì kết cấu hạ tầng đường sắt do mình đầu tư theo quy định của pháp luật.', '2016-06-16', 4);

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
(60, 'Theo hướng mũi tên, những hướng nào xe mô tô được phép đi?\r\n', 2),
(61, 'sáasa', 1),
(62, 'abc', 2),
(63, 'abc', 2);

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

--
-- Dumping data for table `trafficsigns`
--

INSERT INTO `trafficsigns` (`TrafficSignID`, `TrafficLink`, `TrafficTitle`, `TrafficDetail`, `CategoryID`) VALUES
(2, 'Images/Bien_Bao_Cam/bien_bao_cam.jpg', 'Đường Cấm', 'Đường Cấm', 6),
(3, 'Images/Bien_Bao_Cam/cam_bop_coi.jpg', 'Cấm Bóp Còi', 'Cấm Bóp Còi', 6),
(4, 'Images/Bien_Bao_Cam/cam_di_thang_va_re_phai.jpg', 'Cấm Đi Thẳng và Rẽ Phải', 'Cấm Đi Thẳng và Rẽ Phải', 6),
(5, 'Images/Bien_Bao_Cam/cam_di_thang_va_re_trai.jpg', 'Cấm Đi Thẳng và Rẽ Trái', 'Cấm Đi Thẳng và Rẽ Trái', 6),
(6, 'Images/Bien_Bao_Cam/cam_di_thang.jpg', 'Cấm Đi Thẳng', 'Cấm Đi Thẳng', 6),
(7, 'Images/Bien_Bao_Cam/cam_di_xe_dap.jpg', 'Cấm Đi Xe Đạp', 'Cấm Đi Xe Đạp', 6),
(8, 'Images/Bien_Bao_Cam/cam_do_xe_ngay_chan.jpg', 'Cấm Đỗ Xe Ngày Chẵn', 'Cấm Đỗ Xe Ngày Chẵn', 6),
(9, 'Images/Bien_Bao_Cam/cam_do_xe_ngay_le.jpg', 'Cấm Đỗ Xe Ngày Lẻ', 'Cấm Đỗ Xe Ngày Lẻ', 6),
(10, 'Images/Bien_Bao_Cam/cam_do_xe.jpg', 'Cấm Đỗ Xe', 'Cấm Đỗ Xe', 6),
(11, 'Images/Bien_Bao_Cam/cam_dung_do_xe.jpg', 'Cấm Dừng Đỗ Xe', 'Cấm Dừng Đỗ Xe', 6),
(12, 'Images/Bien_Bao_Cam/cam_may_keo.jpg', 'Cấm Máy Kéo', 'Cấm Máy Kéo', 6),
(13, 'Images/Bien_Bao_Cam/cam_nguoi_di_bo.jpg', 'Cấm Người Đi Bộ', 'Cấm Người Đi Bộ', 6),
(14, 'Images/Bien_Bao_Cam/cam_oto_quay_dau.jpg', 'Cấm Ôtô Quay Đầu', 'Cấm Ôtô Quay Đầu', 6),
(15, 'Images/Bien_Bao_Cam/cam_oto_re_trai.jpg', 'Cấm Ôtô Rẽ Trái', 'Cấm Ôtô Rẽ Trái', 6),
(16, 'Images/Bien_Bao_Cam/cam_oto_tai_vuot.jpg', 'Cấm Ôtô Tải Vượt', 'Cấm Ôtô tải Vượt', 6),
(17, 'Images/Bien_Bao_Cam/cam_quay_dau.jpg', 'Cấm Quay Đầu', 'Cấm Quay Đầu', 6),
(18, 'Images/Bien_Bao_Cam/cam_re_phai.jpg', 'Cấm Rẽ Phải', 'Cấm Rẽ Phải', 6),
(19, 'Images/Bien_Bao_Cam/cam_re_trai_va_re_phai.jpg', 'Cấm Rẽ Trái và Rẽ Phải', 'Cấm Rẽ Trái và Rẽ Phải', 6),
(20, 'Images/Bien_Bao_Cam/cam_re_trai.jpg', 'Cấm Rẽ Trái', 'Cấm Rẽ Trái', 6),
(21, 'Images/Bien_Bao_Cam/cam_vuot.jpg', 'Cấm Vượt', 'Cấm Vượt', 6),
(22, 'Images/Bien_Bao_Cam/cam_xe_dap_tho.jpg', 'Cấm Xe Đạp Thô', 'Cấm Xe Đạp Thô', 6),
(23, 'Images/Bien_Bao_Cam/cam_xe_gan_may.jpg', 'Cấm Xe Máy', 'Cấm Xe Máy', 6),
(24, 'Images/Bien_Bao_Cam/cam_moto_2_3_banh.jpg', 'Cấm Moto 2 - 3 Bánh', 'Cấm Moto 2 - 3 Bánh', 6),
(25, 'Images/Bien_Bao_Cam/cam_oto_3_banh.jpg', 'Cấm ÔTô 3 Bánh', 'Cấm ÔTô 3 Bánh', 6),
(26, 'Images/Bien_Bao_Cam/cam_oto_keo_moc.jpg', 'Cấm Ôtô Kéo Móc', 'Cấm Ôtô Kéo Móc', 6),
(27, 'Images/Bien_Bao_Cam/cam_oto_khach_va_oto_tai.jpg', 'Cấm Ôtô Khách và Ôtô Tải', 'Cấm Ôtô Khách và Ôtô Tải', 6),
(28, 'Images/Bien_Bao_Cam/cam_oto_moto.jpg', 'Cấm Ôtô và Moto', 'Cấm Ôtô và Moto', 6),
(29, 'Images/Bien_Bao_Cam/cam_oto_tai_2t5.jpg', 'Cấm Ôtô Tải Trên 2.5 Tấn', 'Cấm Ôtô Tải Trên 2.5 Tấn', 6),
(30, 'Images/Bien_Bao_Cam/cam_xe_nguoi_keo.jpg', 'Cấm Xe Người Kéo', 'Cấm Xe Người Kéo', 6),
(31, 'Images/Bien_Bao_Cam/cu_ly_toi_thieu_cua_2_xe.jpg', 'Cự Ly Tối Thiếu của 2 Xe', 'Cự Ly Tối Thiếu của 2 Xe', 6),
(32, 'Images/Bien_Bao_Cam/dung_lai.jpg', 'Đứng Lại', 'Đứng Lại', 6),
(33, 'Images/Bien_Bao_Cam/han_che_chieu_cao.jpg', 'Hạn Chế Chiều Cao', 'v', 6),
(34, 'Images/Bien_Bao_Cam/han_che_chieu_dai_cua_xe.jpg', 'Hạn Chế Chiều Dài Của Xe', 'Hạn Chế Chiều Dài Của Xe', 6),
(35, 'Images/Bien_Bao_Cam/han_che_chieu_dai_oto_keo_moc.jpg', 'Hạn Chế Chiều Dài Otô Kéo Móc', 'Hạn Chế Chiều Dài Otô Kéo Móc', 6),
(36, 'Images/Bien_Bao_Cam/han_che_chieu_ngang.jpg', 'Hạn Chế Chiều Ngang', 'Hạn Chế Chiều Ngang', 6),
(37, 'Images/Bien_Bao_Cam/han_che_toc_do_toi_da.jpg', 'Hạn Chế Tốc Độ Tối Đa', 'Hạn Chế Tốc Độ Tối Đa', 6),
(38, 'Images/Bien_Bao_Cam/han_che_trong_luong.jpg', 'Hạn Chế Trọng Lượng', 'Hạn Chế Trọng Lượng', 6),
(39, 'Images/Bien_Bao_Cam/han_che_trong_luong_tren_xe.jpg', 'Hạn Chế Trọng Lượng Trên Xe', 'Hạn Chế Trọng Lượng Trên Xe', 6),
(40, 'Images/Bien_Bao_Cam/het_cam_vuot.jpg', 'Hết Cấm Vượt', 'Hết Cấm Vượt', 6),
(41, 'Images/Bien_Bao_Cam/het_tat_ca_cac_lenh_cam.jpg', 'Hết Tất Cả Các Lệnh Cấm', 'Hết Tất Cả Các Lệnh Cấm', 6),
(42, 'Images/Bien_Bao_Cam/kiem_tra.jpg', 'Kiểm Tra', 'Kiểm Tra', 6),
(43, 'Images/Bien_Bao_Cam/nguoc_chieu.jpg', 'Cấm Đi Ngược Chiều', 'Cấm Đi Ngược Chiều', 6),
(44, 'Images/Bien_Bao_Cam/nhuong_duong_cho_xe_co_gioi_di.jpg', 'Nhường Đường Cho Xe Cơ Giới', 'Nhường Đường Cho Xe Cơ Giới', 6),
(45, 'Images/Bien_Bao_Cam/toc_do_toi_da_cho_phep.jpg', 'Tốc Độ Tối Đa Cho Phép', 'Tốc Độ Tối Đa Cho Phép', 6),
(46, 'Images/Bien_Bao_Chi_Dan/bat_dau_khu_vuc_dong_dan_cu.jpg', 'Bắt Đầu Khu Vực Đông Dân Cư', 'Bắt Đầu Khu Vực Đông Dân Cư', 7),
(47, 'Images/Bien_Bao_Chi_Dan/ben_xe_buyt.jpg', 'Bến Xe Buýt', 'Bến Xe Buýt', 7),
(48, 'Images/Bien_Bao_Chi_Dan/benh_vien.jpg', 'Bệnh Viện', 'Bệnh Viện', 7),
(49, 'Images/Bien_Bao_Chi_Dan/cau_vuot_lien_thong.jpg', 'Cầu Vượt Dành Cho Người Đi Bộ', 'Cầu Vượt Dành Cho Người Đi Bộ', 7),
(50, 'Images/Bien_Bao_Chi_Dan/cau_vuot_lien_thong_1.jpg', 'Cầu Vượt Dành Cho Người Đi Bộ', 'Cầu Vượt Dành Cho Người Đi Bộ', 7),
(51, 'Images/Bien_Bao_Chi_Dan/cau_vuot_lien_thong_2.jpg', 'Cầu Vượt Dành Cho Người Đi Bộ', 'Cầu Vượt Dành Cho Người Đi Bộ', 7),
(52, 'Images/Bien_Bao_Chi_Dan/cau_vuot_lien_thong_3.jpg', 'Cầu Vượt Dành Cho Người Đi Bộ', 'Cầu Vượt Dành Cho Người Đi Bộ', 7),
(53, 'Images/Bien_Bao_Chi_Dan/cau_vuot_qua_duong_cho_nguoi_di_bo.jpg', 'Cầu Vượt Dành Cho Người Đi Bộ', 'Cầu Vượt Dành Cho Người Đi Bộ', 7),
(54, 'Images/Bien_Bao_Chi_Dan/cau_vuot_qua_duong_cho_nguoi_di_bo_1.jpg', 'Cầu Vượt Dành Cho Người Đi Bộ', 'Cầu Vượt Dành Cho Người Đi Bộ', 7),
(55, 'Images/Bien_Bao_Chi_Dan/chi_dan_dia_gioi.jpg', 'Chỉ Dẫn Địa Giới', 'Chỉ Dẫn Địa Giới', 7),
(56, 'Images/Bien_Bao_Chi_Dan/chi_huong_duong.jpg', 'Chỉ Hướng Đường', 'Chỉ Hướng Đường', 7),
(57, 'Images/Bien_Bao_Chi_Dan/chi_huong_duong_1.jpg', 'Chỉ Hướng Đường', 'Chỉ Hướng Đường', 7),
(58, 'Images/Bien_Bao_Chi_Dan/chi_huong_duong_phai_di_cho_tung_loai_loai_xe.jpg', 'Chỉ Hướng Đường Phải Đi Cho Từng Loại Xe', 'Chỉ Hướng Đường Phải Đi Cho Từng Loại Xe', 7),
(59, 'Images/Bien_Bao_Chi_Dan/chi_huong_duong_phai_di_cho_tung_loai_loai_xe_1.jpg', 'Chỉ Hướng Đường Phải Đi Cho Từng Loại Xe', 'Chỉ Hướng Đường Phải Đi Cho Từng Loại Xe', 7),
(60, 'Images/Bien_Bao_Chi_Dan/chi_huong_duong_phai_di_cho_tung_loai_loai_xe_2.jpg', 'Chỉ Hướng Đường Phải Đi Cho Từng Loại Xe', 'Chỉ Hướng Đường Phải Đi Cho Từng Loại Xe', 7),
(61, 'Images/Bien_Bao_Chi_Dan/cho.jpg', 'Chợ', 'Chợ', 7),
(62, 'Images/Bien_Bao_Chi_Dan/cho_quay_xe.jpg', 'Chỗ Quay Xe', 'Chỗ Quay Xe', 7),
(63, 'Images/Bien_Bao_Chi_Dan/di_tich_lich_su.jpg', 'Di Tích Lịch Sử', 'Di Tích Lịch Sử', 7),
(64, 'Images/Bien_Bao_Chi_Dan/dien_thoai.jpg', 'Điện Thoại', 'Điện Thoại', 7),
(65, 'Images/Bien_Bao_Chi_Dan/doan_duong_uu_tien.jpg', 'Đoạn Đường Ưu Tiên', 'Đoạn Đường Ưu Tiên', 7),
(66, 'Images/Bien_Bao_Chi_Dan/duoc_uu_tien_qua_duong_hep.jpg', 'Đường Ưu Tiên Qua Đường Hẹp', 'Đường Ưu Tiên Qua Đường Hẹp', 7),
(67, 'Images/Bien_Bao_Chi_Dan/duong_1_chieu_1.jpg', 'Đường 1 Chiều', 'Đường 1 Chiều', 7),
(68, 'Images/Bien_Bao_Chi_Dan/duong_1_chieu_2.jpg', 'Đường 1 Chiều', 'Đường 1 Chiều', 7),
(69, 'Images/Bien_Bao_Chi_Dan/duong_1_chieu_3.jpg', 'Đường 1 Chiều', 'Đường 1 Chiều', 7),
(70, 'Images/Bien_Bao_Chi_Dan/duong_cao_toc.jpg', 'Đường Cao Tốc', 'Đường Cao Tốc', 7),
(71, 'Images/Bien_Bao_Chi_Dan/duong_co_lan_duong_danh_cho_ôt_khach.jpg', 'Đường Có Làn Đường Dành Cho Otô Khách', 'Đường Có Làn Đường Dành Cho Otô Khách', 7),
(72, 'Images/Bien_Bao_Chi_Dan/duong_danh_cho_nguoi_tan_tat.jpg', 'Dường Dành Cho Người Tàn Tật', 'Dường Dành Cho Người Tàn Tật', 7),
(73, 'Images/Bien_Bao_Chi_Dan/duong_danh_cho_o_to.jpg', 'Đường Dành Cho Otô', 'Đường Dành Cho Otô', 7),
(74, 'Images/Bien_Bao_Chi_Dan/duong_danh_cho_o_to_vs_xe_may.jpg', 'Đường Dành Cho Otô và Xe Máy', 'Đường Dành Cho Otô và Xe Máy', 7),
(75, 'Images/Bien_Bao_Chi_Dan/duong_nguoi_di_bo_sang_ngang.jpg', 'Đường Người Đi Bộ Sang Ngang', 'Đường Người Đi Bộ Sang Ngang', 7),
(76, 'Images/Bien_Bao_Chi_Dan/duong_nguoi_di_bo_sang_ngang_1.jpg', 'Đường Người Đi Bộ Sang Ngang', 'Đường Người Đi Bộ Sang Ngang', 7),
(77, 'Images/Bien_Bao_Chi_Dan/het_doan_duong_uu_tien.jpg', 'Hết Đoạn Đường Ưu Tiên', 'Hết Đoạn Đường Ưu Tiên', 7),
(78, 'Images/Bien_Bao_Chi_Dan/het_duong_cao_toc.jpg', 'Hết Đường Cao Tốc', 'Hết Đường Cao Tốc', 7),
(79, 'Images/Bien_Bao_Chi_Dan/het_duong_danh_cho_xe_o_to.jpg', 'Hết Đường Dành Cho Xe Otô', 'Hết Đường Dành Cho Xe Otô', 7),
(80, 'Images/Bien_Bao_Chi_Dan/het_duong_danh_cho_xe_o_to_vs_xe_may.jpg', 'Hết Đường Dành Cho Cho Otô Vs Xe Máy', 'Hết Đường Dành Cho Cho Otô Vs Xe Máy', 7),
(81, 'Images/Bien_Bao_Chi_Dan/het_khu_dong_dan_cu.jpg', 'Hết Khu Vực Dân Cư', 'Hết Khu Vực Dân Cư', 7),
(82, 'Images/Bien_Bao_Chi_Dan/het_khu_dong_dan_cu_1.jpg', 'Hết Khu Vực Dân Cư', 'Hết Khu Vực Dân Cư', 7),
(83, 'Images/Bien_Bao_Chi_Dan/huong_di_tren_moi_lan_duong_theo_vach.jpg', 'Hướng Đi Trên Mỗi Làn Đường', 'Hướng Đi Trên Mỗi Làn Đường Theo Vạch', 7),
(84, 'Images/Bien_Bao_Chi_Dan/khu_vuc_dau_xe.jpg', 'Khu Vực Đậu Xe', 'Khu Vực Đậu Xe', 7),
(85, 'Images/Bien_Bao_Chi_Dan/khu_vuc_quay_xe.jpg', 'Khu Vực Quay Xe', 'Khu Vực Quay Xe', 7),
(86, 'Images/Bien_Bao_Chi_Dan/lan_duong_danh_cho_oto_khach.jpg', 'Làn Đường Dành Cho Otô Khách', 'Làn Đường Dành Cho Otô Khách', 7),
(87, 'Images/Bien_Bao_Chi_Dan/loi_dii_o_nhung_cho_cam_re.jpg', 'Lối Đi Dành Cho Những Chỗ Cấm Rẽ', 'Lối Đi Dành Cho Những Chỗ Cấm Rẽ', 7),
(88, 'Images/Bien_Bao_Chi_Dan/noi_do_xe.jpg', 'Nơi Đỗ Xe', 'Nơi Đỗ Xe', 7),
(89, 'Images/Bien_Bao_Chi_Dan/noi_rua_xe.jpg', 'Nơi Rửa Xe', 'Nơi Rửa Xe', 7),
(90, 'Images/Bien_Bao_Chi_Dan/re_ra_lan_duong_danh_cho_oto_khach.jpg', 'Rẽ Ra Làn Dường Dành Cho Otô', 'Rẽ Ra Làn Dường Dành Cho Oto Khách', 7),
(91, 'Images/Bien_Bao_Chi_Dan/re_ra_lan_duong_danh_cho_oto_khach_1.jpg', 'Rẽ Ra Làn Dường Dành Cho Oto', 'Rẽ Ra Làn Dường Dành Cho Oto Khách', 7),
(92, 'Images/Bien_Bao_Chi_Dan/toc_do_cho_phep_chay_tren_duong_cao_toc.jpg', 'Tốc Độ Cho Phép Chạy Trên Đường Cao Tốc', 'Tốc Độ Cho Phép Chạy Trên Đường Cao Tốc', 7),
(93, 'Images/Bien_Bao_Chi_Dan/tram_cap_cuu.jpg', 'Trạm Cấp Cứu', 'Trạm Cấp Cứu', 7),
(94, 'Images/Bien_Bao_Chi_Dan/tram_cung_cap_xang.jpg', 'Trạm Cung Cấp Xăng', 'Trạm Cung Cấp Xăng', 7),
(95, 'Images/Bien_Bao_Chi_Dan/tram_sua_chua.jpg', 'Trạm Sửa Chữa', 'Trạm Sửa Chữa', 7),
(96, 'Images/Bien_Bao_Hieu_Lenh/an_coi.jpg', 'Ấn Còi', 'Ấn Còi', 8),
(97, 'Images/Bien_Bao_Hieu_Lenh/cac_xe_chi_duoc_di_thang_va_re_phai.jpg', 'Các Xe Chỉ Dược Đi Thẳng và Rẽ Phải', 'Các Xe Chỉ Dược Đi Thẳng và Rẽ Phải', 8),
(98, 'Images/Bien_Bao_Hieu_Lenh/cac_xe_chi_duoc_di_thang_va_trai.jpg', 'Các Xe Chỉ Dược Đi Thẳng và Rẽ Trái', 'Các Xe Chỉ Dược Đi Thẳng và Rẽ Trái', 8),
(99, 'Images/Bien_Bao_Hieu_Lenh/cac_xe_chi_duoc_re_phai.jpg', 'Các Xe Chỉ Được Rẽ Phải', 'Các Xe Chỉ Được Rẽ Phải', 8),
(100, 'Images/Bien_Bao_Hieu_Lenh/cac_xe_chi_duoc_re_phai_1.jpg', 'Các Xe Chỉ Được Rẽ Phải', 'Các Xe Chỉ Được Rẽ Phải', 8),
(101, 'Images/Bien_Bao_Hieu_Lenh/cac_xe_chi_duoc_re_trai.jpg', 'Các Xe Chỉ Được Rẽ Trái', 'Các Xe Chỉ Được Rẽ Trái', 8),
(102, 'Images/Bien_Bao_Hieu_Lenh/cac_xe_chi_duoc_re_trai_1.jpg', 'Các Xe Chỉ Được Rẽ Trái', 'Các Xe Chỉ Được Rẽ Trái', 8),
(103, 'Images/Bien_Bao_Hieu_Lenh/cac_xe_duoc_di_thang.jpg', 'Các Xe Được Đi Thẳng', 'Các Xe Được Đi Thẳng', 8),
(104, 'Images/Bien_Bao_Hieu_Lenh/cac_xe_duoc_re_trai_va_re_phai.jpg', 'Các Xe Được Rẽ Trái và Rẽ Phải', 'Các Xe Được Rẽ Trái và Rẽ Phải', 8),
(105, 'Images/Bien_Bao_Hieu_Lenh/di_thang_hoac_re_phai_tren_cau_vuot.jpg', 'Đi Thẳng Hoặc Rẽ Phải Trên Cầu Vượt', 'Đi Thẳng Hoặc Rẽ Phải Trên Cầu Vượt', 8),
(106, 'Images/Bien_Bao_Hieu_Lenh/di_thang_hoac_re_trai_tren_cau_vuot.jpg', 'Đi Thẳng Hoặc Rẽ Trái Trên Cầu Vượt', 'Đi Thẳng Hoặc Rẽ Trái Trên Cầu Vượt', 8),
(107, 'Images/Bien_Bao_Hieu_Lenh/duoc_di_thang_khi_den_do.jpg', 'Được Đi Thẳng Khi Đèn Đỏ', 'Được Đi Thẳng Khi Đèn Đỏ', 8),
(108, 'Images/Bien_Bao_Hieu_Lenh/duoc_re_phai_khi_den_do.jpg', 'Được Rẽ Phải Khi Đèn Đỏ', 'Được Rẽ Phải Khi Đèn Đỏ', 8),
(109, 'Images/Bien_Bao_Hieu_Lenh/duong_danh_cho_nguoi_di_bo.jpg', 'Đường Dành Cho Người Đi Bộ', 'Đường Dành Cho Người Đi Bộ', 8),
(110, 'Images/Bien_Bao_Hieu_Lenh/duong_danh_cho_xe_tho_so.jpg', 'Đường Dành Cho Xe Thô Sơ', 'Đường Dành Cho Xe Thô Sơ', 8),
(111, 'Images/Bien_Bao_Hieu_Lenh/huong_duong_uu_tien.jpg', 'Hướng Đường Ưu Tiên', 'Hướng Đường Ưu Tiên', 8),
(112, 'Images/Bien_Bao_Hieu_Lenh/huong_phai_di_vong_chuong_ngai_vat.jpg', 'Hướng Phải Đi Vòng Chướng Ngại Vật', 'Hướng Phải Đi Vòng Chướng Ngại Vật', 8),
(113, 'Images/Bien_Bao_Hieu_Lenh/huong_tac_dung_cua_bien.jpg', 'Hướng Tác Dụng Của Biển Báo', 'Hướng Tác Dụng Của Biển Báo', 8),
(114, 'Images/Bien_Bao_Hieu_Lenh/khoang_cach_den_doi_tuong_bao_hieu.jpg', 'Khoảng Cách Tới Đối Tượng Báo Hiệu', 'Khoảng Cách Tới Đối Tượng Báo Hiệu', 8),
(115, 'Images/Bien_Bao_Hieu_Lenh/lan_duong.jpg', 'Làn Đường', 'Làn Đường', 8),
(116, 'Images/Bien_Bao_Hieu_Lenh/noi_giao_nhau_chay_theo_vong_xuyen.jpg', 'Nơi Giao Nhau Chay Theo Vòng Xuyến', 'Nơi Giao Nhau Chay Theo Vòng Xuyến', 8),
(117, 'Images/Bien_Bao_Hieu_Lenh/pham_vi_tac_dung_cua_bien.jpg', 'Phạm Vi Tác Dụng Của Biển Báo', 'Phạm Vi Tác Dụng Của Biển Báo', 8),
(118, 'Images/Bien_Bao_Hieu_Lenh/toc_do_toi_thieu_cho_phep.jpg', 'Tốc Độ Tối Thiểu Cho Phép ', 'Tốc Độ Tối Thiểu Cho Phép ', 8),
(119, 'Images/Bien_Bao_Hieu_Lenh/xe_mo_to.jpg', 'Xe MôTô', 'Xe MôTô', 8),
(120, 'Images/Bien_Bao_Hieu_Lenh/xe_oto.jpg', 'Xe Ôtô', 'Xe Ôtô', 8),
(121, 'Images/Bien_Bao_Hieu_Lenh/xe_tai.jpg', 'Xe Tải', 'Xe Tải', 8),
(122, 'Images/Bien_Bao_Hieu_Lenh/han_che_toc_do_toi_thieu.jpg', 'Hạn Chế Tốc Độ Tối Thiểu', 'Hạn Chế Tốc Độ Tối Thiểu', 8),
(123, 'Images/Bien_Bao_Nguy_Hiem/ben_pha.jpg', 'Bến Phà', 'Bến Phà', 9),
(124, 'Images/Bien_Bao_Nguy_Hiem/cau_hep.jpg', 'Cầu Hẹp', 'Cầu Hẹp', 9),
(125, 'Images/Bien_Bao_Nguy_Hiem/cau_tam.jpg', 'Cầu Tạm', 'Cầu Tạm', 9),
(126, 'Images/Bien_Bao_Nguy_Hiem/cau_vong.jpg', 'Cầu Vồng', 'Cầu Vồng', 9),
(127, 'Images/Bien_Bao_Nguy_Hiem/cau_xoay_cau_cat.jpg', 'Cầu Xoay Cầu Cất', 'Cầu Xoay Cầu Cất', 9),
(128, 'Images/Bien_Bao_Nguy_Hiem/cho_ngoat_nguy_hiem_lien_tiep.jpg', 'Chỗ Ngoạt Nguy Hiểm Liên Tiếp', 'Chỗ Ngoạt Nguy Hiểm Liên Tiếp', 9),
(129, 'Images/Bien_Bao_Nguy_Hiem/cho_ngoat_nguy_hiem_vong_ben_phai.jpg', 'Chỗ Ngoạt Nguy Hiểm Vòng Bên Phải', 'Chỗ Ngoạt Nguy Hiểm Vòng Bên Phải', 9),
(130, 'Images/Bien_Bao_Nguy_Hiem/cho_ngoat_nguy_hiem_vong_ben_trai.jpg', 'Chỗ Ngoạt Nguy Hiểm Vòng Bên Trái', 'Chỗ Ngoạt Nguy Hiểm Vòng Bên Trái', 9),
(131, 'Images/Bien_Bao_Nguy_Hiem/chuong_ngai_vat.jpg', 'Chướng Ngại Vật', 'Chướng Ngại Vật', 9),
(132, 'Images/Bien_Bao_Nguy_Hiem/chuong_ngai_vat_1.jpg', 'Chướng Ngại Vật', 'Chướng Ngại Vật', 9),
(133, 'Images/Bien_Bao_Nguy_Hiem/chuong_ngai_vat_2.jpg', 'Chướng Ngại Vật', 'Chướng Ngại Vật', 9),
(134, 'Images/Bien_Bao_Nguy_Hiem/cua_chui.jpg', 'Cửa Chui', 'Cửa Chui', 9),
(135, 'Images/Bien_Bao_Nguy_Hiem/di_cham.jpg', 'Đi Chậm', 'Đi Chậm', 9),
(136, 'Images/Bien_Bao_Nguy_Hiem/doan_duong_hay_xay_ra_tai_nan.jpg', 'Đoạn Đường Hay Xảy Ra Tai Nạn', 'Đoạn Đường Hay Xảy Ra Tai Nạn', 9),
(137, 'Images/Bien_Bao_Nguy_Hiem/duong_bi_hep.jpg', 'Đường Bị Hẹp', 'Đường Bị Hẹp', 9),
(138, 'Images/Bien_Bao_Nguy_Hiem/duong_bi_hep_ben_phai.jpg', 'Đường Bị Hẹp Bên Phải', 'Đường Bị Hẹp Bên Phải', 9),
(139, 'Images/Bien_Bao_Nguy_Hiem/duong_bi_hep_ben_trai.jpg', 'Đường Bị Hẹp Bên Trái', 'Đường Bị Hẹp Bên Trái', 9),
(140, 'Images/Bien_Bao_Nguy_Hiem/duong_cao_toc_phia_truoc.jpg', 'Đường Cao Tốc Phía Trước', 'Đường Cao Tốc Phía Trước', 9),
(141, 'Images/Bien_Bao_Nguy_Hiem/duong_cap_dien_phia_truoc.jpg', 'Đường Cáp Điện Phía Trước', 'Đường Cáp Điện Phía Trước', 9),
(142, 'Images/Bien_Bao_Nguy_Hiem/duong_doi.jpg', 'Đường Đôi', 'Đường Đôi', 9),
(143, 'Images/Bien_Bao_Nguy_Hiem/duong_giao_nhau.jpg', 'Đường Giao Nhau', 'Đường Giao Nhau', 9),
(144, 'Images/Bien_Bao_Nguy_Hiem/duong_giao_nhau_1.jpg', 'Đường Giao Nhau', 'Đường Giao Nhau', 9),
(145, 'Images/Bien_Bao_Nguy_Hiem/duong_giao_nhau_2.jpg', 'Đường Giao Nhau', 'Đường Giao Nhau', 9),
(146, 'Images/Bien_Bao_Nguy_Hiem/duong_giao_nhau_3.jpg', 'Đường Giao Nhau', 'Đường Giao Nhau', 9),
(147, 'Images/Bien_Bao_Nguy_Hiem/duong_giao_nhau_4.jpg', 'Đường Giao Nhau', 'Đường Giao Nhau', 9),
(148, 'Images/Bien_Bao_Nguy_Hiem/duong_hai_chieu.jpg', 'Đường Hai Chiều', 'Đường Hai Chiều', 9),
(149, 'Images/Bien_Bao_Nguy_Hiem/duong_ham.jpg', 'Đường Hầm', 'Đường Hầm', 9),
(150, 'Images/Bien_Bao_Nguy_Hiem/duong_khong_bang_phang.jpg', 'Đường Không Bằng Phẳng', 'Đường Không Bằng Phẳng', 9),
(151, 'Images/Bien_Bao_Nguy_Hiem/duong_khong_bang_phang_1.jpg', 'Đường Không Bằng Phẳng', 'Đường Không Bằng Phẳng', 9),
(152, 'Images/Bien_Bao_Nguy_Hiem/duong_ngam.jpg', 'Đường Ngầm', 'Đường Ngầm', 9),
(153, 'Images/Bien_Bao_Nguy_Hiem/duong_nguoi_di_bo_cat_ngang.jpg', 'Đường Người Đi Bộ Cắt Ngang', 'Đường Người Đi Bộ Cắt Ngang', 9),
(154, 'Images/Bien_Bao_Nguy_Hiem/duong_tron.jpg', 'Đường Trơn', 'Đường Trơn', 9),
(155, 'Images/Bien_Bao_Nguy_Hiem/gia_suc.jpg', 'Gia Súc', 'Gia Súc', 9),
(156, 'Images/Bien_Bao_Nguy_Hiem/giao_nhau_chay_theo_vong_xuyen.jpg', 'Giao Nhau Chạy Theo Vòng Xuyến', 'Giao Nhau Chạy Theo Vòng Xuyến', 9),
(157, 'Images/Bien_Bao_Nguy_Hiem/giao_nhau_co_tin_hieu_den.jpg', 'Giao Nhau Có Tín Hiệu Đèn', 'Giao Nhau Có Tín Hiệu Đèn', 9),
(158, 'Images/Bien_Bao_Nguy_Hiem/giao_nhau_voi_duong_2_chieu.jpg', 'Giao Nhau Với Đường 2 Chiều', 'Giao Nhau Với Đường 2 Chiều', 9),
(159, 'Images/Bien_Bao_Nguy_Hiem/giao_nhau_voi_duong_khong_uu_tien.jpg', 'Giao Nhau Với Đường Không Ưu Tiên', 'Giao Nhau Với Đường Không Ưu Tiên', 9),
(160, 'Images/Bien_Bao_Nguy_Hiem/giao_nhau_voi_duong_khong_uu_tien_1.jpg', 'Giao Nhau Với Đường Không Ưu Tiên', 'Giao Nhau Với Đường Không Ưu Tiên', 9),
(161, 'Images/Bien_Bao_Nguy_Hiem/giao_nhau_voi_duong_sat_co_rao_chan.jpg', 'Giao Nhau Với Đường Sắt Có Rào Chắn', 'Giao Nhau Với Đường Sắt Có Rào Chắn', 9),
(162, 'Images/Bien_Bao_Nguy_Hiem/giao_nhau_voi_duong_sat_khong_co_rao_chan.jpg', 'Giao Nhau Với Đường Sắt Không Có Rào Chắn', 'Giao Nhau Với Đường Sắt Không Có Rào Chắn', 9),
(163, 'Images/Bien_Bao_Nguy_Hiem/giao_nhau_voi_duong_sat_khong_co_rao_chan_1.jpg', 'Giao Nhau Với Đường Sắt Không Có Rào Chắn', 'Giao Nhau Với Đường Sắt Không Có Rào Chắn', 9),
(164, 'Images/Bien_Bao_Nguy_Hiem/giao_nhau_voi_duong_uu_tien.jpg', 'Giao Nhau Với Đường Ưu Tiên', 'Giao Nhau Với Đường Ưu Tiên', 9),
(165, 'Images/Bien_Bao_Nguy_Hiem/giao_nhau_voi_duong_uu_tien_1.jpg', 'Giao Nhau Với Đường Ưu Tiên', 'Giao Nhau Với Đường Ưu Tiên', 9),
(166, 'Images/Bien_Bao_Nguy_Hiem/gio_ngang.jpg', 'Gió Ngang', 'Gió Ngang', 9),
(167, 'Images/Bien_Bao_Nguy_Hiem/het_duong_doi.jpg', 'Hết Đường Đôi', 'Hết Đường Đôi', 9),
(168, 'Images/Bien_Bao_Nguy_Hiem/nguy_hiem_khac.jpg', 'Nguy Hiểm Khác', 'Nguy Hiểm Khác', 9),
(169, 'Images/Bien_Bao_Nguy_Hiem/thon_ban.jpg', 'Thôn Bản', 'Thôn Bản', 9);

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
('bangkim', 2, 1, 'dsdf@gmail.com', 'ZmFueXVnaW9oMQ==', '2018-07-09'),
('datran123', 3, 0, 'vdfdsfsd@gmail.com', 'ZmFueXVnaW9oMQ==', '2018-06-30'),
('datran1234', 4, 1, 'datran123@gmail.com', 'ZGF0cmFuMTIzNA==', '2018-07-12'),
('win12345', 6, 0, 'dasdadsd@gmail.com', 'ZmFueXVnaW9oMQ==', '2018-07-09'),
('datrand', 7, 1, 'fanyudfds@gmail.com', 'ZmFueXVnaW9oMQ==', '2018-07-11'),
('admin123', 8, 0, 'adada@gmail.com', 'YWRtaW4xMjM=', '2018-07-12'),
('admin12345', 12, 1, 'admin12345@gmail.com', 'YWRtaW4xMjM0NQ==', '2018-07-12'),
('dmin1234', 16, 0, 'dmini123@gmi.com', 'ZG1pbjEyMw==', '2018-07-12'),
('admin1234', 17, 0, 'admi@gmail.com', 'YWRtaW4xMjM=', '2018-07-12');

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
  MODIFY `AnswerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `examdetails`
--
ALTER TABLE `examdetails`
  MODIFY `ExamDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `ExamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `ImageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `laws`
--
ALTER TABLE `laws`
  MODIFY `LawID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `trafficsigns`
--
ALTER TABLE `trafficsigns`
  MODIFY `TrafficSignID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
