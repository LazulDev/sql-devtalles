-- select con los códigos del contienente con los que vamso a actualizar la columna continent de country
SELECT a.name, a.continent, (SELECT "code" FROM continent b WHERE "name" = a.continent) FROM country a;

UPDATE country a
SET continent = ( SELECT "code" FROM continent b WHERE "name" = a.continent );

-- vemos que en la columna continent ahora aparece el código en lugar del nombre
SELECT * FROM country;