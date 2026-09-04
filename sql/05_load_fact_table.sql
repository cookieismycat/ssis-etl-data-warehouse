-- 05_load_fact_table.sql
-- Loads sales data into the fact table by joining staging data
-- with customer and product dimensions to retrieve surrogate keys.

INSERT INTO FactInternetSales (
    CustomerKey,
    ProductKey,
    ListPrice,
    SalesAmount
)
SELECT
    c.CustomerKey,
    p.ProductKey,
    s.ListPrice,
    s.SalesAmount
FROM sales_staging AS s
INNER JOIN DimCustomer AS c
    ON s.ContactID = c.ContactID
INNER JOIN DimProduct AS p
    ON s.ProductID = p.ProductID;
