const express = require('express');
const router = express.Router();

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

module.exports = router;
