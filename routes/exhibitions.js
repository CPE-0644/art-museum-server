const express = require('express');

const ExhibitionController = require('../controllers/exhibition');
class ExhibitionRoute {
  constructor(Exhibition) {
    this.exhibitionController = new ExhibitionController(Exhibition);
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
  }
}

// FIXME: fix this stuff
// router.get('/:exhibitionId/shows', async (req, res) => {
//   const exhibitionId = req.params.exhibitionId;
//   const showedList = await exhibitionController.findExhibitionById(exhibitionId)
//     .display;

//   const showedArtObject = await artObjectController.findArtworksById(
//     showedList
//   );
//   res.send(showedArtObject);
// });

module.exports = ExhibitionRoute;
