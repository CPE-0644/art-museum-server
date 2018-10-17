const express = require('express');
const router = express.Router();

const artObjectController = require('../controllers/artObject');
const artistController = require('../controllers/artist');

// todo: /
// todo: /:artId/artist
// todo: /:artId/img

router.get('/', (req, res) => {
  const artObjects = artObjectController.findAll();
  res.send(artObjects);
});

router.get('/:artId', (req, res) => {
  const id = req.params.artId;
  const artObject = artObjectController.findArtObjectById(id);
  res.send(artObject);
});

router.get('/:artId/artist', (req, res) => {
  const artId = req.params.artId;
  const artObject = artObjectController.findArtObjectById(artId);
  const artistId = artObject['artist-id'];
  const artist = artistController.findArtistById(artistId);
  res.send(artist);
});

module.exports = router;
