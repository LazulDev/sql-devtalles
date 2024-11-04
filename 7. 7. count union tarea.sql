

-- Count Union - Tarea
-- Total |  Continent
-- 5	  | Antarctica
-- 28	  | Oceania
-- 46	  | Europe
-- 51	  | America
-- 51	  | Asia
-- 58	  | Africa

-- Queremos el número de paises que hay en todos los continentes y los subcontinentes de america unificados en uno solo

-- Todos menos America
SELECT count(a.*) as Total, b.name as continentName FROM country a
INNER JOIN continent b ON a.continent = b.code AND b."name" NOT LIKE '%America%'
GROUP BY continentName;

-- Los que continen America
SELECT count(*) as Total, 'America' as continentName FROM country a
INNER JOIN continent b ON a.continent = b.code AND b."name" LIKE '%America%'
GROUP BY continentName;

-- Unimos
(
SELECT count(a.*) as Total, b.name as continentName FROM country a
INNER JOIN continent b ON a.continent = b.code AND b."name" NOT LIKE '%America%'
GROUP BY continentName
)
UNION
(
SELECT count(*) as Total, 'America' as continentName FROM country a
INNER JOIN continent b ON a.continent = b.code AND b."name" LIKE '%America%'
GROUP BY continentName
)
ORDER BY Total ASC;
