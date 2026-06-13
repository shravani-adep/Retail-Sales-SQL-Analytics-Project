-- Stored Procedures
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Sales;

--Get revenue by category.

CREATE PROCEDURE GetSalesByCategory
AS
BEGIN

      SELECT 
      P.ProductCategory,
      SUM(S.TotalAmount) as revenue
      FROM Products P
      INNER JOIN Sales S
      ON P.ProductID = S.ProductID 
      GROUP BY P.ProductCategory;

END;      

EXEC GetSalesByCategory;


-- Get sales by customer.
-- Pass CustomerID as parameter.



CREATE PROCEDURE GetCustomerSales 
@CustomerID VARCHAR(20)

AS
BEGIN
     
     SELECT 
     C.CustomerID,
     SUM(S.TotalAmount) as sales
     FROM Customers C
     INNER JOIN Sales S
     ON C.CustomerID = S.CustomerID
     WHERE C.CustomerID = @CustomerID
     GROUP BY C.CustomerID;
     

END; 

EXEC GetCustomerSales 'CUST001'

EXEC GetCustomerSales 'CUST234';

EXEC GetCustomerSales 'CUST500';


