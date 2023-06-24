ALTER TABLE admbd.horario ADD FOREIGN KEY (key_profesor) 
REFERENCES profesores (id_profesor);