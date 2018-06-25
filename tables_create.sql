CREATE TABLE `books` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL,
	`extra_information` varchar(255) NOT NULL,
	`availability` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `deliverys` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`client_id` INT NOT NULL,
	`date_of_delivery` DATE NOT NULL,
	`date_of_return` DATE NOT NULL,
	`worker_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `clients` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`firstname` varchar(50) NOT NULL,
	`lastname` varchar(50) NOT NULL,
	`patronymic` varchar(50) NOT NULL,
	`dbirth` DATE NOT NULL,
	`adress` varchar(50) NOT NULL,
	`phone_numder` varchar(12) NOT NULL,
	`email` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `workers` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`firstname` varchar(50) NOT NULL,
	`lastname` varchar(50) NOT NULL,
	`phone_numder` varchar(12) NOT NULL,
	`adress` varchar(100) NOT NULL,
	`dbirth` DATE NOT NULL,
	`email` varchar(50) NOT NULL,
	`patronymic` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `authors` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`firstname` varchar(50) NOT NULL,
	`lastname` varchar(50) NOT NULL,
	`patronymic` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `genres` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `books_authors` (
	`book_id` INT NOT NULL,
	`author_id` INT NOT NULL,
	PRIMARY KEY (`book_id`,`author_id`)
);

CREATE TABLE `books_deliverys` (
	`delivery_id` INT NOT NULL,
	`book_id` INT NOT NULL,
	PRIMARY KEY (`delivery_id`,`book_id`)
);

CREATE TABLE `fines` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`delivery_id` INT NOT NULL,
	`description` varchar(255) NOT NULL,
	`price` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `books_genre` (
	`book_id` INT NOT NULL,
	`genre_id` INT NOT NULL,
	PRIMARY KEY (`book_id`,`genre_id`)
);
