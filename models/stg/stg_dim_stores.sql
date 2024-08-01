{{ config(
    materialized='table'
) }}

-- Get the customer data from the raw schema
WITH source AS (
    SELECT 
        store_id::INT,
        region_id::INT,
        store_type::VARCHAR,
        store_name::VARCHAR,
        store_street_address::VARCHAR,
        store_city::VARCHAR,
        store_state::VARCHAR,
        store_country::VARCHAR,
        store_phone::VARCHAR,
        first_opened_date::DATE,
        last_remodel_date::DATE,
        total_sqft::INT,
        grocery_sqft::INT
    FROM 
        raw.stores
)

SELECT *
FROM source
ORDER BY store_id ASC;