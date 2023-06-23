CREATE TABLE admbd.espacios(
    id_espacio INT AUTO_INCREMENT NOT NULL,
    key_sede INT NOT NULL,
    key_ubicaciones INT NOT NULL,
    PRIMARY KEY(id_espacio))
ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE = utf8_general_ci;