-- CREATE DATABASE animal;

-- CREATE TABLE anmals (
--     id INT,
--     name VARCHAR(60),
--     type VARCHAR(50),
--     color VARCHAR(10)
-- );

-- INSERT INTO anmals VALUES (1, 'dog', 'Lactating', 'black'),
-- (2, 'cat', 'Lactating', 'black'),
-- (3, 'Tiger', 'Lactating', 'orange'),
-- (4, 'Turtle', 'Lactating', 'blue'),
-- (5, 'Porcupine', 'Lactating', 'black');






CREATE DATABASE cars; 

-- \c cars;

-- CREATE TABLE cars (
--     id INT,
--     name VARCHAR(50),
--     color VARCHAR(15)
-- );

-- INSERT INTO cars VALUES (1 , 'BMW', 'black'), 
-- (2 , 'mers', 'black'),
-- (3 , 'spark', 'oq'),
-- (4 , 'jentira', 'blue'),
-- (5 , 'nexia', 'black');

-- SELECT * FROM cars
-- WHERE color = 'black'

-- UPDATE cars set color = 'oq' WHERE color = 'black';


-- UPDATE cars set color = 'orange', name = 'BMW' WHERE id = 1;

-- DELETE FROM cars WHERE id = 1;




-- CREATE DATABASE newuser; 
-- \c newuser

-- CREATE TABLE users (
--     user_id INT,
--     USER_NAME VARCHAR(60),
--     WORK VARCHAR(200),
--     gmail VARCHAR(60)
-- );

-- INSERT INTO users VALUES (1, 'dima', 'developer', 'dima@gmail.com');
-- SELECT * FROM users;



CREATE DATABASE users; 
-- /c users

CREATE TABLE students (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    gmail VARCHAR(60) NOT NULL
);
INSERT INTO students (name, gmail) VALUES ('dima', 'dima@gmail.com'),
('anna', 'anna@gmail.com'),('alex', 'alex@gmail.com'),('dimon', 'dimon@gmail.com');

SELECT * FROM students WHERE id = 2;

UPDATE students SET name = 'Abror' WHERE id = (SELECT MIN(id) FROM students WHERE name = 'dima');