{{ config(materialized='table') }}  
  
SELECT  
    custkey,  
    name,  
    address,  
    nationkey,  
    phone,  
    acctbal,  
    mktsegment,  
    comment  
FROM  
    {{ source('tpch', 'customer') }}  
