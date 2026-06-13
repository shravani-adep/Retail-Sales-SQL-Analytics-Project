-- Triggers


-- Create Audit Table (SalesAudit)
--Whenever new sale is inserted:
--AFTER INSERT
--store audit record.


CREATE TABLE SalesAudit(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    TransactionID INT,
    AuditDateTime DATETIME

);

CREATE TRIGGER SalesAuditTrigger
ON Sales
AFTER INSERT 
AS
BEGIN
      INSERT INTO SalesAudit(
        TransactionID,
        AuditDateTime
      )
      SELECT 
      TransactionID,
      GETDATE()
      FROM
      inserted;

END;      




--- usage:

INSERT INTO Sales
VALUES
(
1001,'2025-06-12','CUST001',1,2,500
);


SELECT * FROM SalesAudit;



