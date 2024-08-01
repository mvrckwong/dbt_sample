{{ config(
    materialized='view'
) }}

-- Get the customer data from the raw schema
SELECT
    customer_id::INT
    ,customer_acct_num::VARCHAR
    -- ,first_name::VARCHAR
    -- ,last_name::VARCHAR
    -- ,customer_address::VARCHAR
    -- ,customer_city::VARCHAR
    -- ,customer_state_province::VARCHAR
    -- ,customer_postal_code::INT
    -- ,customer_country::VARCHAR
    -- ,birthdate::DATE
    -- ,marital_status::VARCHAR
    -- ,yearly_income::VARCHAR
    -- ,gender::VARCHAR
    -- ,education::VARCHAR
    -- --,member_card::VARCHAR AS member_card_type
    -- ,occupation::VARCHAR
    -- --,CAST(homeowner AS BOOLEAN) AS is_homeowner
FROM 
    stg.stg_dim_customers