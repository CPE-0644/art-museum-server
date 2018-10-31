const express = require('express');

const ArtworkController = require('../controllers/artwork');

// todo: /
// todo: /:artId/artist
// todo: /:artId/img

class ArtworkRoute {
  constructor(Artwork) {
    this.artworkController = new ArtworkController(Artwork);
    this.router = express.Router();

    this.initRoute();
  }

  initRoute() {
    this.router.get('/', async (req, res) => {
      try {
        const artworks = await this.artworkController.findAll();
        res.send(artworks);
      } catch (err) {
        res.send(err);
      }
    });

    // this.router.get('/:artId', (req, res) => {
    //   const id = req.params.artId;
    //   try {
    //     const artwork = this.artworkController.findArtworkById(id);
    //     res.send(artwork);
    //   } catch (err) {
    //     res.send(err);
    //   }
    // });
  }
}

module.exports = ArtworkRoute;
