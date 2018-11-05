const express = require('express');

const UserController = require('../controllers/user');

const { isLoggedIn, isAdmin } = require('../middlewares/middleware');

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

    this.router.get('/', isAdmin, async (req, res) => {
      const users = await this.userController.findAll();
      res.send(users);
    });

    this.router.get('/:userId', isLoggedIn, async (req, res) => {
      const id = req.params.userId;
      const user = await this.userController.findUserById(id);
      res.send(user);
    });

    this.router.put('/:userId', isAdmin, async (req, res) => {
      const userId = req.params.userId;
      try {
        const user = await this.userController.updateUser(req.body, userId);

        res.send(user);
      } catch (err) {
        console.log(err);
      }
    });
  }
}

module.exports = UserRoute;
