
CREATE TABLE Customers(
    CustomerID VARCHAR(20) PRIMARY KEY,
    Gender VARCHAR(20),
    Age  INT

);




CREATE TABLE Products(

    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductCategory VARCHAR(50),
    PricePerUnit  DECIMAL(10,2)
);



CREATE TABLE Sales(

    TransactionID INT PRIMARY KEY,
    SalesDate DATE,
    CustomerID VARCHAR(20),
    ProductID INT,
    Quantity INT,
    TotalAmount DECIMAL(10,2),

    FOREIGN KEY (CustomerID)
      REFERENCES Customers(CustomerID),

    FOREIGN KEY (ProductID)
      REFERENCES Products(ProductID)
  
);


