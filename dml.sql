 /* Facultad */
INSERT INTO facultad VALUES (1, 'Informática');
INSERT INTO facultad VALUES (2, 'Matemáticas');
INSERT INTO facultad VALUES (3, 'Economía y Empresa');
INSERT INTO facultad VALUES (4, 'Educación');
INSERT INTO facultad VALUES (5, 'Agronomía');
INSERT INTO facultad VALUES (6, 'Química y Física');
INSERT INTO facultad VALUES (7, 'Filología');
INSERT INTO facultad VALUES (8, 'Derecho');
INSERT INTO facultad VALUES (9, 'Biología y Geología');

 /* Género */
INSERT INTO genero VALUES (1, 'Femenino');
INSERT INTO genero VALUES (2, 'Masculino');

 /* Ciudad */
INSERT INTO ciudad VALUES (1, 'Almería');
INSERT INTO ciudad VALUES (2, 'Madrid');
INSERT INTO ciudad VALUES (3, 'Barcelona');

 /* Tipo Telefono */
INSERT INTO tipo_telefono VALUES (1, 'Móvil');
INSERT INTO tipo_telefono VALUES (2, 'Fijo');
INSERT INTO tipo_telefono VALUES (3, 'Trabajo');

 /* Alumno */
INSERT INTO alumno VALUES (1, '89542419S', 'Angeli', 'Corredor', 'Rodriguez', '1992/08/08', 1, 'C/ Mercurio', 1);
INSERT INTO alumno VALUES (2, '26902806M', 'Salvador', 'Sánchez', 'Pérez', '1991/03/28', 2, 'C/ Real del barrio alto', 1);
INSERT INTO alumno VALUES (3, '17105885A', 'Pedro', 'Heller', 'Pagac', '2000/10/05', 2, 'C/ Estrella fugaz', 1);
INSERT INTO alumno VALUES (4, '04233869Y', 'José', 'Koss', 'Bayer', '1998/01/28', 2, 'C/ Júpiter', 1);
INSERT INTO alumno VALUES (5, '97258166K', 'Ismael', 'Strosin', 'Turcotte', '1999/05/24', 2, 'C/ Neptuno', 1);
INSERT INTO alumno VALUES (6, '82842571K', 'Ramón', 'Herzog', 'Tremblay', '1996/11/21', 2, 'C/ Urano', 1);
INSERT INTO alumno VALUES (7, '46900725E', 'Daniel', 'Herman', 'Pacocha', '1997/04/26', 2, 'C/ Andarax', 1);
INSERT INTO alumno VALUES (8, '11578526G', 'Inma', 'Lakin', 'Yundt', '1998/09/01', 1, 'C/ Picos de Europa', 1);
INSERT INTO alumno VALUES (9, '79089577Y', 'Juan', 'Gutiérrez', 'López', '1998/01/01', 2, 'C/ Los pinos', 1);
INSERT INTO alumno VALUES (10, '41491230N', 'Antonio', 'Domínguez', 'Guerrero', '1999/02/11', 2, 'C/ Cabo de Gata', 1);
INSERT INTO alumno VALUES (11, '64753215G', 'Irene', 'Hernández', 'Martínez', '1996/03/12', 1, 'C/ Zapillo', 1);
INSERT INTO alumno VALUES (12, '85135690V', 'Sonia', 'Gea', 'Ruiz', '1995/04/13', 1, 'C/ Mercurio', 1);

/* Profesor */
INSERT INTO profesor VALUES (NULL, '11105554G', 'Zoe', 'Ramirez', 'Gea', '1979/08/19', 1, 'C/ Marte', 1, 1);
INSERT INTO profesor VALUES (NULL, '38223286T', 'David', 'Schmidt', 'Fisher', '1978/01/19', 2, 'C/ Venus', 1, 2);
INSERT INTO profesor VALUES (NULL, '79503962T', 'Cristina', 'Lemke', 'Rutherford', '1977/08/21', 1, 'C/ Saturno', 1, 3);
INSERT INTO profesor VALUES (NULL, '61142000L', 'Esther', 'Spencer', 'Lakin', '1977/05/19', 1, 'C/ Plutón', 1, 4);
INSERT INTO profesor VALUES (NULL, '85366986W', 'Carmen', 'Streich', 'Hirthe', '1971-04-29', 1, 'C/ Almanzora', 1, 4);
INSERT INTO profesor VALUES (NULL, '73571384L', 'Alfredo', 'Stiedemann', 'Morissette', '1980/02/01', 2, 'C/ Guadalquivir', 1, 6);
INSERT INTO profesor VALUES (NULL, '82937751G', 'Manolo', 'Hamill', 'Kozey', '1977/01/02', 2, 'C/ Duero', 1, 1);
INSERT INTO profesor VALUES (NULL, '80502866Z', 'Alejandro', 'Kohler', 'Schoen', '1980/03/14', 2, 'C/ Tajo', 1, 2);
INSERT INTO profesor VALUES (NULL, '10485008K', 'Antonio', 'Fahey', 'Considine', '1982/03/18', 2, 'C/ Sierra de los Filabres', 1, 3);
INSERT INTO profesor VALUES (NULL, '85869555K', 'Guillermo', 'Ruecker', 'Upton', '1973/05/05', 2, 'C/ Sierra de Gádor', 1, 4);
INSERT INTO profesor VALUES (NULL, '04326833G', 'Micaela', 'Monahan', 'Murray', '1976/02/25', 2, 'C/ Veleta', '662765413',  1, 5);
INSERT INTO profesor VALUES (NULL, '79221403L', 'Francesca', 'Schowalter', 'Muller', '1980/10/31', 2, 'C/ Quinto pino',  1, 6);
INSERT INTO profesor VALUES (NULL, '13175769N', 'Pepe', 'Sánchez', 'Ruiz', '1980/10/16', 2, 'C/ Quinto pino',  1, 1);
INSERT INTO profesor VALUES (NULL, '98816696W', 'Juan', 'Guerrero', 'Martínez', '1980/11/21', 2, 'C/ Quinto pino',  1, 1);
INSERT INTO profesor VALUES (NULL, '77194445M', 'María', 'Domínguez', 'Hernández', '1980/12/13', 1, 'C/ Quinto pino',  1, 2);

 /* Contacto */
INSERT INTO contacto VALUES (1, '+34', '618253876', 1, NULL, 1 );
INSERT INTO contacto VALUES (2, '+34', '950254837', 2, NULL, 2 );
INSERT INTO contacto VALUES (3, '+34', NULL, 1, NULL, 3 );
INSERT INTO contacto VALUES (4, '+34', '628349590', 1, NULL, 4 );
INSERT INTO contacto VALUES (5, '+34', NULL, 1, NULL, 5 );
INSERT INTO contacto VALUES (6, '+34', '626351429', 1, NULL, 6 );
INSERT INTO contacto VALUES (7, '+34', '679837625', 1, NULL, 7 );
INSERT INTO contacto VALUES (8, '+34', '678652431', 1, NULL, 8 );
INSERT INTO contacto VALUES (9, '+34', '678652431', 1, NULL, 9 );
INSERT INTO contacto VALUES (10, '+34', '626652498', 1, NULL, 10 );
INSERT INTO contacto VALUES (11, '+34', '628452384', 1, NULL, 11 );
INSERT INTO contacto VALUES (12, '+34', '678812017', 1, NULL, 12 );
INSERT INTO contacto VALUES (13, '+34', '618223876', 1, 1, NULL );
INSERT INTO contacto VALUES (14, '+34', '678516294', 1, 2, NULL );
INSERT INTO contacto VALUES (15, '+34', '669162534', 1, 3, NULL);
INSERT INTO contacto VALUES (16, '+34', NULL, 1, 4, NULL);
INSERT INTO contacto VALUES (17, '+34', NULL, 1, 5, NULL);
INSERT INTO contacto VALUES (18, '+34', '950896725', 2, 6, NULL);
INSERT INTO contacto VALUES (19, '+34', '950263514', 2, 7, NULL);
INSERT INTO contacto VALUES (20, '+34', '668726354', 1, 8, NULL);
INSERT INTO contacto VALUES (21, '+34', NULL, 1, 9, NULL);
INSERT INTO contacto VALUES (22, '+34', NULL, 1, 10, NULL);
INSERT INTO contacto VALUES (23, '+34', NULL, 1, 11, NULL);
INSERT INTO contacto VALUES (24, '+34', NULL, 1, 12, NULL);
INSERT INTO contacto VALUES (25, '+34', NULL, 1, 13, NULL);
INSERT INTO contacto VALUES (26, '+34', NULL, 1, 14, NULL);
INSERT INTO contacto VALUES (27, '+34', NULL, 1, 15, NULL);

/* Grado */
INSERT INTO grado VALUES (1, 'Grado en Ingeniería Agrícola (Plan 2015)');
INSERT INTO grado VALUES (2, 'Grado en Ingeniería Eléctrica (Plan 2014)');
INSERT INTO grado VALUES (3, 'Grado en Ingeniería Electrónica Industrial (Plan 2010)');
INSERT INTO grado VALUES (4, 'Grado en Ingeniería Informática (Plan 2015)');
INSERT INTO grado VALUES (5, 'Grado en Ingeniería Mecánica (Plan 2010)');
INSERT INTO grado VALUES (6, 'Grado en Ingeniería Química Industrial (Plan 2010)');
INSERT INTO grado VALUES (7, 'Grado en Biotecnología (Plan 2015)');
INSERT INTO grado VALUES (8, 'Grado en Ciencias Ambientales (Plan 2009)');
INSERT INTO grado VALUES (9, 'Grado en Matemáticas (Plan 2010)');
INSERT INTO grado VALUES (10, 'Grado en Química (Plan 2009)');

 /* Tipo Asignatura */
INSERT INTO tipo_asignatura VALUES (1, 'Básica');
INSERT INTO tipo_asignatura VALUES (2, 'Obligatoria');
INSERT INTO tipo_asignatura VALUES (3, 'Electiva');
 
/* Asignatura */
INSERT INTO asignatura VALUES (1, 'Álgebra lineal y matemática discreta', 6, 1, 4, 1, NULL);
INSERT INTO asignatura VALUES (2, 'Cálculo', 6, 1, 4, 1, 1);
INSERT INTO asignatura VALUES (3, 'Física para informática', 6, 1, 4, 2, 10);
INSERT INTO asignatura VALUES (4, 'Introducción a la programación', 6, 1, 4, 2, 3);
INSERT INTO asignatura VALUES (5, 'Organización y gestión de empresas', 6, 1, 4, 2, 7);
INSERT INTO asignatura VALUES (6, 'Estadística', 6, 1, 4, 3, 5);
INSERT INTO asignatura VALUES (7, 'Estructura y tecnología de computadores', 6, 1, 4, 3, 8);
INSERT INTO asignatura VALUES (8, 'Fundamentos de electrónica', 6, 1, 4, 3, 9);
INSERT INTO asignatura VALUES (9, 'Lógica y algorítmica', 6, 1, 4, 1, 11);
INSERT INTO asignatura VALUES (10, 'Metodología de la programación', 6, 1, 4, 2, 12);
INSERT INTO asignatura VALUES (11, 'Arquitectura de Computadores', 6, 1, 4, 3, 13);
INSERT INTO asignatura VALUES (12, 'Estructura de Datos y Algoritmos I', 6, 2, 4, 1, 14);
INSERT INTO asignatura VALUES (13, 'Ingeniería del Software', 6, 2, 4, 2, 15);
INSERT INTO asignatura VALUES (14, 'Sistemas Inteligentes', 6, 2, 4, 3, NULL);
INSERT INTO asignatura VALUES (15, 'Sistemas Operativos', 6, 2, 4, 1, 2);
INSERT INTO asignatura VALUES (16, 'Bases de Datos', 6, 1, 4, 2, 4);
INSERT INTO asignatura VALUES (17, 'Estructura de Datos y Algoritmos II', 6, 2, 4, 3, 6);
INSERT INTO asignatura VALUES (18, 'Fundamentos de Redes de Computadores', 6, 2, 4, 1, 14);
INSERT INTO asignatura VALUES (19, 'Planificación y Gestión de Proyectos Informáticos', 6, 2, 4, 2, 7);
INSERT INTO asignatura VALUES (20, 'Programación de Servicios Software', 6, 2, 4, 3, 8);
INSERT INTO asignatura VALUES (21, 'Desarrollo de interfaces de usuario', 6, 2, 4, 1, 9);
INSERT INTO asignatura VALUES (22, 'Ingeniería de Requisitos', 6, 3, 4, 2, 5);
INSERT INTO asignatura VALUES (23, 'Integración de las Tecnologías de la Información en las Organizaciones', 6, 3, 4, 3, 11);
INSERT INTO asignatura VALUES (24, 'Modelado y Diseño del Software 1', 6, 3, 4, 1, 12);
INSERT INTO asignatura VALUES (25, 'Multiprocesadores', 6, 3, 4, 2, 13);
INSERT INTO asignatura VALUES (26, 'Seguridad y cumplimiento normativo', 6, 3, 4, 3, 15);
INSERT INTO asignatura VALUES (27, 'Sistema de Información para las Organizaciones', 6, 3, 4, 1, NULL);
INSERT INTO asignatura VALUES (28, 'Tecnologías web', 6, 3, 4, 2, 1);
INSERT INTO asignatura VALUES (29, 'Teoría de códigos y criptografía', 6, 3, 4, 3, 3);
INSERT INTO asignatura VALUES (30, 'Administración de bases de datos', 6, 3, 4, 1, 4);
INSERT INTO asignatura VALUES (31, 'Herramientas y Métodos de Ingeniería del Software', 6, 3, 4, 2, 5);
INSERT INTO asignatura VALUES (32, 'Informática industrial y robótica', 6, 3, 4, 3, 6);
INSERT INTO asignatura VALUES (33, 'Ingeniería de Sistemas de Información', 6, 3, 4, 1, 7);
INSERT INTO asignatura VALUES (34, 'Modelado y Diseño del Software 2', 6, 3, 4, 2, 8);
INSERT INTO asignatura VALUES (35, 'Negocio Electrónico', 6, 3, 4, 3, 9);
INSERT INTO asignatura VALUES (36, 'Periféricos e interfaces', 6, 3, 4, 1, 10);
INSERT INTO asignatura VALUES (37, 'Sistemas de tiempo real', 6, 3, 4, 2, 11);
INSERT INTO asignatura VALUES (38, 'Tecnologías de acceso a red', 6, 3, 4, 3, 12);
INSERT INTO asignatura VALUES (39, 'Tratamiento digital de imágenes', 6, 3, 4, 1, 13);
INSERT INTO asignatura VALUES (40, 'Administración de redes y sistemas operativos', 6, 3, 4, 2, 14);
INSERT INTO asignatura VALUES (41, 'Almacenes de Datos', 6, 3, 4, 3, 15);
INSERT INTO asignatura VALUES (42, 'Fiabilidad y Gestión de Riesgos', 6, 3, 4, 1, NULL);
INSERT INTO asignatura VALUES (43, 'Líneas de Productos Software', 6, 3, 4, 2, 1);
INSERT INTO asignatura VALUES (44, 'Procesos de Ingeniería del Software 1', 6, 3, 4, 3, 2);
INSERT INTO asignatura VALUES (45, 'Tecnologías multimedia', 6, 3, 4, 1, 3);
INSERT INTO asignatura VALUES (46, 'Análisis y planificación de las TI', 6, 3, 4, 2, 4);
INSERT INTO asignatura VALUES (47, 'Desarrollo Rápido de Aplicaciones', 6, 3, 4, 3, 5);
INSERT INTO asignatura VALUES (48, 'Gestión de la Calidad y de la Innovación Tecnológica', 6, 3, 4, 1, 6);
INSERT INTO asignatura VALUES (49, 'Inteligencia del Negocio', 6, 3, 4, 2, 7);
INSERT INTO asignatura VALUES (50, 'Procesos de Ingeniería del Software 2', 6, 3, 4, 3, 8);
INSERT INTO asignatura VALUES (51, 'Seguridad Informática', 6, 3, 4, 1, 9);
INSERT INTO asignatura VALUES (52, 'Biologia celular', 6, 1, 7, 2, 10);
INSERT INTO asignatura VALUES (53, 'Física', 6, 1, 7, 3, 11);
INSERT INTO asignatura VALUES (54, 'Matemáticas I', 6, 1, 7, 1, 12);
INSERT INTO asignatura VALUES (55, 'Química general', 6, 1, 7, 2, 13);
INSERT INTO asignatura VALUES (56, 'Química orgánica', 6, 1, 7, 3, 14);
INSERT INTO asignatura VALUES (57, 'Biología vegetal y animal', 6, 1, 7, 1, 15);
INSERT INTO asignatura VALUES (58, 'Bioquímica', 6, 1, 7, 2, NULL);
INSERT INTO asignatura VALUES (59, 'Genética', 6, 1, 7, 3, 1);
INSERT INTO asignatura VALUES (60, 'Matemáticas II', 6, 1, 7, 1, 2);
INSERT INTO asignatura VALUES (61, 'Microbiología', 6, 1, 7, 2, 3);
INSERT INTO asignatura VALUES (62, 'Botánica agrícola', 6, 2, 7, 3, 4);
INSERT INTO asignatura VALUES (63, 'Fisiología vegetal', 6, 2, 7, 1, 5);
INSERT INTO asignatura VALUES (64, 'Genética molecular', 6, 2, 7, 2, 6);
INSERT INTO asignatura VALUES (65, 'Ingeniería bioquímica', 6, 2, 7, 3, 7);
INSERT INTO asignatura VALUES (66, 'Termodinámica y cinética química aplicada', 6, 2, 7, 1, 8);
INSERT INTO asignatura VALUES (67, 'Biorreactores', 6, 2, 7, 2, 9);
INSERT INTO asignatura VALUES (68, 'Biotecnología microbiana', 6, 2, 7, 3, 10);
INSERT INTO asignatura VALUES (69, 'Ingeniería genética', 6, 2, 7, 1, 11);
INSERT INTO asignatura VALUES (70, 'Inmunología', 6, 2, 7, 2, 12);
INSERT INTO asignatura VALUES (71, 'Virología', 6, 2, 7, 3, 13);
INSERT INTO asignatura VALUES (72, 'Bases moleculares del desarrollo vegetal', 4.5, 2, 7, 1, 14);
INSERT INTO asignatura VALUES (73, 'Fisiología animal', 4.5, 2, 7, 2, 15);
INSERT INTO asignatura VALUES (74, 'Metabolismo y biosíntesis de biomoléculas', 6, 2, 7, 3, NULL);
INSERT INTO asignatura VALUES (75, 'Operaciones de separación', 6, 2, 7, 1, 2);
INSERT INTO asignatura VALUES (76, 'Patología molecular de plantas', 4.5, 2, 7, 2, 3);
INSERT INTO asignatura VALUES (77, 'Técnicas instrumentales básicas', 4.5, 2, 7, 3, 4);
INSERT INTO asignatura VALUES (78, 'Bioinformática', 4.5, 2, 7, 1, 5);
INSERT INTO asignatura VALUES (79, 'Biotecnología de los productos hortofrutículas', 4.5, 2, 7, 2, 6);
INSERT INTO asignatura VALUES (80, 'Biotecnología vegetal', 6, 2, 7, 3, 7);
INSERT INTO asignatura VALUES (81, 'Genómica y proteómica', 4.5, 2, 7, 1, 8);
INSERT INTO asignatura VALUES (82, 'Procesos biotecnológicos', 6, 2, 7, 2, 9);
INSERT INTO asignatura VALUES (83, 'Técnicas instrumentales avanzadas', 4.5, 2, 7, 3, 10);

/* Curso */
INSERT INTO curso VALUES (1, 2014, 2015);
INSERT INTO curso VALUES (2, 2015, 2016);
INSERT INTO curso VALUES (3, 2016, 2017);
INSERT INTO curso VALUES (4, 2017, 2018);

/* Matrícula Alumno */
INSERT INTO matricula VALUES (1, 1, 1, 1);
INSERT INTO matricula VALUES (2, 1, 2, 1);
INSERT INTO matricula VALUES (3, 1, 3, 1);
INSERT INTO matricula VALUES (4, 1, 4, 1);
INSERT INTO matricula VALUES (5, 1, 5, 1);
INSERT INTO matricula VALUES (6, 1, 6, 1);
INSERT INTO matricula VALUES (7, 1, 7, 1);
INSERT INTO matricula VALUES (8, 1, 8, 1);
INSERT INTO matricula VALUES (9, 1, 9, 1);
INSERT INTO matricula VALUES (10, 1, 10, 1);
INSERT INTO matricula VALUES (11, 1, 1, 2);
INSERT INTO matricula VALUES (12, 1, 2, 2);
INSERT INTO matricula VALUES (13, 1, 3, 2);
INSERT INTO matricula VALUES (14, 1, 1, 3);
INSERT INTO matricula VALUES (15, 1, 2, 3);
INSERT INTO matricula VALUES (16, 1, 3, 3);
INSERT INTO matricula VALUES (17, 1, 1, 4);
INSERT INTO matricula VALUES (18, 1, 2, 4);
INSERT INTO matricula VALUES (19, 1, 3, 4);
INSERT INTO matricula VALUES (20, 2, 1, 1);
INSERT INTO matricula VALUES (21, 2, 2, 1);
INSERT INTO matricula VALUES (22, 2, 3, 1);
INSERT INTO matricula VALUES (23, 4, 1, 1);
INSERT INTO matricula VALUES (24, 4, 2, 1);
INSERT INTO matricula VALUES (25, 4, 3, 1);
INSERT INTO matricula VALUES (26, 4, 1, 2);
INSERT INTO matricula VALUES (27, 4, 2, 2);
INSERT INTO matricula VALUES (28, 4, 3, 2);
INSERT INTO matricula VALUES (29, 4, 4, 2);
INSERT INTO matricula VALUES (30, 4, 5, 2);
INSERT INTO matricula VALUES (31, 4, 6, 2);
INSERT INTO matricula VALUES (32, 4, 7, 2);
INSERT INTO matricula VALUES (33, 4, 8, 2);
INSERT INTO matricula VALUES (34, 4, 9, 2);
INSERT INTO matricula VALUES (35, 4, 10, 2);
INSERT INTO matricula VALUES (36, 4, 63, 3);