-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.23-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win64
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица testing.answer
CREATE TABLE IF NOT EXISTS `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_question` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_answer_question` (`id_question`),
  CONSTRAINT `FK_answer_question` FOREIGN KEY (`id_question`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=koi8r;

-- Дамп данных таблицы testing.answer: ~24 rows (приблизительно)
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` (`id`, `id_question`, `text`) VALUES
	(1, 1, 'Вывод данных из БД'),
	(2, 1, 'Получение данных из БД'),
	(3, 1, 'Подключение к БД'),
	(4, 2, 'строке'),
	(5, 2, 'целому числу'),
	(6, 5, 'intval()'),
	(7, 5, 'var_dump()'),
	(8, 5, 'mysql_query()'),
	(9, 5, 'count()'),
	(10, 3, '11'),
	(11, 3, '12'),
	(12, 3, '13'),
	(13, 4, 'Гея'),
	(14, 4, 'Афродита'),
	(15, 4, 'Гера'),
	(16, 6, 'Зевс'),
	(17, 6, 'Аид'),
	(18, 6, 'Посейдон'),
	(19, 7, 'Зевс'),
	(20, 7, 'Аид'),
	(21, 7, 'Посейдон'),
	(22, 8, 'Отец Зевса'),
	(23, 8, 'Боксер'),
	(24, 8, 'Жигало');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;


-- Дамп структуры для таблица testing.correct_answer
CREATE TABLE IF NOT EXISTS `correct_answer` (
  `id_question` int(11) NOT NULL,
  `id_answer` int(11) NOT NULL,
  KEY `FK__question` (`id_question`),
  KEY `FK__answer` (`id_answer`),
  CONSTRAINT `FK__answer` FOREIGN KEY (`id_answer`) REFERENCES `answer` (`id`),
  CONSTRAINT `FK__question` FOREIGN KEY (`id_question`) REFERENCES `question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;

-- Дамп данных таблицы testing.correct_answer: ~7 rows (приблизительно)
/*!40000 ALTER TABLE `correct_answer` DISABLE KEYS */;
INSERT INTO `correct_answer` (`id_question`, `id_answer`) VALUES
	(7, 21),
	(4, 13),
	(6, 16),
	(5, 6),
	(3, 11),
	(2, 5),
	(1, 3),
	(8, 22);
/*!40000 ALTER TABLE `correct_answer` ENABLE KEYS */;


-- Дамп структуры для таблица testing.question
CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_test` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_question_test` (`id_test`),
  CONSTRAINT `FK_question_test` FOREIGN KEY (`id_test`) REFERENCES `test` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=koi8r;

-- Дамп данных таблицы testing.question: ~8 rows (приблизительно)
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` (`id`, `id_test`, `title`) VALUES
	(1, 1, 'Что делает функция mysql_connect()?'),
	(2, 1, 'Функция intval() приводит значение к:'),
	(3, 2, 'Сколько подвигов совершил Геракл'),
	(4, 2, 'Богиня Земли в греческой мифологии'),
	(5, 1, 'Какая из этих функций относится к функциям дебага?'),
	(6, 2, 'Верховный бог греческой мифологии'),
	(7, 2, 'Бог морей в греческой мифологии'),
	(8, 1, 'Кто такой Кронос');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;


-- Дамп структуры для таблица testing.result
CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_test` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__user` (`id_user`),
  KEY `FK__test` (`id_test`),
  CONSTRAINT `FK__test` FOREIGN KEY (`id_test`) REFERENCES `test` (`id`),
  CONSTRAINT `FK__user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;

-- Дамп данных таблицы testing.result: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` (`id`, `id_user`, `id_test`, `time`, `date`) VALUES
	(1, 1, 1, 6, '2016-02-10'),
	(2, 2, 2, 15, '2016-02-10'),
	(3, 2, 1, 6, '2016-02-10'),
	(4, 2, 2, 10, '2016-02-10');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;


-- Дамп структуры для таблица testing.test
CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=koi8r;

-- Дамп данных таблицы testing.test: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` (`id`, `title`) VALUES
	(1, 'Тест по PHP'),
	(2, 'Тест по мифологии'),
	(3, 'Моя первая тема'),
	(4, 'простая тема');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;


-- Дамп структуры для таблица testing.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=koi8r;

-- Дамп данных таблицы testing.user: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `login`, `password`, `email`, `name`) VALUES
	(1, 'admin', 'ghjcnjnf', 'sasha25678@mail.ru', 'Sasha'),
	(2, 'sasha2567', 'ghjcnjnf', 'sasha256789@mail.ru', 'Sasha'),
	(3, 'sasha25678', 'ghjcnjnf', 'ivan2456@mail.ru', 'Sasha');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Дамп структуры для таблица testing.user_answer
CREATE TABLE IF NOT EXISTS `user_answer` (
  `id_result` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `id_answer` int(11) NOT NULL,
  KEY `FK_user_answer_question` (`id_question`),
  KEY `FK_user_answer_answer` (`id_answer`),
  KEY `FK_user_answer_result` (`id_result`),
  CONSTRAINT `FK_user_answer_answer` FOREIGN KEY (`id_answer`) REFERENCES `answer` (`id`),
  CONSTRAINT `FK_user_answer_question` FOREIGN KEY (`id_question`) REFERENCES `question` (`id`),
  CONSTRAINT `FK_user_answer_result` FOREIGN KEY (`id_result`) REFERENCES `result` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;

-- Дамп данных таблицы testing.user_answer: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `user_answer` DISABLE KEYS */;
INSERT INTO `user_answer` (`id_result`, `id_question`, `id_answer`) VALUES
	(1, 1, 3),
	(1, 2, 5),
	(1, 5, 6),
	(3, 1, 1),
	(3, 2, 5),
	(3, 5, 7),
	(4, 3, 10),
	(4, 4, 14),
	(4, 6, 16),
	(4, 7, 21);
/*!40000 ALTER TABLE `user_answer` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
