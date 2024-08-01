{{ config(
    materialized='table'
) }}

-- Get the customer data from the raw schema
WITH source AS (
    SELECT 
        product_id::INT,
        product_brand::VARCHAR,
        product_name::VARCHAR,
        product_sku::VARCHAR,
        product_retail_price::DECIMAL(10,2),
        product_cost::DECIMAL(10,2),
        product_weight::DECIMAL(10,2),
        COALESCE(recyclable, 0) AS is_recyclable,
        COALESCE(low_fat, 0) AS is_low_fat
    FROM raw.products
)

SELECT *
FROM source