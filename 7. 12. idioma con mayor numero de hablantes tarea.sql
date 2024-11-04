-- ¿Cual es el idioma con mayor número de hablantes de Europa?

SELECT * FROM country a
INNER JOIN countrylanguage b ON a.code = b.countrycode
WHERE continent = 5;

-- Numero de hablantes
SELECT a.population*b.percentage AS numHablantes, b.language FROM country a
INNER JOIN countrylanguage b ON a.code = b.countrycode
WHERE continent = 5;

SELECT SUM(numHablantes), language FROM
(
SELECT (a.population * b.percentage) AS numHablantes, b.language FROM country a
INNER JOIN countrylanguage b ON a.code = b.countrycode
WHERE continent = 5
) as hablantes
GROUP BY language
ORDER BY sum DESC;