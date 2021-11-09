with my_project_test as (

    select * from {{ source('dbt_source_test', 'test_table') }}

),

final as (
    select * from my_project_test 
    )

select * from final