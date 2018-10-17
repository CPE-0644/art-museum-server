const express = require('express');
const router = express.Router();

const artObjectController = require('../controllers/artwork');
const exhibitionController = require('../controllers/exhibition');

router.get('/', (req, res) => {
  const exhibitions = exhibitionController.findAll();
  res.send(exhibitions);
});

router.get('/:exhibitionId', (req, res) => {
  const exhibitionId = req.params.exhibitionId;
  const exhibition = exhibitionController.findExhibitionById(exhibitionId);
  res.send(exhibition);
});

router.get('/:exhibitionId/shows', (req, res) => {
  const exhibitionId = req.params.exhibitionId;
  const showedList = exhibitionController.findExhibitionById(exhibitionId)
    .display;

  const showedArtObject = artObjectController.findArtworksById(showedList);
  res.send(showedArtObject);
});

module.exports = router;
