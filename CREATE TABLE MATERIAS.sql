CREATE TABLE admbd.materias(
    id_materia INT AUTO_INCREMENT NOT NULL,
    cod_materia VARCHAR(10) NOT NULL,
    key_trayecto INT NOT NULL,
    key_maya INT NOT NULL,
    PRIMARY KEY(id_materia))
ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE = utf8_general_ci;