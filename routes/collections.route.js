const express = require('express');

const collectionController = require('../controllers/collection.controller');

class CollectionRoute {
  constructor(Collection) {
    this.collectionController = new collectionController();
    this.router = express.Router();

    this.initRoute();
  }

  initRoute() {
    this.router.get('/', async (req, res) => {
      try {
        const collections = await this.collectionController.findAll();
        res.send(collections);
      } catch (err) {
        res.send(err);
      }
    });

    this.router.get('/:collectionId', (req, res) => {
      res.send(req.params.collectionId);
    });
  }
}

module.exports = CollectionRoute;
