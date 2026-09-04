-- 01_create_staging_tables.sql
-- Creates staging tables used to temporarily store customer and product data
-- before loading the dimensional data warehouse.

CREATE TABLE cust_staging (
    ContactID INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    EmailAddress NVARCHAR(50)
);

CREATE TABLE prod_staging (
    ProductID INT,
    Name NVARCHAR(100),
    ListPrice MONEY,
    Weight DECIMAL(8,2)
);
