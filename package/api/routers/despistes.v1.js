import express from 'express';
const router = express.Router();

// obtiene todas los despistes
router.get('/', (req, res) => {
    res.status(200).send('[GET] despistes');
});

// añade un despistes
router.post('/', (req, res) => {
    res.status(201).send('[POST] despistes');
});

export default router;
