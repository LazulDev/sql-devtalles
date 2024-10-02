-- número de registros en una tabla
select COUNT(*) from users;

-- minimo de seguidores que alguien tiene
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
	