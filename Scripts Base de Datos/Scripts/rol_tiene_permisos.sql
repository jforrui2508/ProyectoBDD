create table rol_tiene_permiso(
	id_rol int,
	num_permiso int,
	foreign key (id_rol) references rol (id_rol),
	foreign key (num_permiso) references permiso (num_permiso)
)

INSERT INTO rol_tiene_permiso (id_rol, num_Permiso)
SELECT 
    r.id_rol,
    p.num_Permiso
FROM
    (
        SELECT 
            id_rol
        FROM
            rol
        ORDER BY
            RAND()
        LIMIT 500 -- Seleccionar 500 roles aleatorios
    ) AS r
CROSS JOIN
    (
        SELECT 
            num_Permiso
        FROM
            permiso
        ORDER BY
            RAND()
        LIMIT 1 -- Seleccionar un permiso aleatorio
    ) AS p;
