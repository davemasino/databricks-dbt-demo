with customer as (  
    select  
        c_custkey, 
        {{ dbt_utils.generate_surrogate_key(['c_custkey']) }} as c_custid,
        c_name,  
        c_address,  
        c_nationkey,  
        c_phone,  
        c_acctbal,  
        c_mktsegment,  
        c_comment  
    from {{ source('tpch', 'customer') }}  
)  
  
select *  
from customer  
