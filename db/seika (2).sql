-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017 年 7 朁E25 日 13:00
-- サーバのバージョン： 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kensaku`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `seika`
--

CREATE TABLE `seika` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `seika`
--

INSERT INTO `seika` (`id`, `name`, `url`) VALUES
(0, '', ''),
(1, '1年次・オリエンテーション', ''),
(2, 'PM実験・前半', ''),
(3, 'PM実験・後半', ''),
(4, '1年次・オリエンテーション 五百井研究室', 'Artifacts1.php?foo=1'),
(5, '1年次・オリエンテーション 加藤研究室', 'Artifacts1.php?foo=8'),
(6, '1年次・オリエンテーション 久保研究室', 'Artifacts1.php?foo=15'),
(7, '1年次・オリエンテーション 鴻巣研究室', 'Artifacts1.php?foo=22'),
(8, '1年次・オリエンテーション 下田研究室', 'Artifacts1.php?foo=29'),
(9, '1年次・オリエンテーション 下村研究室', 'Artifacts1.php?foo=36'),
(10, '1年次・オリエンテーション 田隈研究室', 'pArtifacts1.php?foo=43'),
(11, '1年次・オリエンテーション 武田研究室', 'Artifacts1.php?foo=50'),
(12, '1年次・オリエンテーション 谷本研究室', 'Artifacts1.php?foo=57'),
(13, '1年次・オリエンテーション 遠山研究室', 'Artifacts1.php?foo=64'),
(14, '1年次・オリエンテーション 堀内研究室', 'Artifacts1.php?foo=71'),
(15, '1年次・オリエンテーション 矢吹研究室', 'Artifacts1.php?foo=78'),
(16, 'PM実験・前半 五百井研究室 Aグループ', 'Artifacts2.php?foo=2'),
(17, 'PM実験・前半 五百井研究室 Bグループ', 'Artifacts2.php?foo=3'),
(18, 'PM実験・前半 五百井研究室 Cグループ', 'Artifacts2.php?foo=4'),
(19, 'PM実験・前半 加藤研究室 Aグループ', 'Artifacts2.php?foo=9'),
(20, 'PM実験・前半 加藤研究室 Bグループ', 'Artifacts2.php?foo=10'),
(21, 'PM実験・前半 加藤研究室 Cグループ', 'Artifacts2.php?foo=11'),
(22, 'PM実験・前半 久保研究室 Aグループ', 'Artifacts2.php?foo=16'),
(23, 'PM実験・前半 久保研究室 Bグループ', 'Artifacts2.php?foo=17'),
(24, 'PM実験・前半 久保研究室 Cグループ', 'Artifacts2.php?foo=18'),
(25, 'PM実験・前半 鴻巣研究室 Aグループ', 'Artifacts2.php?foo=23'),
(26, 'PM実験・前半 鴻巣研究室 Bグループ', 'Artifacts2.php?foo=24'),
(27, 'PM実験・前半 鴻巣研究室 Cグループ', 'Artifacts2.php?foo=25'),
(28, 'PM実験・前半 下田研究室 Aグループ', 'Artifacts2.php?foo=30'),
(29, 'PM実験・前半 下田研究室 Bグループ', 'Artifacts2.php?foo=31'),
(30, 'PM実験・前半 下田研究室 Cグループ', 'Artifacts2.php?foo=32'),
(31, 'PM実験・前半 下村研究室 Aグループ', 'Artifacts2.php?foo=37'),
(32, 'PM実験・前半 下村研究室 Bグループ', 'Artifacts2.php?foo=38'),
(33, 'PM実験・前半 下村研究室 Cグループ', 'Artifacts2.php?foo=39'),
(34, 'PM実験・前半 関研究室 Aグループ', 'Artifacts2.php?foo=86'),
(35, 'PM実験・前半 関研究室 Bグループ', 'Artifacts2.php?foo=87'),
(36, 'PM実験・前半 関研究室 Cグループ', 'Artifacts2.php?foo=88'),
(37, 'PM実験・前半 田隈研究室 Aグループ', 'Artifacts2.php?foo=44'),
(38, 'PM実験・前半 田隈研究室 Bグループ', 'Artifacts2.php?foo=45'),
(39, 'PM実験・前半 田隈研究室 Cグループ', 'Artifacts2.php?foo=46'),
(40, 'PM実験・前半 武田研究室 Aグループ', 'Artifacts2.php?foo=51'),
(41, 'PM実験・前半 武田研究室 Bグループ', 'Artifacts2.php?foo=52'),
(42, 'PM実験・前半 武田研究室 Cグループ', 'Artifacts2.php?foo=53'),
(43, 'PM実験・前半 谷本研究室 Aグループ', 'Artifacts2.php?foo=58'),
(44, 'PM実験・前半 谷本研究室 Bグループ', 'Artifacts2.php?foo=59'),
(45, 'PM実験・前半 谷本研究室 Cグループ', 'Artifacts2.php?foo=60'),
(46, 'PM実験・前半 遠山研究室 Aグループ', 'Artifacts2.php?foo=65'),
(47, 'PM実験・前半 遠山研究室 Bグループ', 'Artifacts2.php?foo=66'),
(48, 'PM実験・前半 遠山研究室 Cグループ', 'Artifacts2.php?foo=67'),
(49, 'PM実験・前半 堀内研究室 Aグループ', 'Artifacts2.php?foo=72'),
(50, 'PM実験・前半 堀内研究室 Bグループ', 'Artifacts2.php?foo=73'),
(51, 'PM実験・前半 堀内研究室 Cグループ', 'Artifacts2.php?foo=74'),
(52, 'PM実験・前半 矢吹研究室 Aグループ', 'Artifacts2.php?foo=79'),
(53, 'PM実験・前半 矢吹研究室 Bグループ', 'Artifacts2.php?foo=80'),
(54, 'PM実験・前半 矢吹研究室 Cグループ', 'Artifacts2.php?foo=81'),
(55, 'PM実験・後半 五百井研究室 Aグループ', 'Artifacts3.php?foo=5'),
(56, 'PM実験・後半五百井研究室 Bグループ', 'Artifacts3.php?foo=6'),
(57, 'PM実験・後半 五百井研究室 Cグループ', 'Artifacts3.php?foo=7'),
(58, 'PM実験・後半 加藤研究室 Aグループ', 'Artifacts2.php?foo=12'),
(59, 'PM実験・後半 加藤研究室 Bグループ', 'Artifacts2.php?foo=13'),
(60, 'PM実験・後半 加藤研究室 Cグループ', 'Artifacts2.php?foo=14'),
(61, 'PM実験・後半 久保研究室 Aグループ', 'Artifacts2.php?foo=19'),
(62, 'PM実験・後半 久保研究室 Bグループ', 'Artifacts2.php?foo=20'),
(63, 'PM実験・後半 久保研究室 Cグループ', 'Artifacts2.php?foo=21'),
(64, 'PM実験・後半 鴻巣研究室 Aグループ', 'Artifacts2.php?foo=26'),
(65, 'PM実験・後半 鴻巣研究室 Bグループ', 'Artifacts2.php?foo=27'),
(66, 'PM実験・後半 鴻巣研究室 Cグループ', 'Artifacts2.php?foo=28'),
(67, 'PM実験・後半 下田研究室 Aグループ', 'Artifacts2.php?foo=33'),
(68, 'PM実験・後半 下田研究室 Bグループ', 'Artifacts2.php?foo=34'),
(69, 'PM実験・後半 下田研究室 Cグループ', 'Artifacts2.php?foo=35'),
(70, 'PM実験・後半 下村研究室 Aグループ', 'Artifacts2.php?foo=40'),
(71, 'PM実験・後半 下村研究室 Bグループ', 'Artifacts2.php?foo=41'),
(72, 'PM実験・後半 下村研究室 Cグループ', 'Artifacts2.php?foo=42'),
(73, 'PM実験・後半 関研究室 Aグループ', 'Artifacts2.php?foo=89'),
(74, 'PM実験・後半 関研究室 Bグループ', 'Artifacts2.php?foo=90'),
(75, 'PM実験・後半 関研究室 Cグループ', 'Artifacts2.php?foo=91'),
(76, 'PM実験・後半 田隈研究室 Aグループ', 'Artifacts2.php?foo=47'),
(77, 'PM実験・後半 田隈研究室 Bグループ', 'Artifacts2.php?foo=48'),
(78, 'PM実験・後半 田隈研究室 Cグループ', 'Artifacts2.php?foo=49'),
(79, 'PM実験・後半 武田研究室 Aグループ', 'Artifacts2.php?foo=54'),
(80, 'PM実験・後半 武田研究室 Bグループ', 'Artifacts2.php?foo=55'),
(81, 'PM実験・後半 武田研究室 Cグループ', 'Artifacts2.php?foo=56'),
(82, 'PM実験・後半 谷本研究室 Aグループ', 'Artifacts2.php?foo=61'),
(83, 'PM実験・後半 谷本研究室 Bグループ', 'Artifacts2.php?foo=62'),
(84, 'PM実験・後半 谷本研究室 Cグループ', 'Artifacts2.php?foo=63'),
(85, 'PM実験・後半 遠山研究室 Aグループ', 'Artifacts2.php?foo=68'),
(86, 'PM実験・後半 遠山研究室 Bグループ', 'Artifacts2.php?foo=69'),
(87, 'PM実験・後半 遠山研究室 Cグループ', 'Artifacts2.php?foo=70'),
(88, 'PM実験・後半 堀内研究室 Aグループ', 'Artifacts2.php?foo=75'),
(89, 'PM実験・後半 堀内研究室 Bグループ', 'Artifacts2.php?foo=76'),
(90, 'PM実験・後半 堀内研究室 Cグループ', 'Artifacts2.php?foo=77'),
(91, 'PM実験・後半 矢吹研究室 Aグループ', 'Artifacts2.php?foo=82'),
(92, 'PM実験・後半 矢吹研究室 Bグループ', 'Artifacts2.php?foo=83'),
(94, 'PM実験・後半 矢吹研究室 Cグループ', 'Artifacts2.php?foo=84');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `seika`
--
ALTER TABLE `seika`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
