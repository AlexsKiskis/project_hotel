-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 21 2023 г., 18:11
-- Версия сервера: 5.7.11
-- Версия PHP: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project_alex`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id_category`, `type`) VALUES
(1, 'Economy class'),
(2, 'Standart'),
(3, 'VIP');

-- --------------------------------------------------------

--
-- Структура таблицы `favorites`
--

CREATE TABLE `favorites` (
  `id_favorites` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `numberID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `room`
--

CREATE TABLE `room` (
  `id_room` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text CHARACTER SET utf8mb4 NOT NULL,
  `image_path` varchar(70) CHARACTER SET utf8mb4 DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
  `capacity` enum('1','2','4','5') CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `room`
--

INSERT INTO `room` (`id_room`, `price`, `description`, `image_path`, `name`, `capacity`) VALUES
(3, 1000, 'Просторный номер с прекрасными видами на город, отлично подойдет для двухместного размещения.  Площадь номера ( от 25 кв.м.) позволяет также легко разместить троих гостей (установка дополнительной кровати в номер).', 'king-room.jpg', 'King size', '5'),
(4, 3500, 'Мы рады предложить Вам просторный трехкомнатный номер категории «представительский люкс». Роскошный и действительно просторный номер с уникальными дизайном для особенно требовательных гостей.\r\nНомер впечатляет современными удобствами и необычным европейским интерьером с безупречными цветовыми решениями и дизайнерской мебелью.\r\nНасладитесь удобствами представительского люкса.\r\n• Стильная и просторная гостиная с мягким диваном, рабочей и обеденной зонами, кофемашиной\r\n• Уютная спальня с кроватью размера king size\r\n• Вторая спальня с двумя кроватями и панорамными окнами\r\n• Три санузла с ванными и тропическими душами\r\nИз многочисленных окон в номере открывается прекрасный вид на город и знаменитые достопримечательности.\r\nНомер оснащен системой кондиционирования и имеет бесплатный доступ к сети Wi-Fi.\r\nПлощадь номера — 102 м².', 'luks_resident.jpg', 'Представительский люкс', '4'),
(5, 700, 'Большой номер с лаконичным и стильным дизайном,  позволяющий комфортно разместиться двоим гостям. В номере есть все необходимое для полноценного отдыха и для плодотворной работы. \r\nПлощадь номера - от 22 кв.м., количество номеров данной категории в отеле – 38.', 'queen.jpg', 'Queen size', '2'),
(6, 1300, 'Насладитесь приятным отдыхом всей семьей в номерах категории «Семейный». Большая кровать и дополнительный диван позволят с комфортом разместиться семье из четырех или пяти человек. В каждом номере данной категории установлена ванная. Площадь номера – 30 кв.м., количество номеров данной категории в отеле – 27.', 'King-3-.jpg', 'Номер высшей категории "джуниор сюит" _ «Семейный» с большой кроватью (King size)\r\n', '5'),
(7, 999, 'Если вы путешествуете с семьей или приезжаете на длительный срок, то мы готовы предложить Вам наш просторный номер категории «Супериор», площадью от 33 кв.м., где есть все необходимое для Вашего комфортного пребывания. Роскошный номер с площадью 38 кв.м. Большие окна  обеспечивают панорамные виды на город. Ванная комната оборудована «тропическим душем». Во многих номерах данной категории установлен дополнительный диван. Количество номеров данной категории – 15.', 'Superior.jpg', 'Номер высшей категории "джуниор сюит" _ «Улучшенный» с большой кроватью (King size)', '5');

-- --------------------------------------------------------

--
-- Структура таблицы `room_categories`
--

CREATE TABLE `room_categories` (
  `id` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `id_categories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `room_categories`
--

INSERT INTO `room_categories` (`id`, `id_room`, `id_categories`) VALUES
(2, 3, 2),
(3, 4, 3),
(4, 5, 1),
(5, 6, 2),
(6, 7, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_user` int(20) NOT NULL,
  `login` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `login`, `password`) VALUES
(1, 'admin', '12345'),
(2, 'рублёв', 'фыв'),
(3, 'Lil-Trill', 'asd'),
(4, 'Зубарев', 'фыв');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Индексы таблицы `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id_favorites`),
  ADD KEY `id_favorites` (`id_favorites`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `numberID` (`numberID`);

--
-- Индексы таблицы `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id_room`);

--
-- Индексы таблицы `room_categories`
--
ALTER TABLE `room_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_room` (`id_room`),
  ADD KEY `id_user` (`id_categories`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `userlogin` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id_favorites` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `room`
--
ALTER TABLE `room`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `room_categories`
--
ALTER TABLE `room_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`numberID`) REFERENCES `room` (`id_room`);

--
-- Ограничения внешнего ключа таблицы `room_categories`
--
ALTER TABLE `room_categories`
  ADD CONSTRAINT `room_categories_ibfk_1` FOREIGN KEY (`id_room`) REFERENCES `room` (`id_room`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `room_categories_ibfk_2` FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id_category`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
