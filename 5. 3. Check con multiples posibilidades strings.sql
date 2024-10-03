SELECT
    *
FROM
    country;

SELECT DISTINCT continent FROM country;
-- copiamos los continentes existentes para usarlos en la siguiente query

ALTER TABLE country ADD CHECK(continent IN('Asia',
'South America',
'North America',
'Oceania',
'Antarctica',
'Africa',
'Europe'));