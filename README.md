# Database 2

Creación de la segunda base de datos del proyecto SQL

## **CONSULTAS**

1. Devuelve un listado con el primer apellido, segundo apellido y el nombre de todos los alumnos. El listado deberá estar ordenado alfabéticamente de menor a mayor por el primer apellido, segundo apellido y nombre.
```sql
SELECT a.apellido1 AS 'Primer Apellido',a.apellido2 AS 'Segundo Apellido', a.nombre AS 'Nombre'
FROM alumno AS a
ORDER BY a.apellido1, a.apellido2, a.nombre;

+-----------------+------------------+----------+
| Primer Apellido | Segundo Apellido | Nombre   |
+-----------------+------------------+----------+
| Corredor        | Rodriguez        | Angeli   |
| Domínguez       | Guerrero         | Antonio  |
| Gea             | Ruiz             | Sonia    |
| Gutiérrez       | López            | Juan     |
| Heller          | Pagac            | Pedro    |
| Herman          | Pacocha          | Daniel   |
| Hernández       | Martínez         | Irene    |
| Herzog          | Tremblay         | Ramón    |
| Koss            | Bayer            | José     |
| Lakin           | Yundt            | Inma     |
| Sánchez         | Pérez            | Salvador |
| Strosin         | Turcotte         | Ismael   |
+-----------------+------------------+----------+
```

2. Averigua el nombre y los dos apellidos de los alumnos que no han dado de alta su número de teléfono en la base de datos.
```sql
SELECT a.nombre 'Nombre', a.apellido1 'Primer Apellido', a.apellido2 'Segundo Apellido'
FROM alumno AS a
LEFT JOIN contacto AS c ON a.id_alumno = c.id_alumno
WHERE c.numero IS NULL;

+--------+-----------------+------------------+
| Nombre | Primer Apellido | Segundo Apellido |
+--------+-----------------+------------------+
| Pedro  | Heller          | Pagac            |
| Ismael | Strosin         | Turcotte         |
+--------+-----------------+------------------+
```

3. Devuelve el listado de los alumnos que nacieron en 1999.
```sql
SELECT a.nombre 'Nombre', a.apellido1 'Primer Apellido', a.apellido2 'Segundo Apellido', a.fecha_nacimiento 'Fecha de Nacimiento'
FROM alumno AS a
WHERE YEAR(fecha_nacimiento) = 1999;

+---------+-----------------+------------------+---------------------+
| Nombre  | Primer Apellido | Segundo Apellido | Fecha de Nacimiento |
+---------+-----------------+------------------+---------------------+
| Ismael  | Strosin         | Turcotte         | 1999-05-24          |
| Antonio | Domínguez       | Guerrero         | 1999-02-11          |
+---------+-----------------+------------------+---------------------+
```

4. Devuelve el listado de profesores que no han dado de alta su número de teléfono en la base de datos y además su nif termina en K.
```sql
SELECT p.nombre 'Nombre', p.apellido1 'Primer Apellido', p.nif 'Nro Identificación'
FROM profesor AS p
LEFT JOIN contacto AS c ON p.id_profesor = c.id_profesor
WHERE c.numero IS NULL AND p.nif LIKE '%K';

+-----------+-----------------+---------------------+
| Nombre    | Primer Apellido | Nro Identificación  |
+-----------+-----------------+---------------------+
| Antonio   | Fahey           | 10485008K           |
| Guillermo | Ruecker         | 85869555K           |
+-----------+-----------------+---------------------+
```

5. Devuelve el listado de las asignaturas que se imparten en el primer cuatrimestre, en el tercer curso del grado que tiene el identificador 7.
```sql
SELECT a.nombre AS 'Asignatura'
FROM asignatura AS a
JOIN matricula AS m ON a.id_asignatura = m.id_asignatura
JOIN curso AS c ON m.id_curso = c.id_curso
JOIN grado AS g ON a.id_grado = g.id_grado
WHERE a.cuatrimestre = 1 AND c.id_curso = 3 AND g.id_grado = 7;

+---------------------+
| Asignatura          |
+---------------------+
| Fisiología vegetal  |
+---------------------+
```

## **Consultas multitabla (composición interna)**

1. Devuelve un listado con los datos de todas las alumnas que se han matriculado alguna vez en el Grado en Ingeniería Informática (Plan 2015).
```sql
SELECT DISTINCT a.nombre 'Nombre', a.apellido1 'Apellido'
FROM alumno AS a
JOIN matricula AS m ON a.id_alumno = m.id_alumno
JOIN asignatura AS asi ON m.id_asignatura = asi.id_asignatura
JOIN grado AS g ON asi.id_grado = g.id_grado
WHERE a.id_genero = 1 AND g.grado LIKE 'Grado en Ingeniería Informática (Plan 2015)';

+--------+----------+
| Nombre | Apellido |
+--------+----------+
| Angeli | Corredor |
+--------+----------+
```

2. Devuelve un listado con todas las asignaturas ofertadas en el Grado en Ingeniería Informática (Plan 2015).
```sql
SELECT a.nombre
FROM asignatura AS a
JOIN grado AS g ON a.id_grado = g.id_grado
WHERE g.grado LIKE 'Grado en Ingeniería Informática (Plan 2015)';

+---------------------------------------------------------------------------+
| nombre                                                                    |
+---------------------------------------------------------------------------+
| Álgebra lineal y matemática discreta                                      |
| Cálculo                                                                   |
| Física para informática                                                   |
| Introducción a la programación                                            |
| Organización y gestión de empresas                                        |
| Estadística                                                               |
| Estructura y tecnología de computadores                                   |
| Fundamentos de electrónica                                                |
| Lógica y algorítmica                                                      |
| Metodología de la programación                                            |
| Arquitectura de Computadores                                              |
| Estructura de Datos y Algoritmos I                                        |
| Ingeniería del Software                                                   |
| Sistemas Inteligentes                                                     |
| Sistemas Operativos                                                       |
| Bases de Datos                                                            |
| Estructura de Datos y Algoritmos II                                       |
| Fundamentos de Redes de Computadores                                      |
| Planificación y Gestión de Proyectos Informáticos                         |
| Programación de Servicios Software                                        |
| Desarrollo de interfaces de usuario                                       |
| Ingeniería de Requisitos                                                  |
| Integración de las Tecnologías de la Información en las Organizaciones    |
| Modelado y Diseño del Software 1                                          |
| Multiprocesadores                                                         |
| Seguridad y cumplimiento normativo                                        |
| Sistema de Información para las Organizaciones                            |
| Tecnologías web                                                           |
| Teoría de códigos y criptografía                                          |
| Administración de bases de datos                                          |
| Herramientas y Métodos de Ingeniería del Software                         |
| Informática industrial y robótica                                         |
| Ingeniería de Sistemas de Información                                     |
| Modelado y Diseño del Software 2                                          |
| Negocio Electrónico                                                       |
| Periféricos e interfaces                                                  |
| Sistemas de tiempo real                                                   |
| Tecnologías de acceso a red                                               |
| Tratamiento digital de imágenes                                           |
| Administración de redes y sistemas operativos                             |
| Almacenes de Datos                                                        |
| Fiabilidad y Gestión de Riesgos                                           |
| Líneas de Productos Software                                              |
| Procesos de Ingeniería del Software 1                                     |
| Tecnologías multimedia                                                    |
| Análisis y planificación de las TI                                        |
| Desarrollo Rápido de Aplicaciones                                         |
| Gestión de la Calidad y de la Innovación Tecnológica                      |
| Inteligencia del Negocio                                                  |
| Procesos de Ingeniería del Software 2                                     |
| Seguridad Informática                                                     |
+---------------------------------------------------------------------------+
```
3. Devuelve un listado de los profesores junto con el nombre del departamento al que están vinculados. El listado debe devolver cuatro columnas, primer apellido, segundo apellido, nombre y nombre del departamento. El resultado estará ordenado alfabéticamente de menor a mayor por los apellidos y el nombre.
```sql
SELECT  p.apellido1 'Primer Apellido', p.apellido2 'Segundo Apellido', p.nombre 'Nombre', f.facultad 'Departamento'
FROM profesor as p
JOIN facultad as f ON p.id_facultad = f.id_facultad
ORDER BY p.apellido1, p.apellido2, p.nombre ASC;

+-----------------+------------------+-----------+---------------------+
| Primer Apellido | Segundo Apellido | Nombre    | Departamento        |
+-----------------+------------------+-----------+---------------------+
| Domínguez       | Hernández        | María     | Matemáticas         |
| Fahey           | Considine        | Antonio   | Economía y Empresa  |
| Guerrero        | Martínez         | Juan      | Informatica         |
| Hamill          | Kozey            | Manolo    | Informatica         |
| Kohler          | Schoen           | Alejandro | Matemáticas         |
| Lemke           | Rutherford       | Cristina  | Economía y Empresa  |
| Ramirez         | Gea              | Zoe       | Informatica         |
| Ruecker         | Upton            | Guillermo | Educación           |
| Sánchez         | Ruiz             | Pepe      | Informatica         |
| Schmidt         | Fisher           | David     | Matemáticas         |
| Schowalter      | Muller           | Francesca | Química y Física    |
| Spencer         | Lakin            | Esther    | Educación           |
| Stiedemann      | Morissette       | Alfredo   | Química y Física    |
| Streich         | Hirthe           | Carmen    | Educación           |
+-----------------+------------------+-----------+---------------------+
```
4. Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno con nif 26902806M.
```sql
SELECT a.nombre 'Nombre', asi.nombre 'Asigantura', c.anyo_inicio 'Año Inicio', c.anyo_fin 'Año Fin'
FROM alumno AS a
JOIN matricula AS m ON a.id_alumno = m.id_alumno
JOIN asignatura AS asi ON m.id_asignatura = asi.id_asignatura
JOIN curso AS c ON m.id_curso = c.id_curso
WHERE a.nif = '26902806M';

+----------+----------------------------------------+-------------+----------+
| Nombre   | Asigantura                             | Año Inicio  | Año Fin  |
+----------+----------------------------------------+-------------+----------+
| Salvador | Álgebra lineal y matemática discreta   |        2014 |     2015 |
| Salvador | Cálculo                                |        2014 |     2015 |
| Salvador | Física para informática                |        2014 |     2015 |
+----------+----------------------------------------+-------------+----------+
```
5. Devuelve un listado con el nombre de todos los departamentos que tienen profesores que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).
```sql
SELECT DISTINCT f.facultad 'Facultad'
FROM facultad AS f
JOIN profesor AS p ON f.id_facultad = p.id_facultad
JOIN asignatura AS a ON p.id_profesor = a.id_profesor
JOIN grado AS g ON a.id_grado = g.id_grado
WHERE g.grado LIKE 'Grado en Ingeniería Informática (Plan 2015)';

+---------------------+
| Facultad            |
+---------------------+
| Informatica         |
| Educación           |
| Economía y Empresa  |
| Matemáticas         |
| Química y Física    |
+---------------------+
```
6. Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.
```sql
SELECT a.nombre 'Nombre', a.apellido1 'Apellido'
FROM alumno AS a
JOIN matricula AS m ON a.id_alumno = m.id_alumno
JOIN curso AS c ON m.id_curso = c.id_curso
JOIN asignatura AS asi ON m.id_asignatura = asi.id_asignatura
WHERE c.anyo_inicio = 2018 AND c.anyo_fin = 2019;
```


## **Consultas multitabla (composición externa)**
Resuelva todas las consultas utilizando las cláusulas LEFT JOIN y RIGHT JOIN.

1. Devuelve un listado con los nombres de todos los profesores y los departamentos que tienen vinculados. El listado también debe mostrar aquellos profesores que no tienen ningún departamento asociado. El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor. El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y el nombre.
```sql
SELECT DISTINCT p.nombre 'Nombre', p.apellido1 'Primer Apellido', p.apellido2 'Segundo Apellido', f.facultad 'Facultad'
FROM profesor AS p
LEFT JOIN facultad AS f ON p.id_facultad = f.id_facultad
ORDER BY f.facultad,  p.apellido1, p.apellido2, p.nombre;

+-----------+-----------------+------------------+---------------------+
| Nombre    | Primer Apellido | Segundo Apellido | Facultad            |
+-----------+-----------------+------------------+---------------------+
| Antonio   | Fahey           | Considine        | Economía y Empresa  |
| Cristina  | Lemke           | Rutherford       | Economía y Empresa  |
| Guillermo | Ruecker         | Upton            | Educación           |
| Esther    | Spencer         | Lakin            | Educación           |
| Carmen    | Streich         | Hirthe           | Educación           |
| Juan      | Guerrero        | Martínez         | Informatica         |
| Manolo    | Hamill          | Kozey            | Informatica         |
| Zoe       | Ramirez         | Gea              | Informatica         |
| Pepe      | Sánchez         | Ruiz             | Informatica         |
| María     | Domínguez       | Hernández        | Matemáticas         |
| Alejandro | Kohler          | Schoen           | Matemáticas         |
| David     | Schmidt         | Fisher           | Matemáticas         |
| Francesca | Schowalter      | Muller           | Química y Física    |
| Alfredo   | Stiedemann      | Morissette       | Química y Física    |
+-----------+-----------------+------------------+---------------------+
```
2. Devuelve un listado con los profesores que no están asociados a un departamento.
```sql
SELECT DISTINCT p.nombre 'Nombre'
FROM profesor AS p
LEFT JOIN facultad AS f ON p.id_facultad = f.id_facultad
WHERE p.id_facultad IS NULL;
```

3. Devuelve un listado con los departamentos que no tienen profesores asociados.
```sql
SELECT f.facultad 'Facultad'
FROM facultad AS f
LEFT JOIN profesor p ON f.id_facultad = p.id_facultad
WHERE p.id_profesor IS NULL;

+-----------------------+
| Facultad              |
+-----------------------+
| Agronomía             |
| Filología             |
| Derecho               |
| Biología y Geología   |
+-----------------------+
```
4. Devuelve un listado con los profesores que no imparten ninguna asignatura.
```sql
SELECT p.nombre 'Nombre', p.apellido1 'Apellido'
FROM asignatura AS asi
RIGHT JOIN profesor AS p ON asi.id_profesor = p.id_profesor
WHERE asi.id_profesor IS NULL;
```
5. Devuelve un listado con las asignaturas que no tienen un profesor asignado.
```sql
SELECT asi.nombre 'Asignatura'
FROM asignatura AS asi
LEFT JOIN profesor AS p ON asi.id_profesor = p.id_profesor
WHERE asi.id_profesor IS NULL;

+-------------------------------------------------+
| Asignatura                                      |
+-------------------------------------------------+
| Álgebra lineal y matemática discreta            |
| Sistemas Inteligentes                           |
| Sistema de Información para las Organizaciones  |
| Fiabilidad y Gestión de Riesgos                 |
| Bioquímica                                      |
| Metabolismo y biosíntesis de biomoléculas       |
+-------------------------------------------------+
```
6. Devuelve un listado con todos los departamentos que tienen alguna asignatura que no se haya impartido en ningún curso escolar. El resultado debe mostrar el nombre del departamento y el nombre de la asignatura que no se haya impartido nunca.
```sql
SELECT f.facultad AS Departamento, a.nombre AS Asignatura
FROM facultad f
JOIN profesor p ON f.id_facultad = p.id_facultad
JOIN asignatura a ON p.id_profesor = a.id_profesor
LEFT JOIN matricula m ON a.id_asignatura = m.id_asignatura
WHERE m.id_asignatura IS NULL;

+---------------------+---------------------------------------------------------------------------+
| Departamento        | Asignatura                                                                |
+---------------------+---------------------------------------------------------------------------+
| Informatica         | Tecnologías web                                                           |
| Informatica         | Líneas de Productos Software                                              |
| Informatica         | Genética                                                                  |
| Informatica         | Planificación y Gestión de Proyectos Informáticos                         |
| Informatica         | Ingeniería de Sistemas de Información                                     |
| Informatica         | Inteligencia del Negocio                                                  |
| Informatica         | Ingeniería bioquímica                                                     |
| Informatica         | Biotecnología vegetal                                                     |
| Informatica         | Modelado y Diseño del Software 1                                          |
| Informatica         | Tecnologías de acceso a red                                               |
| Informatica         | Matemáticas I                                                             |
| Informatica         | Inmunología                                                               |
| Informatica         | Arquitectura de Computadores                                              |
| Informatica         | Multiprocesadores                                                         |
| Informatica         | Tratamiento digital de imágenes                                           |
| Informatica         | Química general                                                           |
| Informatica         | Virología                                                                 |
| Matemáticas         | Sistemas Operativos                                                       |
| Matemáticas         | Procesos de Ingeniería del Software 1                                     |
| Matemáticas         | Matemáticas II                                                            |
| Matemáticas         | Operaciones de separación                                                 |
| Matemáticas         | Programación de Servicios Software                                        |
| Matemáticas         | Modelado y Diseño del Software 2                                          |
| Matemáticas         | Procesos de Ingeniería del Software 2                                     |
| Matemáticas         | Termodinámica y cinética química aplicada                                 |
| Matemáticas         | Genómica y proteómica                                                     |
| Matemáticas         | Estructura de Datos y Algoritmos I                                        |
| Matemáticas         | Fundamentos de Redes de Computadores                                      |
| Matemáticas         | Administración de redes y sistemas operativos                             |
| Matemáticas         | Química orgánica                                                          |
| Matemáticas         | Bases moleculares del desarrollo vegetal                                  |
| Economía y Empresa  | Teoría de códigos y criptografía                                          |
| Economía y Empresa  | Tecnologías multimedia                                                    |
| Economía y Empresa  | Microbiología                                                             |
| Economía y Empresa  | Patología molecular de plantas                                            |
| Economía y Empresa  | Desarrollo de interfaces de usuario                                       |
| Economía y Empresa  | Negocio Electrónico                                                       |
| Economía y Empresa  | Seguridad Informática                                                     |
| Economía y Empresa  | Biorreactores                                                             |
| Economía y Empresa  | Procesos biotecnológicos                                                  |
| Educación           | Bases de Datos                                                            |
| Educación           | Administración de bases de datos                                          |
| Educación           | Análisis y planificación de las TI                                        |
| Educación           | Botánica agrícola                                                         |
| Educación           | Técnicas instrumentales básicas                                           |
| Educación           | Ingeniería de Requisitos                                                  |
| Educación           | Herramientas y Métodos de Ingeniería del Software                         |
| Educación           | Desarrollo Rápido de Aplicaciones                                         |
| Educación           | Bioinformática                                                            |
| Educación           | Periféricos e interfaces                                                  |
| Educación           | Biologia celular                                                          |
| Educación           | Biotecnología microbiana                                                  |
| Educación           | Técnicas instrumentales avanzadas                                         |
| Química y Física    | Estructura de Datos y Algoritmos II                                       |
| Química y Física    | Informática industrial y robótica                                         |
| Química y Física    | Gestión de la Calidad y de la Innovación Tecnológica                      |
| Química y Física    | Genética molecular                                                        |
| Química y Física    | Biotecnología de los productos hortofrutículas                            |
| Química y Física    | Integración de las Tecnologías de la Información en las Organizaciones    |
| Química y Física    | Sistemas de tiempo real                                                   |
| Química y Física    | Física                                                                    |
| Química y Física    | Ingeniería genética                                                       |
+---------------------+---------------------------------------------------------------------------+
```
## **Consultas resumen**

1. Devuelve el número total de alumnas que hay.
```sql
SELECT COUNT(*) AS 'Total Alumnas'
FROM alumno
WHERE id_genero = (SELECT id_genero FROM genero WHERE genero = 'Femenino');

+---------------+
| Total Alumnas |
+---------------+
|             4 |
+---------------+
```
2. Calcula cuántos alumnos nacieron en 1999.
```sql
SELECT COUNT(*) AS 'Alumnos nacidos en 1999'
FROM alumno
WHERE YEAR(fecha_nacimiento) = 1999;

+-------------------------+
| Alumnos nacidos en 1999 |
+-------------------------+
|                       2 |
+-------------------------+
```
3. Calcula cuántos profesores hay en cada departamento. El resultado sólo debe mostrar dos columnas, una con el nombre del departamento y otra con el número de profesores que hay en ese departamento. El resultado sólo debe incluir los departamentos que tienen profesores asociados y deberá estar ordenado de mayor a menor por el número de profesores.
```sql
SELECT f.facultad AS Departamento, COUNT(p.id_profesor) AS Num_Profesores
FROM facultad AS f
JOIN profesor AS p ON f.id_facultad = p.id_facultad
GROUP BY f.facultad
ORDER BY Num_Profesores DESC;

+---------------------+----------------+
| Departamento        | Num_Profesores |
+---------------------+----------------+
| Informatica         |              4 |
| Matemáticas         |              3 |
| Educación           |              3 |
| Economía y Empresa  |              2 |
| Química y Física    |              2 |
+---------------------+----------------+
```
4. Devuelve un listado con todos los departamentos y el número de profesores que hay en cada uno de ellos. Tenga en cuenta que pueden existir departamentos que no tienen profesores asociados. Estos departamentos también tienen que aparecer en el listado.
```sql
SELECT f.facultad AS Departamento, COUNT(p.id_profesor) AS Num_Profesores
FROM facultad AS f
LEFT JOIN profesor AS p ON f.id_facultad = p.id_facultad
GROUP BY f.facultad;

+-----------------------+----------------+
| Departamento          | Num_Profesores |
+-----------------------+----------------+
| Informatica           |              4 |
| Matemáticas           |              3 |
| Economía y Empresa    |              2 |
| Educación             |              3 |
| Agronomía             |              0 |
| Química y Física      |              2 |
| Filología             |              0 |
| Derecho               |              0 |
| Biología y Geología   |              0 |
+-----------------------+----------------+
```
5. Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. Tenga en cuenta que pueden existir grados que no tienen asignaturas asociadas. Estos grados también tienen que aparecer en el listado. El resultado deberá estar ordenado de mayor a menor por el número de asignaturas.
```sql
SELECT g.grado 'Grado', COUNT(a.id_asignatura) AS Num_Asignaturas
FROM grado AS g
LEFT JOIN asignatura AS a ON g.id_grado = a.id_grado
GROUP BY g.grado
ORDER BY Num_Asignaturas DESC;

+----------------------------------------------------------+-----------------+
| Grado                                                    | Num_Asignaturas |
+----------------------------------------------------------+-----------------+
| Grado en Ingeniería Informática (Plan 2015)              |              48 |
| Grado en Biotecnología (Plan 2015)                       |              30 |
| Grado en Ingeniería Agrícola (Plan 2015)                 |               0 |
| Grado en Ingeniería Eléctrica (Plan 2014)                |               0 |
| Grado en Ingeniería Electrónica Industrial (Plan 2010)   |               0 |
| Grado en Ingeniería Mecánica (Plan 2010)                 |               0 |
| Grado en Ingeniería Química Industrial (Plan 2010)       |               0 |
| Grado en Ciencias Ambientales (Plan 2009)                |               0 |
| Grado en Matemáticas (Plan 2010)                         |               0 |
| Grado en Química (Plan 2009)                             |               0 |
+----------------------------------------------------------+-----------------+
```
6. Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno de los grados que tengan más de 40 asignaturas asociadas.
```sql
SELECT g.grado 'Grado', COUNT(a.id_asignatura) AS Num_Asignaturas
FROM grado AS g
JOIN asignatura AS a ON g.id_grado = a.id_grado
GROUP BY g.grado
HAVING COUNT(a.id_asignatura) > 40
ORDER BY Num_Asignaturas DESC;

+-----------------------------------------------+-----------------+
| Grado                                         | Num_Asignaturas |
+-----------------------------------------------+-----------------+
| Grado en Ingeniería Informática (Plan 2015)   |              48 |
+-----------------------------------------------+-----------------+
```
7. Devuelve un listado que muestre el nombre de los grados y la suma del número total de créditos que hay para cada tipo de asignatura. El resultado debe tener tres columnas: nombre del grado, tipo de asignatura y la suma de los créditos de todas las asignaturas que hay de ese tipo. Ordene el resultado de mayor a menor por el número total de crédidos.
```sql
SELECT g.grado AS 'Grado', ta.tipo_asignatura AS Tipo_Asignatura, SUM(a.creditos) AS Total_Creditos
FROM grado AS g
JOIN asignatura AS a ON g.id_grado = a.id_grado
JOIN tipo_asignatura AS ta ON a.id_tipo_asignatura = ta.id_tipo
GROUP BY g.grado, ta.tipo_asignatura
ORDER BY Total_Creditos DESC;

+-----------------------------------------------+-----------------+----------------+
| Grado                                         | Tipo_Asignatura | Total_Creditos |
+-----------------------------------------------+-----------------+----------------+
| Grado en Ingeniería Informática (Plan 2015)   | Electiva        |            168 |
| Grado en Biotecnología (Plan 2015)            | Obligatoria     |          115.5 |
| Grado en Ingeniería Informática (Plan 2015)   | Básica          |             72 |
| Grado en Biotecnología (Plan 2015)            | Básica          |             54 |
| Grado en Ingeniería Informática (Plan 2015)   | Obligatoria     |             48 |
+-----------------------------------------------+-----------------+----------------+
```
8. Devuelve un listado que muestre cuántos alumnos se han matriculado de alguna asignatura en cada uno de los cursos escolares. El resultado deberá mostrar dos columnas, una columna con el año de inicio del curso escolar y otra con el número de alumnos matriculados.
```sql
SELECT anyo_inicio AS Año_Inicio, COUNT(DISTINCT id_alumno) AS Num_Alumnos_Matriculados
FROM matricula
JOIN curso ON matricula.id_curso = curso.id_curso
GROUP BY anyo_inicio
ORDER BY anyo_inicio;

+-------------+--------------------------+
| Año_Inicio  | Num_Alumnos_Matriculados |
+-------------+--------------------------+
|        2014 |                        3 |
|        2015 |                        2 |
|        2016 |                        2 |
|        2017 |                        1 |
+-------------+--------------------------+
```
9. Devuelve un listado con el número de asignaturas que imparte cada profesor. El listado debe tener en cuenta aquellos profesores que no imparten ninguna asignatura. El resultado mostrará cinco columnas: id, nombre, primer apellido, segundo apellido y número de asignaturas. El resultado estará ordenado de mayor a menor por el número de asignaturas.
```sql
SELECT 
    p.id_profesor AS ID, 
    p.nombre AS Nombre, 
    p.apellido1 AS 'Primer Apellido', 
    p.apellido2 AS 'Segundo Apellido',
    COUNT(a.id_asignatura) AS Num_Asignaturas
FROM 
    profesor p
LEFT JOIN 
    asignatura a ON p.id_profesor = a.id_profesor
GROUP BY 
    p.id_profesor, p.nombre, p.apellido1, p.apellido2
ORDER BY 
    Num_Asignaturas DESC;

+----+-----------+-----------------+------------------+-----------------+
| ID | Nombre    | Primer Apellido | Segundo Apellido | Num_Asignaturas |
+----+-----------+-----------------+------------------+-----------------+
|  5 | Carmen    | Streich         | Hirthe           |               6 |
|  7 | Manolo    | Hamill          | Kozey            |               6 |
|  8 | Alejandro | Kohler          | Schoen           |               6 |
|  9 | Antonio   | Fahey           | Considine        |               6 |
|  3 | Cristina  | Lemke           | Rutherford       |               5 |
|  4 | Esther    | Spencer         | Lakin            |               5 |
|  6 | Alfredo   | Stiedemann      | Morissette       |               5 |
| 10 | Guillermo | Ruecker         | Upton            |               5 |
| 11 | Francesca | Schowalter      | Muller           |               5 |
| 12 | Pepe      | Sánchez         | Ruiz             |               5 |
| 13 | Juan      | Guerrero        | Martínez         |               5 |
| 14 | María     | Domínguez       | Hernández        |               5 |
|  1 | Zoe       | Ramirez         | Gea              |               4 |
|  2 | David     | Schmidt         | Fisher           |               4 |
+----+-----------+-----------------+------------------+-----------------+
```
## **Subconsultas**

1. Devuelve todos los datos del alumno más joven.
```sql
SELECT 
    nif AS Nif,
    nombre AS Nombre,
    apellido1 AS 'Primer Apellido',
    apellido2 AS 'Segundo Apellido',
    fecha_nacimiento AS 'Fecha Nacimiento',
    id_genero Género,
    direccion Dirección,
    id_ciudad Ciudad
FROM alumno
WHERE fecha_nacimiento = (
    SELECT MIN(fecha_nacimiento)
    FROM alumno
);

+-----------+----------+-----------------+------------------+------------------+---------+-------------------------+--------+
| Nif       | Nombre   | Primer Apellido | Segundo Apellido | Fecha Nacimiento | Género  | Dirección               | Ciudad |
+-----------+----------+-----------------+------------------+------------------+---------+-------------------------+--------+
| 26902806M | Salvador | Sánchez         | Pérez            | 1991-03-28       |       2 | C/ Real del barrio alto |      1 |
+-----------+----------+-----------------+------------------+------------------+---------+-------------------------+--------+
```
2. Devuelve un listado con los profesores que no están asociados a un departamento.
```sql
SELECT *
FROM profesor
WHERE id_facultad IS NULL;
```
3. Devuelve un listado con los departamentos que no tienen profesores asociados.
```sql
SELECT f.id_facultad, f.facultad
FROM facultad AS f
WHERE f.id_facultad NOT IN (
    SELECT DISTINCT p.id_facultad
    FROM profesor AS p
);

+-------------+-----------------------+
| id_facultad | facultad              |
+-------------+-----------------------+
|           5 | Agronomía             |
|           7 | Filología             |
|           8 | Derecho               |
|           9 | Biología y Geología   |
+-------------+-----------------------+
```
4. Devuelve un listado con los profesores que tienen un departamento asociado y que no imparten ninguna asignatura.
```sql
SELECT *
FROM profesor
WHERE id_facultad IS NOT NULL
AND id_profesor NOT IN (
    SELECT DISTINCT id_profesor
    FROM asignatura
);
```
5. Devuelve un listado con las asignaturas que no tienen un profesor asignado.
```sql
SELECT *
FROM asignatura
WHERE id_profesor IS NULL;

+---------------+-------------------------------------------------+----------+--------------------+----------+--------------+-------------+
| id_asignatura | nombre                                          | creditos | id_tipo_asignatura | id_grado | cuatrimestre | id_profesor |
+---------------+-------------------------------------------------+----------+--------------------+----------+--------------+-------------+
|             1 | Álgebra lineal y matemática discreta            |        6 |                  1 |        4 |            1 |        NULL |
|            14 | Sistemas Inteligentes                           |        6 |                  2 |        4 |            3 |        NULL |
|            27 | Sistema de Información para las Organizaciones  |        6 |                  3 |        4 |            1 |        NULL |
|            42 | Fiabilidad y Gestión de Riesgos                 |        6 |                  3 |        4 |            1 |        NULL |
|            58 | Bioquímica                                      |        6 |                  1 |        7 |            2 |        NULL |
|            74 | Metabolismo y biosíntesis de biomoléculas       |        6 |                  2 |        7 |            3 |        NULL |
+---------------+-------------------------------------------------+----------+--------------------+----------+--------------+-------------+
```
6. Devuelve un listado con todos los departamentos que no han impartido asignaturas en ningún curso escolar.
```sql
SELECT id_facultad, facultad
FROM facultad
WHERE id_facultad NOT IN (
    SELECT DISTINCT f.id_facultad
    FROM facultad f
    JOIN profesor p ON f.id_facultad = p.id_facultad
    JOIN asignatura a ON p.id_profesor = a.id_profesor
    JOIN matricula m ON a.id_asignatura = m.id_asignatura
);

+-------------+-----------------------+
| id_facultad | facultad              |
+-------------+-----------------------+
|           5 | Agronomía             |
|           7 | Filología             |
|           8 | Derecho               |
|           9 | Biología y Geología   |
+-------------+-----------------------+
```

## Procedimientos
1. Crear nuevo alumno.
```sql
CREATE PROCEDURE sp_CrearAlumno (
    IN nif VARCHAR(9),
    IN nombre VARCHAR(25),
    IN apellido1 VARCHAR(50),
    IN apellido2 VARCHAR(50),
    IN fecha_nacimiento DATE,
    IN id_genero INT,
    IN direccion VARCHAR(50),
    IN id_ciudad INT
)
BEGIN
    INSERT INTO alumno (nif, nombre, apellido1, apellido2, fecha_nacimiento, id_genero, direccion, id_ciudad)
    VALUES (nif, nombre, apellido1, apellido2, fecha_nacimiento, id_genero, direccion, id_ciudad);
END;
```
2. Actualizar datos de alumno.
```sql
CREATE PROCEDURE sp_ActualizarAlumno (
    IN id_alumno INT,
    IN nuevo_nif VARCHAR(9),
    IN nuevo_nombre VARCHAR(25),
    IN nuevo_apellido1 VARCHAR(50),
    IN nuevo_apellido2 VARCHAR(50),
    IN nueva_fecha_nacimiento DATE,
    IN nuevo_id_genero INT,
    IN nueva_direccion VARCHAR(50),
    IN nuevo_id_ciudad INT
)
BEGIN
    UPDATE alumno
    SET nif = nuevo_nif, 
        nombre = nuevo_nombre, 
        apellido1 = nuevo_apellido1, 
        apellido2 = nuevo_apellido2, 
        fecha_nacimiento = nueva_fecha_nacimiento,
        id_genero = nuevo_id_genero,
        direccion = nueva_direccion,
        id_ciudad = nuevo_id_ciudad
    WHERE id_alumno = id_alumno;
END;
```
3. Eliminar alumno por ID.
```sql
CREATE PROCEDURE sp_EliminarAlumnoPorID (
    IN id_alumno INT
)
BEGIN
    DELETE FROM alumno
    WHERE id_alumno = id_alumno;
END;
```
4. Buscar alumno por NIF.
```sql
CREATE PROCEDURE sp_BuscarAlumnoPorNIF (
    IN buscar_nif VARCHAR(9)
)
BEGIN
    SELECT *
    FROM alumno
    WHERE nif = buscar_nif;
END;
```
5. Crear nuevo profesor.
```sql
CREATE PROCEDURE sp_CrearProfesor (
    IN nuevo_nif VARCHAR(9),
    IN nuevo_nombre VARCHAR(25),
    IN nuevo_apellido1 VARCHAR(50),
    IN nuevo_apellido2 VARCHAR(50),
    IN nueva_fecha_nacimiento DATE,
    IN nuevo_id_genero INT,
    IN nueva_direccion VARCHAR(50),
    IN nuevo_id_ciudad INT,
    IN nuevo_id_facultad INT
)
BEGIN
    INSERT INTO profesor (nif, nombre, apellido1, apellido2, fecha_nacimiento, id_genero, direccion, id_ciudad, id_facultad)
    VALUES (nuevo_nif, nuevo_nombre, nuevo_apellido1, nuevo_apellido2, nueva_fecha_nacimiento, nuevo_id_genero, nueva_direccion, nuevo_id_ciudad, nuevo_id_facultad);
END;
```
6. Actualizar datos de profesor.
```sql
CREATE PROCEDURE sp_ActualizarProfesor (
    IN id_profesor INT,
    IN nuevo_nif VARCHAR(9),
    IN nuevo_nombre VARCHAR(25),
    IN nuevo_apellido1 VARCHAR(50),
    IN nuevo_apellido2 VARCHAR(50),
    IN nueva_fecha_nacimiento DATE,
    IN nuevo_id_genero INT,
    IN nueva_direccion VARCHAR(50),
    IN nuevo_id_ciudad INT,
    IN nuevo_id_facultad INT
)
BEGIN
    UPDATE profesor
    SET nif = nuevo_nif, 
        nombre = nuevo_nombre, 
        apellido1 = nuevo_apellido1, 
        apellido2 = nuevo_apellido2, 
        fecha_nacimiento = nueva_fecha_nacimiento,
        id_genero = nuevo_id_genero,
        direccion = nueva_direccion,
        id_ciudad = nuevo_id_ciudad,
        id_facultad = nuevo_id_facultad
    WHERE id_profesor = id_profesor;
END;
```
7. Eliminar profesor por ID.
```sql
CREATE PROCEDURE sp_EliminarProfesorPorID (
    IN id_profesor INT
)
BEGIN
    DELETE FROM profesor
    WHERE id_profesor = id_profesor;
END;
```
8. Buscar profesor por NIF.
```sql
CREATE PROCEDURE sp_BuscarProfesorPorNIF (
    IN buscar_nif VARCHAR(9)
)
BEGIN
    SELECT *
    FROM profesor
    WHERE nif = buscar_nif;
END;
```
9. Crear nueva asignatura.
```sql
CREATE PROCEDURE sp_CrearAsignatura (
    IN nuevo_nombre VARCHAR(100),
    IN nuevo_creditos FLOAT,
    IN nuevo_id_tipo_asignatura INT,
    IN nuevo_id_grado INT,
    IN nuevo_id_profesor INT
)
BEGIN
    INSERT INTO asignatura (nombre, creditos, id_tipo_asignatura, id_grado, id_profesor)
    VALUES (nuevo_nombre, nuevo_creditos, nuevo_id_tipo_asignatura, nuevo_id_grado, nuevo_id_profesor);
END;
```
10. Eliminar asignatura por ID.
```sql
CREATE PROCEDURE sp_EliminarAsignaturaPorID (
    IN id_asignatura INT
)
BEGIN
    DELETE FROM asignatura
    WHERE id_asignatura = id_asignatura;
END;
```
## Vistas
1. Vista de alumnos.
```sql
CREATE VIEW vw_Alumnos AS
SELECT *
FROM alumno;
```
2. Vista de profesores.
```sql
CREATE VIEW vw_Profesores AS
SELECT *
FROM profesor;
```
3. Vista de asignaturas por profesor.
```sql
CREATE VIEW vw_AsignaturasPorProfesor AS
SELECT p.id_profesor, p.nombre AS nombre_profesor, a.*
FROM profesor p
LEFT JOIN asignatura a ON p.id_profesor = a.id_profesor;
```
4. Vista de asignaturas sin profesor asignado.
```sql
CREATE VIEW vw_AsignaturasSinProfesor AS
SELECT *
FROM asignatura
WHERE id_profesor IS NULL;
```
5. Vista de asignaturas por tipo.
```sql
CREATE VIEW vw_AsignaturasPorTipo AS
SELECT ta.tipo_asignatura, COUNT(*) AS total_asignaturas
FROM asignatura a
JOIN tipo_asignatura ta ON a.id_tipo_asignatura = ta.id_tipo
GROUP BY ta.tipo_asignatura;
```
6. Vista de grados y número de asignaturas.
```sql
CREATE VIEW vw_GradosYAsignaturas AS
SELECT g.grado AS nombre_grado, COUNT(a.id_asignatura) AS total_asignaturas
FROM grado g
LEFT JOIN asignatura a ON g.id_grado = a.id_grado
GROUP BY g.grado;
```
7. Vista de asignaturas por curso.
```sql
CREATE VIEW vw_AsignaturasPorCurso AS
SELECT c.anyo_inicio AS curso_escolar, COUNT(m.id_asignatura) AS total_asignaturas
FROM curso c
LEFT JOIN matricula m ON c.id_curso = m.id_curso
GROUP BY c.anyo_inicio;
```
8. Vista de contactos de alumnos.
```sql
CREATE VIEW vw_ContactosAlumnos AS
SELECT *
FROM contacto
WHERE id_alumno IS NOT NULL;
```
9. Vista de profesores sin departamento.
```sql
CREATE VIEW vw_ProfesoresSinDepartamento AS
SELECT *
FROM profesor
WHERE id_facultad IS NULL;
```
10. Vista de departamentos sin profesores.
```sql
CREATE VIEW vw_DepartamentosSinProfesores AS
SELECT *
FROM facultad
WHERE id_facultad NOT IN (
    SELECT DISTINCT id_facultad
    FROM profesor
);
```