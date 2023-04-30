{{ config(materialized='table', file_format='delta') }}  

with customer as (  
    select *  
    from {{ ref('stg_customer') }}  
)  
  
select *  
from customer  
