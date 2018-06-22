# База данных "Библиотека"
**Цель проекта**: проектирование базы данных для хранения и выдачи книг в библиотке
![Схема базы данных](schema.png)
Код для создания таблиц базы данных "Библиотека" приведен в файле *tables_create.sql*.

### Описание таблиц
* **books** — таблица для книг (идентификатор, название, дополнительная информация, доступность).
* **book_authors** — связующая таблица книг и авторов (идентификатор книги, идентификатор автора).
* **book_delivery** — связующая таблица книг и выдач (идентификатор книги, идентификатор выдачи).
* **clients** — таблица всех клиентов (идентификатор, имя, отчество, фамилия, номер телефон, электронная почта, дата рождения, адресс).
* **book_genre** — связующая таблица книг и жанров (иидентификатор книги, идентификатор жанра).
* **delivery** — таблица заказов (идентификатор заказа, идентификатор книги, идентификатор работника, дата выдачи, дата возврата).
* **authors** — таблица всех авторов (идентификатор, имя, отчество, фамилия).
* **genree** — таблица всех жанров (идентификатор, название жанра).
* **workers** — таблица всех работников (идентификатор, имя, фамилия, отчество, номер телфона, адресс, почта, дата рождения)

### Описание связей между таблицами
* **books и authors**: "многие ко многим" (разные авторы могут писать разные книги). Для реализации связи создана связующая таблица book_authors.
* **books и genree**: "многие ко многим" (разные книги можно относить к разным жанрам). Для реализации связи создана связующая таблица book_delivery.
* **books и delivery**: "многие ко многим" (разные книги могут быть в разных выдачах). Для реализации связи создана связующая таблица book_delivery.
* **clients и delivery**: "один ко многим" (один клиент может сделать множество заказов).
* **delivery и workers**: "один к одному" (одна выдача может проводится конкретным работником).
* **delivery и fine**: "один к одному" (на один заказ - один пункт со описаниями штрафов). 

## Набор типовых данных для таблиц

Набор типовых данных для заполнения таблиц представлен в файле *typical_data.sql*.

## Примеры типовых операций
Примеры типовых операций представлены в файле *typical_operations.sql*.

#### Представления
       
       /*Представление с основной информациeй о заказе*/
          CREATE VIEW delivery_allinfo 
          AS SELECT `delivery`.id  as 'delivery_id',`clients`.name  as 'client_name', `clients`.lastname  as 'client_lastname',
          `books`.name as 'book_name', `workers`.lastname as 'worker_lastname'
          FROM `clients`,`books`,`workers`,`delivery`;

          SELECT * FROM delivery_allinfo where delivery_id=1
          
       /*Представление с основной информациeй о книге*/
          CREATE VIEW information_about_book
                    AS SELECT `books`.id as 'id_book',`books`.name as 'book_name',  `authors`.firstname as 'author_name',
		`authors`.secondname as 'author_secondname',	`authors`.patronymic as 'author_patronymic',
		`books`.availability as `availability`
                    FROM `books`,`authors`,`book_authors` where `books`.id=`book_authors`.book_id and 	 `book_authors`.author_id=`authors`.id;

          SELECT * FROM information_about_book WHERE `id_book`=1;
		  
       /*Представление с доступными книгами*/
          CREATE VIEW available_books
                    AS SELECT * 
                    FROM information_about_book where `books`.availability=1;

          SELECT * FROM available_books;
