import express from 'express';
import dotenv from 'dotenv';
import clasesV1Router from './routers/clases.v1.js';
import despistesV1Router from './routers/despistes.v1.js';

// configuración de la aplicación
const app = express();
dotenv.config();

// añade los enrutadores para la versión 1
app.use('/v1/clases', clasesV1Router);
app.use('/v1/despistes', despistesV1Router);

// inicio de la aplicación
app.listen(process.env.APP_PORT, () => {
    console.log('Aplicación iniciada en el puerto ' + process.env.APP_PORT);
});