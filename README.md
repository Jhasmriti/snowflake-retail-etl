# Snowflake Retail ETL Pipeline

## Project Overview

This project demonstrates an end-to-end Data Engineering pipeline built on Snowflake using the Medallion Architecture (Bronze, Silver, and Gold layers).

The pipeline ingests raw retail data from CSV files, applies data quality validations and transformations, and creates business-ready analytical views for reporting and decision-making.

---

## Architecture

```text
CSV Files
   │
   ▼
Bronze Layer (Raw Data)
   │
   ▼
Silver Layer (Cleaned & Validated Data)
   │
   ▼
Gold Layer (Business Analytics)
```

---

## Technologies Used

- Snowflake
- SQL
- Data Warehousing
- ETL / ELT
- GitHub

---

## Data Sources

### Customer Data
- Customer information
- Demographics
- Purchase history

### Product Data
- Product catalog
- Pricing
- Inventory information

### Order Data
- Sales transactions
- Payment methods
- Store information

---

## Bronze Layer

Raw data ingestion into Snowflake tables.

### Tables

- RAW_CUSTOMER
- RAW_PRODUCT
- RAW_ORDERS

---

## Silver Layer

Data validation and transformation layer.

### Data Quality Checks

#### Customer

- Email validation
- Customer type standardization
- Age validation
- Gender standardization

#### Product

- Price validation
- Stock quantity validation
- Rating validation

#### Orders

- Transaction ID validation
- Positive sales amount validation

---

## Gold Layer

Business-ready analytical views.

### VW_DAILY_SALES_ANALYSIS

Provides:

- Daily sales performance
- Total revenue
- Transaction count
- Average transaction value

### VW_CUSTOMER_PRODUCT_AFFINITY

Provides:

- Customer purchase behavior
- Product affinity analysis
- Monthly spending trends
- Customer engagement metrics

---

## Project Structure

```text
snowflake-retail-etl
│
├── Data
│   ├── customer.csv
│   ├── orders.csv
│   └── products.csv
│
├── SQL
│   ├── bronze.sql
│   ├── silver.sql
│   └── gold.sql
│
└── README.md
```

---

## Key Learnings

- Snowflake Data Warehousing
- Medallion Architecture
- Data Quality Validation
- ETL/ELT Development
- Analytical Data Modeling
- SQL-Based Transformations

---

## Future Enhancements

- Snowpipe for automated ingestion
- dbt integration
- Airflow orchestration
- CI/CD deployment pipeline
- Power BI Dashboard Integration
