ALTER TABLE admbd.horario ADD FOREIGN KEY (key_espacios) 
REFERENCES espacios (id_espacio);