select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from PC_DBT_DB.dbt_DNewUITest_prod.int_stock_history_major_currency
where stock_date is null



      
    ) dbt_internal_test