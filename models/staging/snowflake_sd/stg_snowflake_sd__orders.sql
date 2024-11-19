with 

source as (

    select * from {{ source('snowflake_sd', 'orders') }}

),

renamed as (

    select
        o_orderkey as order_key,
        o_custkey as customer_key,
        o_orderstatus as order_status,
        o_totalprice as order_price,
        o_orderdate as order_date,
        o_orderpriority as order_priority,
        o_clerk as order_clerk,
        o_shippriority as order_ship_priority

    from source

)

select * from renamed
