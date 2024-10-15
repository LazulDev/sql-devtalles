ALTER TABLE countrylanguage
	ADD CONSTRAINT fk_countrycode
	FOREIGN KEY ( countrycode )
	REFERENCES country( code );
	