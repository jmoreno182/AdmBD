CREATE TABLE admbd.usuario(
    id_usuario INT AUTO_INCREMENT NOT NULL,
    key_sede INT NOT NULL,
    PRIMARY KEY(id_usuario))
ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE = utf8_general_ci;