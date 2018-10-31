const _ = require('lodash');

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

function collectionPresenter(collection) {
  return {
    id: collection.Collection_id,
    name: collection.Name,
    type: collection.Type,
    description: collection.Description,
    address: collection.Address,
    contact_id: collection.contact_id
  };
}

module.exports = CollectionController;
