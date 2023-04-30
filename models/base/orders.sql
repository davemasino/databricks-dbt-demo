{{ config(materialized='table', file_format='delta') }}  

with orders as (  
    select *  
    from {{ ref('stg_orders') }}  
)  
  
select *  
from orders  
