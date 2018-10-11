const express = require('express');
const router = express.Router();

const data = require('../database/data.json');
const artists = data.artists;

router.get('/', (req, res) => {
  res.send(artists);
});

router.get('/:id', (req, res) => {
  artist = artists.find(x => x.artist_id == req.params.id);
  res.send(artist);
});

module.exports = router;
