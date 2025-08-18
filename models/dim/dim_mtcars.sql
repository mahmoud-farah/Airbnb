-- models/dim/dim_mtcars.sql
{{config(materialized='table', file_format='parquet', location_root='/Volumes/dev/bronze/test_volume/mtcars.parquet')}}
SELECT *
FROM {{ source('datalake', 'mtcars') }}  