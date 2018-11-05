const express = require('express');

const collectionController = require('../controllers/collection');

class CollectionRoute {
  constructor(Collection) {
    this.collectionController = new collectionController();
    this.router = express.Router();

    this.initRoute();
  }

  initRoute() {
    this.router.post('/', async (req, res) => {
      try {
        const collection = await this.collectionController.createCollection(
          req.body
        );
        res.send(collection);
      } catch (err) {
        console.log(err);
        res.send(err);
      }
    });

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

    this.router.put('/:collectionId', async (req, res) => {
      const collectionId = req.params.collectionId;
      try {
        const collection = await this.collectionController.updateCollection(
          req.body,
          collectionId
        );

        res.send(collection);
      } catch (err) {
        console.log(err);
      }
    });

    this.router.delete('/:collectionId', async (req, res) => {
      const collectionId = req.params.artId;
      try {
        await this.collectionController.deleteCollection(collectionId);
        res.send(`{ "success": true }`);
      } catch (err) {
        console.log(err);
      }
    });
  }
}

module.exports = CollectionRoute;
