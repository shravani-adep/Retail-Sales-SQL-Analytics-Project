
-- SUBQUERY
-- CTEs


-- Find customers with purchases above average sales.

SELECT 
C.CustomerID,
S.TotalAmount as purchase
FROM Customers C
INNER JOIN Sales S
ON C.CustomerID = S.CustomerID
WHERE S.TotalAmount > (
                       SELECT AVG(S.TotalAmount)
                       FROM Sales S
                       );



-- Show customer-wise revenue.        

WITH cte_customer_wise_revenue AS(

    SELECT 
    C.CustomerID,
    C.Gender,
    SUM(S.TotalAmount) as revenue
    FROM Customers C
    INNER JOIN Sales S
    ON C.CustomerID = S.CustomerID
    GROUP BY C.CustomerID,C.Gender


)

SELECT 
*
FROM cte_customer_wise_revenue;



--- Rank customers by spending.

WITH rank_cust AS(

    SELECT 
    C.CustomerID,
    SUM(S.TotalAmount) as revenue
    FROM Customers C
    INNER JOIN Sales S
    ON C.CustomerID = S.CustomerID
    GROUP BY  C.CustomerID
    

)

SELECT 
CustomerID,
revenue,
DENSE_RANK() OVER (ORDER BY Revenue DESC) AS CustomerRank
FROM rank_cust;


-- Top N Customers


SELECT TOP 10
CustomerID,
SUM(TotalAmount) AS Revenue
FROM Sales
GROUP BY CustomerID
ORDER BY Revenue DESC;



-- Running total of sales.

SELECT
TransactionID,
TotalAmount,
SUM(TotalAmount)
OVER (
    ORDER BY TransactionID) AS RunningTotal
FROM Sales;


