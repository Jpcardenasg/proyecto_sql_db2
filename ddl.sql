CREATE TABLE region(
    id_region INT AUTO_INCREMENT PRIMARY KEY,
    region VARCHAR(50) NOT NULL
);

CREATE TABLE ciudad(
    id_ciudad INT AUTO_INCREMENT PRIMARY KEY,
    ciudad VARCHAR(50) NOT NULL,
    id_region INT,
    CONSTRAINT fk_region_ciudad FOREIGN KEY(id_region) REFERENCES region(id_region)
);

CREATE TABLE facultad(
    id_facultad INT AUTO_INCREMENT PRIMARY KEY,
    facultad VARCHAR(50) NOT NULL
);

CREATE TABLE genero(
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    genero VARCHAR(50) NOT NULL
);

CREATE TABLE tipo_telefono(
    id_tipo INT AUTO_INCREMENT PRIMARY KEY,
    tipo_telefono VARCHAR(50) NOT NULL
);

CREATE TABLE grado(
    id_grado INT AUTO_INCREMENT PRIMARY KEY,
    grado VARCHAR(100) NOT NULL
);

CREATE TABLE curso(
    id_curso INT PRIMARY KEY,
    anyo_inicio YEAR(4),
    anyo_fin YEAR(4)
);

CREATE TABLE alumno(
    id_alumno INT AUTO_INCREMENT PRIMARY KEY,
    nif VARCHAR(9),
    nombre VARCHAR(25),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    fecha_nacimiento DATE,
    id_genero INT,
    direccion VARCHAR(50),
    id_ciudad INT,
    CONSTRAINT fk_genero_alumno FOREIGN KEY(id_genero) REFERENCES genero(id_genero),
    CONSTRAINT fk_ciudad_alumno FOREIGN KEY(id_ciudad) REFERENCES ciudad(id_ciudad)
);

CREATE TABLE profesor(
    id_profesor INT AUTO_INCREMENT PRIMARY KEY,
    nif VARCHAR(9),
    nombre VARCHAR(25),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    fecha_nacimiento DATE,
    id_genero INT,
    direccion VARCHAR(50),
    id_ciudad INT,
    id_facultad INT,
    CONSTRAINT fk_genero_profesor FOREIGN KEY(id_genero) REFERENCES genero(id_genero),
    CONSTRAINT fk_ciudad_profesor FOREIGN KEY(id_ciudad) REFERENCES ciudad(id_ciudad),
    CONSTRAINT fk_facultad_profesor FOREIGN KEY(id_facultad) REFERENCES facultad(id_facultad)
);

CREATE TABLE contacto(
    id_contacto INT AUTO_INCREMENT PRIMARY KEY,
    prefijo VARCHAR(25),
    numero VARCHAR(50),
    id_tipo_telefono INT,
    id_profesor INT,
    id_alumno INT,
    CONSTRAINT fk_contacto_profesor FOREIGN KEY(id_profesor) REFERENCES profesor(id_profesor),
    CONSTRAINT fk_contacto_alumno FOREIGN KEY(id_alumno) REFERENCES alumno(id_alumno),
    CONSTRAINT fk_contacto_tipo FOREIGN KEY(id_tipo_telefono) REFERENCES tipo_telefono(id_tipo)
);

CREATE TABLE tipo_asignatura(
    id_tipo INT AUTO_INCREMENT PRIMARY KEY,
    tipo_asignatura VARCHAR(50)
);

CREATE TABLE asignatura(
    id_asignatura INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    creditos FLOAT,
    id_tipo_asignatura INT,
    id_grado INT,
    cuatrimestre TINYINT(3),
    id_profesor INT,
    CONSTRAINT fk_asignatura_tipo FOREIGN KEY(id_tipo_asignatura) REFERENCES tipo_asignatura(id_tipo),
    CONSTRAINT fk_asignatura_grado FOREIGN KEY(id_grado) REFERENCES grado(id_grado),
    CONSTRAINT fk_asignatura_profesor FOREIGN KEY(id_profesor) REFERENCES profesor(id_profesor)
);

CREATE TABLE matricula(
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_alumno INT,
    id_asignatura INT,
    id_curso INT,
    CONSTRAINT fk_matricula_alumno FOREIGN KEY(id_alumno) REFERENCES alumno(id_alumno),
    CONSTRAINT fk_matricula_asignatura FOREIGN KEY(id_asignatura) REFERENCES asignatura(id_asignatura),
    CONSTRAINT fk_matricula_curso FOREIGN KEY(id_curso) REFERENCES curso(id_curso)
);