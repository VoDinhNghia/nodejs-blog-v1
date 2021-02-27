-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 27, 2021 lúc 04:48 AM
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
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `ID` int(12) NOT NULL,
  `ID_user` int(12) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `date_contact` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`ID`, `ID_user`, `email`, `content`, `type`, `date_contact`) VALUES
(1, 1, 'vodinhnghia85@gmail.com', 'Hello', 0, '16 02 2021 10:31:21'),
(4, 1, 'vodinhnghia85@gmail.com', 'Hỏi thông tin admin.', 0, '27 02 2021 10:30:04');

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
(17, 2, 'Cảm nhận về tết', 'Nếu dưới mái nhà của mình mà con người ta chẳng cảm nhận được những ấm yên, mái nhà ấy hẳn còn thiếu sự bao dung và thấu hiểu. Nếu có như thế, cũng đừng ngồi yên trong bóng tối, bởi thay đổi bắt đầu từ chính chúng ta. Nếu không thể nhìn thấy ánh sáng trong ngôi nhà của mình, hãy là người chủ động lau cho những vệt tối dần sáng lên...\r\n(Trích dẫn, hình ảnh minh họa ).', '/images/uploads/04-02-2021-14980611_834218783384968_1001746565774831532_n.jpg', 0, '04 02 2021 20:46:38'),
(18, 2, 'Du xuân Phú Yên', 'Chắc hẳn Thái Trinh cũng đã tìm hiểu sơ qua về Gành Đá Dĩa, biểu tượng du lịch của Phú Yên. Mùa nào trong năm nơi đây cũng đón tiếp rất nhiều lượt khách tham quan, tuy nhiên mùa xuân và dịp Tết Gành Đá Dĩa là đẹp nhất. Những con sóng vỗ bờ êm đềm xô vào gành đá đen tuyền, tựa như tổ ong khổng lồ bằng đá nằm cạnh đại dương xanh thẳm. Mùa xuân cũng là mùa của rêu xanh, cây cỏ, hoa lá đâm chòi nảy lộc. Nếu bạn và gia đình dạo bước du xuân đến đây sẽ có rất nhiều khung ảnh đẹp và hùng vĩ đang chờ đón.', '/images/uploads/04-02-2021-duxuanphuyen.jpg', 0, '04 02 2021 21:14:50'),
(19, 1, 'Làng hoa nhộn nhịp đón Tết', 'Trở về những làng hoa những ngày này, không khí tất bật và rộn ràng. Các vườn hoa nhộn nhịp khách đến tham quan, mua hoa. Người trồng hoa nở nụ cười mãn nguyện sau một thời gian chăm bẵm khó khăn. Tết đến với các làng hoa sớm hơn ở các địa phương khác. \r\n(Trich: Baoquangngai.vn)', '/images/uploads/05-02-2021-xuanquangngai.jpg', 0, '05 02 2021 12:00:24'),
(20, 1, 'Cảm xúc ngày cuối năm', 'Bóng chiều dần tắt, tiếng thời gian dường như đang nghiêng về một phía. Nỗi nhớ nhân đôi lên. Chiều đã bắt đầu lạnh, ngân ngấn gió về khiến tia nắng gẫy đôi. Những ngày cuối năm càng trôi nhanh hơn,lòng người hoang hoải…chùng hẳn lại.\r\n(source: https://tanvan.xyz/cam-xuc-ngay-cuoi-nam/)', '/images/uploads/06-02-2021-cuoi-nam.jpg', 0, '06 02 2021 09:10:33'),
(22, 1, 'Code ngày cuối năm.', 'Tranh thu code12', '/images/uploads/14-02-2021-Screenshot from 2021-02-02 21-23-14.png', 0, '14 02 2021 20:35:05'),
(24, 4, 'Chuyện vui lập trình', 'Ông bà ta thường có câu “Một nụ cười bằng mười thang thuốc bổ” vậy nên sau những giờ làm việc, học tập căng thẳng ta cũng nên tìm một thứ gì đó để giải trí một chút cho vui, giúp công việc đạt kết quả cao hơn. (trichs: https://quantrimang.com/tong-hop-nhung-truyen-cuoi-ba-dao-viet-ve-dan-it-164143)', '', 0, '16 02 2021 10:42:07'),
(25, 4, 'test', '', '', 1, '16 02 2021 10:59:45'),
(26, 1, 'Những ngày cuối tháng 2', 'Thế rồi tháng 2 lần nữa lại ghé qua đây và chở về một mùa xuân yêu kiều nồng đượm. Tháng hai là độ mùa xuân vừa chín, cây lá đâm chồi, cỏ hoa rợp nở. Nhưng như khúc tản văn mà tôi đã viết, có ai đứng giữa “mùa yêu” ấy mà chợt nhớ tới những thứ khốc khô và buồn bã không nhỉ? Có ai bước giữa mùa tháng hai mà chợt nhớ tới một chút cô đơn, một chút lạnh lùng, một nỗi sầu diệu vợi? Nếu có, thì bài viết hôm nay là dành cho bạn. Xin gửi tới mọi người chùm thơ tháng 2 tâm trạng, lãng mạn, cô đơn và buồn bã nhất mà tôi đã sưu tầm. Hy vọng rằng các bạn cũng sẽ thích những áng thơ tình tháng hai đầy cảm xúc này. Chúc các bạn có những phút giây thật tuyệt bên những vần thơ tình buồn tháng 2 hay!\r\n(Nguồn : https://ocuaso.com/tho-buon/tho-suu-tam/chum-tho-tinh-thang-2-hay.html)', '/images/uploads/27-02-2021-thang2.jpg', 0, '27 02 2021 10:24:31'),
(27, 2, 'Tháng 2 ngày nhớ ai', 'Tháng 2 xuân về người có nhớ ...', '', 0, '27 02 2021 10:28:51'),
(28, 4, 'Tháng 3 sắp tới rồi ', 'Hello tháng 3 ...', '/images/uploads/27-02-2021-sach_cafe.jpg', 0, '27 02 2021 10:31:30');

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
(8, 1, '/images/avatars/15-02-2021-117335050_607034013346539_2891191939665063255_n.jpg', '15 02 2021 19:11:30'),
(10, 2, '/images/avatars/15-02-2021-photocat.jpg', '15 02 2021 19:19:55'),
(11, 2, '/images/avatars/15-02-2021-106712292_979102752520719_7452376421506811259_n.jpg', '15 02 2021 19:24:03'),
(12, 4, '/images/avatars/16-02-2021-15036301_834215213385325_8760571512419874799_n.jpg', '16 02 2021 10:40:42'),
(13, 4, '/images/avatars/16-02-2021-18870731_709897545885580_1363768799_n.jpg', '16 02 2021 10:47:06'),
(14, 1, '/images/avatars/22-02-2021-115711368_2677556569191767_8102767777774163125_n.jpg', '22 02 2021 14:01:14');

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
(4, 20, 1, 'like', 0, 0, '14 02 2021 12:05:40'),
(5, 20, 1, 'Thật buồn\r\n', 1, 0, '14 02 2021 12:20:31'),
(6, 20, 1, 'Chia sẻ cùng nhau', 1, 0, '14 02 2021 12:21:11'),
(8, 22, 1, 'like', 0, 0, '15 02 2021 09:12:31'),
(9, 22, 2, 'like', 0, 0, '15 02 2021 19:12:06'),
(10, 22, 4, 'like', 0, 0, '16 02 2021 10:36:40'),
(11, 24, 4, 'like', 0, 0, '16 02 2021 10:42:15'),
(12, 24, 1, 'like', 0, 0, '16 02 2021 11:16:45'),
(13, 24, 1, 'Hello', 1, 0, '16 02 2021 11:16:56'),
(14, 18, 1, 'like', 0, 0, '16 02 2021 11:25:08'),
(15, 18, 1, 'Đẹp lắm em.', 1, 0, '16 02 2021 11:25:23'),
(16, 22, 1, 'hello', 1, 0, '22 02 2021 13:59:19'),
(17, 19, 1, 'like', 0, 0, '22 02 2021 14:02:03'),
(18, 26, 1, 'like', 0, 0, '27 02 2021 10:24:38'),
(19, 26, 1, 'Tháng 2 ngày cuối ta nhớ ai ...', 1, 0, '27 02 2021 10:25:22'),
(20, 26, 2, 'like', 0, 0, '27 02 2021 10:25:37'),
(21, 26, 2, 'Anh nhớ ai vậy ?', 1, 0, '27 02 2021 10:25:50'),
(22, 27, 2, 'like', 0, 0, '27 02 2021 10:28:54'),
(23, 14, 2, 'like', 0, 0, '27 02 2021 10:29:06'),
(24, 27, 1, 'like', 0, 0, '27 02 2021 10:29:35'),
(25, 28, 4, 'like', 0, 0, '27 02 2021 10:31:36'),
(26, 28, 1, 'like', 0, 0, '27 02 2021 10:32:22'),
(27, 28, 1, 'Ảnh đẹp quá...', 1, 0, '27 02 2021 10:32:35');

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
(1, 'Võ Đình Nghĩa', '4a3396f4fcc5bffd73c6c2276f8b664e', 'vodinhnghia@gmail.com', 365572875, 0, '01 02 2021 21:28:52', '22 02 2021 14:01:27', '/images/avatars/15-02-2021-117335050_607034013346539_2891191939665063255_n.jpg', 'Bình Hiệp, Bình Sơn, Quảng Ngãi'),
(2, 'Võ Thị Tuyết Linh', '43fb94da1177864aa7a9fbb7f072b1e9', 'vothituyetlinh99@gmail.com', 372129501, 0, '04 02 2021 20:42:13', '27 02 2021 10:26:05', '/images/avatars/15-02-2021-106712292_979102752520719_7452376421506811259_n.jpg', 'Phu Yen, Viet Nam'),
(3, 'Admin', 'b67e6428abfd27b95dad3a8ca26f38a7', 'admin123@gmail.com', 365572875, 1, '12 02 2021 08:16:31', '', '', 'Việt Nam'),
(4, 'Đình Nghĩa', '4a3396f4fcc5bffd73c6c2276f8b664e', 'vodinhnghia@gmail.com', 365572875, 0, '16 02 2021 10:36:25', '27 02 2021 10:32:01', '/images/avatars/16-02-2021-18870731_709897545885580_1363768799_n.jpg', 'Việt Nam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_user` (`ID_user`);

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
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `getpass`
--
ALTER TABLE `getpass`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `listpost`
--
ALTER TABLE `listpost`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `manager_avatar`
--
ALTER TABLE `manager_avatar`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `share_like_comment`
--
ALTER TABLE `share_like_comment`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
