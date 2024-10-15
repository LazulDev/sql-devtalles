SELECT * FROM country;

SELECT DISTINCT continent FROM country ORDER BY continent;

CREATE TABLE continent (code SERIAL NOT NULL, name text NOT NULL);

ALTER TABLE continent
ADD PRIMARY KEY (code);

INSERT INTO continent (name)
SELECT DISTINCT continent FROM country ORDER BY continent;

select * from continent;

