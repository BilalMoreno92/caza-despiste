import clase from '../models/clase.model.mjs';

// inicializa el controlador
const clases = (req, res) => {}

// lista todas las clases
clases.list = (req, res) => {
    clase.list((err, data) => {
        if (err) {
            res.status(500).send({ message: err.message || 'Error al listar las clases.' });
        } else {
            res.status(200).send(data);
        }
    });
}

// agrega una clase
clases.add = (req, res) => {
    res.status(501).send({ message: 'Not implemented' });
}

export default clases;
