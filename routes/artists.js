const express = require('express');
const router = express.Router();

const artistController = require('../controllers/artist');
const artObjectController = require('../controllers/artwork');

router.get('/', async (req, res) => {
  const artists = await artistController.findAll();
  res.send(artists);
});

router.get('/:artistId', async (req, res) => {
  const artistId = req.params.artistId;
  const artist = await artistController.findArtistById(artistId);
  res.send(artist);
});

// FIXME: fix this stuff

router.get('/:artistId/arts', (req, res) => {
  const artistId = req.params.artistId;
  const artist = artistController.findArtistById(artistId);
  const arts = artObjectController.findArtworksById(artist.artworks_id);
  res.send(arts);
});

module.exports = router;
