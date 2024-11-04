-- Numero de paises por continente
SELECT count(a.*) as numCountries, b.name FROM country a
INNER JOIN continent b ON a.continent = b.code
GROUP BY b.name
ORDER BY count(*) ASC;

-- Ahora queremos que se muestren tambien los continentes que no tienes paises asociados
-- Dividimos el problema en partes:
-- 1. Primero sacamos un listado con los continentes que no tienen pais


SELECT count(a.*) as numCountries, b.name FROM country a
RIGHT JOIN continent b ON a.continent = b.code
WHERE a.continent is NULL
GROUP BY b.name
ORDER BY count(*) ASC;

-- 2. los unimos con la query que no sacaba en número de paises por continente

SELECT count(a.*) as numCountries, b.name FROM country a
INNER JOIN continent b ON a.continent = b.code
GROUP BY b.name
UNION
SELECT count(a.*) as numCountries, b.name FROM country a
RIGHT JOIN continent b ON a.continent = b.code
WHERE a.continent is NULL
GROUP BY b.name
-- Los queremos ordenar. count(*) fallá
--ORDER BY count(a.*) ASC;
-- usamos el alias de la columna
ORDER BY numCountries ASC;