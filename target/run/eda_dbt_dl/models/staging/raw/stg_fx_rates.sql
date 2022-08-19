

      create or replace transient table PC_DBT_DB.dbt_DNewUITest_staging.stg_fx_rates  as
      (with source as (
 
    select * from economy_data_atlas.economy.exratescc2018
 
), 
 
renamed as (
 
select 
 
    "Currency" as currency,
    "Currency Unit" as currency_unit,
    "Frequency" as frequency,
    "Date" as exchange_date,
    "Value" as exchange_value,
    "Indicator" as indicator,
    "Indicator Name" as indicator_name,
    'Eda.FX Rates' as data_source_name
 
from source 
 
) 
 
select * from renamed
      );
    