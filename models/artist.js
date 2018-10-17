const _ = require('lodash');

const data = require('../assets/database/artists.json').artists;

function artist(json) {
  // console.log(json);
  let artist = {};
  artist.id = json['artist-id'];
  artist.name = json['name'];
  artist.date_of_birth = json['dob'];
  artist.date_of_died = json['dod'];
  artist.country = json['country'];
  artist.style = json['style'];
  artist.artworks_id = json['artwork-id'];
  return artist;
}

let artists = [];
_.forEach(data, json => artists.push(artist(json)));

module.exports = {
  artists
};
