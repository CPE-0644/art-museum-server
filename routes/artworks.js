const express = require('express');

const ArtworkController = require('../controllers/artwork');

const { isAdmin } = require('../middlewares/middleware');

class ArtworkRoute {
  constructor(Artwork) {
    this.artworkController = new ArtworkController();
    this.router = express.Router();

    this.initRoute();
  }

  initRoute() {
    this.router.post('/', async (req, res) => {
      try {
        const artwork = await this.artworkController.createArtwork(req.body);
        res.send(artwork);
      } catch (err) {
        console.log(err);
        res.send(err);
      }
    });

    this.router.get('/', async (req, res) => {
      try {
        const artworks = await this.artworkController.findSculptures();
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

    this.router.put('/:artworkId', async (req, res) => {
      const artworkId = req.params.artworkId;
      try {
        const artwork = await this.artworkController.updateArtwork(
          req.body,
          artworkId
        );

        res.send(artwork);
      } catch (err) {
        console.log(err);
      }
    });

    this.router.delete('/:artId', async (req, res) => {
      const artworkId = req.params.artId;
      try {
        await this.artworkController.deleteArtwork(artworkId);
        res.send(`{ "success": true }`);
      } catch (err) {
        console.log(err);
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
