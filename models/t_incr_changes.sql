{{
    config(
        materialized='incremental',
        unique_key='empno'
    )
}}
select * from {{ source('s1', 'emp') }}

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where d_upd_Date > (select max(d_upd_Date) from {{ this }}) 
{% endif %}