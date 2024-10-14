{{
    config(
        materialized='table',
        tags=["bronze"]
    )
}}

select * 
from read_files('{{var("input_path")}}/iata_data/airport_codes.json')
