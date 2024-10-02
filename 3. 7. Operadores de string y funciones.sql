
SELECT
    id,
    name,
    -- A mayuscula: funcion UPPER
    UPPER(name) as upper_name,
    -- A minuscula: funcion LOWER
    LOWER(name) as lower_name,
    -- logitud de un campo
    LENGTH(name) as longitud,
    -- usamos valor string como constante
    '20' as constante,
    -- usamos valor numerico como constante
    30 as otra_constante,    
    -- operacion matematica
    2 * 17 as operacion,
    -- concatenacion con funcion concat
    CONCAT('*', id, '_', name,'*') as barcode_concat,
    -- concatenacion con or
    '*' || id || '_' || name || '*' as barcode_or
FROM users;
--