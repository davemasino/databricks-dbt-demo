{{ config(materialized='table') }}  
  
with orders as (  
    select  
        orderkey,  
        custkey,  
        orderstatus,  
        totalprice,  
        orderdate,  
        orderpriority,  
        clerk,  
        shippriority,  
        comment  
    from {{ source('tpch', 'orders') }}  
)  
  
select *  
from orders  
