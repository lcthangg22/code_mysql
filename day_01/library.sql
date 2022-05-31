CREATE DATABASE library;

CREATE TABLE author(
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    birthday DATE,
    address TEXT,
    gender ENUM("male", "female")
)

CREATE TABLE catecogry(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description TEXT
)

CREATE TABLE publish(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    phone VARCHAR(15),
    email TEXT,
    fax TEXT,
    address TEXT
)

CREATE TABLE book(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    release_year YEAR,
    id_publish INT,
    id_author INT,
    avatar TEXT,
    id_category INT,
    FOREIGN KEY (id_publish) REFERENCES publish(id)
)

CREATE TABLE book_category(
    id_book INT,
    id_category INT,
    PRIMARY KEY(id_book, id_category),
    FOREIGN KEY(id_book) REFERENCES book(id),
    FOREIGN KEY(id_category) REFERENCES catecogry(id)
)

