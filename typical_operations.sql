/*Добавление автора*/
INSERT INTO `authors` (`firstname`, `lastname`, `patronymic`) VALUES ('Михаил', 'Булгаков', 'Афанасьевич');

/*Добавление жанра*/
INSERT INTO `genre` (`name`) VALUES ('Мистицизм');

/*Добавление работника*/
INSERT INTO `workers` (`firstname`, `lastname`, `phone_numder`, `adress`, `dbirth`, `email`, `patronymic`) 
VALUES ('Александр', 'Абдулов', '89149082004', 'Свердлова 25', '1998-07-15', 'sanek_015@mail.ru', 'Алексеевич')

/*Добавление клиента*/
INSERT INTO `clients` ( `firstname`, `lastname`, `patronymic`, `dbirth`, `adress`, `phone_numder`, `email`) 
VALUES ('Иван', 'Петров', 'Сергеевич', '1988-12-12', 'где-то в России', '88005553535', 'temp@tempmail.ru')


/*Добавление книги*/
INSERT INTO `books` (`name`, `extra_information`, `availability`) VALUES ('Мастер и Маргарита', 'издание **', '1');

/*Определение автора*/
INSERT INTO `book_authors` (`book_id`, `author_id`) VALUES ('6', '6');

/*Определение жанра 1*/
INSERT INTO `book_genre` (`book_id`, `genre_id`) VALUES ('6', '1');

/*Определение жанра 2*/
INSERT INTO `book_genre` (`book_id`, `genre_id`) VALUES ('6', '2');


/*Добавление заказа*/
INSERT INTO `delivery` (`id`, `client_id`, `date_of_delivery`, `date_of_return`, `worker_id`) VALUES (NULL, '1', '2018-06-07', '2018-06-08', '1');

/*Определение книги*/
INSERT INTO `book_delivery` (`delivery_id`, `book_id`) VALUES ('1', '1');

/*Обновление доступности книги*/
UPDATE `books` SET `availability` = 0 WHERE `id` = 1;
