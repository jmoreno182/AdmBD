CREATE TABLE admbd.maya_curricular(
    id_maya INT AUTO_INCREMENT NOT NULL,
    maya_curricular VARCHAR(100) NOT NULL,
    fech_creacion datetime NOT NULL DEFAULT current_timestamp(),
    key_pnf INT NOT NULL,
    PRIMARY KEY(id_maya))
ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE = utf8_general_ci;