-- 04_create_fact_table.sql
-- Creates the sales staging table and fact table used in the ETL workflow.

CREATE TABLE sales_staging (
    ContactID INT,
    ProductID INT,
    ListPrice MONEY,
    SalesAmount MONEY
);

CREATE TABLE FactInternetSales (
    CustomerKey INT,
    ProductKey INT,
    ListPrice MONEY,
    SalesAmount MONEY
);
