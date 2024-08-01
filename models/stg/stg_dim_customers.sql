{{ config(
    materialized='table'
) }}

-- Get the customer data from the raw schema
WITH source AS (
    SELECT
        customer_id::int,
        customer_acct_num::varchar,
        first_name::varchar,
        last_name::varchar,
        customer_address::varchar,
        customer_city::varchar,
        customer_state_province::varchar,
        customer_postal_code::int,
        customer_country::varchar,
        birthdate::date,
        marital_status::varchar,
        yearly_income::varchar,
        gender::varchar,
        education::varchar,
        member_card::varchar AS member_card_type,
        occupation::varchar,
        homeowner::boolean AS is_homeowner
    FROM raw.customers
)

SELECT *
FROM source
ORDER BY customer_id ASC;