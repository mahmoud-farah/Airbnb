-- models/dim/dim_iris.sql
{{config(materialized='table', file_format='parquet', location_root='/Volumes/dev/bronze/test_volume/iris.parquet')}}

SELECT *
FROM {{ source('datalake', 'iris') }}  