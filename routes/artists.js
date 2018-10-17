const express = require('express');
const router = express.Router();

const artistController = require('../controllers/artist');

router.get('/', (req, res) => {
  const artists = artistController.findAll();
  res.send(artists);
});

router.get('/:artistId', (req, res) => {
  const artistId = req.params.artistId;
  const artist = artistController.findArtistById(artistId);
  res.send(artist);
});

module.exports = router;
