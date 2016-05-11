-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 11 2016 г., 03:13
-- Версия сервера: 5.5.48
-- Версия PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `music-app`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_alboms`
--

CREATE TABLE IF NOT EXISTS `tbl_alboms` (
  `id` int(11) NOT NULL,
  `albom` varchar(45) NOT NULL,
  `year` int(11) NOT NULL,
  `name_artist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_artists`
--

CREATE TABLE IF NOT EXISTS `tbl_artists` (
  `id` int(11) NOT NULL,
  `name_artist` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_tracks`
--

CREATE TABLE IF NOT EXISTS `tbl_tracks` (
  `id` int(11) NOT NULL,
  `track` varchar(45) NOT NULL,
  `length` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_alboms`
--
ALTER TABLE `tbl_alboms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_artists`
--
ALTER TABLE `tbl_artists`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_tracks`
--
ALTER TABLE `tbl_tracks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbl_alboms`
--
ALTER TABLE `tbl_alboms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tbl_artists`
--
ALTER TABLE `tbl_artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tbl_tracks`
--
ALTER TABLE `tbl_tracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
