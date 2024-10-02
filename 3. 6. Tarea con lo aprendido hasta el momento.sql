

-- 1. Ver todos los registros
select * from users;

-- 2. Ver el registro cuyo id sea igual a 10

select * from users where id = 10;
-- 3. Quiero todos los registros que cuyo primer nombre sea Jim (engañosa)
select * from users where name LIKE 'Jim %';

-- 4. Todos los registros cuyo segundo nombre es Alexander
select * from users where name LIKE '% Alexander%';


-- 5. Cambiar el nombre del registro con id = 1, por tu nombre Ej:'Fernando Herrera'
update users
set name = 'Maria Sanchez'
where id = 1;

-- 6. Borrar el último registro de la tabla
select * from users
ORDER BY id DESC limit 1; --saco el id

delete from users where id = 3980; -- y borro su registro lo borro

-- forma pro
-- usar la función max para sacar el id mayor
select max(id) from users;

-- borrarlo por id pero usando el select anterior como subquery
delete from users where id = (select max(id) from users);

select * from users where id = (select max(id) from users);