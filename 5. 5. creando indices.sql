-- CONSIDERACIONES GENERALES
--
-- crear un índice puede tomar un tiempo si la tabla con tiene muchos registros
-- los índices ocupan un espacio en la BBDD

select * from country; -- Antes del índice: 85 ms

-- indice para la columna name, que será único porque no hay dos paises con el mismo nombre
CREATE UNIQUE INDEX "unique_country_name" ON country (name);

select * from country where continent = 'Europe'; -- Después del índice: 64 ms

select * from country; -- Antes del índice: 58 ms

-- Esta vez no será único porque hay más de un pais en un mismo continente
CREATE INDEX "country_contienent" ON country (name);

select * from country where continent = 'Europe'; -- Después del índice: 36 ms, la mitad del tiempo original
