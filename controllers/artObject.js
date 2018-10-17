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

function findArtObjectsById(ids) {
  const arts = [];
  _.forEach(artObjects, item => {
    if (_.includes(ids, item['artwork-id'])) arts.push(item);
  });
  return arts;
}

module.exports = {
  findAll,
  findArtObjectById,
  findArtObjectsById
};
