CREATE TABLE admbd.materia_profesor(
    id_materia_profesor INT AUTO_INCREMENT NOT NULL,
    key_profesor INT NOT NULL,
    key_materia INT NOT NULL,
    key_periodo_academico INT NOT NULL,
    PRIMARY KEY(id_materia_profesor))
ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE = utf8_general_ci;