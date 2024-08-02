{{ config(
    materialized='table',
    schema='prod'
) }}

-- Your SQL query to create the production table
SELECT
    customer_id::INT,
    customer_acct_num::VARCHAR
FROM 
    stg.stg_dim_customers
