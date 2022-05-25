create or replace view PC_DBT_DB.DBT_JVELAGA.STG_CUSTOMERS(
	CUSTOMER_ID,
	FIRST_NAME,
	LAST_NAME
) as (
    with customers as (
    
    select 
        id as customer_id,
        first_name,
        last_name

    from raw.jaffle_shop.customers
)

select * from customers
  );