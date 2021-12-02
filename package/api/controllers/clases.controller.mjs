import Clase from '../models/clase.model.mjs';

// inicializa el controlador
const clases = (req, res) => {}

// lista todas las clases
clases.list = (req, res) => {
    Clase.list((err, data) => {
        if (err) {
            res.status(500).send({ message: err.message || 'Error inesperado al listar las clases.' });
        } else {
            res.status(200).send(data);
        }
    });
}

// agrega una clase
clases.add = (req, res) => {
    if (!req.body || Object.keys(req.body).length === 0) {
        res.status(400).send({ message: 'No se ha enviado una clase.' });
    }
    const clase = new Clase({
        codigo: req.body.codigo,
        nombre: req.body.nombre,
        descripcion: req.body.descripcion,
        activa: req.body.activa || 1
    });
    Clase.add(clase, (err, data) => {
        if (err) {
            res.status(500).send({ message: err.message || 'Error inesperado al guardar la clase.' });
        } else {
            res.status(201).send(data);
        }
    });
}

export default clases;
