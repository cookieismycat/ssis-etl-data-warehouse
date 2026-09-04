# SSIS ETL Data Warehouse Project

## Overview

This project demonstrates an ETL workflow built using SQL Server, SSIS, and AdventureWorks data.

The process extracts customer, product, and sales data into staging tables, loads dimensional tables, and prepares fact-table data for analysis. The project was designed to practice core data warehousing concepts such as staging, dimensional modeling, surrogate keys, ETL, and data validation.

## Tools & Technologies

- SQL Server
- SQL Server Management Studio (SSMS)
- SQL Server Integration Services (SSIS)
- Visual Studio
- AdventureWorks Database
- SQL

## ETL Process

The workflow follows these main steps:

1. Create staging tables for customer and product data
2. Extract data into the staging tables
3. Create dimensional tables
4. Load customer and product data into the dimensions
5. Create a staging table for sales data
6. Join the sales staging data with dimension tables
7. Load the final records into the fact table

## Data Model

### Staging Tables

- `cust_staging`
- `prod_staging`
- `sales_staging`

### Dimension Tables

- `DimCustomer`
- `DimProduct`

### Fact Table

- `FactInternetSales`

## Project Structure

```text
ssis-etl-data-warehouse/
│
├── README.md
├── sql/
│   ├── 01_create_staging_tables.sql
│   ├── 02_create_dimension_tables.sql
│   ├── 03_load_dimension_tables.sql
│   ├── 04_create_fact_table.sql
│   └── 05_load_fact_table.sql
│
├── images/
│   ├── staging-tables.png
│   ├── dimension-tables.png
│   ├── dimension-load.png
│   └── ssis-import.png
│
└── docs/
    └── project-notes.md
