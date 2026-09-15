 Product and Category Management System

 Project Description

The **Product and Category Management System** is a MySQL-based database project designed to manage products and their categories efficiently.

The system allows users to:

* Create and manage product categories
* Add and manage products
* Maintain product prices and stock
* Connect products with their respective categories
* Search and filter products
* Update and delete product records
* Generate category-wise product reports

---

Objectives

1. To create a structured database for products and categories.
2. To maintain product information efficiently.
3. To establish a relationship between products and categories.
4. To perform CRUD operations.
5. To use SQL queries for searching, filtering, sorting, and reporting.
6. To maintain data integrity using primary keys and foreign keys.

---
 Database Details

Database Name:

```text
product_category_db
```

Tables

The project contains two main tables:

```text
1. Category
2. Product
```

---

Table Structure

 1. Category Table

| Field Name    | Data Type    | Key         | Constraints      | Description            |
| ------------- | ------------ | ----------- | ---------------- | ---------------------- |
| Category_ID   | INT          | Primary Key | NOT NULL         | Unique ID for category |
| Category_Name | VARCHAR(100) | —           | NOT NULL, UNIQUE | Name of category       |
| Description   | VARCHAR(255) | —           | Optional         | Category description   |

### 2. Product Table

| Field Name   | Data Type     | Key         | Constraints         | Description               |
| ------------ | ------------- | ----------- | ------------------- | ------------------------- |
| Product_ID   | INT           | Primary Key | NOT NULL            | Unique ID for product     |
| Product_Name | VARCHAR(100)  | —           | NOT NULL            | Name of product           |
| Price        | DECIMAL(10,2) | —           | NOT NULL            | Product price             |
| Stock        | INT           | —           | NOT NULL, DEFAULT 0 | Available stock           |
| Category_ID  | INT           | Foreign Key | NOT NULL            | Links product to category |

---

Database Relationship

The relationship between the tables is:

```text
Category
   |
   | 1
   |
   |------< Many
              |
           Product
```

Relationship Explanation

* One **Category** can have many **Products**.
* Each **Product** belongs to one **Category**.
* `Category_ID` is the **Primary Key** in the Category table.
* `Category_ID` is the **Foreign Key** in the Product table.

---

Technologies Used

* **Database:** MySQL
* **Language:** SQL
* **Tool:** MySQL Workbench / SQL Workshop

---

 Operations Performed

 Database Operations

* CREATE DATABASE
* USE DATABASE

 Table Operations

* CREATE TABLE
* PRIMARY KEY
* FOREIGN KEY
* NOT NULL
* UNIQUE
* DEFAULT

CRUD Operations

* **Create** – INSERT
* **Read** – SELECT
* **Update** – UPDATE
* **Delete** – DELETE

 Other SQL Operations

* INNER JOIN
* LEFT JOIN
* WHERE
* LIKE
* BETWEEN
* ORDER BY
* GROUP BY
* HAVING
* COUNT()
* SUM()
* AVG()
* MAX()
* MIN()

---

 Sample Categories

```text
1. Electronics
2. Clothing
3. Books
4. Shoes
5. Home Appliances
```

---

Sample Products

```text
Laptop
Mobile Phone
Headphones
T-Shirt
Jeans
Data Structures Book
Java Programming Book
Running Shoes
Formal Shoes
Washing
```
