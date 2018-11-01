const express = require('express');

const ExhibitionController = require('../controllers/exhibition.controller');

class ExhibitionRoute {
  constructor(Exhibition) {
    this.exhibitionController = new ExhibitionController();
    this.router = express.Router();

    this.initRoute();
  }

  initRoute() {
    this.router.get('/', async (req, res) => {
      try {
        const exhibitions = await this.exhibitionController.findAll();
        res.send(exhibitions);
      } catch (err) {
        console.log(err);
        res.send(err);
      }
    });

    this.router.get('/:exhibitionId', async (req, res) => {
      const exhibitionId = req.params.exhibitionId;
      const exhibition = await this.exhibitionController.findExhibitionById(
        exhibitionId
      );

      res.send(exhibition);
    });

    this.router.get('/:exhibitionId/artworks', async (req, res) => {
      const exhibitionId = req.params.exhibitionId;

      const artworks = await this.exhibitionController.findArtworkByExhibitionId(
        exhibitionId
      );

      res.send(artworks);
    });
  }
}

module.exports = ExhibitionRoute;
