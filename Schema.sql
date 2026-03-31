create database Orders;
use  Orders;

CREATE TABLE Sales (
    id INTEGER PRIMARY KEY,
    customer_name TEXT,
    product_category TEXT,
    order_date DATE,
    amount DECIMAL(10,2),
    region TEXT
);

INSERT INTO Sales (id, customer_name, product_category, order_date, amount, region) VALUES
(101, 'Alice', 'Electronics', '2023-01-01', 1200.00, 'North'),
(102, 'Bob', 'Furniture', '2023-01-02', 450.00, 'South'),
(103, 'Charlie', 'Electronics', '2023-01-03', 800.00, 'East'),
(104, 'Alice', 'Furniture', '2023-01-04', 300.00, 'North'),
(105, 'David', 'Clothing', '2023-01-05', 50.00, 'West'),
(106, 'Eve', 'Electronics', '2023-01-06', 1500.00, 'North'),
(107, 'Bob', 'Clothing', '2023-01-07', 120.00, 'South'),
(108, 'Charlie', 'Clothing', '2023-01-08', 90.00, 'East'),
(109, 'Alice', 'Electronics', '2023-01-09', 700.00, 'North'),
(110, 'David', 'Furniture', '2023-01-10', 1100.00, 'West');


