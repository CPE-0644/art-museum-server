const express = require('express');

const ArtistController = require('../controllers/artist');
class ArtistRoute {
  constructor(Artist) {
    this.artistController = new ArtistController(Artist);
    this.router = express.Router();

    this.initRoute();
  }

  initRoute() {
    this.router.get('/', async (req, res) => {
      try {
        const artists = await this.artistController.findAll();
        res.send(artists);
      } catch (err) {
        res.send(err);
      }
    });

    this.router.get('/:artistId', async (req, res) => {
      const artistId = req.params.artistId;
      try {
        const artist = await this.artistController.findArtistById(artistId);
        res.send(artist);
      } catch (err) {
        res.send(err);
      }
    });
  }
}

module.exports = ArtistRoute;
