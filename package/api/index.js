import express from 'express';
import dotenv from 'dotenv';
import clases1Router from './routers/v1/clases.router.mjs';
import despistes1Router from './routers/v1/despistes.router.mjs';

// configuración de la aplicación
const app = express();
dotenv.config();

// parsea las peticiones a JSON
app.use(express.json());

// añade los enrutadores para la versión 1
app.use('/v1/clases', clases1Router);
app.use('/v1/despistes', despistes1Router);

// inicio de la aplicación
const port = process.env.APP_PORT || 3000;
app.listen(port, () => {
    console.log('Aplicación iniciada en el puerto ' + port);
});
