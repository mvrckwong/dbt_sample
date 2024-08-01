{{ config(
    materialized='table'
) }}

-- Get the customer data from the raw schema
WITH source AS (
    SELECT
        region_id::int,
        sales_district::varchar,
        sales_region::varchar
    FROM raw.regions
)

SELECT *
FROM source
ORDER BY region_id ASC;