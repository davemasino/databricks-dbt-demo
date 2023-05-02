with orders as (  
    select  
        o_orderkey,
        {{ dbt_utils.generate_surrogate_key(['o_orderkey']) }} as o_orderid,
        o_custkey,  
        o_orderstatus,  
        o_totalprice,  
        o_orderdate,  
        o_orderpriority,  
        o_clerk,  
        o_shippriority,  
        o_comment  
    from {{ source('tpch', 'orders') }}  
)  
  
select *  
from orders  
