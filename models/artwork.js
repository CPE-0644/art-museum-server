const _ = require('lodash');

const data = require('../assets/database/art-objects.json')['art-objects'];

// todo: inherit each artwork to it's type [sculpture, painting, statue, other]

class Artwork {
  constructor(json) {
    this.id = json['artwork-id'];
    this.artist_id = json['artist-id'];
    this.style = json['style'];
    this.year = json['year'];
    this.title = json['title'];
    this.description = json['description'];
    this.origin = json['origin'];
    this.epoch = json['epoch'];
  }
}

let artworks = [];
_.forEach(data, json => artworks.push(new Artwork(json)));

module.exports = {
  artworks
};

// "sculptures": [
// {
//   "artwork-id": 33,
//   "material": "aluminum",
//   "height": 3.96,
//   "weight": 78.91
// },

// "paintings": [
// {
//   "artwork-id": 1,
//   "paint-type": "acrylic paint",
//   "material": "acrylic on Arches paper"
// },

// statue
// {
//   "artwork-id": 100,
//   "material": "bronze",
//   "height": "8 5/8 in",
//   "weight": "11 in"
// }

// "other_types": [
//   {
//     "artwork-id": 1,
//     "type": "Junk Art"
//   },
