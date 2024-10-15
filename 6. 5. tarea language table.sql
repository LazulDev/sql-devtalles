SELECT * FROM countrylanguage;

-- Tarea con countryLanguage

-- Crear la tabla de language

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS language_code_seq;


-- Table Definition
CREATE TABLE "public"."language" (
    "code" int4 NOT NULL DEFAULT 	nextval('language_code_seq'::regclass),
    "name" text NOT NULL,
    PRIMARY KEY ("code")
);

-- poblar la tabla language
SELECT DISTINCT language FROM countrylanguage ORDER BY language;

INSERT INTO
	public.language (name)
SELECT DISTINCT language FROM countrylanguage ORDER BY language;

-- Crear una columna en countrylanguage
ALTER TABLE countrylanguage
ADD COLUMN languagecode varchar(3);

SELECT a.language, a.languagecode FROM countrylanguage a;
SELECT b.code, b.name FROM "language" b;

SELECT b.code FROM countrylanguage a, language b WHERE a.language = b.name;


-- Actualizar countrylanguage - languagecode
UPDATE countrylanguage a -- table
SET languagecode = (SELECT code FROM language b WHERE b.name = a.language); -- column


-- Cambiar tipo de dato en countrylanguage - languagecode por int4
ALTER TABLE countrylanguage
ALTER COLUMN languagecode type int4
USING languagecode::integer;


-- Crear el foreign key y constraints de no nulo el language_code
ALTER TABLE countrylanguage
	ADD CONSTRAINT fk_language_code
	FOREIGN KEY (languagecode)
	REFERENCES language (code);

-- el no nulo lo ponemos con el editor visual

-- Revisar lo creado

SELECT COUNT(*) FROM countrylanguage; -- 983
SELECT COUNT(*) FROM countrylanguage a, language b WHERE b.name = a."language"; -- 983 ✅
