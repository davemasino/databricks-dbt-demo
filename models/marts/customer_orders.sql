{{ config(materialized='table', file_format='delta') }}  

select o.*, n.n_name, c.c_name, c.c_comment
from {{ ref('orders') }} as o
inner join {{ ref('customer') }} as c on o.o_custkey = c.c_custkey
inner join {{ ref('nation') }} as n on c.c_nationkey = n.n_nationkey
