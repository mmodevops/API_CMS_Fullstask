-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 14, 2022 lúc 03:21 PM
-- Phiên bản máy phục vụ: 10.4.12-MariaDB-log
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `app_mobile_gameid`
--
CREATE DATABASE IF NOT EXISTS `app_mobile_gameid` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `app_mobile_gameid`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `app_game_info`
--

DROP TABLE IF EXISTS `app_game_info`;
CREATE TABLE IF NOT EXISTS `app_game_info` (
  `game_id` int(100) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(100) NOT NULL,
  `game_rating` int(10) NOT NULL,
  `game_icon_link` varchar(100) NOT NULL,
  `game_cover_link` varchar(100) NOT NULL,
  `game_ios_link` varchar(100) NOT NULL,
  `game_android_link` varchar(100) NOT NULL,
  `game_status` int(10) DEFAULT 0,
  `game_ios_status` int(10) NOT NULL DEFAULT 1,
  `game_android_status` int(10) NOT NULL DEFAULT 1,
  `game_h5_status` int(10) NOT NULL DEFAULT 0,
  `game_h5_link` varchar(100) NOT NULL,
  `game_total_download` int(100) NOT NULL,
  `game_release_date` date NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`game_id`) USING BTREE,
  UNIQUE KEY `game_id` (`game_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `app_game_info`
--

INSERT INTO `app_game_info` (`game_id`, `game_name`, `game_rating`, `game_icon_link`, `game_cover_link`, `game_ios_link`, `game_android_link`, `game_status`, `game_ios_status`, `game_android_status`, `game_h5_status`, `game_h5_link`, `game_total_download`, `game_release_date`, `createdAt`, `updatedAt`) VALUES
(1, 'Bá Vương Chi Mộng', 5, 'bavuong_icon.png', '', '1264379453', 'com.vtcmobile.hcm.g160201.bavuongchimong', 0, 0, 0, 0, '', 100000, '2015-01-22', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(2, 'Kiếm Hiệp Tình Duyên', 5, 'kiemhiep_icon.png', '', '', 'com.vtcmobile.hcm.g160501.kiemhieptinhduyen', 0, 0, 0, 0, '', 10000, '0000-00-00', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(3, 'Bách Chiến Mobile', 5, 'bachchien_icon.png', '', '', 'com.vtcmobile.hcm.g160601.bachchien', 0, 0, 0, 0, '', 10000, '2016-03-16', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(4, 'Thiên Thư Mobile', 5, 'thienthu_icon.png', '', '1247742576', 'com.vtcmobile.hcm.g160801.thienthu', 0, 0, 0, 0, '', 10000, '2016-11-03', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(5, 'Boom 3D Mobile', 5, 'boom_icon.png', '', '', 'com.vtcmobile.hcm.g170102.bommobile', 0, 0, 0, 0, '', 10000, '2017-02-14', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(6, 'Bùm Chíu', 5, 'bumchiu_icon.png', 'bumchiu_cover.png', '', 'com.vtcmobile.genkihero', 0, 0, 0, 0, '', 30000, '2017-04-12', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(7, 'Đế Vương Truyền Kỳ', 5, 'devuong_icon.png', '', '', 'com.vtcmobile.tulegiangson', 0, 0, 0, 0, '', 10000, '0000-00-00', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(8, 'Ma Thiên Ký', 5, 'mathienky_icon.png', 'mathienky_cover.png', '1264379453', 'mathienkyvtc.nhapvai.com', 0, 0, 0, 0, '', 70000, '2017-09-05', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(9, 'Tử Thanh Song Kiếm', 5, 'tuthanh_icon.png', 'tuthanh_giftcode.png', '1277467190', 'com.gamemobile.ttskfull', 1, 1, 1, 0, '', 100000, '2017-10-21', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(10, 'Hắc Ám Mobile', 5, 'hacam_icon.png', 'hacam_cover.png', '1287801698', 'com.vtcmobile.hacammobile', 0, 0, 0, 0, '', 10000, '2017-12-12', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(11, 'Thiên Địa Chí Tôn', 5, 'thiendia_icon.png', 'thiendia_cover.png', '1370258903', 'com.gamemobile.thiendiachiton', 1, 1, 1, 0, '', 100000, '2018-06-21', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(12, 'Tam Sinh Tam Thế', 5, 'tam_sinh_tam_the_icon.png', 'tamsinh_giftcode.png', '1370258903', 'com.gamemobile.thiendiachiton', 0, 0, 0, 0, '', 10000, '2018-06-21', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(13, 'Kiếm Linh Phi Tiên', 5, 'kiemlinh_icon.png', 'kiemlinh_cover.png', '1390899765', 'com.vtcmobile.kiemlinh', 0, 0, 0, 0, '', 100000, '0000-00-00', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(14, 'Ma Kiếm Sinh Tử Kỳ', 5, 'makiem_icon.png', 'makiem_cover.png', '1385922474', 'com.vtcmobile.makiemsinhtuky', 0, 0, 0, 0, '', 100000, '2018-07-21', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(15, 'Phong Vân VTC', 5, 'phongvan_icon.png', 'phongvan_cover.png', '1370748381', 'com.gamemobile.phongvan', 0, 0, 0, 0, '', 100000, '2018-09-15', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(16, 'Kiếm Vũ 3D', 5, 'kiemvu_icon.png', 'kiemvu_cover.png', '1417002278', 'com.gamemobile.kiemvu3D', 0, 0, 0, 0, '', 100000, '2019-01-04', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(17, 'Ma Đạo Võ Lâm', 5, 'madao_icon.png', 'madao_cover.png', '1447325714', 'com.vtcmobile.madaovolam', 0, 0, 0, 0, '', 121031, '2019-02-27', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(18, 'Hỏa Thiên Quyết VTC', 5, 'hoathienquyet_logo.png', 'hoathienquyet_giftcode.png', '1438376417', 'com.gamemobile.hoathienquyet', 1, 1, 1, 0, '', 100000, '2019-05-09', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(19, 'Ngự Kiếm Vấn Tình VTC', 5, 'ngukiem_logo.png', 'ngukiem_giftcode.png', '1455081112', 'com.vtcmobile.ngukiemvantinhobb', 0, 0, 0, 0, '', 100000, '2019-06-20', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(20, 'Thái Cổ Thần Vương', 5, 'thaico_icon.png', 'thaico_giftcode.png', '1463369328', 'com.vtcmobile.thaicothanvuong', 0, 0, 0, 0, '', 100000, '2019-07-25', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(21, 'Ma Kiếm Hiệp Duyên', 5, 'makiemhiepduyen_icon.png', 'makiemhiepduyen_giftcode.png', '1461432641', 'com.vtcmobile.mkhd', 0, 0, 0, 0, '', 100000, '2019-10-23', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(22, 'Võ Hồn Chiến', 5, 'vohonchien_icon.png', 'vohonchien_giftcode.jpg', '1469347560', 'com.vtcmobile.mhck', 1, 1, 1, 0, '', 100000, '2019-12-20', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(23, 'Thiên Ma Quyết', 5, 'thienmaquyet_icon.png', 'thienmaquyet_giftcode.png', '1477170835', 'com.vtcmobile.thienmaquyetobb', 1, 1, 1, 0, '', 100000, '2020-02-07', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(24, 'Pháp Thuật 3D', 5, 'phapthuat_icon.png', 'phapthuat_giftcode.png', '1483578374', 'com.vtcmobile.phapthuattoithuong', 0, 0, 0, 0, '', 100000, '2020-03-19', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(25, 'Phong Ma Chiến', 5, 'phongma_icon.png', 'phongma_giftcode.jpg', '1483753846', 'com.vtcmobile.phongmachien', 1, 1, 1, 0, '', 100000, '2020-05-15', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(26, 'Kiếm Khách Ca Ca', 5, 'kiemkhachcaca_icon.png', 'kiemkhachcaca_giftcode.png', '1497486410', 'com.vtcmobile.kiemkhachcaca', 0, 0, 0, 0, '', 100000, '2020-07-09', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(27, 'Trảm Tiên Quyết', 5, 'tramtienquoc_icon.png', 'TTQ_Banner_Update_AnhNguyet.jpg', '1509373363', 'com.vtcmobile.tramtienquyetobb', 1, 1, 1, 0, '', 100000, '2020-09-16', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(28, 'CLASH OF GOBLINS', 5, '336f05ed2b22442781c10b990158164c.jpg', '', '', '', 1, 0, 0, 1, 'https://play.giftcode4v.com/play-game.html?id=336f05ed2b22442781c10b990158164c', 5000, '2020-09-01', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(29, 'SUPER RUNCRAFT', 5, 'c5942ec4d034485fb21c9223744e7281.jpg', '', '', '', 1, 0, 0, 1, 'https://play.giftcode4v.com/play-game.html?id=c5942ec4d034485fb21c9223744e7281', 5000, '2020-09-18', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(30, 'ESCAPE OUT', 5, '1a8a9cbaed0f4fd58cbaf8a68656b6fa.jpg', '', '', '', 1, 0, 0, 1, 'https://play.giftcode4v.com/play-game.html?id=1a8a9cbaed0f4fd58cbaf8a68656b6fa', 5000, '2020-09-18', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(31, 'SUGAR HEROES', 5, 'b24567e39b5248eabe77a704dbb555a9.jpg', '', '', '', 1, 0, 0, 1, 'https://play.giftcode4v.com/play-game.html?id=b24567e39b5248eabe77a704dbb555a9', 5000, '2020-09-18', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(32, 'DRAW CLIMBER', 5, 'b00ba96e1d1c4a739454fd9c1e8f7393.jpg', '', '', '', 1, 0, 0, 1, 'https://play.giftcode4v.com/play-game.html?id=b00ba96e1d1c4a739454fd9c1e8f7393', 5000, '2020-09-18', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(33, 'KNIGHTS OF FORTUNE', 5, '6bd98ddce4634e10a688a116666fc2fc.jpg', '', '', '', 1, 0, 0, 1, 'https://play.giftcode4v.com/play-game.html?id=6bd98ddce4634e10a688a116666fc2fc', 5000, '2020-09-18', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(34, 'SUPER SUSHI CAT A PULT', 5, 'df5c1c7745b247368d58cdd83d2587fb.jpg', '', '', '', 1, 0, 0, 1, 'https://play.giftcode4v.com/play-game.html?id=df5c1c7745b247368d58cdd83d2587fb', 5000, '2020-09-18', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(35, 'KNIFEBLADES.IO', 5, 'fb21e6d781194458862534727960fba6.jpg', '', '', '', 1, 0, 0, 1, 'https://play.giftcode4v.com/play-game.html?id=fb21e6d781194458862534727960fba6', 5000, '2020-09-18', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(36, 'LETS FISH', 5, '1e963cec0c594967891134721018cc0f.jpg', '', '', '', 1, 0, 0, 1, 'https://play.giftcode4v.com/play-game.html?id=1e963cec0c594967891134721018cc0f', 5000, '2020-09-18', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(37, 'RED BALL FOREVER', 5, 'dc7eea27033344bcb0dd85686e16bc86.jpg', '', '', '', 1, 0, 0, 1, 'https://play.giftcode4v.com/play-game.html?id=dc7eea27033344bcb0dd85686e16bc86', 5000, '2020-09-18', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(38, 'FIRE BALLS', 5, '2733d5951e04400a8ed857818635e670.jpg', '', '', '', 1, 0, 0, 1, 'https://play.giftcode4v.com/play-game.html?id=2733d5951e04400a8ed857818635e670', 5000, '2020-09-18', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(39, 'Nghịch Thiên Kiếm Thế', 5, 'nghichthien_icon.png', '0908_nghichthien_gifcode.png', '1519176270', 'com.vtcmobile.nhkt', 1, 1, 1, 0, '', 100000, '2020-10-15', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(40, 'Thần Vương Nhất Thế', 5, 'thanvuong_icon.png', 'thanvuong_gifcode.jpg', '1514073459', 'com.vtcmobile.thanvuongnhatthe', 1, 1, 1, 0, '', 100000, '2021-01-07', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(41, 'Chiến Thần Kỷ Nguyên', 5, 'chienthan_icon.png', 'chienthan_giftcode.png', '1522842979', 'com.vtcmobile.ctkn', 1, 1, 1, 0, '', 100000, '2021-03-12', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(42, 'Ngự Thần Sư', 5, 'nguthansu_icon.png', 'nguthansu_giftcode.png', '1541275013', 'com.vtc.nguthansu', 1, 1, 1, 0, '', 100000, '2021-06-03', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(43, 'Tây Hành Kỷ', 5, 'tayhanhky_icon.png', 'tayhanhky_giftcode.png', '1497486410', 'com.vtcmobile.thk', 0, 0, 0, 0, '', 10000, '2021-08-01', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(44, 'Kiếm Đạo Giang Hồ', 5, 'kiemdao_icon.png', 'kiemdao_giftcode.jpg', '1564202656', 'com.vtcmobile.kdghvtc', 0, 0, 0, 0, '', 10000, '2021-08-25', '2021-09-06 13:51:43', '2021-09-06 13:51:43'),
(45, 'Tam Quốc Chí', 5, 'tamquocchi_icon.png', 'tamquocchi_giftcode.png', '1565125572', 'com.vtcmobile.tqc', 1, 1, 1, 0, '', 100000, '2022-01-09', '2021-12-22 16:35:54', '2021-12-22 16:35:54'),
(46, 'Cổ Long Kiếm', 5, 'colongkiem_icon.png', 'colongkiem_giftcode.jpg', '1592621390', 'com.vtcmobile.colongkiem', 1, 1, 1, 0, '', 100000, '2022-01-13', '2022-01-02 21:02:37', '2022-01-02 21:02:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `app_giftcode_event`
--

DROP TABLE IF EXISTS `app_giftcode_event`;
CREATE TABLE IF NOT EXISTS `app_giftcode_event` (
  `giftcode_event_id` int(100) NOT NULL AUTO_INCREMENT,
  `giftcode_event_name` varchar(100) NOT NULL,
  `giftcode_des` varchar(1000) NOT NULL,
  `event_type_id` int(100) NOT NULL DEFAULT 1,
  `game_id` int(100) NOT NULL,
  `giftcode_event_start_date` date NOT NULL,
  `game_link_share` varchar(100) NOT NULL,
  `giftcode_event_end_date` date NOT NULL,
  `giftcode_event_status` int(10) NOT NULL,
  `giftcode_event_teaser` tinyint(4) NOT NULL DEFAULT 0,
  `giftcode_event_cont` int(10) NOT NULL DEFAULT 0,
  `giftcode_event_point` int(100) DEFAULT 0,
  `giftcode_event_value` int(100) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`giftcode_event_id`) USING BTREE,
  UNIQUE KEY `giftcode_event_id` (`giftcode_event_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `app_giftcode_event`
--

INSERT INTO `app_giftcode_event` (`giftcode_event_id`, `giftcode_event_name`, `giftcode_des`, `event_type_id`, `game_id`, `giftcode_event_start_date`, `game_link_share`, `giftcode_event_end_date`, `giftcode_event_status`, `giftcode_event_teaser`, `giftcode_event_cont`, `giftcode_event_point`, `giftcode_event_value`, `createdAt`, `updatedAt`) VALUES
(1, 'Giftcode Thú Cưỡi', '- Lục dã hùng	x1<br>- Đá cường hóa trang bị x10<br>- Đan tiến bậc tọa kị	x10<br>- Thẻ đồng sơ x10', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2017-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(2, 'Giftcode Tiên Nữ', '- Tiên nữ lê lạc x1<br>- Đá cường hóa trang bị x10<br>- Đan tiến bậc tiên nữ x10<br>- Exp đan tiên nữ sơ	 x20', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2017-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(3, 'Giftcode Nhập Ma', '', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2017-09-15', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(4, 'Giftcode Tôn Hiệu', '- Danh hiệu chứng nhận có gấu x1<br>- Quà thuộc tính đan x5<br>- Phù may mắn sơ x5<br>- Thẻ đồng sơ x10', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(5, 'Giftcode Cường Hóa', '- Đá cường hóa trang bị	x10<br>- Túi thủy tinh x20<br>- Đá tẩy luyện	x20<br>- Phù may mắn trung	x2', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(6, 'Giftcode Thời Trang', '- Thịnh hạ y x1<br>- Đan tiến bậc thời trang x10<br>- Đá cường hóa trang bị x10<br>- Thẻ đồng sơ x10', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(7, 'Giftcode Offline', '', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2017-09-27', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(8, 'Giftcode Chiến Hồn (G.hạn)', '- 100 chiến hồn x2<br>- Túi thủy tinh x5<br>- Quyển động quật x2<br>- Thẻ đồng sơ x10', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2017-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(9, 'Giftcode Trung Thu', '', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2017-10-12', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(10, 'Code T.bậc T.trang (G.hạn)', '', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2017-10-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(11, 'Giftcode 20-10 (G.hạn)', '', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2017-10-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(12, 'Code Hallowen (G.hạn)', '- Danh hiệu Run Sợ Đi Phàm Nhân x1<br>- Hồn tru ma x10<br>- Chiến hồn vừa x2<br>- 500 huyết phù x2\n', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(13, 'Code Huyết Phù (G.hạn)', '- 100 mảnh huyết phù x2<br>- Đá cường hóa trang bị x10<br>- Thiên thần sơ x5<br>- Thẻ đồng sơ x5', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(14, 'Code Tôn Sư (G.hạn)', '- Danh hiệu Tôn Sư Trọng Đạo x1<br>- Đan vòng sáng tiên nữ x10<br>- Chiến hồn vừa x2<br>- 500 huyết phù x2', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(15, 'Code Tân Thủ', '- Thẻ KC Khóa - Thuốc toàn năng - Hoa - Đá cường hóa - Tín vật Nike', 1, 10, '2017-12-11', 'http://hacam.vn/dl/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 2, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(16, 'Code 5 Sao', '- Thời trang Mùa Hè Dấu Yêu <br>- Quà mời bạn <br>- Đá tinh hoa <br>- Miễn chiến bài <br>- Tín vật Athena', 1, 10, '2017-12-11', 'http://hacam.vn/dl/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(17, 'Code Avatar', '- Áo thời trang Ký Ức Học Viên <br>- Thẻ vàng <br>- Lông vũ <br>- Tín vật Nikolaos', 1, 10, '2017-12-11', 'http://hacam.vn/dl/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(18, 'Code Loan Tin', '- Mũ thời trang Ký Ức Học Viên <br>- Bình HP Sơ <br>- Tín vật Gaina', 1, 10, '2017-12-11', 'http://hacam.vn/dl/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(19, 'Code Quân Đoàn', '- Chân thời trang Ký Ức Học Viên <br>- Thẻ EXP x2 <br>- Tín vật Hera <br>- Đan thú hồn', 1, 10, '2017-12-11', 'http://hacam.vn/dl/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(20, 'Code Noel', '- Danh hiệu Ông già noel<br>\r\n- Đan vòng sang tiên nữ x30<br>\r\n- Đan tiến bậc pháp bảo x20<br>\r\n- Mảnh chiến hồn vừa x10', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(21, 'Code Dấu Chân ', '- Đan Thú Hồn x5<br>- Tín vật Hera<br>- Thẻ exp x2 x5<br>- Dấu chân Halloween - 7 ngày x1', 1, 10, '2017-09-09', 'http://hacam.vn/teaser/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(22, 'Code Trang Phục ', '- Thời trang 7 ngày', 1, 10, '2017-09-09', 'http://hacam.vn/teaser/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(23, 'Code Mũ ', '- Mũ 7 ngày', 1, 10, '2017-09-09', 'http://hacam.vn/teaser/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(24, 'Code Khung Chat', '- Khung chat 7 ngày', 1, 10, '2017-09-09', 'http://hacam.vn/teaser/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(25, 'Code Năm Mới', '- Vui Xuân Mậu Tuất x1<br>\r\n- Linh cung tiến bậc đan x20<br> \r\n- Vô tự kinh x10<br>\r\n- Mảnh Chiến hồn lớn x5', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(26, 'Code Giáng Sinh', '- Thẻ Ngoại Trang Hatsune Miku ( Ngày )\n- Hộp Linh Hồn x5\n- Nước Thánh x5\n- Lam Thủy Tinh x10\n- Túi Vàng 300k', 1, 6, '2017-09-09', 'http://bumchiu.vn/?utm_source=vtcapp_bumchiu&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(27, 'Code Minion', '- Pet Minion - 2 sao<br>- Pet Táo Đỏ - 2 sao<br>- Nước Thánh x2<br>- Thức Ăn pet lv1 x30<br>', 1, 6, '2017-09-09', 'http://bumchiu.vn/?utm_source=vtcapp_bumchiu&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(28, 'Code Naruto', '- Triệu hồi Naruto - 1 sao<br>- Đá Phụ Ma - Thường x20<br>- Túi Đá lv2 x2<br>', 1, 6, '2017-09-09', 'http://bumchiu.vn/?utm_source=vtcapp_bumchiu&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(29, 'Code VIP Tháng 1', '- Thể Thực X200<br>- Túi Vàng 500k<br>- Thức Ăn Pet lv4 x10<br>- Rương Ngọc Hồn x3<br>', 1, 6, '2017-09-09', 'http://bumchiu.vn/?utm_source=vtcapp_bumchiu&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(30, 'Code U23', '- Đan Thông linh Cánh x5 - Đá Bảo Hộ Cánh x10 - Đan Trưởng thành Cánh x10 - Đan Tư Chất Cánh x10', 2, 10, '2017-09-09', 'http://hacam.vn/teaser/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(31, 'Code Vui Xuân 2018', '- Thể Lực x200 </br>- Đá triệu hồi boss lv55 x3 </br>- Lam thủy tinh x10 </br>-\r\n Giọt nước thánh x25 </br>- Rưởng vàng 500k', 1, 6, '2017-09-09', 'http://bumchiu.vn/?utm_source=vtcapp_bumchiu&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(32, 'Code Tết 2018', '- Danh hiệu cung chúc tân xuân - Chiến kỵ tiến bậc đan x20 - Vô tự kinh x10 - Mảnh chiến hồn lớn x5', 1, 8, '2017-09-09', 'http://mathienky.vn/teaser/?utm_source=vtcapp_mtk&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(33, 'Code Đan Trận Pháp', '- 10 Đan Tư Chất Trận Pháp </br>- 10 Đan Trưởng Thành Trận Pháp </br>- 5 Đá Bảo Hộ Trận Pháp </br>- 5 Đan thông Linh Trận Pháp', 1, 10, '2017-09-09', 'http://hacam.vn/teaser/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-03-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(34, 'Code Đan Thần Binh', '- 10 Đá Tư Chất Thần Binh </br>- 10 Đá Trưởng Thành Thần Binh </br>- 5 Đá Bảo Hộ Thần Binh </br>- 5 Đan Thông Linh Thần Binh', 1, 10, '2017-09-09', 'http://hacam.vn/teaser/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-03-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(35, 'Code Đan Thú Cưỡi', '- 10 Đan Tư Chất Thú Cưỡi </br>- 10 Đan Trưởng Thành Thú Cưỡi  </br>- 5 Đá Bảo Hộ Thú Cưỡi  </br>- 5 Đan Thông Linh Thú Cưỡi', 1, 10, '2017-09-09', 'http://hacam.vn/teaser/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-03-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(36, 'Code Đan Cánh', '- 5 Đan Thông linh Cánh </br>- 5 Đá Bảo Hộ Cánh  </br>- 10 Đan Trưởng thành Cánh \r\n10 Đan Tư Chất Cánh', 1, 10, '2017-09-09', 'http://hacam.vn/teaser/?utm_source=vtcapp_hacam&utm_medium=share&utm_campaign=VTCAPP', '2018-03-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(37, 'Code Lazagame', '- Kim Cương x200\r\n- Mũi Tên May Mắn x10\r\n- Ngọc Hồn Hero x30\r\n- Tử Thủy Tinh x5', 1, 6, '2017-09-09', 'http://bumchiu.vn/?utm_source=vtcapp_bumchiu&utm_medium=share&utm_campaign=VTCAPP', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(38, 'Code Đua Top', '- Tọa Kỵ Tiến Bậc Đan x15\r\n- Toàn Tâm Toàn Ý (hoa) x1\r\n- Tử Sắc Phù Văn Tinh Hoa Rương x1', 2, 11, '2017-09-09', 'http://thiendiachiton.vn/dl/', '2018-12-31', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(39, 'Code Hội Quán', '- Sủng Vật Tiến Bậc Đan x15\r\n- Toàn Tâm Toàn Ý (hoa) x1\r\n- Tử Sắc Phù Văn Tinh Hoa Rương x1', 2, 11, '2017-09-09', 'http://thiendiachiton.vn/dl/', '2018-12-31', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(40, 'Code 5 Sao', '- Thời Trang Túy Mộng Vân Yên x1 \r\n- Thuốc mệt mỏi BOSS TG x1 \r\n- Toàn Tâm Toàn Ý (hoa) x1 \r\n- 20 vạn đồng x2', 2, 11, '2017-09-09', 'http://thiendiachiton.vn/dl/', '2018-12-31', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(41, 'Code Avatar', '- Rương 5 Bậc Trang Bị Tím x1\r\n- Tầm Bảo Lệnh x1\r\n- Thẻ EXP 1,5 lần x1\r\n- Chìa khóa túi x2', 2, 11, '2017-09-09', 'http://thiendiachiton.vn/dl/', '2018-12-31', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(42, 'Code Bang', '- Hồng Bảo Thạch lv 3 x1\r\n- Lam Bảo Thạch lv3 x1\r\n- Thẻ Offline x1\r\n- 20 vạn đồng x1', 2, 11, '2017-09-09', 'http://thiendiachiton.vn/dl/', '2018-12-31', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(43, 'Code VIP OB', '- Tọa kỵ tiến giai đan*10\r\n- Vũ dực tiến giai đan*10\r\n- Hồn vây cánh*25\r\n- 200 hồn lực*5', 2, 13, '2018-06-28', 'https://www.facebook.com/kiemlinh.vn/', '2018-12-31', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(44, 'Code Đặc Biệt', '- Tinh Hoa Cánh - Sơ x10\r\n- Tinh Hoa Pháp Bảo - Sơ x10\r\n- Tinh Hoa Thần Binh - Sơ x10\r\n- 20 vạn đồng x2', 1, 11, '2018-06-01', 'http://thiendiachiton.vn/dl', '2018-07-31', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(45, 'Code Lazagame', '- Cường hóa thạch x3 \r\n- Tọa kỵ tiến giải đan x5 \r\n- Thẻ x1.5 EXP x1', 1, 14, '2018-07-20', 'http://makiem.vn/dl', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(46, 'Code VTC MOBILE', '- Danh hiệu VTC MOBILE', 2, 14, '2018-07-20', 'http://makiem.vn/dl', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(47, 'Code Quý Tộc', '- Danh hiệu Đẳng cấp Quý Tộc', 2, 14, '2018-07-20', 'http://makiem.vn/dl', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(48, 'Code cấp độ 61', '- Danh hiệu Chứng Nhận Tốt Nghiệp', 2, 14, '2018-07-20', 'http://makiem.vn/dl', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(49, 'Code Chơi Đẹp', '- Danh hiệu Chơi Đẹp', 2, 14, '2018-07-20', 'http://makiem.vn/dl', '2018-12-31', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(50, 'Code Quả Bóng Vàng', '- Danh hiệu Quả Bóng Vàng', 2, 14, '2018-07-20', 'http://makiem.vn/dl', '2018-12-31', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(51, 'Code Vô Địch', '- Danh hiệu: Vô địch World Cup', 2, 14, '2018-07-20', 'http://makiem.vn/dl', '2018-12-31', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(52, 'Code Avatar', '- Cường hóa thạch x25\r\n- x2 EXP x2\r\n- Túi sách kĩ năng bị động x2\r\n(Hôm sau quay lại sẽ được nhận tiếp tục)', 2, 14, '2018-07-20', 'http://makiem.vn/dl', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(53, 'Code Bang', '- Danh Hiệu: Trùm Bán Hành x1\r\n- Hộp tư chất đan x2\r\n- Túi Tinh Luyện Thạch x3\r\n- Lệnh Bài Bang x2\r\n(Hôm sau quay lại sẽ được nhận tiếp tục)', 2, 14, '2018-07-20', 'http://makiem.vn/dl', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(54, 'Code 5 Sao', '- Cường hóa thạch x20\r\n- Túi bảo thạch cấp 2 x2\r\n(Hôm sau quay lại sẽ được nhận tiếp tục)', 2, 14, '2018-07-20', 'http://makiem.vn/dl', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(55, 'Áo Thun Ma Kiếm', '- Áo thun Ma Kiếm Sinh Tử Kỳ', 1, 14, '2018-07-21', 'http://makiem.vn/dl', '2018-07-31', 0, 0, 0, 0, 2000000, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(56, 'Code Livestream', '- Đá Cường Hóa x50\r\n- Sách Kỹ Năng Tọa Kỵ x2\r\n- Danh Hiệu: Hội Xem Chùa', 2, 14, '2018-07-31', 'http://makiem.vn/dl', '2018-08-05', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(57, 'Code tháng 8', '- Hoàn Hồn Đan x2 \r\n- Túi bảo thạch cấp 2 x2 \r\n- Thẻ x1.5 EXP x1\r\n(Hôm sau quay lại sẽ được nhận tiếp tục)', 2, 14, '2018-08-01', 'http://makiem.vn/dl', '2018-08-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(58, 'Code Tân Thủ', '- Thẻ x1.5 exp x2\r\n- Hộp tiến giải đan x20\r\n- Túi tinh luyện thạch x5\r\n- Giày Thần Hành	x5\r\n(Hôm sau quay lại sẽ được nhận tiếp tục)', 1, 14, '2018-08-01', 'http://makiem.vn/dl', '2018-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(59, 'Code Tri Ân', '- Code tri ân, vào game để nhận quà', 2, 11, '2018-08-01', 'http://thiendiachiton.vn/dl', '2018-08-31', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(60, 'Code Trung Thu', '- Hộp Tiến Giải Đan x10\r\n- Hộp Tư Chất Đan x2\r\n- Hộp Sách Kỹ Năng Bị Động x2\r\n- Đá Cường Hóa x20', 2, 14, '2018-09-22', 'http://makiem.vn/dl', '2018-10-22', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(61, 'Code Halloween', '- Danh hiệu Chưa Đủ Biến Thái (30 ngày)\r\n- Hộp Tiến Giải Đan x10\r\n- Hộp Tiên Khí Đan x10\r\n- Hộp Bảo Thạch Cấp 2 x2\r\n- Đá Cường Hóa x50', 2, 14, '2018-10-31', 'http://makiem.vn/dl', '2018-11-30', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(62, 'Giftcode Năm Mới', '- Danh hiệu: Không Sợ Vợ\r\n- Khí Nguyên Quả \r\n- Túi Lục Hợp x5\r\n- Thẻ Treo Máy Offline x3\r\n- Đạo Hạnh Bảo Hộ Phù x2', 2, 14, '2019-01-01', 'http://makiem.vn/dl', '2019-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(63, 'Code Táo Quân', '- Khung avatar: Đón Tết\r\n- Quyển Bí Kíp Đồ Đỏ x5\r\n- Hộp Tiến Giải Đan x20\r\n- Đá Cường Hóa x25', 2, 14, '2019-01-30', 'http://makiem.vn/dl', '2019-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(64, 'Code Năm Mới', '- Vật phẩm hấp dẫn', 2, 11, '2019-01-30', 'http://thiendiachiton.vn/dl', '2019-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(65, 'Code Tân Thủ', '- Thú Cưỡi Đan x10\r\n- Hiệp Lữ Đan x10\r\n- Túi HP-Sơ x5\r\n- Luyện Thể Linh Quyết x1\r\n- Bạc x200000', 1, 17, '2019-02-26', 'http://madaovolam.vn/dl', '2020-01-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(66, 'Code Rũ Bạn', '- Đan Tăng Nhanh Thuộc Tính(Lớn) x1\r\n- Túi Minh Văn Lv2 x1\r\n- Thú Cưỡi Đan x10\r\n- Thần Khí Đan x10\r\n- Pháp Trận Đan x10', 2, 17, '2019-02-26', 'http://madaovolam.vn/dl', '2019-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(67, 'Code 5 Sao', '- Thời trang Phong Tình x1\r\n- Vạn Năng Đan x10\r\n- Trảm Thạch-Thường x5\r\n- Túi HP-Trung x10\r\n- Thẻ 10 Vạn Bạc x2', 2, 17, '2019-02-26', 'http://madaovolam.vn/dl', '2019-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(68, 'Code Avatar', '- Gà Đáng Yêu(1 Ngày) x1\r\n- Thần Khí Đan x5\r\n- Chìa Thám Bảo x3\r\n- Luyện Thể Linh Quyết x2\r\n- Thẻ 10 Vạn Bạc x2', 2, 17, '2019-02-26', 'http://madaovolam.vn/dl', '2019-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(69, 'Code Bang', '- Quyển Treo Thưởng Tầng 1(Cam) x1\r\n- Lệnh Bài Bang Lv1 x1\r\n- 99 Hoa Tươi x1\r\n- Hiệp Lữ Đan x15\r\n- Đá Cường Hóa x5', 2, 17, '2019-02-26', 'http://madaovolam.vn/dl', '2019-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(70, 'Code Mừng 30-4', '- Chìa Thám Bảo x5\r\n- Hiệp Lữ Đan x20\r\n- Linh Lực Đan-Sơ x5\r\n- Thẻ 1 Vạn Bạc x10', 2, 17, '2019-04-27', 'http://madaovolam.vn/dl', '2019-05-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(71, 'Code Lễ 30-4', '- Lang Thang Là Chết Đói x1\r\n- Hộp Tư Chất Đan x5\r\n- Sách Exp 5 x1\r\n- Nội Đan Sơ Cấp x10\r\n- Thần Ấn Phù Vân x5', 2, 14, '2019-04-27', 'http://makiem.vn/dl', '2019-10-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(72, 'Code Bang Hội', '- Cánh  Viêm Dương Thần Dực x1\r\n- Đan Tăng Vũ Dực x10\r\n- Đá Cường Hoá x10 \r\n- 1000 Ma Tinh x10', 2, 19, '2019-06-20', 'http://ngukiemvantinh.vn/dl', '2019-07-20', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(73, 'Code Mời Bạn', '- Thẻ chat tuyệt đẹp x20 \r\n- Đan Tăng Toạ Kỵ x10 \r\n- 1.5EXP X2 \r\n- 1000 Ma Tinh x10', 1, 19, '2019-07-22', 'http://ngukiemvantinh.vn/dl', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(74, 'Code Vote 5 Sao', '- Tiểu Yêu Kê \r\n- Đan Tăng Dấu Chân x10\r\n- Đan Tăng Đồng Hành x10 \r\n- 1000 Ma Tinh x10', 1, 19, '2019-07-22', 'http://ngukiemvantinh.vn/dl', '2020-02-29', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(75, 'Code Avatar', '- Khung Avatar Quý Tộc Độc Thân \r\n- Đan Tăng Vòng Sáng x10 \r\n- Đan Tăng Chiến Kỵ x10 \r\n- 1000 Ma Tinh x10', 1, 19, '2019-07-22', 'http://ngukiemvantinh.vn/dl', '2020-02-29', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(76, 'Code Tân Thủ', '- Xán Lạn Kim Toàn x1 \r\n- 100KNB khóa x1 \r\n- Phù Bảo Vệ Cường Hóa x1 \r\n- 1000 Ma Tinh x10 \"', 1, 19, '2019-07-22', 'http://ngukiemvantinh.vn/dl', '2020-02-29', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(77, 'Code Thanh Lương', '- Thời trang: Thanh Lương Nhất Hạ x1', 1, 11, '2019-07-24', 'http://thiendiachiton.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(78, 'Code Quốc Khánh', '- Túi Minh Văn Lv6 x2\r\n- Vạn Năng Đan x20\r\n- 800 KNB khóa\r\n- 80 Vạn Bạc', 2, 17, '2019-09-02', 'http://madaovolam.vn/dl/', '2019-09-15', 1, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(79, 'Code Quốc Khánh', '- Cờ Đỏ Sao Vàng x1 \r\n- Quà Tinh Thạch x20\r\n- Mảnh Tụ Linh Thần Thạch x20\r\n- Linh Bảo Tinh Phách x 30', 2, 14, '2019-09-02', 'http://makiem.vn/dl/', '2019-10-31', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(80, 'Code trung Thu', '- Đan tăng nhanh thuộc tính x2\r\n- Túi minh văn lv6 x2\r\n- Thẻ 100KNB khóa x12\r\n- Thẻ 1 vạn bạc x120', 2, 17, '2019-09-12', 'http://madaovolam.vn/dl/', '2019-09-30', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(81, 'Code Tiễn Tháng 9', '- Xuân Hoa Nguyệt x1\r\n- Thiên Nguyên Thánh Thạch x10\r\n- Nguyên Thần Đan x10\r\n- Bảo Bảo Đan x20\r\n- Qủa Kinh Nghiệm Bảo Bảo x 10', 1, 14, '2019-09-30', 'http://makiem.vn/dl/', '2019-10-31', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(82, 'Code Trung Thu', '- Lễ Mừng Vui Vẻ x1\r\n- Tính Hoa Vòng Sáng Đồng Hành x10\r\n- Đan Tăng Linh Đồng x10\r\n- Thẻ x2 EXP x1', 1, 19, '2019-10-18', 'http://ngukiemvantinh.vn/dl', '2020-02-29', 1, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(83, 'Code Teaser', '- Tơ Ngũ Sắc x13\r\n- KNB Khóa x500\r\n- Linh chi hồn x10\r\n- Phòng Sủng x2\r\n- Phòng Yêu Linh x2', 1, 21, '2019-10-23', 'http://makiemhiepduyen.vn/dl', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(84, 'Chiến Hồn', '- Chiến Hồn Thạch Sơ x10 \r\n- Toàn Tâm Toàn Ý x1 \r\n- Thẻ Treo Máy Offline x1\r\n- 10 vạn Đồng x2', 1, 11, '2019-11-01', 'http://thiendiachiton.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(85, 'Tẩy Luyện', '- Đá Tẩy Luyện x50\r\n- Thẻ Treo Máy Offine x1 \r\n- Thẻ Treo Máy Offline x1\r\n- 10 vạn Đồng X1', 1, 11, '2019-11-01', 'http://thiendiachiton.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(86, 'Halloween', '- Danh hiệu Con Mả Con Ma x1\r\n- Hộp Bảo Thạch Cấp 6 x1 \r\n- Hộp Trưởng Thành Đan x3 \r\n- Hộp Tiến Giải Đan x20\r\n- Mảnh Tụ Linh Thần Thạch x20', 2, 14, '2019-11-02', 'http://makiem.vn/dl/', '2019-12-01', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(87, 'Code S100 - Ngày 1', '- 100 KNB khóa\r\n- Đá thần chú x1\r\n- x2 EXP x1\r\n- Vé đổi hình tượng tủ áo x 1', 2, 19, '2019-11-08', 'http://ngukiemvantinh.vn/dl', '2019-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(88, 'Code S100 - Ngày 2', '- 150 KNB khóa\r\n- Thần chú thiết x1\r\n- x2 EXP x1\r\n- Vé đổi hình tượng tủ áo x 2', 2, 19, '2019-11-09', 'http://ngukiemvantinh.vn/dl', '2020-01-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(89, 'Code S100 - Ngày 3', '- 250 KNB khóa\r\n- Đá thần chú x1\r\n- Thần chú thiết x1\r\n- Vé đổi hình tượng tủ áo x 3', 2, 19, '2019-11-10', 'http://ngukiemvantinh.vn/dl', '2020-01-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(90, 'Code Bất Ngờ', '- Hiệp Lữ Đan x20\r\n- Linh Lực Đan-Sơ x5\r\n- Chìa Thám Bảo x5\r\n- Thẻ 1 Vạn Bạc x10', 2, 17, '2019-11-20', 'http://madaovolam.vn/dl/', '2019-12-02', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(91, 'Code Tân Thủ', '- Đá Tiềm Năng Tọa Kỵ x2\r\n- Giang Hỏa Lưu Huỳnh x1\r\n- Tử Tinh Xích x1\r\n- KNB Khóa x200', 2, 22, '2019-12-20', 'http://vohonchien.vn/dl', '2021-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(92, 'Code Teaser', '- Đá Tiềm Năng Tọa Kỵ  x2\r\n- Giang Hỏa Lưu Huỳnh  x1\r\n- Tử Tinh Xích  x1\r\n- KNB Khóa  x200\r\n- Khung Chat Bích Vân (7 Ngày)  x1', 1, 22, '2019-12-23', 'http://vohonchien.vn/dl', '2020-12-31', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(93, 'Code Giáng Sinh', '- Danh hiệu Giáng Sinh Ngọt Ngào x1\r\n- Tinh Hoa Pháp Trận Đồng Hành x10\r\n- Đan Ngộ Tính Tiên Sủng x10\r\n- x2 EXP x1', 1, 19, '2019-12-24', 'http://ngukiemvantinh.vn/dl', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(94, 'Code End Year 2019', 'Chúc Mừng Năm Mới x1\r\nĐan Tăng Vòng Sáng x10\r\n50000 Hồn Lực x5\r\nx2 EXP x1', 1, 19, '2020-01-01', 'http://ngukiemvantinh.vn/dl', '2020-03-01', 1, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(95, 'Code Tư Chất', 'Danh Hiệu - VTC Mobile x1\r\nHộp Tiến Giải Đan x30\r\nĐá Cường Hóa  x50\r\nHộp Bảo Thạch Cấp 3  x1\r\nThẻ Exp x5	x1	\r\nHộp Tư Chất Đan	x10', 1, 14, '2020-01-01', 'http://makiem.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(96, 'Code Trưởng Thành', 'Danh Hiệu - Chứng Nhận Tốt Nghiệp x1\r\nHộp Tiến Giải Đan	 x30\r\nĐá Cường Hóa 	x50\r\nHộp Bí Kíp Đồ Đỏ	x5\r\nThẻ Exp x5	x1\r\nHộp Trưởng Thành Đan	x10', 1, 14, '2020-01-01', 'http://makiem.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(97, 'Code Cường Hóa', 'Đẳng cấp Quý Tộc\r\nHộp Tiến Giải Đan\r\nĐá Cường Hóa\r\nHộp Tư Chất Đan	\r\nHộp Trưởng Thành Đan \r\nHộp Bảo Thạch Cấp 3', 1, 14, '2020-01-01', 'http://makiem.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(98, 'Code Năm Tý', 'Yên Hỏa Từ Cựu (8k)\r\nQùa tiến giải đan 1/10 (50 cái)\r\nThẻ Exp x5\r\nTụ Linh Thần Thạch\r\nHộp Sách Kỹ Năng Bị Động', 1, 14, '2020-01-25', 'http://makiem.vn/dl/', '2020-02-18', 1, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(99, 'Nguyên Đán', 'Danh Hiệu: Nguyên Đán Vui Vẻ\r\nĐan Tăng Tọa Kỵ\r\n500 Linh Dịch\r\nx2 EXP', 1, 19, '2020-01-25', 'http://ngukiemvantinh.vn/dl', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(100, 'Code Đoàn Viên', 'Luyện Thần Đan\r\nThần Khí Đan\r\nLinh Lực Đan- Cao\r\nThẻ 1 Vạn Bạc', 1, 17, '2020-01-25', 'http://madaovolam.vn/dl/', '2020-02-25', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(101, 'Code Teaser', 'Mảnh Truyền Thuyết Thạch x3\r\n200 KNB Khóa x1\r\nLệnh Triệu Tập Bang x2\r\nHộp Sách Tiến Bậc Kỹ Năng x3\r\nPhục Hoạt Dược x5', 1, 23, '2020-02-07', 'http://thienmaquyet.vn/dl', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(102, 'Code Vote 5 Sao', 'Thần Binh·Ái Tâm Chùy(3 ngày) x1\r\nĐá Tinh Luyện Công  x2\r\nĐá Tinh Luyện HP x2\r\nĐá Tinh Luyện Phòng x2\r\nGiải Nghiệp Lệnh x3', 2, 23, '2020-02-07', 'http://thienmaquyet.vn/dl', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(103, 'Code Mời Bạn', 'Chí Tôn Thạch x1\r\nCàn Khôn Đan x3\r\nkhóa Tẩy Luyện x2\r\nĐá Tẩy Luyện x3\r\nTật Hành Ngoa x3', 1, 23, '2020-02-07', 'http://thienmaquyet.vn/dl', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(104, 'Code Bang', 'Đồng Hành - Lục Ảnh Bà Sa (3 ngày)	x1\r\nQuà Đá Tinh Luyện	x2\r\nLệnh Bài Bang	x2\r\nĐan Linh Thụ	x3\r\nKhóa Bạc	x1', 1, 23, '2020-02-07', 'http://thienmaquyet.vn/dl', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(105, 'Code Avatar', 'Avatar·Thanh Lịch (7 ngày)	 x1\r\nĐan Tiến Bậc Đồng Hành	x3\r\nHuyền Không Thạch	x2\r\nĐá Cường Hóa	x5', 2, 23, '2020-02-07', 'http://thienmaquyet.vn/dl', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(106, 'Code Hẹn Ước', 'DH Vì Yêu Mà Đến	x1\r\nHộp Đan Trưởng Thành	x2\r\nThần Khí Đột Phá Đan	 x2\r\nSách Kỹ Năng Đồng Hành	x3\r\nLinh Dược Công Lv3	x2', 1, 23, '2020-02-07', 'http://thienmaquyet.vn/dl', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(107, 'Code Lì Xì', '300 KNB Khóa	x1\r\nThuốc Thêm Lượt Săn Boss Thiên Ma	x1\r\nQuà Đá Tinh Luyện	x1\r\nBảo Bảo Tiến Bậc Đan x10\r\nLinh Dược HP lv3	x2', 1, 23, '2020-02-07', 'http://thienmaquyet.vn/dl', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(108, 'Valentine 14/02', 'Chúc Phúc Lãng Mạn x1\r\nĐan Tăng Vũ Dực x10\r\nNước Tình Yêu	x10\r\nĐan Tăng Bảo Bảo x10', 1, 19, '2020-02-14', 'http://ngukiemvantinh.vn/dl', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(109, 'Code Teaser', '-Đá Đỏ lv3\r\n-Đá Lam lv3\r\n-Đồng Hồ Thời Gian 1h\r\n-100 Kim Cương Khóa', 1, 24, '2020-03-19', 'http://phapthuat3d.vn/dl/', '2020-12-31', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(110, 'Code Fashion', 'Thời Trang Y Phục: Hi Vọng Ngày Mai (7 ngày)\r\nThuốc mệt mỏi BOSS \r\n 9 Hoa Hồng\r\n100 Kim Cương Khóa', 2, 24, '2020-03-19', 'http://phapthuat3d.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(111, 'Code Gia Tộc', 'Rương 5 Bậc Trang Bị Tím\r\nVé Tầm Bảo Cực Phẩm 1 Lần\r\nVé EXP x1,5\r\nVé Tầm Bảo Tarot 1 Lần', 1, 24, '2020-03-19', 'http://phapthuat3d.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(112, 'Code Vote 5 Sao', 'Thời Trang Y Phục: Khúc Ca Ảo Vọng (7 ngày)\r\nThuốc mệt mỏi BOSS \r\n 9 Hoa Hồng\r\n100 Kim Cương Khóa', 2, 24, '2020-03-19', 'http://phapthuat3d.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(113, 'Code Teaser', '- Thuốc Exp x2\r\n- Tâm Pháp Lệnh x1\r\n- Đá Công Lv3 x1\r\n- Tinh Bàn May Mắn x4\r\n- Như Diều Gặp Gió x1', 1, 25, '2020-05-15', 'http://phongmachien.vn/dl/', '2021-05-31', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(114, 'Code Mời Bạn Chơi Game', 'Share link đi code sẽ về!', 2, 25, '2020-05-15', 'https://www.facebook.com/phongmachien.vn/posts/151139263114333', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(115, 'Code Thay Avatar', 'Share Link đi code sẽ về!!', 2, 25, '2020-05-15', 'https://www.facebook.com/phongmachien.vn/posts/151139263114333', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(116, 'Code Tọa Kỵ', 'Share Link đi code sẽ về !!', 2, 25, '2020-05-15', 'https://www.facebook.com/phongmachien.vn/posts/151139263114333', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(117, 'Code Phó Bản', 'Chúc bạn ngày chơi game vui vẻ, nhớ share link để lấy code nhé :)', 2, 25, '2020-05-15', 'https://www.facebook.com/phongmachien.vn/posts/151139263114333', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(118, 'Mời Bạn Chơi Game', 'Code Mời Bạn Chơi Game: Chia sẽ để lấy code nhé\r\nChúc bạn một ngày chiến game vui vẻ', 2, 25, '2020-05-16', 'https://www.facebook.com/phongmachien.vn/posts/151139263114333', '2020-12-16', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(119, 'Thay Avatar', 'Code Mời Bạn Chơi Game: Chia sẽ để lấy code nhé\r\nChúc bạn một ngày chiến game vui vẻ', 2, 25, '2020-05-16', 'https://www.facebook.com/phongmachien.vn/posts/151139263114333', '2020-12-16', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(120, 'Code Tọa Kỵ', 'Code Mời Bạn Chơi Game: Chia sẽ để lấy code nhé\r\nChúc bạn một ngày chiến game vui vẻ', 2, 25, '2020-05-16', 'https://www.facebook.com/phongmachien.vn/posts/151139263114333', '2020-12-16', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(121, 'Code Phó Bản', 'Code Mời Bạn Chơi Game: Chia sẽ để lấy code nhé\r\nChúc bạn một ngày chiến game vui vẻ', 2, 25, '2020-05-16', 'https://www.facebook.com/phongmachien.vn/posts/151139263114333', '2020-12-16', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(122, 'Code Quốc Tế Thiếu Nhi', '- Đan Tiến Bậc Bảo Bảo x20\r\n- Bé Voi x6\r\n- Bé Thỏ x6\r\n- Đan Tiến Bậc Đồ Chơi x6\r\n- 1000 KNB khóa', 2, 23, '2020-06-01', 'http://thienmaquyet.vn/dl/', '2020-06-15', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(123, 'VIP CODE', 'Share bài LOAN TIN UPDATE nhận code VIP nào!!!', 2, 23, '2020-06-04', 'https://www.facebook.com/thienmaquyet.vn/photos/a.155268135823195/261426381874036/?type=3&theater', '2020-06-30', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(124, 'SUPERNOVA', 'Code SUPERNOVA:\r\nChúc bạn một ngày chiến game vui vẻ', 1, 24, '2020-06-27', 'http://phapthuat3d.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(125, 'Code Mừng 3 Tháng 01', 'Code Mừng 3 Tháng 01:\r\nChúc bạn một ngày chiến game vui vẻ', 1, 24, '2020-06-27', 'http://phapthuat3d.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(126, 'Code Mừng 3 Tháng 02', 'Code Mừng 3 Tháng 02:\r\nChúc bạn một ngày chiến game vui vẻ', 1, 24, '2020-06-27', 'http://phapthuat3d.vn/dl/', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(127, 'Code Mừng 3Tháng 02', 'Code Mừng 3Tháng 02:\r\nChúc bạn một ngày chiến game vui vẻ', 1, 24, '2020-06-27', 'http://phapthuat3d.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(128, 'Code Mừng 3 Tháng 03', 'Code Mừng 3 Tháng 03\r\nChúc bạn chơi game vui vẻ', 1, 24, '2020-06-27', 'http://phapthuat3d.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(129, 'Code Sự Kiện Offline', 'Code Sự Kiện Offline\r\nChúc bạn chơi game vui vẻ', 2, 25, '2020-06-27', 'https://www.facebook.com/watch/?v=546668799312642', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(130, 'Code Teaser', '- 100 KNB Khóa\r\n- Kinh Nghiệm Đan Tọa Kỵ\r\n- Hộ Hoa Lệnh\r\n- Dược thủy EXP x1.5', 1, 26, '2020-07-09', 'https://kiemkhachcaca.vn/dl/', '2020-12-31', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(131, 'Code Rủ Bạn', '- Khóa tầm bảo trang bị\r\n- Kinh Nghiệm Đan Thị Sủng\r\n- Trang Bị Chú Linh Thạch\r\n- 50 Vạn Bạc', 2, 26, '2020-07-09', 'https://kiemkhachcaca.onelink.me/g2Uk/oacib', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(132, 'Code Gia Tộc', '- Dược Tế Trừ Ma\r\n- Kinh Nghiệm Đan Sủng Kỵ\r\n- Khiêu chiến thủ lĩnh cá nhân\r\n- Dược thủy EXP x1.5', 2, 26, '2020-07-09', 'https://kiemkhachcaca.onelink.me/g2Uk/ueihneyugn', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(133, 'Code Avatar', '- Khung avatar Cún Độc Thân\r\n- Kinh Nghiệm Đan Sủng Võ\r\n- Trang Bị Chú Linh Thạch\r\n- Hộ Hoa Lệnh', 2, 26, '2020-07-09', 'https://kiemkhachcaca.onelink.me/g2Uk/oacib', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(134, 'Code Vote 5 Sao', 'Guita Cuồng Nhiệt\r\nPhá Toái Phù Văn\r\nThẻ Offline 5 tiếng\r\n50 Vạn Bạc', 2, 26, '2020-07-09', 'https://kiemkhachcaca.onelink.me/g2Uk/ueihneyugn', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(135, 'Code Teaser', '- Lì Xì May Mắn x2\r\n- Đan Kỵ Thú x20\r\n- Đan Trưởng Thành x20\r\n- Đan Tiến Bậc Pháp Tướng x20\r\n -Đan EXP X1.5 x2', 1, 27, '2020-09-16', 'http://tramtienquyet.vn/dl/', '2020-12-29', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(136, 'Code Rủ Bạn', '- Khóa tầm bảo trang bị\r\n- Kinh Nghiệm Đan Thị Sủng\r\n- Trang Bị Chú Linh Thạch\r\n- 50 Vạn Bạc', 1, 26, '2020-09-03', '', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(137, 'Code Gia Tộc', '- Dược Tế Trừ Ma\r\n- Kinh Nghiệm Đan Sủng Kỵ\r\n- Khiêu chiến thủ lĩnh cá nhân\r\n- Dược thủy EXP x1.5', 1, 26, '2020-09-03', '', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(138, 'Code Avatar', '- Khung avatar Cún Độc Thân\r\n- Kinh Nghiệm Đan Sủng Võ\r\n- Trang Bị Chú Linh Thạch\r\n- Hộ Hoa Lệnh', 1, 26, '2020-09-03', '', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(139, 'Code Vote 5 Sao', 'Guita Cuồng Nhiệt\r\nPhá Toái Phù Văn\r\nThẻ Offline 5 tiếng\r\n50 Vạn Bạ', 1, 26, '2020-09-03', '', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(140, 'Code Avatar', 'Nguyệt Nha Liềm x2\r\nXẻng Tầm Long x2\r\nLệnh Bài Đồ Ma x2\r\nVận Tiêu Lệnh x5\r\nThông Thiên Lệnh x2', 2, 27, '2020-09-16', 'http://tramtienquyet.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(141, 'Code Tiên Minh', 'Lì Xì May Mắn x1\r\n500 vạn Xu x1\r\nĐá Tử Linh x1\r\nLệnh Phong Yêu x1\r\nTúi Đựng x10', 2, 27, '2020-09-16', 'http://tramtienquyet.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(142, 'Code Vote app 5 Sao', 'Thiên Tuyền Tinh x10\r\nĐá Tăng Sao x20\r\nVân Du Hương x2\r\nPhá Ma Phù x2\r\nĐan EXP 1.5 x2', 2, 27, '2020-09-30', 'http://tramtienquyet.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(143, 'Trung Thu 2020', 'Chúc A/E Trung Thu 2020 vui vẻ', 1, 11, '2020-10-01', '', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(144, 'Code Teaser', 'Thẻ Thử Nghiệm Thanh Oa Công Chúa\r\nSủng Vật Tiến Bậc Đan\r\nĐan Tiến Bậc Tọa Kỵ\r\nThiên Lôi Bí Kim\r\n50 vạn bạc', 1, 39, '2020-10-15', '', '2021-06-30', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(145, 'Code Bang', 'Thẻ thử nghiệm Minh Minh Quốc Bảo x1\r\nLệnh Triệu Hồi BOSS x1\r\n1000 Bang hội cống hiến x3\r\nChìa khóa tiên cảnh x1', 1, 39, '2020-10-15', 'http://nghichthienkiemthe.vn/dl/', '2021-06-30', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(146, 'Code Avatar', 'Avatar-Vạn Hoa x1\r\nVũ Dực Thánh Hoa Sơ Cấp x10\r\nBích Tinh Thạch x5\r\n100 vạn bạc x1', 1, 39, '2020-10-15', 'http://nghichthienkiemthe.vn/dl/', '2021-06-30', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(147, 'Code Vote 5 Sao', 'Thẻ thử nghiệm Minh Minh Hùng Chưởng x1\r\nChân Thị Đan	 x2\r\nPháp Bảo Thánh Hoa Sơ Cấp x10\r\n100 vạn bạc x1', 2, 39, '2020-10-15', 'http://nghichthienkiemthe.vn/dl/', '2021-06-30', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(148, 'Code PR1', 'Tiên Duyên Yên Hoa x1\r\nRương Bảo Thạch Lv2 x2\r\nHộ Tống Lệnh x2\r\nPhù Văn Lệnh x1', 2, 39, '2020-10-15', 'http://nghichthienkiemthe.vn/dl/', '2021-06-30', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(149, 'Code PR2', 'Bì Lao Tiên Quả x1\r\nNgưng Thái Tiên Ngọc x5\r\nLinh Thiết x3\r\nChìa khóa tiên cảnh x1', 2, 39, '2020-10-15', 'http://nghichthienkiemthe.vn/dl/', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(150, 'Ảnh Nguyệt', 'KNB Khóa x500\r\nĐan Kỵ Thú x50\r\nĐan EXP x1.5 x5\r\nĐan Trưởng Thành x50\r\n20.000.000 Xu', 1, 27, '2020-10-30', 'http://tramtienquyet.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(151, 'Code Đọa Lạc', 'Mừng cập nhật phiên bản mới Đọa Lạc Chi Địa, gửi tặng bạn giftcode nè :3', 2, 39, '2020-11-09', 'http://nghichthienkiemthe.vn/dl/', '2020-12-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(152, 'Giáng Sinh 2020', '- Giáng sinh an lành\r\n- Phù Dẫn Linh Mở Khóa \r\n- Túi Đan Tiến Bậc Chọn (50 Đan) \r\n- Hộp Đá Lv7', 2, 23, '2020-12-24', 'http://thienmaquyet.vn/dl/', '2020-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(153, 'Code Teaser', '...', 1, 40, '2021-01-07', 'https://thanvuongnhatthe.vn/dl/', '2021-06-30', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(154, 'Vinh Diệu', '500 KNB Khóa\r\n50 Đan Kỵ Thú\r\n5 Đan EXP x1.5\r\n50 Đan Trưởng Thành\r\n20.000.000 Xu', 1, 27, '2021-01-05', 'http://tramtienquyet.vn/dl/', '2021-06-30', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(155, 'Code PR', 'Đá HP lv2\r\nBạc x 100 vạn\r\nĐá Khải Linh x 10\r\nChìa Khóa Ô Túi x1\r\nĐá Linh Thần Phó x5', 1, 40, '2021-01-07', 'https://thanvuongnhatthe.vn/dl/', '2021-05-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(156, 'CODE VIP', 'Nhớ chia sẽ để nhận code nhé ^_^', 2, 39, '2021-01-22', 'http://nghichthienkiemthe.vn/dl/', '2021-05-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(157, 'Kiếm Chỉ Tiên Khư', '200 Đan Kỵ Thú\r\n 200 Đan Tiến Bậc Pháp Tướng\r\n 200 Đan Trưởng Thành\r\n 200 Thiên Tuyền Tinh\r\n 2000 KNB Khóa', 1, 27, '2021-02-02', 'https://tramtienquyet.vn/dl/', '2021-03-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(158, 'Loan Tin 2021', 'Nhớ chia sẽ để nhận code nhé ^_^', 2, 39, '2021-02-03', 'https://nghichthienkiemthe.vn/su-kien-tet/', '2021-02-28', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(159, 'Nguyên Đán 2021', 'Thẻ Đổi Tên x1\r\nPhụng Hoàng Lệnh x2\r\nĐá Tăng Ích Lv7 x1\r\nĐá Tăng Sao Đồ Chơi Sơ Cấp x20\r\nĐan Ngũ Hành x10', 2, 23, '2021-02-13', 'http://thienmaquyet.vn/dl', '2021-03-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(160, 'Mừng Xuân Tân Sửu', '10 Đá Thức Tỉnh \r\n50 Đá Khải Linh \r\n1 Quả Yêu Linh Lv5\r\n10 Hoa Sinh Mệnh \r\n200 KNB Khóa', 1, 40, '2021-02-05', 'https://thanvuongnhatthe.vn/dl/', '2021-02-28', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(161, 'Code Teaser', '- Danh Hiệu Tung Hoành Sa Trường x1\r\n- Hộp Vàng May Mắn x1\r\n- 188 Huyền Tinh x1\r\n- Thẻ Phúc Duyên Tọa Kỵ x1\r\n- Thất Sát Linh Phách x2', 1, 41, '2021-03-12', 'http://chienthankynguyen.vn/dl/', '2021-05-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(162, 'Code Nửa Năm', '- 2000 KNB Khóa\r\n- 2 Đan EXP x2\r\n- 200 Đan Kỵ Thú\r\n- 200 Đan Tiến Bậc Pháp Tướng\r\n- 100.000.000 Xu', 1, 27, '2021-03-15', 'http://tramtienquyet.vn/dl/', '2021-05-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(163, 'Code Teaser', '- Danh Hiệu Tung Hoành Sa Trường x1\r\n- Hộp Vàng May Mắn x1\r\n- 188 Huyền Tinh x1\r\n- Thẻ Phúc Duyên Tọa Kỵ x1\r\n- Thất Sát Linh Phách x2', 1, 41, '2021-03-12', 'http://chienthankynguyen.vn/dl/', '2021-05-31', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(164, 'Code Báo Chí', '- Vé Rút Minh Văn\r\n- Tinh Hoa Thần Binh-Trung\r\n- Quyển Càn Quét\r\n-  Mỹ Tửu 1.5 EXP', 2, 41, '2021-03-11', 'https://chienthankynguyen.vn/dl/', '2021-05-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(165, 'Code Teaser Huyết Dương', '- Đan Tiến Bậc Pháp Tướng x100\r\n- 1000 KNB Khóa\r\n- Đan x2 EXP x1\r\n- Vé Vào PB EXP x1\r\n- 500 Vạn Xu x1', 1, 27, '2021-04-20', 'http://tramtienquyet.vn/dl/', '2021-05-10', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(166, 'Teaser Đua Top S200', 'Lệnh Tầm Bảo Thiên Long	x10\r\nRương Đồ Giám Cam x1\r\nRương Minh Văn Cam (Chọn) x1\r\nĐá Tẩy Luyện Tinh Xảo x1', 1, 41, '2021-04-29', 'https://chienthankynguyen.vn/dl/', '2021-04-30', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(167, 'Code teaser', 'Đá công Lv3 *1\r\nĐá phòng Lv3 *1\r\nDược EXP x 1.5 *1\r\nTruyền âm *5\r\nMở rộng túi *5', 1, 42, '2021-06-03', 'https://nguthansu.vn/dl/', '2021-08-31', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(168, 'Đua Top Tháng 5', '100 x Đan Tiến Bậc Pháp Tướng\r\n10 x 100 KNB Khóa\r\n1 x Đan EXP x2\r\n1 x Vé Vào PB EXP x 1\r\n10 x 500 Vạn Xu', 1, 27, '2021-05-28', 'https://tramtienquyet.vn/dl/', '2021-06-07', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(169, 'Đua Top Tháng 5', '100 x Đan Tiến Bậc Pháp Tướng\r\n10 x 100 KNB Khóa\r\n1 x Đan EXP x2\r\n1 x Vé Vào PB EXP x 1\r\n10 x 500 Vạn Xu', 1, 27, '2021-05-28', 'https://tramtienquyet.vn/dl/', '2021-06-07', 0, 0, 0, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(170, 'Đua Top Tháng 5', '100 x Đan Tiến Bậc Pháp Tướng\r\n10 x 100 KNB Khóa\r\n1 x Đan EXP x2\r\n1 x Vé Vào PB EXP x 1\r\n10 x 500 Vạn Xu', 1, 27, '2021-05-28', 'https://tramtienquyet.vn/dl/', '2021-06-07', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(171, 'Đá 9 (tự chọn)', 'Code có giới hạn, mau nhận ngay', 1, 24, '2021-05-24', 'http://phapthuat3d.vn/dl/', '2021-07-24', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(172, 'code', 'Code có giới hạn, mau nhận ngay', 1, 23, '2021-05-24', 'http://thienmaquyet.vn/dl/', '2021-07-24', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(173, 'Code Tinh Túc', 'Code có giới hạn, mau nhận ngay', 1, 39, '2021-05-31', 'https://nghichthienkiemthe.vn/dl/', '2021-07-01', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(174, 'Đua Top Tháng 6', 'Đan Tiến Bậc Tọa Kỵ x100\r\nKNB Khóa x1000\r\nĐan EXPx2 x1\r\nVé Vào PB EXP x 1\r\n500 Vạn Xu x10', 1, 27, '2021-06-14', 'http://tramtienquyet.vn/dl/', '2021-06-23', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(175, 'Đua Top Tháng 6', 'Đan Tiến Bậc Tọa Kỵ x100\r\nKNB Khóa x1000\r\nĐan EXPx2 x1\r\nVé Vào PB EXP x 1\r\n500 Vạn Xu x10', 1, 27, '2021-06-14', 'http://tramtienquyet.vn/dl/', '2021-06-23', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(176, 'Đua TOP tháng 7', '- KNB Khóa x1000\r\n- Đan Tiến bậc pháp tướng x100\r\n- Vé vào Exp x1\r\n- Đan Expx2 x1\r\n- 500 vạn xu x10', 1, 27, '2021-06-26', 'http://tramtienquyet.vn/dl/', '2021-12-31', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(177, 'Đua TOP tháng 7', '- 200 Ngọc Khóa\r\n- x1 Dược Hồi Sức Dã Ngoại\r\n- x1 Thẻ Làm Mới Boss\r\n- x20 Đá Tăng Khế Thú\r\n- x20 Đá Tăng Yêu Linh', 1, 42, '2021-06-30', 'http://nguthansu.vn/dl/', '2021-12-31', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(178, 'Đua TOP tháng 7', '- x10 Đá Linh Thần Phó\r\n- x2 Tinh Hoa Thần Phó Lv5\r\n- x10 Lông Vũ-IV\r\n- x20 Hoa Hội Tâm\r\n- x10 Hồng Liên Diệm Hồn', 1, 40, '2021-07-06', 'http://thanvuongnhatthe.vn/dl/', '2021-12-31', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(179, 'Update Đua TOP T7', '- Thẻ 200 Ngọc Khóa\r\n- Dược Hồi Sức Dã Ngoại\r\n- Thẻ Làm Mới Boss\r\n- 20 Đá Tăng Khế Thú\r\n- 20 Đá Tăng Yêu Linh', 1, 42, '2021-07-14', 'http://nguthansu.vn/dl/', '2021-12-31', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(180, 'Đua TOP 3', 'x1 Thẻ 200 Ngọc Khóa\r\nx1 Dược Hồi Sức Dã Ngoại\r\nx1 Thẻ Làm Mới Boss\r\nx20 Đá Tăng Khế Thú\r\nx20 Đá Tăng Yêu Linh', 1, 42, '2021-07-28', 'http://nguthansu.vn/dl/', '2021-12-31', 1, 1, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(181, 'Đua TOP tháng 8', '1 x Dược Hồi Sức Dã Ngoại\r\n1 x Thẻ 200 Ngọc Khóa\r\n1 x Thẻ Làm Mới Boss\r\n20 x Đá Tăng Khế Thú\r\n20 x Đá Tăng Yêu Linh', 1, 42, '2021-08-01', 'http://nguthansu.vn/dl/', '2021-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(182, 'Code Summer', 'Phi Thăng Linh Đan*1\r\nĐan Tiến Bậc Tọa Kỵ*20\r\nĐan Tiến Bậc Sủng Vật*20\r\nThẻ Treo máy offline*1', 1, 39, '2021-08-09', 'http://nghichthienkiemthe.vn/dl/', '2021-08-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(183, 'Code Teaser', '- 300KNB Khóa\r\n- Thẻ Treo Máy\r\n- Túi Tăng Bậc Đan Ngẫu Nhiên\r\n- Vé Hư Vô', 1, 44, '2021-08-25', 'https://kiemdaogiangho.vn/dl', '2022-01-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(184, 'Đua TOP giữa tháng 8', '1 x Dược Hồi Sức Dã Ngoại\r\n1 x Thẻ 200 Ngọc Khóa\r\n1 x Thẻ Làm Mới Boss\r\n20 x Đá Tam Sinh\r\n20 x Kết Tinh Tình Yêu', 1, 42, '2021-08-18', 'http://nguthansu.vn/dl/', '2021-12-31', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(185, 'Cô Hồn', '- Anh Hùng Bàn Phím x1\r\n- 1000 KNB khóa', 1, 39, '2021-08-22', 'http://nghichthienkiemthe.vn/dl/', '2021-08-29', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(186, 'Code Thất Tịch', '- Lịch Tẫn Thiên Kiếp x1\r\n- Quyển Chúc Phúc Kỵ x1\r\n- Lệnh Triệu Hồi Boss x1\r\n- 200 Vạn Bạc', 1, 39, '2021-08-24', 'http://nghichthienkiemthe.vn/dl/', '2021-08-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(187, 'Code Bang', '- Ngọc Lộ*1\r\n- 500.000 Bạc\r\n- Túi Tăng Bậc Đan Ngẫu Nhiên*10\r\n- Túi Đá Lv1 Ngẫu Nhiên*5', 1, 44, '2021-08-25', 'https://kiemdaogiangho.vn/dl', '2022-01-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(188, 'Code Avatar', '- Avatar Đáng Yêu*1\r\n- Thú cưỡi Tăng Bậc Đan*5\r\n- Thú Cưỡi Linh*1\r\n- 300.000 Bạc', 1, 44, '2021-08-25', 'https://kiemdaogiangho.vn/dl/', '2022-01-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(189, 'Code Vote 5 Sao', 'Thẻ Diễm Linh Cơ*1\r\nHồng Nhan Linh Đan*1\r\nThú Cưỡi Phách*1\r\n300.000 Bạc', 1, 44, '2021-08-25', 'https://kiemdaogiangho.vn/dl/', '2022-01-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(190, 'Code Mời Bạn', '- Quà Đá Tiên Duyên*1\r\n- Túi Tăng Bậc Đan Ngẫu Nhiên*5\r\n- Thuốc X1.5 EXP*1\r\n- 2.000.000 Vạn Bạc', 1, 44, '2021-08-25', 'https://kiemdaogiangho.vn/dl/', '2022-01-31', 0, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(191, 'Quốc Khánh 2/9', 'Dược Exp x2 - x2\r\nThẻ 200 Ngọc Khóa- x2\r\nThẻ 1000k Xu- x2\r\nThủy Tinh Công-Cao- x5\r\nThủy Tinh HP-Cao- x5', 1, 42, '2021-09-02', 'https://nguthansu.vn/dl/', '2021-09-30', 1, 0, 1, 0, 0, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(192, 'Trung Thu 2021', '1 x Dược Exp x2\r\n1 x Thẻ 200 Ngọc Khóa\r\n2 x Thẻ 1000k Xu\r\n5 x Thủy Tinh Công-Cao\r\n5 x Thủy Tinh HP-Cao', 1, 42, '2021-09-20', 'https://nguthansu.vn/dl/', '2021-09-30', 1, 0, 1, 0, 0, '2021-09-20 17:44:20', '2021-09-20 17:44:20'),
(193, 'Code Trung Thu 2021', '- Lan Lăng Vương x1\r\n- Ly Hỏa Kim x1\r\n- Lưu Ly Trù Đoạn x1\r\n- Lưu Vân Trù Đoạn x1', 1, 39, '2021-09-21', 'https://nghichthienkiemthe.vn/dl/', '2021-09-30', 0, 0, 1, 0, 0, '2021-09-21 18:29:44', '2021-09-21 18:29:44'),
(194, 'Đua Top Tháng 10', '1 x Dược Exp x2\r\n1 x Dược Hồi Sức Dã Ngoại\r\n1 x Thẻ 200 Ngọc Khóa\r\n20 x Tiềm Năng Hoàn\r\n20 x Trưởng Thành Hoàn', 1, 42, '2021-10-20', 'https://nguthansu.vn/dl/', '2021-10-30', 1, 1, 1, 0, 0, '2021-10-19 14:27:46', '2021-10-19 14:27:46'),
(195, 'Code Teaser', 'KNB	 x500\r\nTầm Phương Thường lệnh x10\r\nMảnh Điêu Thuyền x50\r\nXu x20 Vạn\r\nKế Sách Phù x1000', 1, 45, '2022-01-09', '', '2022-06-09', 1, 1, 1, 0, 0, '2022-01-06 17:18:42', '2022-01-06 17:18:42'),
(196, 'Code Teaser', '- 1000 Vàng\r\n- Hùng Miêu Thánh Linh\r\n- Lệnh Kiếm Chủng\r\n- Dầu Chúc Phúc\r\n- Đan Căn Cốt', 1, 46, '2022-01-13', '', '2022-06-13', 1, 1, 1, 0, 0, '2022-01-12 18:47:38', '2022-01-12 18:47:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `subject_des` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `subject`, `action`, `subject_des`, `createdAt`, `updatedAt`) VALUES
(1, 'update', 'update', 'update', '2022-01-28 21:52:50', '0000-00-00 00:00:00'),
(2, 'edit', 'edit', 'edit', '2022-01-28 21:52:59', '0000-00-00 00:00:00'),
(3, 'delete', 'delete', 'delete', '2022-01-28 21:53:07', '0000-00-00 00:00:00'),
(4, 'view', 'view', 'view', '2022-01-28 21:53:15', '0000-00-00 00:00:00'),
(5, 'all', 'manage', 'admin', '2022-01-28 21:53:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2021-09-03 08:27:58', '2021-09-03 08:27:58'),
(2, 'moderator', '2021-09-03 08:27:58', '2021-09-03 08:27:58'),
(3, 'admin', '2021-09-03 08:27:58', '2021-09-03 08:27:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE IF NOT EXISTS `role_permissions` (
  `permissionId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`permissionId`,`roleId`),
  KEY `role_id` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role_permissions`
--

INSERT INTO `role_permissions` (`permissionId`, `roleId`, `createdAt`, `updatedAt`) VALUES
(1, 1, '2022-01-28 14:58:34', '2022-01-28 14:58:34'),
(2, 1, '2022-01-28 21:41:18', '2022-01-28 21:41:23'),
(3, 1, '2022-01-28 21:41:28', '2022-01-28 21:41:32'),
(4, 1, '2022-01-28 21:41:37', '2022-01-28 21:41:41'),
(5, 3, '2022-01-28 21:41:37', '2022-01-28 21:41:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `fullname`, `avatar`, `active`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', 'admin@gmail.com', '$2a$08$w3cYCF.N0UQZO19z8CQSZ.whzxFS5vMoi9k51g3TQx9r5tkwrIXO2', 'Vũ Trần', '', 1, '2021-09-03 15:28:44', '2021-09-03 15:28:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
CREATE TABLE IF NOT EXISTS `user_permissions` (
  `permissionId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`permissionId`,`userId`),
  KEY `user_id` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_permissions`
--

INSERT INTO `user_permissions` (`permissionId`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 1, '2022-01-28 14:58:34', '2022-01-28 14:58:34'),
(3, 1, '2022-01-28 15:47:33', '2022-01-28 15:47:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('2021-09-03 15:29:35', '2021-09-03 15:29:39', 1, 1),
('2021-09-03 15:29:35', '2021-09-03 15:29:39', 3, 1);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
