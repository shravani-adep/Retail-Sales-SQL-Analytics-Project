--- SALES TABLE POPULATE


INSERT INTO Sales
(
    TransactionID,
    SalesDate,
    CustomerID,
    ProductID,
    Quantity,
    TotalAmount


)
SELECT 
CAST(S.TransactionID AS INT),
CAST(S.SalesDate AS DATE),
S.CustomerID,
P.ProductID,
CAST(S.Quantity AS INT),
CAST(LTRIM(RTRIM(S.TotalAmount)) AS DECIMAL(10,2))
FROM StagingRetail S 
INNER JOIN Products P
ON S.ProductCategory = P.ProductCategory 
AND CAST(S.PricePerUnit AS DECIMAL(10,2)) = P.PricePerUnit;


-- coversion issue in above query

UPDATE StagingRetail
SET TotalAmount = REPLACE(REPLACE(TotalAmount, CHAR(13), ''), CHAR(10), '');



INSERT INTO Sales
(
    TransactionID,
    SalesDate,
    CustomerID,
    ProductID,
    Quantity,
    TotalAmount


)
SELECT 
CAST(S.TransactionID AS INT),
CAST(S.SalesDate AS DATE),
S.CustomerID,
P.ProductID,
CAST(S.Quantity AS INT),
CAST(LTRIM(RTRIM(S.TotalAmount)) AS DECIMAL(10,2))
FROM StagingRetail S 
INNER JOIN Products P
ON S.ProductCategory = P.ProductCategory 
AND CAST(S.PricePerUnit AS DECIMAL(10,2)) = P.PricePerUnit;


SELECT * FROM Sales;



