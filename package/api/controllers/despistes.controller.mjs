import despiste from '../models/despiste.model.mjs';

// inicializa el controlador
const despistes = (req, res) => {}

// lista todos los despistes
despistes.list = (req, res) => {
    despiste.list((err, data) => {
        if (err) {
            res.status(500).send({ message: err.message || 'Error al listar los despistes.' });
        } else {
            res.status(200).send(data);
        }
    });
}

// agrega un despiste
despistes.add = (req, res) => {
    res.status(501).send({ message: 'Not implemented' });
}

export default despistes;
