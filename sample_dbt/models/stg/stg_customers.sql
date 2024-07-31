{{ config(
    materialized='table',
    table_type='staging',
    full_refresh=True,
    alias='sample_sample_staging_customers'
) }}

WITH source AS (
    SELECT * FROM {{ ref('raw_customers') }}
)
SELECT
    customer_id,
    customer_acct_num
FROM source