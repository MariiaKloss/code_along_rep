with

    source as (select * from {{ source("snowflake_sd", "customer") }}),

    renamed as (
        select
            c_custkey as customer_key,  -- Number
            c_name as customer_name,  -- Varchar
            c_acctbal as account_balance,  -- Number
            c_address as customer_address,  -- Varchar
            c_nationkey as customer_nationkey,  -- Number
            c_phone as customer_phone,  -- Varchar
            c_mktsegment as customer_segment  -- Varchar

        from source

    )

select *
from renamed
