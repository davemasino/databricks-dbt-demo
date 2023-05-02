select
  {{ dbt_utils.star(from=ref('customer'), except=['c_nationkey']) }},
  {{ dbt_utils.star(from=ref('nation'), except=['n_nationkey', 'n_regionkey']) }}
from
  {{ ref('customer') }} as c
  inner join {{ ref('nation') }} as n on c.c_nationkey = n.n_nationkey