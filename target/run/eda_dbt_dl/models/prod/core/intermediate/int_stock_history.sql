

      create or replace transient table PC_DBT_DB.dbt_DNewUITest_prod.int_stock_history  as
      (with stock_history as (

    select * from PC_DBT_DB.dbt_DNewUITest_staging.stg_stock_history
        where indicator_name in ('Close', 'Open','High','Low', 'Volume', 'Change %') 

),

pivoted as (

    select 
        company_symbol, 
        company_name, 
        stock_exchange_name, 
        stock_date, 
        data_source_name,
        
  
    sum(
      
      case
      when indicator_name = 'Change %'
        then stock_value
      else 0
      end
    )
    
      
            as "Change %"
      
    
    ,
  
    sum(
      
      case
      when indicator_name = 'Close'
        then stock_value
      else 0
      end
    )
    
      
            as "Close"
      
    
    ,
  
    sum(
      
      case
      when indicator_name = 'Low'
        then stock_value
      else 0
      end
    )
    
      
            as "Low"
      
    
    ,
  
    sum(
      
      case
      when indicator_name = 'Open'
        then stock_value
      else 0
      end
    )
    
      
            as "Open"
      
    
    ,
  
    sum(
      
      case
      when indicator_name = 'High'
        then stock_value
      else 0
      end
    )
    
      
            as "High"
      
    
    ,
  
    sum(
      
      case
      when indicator_name = 'Volume'
        then stock_value
      else 0
      end
    )
    
      
            as "Volume"
      
    
    
  

    
    from stock_history
    group by company_symbol, company_name, stock_exchange_name, stock_date, data_source_name

)

select * from pivoted
      );
    