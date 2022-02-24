-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2022 年 2 月 24 日 08:15
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d10_06`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `mydb`
--

CREATE TABLE `mydb` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `mydb`
--

INSERT INTO `mydb` (`id`, `name`, `email`, `password`) VALUES
(1, '芳賀陽介', 'sample@gs.com', '$2y$10$Tcrow7W0.NTYJLBKsSrShu8TAO/SPAiVEmPPU2g5ibQ1Lczw062py'),
(2, '芳賀祥平', 'sample@kitayuu.com', '$2y$10$esqK9eX1jWDEkvdmqervQOlcpENe6lUOoPAtkrlD4ZQLisxtWubtK'),
(3, 'サトシ', 'sample@poke.com', '$2y$10$vGMVzR1JkY9J0s/Gy5FiZ.9O.BV/vXSi.wYNJztG7x/JSXLonPLKu'),
(4, 'takeshi', 'sample@iwa.com', '$2y$10$vB6pRLPPTGXeBUDdmMBk1.fWpKwTb1GuKiHmZng1.lJ9/cI6JrBqa'),
(5, 'カスミ', 'sample@mizu.com', '$2y$10$wGPC4MUIzQwvWBzKGTH/I.r12Pb4JozttWdCnmDp4fPSarwI2OuhW'),
(6, '刃牙', 'sample@punch.com', '$2y$10$/coszHWC/Hisw784IOzYl.XQp.iPAIo9C5VollFvzpOTP83Pi6byG'),
(7, 'マリオ', 'sample@kinoko.com', '$2y$10$4Zh3mLl0jkHRvAHqzgzOL.mtYKydMFT18NR/bClsHKciCl.yUs/KO'),
(8, '百足', 'sample@mushi.com', '$2y$10$A5CRGW0pK90kIfb37D3hFehJDt2TFloegJ7zim1T8jNOhyoFB14/y'),
(9, 'カカシ', 'sample@hatake.com', '$2y$10$F1.XUh.4EajZ11.j6o0Ov.bhNCgZi0TtTfc4ArCt3PGOwhkiRxKS6'),
(10, '出口さん', 'sample@gs5.com', '$2y$10$BHvZMCHas3TdWlexHcONbeQBKVK/jlJ.B6Udw5CNVQ6E8n5quWwJy');

-- --------------------------------------------------------

--
-- テーブルの構造 `post_table`
--

CREATE TABLE `post_table` (
  `id` int(12) NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `text` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `post_table`
--

INSERT INTO `post_table` (`id`, `name`, `text`, `created_at`, `updated_at`) VALUES
(1, '芳賀陽介', '嗚呼', '2022-02-17 16:02:56', '2022-02-17 16:02:56'),
(2, '芳賀陽介', '嗚呼', '2022-02-19 13:32:26', '2022-02-19 13:32:26'),
(3, 'testuser01', 'ショートカット', '2022-02-24 12:38:10', '2022-02-24 12:38:10'),
(4, 'testuser01', 'ショートカット', '2022-02-24 12:39:23', '2022-02-24 12:39:23');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'スキー', '2022-02-02', '2022-02-12 14:40:39', '2022-02-12 15:29:23'),
(4, 'スノーボード', '2022-02-13', '2022-02-12 15:04:40', '2022-02-12 15:04:40');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'testuser01', '111111', 1, 0, '2022-02-19 15:18:12', '2022-02-19 15:18:12'),
(2, 'testuser02', '222222', 0, 0, '2022-02-19 15:18:12', '2022-02-19 15:18:12'),
(3, 'testuser03', '333333', 0, 0, '2022-02-19 15:18:12', '2022-02-19 15:18:12'),
(4, 'testuser04', '444444', 0, 0, '2022-02-19 15:18:12', '2022-02-19 15:18:12'),
(5, 'testuser05', '555555', 0, 0, '2022-02-19 17:37:37', '2022-02-19 17:37:37'),
(6, 'testuser06', '666666', 0, 0, '2022-02-22 15:04:52', '2022-02-22 15:04:52'),
(7, 'testuser07', '777777', 0, 0, '2022-02-22 15:05:58', '2022-02-22 15:05:58'),
(8, 'testuser08', '888888', 0, 0, '2022-02-22 15:13:12', '2022-02-22 15:13:12');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `mydb`
--
ALTER TABLE `mydb`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `post_table`
--
ALTER TABLE `post_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `mydb`
--
ALTER TABLE `mydb`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルの AUTO_INCREMENT `post_table`
--
ALTER TABLE `post_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
