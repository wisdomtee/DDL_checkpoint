
CREATE TABLE CUSTOMER (
    CustomerID numeric PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20)
);

CREATE TABLE PRODUCT (
    ProductID numeric PRIMARY KEY,
    ProductName VARCHAR(100),
    Price numeric(10,2),
    CONSTRAINT CHK_Price CHECK (Price >= 0)
);

CREATE TABLE ORDERS (
    OrderID numeric PRIMARY KEY,
    CustomerID numeric,
    ProductID numeric,
    OrderQuantity numeric,
    OrderTotal numeric(10,2),
    CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID),
    CONSTRAINT FK_ProductID FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);
