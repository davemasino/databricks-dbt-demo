with lineitem as (    
    select    
        l_orderkey,    
        l_partkey,    
        l_suppkey,    
        l_linenumber,    
        l_quantity,    
        l_extendedprice,    
        l_discount,    
        l_tax,    
        l_returnflag,    
        l_linestatus,    
        l_shipdate,    
        l_commitdate,    
        l_receiptdate,    
        l_shipinstruct,    
        l_shipmode,    
        l_comment    
    from {{ source('tpch', 'lineitem') }}    
)    
    
select *    
from lineitem  
