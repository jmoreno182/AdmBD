ALTER TABLE admbd.profesores ADD FOREIGN KEY (key_especialidad) 
REFERENCES especialidad (id_especialidad);