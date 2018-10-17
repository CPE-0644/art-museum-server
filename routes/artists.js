const express = require('express');
const router = express.Router();

const artistController = require('../controllers/artist');

router.get('/', (req, res) => {
  const artists = artistController.findAll();
  res.send(artists);
});

module.exports = router;
