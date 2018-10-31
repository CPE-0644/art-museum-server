const _ = require('lodash');

class ArtistController {
  constructor(artist) {
    this.artist = artist;
    this.artistAttributes = [
      'artist_id',
      'name',
      'date_born',
      'date_died',
      'country_of_origin',
      'epoch',
      'main_style',
      'description'
    ];
  }

  async findAll() {
    const artists = await this.artist.findAll({
      attributes: this.artistAttributes
    });

    return _.map(artists, artist => {
      return artistPresenter(artist);
    });
  }

  async findArtistById(id) {
    const artist = await this.artist.findAll({
      attributes: this.artistAttributes,
      where: {
        artist_id: id
      }
    });

    return _.map(artist, artist => {
      return artistPresenter(artist);
    });
  }
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

module.exports = ArtistController;
