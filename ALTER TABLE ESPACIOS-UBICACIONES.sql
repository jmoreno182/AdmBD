ALTER TABLE admbd.espacios ADD FOREIGN KEY (key_ubicaciones) 
REFERENCES ubicaciones (id_ubicaciones);