-- SQL Basics


-- Retrieve all records from tables

SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Sales;


-- Find Total Sales?

SELECT SUM(TotalAmount) as total_sales
FROM Sales;


-- Find Total Customers?

SELECT COUNT(*) as total_cust
FROM Customers;


-- List all sales with customer details?

SELECT 
S.TransactionID,
S.SalesDate,
S.Quantity,
S.TotalAmount,
C.CustomerID,
C.Gender ,
C.Age
FROM Sales S
INNER JOIN Customers C
ON S.CustomerID = C.CustomerID;


-- Show sales greater than ₹500.(Comparison Operators)

SELECT *
FROM Sales
where TotalAmount > 500;

--Show sales from range 150 to 1000 (Special Operators AND Logical Operators)

SELECT *
FROM Sales
where TotalAmount BETWEEN 150 AND 1000;


--Sort customers by age.

SELECT *
FROM Customers
ORDER BY Age;


-- unique products?

SELECT DISTINCT(ProductCategory)
FROM Products ;


--Pattern matching(Wildcards))?

SELECT *
FROM Products 
WHERE ProductCategory LIKE 'E%';

--Contains letter 'i'?

SELECT *
FROM Products 
WHERE ProductCategory LIKE '%i%';


-- GROUP BY?

SELECT 
COUNT(ProductID) AS id_count,
ProductCategory 
FROM Products 
GROUP BY ProductCategory;



-- WHERE + GROUP BY + HAVING


SELECT 
COUNT(CustomerID) as count_id,
Gender,
Age
FROM Customers
WHERE Age < 40
GROUP BY Gender , Age 
HAVING Gender = 'Male';


