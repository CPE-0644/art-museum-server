const _ = require('lodash');

const Collection = require('../models/collection')();

const collectionAttributes = [
  'Collection_id',
  'Name',
  'Type',
  'Description',
  'Address',
  'contact_id'
];

async function findAll() {
  const collections = await Collection.findAll({
    attributes: collectionAttributes
  });

  return _.map(collections, collection => {
    return collectionPresenter(collection);
  });
}

async function findArtistById(id) {
  const collection = await Collection.findAll({
    attributes: collectionAttributes,
    where: {
      collection_id: id
    }
  });

  return _.map(collection, collection => {
    return collectionPresenter(collection);
  });
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

module.exports = {
  findAll,
  findArtistById
};
