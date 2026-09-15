CREATE DATABASE product_category_db;
USE product_category_db;
CREATE TABLE Category (
    Category_ID INT PRIMARY KEY,
    Category_Name VARCHAR(100) NOT NULL UNIQUE,
    Description VARCHAR(255)
);
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL DEFAULT 0,
    Category_ID INT,
    FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)
);
INSERT INTO Category
(Category_ID, Category_Name, Description)
VALUES
(1, 'Electronics', 'Electronic devices and accessories'),
(2, 'Clothing', 'Men and women clothing'),
(3, 'Books', 'Educational and general books'),
(4, 'Shoes', 'Footwear products');
INSERT INTO Product
(Product_ID, Product_Name, Price, Stock, Category_ID)
VALUES
(101, 'Laptop', 55000.00, 10, 1),
(102, 'Mobile Phone', 25000.00, 20, 1),
(103, 'T-Shirt', 799.00, 50, 2),
(104, 'Data Structures Book', 650.00, 30, 3),
(105, 'Running Shoes', 1999.00, 15, 4);
SELECT * FROM Category;
SELECT * FROM Product;
SELECT 
    Product.Product_ID,
    Product.Product_Name,
    Product.Price,
    Product.Stock,
    Category.Category_Name
FROM Product
INNER JOIN Category
ON Product.Category_ID = Category.Category_ID;
UPDATE Product
SET Price = 58000.00
WHERE Product_ID = 101;
UPDATE Product
SET Stock = Stock + 10
WHERE Product_ID = 102;
DELETE FROM Product
WHERE Product_ID = 105;
SELECT 
    Product.Product_Name,
    Product.Price,
    Category.Category_Name
FROM Product
INNER JOIN Category
ON Product.Category_ID = Category.Category_ID
WHERE Category.Category_Name = 'Electronics';
SELECT *
FROM Product
WHERE Price > 1000;
SELECT *
FROM Product
WHERE Stock < 20;
SELECT 
    Category.Category_Name,
    COUNT(Product.Product_ID) AS Total_Products
FROM Category
LEFT JOIN Product
ON Category.Category_ID = Product.Category_ID
GROUP BY Category.Category_ID, Category.Category_Name;