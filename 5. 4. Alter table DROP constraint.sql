-- listar las restricciones de la columna de una tabla

SELECT
    con.conname AS constraint_name,
    con.contype AS constraint_type,
    col.column_name
FROM
    information_schema.constraint_column_usage col
    JOIN pg_constraint con ON col.constraint_name = con.conname
WHERE
    col.table_name = 'country'
    AND col.column_name = 'continent';

-- Tipos de resitricciones 
-- p: Primary key
-- u: Unique
-- f: Foreign key
-- c: Check
-- x: Exclusion

ALTER TABLE
    country DROP CONSTRAINT country_continent_check;

ALTER TABLE
    country
ADD
    CHECK (
        continent IN(
            'Asia',
            'South America',
            'North America',
            'Oceania',
            'Antarctica',
            'Africa',
            'Europe',
            'Central America'
        )
    );


SELECT
    *
from
    country
where
    region = 'Central America';

-- Actualizamos el contiente
UPDATE
    country
SET
    continent = 'Central America'
WHERE
    region = 'Central America';

-- Comprobamos que el continente y la region son iguales
SELECT
    *
from
    country
where
    region = 'Central America';
