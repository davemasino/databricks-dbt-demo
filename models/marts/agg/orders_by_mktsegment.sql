{{ config(materialized='table', file_format='delta') }}  

select   
    c_mktsegment,  
    count(*) as order_count,  
    sum(o_totalprice) as total_price  
from   
    {{ ref("customer_orders") }}  
group by   
    c_mktsegment 