
  create or replace  view ECONOMY_DATA_ENRICHED.dbt_schema_prod.int_fx_rates 
  
   as (
    
 
select * from ECONOMY_DATA_ENRICHED.dbt_schema_staging.stg_fx_rates 
 where indicator_name = 'Close' 
   and frequency = 'D' 
   and exchange_date > '2016-01-01'
  );
