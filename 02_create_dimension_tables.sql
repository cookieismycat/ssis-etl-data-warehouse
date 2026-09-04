-- 02_create_dimension_tables.sql
-- Creates the customer and product dimension tables.
-- Identity columns are used as surrogate keys.

CREATE TABLE DimCustomer (
    CustomerKey INT IDENTITY(1,1) PRIMARY KEY,
    ContactID INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    EmailAddress NVARCHAR(50)
);

CREATE TABLE DimProduct (
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,
    ProductID INT,
    Name NVARCHAR(100),
    ListPrice MONEY,
    Weight DECIMAL(8,2)
);
