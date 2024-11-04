-- Quiero saber los idiomas oficiales que se hablan por continente
-- countrylanguage.language, country
SELECT DISTINCT a.language, c."name" FROM countrylanguage a
INNER JOIN country b ON b.code = a.countrycode
-- countrylanguage.language, continent.name
INNER JOIN continent c ON b.continent = c.code
WHERE isofficial IS TRUE
ORDER BY a.language;

-- ¿Cuantos idiomas oficiales se hablan por continente?
-- Usamos la query anterior como subquery

SELECT COUNT(*) as numIdiomasOficiales, continent FROM 
(

SELECT DISTINCT a.language, c."name" as continent FROM countrylanguage a
INNER JOIN country b ON b.code = a.countrycode
-- countrylanguage.language, continent.name
INNER JOIN continent c ON b.continent = c.code
WHERE isofficial IS TRUE
ORDER BY a.language
) as continent
GROUP by continent
ORDER BY numIdiomasOficiales DESC;