-- drop , delete , truncate



-- DELETE ... removes rows with certain condition .. is slowest
DELETE FROM Sales
WHERE TransactionID = 1;


-- TRUNCATE ... removes all the rows at once keeping the structure intact , can be rolled back in a TRANSACTION ..is faster than delete
BEGIN TRANSACTION ;
TRUNCATE TABLE  Sales;

SELECT * FROM Sales;

ROLLBACK TRANSACTION;


-- DROP ...used to fully discard all the tables ,triggers , views ...and is the fastest and cannot be rolled back

-- DROP TABLE Sales;
-- DROP VIEW vw_SalesDetails;

