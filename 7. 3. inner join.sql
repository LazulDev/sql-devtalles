-- Query anterior
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

/*
 * Alternativa: INNER JOIN
 * Selecciona los registros que están tanto en A como en B para la condición dada
 */
SELECT
	a.name AS country,
	b. name AS continent
FROM
	country a
	INNER JOIN continent b ON a.continent = b.code
ORDER BY
	a.name ASC;