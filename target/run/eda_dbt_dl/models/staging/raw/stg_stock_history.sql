

      create or replace transient table PC_DBT_DB.dbt_DNewUITest_staging.stg_stock_history  as
      (with source as (

    select * from economy_data_atlas.economy.usindssp2020
), 

renamed as (

    select 

        "Company" as company,
        "Company Name" as company_name,
        "Company Ticker" as company_symbol,
        "Stock Exchange" as stock_exchange,
        "Stock Exchange Name" as stock_exchange_name,
        "Indicator" as indicator,
        "Indicator Name" as indicator_name,
        "Units" as units,
        "Scale" as scale, 
        "Frequency" as frequency, 
        "Date" as stock_date,
        "Value" as stock_value,
        'Eda.Stock History' as data_source_name 

    from source 

) 

select * from renamed
      );
    