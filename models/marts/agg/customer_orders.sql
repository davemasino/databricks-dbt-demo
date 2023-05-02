select
  {{ dbt_utils.star(from=ref('fact_orders'), except=['o_orderkey', 'o_custkey']) }},
  {{ dbt_utils.star(from=ref('dim_customer'), except=['c_custkey']) }},
  {{ dbt_utils.star(from=ref('dim_order'), except=['o_orderkey']) }}
from
  {{ ref('fact_orders') }} as f
  inner join {{ ref('dim_customer') }} as c on f.o_custkey = c.c_custkey
  inner join {{ ref('dim_order') }} as o on f.o_orderkey = o.o_orderkey
  