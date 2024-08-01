{{ config(
    materialized='table'
) }}

-- Get the customer data from the raw schema
WITH source AS (
    SELECT
        date::DATE AS calendar_date
        ,EXTRACT(YEAR FROM date) AS calendar_year
        ,EXTRACT(QUARTER FROM date) AS calendar_quarter
        ,EXTRACT(MONTH FROM date) AS calendar_month
        ,TO_CHAR(date, 'Month') AS month_name
        ,EXTRACT(DAY FROM date) AS day_of_month
        ,EXTRACT(DOW FROM date) + 1 AS day_of_week
        ,TO_CHAR(date, 'Day') AS day_name
        ,EXTRACT(WEEK FROM date) AS week_of_year
    FROM 
        raw.calendar
)

SELECT 
    *
FROM 
    source
ORDER BY 
    calendar_date ASC