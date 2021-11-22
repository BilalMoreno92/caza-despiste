# Componentes y roles del equipo de trabajo:

Bilal - Front mobile
Daniel - Scrum master
Karim ---------------------
Manuela - Team leader
Rocío
Rafael - Backend
Vicente - Front web

# REQUERIMIENTOS DEL PROYECTO

## ÁMBITO

Recoger los tiempos de falta de atención de los alumnos del curso en una clase del ámbito universitario, sólo el inicio.

- Mediante una aplicación, los alumnos registrarán el momento de desconexión y conexión de atención a la clase.
Se identificará el dispositivo desde el que se conecta el alumno.    
La identificación del alumno será anónima. 

- Estos datos se depositarán en una BBDD.

- Mediante otra aplicación se mostrará el resultado del procesamiento de los datos en los informes solicitados.
- Configuración de los datos del proyecto para cada clase.        


# MEJORAS / EVOLUTIVOS

- Código QR para vincular al alumno a esa clase (dia/hora/profesor).
- Vacunación de covid por parte del alumno.
- Aviso de si hay alumnos que se despistan más de lo necesario en una clase.
- Si un alumno se despista más de x veces, ofrezca texto para que escriba motivo.


# REQUERIMIENTOS

## PROCESO DE RECOGIDA DE DESPISTES
- El despiste irá asociado a una clase (hora, ubicación).
- El alumno debe seleccionar la ubicación.
- Aplicación en la que el alumno presiona un botón en el momento de despiste.
- Se trasladarán el time, dispositivo, y la ubicación a la BBDD.
- Se identificará el dispositivo, no el alumno.



## PROCESO DE GENERACIÓN DE INFORMES
- Se procesarán los siguientes informes
- Informes:
- Por horas: Indica cuántos alumnos se han despistado en cada hora.
- Por aula: Indica cuántos alumnos se han despistado en cada clase.


## CONFIGURACIÓN
- Se definirán:
- Aulas en el centro
- Vincular aula con clase docente que se imparte (materia, profesor)

## MODELO DE DATOS
### Despistes
- Dispositivos
- Dia y hora (timestamp)
- Clase
- Motivo (posible mejora)

### Clases
- Ubicación
- Dia y hora

### Ubicaciones
- Aula
- Horario (posible mejora)
- Clase
- Asignatura
- Profesor


## HISTORIAS DE USUARIO

### Desarrollador front móvil - Bilal
- Crear pantalla de inicio (15 puntos) - Bilal
- Creación de Clases planas (1 punto)
- Creación Modelo Visual (8 puntos)
- Creación de servicio Api (5 puntos)
- Pruebas unitarias (1 punto)

### Desarrollador front web - Vicente y Manuela 
- Crear pantalla de informes dashboard (8 puntos) - Vicente
- Creación de un Mock de Datos (2 puntos)
- Creación de Maqueta (3 puntos)
- Creación de Lógica, código del programa (3 puntos)
- Pruebas unitarias (1 punto)

### Crear pantalla de usuario administrador configuración (8 puntos) - Manuela
- Creación de Maqueta (3 puntos)
- Creación de Lógica, código del programa (3 puntos)
- Pruebas unitarias (2 puntos)

### Desarrollador backend - Rafael y Manuela
- Crear la base de datos del sistema (3 puntos) - Manuela
- Modelar BBDD (2 Puntos)
- Generar BBDD en base el Modelo (1 punto)

### Recibir datos de despistes (8 puntos) - Rafael
- Creación de modelos de datos (3 puntos).
- Creación de lógica del endpoint (3 puntos).
- Creación de los test unitarios (2 puntos).

### Recibir/enviar datos de configuración de aula (5 puntos) - Rafael
- Creación de modelos de datos (2 puntos).
- Creación de lógica del endpoint (2 puntos).
- Creación de los test unitarios (1 punto).

### Enviar resultado de procesado de datos para informe (8 puntos) - Rafael
- Creación de modelos de datos (3 puntos).
- Creación de lógica del endpoint (3 puntos).
- Creación de los test unitarios (2 puntos).

