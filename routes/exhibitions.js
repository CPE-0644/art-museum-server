const express = require('express');
const router = express.Router();

const exhibitionController = require('../controllers/exhibition');

router.get('/', (req, res) => {
  const exhibitions = exhibitionController.findAll();
  res.send(exhibitions);
});

module.exports = router;
