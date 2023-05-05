with partsupp as (    
    select    
        ps_partkey,    
        ps_suppkey,    
        ps_availqty,    
        ps_supplycost,    
        ps_comment    
    from {{ source('tpch', 'partsupp') }}    
)    
    
select *    
from partsupp  
