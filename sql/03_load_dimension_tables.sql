-- 03_load_dimension_tables.sql
-- Loads customer and product data from staging tables
-- into the corresponding dimension tables.

INSERT INTO DimCustomer (
    ContactID,
    FirstName,
    LastName,
    EmailAddress
)
SELECT
    ContactID,
    FirstName,
    LastName,
    EmailAddress
FROM cust_staging;


INSERT INTO DimProduct (
    ProductID,
    Name,
    ListPrice,
    Weight
)
SELECT
    ProductID,
    Name,
    ListPrice,
    Weight
FROM prod_staging;
