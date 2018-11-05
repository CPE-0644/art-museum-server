const express = require('express');
const passport = require('passport');

class AuthRoute {
  constructor(User) {
    this.router = express.Router();

    this.initRoute();
  }

  initRoute() {
    this.router.post('/auth', passport.authenticate('local'), (req, res) => {
      console.log(req.user);
      res.send(JSON.stringify(req.user));
    });

    this.router.get('/logout', function(req, res) {
      req.logout();
      res.send(JSON.stringify({ logout: true }));
    });
  }
}

module.exports = AuthRoute;
