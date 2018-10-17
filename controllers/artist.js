const _ = require('lodash');

const { artists } = require('../models/artist');
// console.log(artists);
function findAll() {
  return artists;
}

function findArtistById(id) {
  const artist = _.find(artists, artist => artist.id == id);
  return artist;
}

module.exports = {
  findAll,
  findArtistById
};
