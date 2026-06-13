-- Error handling


--- purposely did a mistake in the Quantity column...instead of INT value i have put VARCHAR values

BEGIN TRY

        INSERT INTO Sales(
            
            TransactionID,
            SalesDate,
            CustomerID,
            ProductID,
            Quantity,
            TotalAmount

        )
        VALUES(

            1002,
            GETDATE(),
            'CUST002',
            1,
            'ABC',
            500
        );

        PRINT 'Record Inserted Successfully';

END TRY


BEGIN CATCH

            PRINT 'Error Occurred';

            SELECT ERROR_MESSAGE();

END CATCH;




