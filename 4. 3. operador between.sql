SELECT
    first_name,
    last_name,
    followers
FROM
	users
WHERE
    followers > 4600 AND followers < 4650
ORDER BY followers ASC;

-- lo mismo pero con between
SELECT
    first_name,
    last_name,
    followers
FROM
	users
WHERE
    followers BETWEEN 4600 AND 4650
ORDER BY followers ASC;