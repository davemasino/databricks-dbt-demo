{{ config(materialized='table', file_format='delta') }}  

select   
    c.c_mktsegment,  
    count(*) as order_count,  
    sum(f.o_totalprice) as total_price  
from   
  {{ ref('fact_orders') }} as f
  inner join {{ ref('dim_customer') }} as c on f.o_custkey = c.c_custkey
group by   
    c_mktsegment 