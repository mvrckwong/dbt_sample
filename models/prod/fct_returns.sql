{{ config(
    materialized='table'
) }}

-- Get the return data from the raw schema
WITH source AS (
    SELECT 
        return_date::DATE
        ,product_id::INT
        ,store_id::INT
        ,quantity::INT
    FROM 
        raw.returns
)

SELECT 
    *
FROM 
    source
ORDER BY 
    return_date ASC