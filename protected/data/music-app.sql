--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 12 2016 г., 01:42
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
-- Структура таблицы `tbl_albums`
--

CREATE TABLE IF NOT EXISTS `tbl_albums` (
  `id_alboms` int(11) NOT NULL,
  `id_artist` int(11) NOT NULL,
  `album` varchar(45) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `tbl_artists`
--

CREATE TABLE IF NOT EXISTS `tbl_artists` (
  `id_artist` int(11) NOT NULL,
  `name_artist` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_tracks`
--

CREATE TABLE IF NOT EXISTS `tbl_tracks` (
  `id_track` int(11) NOT NULL,
  `track` varchar(45) NOT NULL,
  `length` float NOT NULL,
  `albom_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_tracks`
--
--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_alboms`
--
ALTER TABLE `tbl_alboms`
  ADD PRIMARY KEY (`id_alboms`),
  ADD KEY `id_alboms` (`id_alboms`);

--
-- Индексы таблицы `tbl_artists`
--
ALTER TABLE `tbl_artists`
  ADD PRIMARY KEY (`id_artist`),
  ADD KEY `id_artist` (`id_artist`);

--
-- Индексы таблицы `tbl_tracks`
--
ALTER TABLE `tbl_tracks`
  ADD PRIMARY KEY (`id_track`),
  ADD KEY `artist_id` (`albom_id`);
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tbl_alboms`
--
ALTER TABLE `tbl_alboms`
  ADD CONSTRAINT `tbl_alboms_ibfk_1` FOREIGN KEY (`id_artist`) REFERENCES `tbl_artists` (`id_artist`);

--
-- Ограничения внешнего ключа таблицы `tbl_tracks`
--
ALTER TABLE `tbl_tracks`
  ADD CONSTRAINT `tbl_tracks_ibfk_1` FOREIGN KEY (`albom_id`) REFERENCES `tbl_alboms` (`id_alboms`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
