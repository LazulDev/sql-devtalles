-- Quiero que me muestren el país con más ciudades
-- Campos: total de ciudades y el nombre del pais
-- usar INNER JOIN
SELECT COUNT(*) as TotalCiudades, b.name from city a 

INNER JOIN country b ON a.countrycode = b.code
GROUP BY b.name
ORDER BY TotalCiudades DESC
LIMIT 1;