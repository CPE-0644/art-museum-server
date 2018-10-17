const _ = require('lodash');

const data = require('../assets/database/artists.json').artists;

class Artist {
  constructor(json) {
    this.id = json['artist-id'];
    this.name = json['name'];
    this.date_of_birth = json['dob'];
    this.date_of_died = json['dod'];
    this.country = json['country'];
    this.style = json['style'];
    this.artworks_id = json['artwork-id'];
  }
}

let artists = [];
_.forEach(data, json => artists.push(new Artist(json)));

module.exports = {
  artists
};
