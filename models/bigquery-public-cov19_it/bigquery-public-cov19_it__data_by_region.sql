with source_data_by_region as (

    select * from {{ source('bigquery-public-data', 'data_by_region') }}

),

final as (
    select * from source_data_by_region 
    )

select * from final