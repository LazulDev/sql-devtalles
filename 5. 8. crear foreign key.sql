-- crear claves foraneas
ALTER TABLE city
	ADD CONSTRAINT fk_countrycode
	FOREIGN KEY ( countrycode ) -- de la tabla city
	REFERENCES country( code ); -- tabla country campo code

-- Al ejecutar la query tenemos un error:
-- falta Afganistan en la tabla country
SELECT * FROM country WHERE code = 'AFG';

-- Tenemos 2 posibles soluciones
-- 1 borrar las ciudades de Afganistan o
SELECT * FROM city WHERE countrycode = 'AFG';
-- 2 añadir el pais
INSERT INTO country
		values('AFG', 'Afghanistan', 'Asia', 'Southern Asia', 652860, 1919, 40000000, 62, 69000000, NULL, 'Afghanistan', 'Totalitarian', NULL, NULL, 'AF');

ALTER TABLE city
	ADD CONSTRAINT fk_countrycode
	FOREIGN KEY ( countrycode )
	REFERENCES country( code );