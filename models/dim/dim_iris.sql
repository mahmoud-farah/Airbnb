-- models/dim/dim_iris.sql

SELECT
  `sepal.length`,
  `sepal.width`,
  `petal.length`,
  `petal.width`,
  variety
FROM {{ source('bronze', 'iris') }}
