with lineitem as (    
    select *    
    from {{ ref('stg_lineitem') }}    
)    
    
select *    
from lineitem    
