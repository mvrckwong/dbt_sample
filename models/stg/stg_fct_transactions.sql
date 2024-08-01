{{ config(
    materialized='table'
) }}

-- Get the transaction data from the raw schema
WITH source AS (
    SELECT 
        transaction_date::DATE
        ,stock_date::DATE
        ,product_id::INT
        ,customer_id::INT
        ,store_id::INT
        ,quantity::INT
    FROM 
        raw.overall_transactions
)

SELECT 
    *
FROM 
    source
ORDER BY 
    transaction_date ASC;
