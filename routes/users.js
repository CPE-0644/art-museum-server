const express = require('express');
const router = express.Router();

const userController = require('../controllers/user');

router.get('/', async (req, res) => {
  const users = await userController.findAll();
  res.send(users);
});

router.get('/:userId', (req, res) => {
  res.send(req.params.userId);
});

module.exports = router;
