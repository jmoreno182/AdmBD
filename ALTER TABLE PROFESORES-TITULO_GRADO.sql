ALTER TABLE admbd.profesores ADD FOREIGN KEY (key_titulo) 
REFERENCES titulo_grado (id_titulo_grado);