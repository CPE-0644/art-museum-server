const express = require('express');
const router = express.Router();

const artworkController = require('../controllers/artwork');
const artistController = require('../controllers/artist');

// todo: /
// todo: /:artId/artist
// todo: /:artId/img

router.get('/', (req, res) => {
  const artworks = artworkController.findAll();
  res.send(artworks);
});

router.get('/:artId', (req, res) => {
  const id = req.params.artId;
  const artwork = artworkController.findArtworkById(id);
  res.send(artwork);
});

router.get('/:artId/artist', (req, res) => {
  const artId = req.params.artId;
  const artwork = artworkController.findArtworkById(artId);
  const artistId = artwork.artist_id;
  const artist = artistController.findArtistById(artistId);
  res.send(artist);
});

module.exports = router;
