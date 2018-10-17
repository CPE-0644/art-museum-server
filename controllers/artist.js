const _ = require('lodash');

const { artists } = require('../assets/database/artists.json');

function findArtistById(id) {
  const artist = _.find(artists, artist => artist['artist-id'] == id);
  return artist;
}

module.exports = {
  findArtistById
};
