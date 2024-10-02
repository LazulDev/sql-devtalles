SELECT * FROM users;

SELECT
	name,
	-- SUBSTRING(name, 0, 5),
	-- POSITION( ' ' IN name ),
	SUBSTRING(name, 0, POSITION(' ' IN name)) as first_name,
	SUBSTRING(name, POSITION(' ' IN name) + 1, LENGTH(name)) as last_name
FROM
	users;
	
UPDATE
	users
SET
	first_name = SUBSTRING(name, 0, POSITION(' ' IN name)),
	last_name = SUBSTRING(name, POSITION(' ' IN name) + 1, LENGTH(name));
	