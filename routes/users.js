const express = require('express');
const router = express.Router();

const data = require('../database/data.json');
const users = data.users;

router.get('/', (req, res) => {
  res.send(users);
});

router.get('/:id', (req, res) => {
  user = users.find(x => x.contact_id == req.params.id);
  res.send(user);
});

module.exports = router;
