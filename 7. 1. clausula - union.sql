-- Empecemos por dos queries
SELECT
	*
FROM
	continent
WHERE
	name LIKE '%America%';

SELECT
	*
FROM
	continent
WHERE
	code in(3, 5);


/* 
 * Podemos unir el resultado de ambos select en uno solo usando 
 * la cláusula UNION
 */
SELECT
	*
FROM
	continent
WHERE
	name LIKE '%America%'
UNION
SELECT
	*
FROM
	continent
WHERE
	code in(3, 5);

-- Ha tener en cuenta: el tipo de las columnas ha de ser el mismo
-- Ejemplos

SELECT
	code,
	name,
	'123'
FROM
	continent
WHERE
	name LIKE '%America%'
UNION
SELECT
	code,
	name,
	'otra cosa'
FROM
	continent
WHERE
	code in(3, 5);

-- Funciona porque las columnas son de tipo number, string y string
SELECT
	code,
	name,
	123
FROM
	continent
WHERE
	name LIKE '%America%'
UNION
SELECT
	code,
	name,
	'otra cosa'
FROM
	continent
WHERE
	code in(3, 5);

-- No funciona porque el tipo de la 3a columna no concuerda