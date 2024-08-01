{{ config(
    materialized='table'
) }}

-- Get the customer data from the raw schema
WITH source AS (
    SELECT
        region_id::INT
        ,sales_district::VARCHAR
        ,sales_region::VARCHAR
    FROM 
        raw.regions
)

SELECT 
    *
FROM 
    source
ORDER BY 
    region_id ASC