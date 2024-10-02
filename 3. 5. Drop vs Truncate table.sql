create table nice_people (name varchar(10) UNIQUE);

-- DROP: borra la tabla
drop table nice_people;

create table nice_people (name varchar(10) UNIQUE);

insert into nice_people VALUES('Isma'), ('Eva');
select * from nice_people;

-- TRUNCATE: Borrar todos los datos de una tabla
truncate table nice_people;