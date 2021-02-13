-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 04, 2021 lúc 04:11 AM
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
(13, 1, 'First post', 'test and demo', '/images/03-02-2021-anh_dh.png', 0, '03 02 2021 21:50:01'),
(14, 1, 'Bài đăng đầu tiên', 'Bài đăng đầu tiên của tôi trên trang web tôi viết... ', '/images/03-02-2021-106712292_979102752520719_7452376421506811259_n.jpg', 0, '03 02 2021 22:29:43'),
(15, 1, 'Post for today', 'Today, I am writing something.....', '/images/04-02-2021-14980611_834218783384968_1001746565774831532_n.jpg', 1, '04 02 2021 08:13:11'),
(16, 1, 'Post demo not image', 'Write something.....', '', 0, '04 02 2021 08:23:22');

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
  `date_implement` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `country` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`ID`, `name`, `pass`, `email`, `mobile`, `level`, `created_at`, `date_update`, `country`) VALUES
(1, 'VoDinhNghia', '4a3396f4fcc5bffd73c6c2276f8b664e', 'vodinhnghia85@gmail.com', 365572875, 0, '01 02 2021 21:28:52', '', '');

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
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `share_like_comment`
--
ALTER TABLE `share_like_comment`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
