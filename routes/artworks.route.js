const express = require('express');

const ArtworkController = require('../controllers/artwork.controller');

class ArtworkRoute {
  constructor(Artwork) {
    this.artworkController = new ArtworkController();
    this.router = express.Router();

    this.initRoute();
  }

  initRoute() {
    this.router.get('/', async (req, res) => {
      try {
        const artworks = await this.artworkController.findAll();
        res.send(artworks);
      } catch (err) {
        console.log(err);
        res.send(err);
      }
    });

    this.router.get('/:artId', async (req, res) => {
      const id = req.params.artId;
      try {
        const artwork = await this.artworkController.findArtworkById(id);
        res.send(artwork);
      } catch (err) {
        console.log(err);
        res.send(err);
      }
    });

    this.router.get('/:artId/artist', async (req, res) => {
      const id = req.params.artId;
      try {
        const artist = await this.artworkController.findArtistByArtworkId(id);
        res.send(artist);
      } catch (err) {
        console.log(err);
        res.send(err);
      }
    });
  }
}

module.exports = ArtworkRoute;
