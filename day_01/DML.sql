-- Tạo database
CREATE DATABASE blog;

-- Tạo bảng author
CREATE TABLE author(
	id INT PRIMARY KEY, 
    full_name VARCHAR(50),
    dob DATE,
    address TEXT,
    mobile VARCHAR(10)
);

-- Tạo bảng post
CREATE TABLE post (
	id INT PRIMARY KEY,
    title TEXT,
    description TEXT,
    create_at DATE,
    id_author INT,
    FOREIGN KEY (id_author) REFERENCES author(id)
);
-- Tạo bảng tag
CREATE TABLE tag(
    id INT PRIMARY KEY,
    name VARCHAR(100)
)

-- Tạo bảng post_tag
CREATE TABLE post_tag(
    id_post INT,
    id_tag INT,
    PRIMARY KEY(id_post, id_tag),
    FOREIGN KEY (id_post) REFERENCES post(id),
    FOREIGN KEY (id_tag) REFERENCES tag(id)
)