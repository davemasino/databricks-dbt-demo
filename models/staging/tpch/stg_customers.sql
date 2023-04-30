{{ config(materialized='table') }}  
  
with customer as (  
    select  
        custkey,  
        name,  
        address,  
        nationkey,  
        phone,  
        acctbal,  
        mktsegment,  
        comment  
    from {{ source('tpch', 'customer') }}  
)  
  
select *  
from customer  
