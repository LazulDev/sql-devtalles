-- Para la query siguiente queremos que la infomacion del lenguaje
-- se obtenga de la tabl lenguage
SELECT DISTINCT a.language, c."name" FROM countrylanguage a
INNER JOIN country b ON b.code = a.countrycode
INNER JOIN continent c ON b.continent = c.code
WHERE isofficial IS TRUE
ORDER BY a.language;

-- vemos lo que hay en la tabla language
SELECT * FROM language;

-- añadimos el inner join y sustituimos la 1a columna

SELECT DISTINCT d.name AS language, c."name" FROM countrylanguage a
INNER JOIN country b ON b.code = a.countrycode
INNER JOIN continent c ON b.continent = c.code
INNER JOIN language d ON a.languagecode = d.code
WHERE isofficial IS TRUE
ORDER BY language;
