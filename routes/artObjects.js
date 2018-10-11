const express = require('express');
const router = express.Router();

const data = require('../database/data.json');
const artObjects = data.scu;

router.get('/', (req, res) => {
  res.send(artObjects);
});

router.get('/:id', (req, res) => {
  artObject = artObjects.find(x => x.artwork_id == req.params.id);
  res.send(artObject);
});

module.exports = router;
