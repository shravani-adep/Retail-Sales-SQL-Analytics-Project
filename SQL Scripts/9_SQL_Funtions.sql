-- SQL Functions

-- Total Revenue?

SELECT SUM(TotalAmount) as total_revenue
FROM Sales;


--Average Transaction Value

SELECT AVG(TotalAmount) as avg_transaction_value
FROM Sales;

-- Highest and Lowest Sale?

SELECT 
MAX(TotalAmount) as Highest_sale ,
MIN(TotalAmount) as lowest_sale
FROM Sales;


-- Number of Transactions

SELECT COUNT(TransactionID) as tot_transactions
FROM Sales;


-- Convert Gender to uppercase.(string)

SELECT 
UPPER(Gender) as uppercase
FROM Customers;


-- Display first 3 characters of CustomerID  
-- Display character part of the CustomerID  
-- Display Number part of the CustomerID  
-- Display Length of the CustomerID  

SELECT CustomerID,
LEFT(CustomerID, 3) AS first3Chars,
SUBSTRING(CustomerID, 1, 4) AS char_part,
SUBSTRING(CustomerID, 5, 3) AS number_Part,
LEN(CustomerID) AS len
FROM Customers;


-- Extract year and month and month name from SalesDate. (Date & Time Functions)

SELECT SalesDate,
YEAR(SalesDate) AS  sales_year,
MONTH(SalesDate) AS sales_month,
DATENAME(MONTH, SalesDate) AS sales_month_name
FROM Sales;


-- Numeric/Math Functions

select * from sales;

SELECT 
-25.89 AS original_num,
CEILING(25.89) AS ceiled_val,
FLOOR(25.89) AS floored_val,
ABS(-25.89) AS pos_num;



-- Conversion Functions
SELECT GETDATE();

SELECT CAST(123.45 AS INT);
SELECT CAST(GETDATE() AS DATE);



-- Date & Time Functions

SELECT
SalesDate,
DATEADD(DAY, 1 , SalesDate) as added_day,
DATEADD(MONTH, 1 , SalesDate) as added_month,
DATEADD(YEAR, 1 , SalesDate) as added_year
FROM Sales;


SELECT
SalesDate,
DATEDIFF(DAY, SalesDate ,GETDATE()) as day_difference,
DATEDIFF(MONTH, SalesDate ,GETDATE()) as month_difference,
DATEDIFF(YEAR, SalesDate ,GETDATE()) as year_difference
FROM Sales;



