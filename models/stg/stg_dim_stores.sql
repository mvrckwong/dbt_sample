{{ config(
    materialized='table'
) }}

-- Get the customer data from the raw schema
WITH source AS (
    SELECT
        stores_id::int,
        region_id::int,
        store_type::varchar,
        store_name::varchar,
    FROM raw.stores
    ORDER BY customer_id
)
SELECT *
FROM source