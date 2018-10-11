const express = require('express');
const router = express.Router();

const data = require('../database/data.json');
const exhibitions = data.exhibitions;

router.get('/', (req, res) => {
  res.send(exhibitions);
});

router.get('/:id', (req, res) => {
  exhibition = exhibitions.find(x => x.exhibition_id == req.params.id);
  res.send(exhibition);
});

module.exports = router;
