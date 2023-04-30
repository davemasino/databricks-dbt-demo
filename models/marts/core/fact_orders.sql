{{ config(materialized='table', file_format='delta') }}  

select
    o_orderkey,
    o_custkey,
    o_totalprice,
    o_orderdate
from
  {{ ref('orders') }}
