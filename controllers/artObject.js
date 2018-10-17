const _ = require('lodash');
const artObjects = require('../assets/database/art-objects.json')[
  'art-objects'
];

function findAll() {
  return artObjects;
}

function findArtObjectById(id) {
  return _.find(artObjects, item => item['artwork-id'] == id);
}

module.exports = {
  findAll,
  findArtObjectById
};
