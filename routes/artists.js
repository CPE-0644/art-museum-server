const express = require('express');
const router = express.Router();

const artistController = require('../controllers/artist');
const artObjectController = require('../controllers/artObject');

router.get('/', (req, res) => {
  const artists = artistController.findAll();
  res.send(artists);
});

router.get('/:artistId', (req, res) => {
  const artistId = req.params.artistId;
  const artist = artistController.findArtistById(artistId);
  res.send(artist);
});

router.get('/:artistId/arts', (req, res) => {
  const artistId = req.params.artistId;
  const artist = artistController.findArtistById(artistId);
  const arts = artObjectController.findArtObjectsById(artist.artworks_id);
  res.send(arts);
});

module.exports = router;
