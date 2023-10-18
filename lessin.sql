CREATE TABLE users (
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE res (
    id SERIAL NOT NULL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    userID INT,
    FOREIGN KEY (userID) REFERENCES users(id)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    userID INT,
    foodId INT,
    FOREIGN KEY (userID) REFERENCES users(id),
    FOREIGN KEY (foodId) REFERENCES res(id)
);

INSERT INTO users (name) VALUES ('Alisher'), ('Ahmat'), ('Sobir'), ('lola');
INSERT INTO res (title, userID) VALUES ('shokalat', 2), ('osh', 1);

INSERT INTO orders (userID, foodId) VALUES (2,5), (1,6);


SELECT *
FROM orders
INNER JOIN users ON orders.userID = users.id INNER JOIN res ON orders.foodID = res.id;



