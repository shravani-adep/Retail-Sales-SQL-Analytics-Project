--- PRODUCTS TABLE POPULATE


INSERT INTO Products(
    ProductCategory,
    PricePerUnit

)
SELECT DISTINCT ProductCategory,
CAST(PricePerUnit AS DECIMAL(10,2))
FROM StagingRetail;


SELECT * FROM Products;

