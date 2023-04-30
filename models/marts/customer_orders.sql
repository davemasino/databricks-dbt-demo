{{ config(materialized='table', file_format='delta') }}  

select
  {{ dbt_utils.star(from=ref('orders'), except=['o_orderkey', 'o_custkey']) }},
  {{ dbt_utils.star(from=ref('customer'), except=['c_custkey', 'c_nationkey']) }},
  {{ dbt_utils.star(from=ref('nation'), except=['n_nationkey', 'n_regionkey']) }}
from
  {{ ref('orders') }} as o
  inner join {{ ref('customer') }} as c on o.o_custkey = c.c_custkey
  inner join {{ ref('nation') }} as n on c.c_nationkey = n.n_nationkey
