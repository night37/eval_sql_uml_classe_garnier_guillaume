CREATE DATABASE IF NOT EXISTS books;
USE books;

/* 1.1 Requête de structures: */
CREATE TABLE IF NOT EXISTS users(
	id_users INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	firstname VARCHAR(50),
    lastname VARCHAR(50),
    email VARCHAR(50) NOT NULL,
    password VARCHAR(100)
) ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS book(
	id_book INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    title VARCHAR(50),
    description TEXT,
    publication_date DATE,
    author VARCHAR(50),	
    id_category INT,
    id_users INT
)ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS category(
	id_category INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL
)ENGINE=innoDB;

ALTER TABLE book
ADD CONSTRAINT fk_users
FOREIGN KEY(id_users)
REFERENCES users(id_users);

ALTER TABLE book
ADD CONSTRAINT fk_category
FOREIGN KEY(id_category)
REFERENCES category(id_category);

ALTER TABLE users
ADD CONSTRAINT check_firstname_more_2_caracters
CHECK(LENGTH(firstname) > 2);

ALTER TABLE users
ADD CONSTRAINT check_lastname_more_3_caracters
CHECK(LENGTH(lastname) > 3);

ALTER TABLE users
ADD CONSTRAINT check_title_more_2_caracters
CHECK(LENGTH(lastname) > 2);

ALTER TABLE book
ADD CONSTRAINT check_description_between_1_500	
CHECK(LENGTH(`description`) BETWEEN 1 AND 500);
