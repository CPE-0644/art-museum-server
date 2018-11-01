const express = require('express');

const UserController = require('../controllers/user');

class UserRoute {
  constructor(User) {
    this.userController = new UserController(User);
    this.router = express.Router();

    this.initRoute();
  }

  initRoute() {
    this.router.get('/', async (req, res) => {
      const users = await this.userController.findAll();
      res.send(users);
    });

    this.router.get('/:userId', async (req, res) => {
      const id = req.params.userId;
      const user = await this.userController.findUserById(id);
      res.send(user);
    });
  }
}

module.exports = UserRoute;
