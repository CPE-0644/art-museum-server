const express = require('express');

const ExhibitionController = require('../controllers/exhibition');

class ExhibitionRoute {
  constructor(Exhibition) {
    this.exhibitionController = new ExhibitionController();
    this.router = express.Router();

    this.initRoute();
  }

  initRoute() {
    this.router.post('/', async (req, res) => {
      try {
        const exhibition = await this.exhibitionController.createExhibition(
          req.body
        );
        res.send(exhibition);
      } catch (err) {
        console.log(err);
        res.send(err);
      }
    });

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

    this.router.delete('/:exhibitionId', async (req, res) => {
      const exhibitionId = req.params.exhibitionId;
      try {
        await this.exhibitionController.deleteExhibition(exhibitionId);
        res.send(`{ "success": true }`);
      } catch (err) {
        console.log(err);
      }
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
