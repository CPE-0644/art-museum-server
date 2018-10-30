const express = require('express');
const router = express.Router();

const collectionController = require('../controllers/collection');

router.get('/', async (req, res) => {
  const collections = await collectionController.findAll();
  res.send(collections);
});

router.get('/:collectionId', (req, res) => {
  res.send(req.params.collectionId);
});

router.get('/:collectionId/artworks', (req, res) => {
  res.send('collection artwork');
});

module.exports = router;
