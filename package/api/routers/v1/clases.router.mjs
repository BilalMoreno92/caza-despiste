import express from 'express';
import clases from '../../controllers/clases.controller.mjs';

const router = express.Router();
router.get('/', clases.list);
router.post('/', clases.add);

export default router;
