{{
    config(
        materialized='table',
        transient=false
    )
}}
select customer_id,concat(first_name,'_',last_name) as full_name from dev_Db.bronze.customers