CREATE TABLE admbd.horario(
    id_horario INT AUTO_INCREMENT NOT NULL,
    key_materia INT NOT NULL,
    key_espacios INT NOT NULL,
    key_profesor INT NOT NULL,
    hora_inicio time NOT NULL,
    hora_fin time NOT NULL,
    PRIMARY KEY(id_horario))
ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE = utf8_general_ci;