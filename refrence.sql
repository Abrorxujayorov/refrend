CREATE TABLE users (
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL
);

CREATE TABLE res (
    id SERIAL NOT NULL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    userID INT,
    FOREIGN KEY (userID) REFERENCES users(id)
);


INSERT INTO users (name, age) VALUES ('Alisher', 111), ('Ahmat', 222), ('Sobir', 333), ('lola', 4444);
INSERT INTO res (title, userID) VALUES ('shokalat', 2), ('osh', 1);

SELECT * FROM res INNER JOIN users on res.userID = users.id;