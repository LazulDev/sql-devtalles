select
    *
from
    country;

-- queremos evitar que se puedan añadir superficies negativas
ALTER TABLE
    country
ADD
    CHECK(surfacearea >= 0);
    
-- de haber alguna superficie que no respetara el check el alter table fallaría