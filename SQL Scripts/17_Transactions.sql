
-- SQL Transactions


BEGIN TRANSACTION;

DELETE FROM Sales
WHERE TransactionID = 1;

--to check
SELECT * FROM Sales 
WHERE TransactionID = 1;

--UNDO
ROLLBACK;


--to change
-- COMMIT;

