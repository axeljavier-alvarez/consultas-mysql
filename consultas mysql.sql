

/* CONSULTAS */

/* --------------------- INSERT ---------------------------  */

/*
PROBLEMA 1: 
La bibliotecaria le solicito un listado con todos los libros que poseen un precio mayor a Q 500.00, los datos que le interesan
son: código, título, precio y número de páginas.
Importante: El titulo del libro debe ser mostrado en mayúsculas 
*/

SELECT codigo_libro, UPPER(titulo) AS titulo, precio, numero_paginas
FROM libros
WHERE precio > 500;


/*
PROBLEMA 2: 
El director le solicito el carnet, nombre completo del estudiante y teléfono de los estudiantes con el código de grado 8.
Importante: Deberá concatenar el nombre y apellido del estudiante y mostrarlo con el formato apellido, nombre.
*/


SELECT carne_alumno, CONCAT(nombre, ' ', apellido) AS nombre_completo, telefono
FROM estudiantes
WHERE codigo_grado = 8;


/*
PROBLEMA 3:
La bibliotecaria le pidió un listado con todos los datos de los libros que en título llevan el número 7.
Importante: para esta consulta deberá utilizar Like

*/

SELECT * FROM libros
WHERE titulo LIKE '%7%';


/* PROBLEMA 4:
El administrador del centro educativo le ha solicitado el listado de estudiantes que nacieron durante el año 2005, deberá
proporcionarle nombre, apellido, dirección, teléfono, fecha de nacimiento, código del grado.
 */
 
 
 SELECT nombre, apellido, direccion, telefono, fechanacimiento, codigo_grado
 FROM estudiantes
 WHERE fechanacimiento LIKE '%2005%';


/* -------------  UPDATE ---------------------*/
 SELECT * FROM grados;
 
/* PROBLEMA 5:
Agregar un nuevo Grado, los datos son: código 25, nombre Quinto Bachillerato en Ciencia y Letras.
 */
 
 /* INSERT INTO grados 
 VALUES(26, "Quinto bachillerato en ciencias y letras");
 
 ALTER TABLE grados
 modify nombre VARCHAR(70);
 
 DESC grados; */
 
 
 ALTER TABLE grados MODIFY nombre VARCHAR(45);

INSERT INTO grados (codigo_grado, nombre)
VALUES (25, 'Quinto Bachillerato en Ciencia y Letras');

SELECT * FROM grados;
 /* PROBLEMA 6
  Agregar un nuevo autor, los datos son: codigo 1, nombre: Ana Beatriz Cordero Duarte, nacionalidad: guatemalteca
 */
 
INSERT INTO autores (codigo_autor, apellido, nombre, nacionalidad)
VALUES (1, 'Cordero Duarte', 'Ana Beatriz', 'guatemalteca');


/* PROBLEMA 7 
Agregar un nuevo empleado, invente todos los datos.
*/


INSERT INTO empleados(codigo_empleado, nombre, apellido, direccion, email)
VALUES (1012, "Marlon", "Guzman", "5ta avenida", "marlon@gmail.com");

/* PROBLEMA 8 
Agregar un nuevo estudiante (invente todos los datos).
*/

INSERT INTO estudiantes(carne_alumno, nombre, apellido, direccion, telefono, email, fechanacimiento, codigo_grado)
VALUES (2022001, "Abner", "Giron", "5ta avenida zona 2", 45811678, "abnen@gmail.com", '2022-08-23', 8);


/* PROBLEMA 9
Agregar un nuevo editorial, los datos son los siguientes: código 1001, nombre Editorial GuateLee, S.A. y la dirección es 7ma.
Calle 1-23 Zona 4.
 */
 
 INSERT INTO editoriales(codigo_editorial, nombre, direccion, telefono, email)
 VALUES (2000, "Michelle", "2da calle zona 2", 45811678, "michelle@gmail.com");
 
 /* PROBLEMA 10 
 Agregar el estado 4 con nombre dañado.
 */
 
 INSERT INTO estados(codigo_estado, nombre)
 VALUES(4, "dañado");
 
 /* PROBLEMA 11
  Agregar un nuevo empleado, los datos son los siguientes:
  No. 428, código libro 100260, carne 2013062, codigo_empleado 1007, fecha devolución 17/08/2020, Fecha préstamo 11/08/2022
 */
 
 INSERT INTO empleados(codigo_empleado, nombre, apellido, direccion, email)
 VALUES(1011, "Mario", "Mendoza", "3ra. Calle 25-21 Zona 10", "mariom@gmail.com");
 
 /* PROBLEMA 12
 Agregar un nuevo préstamo, los datos son los siguientes:
 No. 428, codigo de libro: 100260, Carne: 2013062, código empleado 1007, Fecha devolución 17/08/2020, Fecha prestamo 11/08/2020
 */
 
 INSERT INTO prestamos(numero_prestamo, codigo_libro, carne_alumno, fecha_prestamo, fecha_devolucion, codigo_empleado)
 VALUES(4288, 100260, 2013062, 11/08/2020, 17/08/2020, 1007);
 
 
 /* --------------------- UPDATE ---------------------------  */
 
 /* PROBLEMA 13 
Cambie el nombre del grado con código 25 el nuevo valor de es Quinto Bachillerato en Ciencias y Letras con Orientación en
Computación.
 */
  ALTER TABLE grados MODIFY nombre VARCHAR(150);
 UPDATE grados
SET nombre = "Quinto Bachillerato en Ciencias y Letras con Orientación en Computación"
WHERE codigo_grado = 25;


/* PROBLEMA 14 
Aumentar el precio de todos los libros en un 5%.
Importante: tome en cuenta que debe agregar al valor existente el 5% y no solo sustituir el valor actual por el 5%.
*/
  UPDATE libros
  SET precio = precio *1.05;
  
  SELECT * FROM libros;
  
  
  /* PROBLEMA 15
  Cambiar la dirección y correo electrónico del empleado con código 1007, los datos son: 1ra. Calle 1-11 zona 11 y correo
alibarrios@gmail.com

  */
  ALTER TABLE empleados MODIFY email VARCHAR(50);
  UPDATE empleados
SET direccion = "1ra. Calle 1-11 zona 11",
    email = "alibarrios@gmail.com"
WHERE codigo_empleado = 1007;


SELECT * FROM empleados;





/* PROBLEMA 16
Aumentar el precio de los libros del editorial 1000 en un 7%.
 */
 
 UPDATE libros
SET precio = precio * 1.07
WHERE codigo_editorial = 1000;

SELECT * FROM libros;

/* PROBLEMA 17 
Modificar la fecha de devolución del préstamo 428, la nueva fecha debe ser 20/02/2020
*/

UPDATE prestamos
SET fecha_devolucion = '2020-02-20'
WHERE numero_prestamo = 428; 

SELECT * FROM PRESTAMOS WHERE numero_prestamo = 428;

/* PROBLEMA 18
Modificar el teléfono y dirección del estudiante con carne 2013062, la nueva dirección es 1ra. Calle 1-11 zona 11 y el
teléfono es 24243535
*/
UPDATE estudiantes
SET telefono = 24243535,
direccion = "1ra. Calle 1-11 zona 11"
WHERE carne_alumno = 2013062;

/* PROBLEMA 19
Modificar nombre, apellido y nacionalidad del autor con código 2, invente los datos.
*/
UPDATE autores
SET
nombre = "Fabian", 
apellido = "Wiskus", 
nacionalidad = "Canadiense"
WHERE codigo_autor = 2;

/* --------------------- DELETE ---------------------------  */

/* 20. Eliminar al grado con código 25.*/

DELETE FROM grados
WHERE codigo_grado = 25;

/* 21. Eliminar al estudiante con teléfono 22451323 y correo electrónico katalb@correo.com */
SET SQL_SAFE_UPDATES = 0;

DELETE FROM estudiantes
WHERE telefono = 22451323
AND email = 'katalb@correo.com';

SELECT * FROM estudiantes;


/* 22. Borrar todos los libros con estado 3 y edición menor a 2000.*/
DELETE FROM libros
WHERE estado = 3 
AND
edicion < 2000;
/* 23. Eliminar el préstamo no. 427.*/
DELETE FROM prestamos
WHERE numero_prestamo = 427;
/* 24. Eliminar todos los préstamos efectuados el 24/12/2019, 25/12/2019 y 31/12/2019.*/


DELETE FROM prestamos
WHERE fecha_prestamo IN ('2019-12-24', '2019-12-25', '2019-12-31');


/* 25. Borrar el editorial con teléfono 938755645, con dirección 3ra. Calle 24-21 Zona 9 y codigo_editorial 600*/
DELETE FROM editoriales
WHERE telefono = 938755645 
AND direccion = '3ra. Calle 24-21 Zona 9' 
AND nombre = 'Editorial 600';

/* 26. Mostrar título de libro, precio, nombre de autor y nombre de estado de todos los libros.
Crear una vista con el nombre view _libros_estados, con la consulta anterior. */

CREATE VIEW view_libros_estados AS
SELECT 
    libros.titulo,
    libros.precio,
    libros.estado,
    autores.nombre AS nombre_autor
FROM 
    libros
INNER JOIN autores ON libros.codigo_autor = autores.codigo_autor;

/* 27. El director del centro educativo ha solicitado el listado de estudiantes que cumplen años durante el mes de agosto, deberá
incluir nombre del estudiante, fecha de nacimiento, edad actual y nombre del grado */

CREATE VIEW view_estudiantes_agosto AS

SELECT
    estudiantes.nombre AS nombre_estudiante,
    estudiantes.fechanacimiento,
    TIMESTAMPDIFF(YEAR, estudiantes.fechanacimiento, CURDATE()) AS edad_actual,
    grados.nombre AS nombre_grado
FROM
    estudiantes
INNER JOIN grados ON estudiantes.codigo_grado = grados.codigo_grado
WHERE
    MONTH(estudiantes.fechanacimiento) = 8
ORDER BY
    estudiantes.fechanacimiento;
    
/* 28. Listar el título de libro, tamaño, nombre de estado, número de páginas y nombre de editorial de los libros con precio menor
a 150.
Crear una vista con el nombre view _libros_precio_menor_que150, con la consulta anterior */

CREATE VIEW view_libros_precio_menor_que150 AS
select 
editoriales.nombre AS nombre_editorial,
libros.titulo, libros.tamanio, libros.estado, libros.numero_paginas
from libros
inner join editoriales on  libros.codigo_editorial = editoriales.codigo_editorial
WHERE
precio < 150;

/* 29. Mostrar título de libro, número de páginas, nombre del autor, de los libros prestados entre los meses de junio y julio de
2018.
Crear una vista con la consulta anterior, el nombre queda a su gusto. */
CREATE VIEW view_datos_libros_filtrados AS
SELECT 
    libros.titulo AS nombre_libro,
    libros.numero_paginas,
    autores.nombre AS nombre_autor
    
FROM libros

INNER JOIN autores ON libros.codigo_autor = autores.codigo_autor
INNER JOIN prestamos ON libros.codigo_libro = prestamos.codigo_libro
WHERE prestamos.fecha_prestamo BETWEEN '2018-06-01' AND '2018-07-31';

/* 30. Listar el título de los libros prestados por el empleado con nombre “Ana Maribel” y apellido “Bacajol”
Crear una vista con la consulta anterior, el nombre queda a su gusto. */

CREATE VIEW datos_libros_ana AS
SELECT 
    libros.titulo
FROM 
    libros
INNER JOIN 
    prestamos ON libros.codigo_libro = prestamos.codigo_libro
INNER JOIN 
    empleados ON prestamos.codigo_empleado = empleados.codigo_empleado
WHERE 
    empleados.nombre = 'Ana Maribel'
AND 
    empleados.apellido = 'Bacajol';

