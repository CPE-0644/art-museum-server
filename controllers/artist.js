const _ = require('lodash');

const Artist = require('../models/Artist')();

const artistAttributes = [
  'artist_id',
  'name',
  'date_born',
  'date_died',
  'country_of_origin',
  'epoch',
  'main_style',
  'description'
];

async function findAll() {
  const artists = await Artist.findAll({
    attributes: artistAttributes
  });

  return _.map(artists, artist => {
    return artistPresenter(artist);
  });
}

function findArtistById(id) {
  const artist = _.find(artists, artist => artist.id == id);
  return artist;
}

function artistPresenter(artist) {
  return {
    id: artist.artist_id,
    name: artist.name,
    date_of_birth: artist.date_born,
    date_of_died: artist.date_died,
    country: artist.country_of_origin,
    epoch: artist.epoch,
    style: artist.main_style,
    description: artist.description
  };
}

module.exports = {
  findAll,
  findArtistById
};
