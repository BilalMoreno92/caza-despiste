import Despiste from '../models/despiste.model.mjs';

// inicializa el controlador
const despistes = (req, res) => {}

// lista todos los despistes
despistes.list = (req, res) => {
    Despiste.list((err, data) => {
        if (err) {
            res.status(500).send({ message: err.message || 'Error inesperado al listar los despistes.' });
        } else {
            res.status(200).send(data);
        }
    });
}

// agrega un despiste
despistes.add = (req, res) => {
    if (!req.body || Object.keys(req.body).length === 0) {
        res.status(400).send({ message: 'No se ha enviado un despiste.' });
    }
    const despiste = new Despiste({
        instante: req.body.instante || new Date(),
        clase: req.body.clase,
        dispositivo: req.body.dispositivo
    });
    Despiste.add(despiste, (err, data) => {
        if (err) {
            res.status(500).send({ message: err.message || 'Error inesperado al guardar el despiste.' });
        } else {
            res.status(201).send(data);
        }
    });
}

export default despistes;
