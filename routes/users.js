const express = require('express');

const UserController = require('../controllers/user');

class UserRoute {
  constructor(User) {
    this.userController = new UserController();
    this.router = express.Router();

    this.initRoute();
  }

  initRoute() {
    this.router.post('/', async (req, res) => {
      try {
        const user = await this.userController.createUser(req.body);
        res.send(user);
      } catch (err) {
        console.log(err);
        res.send(err);
      }
    });

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
