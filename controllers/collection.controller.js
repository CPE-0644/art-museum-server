const _ = require('lodash');

const { Collection } = require('../config/db.config');

class CollectionController {
  constructor(collection) {
    this.collection = collection;
    this.collectionAttributes = [
      'Collection_id',
      'Name',
      'Type',
      'Description',
      'Address',
      'contact_id'
    ];
  }

  async findAll() {
    const collections = await this.collection.findAll({
      attributes: this.collectionAttributes
    });

    return _.map(collections, collection => {
      return collectionPresenter(collection);
    });
  }

  async findArtistById(id) {
    const collection = await this.collection.findAll({
      attributes: this.collectionAttributes,
      where: {
        collection_id: id
      }
    });

    return _.map(collection, collection => {
      return collectionPresenter(collection);
    });
  }
}

module.exports = CollectionController;
