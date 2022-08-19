select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from PC_DBT_DB.dbt_DNewUITest_prod.int_fx_rates
where indicator_name is null



      
    ) dbt_internal_test