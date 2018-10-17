const _ = require('lodash');

const { artworks } = require('../models/artwork');

function findAll() {
  return artworks;
}

function findArtworkById(id) {
  return _.find(artworks, item => item.id == id);
}

function findArtworksById(ids) {
  const arts = [];
  _.forEach(artworks, item => {
    if (_.includes(ids, item.id)) arts.push(item);
  });
  return arts;
}

module.exports = {
  findAll,
  findArtworkById,
  findArtworksById
};
