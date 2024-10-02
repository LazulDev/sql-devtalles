select * from country;

ALTER TABLE country
ADD PRIMARY KEY (code); --añadir la llave primaria da error

select * from country where code = 'NLD' AND code2 = 'NA'; -- Hay dos registros el que tiene code2 = 'NA' sobra

DELETE FROM country WHERE code = 'NLD' AND code2 = 'NA'; -- Lo borramos

select * from country where code = 'NLD'; -- Ahora solo hay uno, podemos añadir la llave primaria

ALTER TABLE country
ADD PRIMARY KEY (code);