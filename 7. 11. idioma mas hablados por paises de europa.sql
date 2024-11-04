 -- ¿Cual es el idioma (y codigo de idioma) mas hablado por diferentes paises de Europa?
 

-- Paises de Europa

SELECT * FROM country
INNER JOIN continent ON country.continent = continent.code
WHERE continent.name LIKE 'Europe';

-- Idiomas de paises de Europa

SELECT count(language) AS total, languagecode FROM country
INNER JOIN continent ON country.continent = continent.code
INNER JOIN countrylanguage ON countrylanguage.countrycode = country.code
WHERE continent.name LIKE 'Europe' AND countrylanguage.isofficial IS TRUE
GROUP BY languagecode
ORDER BY total DESC;

-- Añadimos el nombre del idioma usando la tabla countrylanguage
SELECT count(language) AS total, languagecode, countrylanguage."language" FROM country
INNER JOIN continent ON country.continent = continent.code
INNER JOIN countrylanguage ON countrylanguage.countrycode = country.code
WHERE continent.name LIKE 'Europe' AND countrylanguage.isofficial IS TRUE
GROUP BY languagecode, countrylanguage."language"
ORDER BY total DESC
LIMIT 1;

-- VERSION SIMPLIFICADA. Sabemos que Europa es 5

SELECT COUNT(*), b.languagecode ,b.language FROM country a
INNER JOIN countrylanguage b ON a.code = b.countrycode
WHERE continent = 5 AND b.isofficial IS TRUE
GROUP BY  b.languagecode, b.language
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Listado de todos los países cuyo idiom a oficial es el más hablado de Europa 
-- (no hacer subquery, tomar el código anterior)

SELECT a.name FROM country a
INNER JOIN countrylanguage b ON b.countrycode = a.code
WHERE b.languagecode = 135 AND b.isofficial IS TRUE AND a.continent = 5;
