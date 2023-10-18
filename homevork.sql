CREATE DATABASE anmals ;

CREATE TABLE anmals (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(50) NOT NULL,
    color VARCHAR(50) NOT NULL,
);

INSERT INTO anmals (name, type, color) VALUES ('dog', 'ssss', 'black'),('cat', 'ssss', 'orange');
SELECT * FROM anmals WHERE id = 1;



CREATE DATABASE users;

CREATE TABLE users (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(50) NOT NULL,
    gmail VARCHAR(50) NOT NULL,
    age INT NOT NULL
);


INSERT INTO users (name, type, gmail, age) VALUES ('&1', 'ssss', 'dima@gmail.com', 40),('abror', 'ssss', 'abror@gmail.com', 19);

SELECT age FROM users WHERE age >= 10;



CREATE DATABASE jobs;

CREATE TABLE jobs (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(50) NOT NULL,
    company VARCHAR(50) NOT NULL,
);

INSERT INTO jobs (name, type, color) VALUES ('dog', 'ssss', 'najot - T'),('cat', 'ssss', 'abu');
SELECT * FROM jobs WHERE id = 1;

DROP TABLE jobs;



