-- import raw_listings
WITH raw_titanic AS (
        SELECT * FROM {{ source('raw', 'titanic') }}
)
SELECT 
   *
FROM raw_titanic