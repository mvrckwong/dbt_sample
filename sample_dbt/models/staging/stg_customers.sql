with source as (
    select * from {{ ref('raw_customers') }}
)
select
    customer_id,
    customer_acct_num
from source