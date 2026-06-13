
BULK INSERT StagingRetail
FROM '/var/opt/mssql/retail_sales_dataset.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);


SELECT TOP 10 *
FROM StagingRetail;



