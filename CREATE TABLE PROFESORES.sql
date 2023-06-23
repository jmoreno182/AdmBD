CREATE TABLE admbd.profesores(
    id_profesor INT AUTO_INCREMENT NOT NULL,
    key_titulo INT NOT NUll,
    key_especialidad INT NOT NULL,
    PRIMARY KEY(id_profesor))
ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE = utf8_general_ci;