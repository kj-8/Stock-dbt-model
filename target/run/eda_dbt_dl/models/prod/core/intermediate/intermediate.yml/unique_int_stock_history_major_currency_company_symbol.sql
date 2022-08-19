select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    company_symbol as unique_field,
    count(*) as n_records

from PC_DBT_DB.dbt_DNewUITest_prod.int_stock_history_major_currency
where company_symbol is not null
group by company_symbol
having count(*) > 1



      
    ) dbt_internal_test