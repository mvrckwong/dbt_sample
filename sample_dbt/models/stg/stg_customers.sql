{{ config(
    materialized='table',
    alias='stg_fact_customers',
    database='stg'
) }}

WITH source AS (
    SELECT * FROM customers
)
SELECT
    customer_id,
    customer_acct_num
FROM source