-- creacion de un tabla de respaldo antes de impactar la tabla "country"
CREATE TABLE "public"."country_bkp" (
    "code" bpchar(3) NOT NULL,
    "name" text NOT NULL,
    "continent" text NOT NULL CHECK ((continent = 'Asia'::text) OR (continent = 'South America'::text) OR (continent = 'North America'::text) OR (continent = 'Oceania'::text) OR (continent = 'Antarctica'::text) OR (continent = 'Africa'::text) OR (continent = 'Europe'::text) OR (continent = 'Central America'::text)),
    "region" text NOT NULL,
    "surfacearea" float4 NOT NULL CHECK (surfacearea >= (0)::double precision),
    "indepyear" int2,
    "population" int4 NOT NULL,
    "lifeexpectancy" float4,
    "gnp" numeric(10,2),
    "gnpold" numeric(10,2),
    "localname" text NOT NULL,
    "governmentform" text NOT NULL,
    "headofstate" text,
    "capital" int4,
    "code2" bpchar(2) NOT NULL,
    PRIMARY KEY ("code")
);

-- volcado de datos

INSERT INTO country_bkp
SELECT * FROM country;

SELECT * FROM country_bkp;

-- ahora podemos trabajar en country con la 
-- tranquilidad de saber que los datos están en country_bkp

-- en caso de que algo salga mal podemos hacer el volcado inverso country_bkp > country

-- EJERCICIO: Queremos que la columna continent de la tabla country
-- haga referencia al code del continente

-- primero tiramos la constrain de tipo check que hay en dicha columna

-- 1. sacar el nombre del constrain: intentar alterar la columna, da un error que lo devuelve
SELECT * FROM country;
UPDATE country
SET continent = '1'
WHERE continent = 'Africa';

-- 2. quitar check
ALTER TABLE country DROP CONSTRAINT country_continent_check;
