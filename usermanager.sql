-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 07 2015 г., 12:53
-- Версия сервера: 5.5.25
-- Версия PHP: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `usermanager`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `telephone`, `email`, `created`) VALUES
(5, 'Анастасия', 'Меркулова', '555-66-77', 'mail@mail.ru', '2015-11-03 14:13:22'),
(6, 'Михаил', 'Сычёв', '953-55-44', 'info@yandex.ru', '2015-11-06 12:58:15'),
(9, 'Екатерина', 'Горбачёва', '555-88-99', 'ek@rambler.ru', '2015-11-06 13:37:25'),
(11, 'Мария', 'Хохлова', '354-22-28', 'mail@rambler.ru', '2015-11-09 14:21:50'),
(12, 'Антонина', 'Спецакова', '987-34-63', 'mail@yandex.ru', '2015-11-10 08:47:06'),
(47, 'Наталья', 'Розова', '377-63-74', 'info@mail.ru', '2015-11-10 13:59:58');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
