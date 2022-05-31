CREATE DATABASE library;

CREATE TABLE author(
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    dob DATE,
    pob TEXT,
    description TEXT,
    avt TEXT
)