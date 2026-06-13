--- CUSTOMER TABLE POPULATE


INSERT INTO Customers(
    CustomerID,
    Gender,
    Age
)
SELECT DISTINCT CustomerID , Gender , CAST(Age AS INT)
FROM StagingRetail;


SELECT * FROM Customers;

