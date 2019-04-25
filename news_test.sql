-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 25 2019 г., 14:40
-- Версия сервера: 5.6.41
-- Версия PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news_test`
--
CREATE DATABASE IF NOT EXISTS `news_test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `news_test`;

-- --------------------------------------------------------

--
-- Структура таблицы `comments_likes`
--

CREATE TABLE `comments_likes` (
  `id` int(11) NOT NULL,
  `id_comment` int(11) NOT NULL,
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments_likes`
--

INSERT INTO `comments_likes` (`id`, `id_comment`, `time_created`) VALUES
(2, 1, '2019-04-25 11:38:26');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL, AUTO_INCREMENT,
  `header` varchar(1024) DEFAULT NULL,
  `short_description` varchar(2048) DEFAULT NULL,
  `text` text,
  `img` varchar(1024) DEFAULT NULL,
  `tags` varchar(1024) DEFAULT NULL,
  `status` enum('open','closed') DEFAULT 'open',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `time_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `header`, `short_description`, `text`, `img`, `tags`, `status`, `time_created`, `time_updated`) VALUES
(1, 'News #1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore \' +\n            \'et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\' +\n            \' ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu \' +\n            \'fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt \' +\n            \'mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore \' +\n            \'et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\' +\n            \' ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu \' +\n            \'fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt \' +\n            \'mollit anim id est laborum.', '/assets/images/news/cover-news-20180808.png', 'кек,чебурек', 'open', '2018-08-30 13:31:14', '2018-10-11 01:37:16'),
(3, 'Эх, чужд кайф, сплющь', '<p>Широкая электрификация южных губерний даст мощный толчок подъёму сельского хозяйства.<br></p>', '<<<<<<<p>Эй, жлоб! Где туз? Прячь юных <u><b>съёмщиц</b></u> в шкаф. Съешь [же] ещё этих мягких <span style=\"background-color: rgb(255, 255, 0);\">французских</span> булок да выпей чаю. В чащах юга жил бы цитрус? Да, но фальшивый экземпляр! Эх, чужак! Общий съём <a href=\"#\" target=\"_blank\">цен</a> шляп (юфть) — вдрызг!<br></p>', '/assets/images/news/3.jpg', NULL, 'open', '2018-10-11 01:33:27', '2018-11-13 02:17:04'),
(4, 'News #2', 'The CEC processed 100% of protocols: Zelensky - 73.22%, Poroshenko - 24.45%', 'The Central Election Commission has worked out 100% of protocols of the second round of presidential elections.\r\n\r\nVladimir Zelensky received 73.22% of the votes, while Petro Poroshenko received 24.45% of the votes.\r\n\r\nAnother 2.31% of voters spoiled their newsletters, because they already have no \"against all\" graphs.\r\n\r\nThe CEC received these data electronically from the territorial election commissions.\r\n\r\nVladimir Zelensky has won almost all regions of Ukraine. Petro Poroshenko gained more votes for an opponent only in the Lviv region and in a foreign constituency.', 'https://ichef.bbci.co.uk/news/660/cpsprodpb/44EC/production/_106544671_hi053491378.jpg', 'вибори', 'open', '2019-04-23 11:59:18', '2019-04-24 10:26:50'),
(5, 'Putin and Kim Jong Yin', 'The date and place of the meeting between Putin and Kim Jong Yun are announced', 'A peaceful solution to the nuclear problem of the Korean Peninsula will be the focus of talks between the leaders of the Russian Federation and the DPRK, which will be held on April 25 in Vladivostok. This was stated on Tuesday, April 23, by the assistant to the president of Russia Yuri Ushakov, whose words are quoted by the TASS news agency.\r\n\r\nUshakov stressed that Russia would become the first foreign state to visit Kim Jong-il after the first session of the Supreme People\'s Assembly of the 14th convocation in the first half of April was held, where Kim Jong-il was re-elected chairman of the DPRK\'s State Council.', 'http://www.newsru.co.il/pict/id/large/1266349_20190423170352.jpg', 'ЫЫЫН', 'open', '2019-04-23 12:01:05', '2019-04-24 10:27:35'),
(6, 'This year, immediately after Easter holidays, the Labor Day, which opens the May holidays, comes', 'Вихідні на Великдень 2019. Коли і скільки днів відпочиватимуть в Україні', 'Weekend on Easter 2019. When and how many days will rest in Ukraine', 'https://images.weserv.nl/?url=https://style.nv.ua/system/Article/posters/002/020/690/900x450/731f8a3119e13b2d5a887aea595c9605.jpeg&q=75&stamp=20190318161529', 'Великдень', 'open', '2019-04-23 12:03:28', '2019-04-24 10:28:04');

-- --------------------------------------------------------

--
-- Структура таблицы `news_comment`
--

CREATE TABLE `news_comment` (
  `id` int(11) NOT NULL,
  `id_news` int(11) NOT NULL,
  `comment` text NOT NULL,
  `time_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news_comment`
--

INSERT INTO `news_comment` (`id`, `id_news`, `comment`, `time_created`) VALUES
(1, 1, 'bla bla comment', '2019-04-25 11:34:53'),
(2, 2, 'this news is awesome', '2019-04-25 11:36:46');

-- --------------------------------------------------------

--
-- Структура таблицы `news_likes`
--

CREATE TABLE `news_likes` (
  `id` int(11) NOT NULL,
  `id_news` int(11) NOT NULL,
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news_likes`
--

INSERT INTO `news_likes` (`id`, `id_news`, `time_created`) VALUES
(1, 1, '2019-04-25 11:29:31'),
(3, 3, '2019-04-25 11:29:58');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments_likes`
--
ALTER TABLE `comments_likes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_comment`
--
ALTER TABLE `news_comment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_likes`
--
ALTER TABLE `news_likes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments_likes`
--
ALTER TABLE `comments_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `news_comment`
--
ALTER TABLE `news_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `news_likes`
--
ALTER TABLE `news_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
