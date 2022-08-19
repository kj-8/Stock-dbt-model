select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    currency || exchange_date as unique_field,
    count(*) as n_records

from PC_DBT_DB.dbt_DNewUITest_prod.int_fx_rates
where currency || exchange_date is not null
group by currency || exchange_date
having count(*) > 1



      
    ) dbt_internal_test