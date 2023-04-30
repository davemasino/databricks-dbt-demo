{{ config(materialized='table') }}  
  
with customer as (  
    select  
        c_custkey,  
        c_name,  
        c_address,  
        c_nationkey,  
        c_phone,  
        c_acctbal,  
        c_mktsegment,  
        c_comment  
    from {{ source('tpch', 'customer') }}  
)  
  
select *  
from customer  
