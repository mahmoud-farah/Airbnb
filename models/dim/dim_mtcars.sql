-- models/dim/dim_mtcars.sql

SELECT
  model,
  mpg,
  cyl,
  disp,
  hp,
  drat,
  wt,
  qsec,
  vs,
  am,
  gear,
  carb
FROM {{ source('bronze', 'mtcars') }}
