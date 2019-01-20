INSERT INTO `authors` (`firstname`, `lastname`, `patronymic`) VALUES 
( 'Александр', 'Пушкин', 'Сергеевич'),
( 'Иван', 'Тургенев', 'Сергеевич'),
( 'Михаил', 'Юрьевич', 'Лермонтов'),
( 'Фёдор', 'Достоевский', 'Михайлович'),
( 'Николай', 'Гоголь', 'Васильевич');

INSERT INTO `books` (`name`, `author_id`,`genree_id`,`extra_information`, `availability`) VALUES 
( 'Дубровский', 1,4,'экстра', 1),
( 'Ася', 2,1,'экстра', 1),
( 'Мцыри',3,2,'экстра', 1),
( 'Идиот',4,3, 'экстра', 1),
( 'Вий',5,5, 'экстра', 1);

INSERT INTO `genres` (`name`) VALUES 
( 'Фантастика'),
( 'Детектив'),
( 'Ужасы'),
( 'Трагедия'),
( 'Биография');

INSERT INTO `books_authors` (`book_id`, `author_id`) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

INSERT INTO `books_genre` (`book_id`, `genre_id`) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

INSERT INTO `workers` (`firstname`, `lastname`, `phone_numder`, `adress`, `dbirth`, `email`, `patronymic`) VALUES 
('Иван', 'Васильев', '88889871211', 'Советская,2', '2018-06-03', 't1@mail.ru', 'Алексеевич'),
('Андрей', 'Петров', '88889871213', 'Советская,3', '2018-01-03', 't2@mail.ru', 'Сергеевич'),
('Александр', 'Павлов', '88889871214', 'Советская,4', '2018-02-03', 't3@mail.ru', 'Алексеевич'),
('Семен', 'Полынов', '88889871215', 'Советская,5', '2018-03-03', 't4@mail.ru', 'Александрович'),
('Артём', 'Кедрин', '88889874213', 'Советская,6', '2018-04-03', 't5@mail.ru', 'Алексеевич');

INSERT INTO `clients` (`firstname`, `lastname`, `phone_numder`, `adress`, `dbirth`, `email`, `patronymic`) VALUES
('Олег', 'Орхипов', '88889871212', 'Советская,21', '2018-06-01', 't11@mail.ru', 'Алексеевич'),
('Тимур', 'Бекбек', '88889871222', 'Советская,22', '2018-06-13', 't12@mail.ru', 'Сергеевич'),
('Артадий', 'Песков', '88889871232', 'Советская,23', '2018-06-02', 't13@mail.ru', 'Алексеевич'),
('Татьяна', 'Корсакова', '88889871242', 'Советская,24', '2018-06-04', 't41@mail.ru', 'Александровна'),
('Александр', 'Тимофеев', '88889871252', 'Советская,25', '2018-06-05', 't15@mail.ru', 'Алексеевич');

INSERT INTO `deliveries` (`client_id`, `worker_id`, `date_of_delivery`, `date_of_return`) VALUES 
(1, 1, '2018-02-06', '2018-03-24'),
(2, 2, '2018-02-04', '2018-03-14'),
(3, 3, '2018-02-05', '2018-03-24'),
(4, 5, '2018-02-01', '2018-03-14'),
(5, 4, '2018-02-02', '2018-02-24');


INSERT INTO `fines` (`delivery_id`, `description`, `price`) VALUES 
(1, 'Утеря', '1000'),
(2, 'Утеря', '1000'),
(3, 'Задержка', '500'),
(4, 'Утеря', '1000'),
(5, 'Утеря', '1500');

INSERT INTO `books_deliveries` (`delivery_id`, `book_id`) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

