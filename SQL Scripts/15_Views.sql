--Views

--create a view vw_SalesSummary

CREATE VIEW vw_SalesSummary 
AS
SELECT 
TransactionID,
CustomerID,
SalesDate,
ProductID,
TotalAmount
FROM Sales;


SELECT * FROM vw_SalesSummary ;




-- Customer Revenue Summary

CREATE VIEW vw_CustomerRevenue
AS
SELECT
CustomerID,
SUM(TotalAmount) AS Revenue
FROM Sales
GROUP BY CustomerID;


SELECT * FROM vw_CustomerRevenue;


-- Monthly Revenue

CREATE VIEW vw_MonthlyRevenue
AS
SELECT 
MONTH(SalesDate) AS month,
SUM(TotalAmount) AS mon_revenue
FROM Sales
GROUP BY MONTH(SalesDate);



SELECT * FROM vw_MonthlyRevenue;



-- Sales Detail View

CREATE VIEW vw_SalesDetails
AS
SELECT
S.TransactionID,
C.CustomerID,
C.Gender,
P.ProductCategory,
S.TotalAmount
FROM Sales S
INNER JOIN Customers C
ON S.CustomerID = C.CustomerID
INNER JOIN Products P
ON S.ProductID = P.ProductID;


SELECT * FROM  vw_SalesDetails;

