with region as (    
    select    
        r_regionkey,    
        r_name,    
        r_comment    
    from {{ source('tpch', 'region') }}    
)    
    
select *    
from region  
