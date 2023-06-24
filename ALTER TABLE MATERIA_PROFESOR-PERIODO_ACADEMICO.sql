ALTER TABLE admbd.materia_profesor ADD FOREIGN KEY (key_periodo_academico) 
REFERENCES periodo_academico (id_periodo_academico);