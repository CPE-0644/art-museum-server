const express = require('express');
const passport = require('passport');

class AuthRoute {
  constructor(User) {
    this.router = express.Router();

    this.initRoute();
  }

  initRoute() {
    this.router.post('/auth', passport.authenticate('local'), (req, res) => {
      res.send(
        JSON.stringify({
          username: req.user.username,
          name: req.user.Name,
          id: req.user.museum_goer_id,
          role: req.user.isAdmin == 1 ? 'admin' : 'user'
        })
      );
    });

    this.router.get('/logout', function(req, res) {
      req.logout();
      res.send(JSON.stringify({ logout: true }));
    });
  }
}

module.exports = AuthRoute;
