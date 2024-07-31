-- models/raw/raw_customers.sql

{{ config(
    materialized='view',
    schema='public'
) }}

select * from raw.customers