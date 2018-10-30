const express = require('express');
const router = express.Router();

const artObjectController = require('../controllers/artwork');
const exhibitionController = require('../controllers/exhibition');

router.get('/', async (req, res) => {
  const exhibitions = await exhibitionController.findAll();
  res.send(exhibitions);
});

router.get('/:exhibitionId', async (req, res) => {
  const exhibitionId = req.params.exhibitionId;
  const exhibition = await exhibitionController.findExhibitionById(
    exhibitionId
  );
  res.send(exhibition);
});

// FIXME: fix this stuff
router.get('/:exhibitionId/shows', async (req, res) => {
  const exhibitionId = req.params.exhibitionId;
  const showedList = await exhibitionController.findExhibitionById(exhibitionId)
    .display;

  const showedArtObject = await artObjectController.findArtworksById(
    showedList
  );
  res.send(showedArtObject);
});

module.exports = router;
