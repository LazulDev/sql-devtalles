-- queremos saber cuales son las personas que tienen 4 followers (que es el mínimo de followers) y cuales son las que tienen el maximo de 4999

SELECT
    COUNT(*) as total_users,
    MIN(followers) as min_followers,
    MAX(followers) as max_followers,
    -- con decimales
    AVG(followers) as mean_followers,
    -- redondeado
    ROUND( AVG( followers ) ) as rounded_mean_followers,
    -- manual
    SUM(followers) / COUNT(*) as manual_mean_followers
from
    users;
    
SELECT
    first_name,
    last_name,
    followers
from
    users
WHERE followers = 4 OR followers = 4999;

-- ahora queremos saber cuantos tienen 4 followers y cuantos 4999

SELECT
    count(*),
    followers
from
    users
WHERE followers = 4 OR followers = 4999
GROUP BY followers;

-- otro ejercicio para ver la potencia de group by
SELECT
    count(*),
    followers
from
    users
WHERE followers BETWEEN 4950 AND 4999
GROUP BY followers;