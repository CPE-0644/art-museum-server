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

  async createCollection(params) {
    const { name, type, description, address, contact_id } = params;

    const collection = await this.collection.create({
      Name: name,
      Type: type,
      Description: description,
      Address: address,
      Contact_id: contact_id
    });

    return [collectionPresenter(collection)];
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

  async deleteCollection(id) {
    const collection = await this.collection.findOne({
      where: {
        Collection_id: id
      }
    });

    collection.destroy();

    return null;
  }
}

module.exports = CollectionController;
