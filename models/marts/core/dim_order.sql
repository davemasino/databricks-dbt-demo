select
   o_orderkey,
    o_orderstatus,
    o_orderpriority,
    o_clerk,
    o_shippriority,
    o_comment
from {{ ref("orders") }}