-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 11 2020 г., 14:24
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catigories`
--

CREATE TABLE `catigories` (
  `id` int(11) NOT NULL,
  `name_catigories` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `catigories`
--

INSERT INTO `catigories` (`id`, `name_catigories`, `all_p`) VALUES
(1, 'All', 24),
(2, 'Samsung', 4),
(3, 'Lenovo', 5),
(4, 'Asus', 4),
(5, 'Acer', 5),
(6, 'Apple', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `prise` int(11) NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `catigorie` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `data`, `prise`, `img`, `catigorie`) VALUES
(1, 'Lenovo Yoga 3 Pro', '2000-08-09', 1300, 'lenovo-laptop-thinkpad-t480s-front.png', '3'),
(2, 'Lenovo Yoga 3 Pro', '2001-04-05', 1333, '6407346_0.jpg', '3'),
(3, 'Acer Nitro 5 Shale Black', '2020-04-05', 1000, 'apple1.png', '5'),
(4, 'ThinkPad P1 2nd Gen\r\n', '2005-06-04', 127372, '222.jpg', '3'),
(5, 'ThinkPad X1 Carbon Gen 8 \r\n', '2020-02-03', 92596, 'thumb_137509_265_265_0_0_auto.jpg', '3'),
(6, 'Lenovo ideapad L340-17IRH Gaming Black \r\n', '2018-08-14', 25999, 'thumb_57453_265_265_0_0_auto.jpg', '3'),
(7, 'Apple MacBook Air 13.3\'\' MWTL2 Gold', '2019-10-08', 29999, 'apple_macbook_air_13.3_mwtl2_gold_0.jpg', '6'),
(8, 'MacBook Pro 13\" Retina 512GB Space Gray', '2020-09-28', 59999, 'apple_mv972_images_17178631541.jpg', '6'),
(9, 'MacBook Air 13', '2020-09-18', 42999, '200324150008697603.png', '6'),
(10, 'Apple MacBook Pro 16 Space Gray', '2020-02-07', 227110, '2127800315-1-376x300.jpg', '6'),
(11, 'MacBook Air 6', '2020-09-18', 23999, 'macbook-pro-retina-13-2015-silver_1-270x360.jpeg', '6'),
(12, 'Apple MacBook Pro 12', '2020-02-07', 13999, 'macbook-12-space-gray-270x360.jpeg', '6'),
(13, 'Acer Aspire 5 A515-54G-502N ', '2020-09-15', 31999, 'copy_acer_nx_hn5eu_00j_5eb3cfb04a2ec_images_18137140543.jpg', '5'),
(14, 'Asus ROG Strix G15 G512LI-HN057 ', '2020-05-14', 17999, 'asus_90nr0381_m01640_images_19065571861.jpg', '4'),
(15, 'Acer Aspire 3 A545-12G-502N ', '2020-09-15', 37999, '6691953-1595594680.jpg', '5'),
(16, 'ASUS X512JP-BQ214', '2020-05-14', 20999, '62_1500.jpg', '4'),
(17, 'Samsung Chromebook ', '2020-03-17', 8261, '1351168.jpeg', '2'),
(18, 'Samsung Notebook 9 ', '2020-04-13', 32416, '1475997.jpeg', '2'),
(19, 'Samsung Galaxy Book', '2018-02-07', 31374, '1506203.jpeg', '2'),
(20, 'Samsung Galaxy Book Flex Alpha', '2020-09-04', 24840, '1590404.jpeg', '2'),
(21, 'ASUS X345JP-GF1231', '2020-09-15', 39999, '32_600.jpg', '4'),
(22, 'ASUS UX433FN-A5128T', '2020-09-08', 28499, '56_600.jpeg', '4'),
(23, 'ACER Aspire 5 A515-43', '2020-06-09', 13999, '0_600.jpg', '5'),
(24, 'ACER Nitro 5 AN515-44', '2020-09-08', 29999, '51_600.jpeg', '5');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catigories`
--
ALTER TABLE `catigories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catigories`
--
ALTER TABLE `catigories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
