{% snapshot t_scd_type_2 %}
    {{
        config(
            target_schema='silver_cloud',
            target_database='dev_Db',
            unique_key='tid',
            strategy='check',
            check_cols=['status'],
            invalidate_hard_deletes=True
        )
    }}

    select * from {{ source('s1', 't_tickets') }}
 {% endsnapshot %}