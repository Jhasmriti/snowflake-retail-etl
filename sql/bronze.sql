CREATE OR REPLACE TABLE BRONZE.RAW_CUSTOMER
(
    customer_id INTEGER,
    name STRING,
    email STRING,
    country STRING,
    customer_type STRING,
    registration_date DATE,
    age INTEGER,
    gender STRING,
    total_purchases NUMBER
);

CREATE OR REPLACE TABLE BRONZE.RAW_PRODUCT
(
    product_id INTEGER,
    name STRING,
    category STRING,
    brand STRING,
    price NUMBER(10,2),
    stock_quantity INTEGER,
    rating NUMBER(3,1),
    is_active BOOLEAN
);

CREATE OR REPLACE TABLE BRONZE.RAW_ORDERS
(
    transaction_id STRING,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    total_amount NUMBER(10,2),
    transaction_date DATE,
    payment_method STRING,
    store_type STRING
);
