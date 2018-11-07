const _ = require('lodash');

const { Collection, CollectionContact } = require('../config/db.config');

const { collectionPresenter } = require('./presenter');
class CollectionController {
  constructor() {
    this.collection = Collection;
    this.collectionAttributes = [
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

  async updateCollection(newParams, id) {
    const { name, type, description, address, contact_id } = newParams;
    const collection = await this.collection.findOne({
      where: {
        Collection_id: id
      }
    });

    collection.update(
      {
        Name: name,
        Type: type,
        Description: description,
        Address: address,
        Contact_id: contact_id
      },
      {
        fields: this.collectionAttributes
      }
    );

    return [collectionPresenter(collection)];
  }

  async findAll() {
    const collections = await this.collection.findAll({
      include: [{ model: CollectionContact }]
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
