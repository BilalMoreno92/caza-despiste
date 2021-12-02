import express from 'express';
import despistes from '../../controllers/despistes.controller.mjs';

const router = express.Router();
router.get('/', despistes.list);
router.post('/', despistes.add);

export default router;
