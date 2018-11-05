const express = require('express');

const ArtistController = require('../controllers/artist');

class ArtistRoute {
  constructor() {
    this.artistController = new ArtistController();
    this.router = express.Router();

    this.initRoute();
  }

  initRoute() {
    this.router.post('/', async (req, res) => {
      try {
        const artist = await this.artistController.createArtist(req.body);
        res.send(artist);
      } catch (err) {
        res.send(err);
      }
    });

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

    this.router.put('/:artistId', async (req, res) => {
      const artistId = req.params.artistId;
      try {
        const artist = await this.artistController.updateArtist(
          req.body,
          artistId
        );

        res.send(artist);
      } catch (err) {
        console.log(err);
      }
    });

    this.router.delete('/:artistId', async (req, res) => {
      const artistId = req.params.artistId;
      try {
        await this.artistController.deleteArtist(artistId);
        res.send(`{ "success": true }`);
      } catch (err) {
        console.log(err);
      }
    });

    this.router.get('/:artistId/artworks', async (req, res) => {
      const artistId = req.params.artistId;
      try {
        const artworks = await this.artistController.findArtworksByArtistId(
          artistId
        );
        res.send(artworks);
      } catch (err) {
        console.log(err);
        res.send(err);
      }
    });
  }
}

module.exports = ArtistRoute;
