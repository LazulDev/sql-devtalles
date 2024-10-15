select continent from country;

ALTER TABLE country
ALTER COLUMN continent TYPE int4 -- si ejecutamos esta sola linea dará un error que nos sugerirá usar:
USING continent::integer; -- ::integer es un casteo a ese tipo de datos


-- Alternativa en caso de que el casteo no funcione
-- crear una nueva columna, colocar el dato, borrar la original y renombra la nueva

ALTER TABLE country
	ADD CONSTRAINT fk_continent
	FOREIGN KEY ( continent )
	REFERENCES continent( code );

-- borramos la tabla backup, no la necesitamos
DROP TABLE country_bkp;
