CREATE TABLE admbd.profesores(
    id_profesor VARCHAR(15) NOT NULL,
    key_titulo INT
    key_especialidad INT
    PRIMARY KEY(id_profesor))
ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE = utf8_general_ci;