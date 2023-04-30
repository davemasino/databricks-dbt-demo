{{ config(materialized='table') }}  
  
with nation as (  
    select  
        nationkey,  
        name,  
        regionkey,  
        comment  
    from {{ source('tpch', 'nation') }}  
)  
  
select *  
from nation  
