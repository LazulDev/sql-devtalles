SELECT
    COUNT(*) as times,
    SUBSTRING(email, POSITION('@' IN email) + 1, LENGTH(email)) AS domain
FROM
    users
GROUP BY
    SUBSTRING(email, POSITION('@' IN email) + 1, LENGTH(email))
HAVING
    COUNT(*) > 1
ORDER BY
	SUBSTRING(email, POSITION('@' IN email) + 1, LENGTH(email));