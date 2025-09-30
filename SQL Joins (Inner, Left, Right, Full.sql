CREATE DATABASE shopDB;
USE shopDB;

--Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert Customers
INSERT INTO Customers (customer_id, name, city) VALUES
(1, 'John', 'New York'),
(2, 'Priya', 'Delhi'),
(3, 'Amit', 'Mumbai'),
(4, 'Sara', 'London');

-- Insert Orders
INSERT INTO Orders (order_id, customer_id, product, amount) VALUES
(101, 1, 'Laptop', 80000),
(102, 2, 'Mobile', 20000),
(103, 1, 'Tablet', 30000),
(104, 3, 'Headphones', 5000);

--inner join
SELECT Customers.name, Customers.city, Orders.product, Orders.amount
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;

--LEFT JOIN
SELECT Customers.name, Customers.city, Orders.product, Orders.amount
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

--RIGHT JOIN
SELECT Customers.name, Customers.city, Orders.product, Orders.amount
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;

--FULL OUTER JOIN
SELECT Customers.name, Customers.city, Orders.product, Orders.amount
FROM Customers
FULL JOIN Orders ON Customers.customer_id = Orders.customer_id;

