{{ config(materialized='table', file_format='delta') }}  

with nation as (  
    select *  
    from {{ ref('stg_nation') }}  
)  
  
select *  
from nation  
