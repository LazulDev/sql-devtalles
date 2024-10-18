-- seleccionar el nombre del continente para cada pais
SELECT
	count.name AS country,
	cont.name AS continent
FROM
	country count,
	continent cont
WHERE
	count.continent = cont.code
ORDER BY
	cont.name,
	count.name;
