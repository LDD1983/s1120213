-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2023 年 06 月 05 日 15:22
-- 伺服器版本： 10.3.38-MariaDB-0ubuntu0.20.04.1
-- PHP 版本： 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `s1120213`
--

-- --------------------------------------------------------

--
-- 資料表結構 `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `img_name` text NOT NULL,
  `description` text NOT NULL,
  `type` text NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `images`
--

INSERT INTO `images` (`id`, `img_name`, `description`, `type`, `size`, `created_date`) VALUES
(1, 'upload_test.jpg', '63987', 'jpg', 0, '2023-05-29 06:24:35'),
(3, '請假.jpg', 'haliday', '', 0, '2023-05-26 06:36:46');

-- --------------------------------------------------------

--
-- 資料表結構 `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `mem_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `vote_time` datetime NOT NULL,
  `records` text NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `logs`
--

INSERT INTO `logs` (`id`, `mem_id`, `topic_id`, `vote_time`, `records`, `created_time`) VALUES
(1, 1, 1, '2023-05-22 14:11:36', 'a:1:{i:1;a:4:{i:0;s:2:\"19\";i:1;s:2:\"20\";i:2;s:2:\"21\";i:3;s:2:\"28\";}}', '2023-05-22 06:11:36'),
(2, 1, 11, '2023-05-22 14:11:49', 'a:1:{i:11;s:2:\"32\";}', '2023-05-22 06:11:49'),
(3, 1, 12, '2023-05-22 14:11:55', 'a:1:{i:12;s:2:\"37\";}', '2023-05-22 06:11:55'),
(4, 1, 11, '2023-05-22 16:23:15', 'a:1:{i:11;s:2:\"34\";}', '2023-05-22 08:23:15'),
(5, 1, 11, '2023-05-22 16:27:13', 'a:1:{i:11;s:2:\"35\";}', '2023-05-22 08:27:13'),
(6, 3, 1, '2023-05-22 16:33:11', 'a:1:{i:1;a:2:{i:0;s:2:\"19\";i:1;s:2:\"20\";}}', '2023-05-22 08:33:11'),
(7, 2, 1, '2023-05-26 10:29:33', 'a:1:{i:1;a:1:{i:0;s:2:\"21\";}}', '2023-05-26 02:29:33'),
(8, 3, 1, '2023-05-26 11:27:28', 'a:1:{i:1;a:5:{i:0;s:2:\"19\";i:1;s:2:\"20\";i:2;s:2:\"21\";i:3;s:2:\"30\";i:4;s:2:\"31\";}}', '2023-05-26 03:27:28'),
(9, 3, 11, '2023-05-26 11:27:34', 'a:1:{i:11;s:2:\"34\";}', '2023-05-26 03:27:34'),
(10, 3, 12, '2023-05-26 11:27:37', 'a:1:{i:12;s:2:\"37\";}', '2023-05-26 03:27:37'),
(11, 3, 13, '2023-05-26 11:27:41', 'a:1:{i:13;s:2:\"39\";}', '2023-05-26 03:27:41'),
(12, 3, 14, '2023-05-26 11:27:47', 'a:1:{i:14;a:3:{i:0;s:2:\"43\";i:1;s:2:\"44\";i:2;s:2:\"45\";}}', '2023-05-26 03:27:47'),
(13, 3, 14, '2023-05-26 11:41:15', 'a:1:{i:14;a:1:{i:0;s:2:\"42\";}}', '2023-05-26 03:41:15'),
(14, 1, 23, '2023-05-29 09:46:42', 'a:1:{i:23;s:2:\"56\";}', '2023-05-29 01:46:42'),
(15, 1, 1, '2023-06-01 16:30:50', 'a:1:{i:1;a:3:{i:0;s:2:\"19\";i:1;s:2:\"20\";i:2;s:2:\"21\";}}', '2023-06-01 08:30:50'),
(16, 1, 26, '2023-06-02 08:38:19', 'a:1:{i:26;s:2:\"60\";}', '2023-06-02 00:38:19'),
(17, 1, 27, '2023-06-02 08:39:20', 'a:1:{i:27;s:2:\"62\";}', '2023-06-02 00:39:20'),
(18, 1, 27, '2023-06-02 09:02:15', 'a:1:{i:27;s:2:\"62\";}', '2023-06-02 01:02:15'),
(19, 1, 27, '2023-06-02 09:03:32', 'a:1:{i:27;s:2:\"62\";}', '2023-06-02 01:03:32'),
(20, 1, 1, '2023-06-02 10:43:45', 'a:1:{i:1;a:1:{i:0;s:2:\"19\";}}', '2023-06-02 02:43:45'),
(21, 0, 13, '2023-06-05 15:56:23', 'a:1:{i:13;s:2:\"41\";}', '2023-06-05 07:56:23'),
(22, 0, 20, '2023-06-05 15:56:38', 'a:1:{i:20;s:2:\"52\";}', '2023-06-05 07:56:38'),
(23, 1, 1, '2023-06-05 16:07:43', 'a:1:{i:1;N;}', '2023-06-05 08:07:43'),
(24, 0, 13, '2023-06-05 16:10:38', 'a:1:{i:13;s:2:\"38\";}', '2023-06-05 08:10:38'),
(25, 0, 12, '2023-06-05 16:28:07', 'a:1:{i:12;s:2:\"36\";}', '2023-06-05 08:28:07');

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `acc` varchar(32) NOT NULL,
  `pw` varchar(64) NOT NULL,
  `name` varchar(60) NOT NULL,
  `addr` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pr` varchar(16) NOT NULL DEFAULT 'menber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`id`, `acc`, `pw`, `name`, `addr`, `email`, `pr`) VALUES
(1, 'admin', '1234', '孔', '目標', 'kkkkng@t.com', 'super'),
(2, 'oooo', '1234', '孔', '123', 'kkkkng@t.com', 'admin'),
(3, 'ming', '1234', 'ming', '', '', 'member'),
(4, 'ppppp', '1234', 'tr', 'ryrty', 's1120213', 'menber');

-- --------------------------------------------------------

--
-- 資料表結構 `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `total` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `options`
--

INSERT INTO `options` (`id`, `description`, `subject_id`, `total`, `created_time`, `update_time`) VALUES
(19, '123', 1, 11, '2023-05-19 04:45:17', '2023-06-02 02:43:45'),
(20, '456', 1, 13, '2023-05-19 04:45:17', '2023-06-01 08:30:50'),
(21, '789', 1, 11, '2023-05-19 04:45:17', '2023-06-01 08:30:50'),
(28, '555', 1, 6, '2023-05-19 07:10:08', '2023-05-22 06:11:36'),
(32, '七點', 11, 1, '2023-05-22 00:12:01', '2023-05-22 06:11:49'),
(33, '七點半', 11, 0, '2023-05-22 00:12:01', '2023-05-22 00:12:01'),
(34, '八點', 11, 2, '2023-05-22 00:12:01', '2023-05-26 03:27:34'),
(35, '八點半', 11, 1, '2023-05-22 00:12:01', '2023-05-22 08:27:13'),
(36, '念書', 12, 1, '2023-05-22 00:12:42', '2023-06-05 08:28:07'),
(37, '放空', 12, 2, '2023-05-22 00:12:42', '2023-05-26 03:27:37'),
(38, '1小時', 13, 1, '2023-05-24 23:52:15', '2023-06-05 08:10:38'),
(39, '2小時', 13, 1, '2023-05-24 23:52:15', '2023-05-26 03:27:41'),
(40, '3小時', 13, 0, '2023-05-24 23:52:15', '2023-05-24 23:52:15'),
(41, '不要練習', 13, 1, '2023-05-24 23:52:15', '2023-06-05 07:56:23'),
(42, 'PHP', 14, 1, '2023-05-24 23:54:53', '2023-05-26 03:41:15'),
(43, 'JS', 14, 1, '2023-05-24 23:54:53', '2023-05-26 03:27:47'),
(44, 'SQL', 14, 1, '2023-05-24 23:54:53', '2023-05-26 03:27:47'),
(45, 'HTML', 14, 1, '2023-05-24 23:54:53', '2023-05-26 03:27:47'),
(46, 'CSS', 14, 0, '2023-05-24 23:54:53', '2023-05-24 23:54:53'),
(48, '123', 16, 0, '2023-05-29 01:08:24', '2023-05-29 01:08:24'),
(49, '123456', 17, 0, '2023-05-29 01:12:25', '2023-05-29 01:12:25'),
(50, '1895649', 18, 0, '2023-05-29 01:13:15', '2023-05-29 01:13:15'),
(51, '8998012', 19, 0, '2023-05-29 01:17:51', '2023-05-29 01:17:51'),
(52, '8998012', 20, 1, '2023-05-29 01:18:18', '2023-06-05 07:56:38'),
(53, 'add1', 21, 0, '2023-05-29 01:32:42', '2023-05-29 01:32:42'),
(54, '5555', 22, 0, '2023-05-29 01:39:21', '2023-05-29 01:39:21'),
(55, '66666', 22, 0, '2023-05-29 01:39:21', '2023-05-29 01:39:21'),
(56, '88888', 23, 1, '2023-05-29 01:43:35', '2023-05-29 01:46:42'),
(59, 'eerger', 25, 0, '2023-06-02 00:09:49', '2023-06-02 00:09:49'),
(60, 'sFF', 26, 1, '2023-06-02 00:37:24', '2023-06-02 00:38:19'),
(61, 'sssssssssssssss', 26, 0, '2023-06-02 00:37:24', '2023-06-02 00:37:24'),
(62, 'sgrg', 27, 3, '2023-06-02 00:39:00', '2023-06-02 01:03:32'),
(63, 'grgra', 27, 0, '2023-06-02 00:39:00', '2023-06-02 00:39:00');

-- --------------------------------------------------------

--
-- 資料表結構 `topic`
--

CREATE TABLE `topic` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` text NOT NULL,
  `type` int(1) UNSIGNED NOT NULL,
  `image` varchar(20) DEFAULT NULL,
  `login` tinyint(1) UNSIGNED NOT NULL,
  `open_date` datetime NOT NULL,
  `close_date` datetime NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `topic`
--

INSERT INTO `topic` (`id`, `subject`, `type`, `image`, `login`, `open_date`, `close_date`, `created_time`, `updated_time`) VALUES
(1, '中午要吃甚麼', 2, '0', 1, '2023-05-30 16:06:01', '2023-06-12 19:42:16', '2023-05-15 06:18:21', '2023-05-26 02:37:54'),
(11, '每天應該幾點起床', 1, '0', 1, '2023-05-22 08:11:00', '2023-06-30 08:11:00', '2023-05-22 00:12:01', '2023-06-05 08:20:21'),
(12, '周末要幹嘛', 1, '0', 0, '2023-05-22 08:12:00', '2023-06-30 08:12:00', '2023-05-22 00:12:42', '2023-06-05 08:20:29'),
(13, '每天要回家練習幾小時', 1, '0', 0, '2023-05-25 07:51:00', '2023-06-29 07:51:00', '2023-05-24 23:52:15', '2023-05-24 23:52:15'),
(14, '哪個程式語法最難理解', 2, '0', 1, '2023-06-05 16:21:54', '2130-03-16 09:05:33', '2023-05-24 23:54:53', '2023-06-05 08:21:54');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
