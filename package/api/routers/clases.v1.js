import express from 'express';
const router = express.Router();

// obtiene todas las clases
router.get('/', (req, res) => {
    res.status(200).send('[GET] clases');
});

// añade una clase
router.post('/', (req, res) => {
    res.status(201).send('[POST] clases');
});

export default router;