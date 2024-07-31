{{ config(materialized='table') }}

select * from source_schema.customers