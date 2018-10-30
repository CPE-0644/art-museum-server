const _ = require('lodash');

const Artwork = require('../models/artwork')();

const artworkAttributes = [
  'Id_no',
  'Years',
  'Title',
  'Description',
  'Origin',
  'Epoch',
  'artist_id'
];

async function findAll() {
  const artworks = await Artwork.findAll({
    attributes: artworkAttributes
  });

  return _.map(artworks, artwork => {
    return artworkPresenter(artwork);
  });
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

function artworkPresenter(artwork) {
  return {
    id: artwork.Id_no,
    year: artwork.Years,
    title: artwork.Title,
    description: artwork.Description,
    origin: artwork.Origin,
    epoch: artwork.Epoch,
    artist_id: artwork.artist_id
  };
}

module.exports = {
  findAll,
  findArtworkById,
  findArtworksById
};
