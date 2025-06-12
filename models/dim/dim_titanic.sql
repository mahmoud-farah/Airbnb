-- models/dim/dim_titanic.sql

SELECT
  PassengerId,
  Survived,
  Pclass,
  Name,
  Sex,
  Age,
  SibSp,
  Parch,
  Ticket,
  Fare,
  Cabin,
  Embarked
FROM {{ source('bronze', 'titanic') }}
