const _ = require('lodash');

const {
  sequelize,
  Collection,
  CollectionContact,
  PermanentCollection,
  BorrowedCollection
} = require('../config/db.config');

const {
  collectionPresenter,
  collectionRelationPresenter
} = require('./presenter');
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

    return sequelize.transaction(t => {
      return this.collection
        .findOne(
          {
            where: {
              Collection_id: id
            }
          },
          {
            transaction: t
          }
        )
        .then(collection => {
          return collection.update(
            {
              Name: name,
              Type: type,
              Description: description,
              Address: address,
              contact_id: contact_id
            },
            {
              transaction: t,
              fields: this.collectionAttributes
            }
          );
        })
        .then(collection => {
          return [collectionPresenter(collection)];
        });
    });
  }

  async findAll() {
    const collections = await this.collection.findAll({
      // raw: true,
      include: [CollectionContact, BorrowedCollection, PermanentCollection]
    });
    console.log(collections);

    return _.map(collections, collection => {
      return collectionRelationPresenter(collection);
    });
  }

  async findCollectionById(id) {
    const collection = await this.collection.findAll({
      include: [CollectionContact],
      where: {
        collection_id: id
      }
    });

    return _.map(collection, collection => {
      return collectionPresenter(collection);
    });
  }

  async deleteCollection(id) {
    return sequelize.transaction(t => {
      return this.collection
        .findOne(
          {
            where: {
              Collection_id: id
            }
          },
          { transaction: t }
        )
        .then(collection => {
          return collection.destroy({}, { transaction: t });
        });
    });
  }
}

module.exports = CollectionController;
