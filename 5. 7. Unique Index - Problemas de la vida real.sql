-- Recomendación de Fernando: crear indices para las columnas
-- sobre las cuales creamos que se vayan a efectuar busquedas de forma frecuente
-- ANTES de que la base de datos crezca. Así prevenimos que la creación de
-- este tome mucho tiempo

SELECT name, countrycode, district, population FROM city;

-- 1. Indice por nombre, codigo de pais y distrito
CREATE UNIQUE INDEX "unique_name_countrycode_district" ON city(name, countrycode, district); -- La creación falla

SELECT name, countrycode, district, population FROM city WHERE name = 'Jinzhou' AND countrycode = 'CHN' AND district = 'Liaoning' AND population = 95761;

UPDATE city
SET name = 'Old Jinzhou'
WHERE name = 'Jinzhou' AND countrycode = 'CHN' AND district = 'Liaoning' AND population = 95761; -- Actualizamos registro problematico

SELECT name, countrycode, district, population FROM city WHERE name = 'Jinzhou' AND countrycode = 'CHN' AND district = 'Liaoning';

CREATE UNIQUE INDEX "unique_name_countrycode_district" ON city(name, countrycode, district); -- Creación OK

-- 2. Creación de indice por distrito
CREATE INDEX "index_district" ON city(district);
