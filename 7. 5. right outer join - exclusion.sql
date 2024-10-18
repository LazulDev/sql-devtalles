-- RIGHT OUTER JOIN con exclusión de los registros coincidentes


-- listado de todos los continentes que no tienen registros en la tabla country

SELECT
	b.*
FROM
	country a
	RIGHT JOIN continent b ON b.code = a.continent
WHERE
	a.code IS NULL
ORDER BY
	b.code;