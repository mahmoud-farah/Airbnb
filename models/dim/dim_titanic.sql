{{config(materialized='table', file_format='parquet', location_root='/Volumes/dev/bronze/test_volume/titanic.parquet')}}
SELECT *
FROM {{ source('datalake', 'titanic') }}  