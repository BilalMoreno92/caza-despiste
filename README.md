# caza-despiste
Repositorio base para el proyecto de Caza Despistes

## API
La API ofrece un servicio REST que permite interactuar con la base de datos implementada en MySQL.

### Configuración
Para configurar la API en el servidor, es necesario crear un fichero `.env` con las siguientes variables:
- `APP_PORT` puerto en el que se ejecuta la API (por defecto, 3000)
- `DB_HOST` nombre del servidor de base de datos (por defecto, localhost)
- `DB_PORT` puerto del servidor de base de datos (por defecto, 3306)
- `DB_DATABASE` nombre de la base de datos
- `DB_USER` usuario de conexión con la base de datos
- `DB_PASSWORD` contraseña de conexión con la base de datos

Antes de ejecutar la API, es necesario descargar las dependencias del proyecto de Node.js. Se instalarán en `node_modules` ejecutando el comando `npm install`.

Para iniciar la API, ejecutar el comando:
- Desarrollo: `npm run start-dev`
- Producción: `npm run start`

### Llamadas
Las llamadas que se pueden realizar a la API son las siguientes:
- `{protocolo}://{servidor}:{puerto}/v1/clases`
  - `GET` lista todas las clases
    - `200` si se listan todas las clases
    - `500` si ha ocurrido un error
  - `POST` inserta una nueva clase
    - `201` si se inserta la clase
    - `400` si no hay definida una clase en el cuerpo del mensaje
    - `500` si ha ocurrido un error
    - Formato del cuerpo del mensaje (application/json):
      ```
      {
        "codigo": <string> código de la clase (obligatorio),
        "nombre": <string> nombre de la clase (obligatorio)>,
        "descripcion": <string> descripción de la clase (opcional, por defecto es nulo),
        "activa": <bit> 1 si está activa, 0 al contrario (opcional, por defecto es 1)
      }
      ```
- `{protocolo}://{servidor}:{puerto}/v1/despistes`
  - `GET` lista todos los despistes
    - `200` si se listan todos los despistes
    - `500` si ha ocurrido un error
  - `POST` inserta un nuevo despiste
    - `201` si se inserta el despiste
    - `400` si no hay definido un despiste en el cuerpo del mensaje
    - `500` si ha ocurrido un error
    - Formato del cuerpo del mensaje (application/json):
    ```
    {
       "clase": <integer> identificador de la clase desde la que se registra el despiste (obligatorio, debe existir este identificador en las clases),
       "dispositivo": <string> identificador del dispositivo desde donde se registra el despiste (obligatorio),
       "instante": <datetime> fecha y hora del registro del despiste (opcional, por defecto es la fecha y hora actual)
    }
    ```
