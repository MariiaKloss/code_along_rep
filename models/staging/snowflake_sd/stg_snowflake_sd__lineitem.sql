with 

source as (

    select * from {{ source('snowflake_sd', 'lineitem') }}

),

renamed as (

    select
        l_orderkey as order_key,
        l_partkey,
        l_suppkey,
        l_linenumber,
        l_quantity,
        l_extendedprice,
        l_discount,
        l_tax,
        l_returnflag,
        l_linestatus,
        l_shipdate,
        l_commitdate,
        l_receiptdate,
        l_shipinstruct,
        l_shipmode,
        l_comment

    from source

)

select * from renamed
