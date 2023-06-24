ALTER TABLE admbd.horario ADD FOREIGN KEY (key_materia) 
REFERENCES materias (id_materia);