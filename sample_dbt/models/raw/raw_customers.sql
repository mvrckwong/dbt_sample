-- models/raw/raw_customers.sql

{{ config(
    materialized='table',
    schema='public'
) }}

select * from customers