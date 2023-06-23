CREATE TABLE admbd.pnf(
    id_pnf INT AUTO_INCREMENT NOT NULL,
    pnf VARCHAR(255) NOT NULL,
    desc_pnf VARCHAR(255) NOT NULL,
    PRIMARY KEY(id_pnf))
ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE = utf8_general_ci;

