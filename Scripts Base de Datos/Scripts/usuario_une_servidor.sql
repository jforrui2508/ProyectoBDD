create table usuario_une_servidor(
    id_usuarioUne int,
    id_servidorUnido int,
    fecha_une date,
    primary key(id_usuarioUne, id_servidorUnido),
    foreign key (id_usuarioUne) references usuarios (id_usuario),
    foreign key (id_servidorUnido) references servidor (id_servidor)
);
