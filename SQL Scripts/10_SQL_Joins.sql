
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Sales;
-- Advanced SQL


-- Revenue by Product Category

SELECT 
P.ProductCategory,
SUM(S.TotalAmount) as revenue
FROM Products P
INNER JOIN Sales S
ON P.ProductID = S.ProductID
GROUP BY P.ProductCategory;



-- Revenue by Gender 

SELECT 
C.Gender,
SUM(S.TotalAmount) as revenue
FROM Customers C
INNER JOIN Sales S
ON C.CustomerID = S.CustomerID
GROUP BY C.Gender;


-- Categories generating revenue above ₹5000


SELECT 
P.ProductCategory,
SUM(S.TotalAmount) as revenue_above_5000
FROM Products P
INNER JOIN Sales S
ON P.ProductID = S.ProductID
GROUP BY P.ProductCategory
HAVING SUM(S.TotalAmount) > 5000;


-- Top 3 Categories by Revenue


SELECT TOP 3 P.ProductCategory,
SUM(S.TotalAmount) as revenue
FROM Products P
INNER JOIN Sales S
ON P.ProductID = S.ProductID
GROUP BY P.ProductCategory
ORDER BY SUM(S.TotalAmount) DESC;


-- Show all customers and their sales.

SELECT
C.CustomerID,
S.TotalAmount
FROM Customers C
LEFT JOIN Sales S
ON C.CustomerID = S.CustomerID;


-- Show all sales and customer details.

SELECT
C.CustomerID,
S.TransactionID
FROM Customers C
RIGHT JOIN Sales S
ON C.CustomerID = S.CustomerID;


--CROSS JOINS
-- Show all possible Customer-Product combinations

SELECT 
C.CustomerID ,
P.ProductCategory
FROM Customers C
CROSS JOIN Products P;



