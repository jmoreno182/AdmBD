ALTER TABLE admbd.materia_profesor ADD FOREIGN KEY (key_materia) 
REFERENCES materias (id_materia);