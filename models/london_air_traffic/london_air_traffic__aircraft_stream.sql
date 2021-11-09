with aircraft_stream_2019 as (

    select * from {{ source('london_air_traffic', 'aircraft_stream') }}
    WHERE DATE(timestamp) >= "2019-01-01"

),

final as (
    select * from aircraft_stream_2019 
    )

select * from final