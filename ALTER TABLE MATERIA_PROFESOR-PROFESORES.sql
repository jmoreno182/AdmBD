ALTER TABLE admbd.materia_profesor ADD FOREIGN KEY (key_profesor) 
REFERENCES profesores (id_profesor);