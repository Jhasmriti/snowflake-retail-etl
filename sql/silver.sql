/*====================================================
  SILVER.CUSTOMER
====================================================*/

CREATE OR REPLACE TABLE SILVER.CUSTOMER AS
SELECT
    customer_id,
    name,

    CASE
        WHEN email IS NULL THEN 'invalid@example.com'
        ELSE email
    END AS validated_email,

    country,

    CASE
        WHEN LOWER(customer_type) IN ('regular','premium')
        THEN INITCAP(customer_type)
        ELSE 'Unknown'
    END AS customer_type,

    registration_date,

    CASE
        WHEN age BETWEEN 18 AND 120
        THEN age
        ELSE NULL
    END AS age,

    CASE
        WHEN LOWER(gender) IN ('male','female')
        THEN INITCAP(gender)
        ELSE 'Other'
    END AS gender,

    COALESCE(total_purchases,0) AS total_purchases

FROM BRONZE.RAW_CUSTOMER;


/*====================================================
  SILVER.PRODUCT
====================================================*/

CREATE OR REPLACE TABLE SILVER.PRODUCT AS
SELECT
    product_id,
    name,
    category,
    brand,

    CASE
        WHEN price > 0
        THEN price
        ELSE 0
    END AS price,

    CASE
        WHEN stock_quantity >= 0
        THEN stock_quantity
        ELSE 0
    END AS stock_quantity,

    CASE
        WHEN rating BETWEEN 0 AND 5
        THEN rating
        ELSE NULL
    END AS rating,

    is_active

FROM BRONZE.RAW_PRODUCT;


/*====================================================
  SILVER.ORDERS
====================================================*/

CREATE OR REPLACE TABLE SILVER.ORDERS AS
SELECT
    transaction_id,
    customer_id,
    product_id,
    quantity,
    total_amount,
    transaction_date,
    payment_method,
    store_type

FROM BRONZE.RAW_ORDERS

WHERE transaction_id IS NOT NULL
AND total_amount > 0;
