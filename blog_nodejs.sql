-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 14, 2021 lúc 02:07 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog_nodejs`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `getpass`
--

CREATE TABLE `getpass` (
  `ID` int(12) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_user` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_getpass` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listpost`
--

CREATE TABLE `listpost` (
  `ID` int(12) NOT NULL,
  `ID_user` int(12) DEFAULT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `privacy` int(2) DEFAULT NULL,
  `date_post` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `listpost`
--

INSERT INTO `listpost` (`ID`, `ID_user`, `title`, `content`, `image`, `privacy`, `date_post`) VALUES
(14, 1, 'Bài đăng đầu tiên', 'Bài đăng đầu tiên của tôi trên trang web tôi viết... ', '/images/uploads/03-02-2021-106712292_979102752520719_7452376421506811259_n.jpg', 0, '03 02 2021 22:29:43'),
(15, 1, 'Post for today', 'Today, I am writing something.....', '/images/uploads/04-02-2021-14980611_834218783384968_1001746565774831532_n.jpg', 1, '04 02 2021 08:13:11'),
(16, 1, 'Post demo not image', 'Write something.....', '', 0, '04 02 2021 08:23:22'),
(17, 2, 'Cảm nhận về tết', 'Nếu dưới mái nhà của mình mà con người ta chẳng cảm nhận được những ấm yên, mái nhà ấy hẳn còn thiếu sự bao dung và thấu hiểu. Nếu có như thế, cũng đừng ngồi yên trong bóng tối, bởi thay đổi bắt đầu từ chính chúng ta. Nếu không thể nhìn thấy ánh sáng trong ngôi nhà của mình, hãy là người chủ động lau cho những vệt tối dần sáng lên...\r\n(Trích dẫn, hình ảnh minh họa ).', '/images/uploads/04-02-2021-14980611_834218783384968_1001746565774831532_n.jpg', 0, '04 02 2021 20:46:38'),
(18, 2, 'Du xuân Phú Yên', 'Chắc hẳn Thái Trinh cũng đã tìm hiểu sơ qua về Gành Đá Dĩa, biểu tượng du lịch của Phú Yên. Mùa nào trong năm nơi đây cũng đón tiếp rất nhiều lượt khách tham quan, tuy nhiên mùa xuân và dịp Tết Gành Đá Dĩa là đẹp nhất. Những con sóng vỗ bờ êm đềm xô vào gành đá đen tuyền, tựa như tổ ong khổng lồ bằng đá nằm cạnh đại dương xanh thẳm. Mùa xuân cũng là mùa của rêu xanh, cây cỏ, hoa lá đâm chòi nảy lộc. Nếu bạn và gia đình dạo bước du xuân đến đây sẽ có rất nhiều khung ảnh đẹp và hùng vĩ đang chờ đón.', '/images/uploads/04-02-2021-duxuanphuyen.jpg', 0, '04 02 2021 21:14:50'),
(19, 1, 'Làng hoa nhộn nhịp đón Tết', 'Trở về những làng hoa những ngày này, không khí tất bật và rộn ràng. Các vườn hoa nhộn nhịp khách đến tham quan, mua hoa. Người trồng hoa nở nụ cười mãn nguyện sau một thời gian chăm bẵm khó khăn. Tết đến với các làng hoa sớm hơn ở các địa phương khác. \r\n(Trich: Baoquangngai.vn)', '/images/uploads/05-02-2021-xuanquangngai.jpg', 0, '05 02 2021 12:00:24'),
(20, 1, 'Cảm xúc ngày cuối năm', 'Bóng chiều dần tắt, tiếng thời gian dường như đang nghiêng về một phía. Nỗi nhớ nhân đôi lên. Chiều đã bắt đầu lạnh, ngân ngấn gió về khiến tia nắng gẫy đôi. Những ngày cuối năm càng trôi nhanh hơn,lòng người hoang hoải…chùng hẳn lại.\r\n(source: https://tanvan.xyz/cam-xuc-ngay-cuoi-nam/)', '/images/uploads/06-02-2021-cuoi-nam.jpg', 0, '06 02 2021 09:10:33'),
(21, 1, 'Code ngày cuối năm.', 'Tranh thu code', '', 0, '13 02 2021 07:03:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manager_avatar`
--

CREATE TABLE `manager_avatar` (
  `ID` int(12) NOT NULL,
  `ID_user` int(12) DEFAULT NULL,
  `image_update` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_update` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manager_avatar`
--

INSERT INTO `manager_avatar` (`ID`, `ID_user`, `image_update`, `date_update`) VALUES
(1, 1, '/images/avatars/05-02-2021-117335050_607034013346539_2891191939665063255_n.jpg', '05 02 2021 21:58:58'),
(2, 2, '/images/avatars/05-02-2021-106712292_979102752520719_7452376421506811259_n.jpg', '05 02 2021 22:04:20'),
(3, 2, '/images/avatars/05-02-2021-14980611_834218783384968_1001746565774831532_n.jpg', '05 02 2021 22:05:06'),
(4, 1, '/images/avatars/06-02-2021-115711368_2677556569191767_8102767777774163125_n.jpg', '06 02 2021 09:03:54'),
(5, 1, '/images/avatars/06-02-2021-115711368_2677556569191767_8102767777774163125_n.jpg', '06 02 2021 09:05:29'),
(6, 1, '/images/avatars/06-02-2021-18870731_709897545885580_1363768799_n.jpg', '06 02 2021 10:57:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `share_like_comment`
--

CREATE TABLE `share_like_comment` (
  `ID` int(12) NOT NULL,
  `ID_post` int(12) DEFAULT NULL,
  `ID_user` int(12) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(12) DEFAULT NULL,
  `status_like` int(12) NOT NULL,
  `date_implement` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `share_like_comment`
--

INSERT INTO `share_like_comment` (`ID`, `ID_post`, `ID_user`, `comment`, `type`, `status_like`, `date_implement`) VALUES
(1, 21, 1, 'like', 0, 0, '14 02 2021 09:59:22'),
(2, 21, 2, 'like', 0, 0, '14 02 2021 10:30:20'),
(3, 21, 1, 'hello', 1, 0, '14 02 2021 11:58:07'),
(4, 20, 1, 'like', 0, 0, '14 02 2021 12:05:40'),
(5, 20, 1, 'Thật buồn\r\n', 1, 0, '14 02 2021 12:20:31'),
(6, 20, 1, 'Chia sẻ cùng nhau', 1, 0, '14 02 2021 12:21:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `ID` int(12) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` int(10) DEFAULT NULL,
  `level` int(2) DEFAULT NULL,
  `created_at` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_update` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`ID`, `name`, `pass`, `email`, `mobile`, `level`, `created_at`, `date_update`, `avatar`, `country`) VALUES
(1, 'Võ Đình Nghĩa', '4a3396f4fcc5bffd73c6c2276f8b664e', 'vodinhnghia85@gmail.com', 365572875, 0, '01 02 2021 21:28:52', '06 02 2021 10:57:14', '/images/avatars/06-02-2021-18870731_709897545885580_1363768799_n.jpg', 'Bình Hiệp, Bình Sơn, Quảng Ngãi'),
(2, 'Võ Thị Tuyết Linh', '43fb94da1177864aa7a9fbb7f072b1e9', 'vothituyetlinh99@gmail.com', 372129501, 0, '04 02 2021 20:42:13', '05 02 2021 22:07:26', '/images/avatars/05-02-2021-14980611_834218783384968_1001746565774831532_n.jpg', 'Phu Yen, Viet Nam'),
(3, 'Admin', 'b67e6428abfd27b95dad3a8ca26f38a7', 'admin123@gmail.com', 365572875, 1, '12 02 2021 08:16:31', '', '', 'Việt Nam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `getpass`
--
ALTER TABLE `getpass`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `listpost`
--
ALTER TABLE `listpost`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_user` (`ID_user`);

--
-- Chỉ mục cho bảng `manager_avatar`
--
ALTER TABLE `manager_avatar`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_user` (`ID_user`);

--
-- Chỉ mục cho bảng `share_like_comment`
--
ALTER TABLE `share_like_comment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_post` (`ID_post`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `getpass`
--
ALTER TABLE `getpass`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `listpost`
--
ALTER TABLE `listpost`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `manager_avatar`
--
ALTER TABLE `manager_avatar`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `share_like_comment`
--
ALTER TABLE `share_like_comment`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `listpost`
--
ALTER TABLE `listpost`
  ADD CONSTRAINT `listpost_ibfk_1` FOREIGN KEY (`ID_user`) REFERENCES `user` (`ID`);

--
-- Các ràng buộc cho bảng `share_like_comment`
--
ALTER TABLE `share_like_comment`
  ADD CONSTRAINT `share_like_comment_ibfk_1` FOREIGN KEY (`ID_post`) REFERENCES `listpost` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
