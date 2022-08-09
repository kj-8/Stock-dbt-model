
  create or replace  view ECONOMY_DATA_ENRICHED.dbt_schema.my_second_dbt_model 
  
   as (
    -- Use the `ref` function to select from other models

select *
from ECONOMY_DATA_ENRICHED.dbt_schema.my_first_dbt_model
where id = 1
  );
