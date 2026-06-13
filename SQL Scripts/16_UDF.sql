-- User Defined Function


--Scalar Function
--Calculate GST on a sale.


CREATE FUNCTION cal_gst (@Amt DECIMAL(10,2))
RETURNS DECIMAL(10,2)
AS
BEGIN
     
      RETURN @Amt * 0.18;
END;      



SELECT
TransactionID,
TotalAmount,
dbo.cal_gst(TotalAmount) AS GST
FROM Sales;



--Table-Valued Function
--Return sales of a customer.

CREATE FUNCTION GetCustomerTransactions (@cust_id VARCHAR(20))
RETURNS TABLE
AS
RETURN(
       SELECT 
       TotalAmount
       FROM Sales
       WHERE CustomerID = @cust_id
);


SELECT *
FROM dbo.GetCustomerTransactions('CUST001');