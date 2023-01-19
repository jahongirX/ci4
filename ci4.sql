-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 19 2023 г., 13:04
-- Версия сервера: 5.7.29-log
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ci4`
--

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `new_price` double NOT NULL,
  `old_price` double DEFAULT NULL,
  `top` tinyint(2) DEFAULT '0',
  `new` tinyint(2) DEFAULT '0',
  `sale` tinyint(2) DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `product_description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `new_price`, `old_price`, `top`, `new`, `sale`, `image`, `created_date`, `update_date`, `product_description`, `status`) VALUES
(6, 'Aut ipsum sint amet quaerat aliquam magni ipsam. Laboriosam non at aut aut autem totam. Autem consequatur incidunt aliquid iste.', 1, 3333, 0, 0, 1, 1, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+debitis', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'There was a good deal on where you want to go after that into a graceful zigzag, and was just going to leave the court; but on the bank, and of having nothing to do: once or twice, half hoping that.', 1),
(7, 'Consequuntur blanditiis perspiciatis qui minima sed at. Est quo veniam optio vel incidunt quasi adipisci. Asperiores et est magnam.', 1, 12312, 0, 0, 0, 1, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+reprehenderit', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'I should like it very nice, (it had, in fact, I didn\'t know it was the first minute or two she walked sadly down the little golden key and hurried upstairs, in great fear lest she should meet the.', 1),
(8, 'Praesentium quisquam tenetur quibusdam rerum. Voluptas consequuntur aut quos illum cumque. Accusamus id maxime autem et provident vitae.', 1, 217, NULL, 0, 0, 0, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+odit', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'WHAT? The other guests had taken advantage of the Gryphon, \'she wants for to know when the White Rabbit, jumping up in a Little Bill It was opened by another footman in livery came running out of.', 1),
(9, 'Similique autem fugit nesciunt illum molestiae. Tempore et omnis omnis aut nobis. Cum unde numquam nihil iste quod.', 2, 607, NULL, 0, 0, 0, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+et', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'Alice quietly said, just as the doubled-up soldiers were silent, and looked anxiously round, to make out what it might tell her something about the crumbs,\' said the Gryphon. \'Do you mean by that?\'.', 1),
(10, 'Odio dicta aliquid voluptas eos. Ducimus porro cupiditate recusandae velit. Non dolor ex nesciunt. Delectus dolores repellat qui molestias vel est optio. Eaque eum dicta temporibus earum.', 5, 600, NULL, 0, 0, 0, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+sequi', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'King, and the whole thing very absurd, but they were IN the well,\' Alice said to Alice, and she at once took up the little door into that lovely garden. I think you\'d better ask HER about it.\' (The.', 1),
(11, 'Et rem mollitia consequatur voluptas repellendus ipsa sed. Rerum rem dolores rerum sequi sit. Itaque commodi explicabo dolorem assumenda iste deserunt nihil. Repellat veniam fuga aperiam dolorum.', 5, 253, NULL, 0, 0, 0, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+dolorum', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'Indeed, she had not attended to this last remark, \'it\'s a vegetable. It doesn\'t look like one, but it is.\' \'I quite forgot how to spell \'stupid,\' and that in some book, but I think I can creep under.', 1),
(12, 'Aut voluptas esse aut aut. Et voluptates enim nulla amet. Dicta odit ut aliquid iste reprehenderit et. Corporis ut fugiat eos facilis. Dolor maxime impedit doloremque consequuntur.', 2, 730, NULL, 0, 0, 0, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+quas', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'This is Bill,\' she gave a look askance-- Said he thanked the whiting kindly, but he would not join the dance?\"\' \'Thank you, it\'s a set of.', 1),
(13, 'Omnis minus sed nulla quia dolor magnam doloribus. Sed beatae et laborum odit itaque. Vitae sit autem magnam quis eligendi et nulla.', 5, 198, NULL, 0, 0, 0, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+cum', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'Alice looked very anxiously into her face, with such a dear little puppy it was!\' said Alice, swallowing down her anger as well go in at once.\' However, she did it at all,\' said Alice: \'--where\'s.', 1),
(14, 'Neque laborum consequuntur quod distinctio ab. Nesciunt delectus recusandae et incidunt. Voluptatem omnis culpa et et est. Magni eum consequatur est omnis ut quia.', 1, 878, NULL, 0, 0, 0, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+cupiditate', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'The long grass rustled at her with large eyes full of tears, \'I do wish they COULD! I\'m sure I can\'t be Mabel, for I know is, it would make with the Queen, pointing to Alice severely. \'What are you.', 1),
(15, 'Nesciunt quidem officia omnis. Itaque molestias quibusdam aut modi. Numquam accusantium rerum sunt ea. Accusamus atque ut aut unde.', 3, 706, NULL, 0, 0, 0, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+corporis', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'Latitude or Longitude I\'ve got back to them, and he went on growing, and, as the door opened inwards, and Alice\'s first thought was that she let the jury--\' \'If any one left alive!\' She was close.', 1),
(16, 'Eos magni voluptatem quia aut voluptas. Qui veniam reprehenderit ut. Mollitia aspernatur tempore voluptatem et quis sed. Rerum voluptas velit labore numquam laboriosam non fuga.', 1, 768, NULL, 0, 0, 0, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+laboriosam', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'Alice (she was rather glad there WAS no one else seemed inclined to say a word, but slowly followed her back to the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the.', 1),
(17, 'Consequatur non quia dicta at. Accusantium est nisi neque provident tempore. Sed non incidunt inventore molestias numquam. Dolore aperiam et amet explicabo.', 2, 832, NULL, 0, 0, 0, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+accusantium', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'I find a number of changes she had but to get in?\' \'There might be hungry, in which case it would be quite absurd for her to begin.\' He looked at it gloomily: then he dipped it into his cup of tea.', 1),
(18, 'Veniam nesciunt et rerum aperiam ea consequatur odio sit. Qui aperiam sit eos consectetur dolorum. Possimus et deleniti ipsa necessitatibus esse nostrum aliquid.', 3, 820, NULL, 0, 0, 0, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+sed', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'If I or she should chance to be talking in his turn; and both footmen, Alice noticed, had powdered hair that WOULD always get into that beautiful garden--how IS that to be in Bill\'s place for a good.', 1),
(19, 'Et corrupti aspernatur inventore in aut. Cumque aut officiis qui qui suscipit distinctio et.', 1, 295, NULL, 0, 0, 0, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+alias', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'Soup of the reeds--the rattling teacups would change (she knew) to the Knave of Hearts, carrying the King\'s crown on a crimson velvet cushion; and, last of all this time. \'I want a clean cup,\'.', 1),
(20, 'Occaecati illo facere natus iusto quasi culpa. Fuga omnis inventore eaque voluptas magni doloribus rerum. Qui sunt id optio.', 4, 488, NULL, 0, 0, 0, 'https://via.placeholder.com/400x400.png/CCCCCC?text=phones+apple+dicta', '2023-01-19 11:32:25', '2023-01-19 11:32:25', 'Alice. \'Then you may SIT down,\' the King triumphantly, pointing to the beginning again?\' Alice ventured to ask. \'Suppose we change the subject of conversation. \'Are you--are you fond--of--of dogs?\'.', 1),
(25, 'test', 2, 234, 44, 1, 1, 1, NULL, '2023-01-19 14:30:56', '2023-01-19 14:30:56', 'asdfsdfasdf', 1),
(26, 'Aut ipsum sint amet quaerat aliquam magni ipsam. Laboriosam non at aut aut autem totam. Autem consequatur incidunt aliquid iste.', 1, 1000, 0, 0, 0, 0, NULL, '2023-01-19 14:55:01', '2023-01-19 14:55:01', 'There was a good deal on where you want to go after that into a graceful zigzag, and was just going to leave the court; but on the bank, and of having nothing to do: once or twice, half hoping that.', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
