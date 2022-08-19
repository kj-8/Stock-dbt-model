
  create or replace  view PC_DBT_DB.dbt_DNewUITest_prod.int_fx_rates 
  
   as (
    
 
select * from PC_DBT_DB.dbt_DNewUITest_staging.stg_fx_rates 
 where indicator_name = 'Close' 
   and frequency = 'D' 
   and exchange_date > '2016-01-01'
  );
